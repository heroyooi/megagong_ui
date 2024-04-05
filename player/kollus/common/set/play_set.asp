<%
    if uid <> "" And PlayerKbn = "A" Then
        clientUserId = uid
    Else
	    Randomize
	    clientUserId = "no_" & right(cstr(clng(rnd * 900000)),5) & REPLACE(RIGHT(NOW(),5),":","")
    End if

    if mckey <> "" Then

	    '--------------------------------------------------------------------------------------
	    'SmartLearingFlg = fncGetSmartLearningFlg	'스마트러닝앱 여부 체크 (Y:스마트러닝)

	    If isRealserver() Then
		    l_LHF = "R"
	    Else
		    l_LHF = "D"
	    End If

        if PlayerType = "" Then
            if fncChkMobile() = "Y" Then
                PlayerType = "M"
            Else
                PlayerType = "P"
            End if
        End if

        '사용자 설정
        uservalue = ""
        uservalue = uservalue & "&uservalue0=" & APP_NO
        uservalue = uservalue & "&uservalue1=" & l_LHF
        uservalue = uservalue & "&uservalue2=" & CHR_CD

        uservalue = uservalue & "&uservalue3=" & LEC_CD
        uservalue = uservalue & "&uservalue4=" & PlayerType
        uservalue = uservalue & "&uservalue5=0"
        uservalue = uservalue & "&uservalue6=" & APP_SEQ

        '플레이어 강제지정
        force_exclusive_player = "0"
        if PlayerApp = "Y" Then
            force_exclusive_player = "1"
        End if

        securityKey = "megagong"
        customKey = "2e5f115eaab9d622d6414b83a6140e6ed3b81ed31f602cb1f2accba6529ca3c0"

        if mcpf = "" Then
            if vw = "16" Then
                mcpf = securityKey & "-pc1-high"
            Else
                mcpf = securityKey & "-mobile1-normal"
            End if
        End if

        Dim Payload
        Set Payload = jsObject()
        Payload("expt") = DateDiff("s", "1970-01-01 09:00:00", DateAdd("s", 120, Now()))
        Payload("cuid") = clientUserId

        '옵션/////////////////////////
        ReDim tmpOpt(0)
        intro = False
        mckey1 = mckey

        '인트로 옵션 추가 시 조정
        if irkey <> "" Then
            ReDim tmpOpt(1)
            intro = True
            mckey1 = irkey : mckey2 = mckey
        End if
        '인트로 옵션 추가 시 조정

        Set opt = jsObject()
        opt("mckey") = mckey1
        opt("intr") = intro
        opt("mcpf") = mcpf
        Set tmpOpt(0) = opt

        if intro = True Then
            Set opt2 = jsObject()
            opt2("mckey") = mckey2
            Set tmpOpt(1) = opt2
        End if

        Payload("mc") = tmpOpt
        '옵션/////////////////////////

        encoded_token = JWTEncode(customKey, securityKey, Payload)
    Else
        encoded_token = ""
    End if
%>