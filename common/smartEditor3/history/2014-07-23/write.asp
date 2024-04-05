<%
'=======================================================================
'업 무 명 	: megaCST-강좌신청
'모듈기능 	: 강좌신청 목록
'파 일 명 	: /vod/vod_chr_list.asp
'작성일자 	: 2013/01/05
'작 성 자 	: 박용수
'-----------------------------------------------------------------------
'변경일자   변경자  변동내역
'=======================================================================
'
'=======================================================================
'Response.Expires = -1
%>
<% '공통 인클루드 페이지 시작 %>
<!-- #include virtual = "/common/inc/RSexec.asp" -->
<!-- #include virtual = "/common/inc/VarDef.asp"-->
<!-- #include virtual = "/common/inc/FunDef.asp"-->
<% '공통 인클루드 페이지 종료 %>


<% '게시판 기본 사항 시작 %>
<!-- #include virtual = "/common/inc/FunBrd.asp"-->
<% '게시판 기본 사항  끝 %>

<% 'HTML 기본 시작%>
<!-- #include virtual = "/common/inc/upInfo.asp"-->
<% 'HTML 기본 끝%>

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

    <title>합격을 위한 책임감, 메가CST : 경찰공무원</title>

    <meta name="description" content="합격을 위한 책임감, 메가CST : 경찰공무원,동영상강의">
    <meta name="keywords" content="메가CST,메가스터디,한상기,김종욱,김재윤,이지민,박수연,김찬호,경찰,경찰공무원,경찰고시,고시,우리경찰학원,에스이글로벌">
        
    
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
			BOS_SUBJECT				= DB_TO_STR(sRs(9,0))
			BOARD_TYPE				= sRs(10,0)
			BOS_CONTENT				= replace(sRs(11,0),"iiffrrame","iframe")
			BOS_CONTENT_ENCP		= sRs(12,0)

			BOS_VIEW_HIT			= sRs(13,0)
			BOS_WRITE_DATE			= sRs(14,0)
			BOS_EXTRA1				= sRs(15,0)

			BOARD_TYPE_Reply		= sRs(16,0)
			BOS_CONTENT_Reply 	= DB_TO_STR(Trim(sRs(17,0)))
			BOS_CONTENT_ENCP_Reply	= sRs(18,0)

            RE_HP = sRs(19,0)
            RE_HP_YN = sRs(20,0)
            RE_EMAIL = sRs(21,0)
            RE_EMAIL_YN  = sRs(22,0)


			'BOS_CONTENT = replace(BOS_CONTENT,"&","#_DEXT#")
			BOS_CONTENT= DB_TO_STR(BOS_CONTENT)
		End IF

	End IF
%>
									
									<!-- 서브타이틀 시작 -->
									<table width="700" border="0" cellspacing="0" cellpadding="0" style="margin:0 0 10px 0">
										<tr>
											<td><img src="<%=img_main%>/help/sub_504.gif" border="0" alt="1:1 친절 상담"></td>
										</tr>
									</table>
									<!-- 서브타이틀 끝-->
									<!--상담write -->
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
															<!--게시판 타이틀 시작-->
															<table width="700" border="0" cellspacing="0" cellpadding="1" class="ky_board_01">
																<tr>
																	<td height="2" colspan="2" bgcolor="#dadada"></td>
																</tr>
																<tr>
																	<td width="100" height="28" class="aC ky_board_li1">분류</td>
																	<td class="pl10 ky_board_li2" style="letter-spacing:-1">
																		<select name="cate" id="cate" class="select">
																			<option value="">--선택--</option>
																			<%
																				strSql = "select boca_cate, boca_name from ms_brd_on_cate with(nolock) where boca_bid = 'tecmqna' "

                                                                                '''''''''''평생 심사 ''''  학원(실강)문의
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
																	<td width="100" height="28" class="aC ky_board_li1" >제목</td>
																	<td class="pl10 ky_board_li2"><input type="text" name="subject" id="subject" style="background:#ffffff; border:1px solid #cfcfcf; height:18px; width:425px;" value="<%=BOS_SUBJECT%>"/></td>
																</tr>



                                                                <%
                                                                   ssql = " select top 1 bof_idx, bof_file_name  from ms_brd_on_fi with(nolock) where bos_idx='"& IDX &"' order by bof_idx desc "

                                                                   ''rw ssql 

                                                                   call rsexec(rs,0,0,ssql,"study")

                                                                   if not rs.eof then
                                                                      bof_idx = rs("bof_idx")   
                                                                      fileNm = rs("bof_file_name")   
                                                                      f_url = "http://file.megacst.com/DEXTDATA/cust/"  + fileNm    
                                                                   %>
                                                                     <tr>
														                <td height="1" colspan="2" bgcolor="#e6e6e6"></td>
													                 </tr>

                                                                     <tr>
                                                                        <td colspan=2 class="pl10 pt5 ky_board_t11 ky_board_li2" height=30>
                                                                             첨부파일  :  <a href="<%=f_url%>" target="_new"><img src="<%=img_main%>/icon/notice_file.gif" align="absmiddle">&nbsp;<%=FileNm%> </a>
                                                                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="http://img.megacst.com/tmp_img/mypage/bt_del.gif" onclick="javascript:go_file_del('<%=bof_idx%>');"
                                                                        </td>

                                                                        <script language=javascript>

                                                                            function go_file_del(t_no) {
                                                                                window.location.href = "cust_sub20_file_del.asp?cook_id=<%=cook_id%>&username=<%=username%>&menu_gubun=<%=menu_gubun%>&idx=<%=idx%>&bof_idx=" + t_no;
                                                                            }

                                                                         </script>

                                                                     </tr>

                                                                   <%
                                                                   else
                                                                   %>
                                                                    <tr>
																	    <td width="100" height="28" class="aC ky_board_li1" >첨부(10M 이하)</td>
																	    <td class="pl10 ky_board_li2"><input type="file" name="uploadInputBox" id="uploadInputBox" style="background:#ffffff; border:1px solid #cfcfcf; height:18px; width:425px;" ></td>
																    </tr>
                                                                   <%

                                                                   end if

                                                                   call rsclose(rs)
                                                      
                                                                %>      

															</table>
															<!--게시판 타이틀 끝-->
                                                            <br>
															<!--게시판 타입 시작-->
															<table width="700" border="0" cellspacing="0" cellpadding="0">
																<tr>
																<td bgcolor="#fafafa">
																	<table width="100%" border="0" cellpadding="0" cellspacing="0">
																		<tr><!--내용 -->
																			<td bgcolor="#FFFFFF" align="center">
																				<!--내용시작-->
																				<table width="700" border="0" cellspacing="0" cellpadding="0">
																				<tr><td width="700" height="400" align="center">  
                                                                                
                                                                                <textarea id="hid_data" name="hid_data" rows="10" cols="100" style="width:670px; height:412px;"><%=BOS_CONTENT%></textarea>                                                                              

                                                                                </td></tr>
																				</table>
																				<!--내용 끝-->
																			</td>
																		</tr>
																  </table>
																</td>
															 </tr>
															</table>
															<!--게시판 타입 끝-->

                                                          	<!--버튼 시작-->
															  <table width="100%" border="0" cellspacing="0" cellpadding="0">
																<tbody>

                                                                <%'if instr(1, "/bkstory/yesmj1/", cook_id) then  %>
                                                                        <tr>
                                	                                        <td>
                                                                           <%
                                                                           IF IDX = "" THEN    '''''''' 초기 입력이면 

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
                                                                                                                                                              
                                                                             ELSE          '''''''''''''  수정이면 
                                                                                    
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
                                                                          <!-- =========답변 알림 받으실 SMS========= -->
                                  	                                        <div class="formWrap">
                                    	                                        <ul class="formbox">
                                      	                                        <li><strong>답변 알림 받으실 SMS</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
                                                                                  
                                                                                  <input id="re_hp_yn" name="re_hp_yn" type="checkbox" value="Y" class="check"  <%if RE_HP_YN="Y" then%>checked<%end if%>> SMS로 답변을 받음</li>

                                                                                 
                                                                                   <div style="display:none;">
                                                                                   <li><strong>답변 알림 받으실 E-mail </strong>
                                                                                     &nbsp;&nbsp;&nbsp;<input size="100" id="re_email" name="re_email" type="text" value="<%=re_email%>" style="width:300px;">  &nbsp;&nbsp;
                                                                                         <input  id="re_email_yn" name="re_email_yn" type="checkbox" value="Y" class="check" <%if RE_EMAIL_YN="Y" then %>checked<%end if%> > E-mail로 답변을 받음</li>
                                                                                   </div>
                                                                                   
                                                                              </ul>
                                                                            </div>
                                                                          <!-- =========///답변 알림 받으실 SMS========= -->
                                                                          <%end if %>

                                                                          </td>
                                                                </tr>
                                                                <%'end if%>

                                                                <tr>
																	<td height="40" align="right"><a href="javascript:ChkWrite();" onFocus="blur()">
                                                                        
                                                                       <img src="<%=img_main%>/btn/btn_board_save.gif" alt="저장" align="absmiddle"></a>&nbsp;
																	   
                                                                       <img style="cursor:hand;" onclick="javascript:window.parent.location.href='http://www.megacst.com/cust/qna/cust_sub20.asp?searchkey=<%=searchkey%>&searchword=<%=searchword%>&nextpage=<%=intnextpage%>&page_flag=<%=p_page_flag%>&menu_gubun=<%=gubun%>'; " src="<%=img_main%>/btn/bt_list.gif" alt="목록" align="absmiddle"/>
                                                                    
                                                                    </td>
																</tr>
															</tbody>
                                                            </table>
															<!--버튼 끝-->
                                                                                                                   
														</td>
													</tr>
												</table>
												</form>

<script type="text/javascript" src="/script/smarteditor3/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript">
    var oEditors = [];

    // 추가 글꼴 목록
    //var aAdditionalFontSet = [["MS UI Gothic", "MS UI Gothic"], ["Comic Sans MS", "Comic Sans MS"],["TEST","TEST"]];

    nhn.husky.EZCreator.createInIFrame({
        oAppRef: oEditors,
        elPlaceHolder: "hid_data",
        sSkinURI: "SmartEditor2Skin.html",
        htParams: {
            bUseToolbar: true, 			// 툴바 사용 여부 (true:사용/ false:사용하지 않음)
            bUseVerticalResizer: true, 	// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
            bUseModeChanger: true, 		// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
            //aAdditionalFontList : aAdditionalFontSet,		// 추가 글꼴 목록
            fOnBeforeUnload: function () {
                //alert("완료!");
            }
        }, //boolean
      
        fCreator: "createSEditor2"
    });

    function pasteHTML() {
        var sHTML = "<span style='color:#FF0000;'>이미지도 같은 방식으로 삽입합니다.<\/span>";
        oEditors.getById["hid_data"].exec("PASTE_HTML", [sHTML]);
    }

    function showHTML() {
        var sHTML = oEditors.getById["hid_data"].getIR();
        //  alert(sHTML);
    }

    function submitContents(elClickedObj) {
        oEditors.getById["hid_data"].exec("UPDATE_CONTENTS_FIELD", []); // 에디터의 내용이 textarea에 적용됩니다.

        // 에디터의 내용에 대한 값 검증은 이곳에서 document.getElementById("ir1").value를 이용해서 처리하면 됩니다.

        try {
            elClickedObj.form.submit();
        } catch (e) { }
    }

    function setDefaultFont() {
        var sDefaultFont = '궁서';
        var nFontSize = 24;
        oEditors.getById["hid_data"].setDefaultFont(sDefaultFont, nFontSize);
    }
</script>
											</td><!--개발 추가영역 -->
										</tr>
									</table>
									<!--상담write 끝 -->
									



<script language="javascript">

    function ChkWrite() {

        // oEditors.getById["hid_data"].exec("UPDATE_IR_FIELD", []);

        oEditors.getById["hid_data"].exec("UPDATE_CONTENTS_FIELD", []);

        var obj = document.frmWrite;

        //	==============================================================================
        // 게시판 질문유형 설정
        //	==============================================================================
        if (!obj.cate.value) {
            alert("질문 구분을 선택해 주세요");
            obj.cate.focus();
            return;
        }

        if (!obj.subject.value) {
            alert("글 제목을 기입해 주세요");
            obj.subject.focus();
            return;
        }

        strr = obj.hid_data.value;              

        alert(strr);

        obj.hid_data.value = strr.replace(/iframe/gi, "iiffrrame");

        alert(obj.hid_data.value);
        
        obj.action = "write_sql.asp";

        return;

        obj.submit();

    }


    String.prototype.replaceAll = function (search, replace) {
        //if replace is null, return original string otherwise it will
        //replace search string with 'undefined'.
        if (!replace)
            return this;

        return this.replace(new RegExp('[' + search + ']', 'g'), replace);
    };

   // var str = 'ABCADRAE';
   // alert(str.replaceAll('A', 'X')); // output : XBCXDRXE

</script>