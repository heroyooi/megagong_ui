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

    Dim kind, client_user_id, player_id, device_name, media_content_key

    customUserKey = "3396e05bbfdb1c8ae1c6f0d70172e5a3a55a6604cd6dfc6f8356b12b54054fdb"
    serviceAccountKey = "megastudyedu"
    Response.AddHeader "X-Kollus-UserKey", customUserKey

    kind = fncRequest("kind")
    client_user_id= fncRequest("client_user_id")
    player_id = fncRequest("player_id")
    device_name = fncRequest("device_name")
    media_content_key= fncRequest("media_content_key")

    '사용자변수
    uservalues = fncRequest("uservalues")
    uservalues = Replace(uservalues,"""""","""")
    if uservalues <> "" Then
        set uservalues = JSON.parse(join(array(uservalues)))
        PlayerKbn = uservalues.get("uservalue0")
        PlayerApp = uservalues.get("uservalue1")
        PlayerLoc = uservalues.get("uservalue2")
        APP_NO = uservalues.get("uservalue3")
        CHR_CD = uservalues.get("uservalue4")
        LEC_CD = uservalues.get("uservalue5")
        StartTm = uservalues.get("uservalue6")
        EndTm = uservalues.get("uservalue7")
    End if

    'POST 방식 -----------------------------------------
    'str = ""
    'For Each item In REQUEST.FORM
    '    For i=1 To REQUEST.FORM(item).Count
    '        str =  str & "" & item & "=" & REQUEST.FORM(item)(i) & "&"
    '    Next
    'Next
    '
    'if str = "" Then
    '    str = Request.ServerVariables("QUERY_STRING")
    'End if
    '
    'strSql = ""
    'strSql = strSql & "INSERT INTO MT_KOLLUS_TEMP(KT_DEVICE, KT_STR) "
    'strSql = strSql & "SELECT 'D', '" & str & "' "
    'call DBExec(strSql,"tran")
    'call DBClose(DBCon)

    adminCnt = 0
    if client_user_id <> "" Then
	    strSql = ""
	    strSql = strSql & "SELECT   COUNT(1) "
	    strSql = strSql & "FROM     MS_MEM_MAS WITH(NOLOCK) "
	    strSql = strSql & "WHERE    MM_MEM_TYPE = 'E' "
        strSql = strSql & "AND      MM_ID = '" & client_user_id & "' "
	    Set RS = DBexec(strSql,"study")
	    If Not Rs.Eof Then
		    adminCnt = Rs(0)
	    End If
	    Call DBClose(RS)
    End if

    Set results = New JSONobject	'전체 결과 저장

    Set result = New JSONobject

    Set section = New JSONobject

    IF kind = "1" THEN	' kind : 1 다운로드 요청 시
	    result.add "expiration_date", DateDiff("s", "1970-01-01 09:00:00", DateAdd("n", 1, Now()))	' 만료될 시간의 unixtime stamp 지정
	    result.add "result", 1	'1 (정상)
        
        result.add "cpcheck ", 0'1 (사용)

        if StartTm <> "" And EndTm <> "" Then
            section.add "start_time", CLng(StartTm)
            section.add "end_time", CLng(EndTm)
    
            result.add "play_section", section
        End if

        if adminCnt > 0 Then
            result.add "cpcheck", 0
            result.add "processblock", 0
        End if

    ELSEIF kind = "3" THEN	' kind : 3 다운로드 컨텐츠 재생 시
	    result.add "content_expired", 0
	    result.add "result", 1
    END IF
    results.add "data", result

    jwt = JWTEncodeCallback(serviceAccountKey, results)

    Response.write jwt
%>