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


<% '�Խ��� �⺻ ���� ���� %>
<!-- #include virtual = "/common/inc/FunBrd.asp"-->
<% '�Խ��� �⺻ ����  �� %>

<% 'HTML �⺻ ����%>
<!-- #include virtual = "/common/inc/upInfo.asp"-->
<% 'HTML �⺻ ��%>

<%
    cook_id= request("cook_id")
    username= request("username")

    idx = request("idx")
    menu_gubun = request("menu_gubun")    
%>


<script type="text/javascript" src="/common/js/member.js?vt=120130913"></script>

<html lang="ko">


<head>
<link href="http://img.megacst.com/common/megacst_2013.ico" type="image/x-icon" rel="shortcut icon">

    

    <meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
    <meta http-equiv="page-exit"  content="blendtrans(duration=0.1)">
    <meta http-equiv="page-enter" content="blendtrans(duration=0.2)">

    <title>�հ��� ���� å�Ӱ�, �ް�CST : ����������</title>

    <meta name="description" content="�հ��� ���� å�Ӱ�, �ް�CST : ����������,��������">
    <meta name="keywords" content="�ް�CST,�ް����͵�,�ѻ��,������,������,������,�ڼ���,����ȣ,����,����������,�������,���,�츮�����п�,�����̱۷ι�">
        
    
    <link rel="stylesheet" type="text/css" href="http://img.megacst.com/common/css/2013/2013style.css"> 
    <link rel="stylesheet" type="text/css" href="http://img.megacst.com/common/css/2014/131217_layout.css">   
    <link rel="stylesheet" type="text/css" href="http://img.megacst.com/common/css/2013/131001_mcafe.css">        
    

    <script language="JavaScript" src="http://img.megacst.com/common/js/maincommon.js?vt=2014.1"></script>
    <script language="JavaScript" src="http://img.megacst.com/common/js/common.js?vt=2014.1"></script>
    <script language="JavaScript" src="http://img.megacst.com/common/js/layer.js"></script>
    <script language="JavaScript" src="http://img.megacst.com/common/js/calendar.js"></script>
    <script language="JavaScript" src="http://img.megacst.com/common/js/prof.js"></script>
    <script language="JavaScript" src="http://img.megacst.com/common/js/jquery.min.js?vt=2014.1"></script>
    <script language="JavaScript" src="http://img.megacst.com/common/js/jquery.cycle.all.min.js"></script>
    <script language="JavaScript" src="http://img.megacst.com/common/js/embedControl.js"></script>
   
</head>

                                    
<%
    	
    If idx<>"" Then

		Dim strsql
		strsql = ""
		strSql = strSql & " SELECT  "
		strSql = strSql & "		BOS_IDX, "
		strSql = strSql & "		A.BOS_NUM, "
		strSql = strSql & "		A.BOS_BID, "
		strSql = strSql & "		A.BOS_FN, "
		strSql = strSql & "		A.BOS_RN, "
		strSql = strSql & "		BOS_CATE, "
		strSql = strSql & "		BOS_SN, "
		strSql = strSql & "		BOS_ID, "
		strSql = strSql & "		BOS_NAME, "
		strSql = strSql & "		BOS_SUBJECT, "
		strSql = strSql & "		ISNULL(A.BOS_BOARD_TYPE,0) A_BOS_BOARD_TYPE, "
		strSql = strSql & "		A.BOS_CONTENT, "
		strSql = strSql & "		A.BOS_CONTENT_ENCP, "
		strSql = strSql & "		BOS_VIEW_HIT, "
		strSql = strSql & "		CONVERT(VARCHAR(10), BOS_WRITE_DATE, 102), BOS_EXTRA1, "
		strSql = strSql & "		ISNULL(B.BOS_BOARD_TYPE,0) B_BOS_BOARD_TYPE, "
		strSql = strSql & "		B.BOS_CONTENT, "
		strSql = strSql & "		B.BOS_CONTENT_ENCP, "

        strSql = strSql & "		A.BOS_RE_HP, "
        strSql = strSql & "		A.BOS_RE_HP_YN, "
        strSql = strSql & "		A.BOS_RE_EMAIL, "
        strSql = strSql & "		A.BOS_RE_EMAIL_YN "

		strSql = strSql & " FROM MS_BRD_ON_SL AS A "
		strSql = strSql & " LEFT JOIN (SELECT BOS_BID, BOS_NUM, BOS_BOARD_TYPE, BOS_CONTENT, BOS_CONTENT_ENCP, BOS_FN, BOS_RN FROM MS_BRD_ON_SL ) AS B ON A.BOS_BID = B.BOS_BID AND A.BOS_FN = B.BOS_FN AND B.BOS_RN='1' "
		strSql = strSql & " WHERE BOS_IDX = "& IDX

        'response.Write strsql

		If SelectSQL(strSql, sRs) = True Then

			BOS_IDX					= sRs(0,0)
			BOS_NUM					= sRs(1,0)
			BOS_BID					= sRs(2,0)
			BOS_FN					= sRs(3,0)
			BOS_RN					= sRs(4,0)
			BOS_CATE				= sRs(5,0)
			BOS_SN					= sRs(6,0)
			BOS_ID					= sRs(7,0)
			BOS_NAME				= sRs(8,0)
			BOS_SUBJECT				= Re_sqlFilter(sRs(9,0))
			BOARD_TYPE				= sRs(10,0)
			BOS_CONTENT				= sRs(11,0)
			BOS_CONTENT_ENCP		= sRs(12,0)

			BOS_VIEW_HIT			= sRs(13,0)
			BOS_WRITE_DATE			= sRs(14,0)
			BOS_EXTRA1				= sRs(15,0)

			BOARD_TYPE_Reply		= sRs(16,0)
			BOS_CONTENT_Reply 	= Re_sqlFilter(Trim(sRs(17,0)))
			BOS_CONTENT_ENCP_Reply	= sRs(18,0)

            RE_HP = sRs(19,0)
            RE_HP_YN = sRs(20,0)
            RE_EMAIL = sRs(21,0)
            RE_EMAIL_YN  = sRs(22,0)


			'BOS_CONTENT = replace(BOS_CONTENT,"&","#_DEXT#")
			BOS_CONTENT= Re_sqlFilter(BOS_CONTENT)
		End IF

	End IF
%>
									
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
											
												<form name="frmWrite" method="post" onSubmit="return ChkWrite();">
                                                
                                                <input type="hidden" name="cook_id" value="<%=cook_id%>">
                                                <input type="hidden" name="username" value="<%=username%>">

												<input type="hidden" name="idx" value="<%=idx%>">
												<input type="hidden" name="board_type" value="0">
												<input type="hidden" name="menu_gubun" value="<%=gubun%>">

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
																			<%
																				strSql = "select boca_cate, boca_name from ms_brd_on_cate with(nolock) where boca_bid = 'tecmqna' "

                                                                                '''''''''''��� �ɻ� ''''  �п�(�ǰ�)����
                                                                                if life_test_yn ="Y" then 
                                                                                   strSql =  strSql & " And boca_cate<>'3' "                                                                                 
                                                                                end if 

                                                                                strSql = strSql + " order by boca_seq "


																				call RSExec(rs, 0, 3, strSql, "study")

																				do while not rs.EOF
																			%>
																			<option value="<%=rs("boca_cate")%>" <%if trim(BOS_CATE) = trim(rs("boca_cate")) then%>selected<%end if%>><%=rs("boca_name")%></option>
																			<%
																					rs.MoveNext
																				loop
																				RSClose(rs)
																			%>
																		</select>
																	</td>
																</tr>
																<tr>
																	<td width="100" height="28" class="aC ky_board_li1" >����</td>
																	<td class="pl10 ky_board_li2"><input type="text" name="subject" id="find4" style="background:#ffffff; border:1px solid #cfcfcf; height:18px; width:425px;" value="<%=BOS_SUBJECT%>"/></td>
																</tr>
															</table>
															<!--�Խ��� Ÿ��Ʋ ��-->

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

                                                                <%'if instr(1, "/bkstory/yesmj1/", cook_id) then  %>
                                                                        <tr>
                                	                                        <td>
                                                                           <%
                                                                           IF IDX = "" THEN    '''''''' �ʱ� �Է��̸� 

                                                                               ssql =" select md_email, md_hp_no   from ms_mem_dtl with(nolock) where md_mem_id='"& cook_id &"' "

                                                                                call RSexec (rs,0,0,ssql,"study")

                                                                                  re_email = rs("md_email")
                                                                                  md_hp_no = rs("md_hp_no")

                                                                                call RSclose(RS)
                                                                                
                                                                                if len(md_hp_no)>10 then
                                                                                   
                                                                                   arr_hp = split(md_hp_no,"-")

                                                                                   hp1 = trim(arr_hp(0))
                                                                                   hp2 = trim(arr_hp(1))
                                                                                   hp3 = trim(arr_hp(2))

                                                                                end if  
                                                                                
                                                                                RE_HP_YN = "Y"
                                                                                RE_EMAIL_YN = "Y"
                                                                                                                                                              
                                                                             ELSE          '''''''''''''  �����̸� 
                                                                                    
                                                                                    hp1 = "010"
                                                                                    hp2 = ""
                                                                                    hp3 = ""
                                                                                    
                                                                                    IF INSTR(1,RE_HP,"-")  THEN 
                                                                                       
                                                                                       arr_hp = split(RE_HP,"-")

                                                                                       IF  ubound(arr_hp)>=2 then
                                                                                           hp1 = trim(arr_hp(0))
                                                                                           hp2 = trim(arr_hp(1))
                                                                                           hp3 = trim(arr_hp(2))
                                                                                       end if

                                                                                    END IF     


                                                                             END IF
                                                                           %>

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
                                                                <%'end if%>

                                                                <tr>
																	<td height="40" align="right"><a href="javascript:ChkWrite();" onFocus="blur()">
                                                                        
                                                                       <img src="<%=img_main%>/btn/btn_board_save.gif" alt="����" align="absmiddle"></a>&nbsp;
																	   
                                                                       <img style="cursor:hand;" onclick="javascript:window.parent.location.href='http://www.megacst.com/cust/qna/cust_sub20.asp?searchkey=<%=searchkey%>&searchword=<%=searchword%>&nextpage=<%=intnextpage%>&page_flag=<%=p_page_flag%>&menu_gubun=<%=gubun%>'; " src="<%=img_main%>/btn/bt_list.gif" alt="���" align="absmiddle"/>
                                                                    
                                                                    </td>
																</tr>
															</tbody>
                                                            </table>
															<!--��ư ��-->
                                                                                                                   
														</td>
													</tr>
												</table>
												</form>

<script type="text/javascript" src="/script/smarteditor3/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript">
    var oEditors = [];

    // �߰� �۲� ���
    //var aAdditionalFontSet = [["MS UI Gothic", "MS UI Gothic"], ["Comic Sans MS", "Comic Sans MS"],["TEST","TEST"]];

    nhn.husky.EZCreator.createInIFrame({
        oAppRef: oEditors,
        elPlaceHolder: "hid_data",
        sSkinURI: "SmartEditor2Skin.html",
        htParams: {
            bUseToolbar: true, 			// ���� ��� ���� (true:���/ false:������� ����)
            bUseVerticalResizer: true, 	// �Է�â ũ�� ������ ��� ���� (true:���/ false:������� ����)
            bUseModeChanger: true, 		// ��� ��(Editor | HTML | TEXT) ��� ���� (true:���/ false:������� ����)
            //aAdditionalFontList : aAdditionalFontSet,		// �߰� �۲� ���
            fOnBeforeUnload: function () {
                //alert("�Ϸ�!");
            }
        }, //boolean
        /*fOnAppLoad: function () {
        //���� �ڵ�
        oEditors.getById["hid_data"].exec("PASTE_HTML", ["<%=replace(BOS_CONTENT,"""","")%>"]);
        },*/
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
        
        obj.action = "write_sql.asp";

        obj.submit();

    }

</script>