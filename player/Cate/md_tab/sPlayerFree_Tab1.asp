<%
'=======================================================================
'�� �� �� :
'����� :
'�� �� �� :
'�ۼ����� :
'�� �� �� :
'-----------------------------------------------------------------------
'��������   ������  ��������
'=======================================================================
'20120727	S.HAN	���°� ���� ��Ű���� �Ǹ��ص� ��ٱ���/�ٷα��� ��ư ǥ���ϵ��� ����	#001
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
'�ƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢ�
'	�����������
'�ƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢ�
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

'�ƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢ�
'	�����������
'�ƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢ�
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
<title>�ް�CST - ������û</title>
<script  language=javascript >
window.onbeforeunload = function() {};
// IE9 �˾�â�� ���� ������ ���׼���
</script>
</head>
<body style="height:100%;">

<!--�÷��̾� ���� ���� S-->
<div class="player_r_wrap" style="">
    <table border="0" cellpadding="0" cellspacing="0" style="width:100%; height:100%; vertical-align:top;">
        <tr>
            <td style="vertical-align:top; height:100%;">
             
             <!--���� ������ ���� S-->
             <table border="0" cellpadding="0" cellspacing="0"  class="column_play_r">
                 <tr><td class="playcont_r_top"></td></tr>
                 <tr>
                     <td style="height:32px;">
                        <!--�ǿ��� S-->
							<!--#include file="free_top.asp"-->
                        <!--�ǿ��� end-->
                     </td>
                 </tr>
                 
                 <tr>
                     <td style="vertical-align:top;">
                        <!-- ���� S -->
                        <div class="column_playcont">
                        
                            <!-- Ÿ��Ʋ S -->
                            <p class="txt_title pb10">
                                <span style="padding-right:5px"><img style="vertical-align:-1px;" src="http://img.megagong.net/player/2015_newskin/etc/bullet.png"></span>���� ���� ��û
                          </p>
                            <!-- //Ÿ��Ʋ E -->
                            
                            <!--����Ʈ S -->
                          <div style="height:300px; width:218px; background-color:transparent; overflow-x:hidden; overflow-y:auto;">
                                <p class="ut_12p_b4" style="word-break:keep-all; padding-bottom:5px;"><strong><%=replace(cm_chr_nm,"<br>"," ")%></strong></p>
                                
                                <table border="0" cellpadding="0" cellspacing="0" style="width:100%;padding-bottom:10px;">
                                    <tr>
                                      <td colspan="2" class="ut_11p_g2">
                                            <span style="padding-right:5px;"><img style="vertical-align:3px;" src="http://img.megagong.net/player/2015_newskin/etc/dot_img.gif"></span>������ <%=tm_tec_nm%>
                                        </td>
                                    </tr>
                                    <tr>
                                      <td class="ut_11p_g2">
                                            <span style="padding-right:5px;"><img style="vertical-align:3px;" src="http://img.megagong.net/player/2015_newskin/etc/dot_img.gif"></span>���� : <%=sm_sub_nm%>
                                        </td>
                                      <td class="ut_11p_g2">
                                            <span style="padding-right:5px;"><img style="vertical-align:3px;"  src="http://img.megagong.net/player/2015_newskin/etc/dot_img.gif"></span>�ܰ� : <%=cm_chr_flg1%>
                                        </td>
                                </table>  

                                <table border="0" cellpadding="0" cellspacing="0" class="player_basicboard mb10" >
                                    <colgroup><col width="60px" /><col width="*" /></colgroup>
                                    <tr>
                                       <th>���±���</th>
                                       <td><%=cm_chr_ogz%></td>
                                    </tr>
                                    <tr>
                                       <th>�����Ⱓ</th>
                                       <td><%=cm_std_day%>��</td>
                                    </tr>
                                    <tr>
                                       <th>����</th>
                                       <td>
										<%
										If IsArray(arrayList) Then
											nMax = Ubound(arrayList,2)
											For nCnt = 0 To nMax
												response.write arrayList(2,nCnt)&"<br>"
											Next
										Else
											response.write "�Ǹ����� ���簡 �����ϴ�."
										End If
										%>
                                       </td>
                                    </tr>
                                </table>
                                
                                <table width="100%" border="0" cellpadding="0" cellspacing="0" class="player_basicboard">
								<form name="mainfrm" method="post">
                                    <colgroup><col width="60px" /><col width="*" /></colgroup>
                                    <tr>
                                       <th colspan="2">��û</th>
                                    </tr>
                                    <tr>
                                       <th>����</th>
                                       <td style="text-align:right;"><strong class="ut_11p_o1"><%=formatnumber(cm_chr_prc,0)%>��</strong><span><input type="checkbox" name="chrChk" value="<%=chr_cd%>"></span>
                                       </td>
                                    </tr>
									<%
									If IsArray(arrayList) Then
										nMax = Ubound(arrayList,2)
										For nCnt = 0 To nMax
									%>
                                    <tr>
                                       <th>����<%=nCnt+1%></th>
                                       <td style="text-align:right;"><strong class="ut_11p_o1"><%=formatnumber(arrayList(1,nCnt),0)%>��</strong><span><input type="checkbox" name="bookChk" value="<%=arrayList(0,nCnt)%>"></span>
                                       </td>
                                    </tr>
									<%
										Next
									End If
									%>
								</form>
                                </table>
                            </div>
                            <!--����Ʈ E -->
                            
                            <!-- ��ư S -->
							<%If cm_open_flg = "Y" then%>
                            <div style="text-align:right; padding-top:10px;">
                                <span style="padding-right:3px;"><a href="javascript:goCartIfrm();" onfocus="blur();"><img src="http://img.megagong.net/player/2015_newskin/etc/btn_shop_cart.gif" alt="��ٱ���" /></a></span><span><a href="javascript:goDirectPayIfrm();"><img src="http://img.megagong.net/player/2015_newskin/etc/btn_payment.gif" alt="�ٷα���" /></a></span>
                            </div>
							<%End if%>
                             <!-- //��ư E -->
                             
                        </div>
                        <!-- //���� E -->
                     </td>
                 </tr>
                  
                 <tr><td class="playcont_r_bottom"></td> </tr>
             </table>
             <!--//���� ������ �� E-->

              
            </td>
        </tr>
    </table>
</div>
<!--//�÷��̾� ���� �� E-->

<div id="apDiv1" style="position:absolute;z-index:1;display:none;">
	<table border="0" cellpadding="0" cellspacing="0" style="width:170px; border:3px solid #e98400;">
		<tr>
			<td height="70" style="background-color:#ebebeb;">
                <table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td colspan="2" align="center" style="color:#333; padding:20px 0 17px 0;"><strong>��ٱ���</strong>�� ���������� <br>
							����Ǿ����ϴ�. </td>
					</tr>
					<tr>
						<td style="padding:10px 5px 7px 5px ; background-color:#111; text-align:center; font-size:11px;"><a href="javascript:moveCart();" style="color:#ccc">��ٱ��Ϸ� �̵�</a></td>						<td style="padding:10px 5px 7px 5px ;; background-color:#111; text-align:center; font-size:11px;"><a href="javascript:confirmLayer('none');" style="color:#ccc">�ݱ� <img style="vertical-align:0px;" src="http://img.megaut.com/player/2009_newskin/icon_close.gif"></a></td>
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

		if(event.keyCode==116 || event.keyCode==122) {	//f11 & f5 ����
			event.keyCode = 505;
		}
		if(event.keyCode==505) {		// ����Ű
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
		alert("�α��� �� �̿��ϼ���.");
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
		alert("��û�Ͻ� ���� �Ǵ� ���縦 �����Ͽ� �ֽʽÿ�");
		return;
	}

	frm.action = '/player/cate/md_tab/go_cart.asp';
	frm.target = 'ifrm';
	frm.submit();

	alert("�����Ͻ� �ش� ���¸� ��ٱ��Ͽ� ��ҽ��ϴ�.");
}

function goDirectPayIfrm()
{
	if ("<%=Cook_Id%>" == "") {
		alert("�α��� �� �̿��ϼ���.");
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
		alert("�����Ͻ� ���� �Ǵ� ���縦 �����Ͽ� �ֽʽÿ�");
		return;
	}

	frm.action = '/mypage/payment/my_direct_pay_pre.asp';
	//frm.target = parent.opener.name;
	top.opener.name = "openerNames";
	frm.target = top.opener.name;
	frm.submit();
	top.close();
	//alert("�����Ͻ� �ش� ���¸� ��ٱ��Ͽ� ��ҽ��ϴ�.");

}

function moveCart() {
	parent.opener.location.href="/mypage/payment/my_cart.asp"
	top.close();
}
</script>
</html>
