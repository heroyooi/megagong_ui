<!-- #include virtual = "/common/inc/VarDef.asp" -->
<!-- #include virtual = "/common/inc/Fundef.asp" -->
<!-- #include virtual = "/common/inc/RSexec.asp" -->
<%
Response.AddHeader "Cache-Control", "no-cache"
Response.AddHeader "Expires", "0"
Response.AddHeader "Pragma", "no-cache"
Response.ContentType = "text/html; charset=euc-kr"
%>
<!-- #include virtual = "/Player/kollus/common/set/play_func.asp"-->
<!-- #include virtual = "/Player/kollus/common/set/play_para.asp"-->
<%
    bookmarkTm = fncRequest("bookmarkTm")
    bookmarkIdx = fncRequest("bookmarkIdx")
    bookmarkTxt = Unescape(fncRequest("bookmarkTxt"))
    mode = fncRequest("mode")

    if uid = "" Then
        Response.Write "login"
        Response.End
    End if

    if mode = "ins" Then

        if bookmarkTm = "" Then
            Response.Write "time"
            Response.End
        End if

        'intSameTimeCnt = 0
        '
        'strSql = ""
        'strSql = strSql & "SELECT	COUNT(1) "
        'strSql = strSql & "FROM     MS_LEC_MYINDEX WITH(NOLOCK) "
        'strSql = strSql & "WHERE	MM_MEM_ID = '" & uid & "' "
        'strSql = strSql & "AND		MM_APP_NO = " & APP_NO & " "
        'strSql = strSql & "AND		MM_LEC_CD = " & LEC_CD & " "
        'strSql = strSql & "AND		MM_TIME = " & bookmarkTm & " "
	    'SET RS = DBexec(strSql,"study")
	    'If Not RS.EOF Then
        '    intSameTimeCnt = Trim(Rs(0))
	    'End If
	    'Call DBClose(RS)
        '
        'if intSameTimeCnt > 0 Then
        '    Response.Write "already"
        '    Response.End
        'End if


        intMyIndexCnt = 0

        strSql = ""
        strSql = strSql & "SELECT	COUNT(1) "
        strSql = strSql & "FROM     MS_LEC_MYINDEX WITH(NOLOCK) "
        strSql = strSql & "WHERE	MM_MEM_ID = '" & uid & "' "
        strSql = strSql & "AND		MM_APP_NO = " & APP_NO & " "
        strSql = strSql & "AND		MM_LEC_CD = " & LEC_CD & " "
	    SET RS = DBexec(strSql,"study")
	    If Not RS.EOF Then
            intMyIndexCnt = Trim(Rs(0))
	    End If
	    Call DBClose(RS)

        if intMyIndexCnt >= 30 Then
            Response.Write "max"
            Response.End
        End if

        if APP_NO <> "" Then
		    strSql = ""
		    strSql = strSql & "INSERT INTO MS_LEC_MYINDEX "
		    strSql = strSql & "( "
		    strSql = strSql & "	MM_MEM_ID "
		    strSql = strSql & "	,MM_APP_NO "
            strSql = strSql & "	,MM_CHR_CD "
		    strSql = strSql & "	,MM_LEC_CD "
		    strSql = strSql & "	,MM_TIME "
		    strSql = strSql & "	,MM_REG_DT "
		    strSql = strSql & "	,MM_UPD_DT "
		    strSql = strSql & ") "
		    strSql = strSql & "SELECT "
		    strSql = strSql & "	'"& uid &"' MM_MEM_ID "
		    strSql = strSql & "	, "& APP_NO &" MM_APP_NO "
            strSql = strSql & "	, "& CHR_CD &" MM_CHR_CD "
		    strSql = strSql & "	, "& LEC_CD &" MM_LEC_CD "
		    strSql = strSql & "	, "& bookmarkTm &" MM_TIME "
		    strSql = strSql & "	, GETDATE() MM_REG_DT "
		    strSql = strSql & "	, GETDATE() MM_UPD_DT "
            Call DBExec(strSql, "study")
            Call DBClose(DBCon)

            Response.Write "addok"
            Response.End
        End if
    Elseif mode = "upd" Then

        if bookmarkIdx = "" Then
            Response.Write "no"
            Response.End
        End if

		strSql = ""
		strSql = strSql & "UPDATE   MS_LEC_MYINDEX  SET MM_TEXT = '" & bookmarkTxt & "' "
        strSql = strSql & "WHERE    MM_MEM_ID = '" & uid & "' "
        strSql = strSql & "AND		MM_APP_NO = " & APP_NO
        strSql = strSql & "AND		MM_LEC_CD = " & LEC_CD
        strSql = strSql & "AND		MM_IDX = " & bookmarkIdx
	    Call DBExec(strSql, "study")
        Call DBClose(DBCon)

        Response.Write "delok"
        Response.End

    Elseif mode = "del" Then

        if bookmarkIdx = "" Then
            Response.Write "no"
            Response.End
        End if

		strSql = ""
		strSql = strSql & "DELETE   MS_LEC_MYINDEX "
        strSql = strSql & "WHERE    MM_MEM_ID = '" & uid & "' "
        strSql = strSql & "AND		MM_APP_NO = " & APP_NO
        strSql = strSql & "AND		MM_LEC_CD = " & LEC_CD
        strSql = strSql & "AND		MM_IDX = " & bookmarkIdx
	    Call DBExec(strSql, "study")
        Call DBClose(DBCon)

        Response.Write "delok"
        Response.End

    End if
%>