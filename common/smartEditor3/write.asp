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

    <title>합격을 위한 책임감, 메가CST : 경찰공무원</title>

    <meta name="description" content="합격을 위한 책임감, 메가CST : 경찰공무원,동영상강의">
    <meta name="keywords" content="메가CST,메가스터디,한상기,김종욱,김재윤,이지민,박수연,김찬호,경찰,경찰공무원,경찰고시,고시,우리경찰학원,에스이글로벌">
        
    
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

																		</select>
																	</td>
																</tr>
																<tr>
																	<td width="100" height="28" class="aC ky_board_li1" >제목</td>
																	<td class="pl10 ky_board_li2"><input type="text" name="subject" id="subject" style="background:#ffffff; border:1px solid #cfcfcf; height:18px; width:425px;" value="<%=BOS_SUBJECT%>"/></td>
																</tr>



                                                                     <tr>
														                <td height="1" colspan="2" bgcolor="#e6e6e6"></td>
													                 </tr>

                                                                     <tr>
                                                                        <td colspan=2 class="pl10 pt5 ky_board_t11 ky_board_li2" height=30>
                                                                             첨부파일  :  <a href="<%=f_url%>" target="_new"><img src="<%=img_main%>/icon/notice_file.gif" align="absmiddle">&nbsp;<%=FileNm%> </a>
                                                                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="<%=img_main%>/tmp_img/mypage/bt_del.gif" onclick="javascript:go_file_del('<%=bof_idx%>');" style="cursor:hand;"/>
                                                                        </td>

                                                                        <script language=javascript>

                                                                            function go_file_del(t_no) {
                                                                                window.location.href = "cust_sub20_file_del.asp?cook_id=<%=cook_id%>&username=<%=username%>&menu_gubun=<%=menu_gubun%>&idx=<%=idx%>&bof_idx=" + t_no;
                                                                            }

                                                                         </script>

                                                                     </tr>


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

                                                                <tr>
																	<td height="40" align="right"><a href="javascript:ChkWrite();" onFocus="blur()">
                                                                        
                                                                       <img src="<%=img_main%>/btn/btn_board_save.gif" alt="저장" align="absmiddle"></a>&nbsp;
																	   
                                                                       <img style="cursor:hand;" onclick="javascript:location.href='http://www.megagong.net/cust/qna/loading.asp?page_type=list&gubun=<%=gubun%>'; " src="<%=img_main%>/btn/bt_list.gif" alt="목록" align="absmiddle"/>
                                                                    
                                                                    </td>
																</tr>
															</tbody>
                                                            </table>
															<!--버튼 끝-->
                                                                                                                   
														</td>
													</tr>
												</table>
												</form>

<script type="text/javascript" src="/common/smarteditor3/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript">
    var oEditors = [];

    // 추가 글꼴 목록
    var aAdditionalFontSet = [["MS UI Gothic", "MS UI Gothic"], ["Comic Sans MS", "Comic Sans MS"],["TEST","TEST"]];

    nhn.husky.EZCreator.createInIFrame({
        oAppRef: oEditors,
        elPlaceHolder: "hid_data",
        sSkinURI: "SmartEditor2Skin.html",
        htParams: {
            bUseToolbar: true, 			// 툴바 사용 여부 (true:사용/ false:사용하지 않음)
            bUseVerticalResizer: true, 	// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
            bUseModeChanger: true, 		// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
            aAdditionalFontList : aAdditionalFontSet,		// 추가 글꼴 목록
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

        //alert(strr);

        obj.hid_data.value = strr.replace(/iframe/gi, "iiffrrame");

        //alert(obj.hid_data.value);
        
        obj.action = "write_sql.asp";

        //this.oApp.exec("MSG_NOTIFY_CLICKCR", ["htmlmode"]);
        // $ON_CHANGE_EDITING_MODE("HTMLSrc");

        obj.submit();

    }

</script>
