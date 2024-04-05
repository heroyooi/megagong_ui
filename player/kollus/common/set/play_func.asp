<%
    Function JWTEncode(ckey, skey, payload)
        '헤더
        Dim JWTHead
        Set JWTHead = jsObject()
        JWTHead("typ") = "JWT"
        JWTHead("alg") = "HS256"

        Dim sha256
        Set sha256 = GetObject( "script:" & Server.MapPath("/Player/kollus/common/jwt/sha256.wsc") )
        sha256.hexcase = 0

        tmp = Base64encode(toJSON(JWTHead)) + "." + Base64encode(toJSON(Payload)) 

        Dim result
        result = sha256.b64_hmac_sha256(skey, tmp)
        result = REPLACE(result, "=", "")
        result = REPLACE(result, "/", "_")
        result = REPLACE(result, "+", "-")

        JWTEncode = tmp & "." & result
    End Function

    Function JWTEncodeCallback(skey, results)
        Set JWTHead = New JSONobject	
        JWTHead.add "typ", "JWT"
        JWTHead.add "alg", "HS256"

        set JSON = New JSONobject
        tmp = Base64encode(JWTHead.Serialize()) + "." + Base64encode(results.Serialize())

        Dim sha256
        Set sha256 = GetObject( "script:" & Server.MapPath("/Player/kollus/common/jwt/sha256.wsc") )
        sha256.hexcase = 0
        Dim Return : result = ""
        
        result = sha256.b64_hmac_sha256(skey, tmp)
        result = REPLACE(result, "=", "")
        result = REPLACE(result, "/", "_")
        result = REPLACE(result, "+", "-")

        JWTEncodeCallback = tmp + "." + result
    End Function

    Function fncHHMMSS(tm)
        if tm <> "" Then tm = CLng(tm)
        if tm > 0 Then
		    hh = int(tm/3600)
		    mm = int((tm-(hh*3600))/60)
		    ss = int((tm-(hh*3600)-(mm*60)))

            vh = "" : vm = "" : vs = ""
            
            if hh > 0 Then vh = CStr(hh) & "시간 "
            if mm > 0 Then vm = CStr(mm) & "분 "
            if ss > 0 Then vs = CStr(ss) & "초"

            fncHHMMSS = vh & vm & vs
        End if
    End function

    Function fncHHMMSS_NOTXT(tm)
        if tm <> "" Then tm = CLng(tm)
        if tm > 0 Then
		    hh = int(tm/3600)
		    mm = int((tm-(hh*3600))/60)
		    ss = int((tm-(hh*3600)-(mm*60)))

            vh = "" : vm = "" : vs = ""
            
            if hh < 10 Then
                vh = "0" & CStr(hh)
            Else
                vh = CStr(hh)
            End if
            if mm < 10 Then
                vm = "0" & CStr(mm)
            Else
                vm = CStr(mm)
            End if
            if ss < 10 Then
                vs = "0" & CStr(ss)
            Else
                vs = CStr(ss)
            End if

            fncHHMMSS_NOTXT = vh & ":" & vm & ":" & vs
        Else
            fncHHMMSS_NOTXT = "00:00:00"
        End if
    End function

    Function MAKE_TIME(tmp_sec)
	    if tmp_sec<>"" then
		    tmp_sec = REPLACE(tmp_sec,";",":")
		    tmp_sec = REPLACE(tmp_sec,"-",":")
		    ARR_TIME =  SPLIT(TMP_SEC,":")
		    if ARR_TIME(0)<>"" then      cur_time = clng(ARR_TIME(0)) * 3600
		    if ubound(ARR_TIME)>=1 then
			    if ARR_TIME(1)<>"" then      cur_min = clng(ARR_TIME(1)) * 60
		    end if
		    if ubound(ARR_TIME)>=2 then
			    if ARR_TIME(2)<>"" then      cur_sec = clng(ARR_TIME(2))
		    end if
		    MAKE_TIME = cur_time + cur_min + cur_sec
	    else
		    MAKE_TIME=""
	    end if		
    End Function

    '태그제거 함수
	Function StripTags(htmlDoc)
		dim rex
		set rex		= new Regexp
		rex.Pattern	= "<[^>]+>"
		rex.Global	= true
		StripTags	= rex.Replace(htmlDoc,"")
	End Function


    Function fncParamAdd(par,tgt,val)
        if val <> "" Then
            if inStr(par,tgt & "=") > 0 Then
                if inStr(par,tgt & "=" & val) = 0 Then
                    par = Replace(par,tgt & "=",tgt & "=" & val)
                End if
            Else
                par = par & "&" & tgt & "=" & val
            End if
        End if
        fncParamAdd = par
    End Function
%>