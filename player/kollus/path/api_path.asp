<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%
Response.AddHeader "Cache-Control", "no-cache"
Response.AddHeader "Expires", "0"
Response.AddHeader "Pragma", "no-cache"
Response.ContentType = "text/html; charset=euc-kr"
%>
<!-- #include virtual = "/common/inc/RSExec.asp" -->
<!-- #include virtual = "/common/inc/FunDef.asp" -->
<!-- #include virtual = "/common/inc/VarDef.asp" -->
<!-- #include virtual = "/player/kollus/common/inc/return_json.asp" -->
<% 
	On Error Resume Next

	'Request -------------------------------------------------
	app_no = fncRequest("app_no")
	app_seq = fncRequest("app_seq")
	chr_cd = fncRequest("chr_cd")
	lec_cd = fncRequest("lec_cd")
	PlayerKbn = fncRequest("playerKbn")
    PlayerType = fncRequest("PlayerType")
	vod_kbn = fncRequest("vod_kbn")
    
    seq = fncRequest("seq")
    dng_idx = fncRequest("idx")
    dng_no = fncRequest("no")
    tec_cd = fncRequest("tec_cd")

    'playerid = fncRequest("playerid")
    MegaAdmin = "N"
    MegaHelp = "N"

    uid = cook_id

    strMobileType = fncMobileType()

     ' 예외사항 처리 ----------------------------------------------------------------------
    If PlayerKbn = "A" Then '유료플레이어
    End If
    '-------------------------------------------------------------------------------------

%>
<!-- #include virtual = "/Player/kollus/common/set/play_func.asp" -->
<!-- #include virtual = "/Player/kollus/common/jwt/base64.asp" -->
<!-- #include virtual = "/Player/kollus/common/jwt/JSON_2.0.4.asp" -->
<!-- #include virtual = "/Player/kollus/common/jwt/JSON_UTIL_0.1.1.asp" -->
<!-- #include virtual = "/Player/kollus/common/set/play_path.asp" -->
<!-- #include virtual = "/Player/kollus/common/set/play_set.asp" -->
<%
    if encoded_token <> "" Then
        intent_path = "http://v.kr.kollus.com/si?jwt=" & encoded_token & "&custom_key=" & customKey & "&a=1&t=" & intStartSec & uservalue

	    rstCd = "0000"
	    rstMsg = "Success"
    Else
		'End *******************************************************************************************************
		Response.Write fncCMRetMsgJSON("1016","","")
		Response.End
		'***********************************************************************************************************
    End if

	'----------------------------------------------------------------------------
	If Err.Number <> 0 then  
		'End *******************************************************************************************************
		Response.Write fncCMRetMsgJSON("2100","","")
		Response.End
		'***********************************************************************************************************
	End If

	strA = ""
	strA = strA & "{"
	strA = strA & "		""i_path"":"""&intent_path&""", "
	strA = strA & "		""os"":"""&strMobileType&""" "
	strA = strA & "}"

	jsonData = ""
	If strA <> "" Then jsonData = jsonData & ",""aData"":["&strA&"]"

	'End *******************************************************************************************************
	Response.Write fncCMRetMsgJSON("0000","",jsonData)
	Response.End
	'************************************************************************************************************
%>
