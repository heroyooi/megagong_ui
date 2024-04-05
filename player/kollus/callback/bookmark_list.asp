<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%
Response.AddHeader "Cache-Control", "no-cache"
Response.AddHeader "Expires", "0"
Response.AddHeader "Pragma", "no-cache"
Response.ContentType = "text/html; charset=utf-8"
%>
<!-- #include virtual = "/common/inc/RSexec.asp" -->
<!-- #include virtual = "/common/inc/VarDef.asp"-->
<!-- #include virtual = "/common/inc/FunDef.asp"-->
<%
    On Error Resume Next

    media_content_key = fncRequest("media_content_key")
    client_user_id = fncRequest("client_user_id")

    PlayerKbn = fncRequest("PlayerKbn")
    PlayerApp = fncRequest("PlayerApp")
    PlayerLoc = fncRequest("PlayerLoc")
    APP_NO = fncRequest("APP_NO")
    CHR_CD = fncRequest("CHR_CD")
    LEC_CD = fncRequest("LEC_CD")

    if client_user_id <> "" Then
        strSql = ""
        strSql = strSql & "SELECT	MM_IDX, MM_TIME,ISNULL(MM_TEXT,''), DATEDIFF(SECOND,'1970-01-01 09:00:00', MM_REG_DT) "
        strSql = strSql & "FROM     MS_LEC_MYINDEX WITH(NOLOCK) "
        strSql = strSql & "WHERE	MM_MEM_ID = '" & client_user_id & "' "
        strSql = strSql & "AND		MM_APP_NO = " & APP_NO & " "
        strSql = strSql & "AND		MM_LEC_CD = " & LEC_CD & " "
        strSql = strSql & "ORDER BY MM_TIME, MM_IDX "
	    SET RS = DBexec(strSql,"study")
	    If Not RS.EOF Then
            arrMyIndexList  = Rs.GetRows()
	    End If
	    Call DBClose(RS)

    End if

    if isArray(arrMyIndexList) Then
        Response.Write "{"
        Response.Write "    ""error"" : 0, "
        Response.Write "    ""result"" : { "
        Response.Write "    ""bookmark_labels"" : [ "
        Response.Write "    ""Bookmark"", "
        Response.Write "    ""Index"""
        Response.Write "    ] "
        if error = 0 Then
                Response.Write ", "
                Response.Write "    ""bookmark_positions"" : [ "
                For i = 0 To Ubound(arrMyIndexList, 2)
                    if i > 0 Then Response.Write ", "
                    Response.Write "        { "
                    Response.Write "            ""position"" : " & arrMyIndexList(1, i) & ", "
                    Response.Write "            ""value"" : """ & arrMyIndexList(2, i) & """, "
                    Response.Write "            ""kind"" : 0, "
                    Response.Write "            ""label"" : """", "
                    Response.Write "            ""localtime"" : " & arrMyIndexList(3, i) & " "
                    Response.Write "        } "
                Next
                Response.Write "    ] "
            Response.Write "} "
        End if
        Response.Write "}"
    Else
        Response.write "{""error"": 0,""result"": {""bookmark_labels"": [""Bookmark""],""bookmark_positions"": []}}"
    End if
%>
