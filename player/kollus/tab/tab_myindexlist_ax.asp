<!-- #include virtual = "/common/inc/VarDef.asp" -->
<!-- #include virtual = "/common/inc/Fundef.asp" -->
<!-- #include virtual = "/common/inc/RSexec.asp" -->
<%
Response.AddHeader "Cache-Control", "no-cache"
Response.AddHeader "Expires", "0"
Response.AddHeader "Pragma", "no-cache"
Response.ContentType = "text/html; charset=euc-kr"
%>
<!-- �÷��̾� ���� ��Ŭ��� ������ ���� -->
<!-- #include virtual = "/Player/kollus/common/set/play_func.asp"-->
<!-- #include virtual = "/Player/kollus/common/set/play_para.asp"-->
<!-- �÷��̾� ���� ��Ŭ��� ������ ���� -->
<%
	IMG = img_player+"/player_2016"
%>
<%
    strSql = ""
    strSql = strSql & "SELECT	MM_IDX, MM_TIME,ISNULL(MM_TEXT,'') "
    strSql = strSql & "FROM     MS_LEC_MYINDEX WITH(NOLOCK) "
    strSql = strSql & "WHERE	MM_MEM_ID = '" & uid & "' "
    strSql = strSql & "AND		MM_APP_NO = " & APP_NO & " "
    strSql = strSql & "AND		MM_LEC_CD = " & LEC_CD & " "
    strSql = strSql & "ORDER BY MM_TIME, MM_IDX "
	SET RS = DBexec(strSql,"study")
	If Not RS.EOF Then
        arrMyIndexList  = Rs.GetRows()
	End If
	Call DBClose(RS)
%>
    <!-- �ϸ�ũ -->
    <ul class="bookmark--list">
        <%
            if isArray(arrMyIndexList) Then
                For i = 0 To Ubound(arrMyIndexList,2)
                    idx = arrMyIndexList(0,i)
                    sec = arrMyIndexList(1,i)
                    txt = arrMyIndexList(2,i)
        %>
	                <li>
		                <div class="bookmark__timeWrap">
			                <span class="bookmark__time"><%=fncHHMMSS_NOTXT(sec) %></span>
			                <a href="#_blank" onclick="fncSetPlayPositon(<%=sec %>)" ><img src="<%=IMG%>/bt_play.gif" alt="play"></a>
			                <a href="#_blank" onclick="fncDelBookMark(<%=idx %>);"><img src="<%=IMG%>/bt_del.gif" alt="delete"></a>
		                </div>
		                <div class="bookmark_input"><input type="text" name="" id="" value="<%=txt %>" maxlength="50" onblur="fncUpdBookMark(<%=idx %>,this.value);" ></div>
	                </li>
        <%
                Next
            Else
        %>
	        <li>
		        <div class="bookmark__nodata">�߰��� �ϸ�ũ�� �����ϴ�.</div>
            </li>
        <%
            End if    
        %>
    </ul>
