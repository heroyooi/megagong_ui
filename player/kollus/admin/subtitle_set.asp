<!-- #include virtual = "/common/inc/RSexec.asp" -->
<!-- #include virtual = "/common/inc/VarDef.asp"-->
<!-- #include virtual = "/common/inc/FunDef.asp"-->
<%
    Response.AddHeader "Cache-Control", "no-cache"
    Response.AddHeader "Expires", "0"
    Response.AddHeader "Pragma", "no-cache"
    Response.ContentType = "text/html; charset=euc-kr"

    INS_IP  = fncRequestVariables("REMOTE_ADDR")

    Mode 	= fncRequest("Mode")
    LecCd 	= fncRequest("LecCd")
    ArrNo   = fncRequest("ArrNo")

    Subtitle= Unescape(fncRequest("Subtitle"))

    Subtitle = Replace(Subtitle,"<br>","\r\n")
    'Subtitle = Replace(Subtitle,"<br>","\r")
    Subtitle = Replace(Subtitle,"<shp>","#")
    Subtitle = Replace(Subtitle,"<and>","&")
    Subtitle = Replace(Subtitle,"<at>","@")
    Subtitle = Replace(Subtitle,"<plus>","+")

    vtt= Unescape(Re_sqlFilter(fncRequest("vtt")))

	'자막 정보 가져오기 
	strSql = "SELECT * FROM MS_LEC_SCRIPT with(nolock) WHERE LS_LEC_CD='"& LecCd &"' "
	SET RS = DBexec(strSql,"study")
	IF Not RS.EOF THEN
	   LEC_SCRIPT = DB_TO_STR(TRIM(RS("LS_LEC_SCRIPT")))
	END IF

    LastSubTitle = ""

    if Mode = "ins" then

        if LEC_SCRIPT =  "" then
            LastSubTitle = Subtitle
        else
            LastSubTitle = LEC_SCRIPT & Subtitle
        end if

        LastSubTitle = LastSubTitle & ";"

    elseif Mode = "upd" then

        arrScript  = split(LEC_SCRIPT,";")

        if IsArray(arrScript) then

            '순서대로 배열처리
            arrTempCnt = Ubound(arrScript,1) - 1

            For x = 0 To arrTempCnt - 1
                For y = (x+1) To arrTempCnt
                    arrPreTime = split(arrScript(x),",")
                    arrNextTime = split(arrScript(y),",")
                    if clng(arrPreTime(1)) > clng(arrNextTime(1)) then
                        TempRowData = arrScript(x)
                        arrScript(x) = arrScript(y)
                        arrScript(y) = TempRowData
                    end if
                Next
            Next

            if (ubound(arrScript,1) - 1) = 0 then
                LastSubTitle = Subtitle & ";"
            else
                for i = 0 to ubound(arrScript,1) - 1
                    if clng(i) = clng(ArrNo) then
                        LastSubTitle = LastSubTitle & Subtitle
                    else
                        LastSubTitle = LastSubTitle & arrScript(i)
                    end if

                    LastSubTitle = LastSubTitle & ";"
                next
            end if
        end if

    elseif Mode = "del" then

        arrScript  = split(LEC_SCRIPT,";")

        if IsArray(arrScript) then

            '순서대로 배열처리
            arrTempCnt = Ubound(arrScript,1) - 1

            For x = 0 To arrTempCnt - 1
                For y = (x+1) To arrTempCnt
                    arrPreTime = split(arrScript(x),",")
                    arrNextTime = split(arrScript(y),",")
                    if clng(arrPreTime(1)) > clng(arrNextTime(1)) then
                        TempRowData = arrScript(x)
                        arrScript(x) = arrScript(y)
                        arrScript(y) = TempRowData
                    end if
                Next
            Next

            if (ubound(arrScript,1) - 1) = 0 then
                LastSubTitle = ""
            else
                for i = 0 to ubound(arrScript,1) - 1
                    if clng(i) <> clng(ArrNo) then
                        LastSubTitle = LastSubTitle & arrScript(i)
                        LastSubTitle = LastSubTitle & ";"
                    end if
                next
            end if
        end if
            
    end if

    strSql = ""
    strSql = strSql & "DELETE MS_LEC_SCRIPT WHERE LS_LEC_CD='"& LecCd &"'; "
    if LastSubTitle <> "" then   '자막이 잇으면 
	strSql = strSql & "INSERT MS_LEC_SCRIPT (LS_LEC_CD,LS_LEC_SCRIPT,LS_INS_IP,LS_AQUA_YN,LS_INTRO_SEC) VALUES "
	strSql = strSql & "('"&LecCd&"','"&LastSubTitle&"','"&INS_IP&"','Y',0); "
    end if
	Call DBExec(strSql,"study")
	DBClose(DBCon)

    Response.Write mode
%>
