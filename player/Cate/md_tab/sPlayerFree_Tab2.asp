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
'
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
strSql = " select * from v_chr_mas with(nolock) where cm_chr_cd="&chr_cd

Set Rs = DbExec(strSql,"study")
If Not Rs.Eof Then
	cm_chr_nm = Rs("cm_chr_nm")
	tm_tec_nm = Rs("tm_tec_nm")
	sm_sub_nm = Rs("sm_sub_nm")
	cm_chr_flg1 = Rs("cm_chr_flg1")
	cm_lec_cnt = Rs("cm_lec_cnt")
	cm_std_day = Rs("cm_std_day")
	cm_chr_prc = Rs("cm_chr_prc")
	tm_tec_cd = Rs("tm_tec_cd")
	sm_sub_cd = Rs("sc_sub_cd")
	cm_dom_cd = Rs("cm_dom_cd")
End If
Call RsClose(Rs)
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" style="height:100%;">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<title>�ް�CST - �����ı�</title>
<link href="/common/css/201504/2013_style.css" rel="stylesheet" type="text/css">
<script  language=javascript >
window.onbeforeunload = function() {};
// IE9 �˾�â�� ���� ������ ���׼���
</script>
</head>

<body style="height:100%">
<!--�÷��̾� ���� ���� S-->
<div class="player_r_wrap">
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
                                <span style="padding-right:5px"><img style="vertical-align:-1px;" src="http://img.megagong.net/player/2015_newskin/etc/bullet.png"></span>�� ���� �������� <strong>�������� ������</strong>
                            </p>
                            <!-- //Ÿ��Ʋ E -->
                            <p class="ut_12p_b4" style="word-break:keep-all; padding-bottom:5px;"><strong><%=cm_chr_nm%></strong></p>
                            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="mb10">
                              <tr>
                                  <td style="padding:3px 0 0 0;color:#ffffff" >
                                     <strong><span style="padding-right:5px"><img style="vertical-align:-2px;" src="http://img.megagong.net/player/2015_newskin/etc/icon_best.gif"></span>�����ı�</strong>
                                  </td>
                                  <td width="100" align="right" class="ut_12p_g2" style="padding:3px 0 0 0;">
                                      <a href="javascript:MM_openBrWindow('/prof/review/pop_list.asp?sub_cd=<%=sm_sub_cd%>&tec_cd=<%=sm_tec_cd%>&chr_cd=<%=chr_cd%>&dom_cd=<%=cm_dom_cd%>','','width=800, height=740');"><img src="http://img.megagong.net/player/2015_newskin/etc/btn_re.gif" alt="��������ü����"></a>
                                  </td>
                              </tr>
							</table>
                            <!-- ����Ʈ S -->
                            <div style="height:300px; width:218px; background-color:transparent; overflow-x:hidden; overflow-y:auto;">
                                    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="player_basicboard">
									<%
									nMax = 0
									data_cnt = 0 
									strSql = " select ps_idx, ps_subject, ps_content from ms_brd_ps with(nolock) where ps_flg='1' and ps_best_flg='Y' and ps_cd="&chr_cd&" order by ps_idx desc"
									'rw strSql
									Set Rs = DbExec(strSql,"study")
									If Not Rs.Eof Then
										arrayList = Rs.GetRows()
									else
										data_cnt = 0     ''''�����Ͱ� ������ 
									End If
									Call Rsclose(Rs)
									if date_cnt = 0 then   ''''�����Ͱ� ������ 
										strSql = " select top 2 ps_idx, ps_subject, ps_content  from ms_brd_ps with(nolock) join ms_chr_mas with(nolock) on ps_cd= cm_chr_cd where ps_flg='1' and ps_best_flg='Y' and cm_tec_cd='"& tm_tec_cd &"' and CM_DOM_CD='"& cm_dom_cd &"' order by ps_idx desc   "
										Set Rs = DbExec(strSql,"study")
										If Not Rs.Eof Then
											arrayList = Rs.GetRows()
										else
											data_cnt = 0 
										End If
										Call Rsclose(Rs)
									end if
									
									If IsArray(arrayList) Then
										nMax = Ubound(arrayList,2)
										For nCnt = 0 To nMax
											If nCnt = 0 then
												firstRow = true
											Else
												firstRow = false
											End If
									%>
										<tr>
											<th style="text-align:left;"><a href="javascript:OpenPs(<%=nCnt%>);"><%=cutstr(arrayList(1,nCnt),35)%></a></th>
										</tr>
										<tr style="display:<%If firstRow=false Then%>none<%End If%>" id="cont<%=nCnt%>">
											<td><%=replace(db_to_str(arrayList(2,nCnt)),chr(13),"<br>")%></td>
										</tr>
									<%
										Next
									Else
								
									End If
									%>

                                        </table>
                            </div>
                            <!-- ����Ʈ E -->
                             
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
<script language="javascript">
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

	function OpenPs(n) {
		for (var i = 0; i <= 1; ++i) {
			if (n == i) {
//				document.getElementById("line"+i).style.display="";
				document.getElementById("cont"+i).style.display="";
			} else {
//				document.getElementById("line"+i).style.display="none";
				document.getElementById("cont"+i).style.display="none";
			}
		}
	}

	function MM_openBrWindow(theURL,winName,features) { //v2.0
	  window.open(theURL,winName,features);
	}
</script>
</body>
</html>
