<%
'=======================================================================
'업 무 명 :
'모듈기능 :
'파 일 명 :
'작성일자 :
'작 성 자 :
'-----------------------------------------------------------------------
'변경일자   변경자  변동내역
'=======================================================================
'20120727	S.HAN	강좌가 속한 패키지를 판매해도 장바구니/바로구매 버튼 표시하도록 수정	#001
'=======================================================================
	Response.AddHeader "Pragma","no-cache"
	Response.AddHeader "cache-control", "no-store"
    Response.Expires    = -1
%>
<!-- #include virtual = "/common/inc/RSexec.asp"-->
<!-- #include virtual = "/common/inc/VarDef.asp"-->
<!-- #include virtual = "/common/inc/FunDef.asp"-->
<%
kbn = request("kbn")
chr_cd = request("chr_cd")
lec_cd = request("lec_cd")
SPL_STM = request("SPL_STM")
SPL_ETM = request("SPL_ETM")
'▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
'	강좌정보취득
'▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
strSql = " select cm_chr_nm, tm_tec_nm, sm_sub_nm, cm_chr_flg1, (SELECT CD_CHR_OGZ FROM   MS_CHR_DTL WITH(NOLOCK)  WHERE  CD_CHR_CD = CM_CHR_CD), cm_std_day, cm_chr_prc, cm_open_flg from v_chr_mas with(nolock) where cm_chr_cd="&chr_cd
Set Rs = DbExec(strSql,"study")
If Not Rs.Eof Then
	cm_chr_nm = Rs(0)
	tm_tec_nm = Rs(1)
	sm_sub_nm = Rs(2)
	cm_chr_flg1 = Rs(3)
	cm_chr_ogz = Rs(4)
	cm_std_day = Rs(5)
	cm_chr_prc = Rs(6)
	cm_open_flg = Rs(7)
End If
Call RsClose(Rs)

'▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
'	교재정보취득
'▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
strSql = "select bm_book_cd, bm_prc, bm_book_nm from ms_book_mas with(nolock) join ms_chr_book with(nolock) on bm_book_cd=cb_book_cd and cb_del_flg='N' and bm_book_flg=1 and cb_chr_cd="&chr_cd

Set Rs = DbExec(strSql,"study")
If Not Rs.Eof Then
	arrayList = Rs.GetRows()
End If
Call RsClose(Rs)
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" style="height:100%;">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
<link href="/common/css/201504/2013_style.css" rel="stylesheet" type="text/css" />
<title>메가CST - 수강신청</title>
<script  language=javascript >
window.onbeforeunload = function() {};
// IE9 팝업창이 먼저 닫히는 버그수정
</script>
</head>
<body style="height:100%;">

<!--플레이어 우측 시작 S-->
<div class="player_r_wrap" style="">
    <table border="0" cellpadding="0" cellspacing="0" style="width:100%; height:100%; vertical-align:top;">
        <tr>
            <td style="vertical-align:top; height:100%;">
             
             <!--우측 컨텐츠 시작 S-->
             <table border="0" cellpadding="0" cellspacing="0"  class="column_play_r">
                 <tr><td class="playcont_r_top"></td></tr>
                 <tr>
                     <td style="height:32px;">
                        <!--탭영역 S-->
							<!--#include file="free_top.asp"-->
                        <!--탭영역 end-->
                     </td>
                 </tr>
                 
                 <tr>
                     <td style="vertical-align:top;">
                        <!-- 내용 S -->
                        <div class="column_playcont">
                        
                            <!-- 타이틀 S -->
                            <p class="txt_title pb10">
                                <span style="padding-right:5px"><img style="vertical-align:-1px;" src="http://img.megagong.net/player/2015_newskin/etc/bullet.png"></span>빠른 수강 신청
                          </p>
                            <!-- //타이틀 E -->
                            
                            <!--리스트 S -->
                          <div style="height:300px; width:218px; background-color:transparent; overflow-x:hidden; overflow-y:auto;">
                                <p class="ut_12p_b4" style="word-break:keep-all; padding-bottom:5px;"><strong><%=replace(cm_chr_nm,"<br>"," ")%></strong></p>
                                
                                <table border="0" cellpadding="0" cellspacing="0" style="width:100%;padding-bottom:10px;">
                                    <tr>
                                      <td colspan="2" class="ut_11p_g2">
                                            <span style="padding-right:5px;"><img style="vertical-align:3px;" src="http://img.megagong.net/player/2015_newskin/etc/dot_img.gif"></span>선생님 <%=tm_tec_nm%>
                                        </td>
                                    </tr>
                                    <tr>
                                      <td class="ut_11p_g2">
                                            <span style="padding-right:5px;"><img style="vertical-align:3px;" src="http://img.megagong.net/player/2015_newskin/etc/dot_img.gif"></span>과목 : <%=sm_sub_nm%>
                                        </td>
                                      <td class="ut_11p_g2">
                                            <span style="padding-right:5px;"><img style="vertical-align:3px;"  src="http://img.megagong.net/player/2015_newskin/etc/dot_img.gif"></span>단계 : <%=cm_chr_flg1%>
                                        </td>
                                </table>  

                                <table border="0" cellpadding="0" cellspacing="0" class="player_basicboard mb10" >
                                    <colgroup><col width="60px" /><col width="*" /></colgroup>
                                    <tr>
                                       <th>강좌구성</th>
                                       <td><%=cm_chr_ogz%></td>
                                    </tr>
                                    <tr>
                                       <th>수강기간</th>
                                       <td><%=cm_std_day%>일</td>
                                    </tr>
                                    <tr>
                                       <th>교재</th>
                                       <td>
										<%
										If IsArray(arrayList) Then
											nMax = Ubound(arrayList,2)
											For nCnt = 0 To nMax
												response.write arrayList(2,nCnt)&"<br>"
											Next
										Else
											response.write "판매중인 교재가 없습니다."
										End If
										%>
                                       </td>
                                    </tr>
                                </table>
                                
                                <table width="100%" border="0" cellpadding="0" cellspacing="0" class="player_basicboard">
								<form name="mainfrm" method="post">
                                    <colgroup><col width="60px" /><col width="*" /></colgroup>
                                    <tr>
                                       <th colspan="2">신청</th>
                                    </tr>
                                    <tr>
                                       <th>강좌</th>
                                       <td style="text-align:right;"><strong class="ut_11p_o1"><%=formatnumber(cm_chr_prc,0)%>원</strong><span><input type="checkbox" name="chrChk" value="<%=chr_cd%>"></span>
                                       </td>
                                    </tr>
									<%
									If IsArray(arrayList) Then
										nMax = Ubound(arrayList,2)
										For nCnt = 0 To nMax
									%>
                                    <tr>
                                       <th>교재<%=nCnt+1%></th>
                                       <td style="text-align:right;"><strong class="ut_11p_o1"><%=formatnumber(arrayList(1,nCnt),0)%>원</strong><span><input type="checkbox" name="bookChk" value="<%=arrayList(0,nCnt)%>"></span>
                                       </td>
                                    </tr>
									<%
										Next
									End If
									%>
								</form>
                                </table>
                            </div>
                            <!--리스트 E -->
                            
                            <!-- 버튼 S -->
							<%If cm_open_flg = "Y" then%>
                            <div style="text-align:right; padding-top:10px;">
                                <span style="padding-right:3px;"><a href="javascript:goCartIfrm();" onfocus="blur();"><img src="http://img.megagong.net/player/2015_newskin/etc/btn_shop_cart.gif" alt="장바구니" /></a></span><span><a href="javascript:goDirectPayIfrm();"><img src="http://img.megagong.net/player/2015_newskin/etc/btn_payment.gif" alt="바로구매" /></a></span>
                            </div>
							<%End if%>
                             <!-- //버튼 E -->
                             
                        </div>
                        <!-- //내용 E -->
                     </td>
                 </tr>
                  
                 <tr><td class="playcont_r_bottom"></td> </tr>
             </table>
             <!--//우측 컨텐츠 끝 E-->

              
            </td>
        </tr>
    </table>
</div>
<!--//플레이어 우측 끝 E-->

<div id="apDiv1" style="position:absolute;z-index:1;display:none;">
	<table border="0" cellpadding="0" cellspacing="0" style="width:170px; border:3px solid #e98400;">
		<tr>
			<td height="70" style="background-color:#ebebeb;">
                <table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td colspan="2" align="center" style="color:#333; padding:20px 0 17px 0;"><strong>장바구니</strong>에 정상적으로 <br>
							저장되었습니다. </td>
					</tr>
					<tr>
						<td style="padding:10px 5px 7px 5px ; background-color:#111; text-align:center; font-size:11px;"><a href="javascript:moveCart();" style="color:#ccc">장바구니로 이동</a></td>						<td style="padding:10px 5px 7px 5px ;; background-color:#111; text-align:center; font-size:11px;"><a href="javascript:confirmLayer('none');" style="color:#ccc">닫기 <img style="vertical-align:0px;" src="http://img.megaut.com/player/2009_newskin/icon_close.gif"></a></td>
					</tr>
			    </table>
            </td>
		</tr>
	</table>
</div>
<iframe src="about:blank" id="ifrm"  name="ifrm" width=100 height=50></iframe>
</body>
<script>
//parent.opener.name="vodmain";
	document.onkeydown=KeypadCon;
	function KeypadCon() {
//		var shiftPressed = (window.Event) ? e.modifiers & Event.SHIFT_MASK : event.shiftKey;

		if(event.keyCode==116 || event.keyCode==122) {	//f11 & f5 금지
			event.keyCode = 505;
		}
		if(event.keyCode==505) {		// 금지키
			return false;
		}
	}


function confirmLayer(mode) {
	var lrObj	= document.getElementById("apDiv1");
	var obj		= document.getElementById("defTd");

	lrObj.style.left = getAbsuluteLeft1( obj ) + 35 ;
	lrObj.style.top = getAbsuluteTop1( obj ) + 150;

	lrObj.style.display=mode;
}

function getAbsuluteTop1( obj ){

	var par = null;
	par = obj;
	var dy = 0;

	while( par.offsetParent ){
		dy+= par.offsetParent.offsetTop;
		par = par.offsetParent;
	}

	return dy;

}

function getAbsuluteLeft1( obj ){

	var par = null;
	par = obj;
	var dx = 0;

	while( par.offsetParent ){
		dx+= par.offsetParent.offsetLeft;
		par = par.offsetParent;
	}

	return dx;

}

function goCartIfrm()
{
	if ("<%=Cook_Id%>" == "") {
		alert("로그인 후 이용하세요.");
		return;
	}

	var frm = document.mainfrm;
	var bPass = false;

	var veri = frm.chrChk;
	
	if (veri == "[object HTMLInputElement]") {
	    //alert(veri)
		veri = frm.chrChk[0];
		if (veri == "[object HTMLInputElement]")
		{
			for(i=0; i<frm.chrChk.length; i++)
			{
				if(frm.chrChk[i].checked)
					bPass = true;
			}
		}
		else
		{
			if(frm.chrChk.checked)
				bPass = true;
		}
	}

	veri = frm.bookChk;
	if (veri == "[object HTMLInputElement]")
	{
		veri = frm.bookChk[0];
		if (veri == "[object HTMLInputElement]")
		{
			for(i=0; i<frm.bookChk.length; i++)
			{
				if(frm.bookChk[i].checked)
					bPass = true;
			}
		}
		else
		{
			if(frm.bookChk.checked)
				bPass = true;
		}
	}

    /*
	veri = frm.pkgChk;

	if(veri == "[object]")
	{
		veri = frm.pkgChk[0];

		if(veri == "[object]")
		{
			for(i=0; i<frm.pkgChk.length; i++)
			{
				if(frm.pkgChk[i].checked)
					bPass = true;
			}
		}
		else
		{
			if(frm.pkgChk.checked)
				bPass = true;
		}
	}
    */

	if(!bPass)
	{
		alert("신청하실 강좌 또는 교재를 선택하여 주십시요");
		return;
	}

	frm.action = '/player/cate/md_tab/go_cart.asp';
	frm.target = 'ifrm';
	frm.submit();

	alert("선택하신 해당 강좌를 장바구니에 담았습니다.");
}

function goDirectPayIfrm()
{
	if ("<%=Cook_Id%>" == "") {
		alert("로그인 후 이용하세요.");
		return;
	}

	var frm = document.mainfrm;
	var bPass = false;

	var veri = frm.chrChk;
	if (veri == "[object HTMLInputElement]")
	{
		veri = frm.chrChk[0];
		if (veri == "[object HTMLInputElement]")
		{
			for(i=0; i<frm.chrChk.length; i++)
			{
				if(frm.chrChk[i].checked)
					bPass = true;
			}
		}
		else
		{
			if(frm.chrChk.checked)
				bPass = true;
		}
	}

	veri = frm.bookChk;
	if(veri == "[object]")
	{
		veri = frm.bookChk[0];
		if(veri == "[object]")
		{
			for(i=0; i<frm.bookChk.length; i++)
			{
				if(frm.bookChk[i].checked)
					bPass = true;
			}
		}
		else
		{
			if(frm.bookChk.checked)
				bPass = true;
		}
	}
    /*
	veri = frm.pkgChk;
	if(veri == "[object]")
	{
		veri = frm.pkgChk[0];
		if(veri == "[object]")
		{
			for(i=0; i<frm.pkgChk.length; i++)
			{
				if(frm.pkgChk[i].checked)
					bPass = true;
			}
		}
		else
		{
			if(frm.pkgChk.checked)
				bPass = true;
		}

}
*/

	if(!bPass)
	{
		alert("결제하실 강좌 또는 교재를 선택하여 주십시요");
		return;
	}

	frm.action = '/mypage/payment/my_direct_pay_pre.asp';
	//frm.target = parent.opener.name;
	top.opener.name = "openerNames";
	frm.target = top.opener.name;
	frm.submit();
	top.close();
	//alert("선택하신 해당 강좌를 장바구니에 담았습니다.");

}

function moveCart() {
	parent.opener.location.href="/mypage/payment/my_cart.asp"
	top.close();
}
</script>
</html>
