<%
'=======================================================================
'�� �� �� 	: megaCST-���½�û
'����� 	: ���½�û ���
'�� �� �� 	: /vod/vod_chr_list.asp
'�ۼ����� 	: 2013/01/05
'�� �� �� 	: �ڿ��
'-----------------------------------------------------------------------
'��������   ������  ��������
'=======================================================================
'
'=======================================================================
'Response.Expires = -1
%>
<% '���� ��Ŭ��� ������ ���� %>
<!-- #include virtual = "/common/inc/RSexec.asp" -->
<!-- #include virtual = "/common/inc/VarDef.asp"-->
<!-- #include virtual = "/common/inc/FunDef.asp"-->
<% '���� ��Ŭ��� ������ ���� %>

<%
    cook_id= request("cook_id")
    username= request("username")

    idx = request("idx")
    menu_gubun = request("menu_gubun")    
    gubun = request("menu_gubun")    

%>


<script type="text/javascript" src="/common/js/member.js?vt=120130913"></script>

<html lang="ko">


<head>
<link href="<%=img_main%>/common/megacst_2013.ico" type="image/x-icon" rel="shortcut icon">

    

    <meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
    <meta http-equiv="page-exit"  content="blendtrans(duration=0.1)">
    <meta http-equiv="page-enter" content="blendtrans(duration=0.2)">

    <title>�հ��� ���� å�Ӱ�, �ް�CST : ����������</title>

    <meta name="description" content="�հ��� ���� å�Ӱ�, �ް�CST : ����������,��������">
    <meta name="keywords" content="�ް�CST,�ް����͵�,�ѻ��,������,������,������,�ڼ���,����ȣ,����,����������,�������,���,�츮�����п�,�����̱۷ι�">
        
    
    <link rel="stylesheet" type="text/css" href="<%=img_main%>/common/css/2013/2013style.css"> 
    <link rel="stylesheet" type="text/css" href="<%=img_main%>/common/css/2014/131217_layout.css">   
    <link rel="stylesheet" type="text/css" href="<%=img_main%>/common/css/2013/131001_mcafe.css">        
    

    <script language="JavaScript" src="<%=img_main%>/common/js/maincommon.js?vt=2014.1"></script>
    <script language="JavaScript" src="<%=img_main%>/common/js/common.js?vt=2014.1"></script>
    <script language="JavaScript" src="<%=img_main%>/common/js/layer.js"></script>
    <script language="JavaScript" src="<%=img_main%>/common/js/calendar.js"></script>
    <script language="JavaScript" src="<%=img_main%>/common/js/prof.js"></script>
    <script language="JavaScript" src="<%=img_main%>/common/js/jquery.min.js?vt=2014.1"></script>
    <script language="JavaScript" src="<%=img_main%>/common/js/jquery.cycle.all.min.js"></script>
    <script language="JavaScript" src="<%=img_main%>/common/js/embedControl.js"></script>
   
</head>

                                    

									
									<!-- ����Ÿ��Ʋ ���� -->
									<table width="700" border="0" cellspacing="0" cellpadding="0" style="margin:0 0 10px 0">
										<tr>
											<td><img src="<%=img_main%>/help/sub_504.gif" border="0" alt="1:1 ģ�� ���"></td>
										</tr>
									</table>
									<!-- ����Ÿ��Ʋ ��-->
									<!--���write -->
										<table width="700" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td>
											
												<form name="frmWrite" method="post" encType="multipart/form-data" onSubmit="return ChkWrite();" >
                                                
                                                <input type="hidden" id="cook_id" name="cook_id" value="<%=cook_id%>">
                                                <input type="hidden" id="username" name="username" value="<%=username%>">

												<input type="hidden" id="idx" name="idx" value="<%=idx%>">
												<input type="hidden" id="board_type" name="board_type" value="0">
												<input type="hidden" id="menu_gubun" name="menu_gubun" value="<%=gubun%>">

												<table width="700" border="0" cellspacing="0" cellpadding="0">
													<tr>
														<td>
															<!--�Խ��� Ÿ��Ʋ ����-->
															<table width="700" border="0" cellspacing="0" cellpadding="1" class="ky_board_01">
																<tr>
																	<td height="2" colspan="2" bgcolor="#dadada"></td>
																</tr>
																<tr>
																	<td width="100" height="28" class="aC ky_board_li1">�з�</td>
																	<td class="pl10 ky_board_li2" style="letter-spacing:-1">
																		<select name="cate" id="cate" class="select">
																			<option value="">--����--</option>

																		</select>
																	</td>
																</tr>
																<tr>
																	<td width="100" height="28" class="aC ky_board_li1" >����</td>
																	<td class="pl10 ky_board_li2"><input type="text" name="subject" id="subject" style="background:#ffffff; border:1px solid #cfcfcf; height:18px; width:425px;" value="<%=BOS_SUBJECT%>"/></td>
																</tr>



                                                                     <tr>
														                <td height="1" colspan="2" bgcolor="#e6e6e6"></td>
													                 </tr>

                                                                     <tr>
                                                                        <td colspan=2 class="pl10 pt5 ky_board_t11 ky_board_li2" height=30>
                                                                             ÷������  :  <a href="<%=f_url%>" target="_new"><img src="<%=img_main%>/icon/notice_file.gif" align="absmiddle">&nbsp;<%=FileNm%> </a>
                                                                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="<%=img_main%>/tmp_img/mypage/bt_del.gif" onclick="javascript:go_file_del('<%=bof_idx%>');" style="cursor:hand;"/>
                                                                        </td>

                                                                        <script language=javascript>

                                                                            function go_file_del(t_no) {
                                                                                window.location.href = "cust_sub20_file_del.asp?cook_id=<%=cook_id%>&username=<%=username%>&menu_gubun=<%=menu_gubun%>&idx=<%=idx%>&bof_idx=" + t_no;
                                                                            }

                                                                         </script>

                                                                     </tr>


															</table>
															<!--�Խ��� Ÿ��Ʋ ��-->
                                                            <br>
															<!--�Խ��� Ÿ�� ����-->
															<table width="700" border="0" cellspacing="0" cellpadding="0">
																<tr>
																<td bgcolor="#fafafa">
																	<table width="100%" border="0" cellpadding="0" cellspacing="0">
																		<tr><!--���� -->
																			<td bgcolor="#FFFFFF" align="center">
																				<!--�������-->
																				<table width="700" border="0" cellspacing="0" cellpadding="0">
																				<tr><td width="700" height="400" align="center">  
                                                                                
                                                                                <textarea id="hid_data" name="hid_data" rows="10" cols="100" style="width:670px; height:412px;"><%=BOS_CONTENT%></textarea>                                                                              

                                                                                </td></tr>
																				</table>
																				<!--���� ��-->
																			</td>
																		</tr>
																  </table>
																</td>
															 </tr>
															</table>
															<!--�Խ��� Ÿ�� ��-->

                                                          	<!--��ư ����-->
															  <table width="100%" border="0" cellspacing="0" cellpadding="0">
																<tbody>
                                                                          <%if 1=1 then  %>
                                                                          <!-- =========�亯 �˸� ������ SMS========= -->
                                  	                                        <div class="formWrap">
                                    	                                        <ul class="formbox">
                                      	                                        <li><strong>�亯 �˸� ������ SMS</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                                  <select name="re_hp1" class="select" tabindex="22">
															                        <option value="010" <%if hp1="010" then%>checked<%end if%>>010</option>
															                        <option value="011" <%if hp1="011" then%>checked<%end if%>>011</option>
															                        <option value="016" <%if hp1="016" then%>checked<%end if%>>016</option>
															                        <option value="017" <%if hp1="017" then%>checked<%end if%>>017</option>
															                        <option value="018" <%if hp1="018" then%>checked<%end if%>>018</option>
															                        <option value="019" <%if hp1="019" then%>checked<%end if%>>019</option>
														                          </select>
														                          -
														                          <input type="text" name="re_hp2" value="<%=hp2%>" class="s_input" size="10" onBlur="fNumCheck(this,this.value);"  maxlength="4" tabindex="23">
														                          -
														                          <input type="text" name="re_hp3" value="<%=hp3%>" class="s_input" onBlur="fNumCheck(this,this.value);"  maxlength="4" tabindex="24">
                                                                                  
                                                                                  <input id="re_hp_yn" name="re_hp_yn" type="checkbox" value="Y" class="check"  <%if RE_HP_YN="Y" then%>checked<%end if%>> SMS�� �亯�� ����</li>

                                                                                 
                                                                                   <div style="display:none;">
                                                                                   <li><strong>�亯 �˸� ������ E-mail </strong>
                                                                                     &nbsp;&nbsp;&nbsp;<input size="100" id="re_email" name="re_email" type="text" value="<%=re_email%>" style="width:300px;">  &nbsp;&nbsp;
                                                                                         <input  id="re_email_yn" name="re_email_yn" type="checkbox" value="Y" class="check" <%if RE_EMAIL_YN="Y" then %>checked<%end if%> > E-mail�� �亯�� ����</li>
                                                                                   </div>
                                                                                   
                                                                              </ul>
                                                                            </div>
                                                                          <!-- =========///�亯 �˸� ������ SMS========= -->
                                                                          <%end if %>

                                                                          </td>
                                                                </tr>

                                                                <tr>
																	<td height="40" align="right"><a href="javascript:ChkWrite();" onFocus="blur()">
                                                                        
                                                                       <img src="<%=img_main%>/btn/btn_board_save.gif" alt="����" align="absmiddle"></a>&nbsp;
																	   
                                                                       <img style="cursor:hand;" onclick="javascript:location.href='http://www.megagong.net/cust/qna/loading.asp?page_type=list&gubun=<%=gubun%>'; " src="<%=img_main%>/btn/bt_list.gif" alt="���" align="absmiddle"/>
                                                                    
                                                                    </td>
																</tr>
															</tbody>
                                                            </table>
															<!--��ư ��-->
                                                                                                                   
														</td>
													</tr>
												</table>
												</form>

<script type="text/javascript" src="/common/smarteditor3/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript">
    var oEditors = [];

    // �߰� �۲� ���
    var aAdditionalFontSet = [["MS UI Gothic", "MS UI Gothic"], ["Comic Sans MS", "Comic Sans MS"],["TEST","TEST"]];

    nhn.husky.EZCreator.createInIFrame({
        oAppRef: oEditors,
        elPlaceHolder: "hid_data",
        sSkinURI: "SmartEditor2Skin.html",
        htParams: {
            bUseToolbar: true, 			// ���� ��� ���� (true:���/ false:������� ����)
            bUseVerticalResizer: true, 	// �Է�â ũ�� ������ ��� ���� (true:���/ false:������� ����)
            bUseModeChanger: true, 		// ��� ��(Editor | HTML | TEXT) ��� ���� (true:���/ false:������� ����)
            aAdditionalFontList : aAdditionalFontSet,		// �߰� �۲� ���
            fOnBeforeUnload: function () {
                //alert("�Ϸ�!");
            }
        }, //boolean
      
        fCreator: "createSEditor2"
    });

    function pasteHTML() {
        var sHTML = "<span style='color:#FF0000;'>�̹����� ���� ������� �����մϴ�.<\/span>";
        oEditors.getById["hid_data"].exec("PASTE_HTML", [sHTML]);
    }

    function showHTML() {
        var sHTML = oEditors.getById["hid_data"].getIR();
        //  alert(sHTML);
    }

    function submitContents(elClickedObj) {
        oEditors.getById["hid_data"].exec("UPDATE_CONTENTS_FIELD", []); // �������� ������ textarea�� ����˴ϴ�.

        // �������� ���뿡 ���� �� ������ �̰����� document.getElementById("ir1").value�� �̿��ؼ� ó���ϸ� �˴ϴ�.

        try {
            elClickedObj.form.submit();
        } catch (e) { }
    }

    function setDefaultFont() {
        var sDefaultFont = '�ü�';
        var nFontSize = 24;
        oEditors.getById["hid_data"].setDefaultFont(sDefaultFont, nFontSize);
    }
</script>
											</td><!--���� �߰����� -->
										</tr>
									</table>
									<!--���write �� -->
									



<script language="javascript">

    function ChkWrite() {

        // oEditors.getById["hid_data"].exec("UPDATE_IR_FIELD", []);

        oEditors.getById["hid_data"].exec("UPDATE_CONTENTS_FIELD", []);

        var obj = document.frmWrite;

        //	==============================================================================
        // �Խ��� �������� ����
        //	==============================================================================
        if (!obj.cate.value) {
            alert("���� ������ ������ �ּ���");
            obj.cate.focus();
            return;
        }

        if (!obj.subject.value) {
            alert("�� ������ ������ �ּ���");
            obj.subject.focus();
            return;
        }

        strr = obj.hid_data.value;              

        //alert(strr);

        obj.hid_data.value = strr.replace(/iframe/gi, "iiffrrame");

        //alert(obj.hid_data.value);
        
        obj.action = "write_sql.asp";

        //this.oApp.exec("MSG_NOTIFY_CLICKCR", ["htmlmode"]);
        // $ON_CHANGE_EDITING_MODE("HTMLSrc");

        obj.submit();

    }

</script>
