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
'20100319	������	#001	����(����)�ε��� ����
'=======================================================================
	Response.AddHeader "Pragma","no-cache"
	Response.AddHeader "cache-control", "no-store"
    Response.Expires    = -1
%>
<!-- #include virtual = "/common/inc/RSexec.asp"-->
<!-- #include virtual = "/common/inc/VarDef.asp"-->
<!-- #include virtual = "/common/inc/FunDef.asp"-->
<%
player_type = request("player_type")
kbn = request("kbn")
chr_cd = request("chr_cd")
app_no = request("app_no")
lec_cd = request("lec_cd")
lec_seq = request("lec_seq")
wide_kbn = request("wide_kbn")
sel_lec_cd = request("sel_lec_cd")			'���ð��� ǥ�� ������ 20120608 CHOIJH

Idx_flg = request("Idx_flg")

UseWidth = Trim(request("UseWidth"))		'��ũ�� ũ�� ���ϱ�
UseHeight = Trim(request("UseHeight"))	'��ũ�� ũ�� ���ϱ�

'// ������ī�� ���翩�� Ȯ��
cafe_yn = "Y"
strSql = "select cm_tec_cd, tm_cafe_yn from ms_chr_mas with(nolock) join ms_tec_mas with(nolock) on cm_tec_cd = tm_tec_cd where cm_chr_cd = " & chr_cd
Set RsCafe = DbExec(strSql, "study")
If Not RsCafe.Eof Then
	tec_cd = RsCafe(0)
	cafe_yn = RsCafe(1)
End If
Call RsClose(RsCafe)
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" style="height:100%;">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<title>�ް�CST - ���Ǹ���</title>
<link href="/common/css/201504/2013_style.css" rel="stylesheet" type="text/css">
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
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
							<%If Idx_flg = "1" Then%>
                            <tr>
                                <td><a href="#"><img src="http://img.megagong.net/player/2015_newskin/etc/tab01_off.gif" alt="���Ǹ���"></a></td>
                                <td><a href="#" onFocus="this.blur();" ><img src="http://img.megagong.net/player/2015_newskin/etc/tab02_on.gif" alt="�н�Q&A" onMouseOver="this.src=this.src.replace('_off','_on');" onMouseOut="this.src=this.src.replace('_on','_off');"></a></td>
                            </tr>
							<%Else%>
							<tr>
                                <td><a href="/player/cate/md_tab/sPlayer_Tab1.asp?player_type=<%=player_type%>&kbn=<%=kbn%>&tec_nm=<%=tec_nm%>&chr_cd=<%=chr_cd%>&app_no=<%=app_no%>&lec_cd=<%=lec_cd%>&lec_seq=<%=lec_seq%>&wide_kbn=<%=wide_kbn%>&UseWidth=<%=UseWidth%>&UseHeight=<%=UseHeight%>&sel_lec_cd=<%=sel_lec_cd%>" onfocus="this.blur();"><img src="http://img.megagong.net/player/2015_newskin/etc/tab01_off.gif" alt="���Ǹ���"onmouseover="this.src=this.src.replace('_off','_on');" onmouseout="this.src=this.src.replace('_on','_off');"></a></td>
                                <td><img src="http://img.megagong.net/player/2015_newskin/etc/tab02_on.gif" alt="�н�Q&A"></td>
                            </tr>
							<%End If%>
                       </table>
                      <!--�ǿ��� end-->
                     </td>
                 </tr>
                 
                 <tr>
                     <td style="vertical-align:top;">
                        <!-- ����S -->
                        <div class="column_playcont">
                            <!-- Ÿ��Ʋ S -->
                            <p class="txt_title pb10">
                                <span style="padding-right:5px"><img style="vertical-align:-1px;" src="http://img.megagong.net/player/2015_newskin/etc/bullet.png"></span>�н� Q&A
                            </p>
                            <!-- //Ÿ��Ʋ E -->
                            <div class="pb10">
                                <p class="ut_11p_g2" style="letter-spacing:-1px;">������ �ñ��Ͻ� ������ �����Բ� �����ϼ���.<br>������ ���� �亯�� ������ī��> �н�Q&A���� Ȯ���Ͻ� �� �ֽ��ϴ�.</p>
                            </div>
                            
                            <!--���� S -->
                            <div style="width:218px; background-color:transparent;">
                            
                                 <!--�н������ϱ� S -->
                                <table width="100%"  border="0" cellspacing="0" cellpadding="0" class="player_basicboard qna">
								<form name="mainfrm" method="post" action="sPlayer_Tab3_reg.asp">
								<input type="hidden" name="kbn" value="<%=kbn%>">
								<input type="hidden" name="chr_cd" value="<%=chr_cd%>">
								<input type="hidden" name="app_no" value="<%=app_no%>">
								<input type="hidden" name="lec_cd" value="<%=lec_cd%>">
								<input type="hidden" name="lec_seq" value="<%=lec_seq%>">
								<input type="hidden" name="wide_kbn" value="<%=wide_kbn%>">
								<input type="hidden" name="Idx_flg" value="<%=Idx_flg%>">
								<input type="hidden" name="player_type" value="<%=player_type%>">
								<%
								cateYn = "N"
								arrayList = ""
								tColName = "CBDCA"
								tTableName = "MS_CAFE_BRD_DET_CATE"
								sMnuSQL = " SELECT "& tColName &"_NAME, "& tColName &"_CATE  FROM "& tTableName &"  WHERE   "& tColName &"_BID='"& tec_cd &"'  ORDER BY "& tColName &"_SEQ ASC "
								set Rs = DbExec(sMnuSQL,"study")
								if Not Rs.Eof Then
									arrayList = Rs.GetRows()
								End IF
								call RsClose(Rs)
								If IsArray(arrayList) Then
									cateYn = "Y"
									nMax = Ubound(arrayList,2)
								%>
                                    <tr>
                                       <th width="70px" align="center">�з�</th>
                                       <td style="padding:3px">
                                          <select name="cate" class="select">
                                            <option value="" >����</option>
                                            <%For nCnt = 0 to nMax%>
											<option value="<%=arrayList(1, nCnt)%>"><%=arrayList(0, nCnt)%></option>
											<%Next%>
                                          </select>
                                       </td>
                                    </tr>
								<%
								End If
								%>

									<!--<tr>
                                       <th width="70px" align="center">��������</th>
                                       <td style="padding:3px">
                                          <select name="EXTRA2" class="select" >
                                            <option value="" >����</option>
                                            <option value="0" >���³���</option>
                                            <option value="1" >�н����</option>
                                            <option value="2" >��Ÿ</option>
                                          </select>
                                       </td>
                                    </tr>-->
                                    <tr>
                                        <th width="70px" align="center">����</th>
                                        <td style="padding:2px"><input name="ttl" type="text" class="s_input" id="ttl" style="width:130px;"></td>
                                    </tr>
                                    <tr>
                                       <td colspan="3" style="padding:0;">
                                           <span style="padding:0;">
                                               <textarea name="cont" rows="10" class="textarea_2" style="width:206px;_width:216px; height:130px"></textarea>
                                           </span>
                                       </td>
                                    </tr>
                                 </table> 
                                 <!--//�н������ϱ� End -->
                                 <!-- ��ư S -->
                                 <div style="text-align:center; padding-top:10px;">
                                     <a href="javascript:goReg()" onFocus="blur()"><img src="http://img.megagong.net/player/2015_newskin/etc/btn_enter1.gif" alt="���" ></a>
                                 </div>
                                 <!-- //��ư E -->
                                </form>
                             </div>
                            <!--���� E -->
                            
                        </div>
                        <!-- //����E -->
                     </td>
                 </tr>
                 <tr>
                     <td style="vertical-align:bottom;" >
                          <!--���������˻� S-->
							<!-- #include file = "./sPlayer_DaumDic.asp"-->
                          <!--//���������˻�E-->
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

</body>
<SCRIPT LANGUAGE=javascript>
<!--
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

function goReg()
{
	if("<%=cateYn%>"=="Y") {
		if(mainfrm.cate.value == "")
		{
			alert("�з��� �����ϼ���.");
			mainfrm.cate.focus();
			return;
		}
	}

	/*if(mainfrm.EXTRA2.value == "")
	{
		alert("���������� �����ϼ���.");
		mainfrm.EXTRA2.focus();
		return;
	}*/

	if(mainfrm.ttl.value == "")
	{
		alert("������ �Է��ϼ���");
		mainfrm.ttl.focus();
		return;
	}
	if(mainfrm.cont.value == "")
	{
		alert("������ �Է��ϼ���");
		mainfrm.cont.focus();
		return;
	}

	mainfrm.submit();
}

//-->
</SCRIPT>
</html>