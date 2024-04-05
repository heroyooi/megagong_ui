<!-- #include virtual = "/common/inc/VarDef.asp" -->
<!-- #include virtual = "/common/inc/Fundef.asp" -->
<!-- #include virtual = "/common/inc/RSexec.asp" -->
<%
Response.AddHeader "Cache-Control", "no-cache"
Response.AddHeader "Expires", "0"
Response.AddHeader "Pragma", "no-cache"
Response.ContentType = "text/html; charset=euc-kr"
%>
<!-- 플레이어 공통 인클루드 페이지 시작 -->
<!-- #include virtual = "/Player/kollus/common/set/play_func.asp"-->
<!-- #include virtual = "/Player/kollus/common/set/play_para.asp"-->
<!-- 플레이어 공통 인클루드 페이지 종료 -->
<%
	IMG = img_player+"/player_2016"
%>
<%
    strSql = ""
    strSql = strSql & "SELECT	LI_LEC_INDEX, "
    strSql = strSql & "         LI_INTRO_SEC, "
    strSql = strSql & "         LM_LEC_TM "
    strSql = strSql & "FROM     MS_LEC_INDEX WITH(NOLOCK) "
    strSql = strSql & "JOIN     MS_LEC_MAS WITH(NOLOCK) ON LM_LEC_CD = LI_LEC_CD "
    strSql = strSql & "WHERE	LI_LEC_CD = " & LEC_CD
    Set RS = DBExec(strSql, "study")
    If Not RS.EOF Then
        arrIndexList = Rs.GetRows()
    End If
    Call DBClose(RS)

    if isArray(arrIndexList) Then
%>
        <!-- 인덱스 -->
        <div>

	        <div class="table__top">
		        <div class="table__message">선택하신 내용만 보실 수 있습니다.</div>
		        <a href="#_blank" onclick="fncChkPlay();" class="btn bt_view">선택보기</a>
	        </div>

	        <table class="table__common">
	        <colgroup>
		        <col width="32">
		        <col width="131">
		        <col>
	        </colgroup>
	        <thead>
		        <tr>
			        <th><input type="checkbox" name="" id="" onclick="fncChkSlt(this);" ></th>
			        <th><span>내용</span></th>
			        <th><span>시간</span></th>
		        </tr>
	        </thead>
	        <tbody>
            <%
                arrIndex = Split(arrIndexList(0,i),";")
                LecTm = arrIndexList(2,i) * 60
                maxCnt = Ubound(arrIndex) - 1

                For i = 0 To maxCnt
                    strSecTxt = arrIndex(i)
                    stm = Left(strSecTxt,inStr(1,strSecTxt,",") - 1)
                    if  i <= maxCnt Then
                        if i = maxCnt Then
                            etm = LecTm
                        Else
                            etm = Left(arrIndex(i + 1),inStr(1,arrIndex(i + 1),",") - 1)
                        End if
                    End if

                    txt = Mid(strSecTxt,inStr(1,strSecTxt,",") + 1, Len(strSecTxt))

                    txt = replace(txt,"¸",",")   '바꾸고  
                    txt = replace(txt,"¤",";")   '바꾸고
                    txt = replace(txt,"\\\\","\\")   '바꾸고  
                    txt = replace(txt,"\r\n","<br>")   '바꾸고
            %>
		            <tr>
			            <td><input type="checkbox" name="iptIndexChk" id="" stm="<%=stm %>" etm="<%=etm %>"></td>
			            <td class="table__subject"><a href="#_blank" onclick="fncSetPlayPositon(<%=stm %>)"><%=txt %></a></td>
			            <td><%=fncHHMMSS_NOTXT(stm) %></td>
		            </tr>
            <%
                Next    
            %>
	        </tbody>
	        </table>

        </div>

        <script type="text/javascript">
            function fncChkSlt(t) {
                $('input:checkbox[name="iptIndexChk"]').prop("checked", $(t).is(":checked"));
            }

            var ntm = 0;
            var chkSltCnt = 0;

            var nextTm = 0;
            var chkCnt = 0;
            var cout;
            function fncChkPlay() {
                clearTimeout("cout");
                chkSltCnt = $('input:checkbox[name="iptIndexChk"]:checked').length;
                ntm = parseInt(getCurrentPosition() / 1000);
                if (ntm > 0) {
                    if (chkSltCnt > 0) {
                        chkCnt = 0;
                        for (i = 0; i < chkSltCnt; i++) {
                            var stm = parseInt($('input:checkbox[name="iptIndexChk"]:checked').eq(i).attr("stm"));
                            var etm = parseInt($('input:checkbox[name="iptIndexChk"]:checked').eq(i).attr("etm"));
                            
                            if (ntm >= stm && ntm < etm) {
                                chkCnt = 1;
                            }

                            if (ntm < stm && nextTm == 0) {
                                nextTm = stm;
                            }
                        }
                        if (chkCnt == 0) {
                            if (ntm >= etm && nextTm == 0) {
                                fncSetPlayPositon($('input:checkbox[name="iptIndexChk"]:checked').eq(0).attr("stm"));
                            } else {
                                fncSetPlayPositon(nextTm);
                                nextTm = 0;
                            }
                        }

                        tout = setTimeout("fncChkPlay()", 1000);
                    } else {
                        return;
                    }
                }
            }
        </script>
<%
    End if    
%>