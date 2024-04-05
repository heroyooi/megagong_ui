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
    bookmarkNo = fncRequest("bookmarkNo")
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

        if APP_NO <> "" Then
            bmPst = 0
            bmMode = "ins"

            strSql = ""
            strSql = strSql & "SELECT	BM_MARK_SEQ, "
            strSql = strSql & "         CASE WHEN ISNULL(BM_TM0,0) = 0 THEN 0 "
            strSql = strSql & "         ELSE CASE WHEN ISNULL(BM_TM1,0) = 0 THEN 1 "
            strSql = strSql & "         ELSE CASE WHEN ISNULL(BM_TM2,0) = 0 THEN 2 "
            strSql = strSql & "         ELSE CASE WHEN ISNULL(BM_TM3,0) = 0 THEN 3 "
            strSql = strSql & "         ELSE CASE WHEN ISNULL(BM_TM4,0) = 0 THEN 4 "
            strSql = strSql & "         ELSE CASE WHEN ISNULL(BM_TM5,0) = 0 THEN 5 "
            strSql = strSql & "         ELSE CASE WHEN ISNULL(BM_TM6,0) = 0 THEN 6 "
            strSql = strSql & "         ELSE CASE WHEN ISNULL(BM_TM7,0) = 0 THEN 7 "
            strSql = strSql & "         ELSE CASE WHEN ISNULL(BM_TM8,0) = 0 THEN 8 "
            strSql = strSql & "         ELSE 9 END END END END END END END END END "
            strSql = strSql & "FROM     MS_BOOK_MARK WITH(NOLOCK) "
            strSql = strSql & "WHERE    BM_MEM_ID = '" & uid & "' "
            strSql = strSql & "AND		BM_APP_NO = " & APP_NO
            strSql = strSql & "AND		BM_LEC_CD = " & LEC_CD
		    SET RS = DBexec(strSql,"study")
		    If Not RS.EOF Then
                bmSeq = trim(Rs(0))
			    bmPst = trim(Rs(1))
                bmMode = "upd"
		    End If
		    Call DBClose(RS)

            if bmMode = "ins" Then
		        strSql = ""
		        strSql = strSql & "INSERT INTO MS_BOOK_MARK "
		        strSql = strSql & "( "
		        strSql = strSql & "	BM_MEM_ID "
		        strSql = strSql & "	,BM_APP_NO "
		        strSql = strSql & "	,BM_LEC_CD "
		        strSql = strSql & "	,BM_TM0 "
		        strSql = strSql & "	,BM_REG_DT "
		        strSql = strSql & "	,BM_UPD_DT "
		        strSql = strSql & "	,BM_UPD_CNT "
		        strSql = strSql & ") "
		        strSql = strSql & "SELECT "
		        strSql = strSql & "	'"& uid &"' BM_MEM_ID "
		        strSql = strSql & "	, "& APP_NO &" BM_APP_NO "
		        strSql = strSql & "	, "& LEC_CD &" BM_LEC_CD "
		        strSql = strSql & "	, "& CLng(bookmarkTm/1000) &" BM_TM0 "
		        strSql = strSql & "	, GETDATE() BM_REG_DT "
		        strSql = strSql & "	, GETDATE() BM_UPD_DT "
		        strSql = strSql & "	, 0 BM_UPD_CNT "
                Call DBExec(strSql, "study")
            Else
                if bmSeq <> "" Then
		            strSql = ""
		            strSql = strSql & "UPDATE MS_BOOK_MARK SET BM_TM" & bmPst & " = " & CLng(bookmarkTm/1000) & ", BM_DESC" & bmPst & " = '' WHERE BM_MARK_SEQ = " & bmSeq
	                Call DBExec(strSql, "study")
                End if
            End if
            Call DBClose(DBCon)

            Response.Write "addok"
            Response.End
        End if
    Elseif mode = "upd" Then

        if bookmarkNo = "" Then
            Response.Write "no"
            Response.End
        End if

		strSql = ""
		strSql = strSql & "UPDATE   MS_BOOK_MARK SET BM_DESC" & bookmarkNo & " = '" & bookmarkTxt & "' "
        strSql = strSql & "FROM     MS_BOOK_MARK WITH(NOLOCK) "
        strSql = strSql & "WHERE    BM_MEM_ID = '" & uid & "' "
        strSql = strSql & "AND		BM_APP_NO = " & APP_NO
        strSql = strSql & "AND		BM_LEC_CD = " & LEC_CD
	    Call DBExec(strSql, "study")

        Response.Write "delok"
        Response.End

    Elseif mode = "del" Then

        if bookmarkNo = "" Then
            Response.Write "no"
            Response.End
        End if

		strSql = ""
		strSql = strSql & "UPDATE   MS_BOOK_MARK SET BM_TM" & bookmarkNo & " = 0, BM_DESC" & bookmarkNo & " = '' "
        strSql = strSql & "FROM     MS_BOOK_MARK WITH(NOLOCK) "
        strSql = strSql & "WHERE    BM_MEM_ID = '" & uid & "' "
        strSql = strSql & "AND		BM_APP_NO = " & APP_NO
        strSql = strSql & "AND		BM_LEC_CD = " & LEC_CD
	    Call DBExec(strSql, "study")

        Response.Write "delok"
        Response.End

    End if
%>