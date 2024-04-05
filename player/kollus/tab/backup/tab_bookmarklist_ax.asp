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
    <!-- 북마크 -->
    <ul class="bookmark--list">
<%
    strSql = ""
    strSql = strSql & "SELECT	BM_TM0,BM_TM1,BM_TM2,BM_TM3,BM_TM4,BM_TM5,BM_TM6,BM_TM7,BM_TM8,BM_TM9, "
    strSql = strSql & "         BM_DESC0,BM_DESC1,BM_DESC2,BM_DESC3,BM_DESC4,BM_DESC5,BM_DESC6,BM_DESC7,BM_DESC8,BM_DESC9,BM_UPD_DT "
    strSql = strSql & "FROM     MS_BOOK_MARK WITH(NOLOCK) "
    strSql = strSql & "WHERE	BM_MEM_ID = '" & uid & "' "
    strSql = strSql & "AND		BM_APP_NO = " & APP_NO & " "
    strSql = strSql & "AND		BM_LEC_CD = " & LEC_CD & " "
	SET RS = DBexec(strSql,"study")
	If Not RS.EOF Then
        arrBookMark  = Rs.GetRows()
	End If
	Call DBClose(RS)

    if isArray(arrBookMark) Then
        Dim arrTmpList(3,9)

        For i = 0 To Ubound(arrTmpList,2)
            arrTmpList(0,i) = i
            arrTmpList(1,i) = arrBookMark(i,0)
            arrTmpList(2,i) = arrBookMark(i + 10,0)
        Next

        Dim arrBookMarkList(3,9)
        For i = 0 to Ubound(arrTmpList,2)

            For j = i + 1 to Ubound(arrTmpList,2)
                If CLng(arrTmpList(1,i)) > CLng(arrTmpList(1,j)) Then    '====내린차순시 부등호를 < 로 바꿈
                    tempNum = arrTmpList(0,i)
                    tempSec = arrTmpList(1,i)
                    tempTxt = arrTmpList(2,i)
                    arrTmpList(0,i) = arrTmpList(0,j)
                    arrTmpList(1,i) = arrTmpList(1,j)
                    arrTmpList(2,i) = arrTmpList(2,j)
                    arrTmpList(0,j) = tempNum
                    arrTmpList(1,j) = tempSec
                    arrTmpList(2,j) = tempTxt
                End If
            Next

            arrBookMarkList(0,i) = arrTmpList(0,i)
            arrBookMarkList(1,i) = arrTmpList(1,i)
            arrBookMarkList(2,i) = arrTmpList(2,i)
        Next
%>
        <%
            bCnt = 0
            For i = 0 To Ubound(arrBookMarkList,2)
                num = arrBookMarkList(0,i)
                sec = arrBookMarkList(1,i)
                txt = arrBookMarkList(2,i)

                if sec > 0 Then
        %>
	            <li>
		            <div class="bookmark__timeWrap">
			            <span class="bookmark__time"><%=fncHHMMSS_NOTXT(sec) %></span>
			            <a href="#_blank" onclick="fncSetPlayPositon(<%=sec %>)" ><img src="<%=IMG%>/bt_play.gif" alt="play"></a>
			            <a href="#_blank" onclick="fncDelBookMark(<%=num %>);"><img src="<%=IMG%>/bt_del.gif" alt="delete"></a>
		            </div>
		            <div class="bookmark_input"><input type="text" name="" id="" value="<%=txt %>" maxlength="50" onblur="fncUpdBookMark(<%=num %>,this.value);" ></div>
	            </li>
        <%
                    bCnt = bCnt + 1
                End if
            Next
        %>
        <% if bCnt = 0 Then %>
	            <li>
		            <div class="bookmark__nodata">추가된 북마크가 없습니다.</div>
                </li>
        <% End if %>
<%
    Else
%>
	            <li>
		            <div class="bookmark__nodata">추가된 북마크가 없습니다.</div>
                </li>
<%
    End if
%>
    </ul>
