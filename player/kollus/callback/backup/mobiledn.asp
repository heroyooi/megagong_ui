<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%
Response.AddHeader "Cache-Control", "no-cache"
Response.AddHeader "Expires", "0"
Response.AddHeader "Pragma", "no-cache"
Response.ContentType = "text/html; charset=utf-8"
%>
<%
	'모바일 다운로드 콜백 테스트  by 9
%>
<!-- #include virtual = "/common/inc/RSexec.asp" -->
<!-- #include virtual = "/common/inc/VarDef.asp"-->
<!-- #include virtual = "/common/inc/FunDef.asp"-->

<!-- #include virtual="/Player/kollus/common/lib/webToken2.asp" -->
<%
Dim kind, client_user_id, player_id, device_name, media_content_key

'customUserKey = "f30ac0b6554fb56a708909528e19521af82cc9e5252b7fa893d47376f6b6f47d"
'serviceAccountKey = "megastudy-test"
securityKey = "megastudyedu"
customKey = "3396e05bbfdb1c8ae1c6f0d70172e5a3a55a6604cd6dfc6f8356b12b54054fdb"
Response.AddHeader "X-Kollus-UserKey",customUserKey

'POST 방식 -----------------------------------------
str = ""
For Each item In REQUEST.FORM
	For i=1 To REQUEST.FORM(item).Count
		If REQUEST.FORM(item)(i) <> "" Then hola = REQUEST.FORM(item)(i)

		str =  str & "" & item & " : " & REQUEST.FORM(item)(i) & "&"
	Next
Next

strSql = ""
strSql = strSql & "INSERT INTO MEGAMAS.DBO.TMP_REVIEW_20171231 (RDATA, REG_DT) "
strSql = strSql & "SELECT 'DN_Params:" & str & "', GETDATE() "
call DBExec(strSql,"bbs") : call DBClose(DBCon)


'strSql = ""
'strSql = strSql & "INSERT INTO MEGAMAS.DBO.TMP_REVIEW_20171231 (RDATA, REG_DT) "
'strSql = strSql & "SELECT 'DN_hola:" & hola & "', GETDATE() "
'call DBExec(strSql,"bbs") : call DBClose(DBCon)


' reqItems = request.form("items")
reqItems = request.form("items")
	
Set arr = New JSONarray	'전체 결과 저장
Set items = New JSONobject.parse(reqItems)
cnt = items.Length

For i = 0 To items.Length -1
	Set row = items(i)
	kind = row("kind")
	client_user_id = row("client_user_id")
	player_id = row("player_id")
	device_name = row("device_name")
	media_content_key = row("media_content_key")
	start_at = row("start_at")

	session_key = row("session_key")


' 구 버전 Spec을 위한 예외 처리
	IF is_new THEN
		Set uservalues = row("uservalues")
	ELSE
		Set uservalues = New JSONobject.parse(row("uservalues"))
	END If
	
	Set result = New JSONobject	'개별 처리 결과 저장
	IF kind = "1" THEN	' kind : 1 다운로드 요청 시
		result.add "kind", 1
		result.add "media_content_key", media_content_key
		result.add "expiration_date", DateDiff("s", "1970-01-01 00:00:00", "2017-12-30 00:00:00")	' 만료될 시간의 unixtime stamp 지정
		result.add "result", 1	'1 (정상)
		result.add "message", "hi~ i'm a boy"
	ELSEIF kind = "2" THEN	' kind : 2 다운로드 완료 시
		result.add "kind", 2
		result.add "media_content_key", media_content_key
		result.add "content_delete", 0	'0 (삭제하지 않음), 1 (다운로드 받은 파일 삭제) 다운로드된 컨텐츠를 요청에 의해 삭제하는 옵션입니다.
		result.add "result", 1	'1 (정상)
	ELSEIF kind = "3" THEN	' kind : 3 다운로드 컨텐츠 재생 시
		result.add "kind", 3
		result.add "media_content_key", media_content_key
		result.add "start_at", start_at		'Request에 포함된 start_at
		result.add "content_expired", 0	'0 (재생가능)
		result.add "content_delete", 0	'0 (삭제하지 않음), 1 (다운로드 받은 파일 삭제) 다운로드된 컨텐츠를 요청에 의해 삭제하는 옵션입니다.
		result.add "content_expire_reset", 1		'1 (expired된 콘텐츠 권한 Reset)
		'result.add "expiration_date", DateDiff("s", "1970-01-01 00:00:00", "2017-09-30 00:00:00")	' 만료될 시간의 unixtime stamp 지정
		result.add "expiration_date", DateDiff("s", "1970-01-01 09:00:00", DateAdd("H",1,Now()))	' 만료될 시간의 unixtime stamp 지정
		result.add "result", 1	'1 (정상)
		result.add "session_key",session_key 
	END IF
Next
Set results = New JSONobject
arr.push result
results.add "data", arr

jwt = createWebtoken2(serviceAccountKey,results)

'strSql = ""
'strSql = strSql & "INSERT INTO MEGAMAS.DBO.TMP_REVIEW_20171231(RDATA, REG_DT) "
'strSql = strSql & "SELECT 'DN_jwt:" & jwt & "', GETDATE() "
'call DBExec(strSql,"bbs") : call DBClose(DBCon)

'Error ---------------------------------------------------
'Response.Write isObject(results)
'Response.write "<hr/>"
'Response.Write jsonObj.write
If Err.Number <> 0 then  
	strSql = ""
	strSql = strSql & "INSERT INTO MEGAMAS.DBO.TMP_REVIEW_20171231 (RDATA, REG_DT) "
	strSql = strSql & "SELECT 'DN_error5:" & kind & "', GETDATE() "
	call DBExec(strSql,"bbs") : call DBClose(DBCon)
End If
'---------------------------------------------------------
Response.write jwt
%>