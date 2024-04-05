<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%
Response.AddHeader "Cache-Control", "no-cache"
Response.AddHeader "Expires", "0"
Response.AddHeader "Pragma", "no-cache"
Response.ContentType = "text/html; charset=utf-8"
%>
<!-- #include virtual = "/Player/kollus/common/inc/common_inc.asp" -->
<!-- #include virtual = "/Player/kollus/common/jwt/json2.asp" -->
<!-- #include virtual = "/common/inc/json_parse.asp"-->
<%
    On Error Resume Next

'bookmarks=[{"APP_NO":"21125126","CHR_CD":"40050","LEC_CD":"818799","PlayerApp":"Y","PlayerKbn":"A","PlayerLoc":"H","action":"remove","client_user_id":"bphoenix","localtime":1512534941,"media_content_key":"WfsW8fdN","position":4}]&
'bookmarks=[{"APP_NO":"21125126","CHR_CD":"40050","LEC_CD":"818799","PlayerApp":"Y","PlayerKbn":"A","PlayerLoc":"H","action":"register","client_user_id":"bphoenix","localtime":1512534937,"media_content_key":"WfsW8fdN","position":4,"value":"memo"}]&

    bookmarks = fncRequest("bookmarks")
    bookmarks = Replace(bookmarks,"""""","""")


    set ar_bookmarks = JSON.parse(join(array(bookmarks)))

    For i = 0 To ar_bookmarks.length - 1

        set b = ar_bookmarks.get(i)

        uid = b.client_user_id
        PlayerKbn = b.PlayerKbn
        PlayerApp = b.PlayerApp
        PlayerLoc = b.PlayerLoc
        APP_NO = b.APP_NO
        CHR_CD = b.CHR_CD
        LEC_CD = b.LEC_CD
    
        action = b.action
        position = b.position
        value = b.value

        if PlayerKbn = "A" Then

            if action = "remove" Then

                if uid <> "" Then

                    strSql = ""
                    strSql = strSql & "INSERT INTO MT_KOLLUS_TEMP(KT_DEVICE, KT_STR) "
                    strSql = strSql & "SELECT 'B', '" & position & "' "
                    call DBExec(strSql,"tran")
                    call DBClose(DBCon)


		            strSql = ""
		            strSql = strSql & "DELETE   MS_LEC_MYINDEX "
                    strSql = strSql & "WHERE    MM_MEM_ID = '" & uid & "' "
                    strSql = strSql & "AND		MM_APP_NO = " & APP_NO
                    strSql = strSql & "AND		MM_LEC_CD = " & LEC_CD
                    strSql = strSql & "AND		MM_TIME = " & position
	                Call DBExec(strSql, "study")
                    Call DBClose(DBCon)
                End if

            Elseif action = "register" Then

                if uid <> "" Then

		            strSql = ""
		            strSql = strSql & "DELETE   MS_LEC_MYINDEX "
                    strSql = strSql & "WHERE    MM_MEM_ID = '" & uid & "' "
                    strSql = strSql & "AND		MM_APP_NO = " & APP_NO
                    strSql = strSql & "AND		MM_LEC_CD = " & LEC_CD
                    strSql = strSql & "AND		MM_TIME = " & position
	                Call DBExec(strSql, "study")
                    Call DBClose(DBCon)
                    
                    intMyIndexCnt = 0
                    
                    strSql = ""
                    strSql = strSql & "SELECT	COUNT(1) "
                    strSql = strSql & "FROM     MS_LEC_MYINDEX WITH(NOLOCK) "
                    strSql = strSql & "WHERE	MM_MEM_ID = '" & uid & "' "
                    strSql = strSql & "AND		MM_APP_NO = " & APP_NO & " "
                    strSql = strSql & "AND		MM_LEC_CD = " & LEC_CD & " "
	                SET RS = DBexec(strSql,"study")
	                If Not RS.EOF Then
                        intMyIndexCnt = Rs(0)
	                End If
	                Call DBClose(RS)


                    
                    if intMyIndexCnt < 30 Then

		                strSql = ""
		                strSql = strSql & "INSERT INTO MS_LEC_MYINDEX "
		                strSql = strSql & "( "
		                strSql = strSql & "	MM_MEM_ID "
		                strSql = strSql & "	,MM_APP_NO "
                        strSql = strSql & "	,MM_CHR_CD "
		                strSql = strSql & "	,MM_LEC_CD "
		                strSql = strSql & "	,MM_TIME "
                        strSql = strSql & "	,MM_TEXT "
		                strSql = strSql & "	,MM_REG_DT "
		                strSql = strSql & "	,MM_UPD_DT "
		                strSql = strSql & ") "
		                strSql = strSql & "SELECT "
		                strSql = strSql & "	'"& uid &"' MM_MEM_ID "
		                strSql = strSql & "	, "& APP_NO &" MM_APP_NO "
                        strSql = strSql & "	, "& CHR_CD &" MM_CHR_CD "
		                strSql = strSql & "	, "& LEC_CD &" MM_LEC_CD "
		                strSql = strSql & "	, "& position &" MM_TIME "
                        strSql = strSql & "	, '"& value &"' MM_TEXT "
		                strSql = strSql & "	, GETDATE() MM_REG_DT "
		                strSql = strSql & "	, GETDATE() MM_UPD_DT "
                        Call DBExec(strSql, "study")
                        Call DBClose(DBCon)
                    End if
                End if

            End if

        End if
    Next

    Response.write "{""error"":0}"
%>