<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%
Response.AddHeader "Cache-Control", "no-cache"
Response.AddHeader "Expires", "0"
Response.AddHeader "Pragma", "no-cache"
Response.ContentType = "text/html; charset=utf-8"
%>
<%
	'재생 콜백 URL 테스트 by 9
%>
<!-- #include virtual = "/common/inc/RSexec.asp" -->
<!-- #include virtual = "/common/inc/VarDef.asp"-->
<!-- #include virtual = "/common/inc/FunDef.asp"-->

<!-- #include virtual="/Player/kollus/common/lib/webToken2.asp" -->
<%
Dim kind, client_user_id, player_id, device_name, media_content_key

customUserKey = "f30ac0b6554fb56a708909528e19521af82cc9e5252b7fa893d47376f6b6f47d"
serviceAccountKey = "megastudy-test"
Response.AddHeader "X-Kollus-UserKey",customUserKey

'POST 방식 -----------------------------------------
str = ""
For Each item In REQUEST.FORM
	For i=1 To REQUEST.FORM(item).Count
		str =  str & "" & item & " : " & REQUEST.FORM(item)(i) & "&"
	Next
Next

strSql = ""
strSql = strSql & "INSERT INTO MEGAMAS.DBO.TMP_REVIEW_20170930 (RDATA, REG_DT) "
strSql = strSql & "SELECT 'ST_Params:" & str & "', GETDATE() "
call DBExec(strSql,"bbs") : call DBClose(DBCon)

kind = request.form("kind")
client_user_id= request.form("client_user_id")
player_id = request.form("client_user_id")
device_name = request.form("device_name")
media_content_key= request.form("media_content_key")
Set results = New JSONobject	'전체 결과 저장

Set result = New JSONobject
IF kind = "1" THEN	' kind : 1 다운로드 요청 시
	result.add "expiration_date", DateDiff("s", "1970-01-01 00:00:00", "2017-12-30 00:00:00")	' 만료될 시간의 unixtime stamp 지정
	result.add "result", 1	'1 (정상)

ELSEIF kind = "3" THEN	' kind : 3 다운로드 컨텐츠 재생 시
	result.add "content_expired", 0
	result.add "result", 1
END IF
results.add "data", result


jwt = createWebtoken2(serviceAccountKey,results)

'strSql = ""
'strSql = strSql & "INSERT INTO MEGAMAS.DBO.TMP_REVIEW_20170930(RDATA, REG_DT) "
'strSql = strSql & "SELECT 'ST_jwt:" & jwt & "', GETDATE() "
'call DBExec(strSql,"bbs") : call DBClose(DBCon)

'Error ---------------------------------------------------
'Response.Write isObject(results)
'Response.write "<hr/>"
'Response.Write jsonObj.write
If Err.Number <> 0 then  
	strSql = ""
	strSql = strSql & "INSERT INTO MEGAMAS.DBO.TMP_REVIEW_20170930 (RDATA, REG_DT) "
	strSql = strSql & "SELECT 'ST_error5:" & kind & "', GETDATE() "
	call DBExec(strSql,"bbs") : call DBClose(DBCon)
End If
'---------------------------------------------------------
Response.write jwt
%>