<%
	'' ����Ʈ ���� �ؽ�Ʈ ����
	Function dom_cd_nm(dom_cd)
		If dom_cd = "1" Then
			dom_cd_nm = "����"
		ElseIf dom_cd = "2" Then
			dom_cd_nm = "����"
		ElseIf dom_cd = "3" Then
			dom_cd_nm = "�ҹ�"
		ElseIf dom_cd = "4" or dom_cd="97" Then
			dom_cd_nm = "9/7��"
		ElseIf dom_cd = "7" Then
			dom_cd_nm = "7��"
		ElseIf dom_cd = "9" Then
			dom_cd_nm = "9��"
		ElseIf dom_cd = "5" Then
			dom_cd_nm = "������"
		End If
	End Function

	Function gfg_cd_nm(gfg_cd)
		If gfg_cd = "9" Then
			gfg_cd_nm = "9��"
		ElseIf gfg_cd = "7" Then
			gfg_cd_nm = "7��"
		ElseIf gfg_cd = "97" Then
			gfg_cd_nm = "9/7��"
		End If
	End Function

	'���¼Ӽ�
	Function fncChrClsNm(v_ccd)
		If v_ccd = "1" Then
			fncChrClsNm = "����"
		ElseIf v_ccd = "2" Then
			fncChrClsNm = "����+����"
		ElseIf v_ccd = "3" Then
			fncChrClsNm = "����+����"
		ElseIf v_ccd = "4" Then
			fncChrClsNm = "����Ǯ��"
		End If
	End Function

	' fncToDestinationHost �Լ����� ������ ��ȯ�κ� ���� ó��
	function fncToMoveHost(paramHCode)
		move_host = ""
		if paramHCode = "" then
			paramHCode = hcode
		end if
		if inStr(hostnm, "dev") > 0 Then
	        if paramHCode = "gong" Then move_host = "dev.megagong.net"
            if paramHCode = "sobang" Then move_host = "sobangdev.megagong.net"
            if paramHCode = "campus" Then move_host = "campusdev.megagong.net"
            if paramHCode = "ansung" Then move_host = "ansungdev.megagong.net"
            if paramHCode = "gongssel" Then move_host = "gongsseldev.megagong.net"
            if paramHCode = "sobangcampus" Then move_host = "sobangcampusdev.megagong.net"
			if paramHCode = "ngbr" Then move_host = "ngbrdev.megagong.net"
			if paramHCode = "army" Then move_host = "armydev.megagong.net"
        Else
	        if paramHCode = "gong" Then move_host = "www.megagong.net"
            if paramHCode = "sobang" Then move_host = "sobang.megagong.net"
            if paramHCode = "campus" Then move_host = "campus.megagong.net"
            if paramHCode = "ansung" Then move_host = "ansung.megagong.net"
            if paramHCode = "gongssel" Then move_host = "gongssel.megagong.net"
            if paramHCode = "sobangcampus" Then move_host = "sobangcampus.megagong.net"
			if paramHCode = "army" Then move_host = "army.megagong.net"
        End if

		fncToMoveHost = move_host
	end function

	' ***************************************************************************************
	' alias�� ���� ���� ��� alias ���� �� �Ķ���ͱ��� ���� �̵�
	' Parameter
	'	fHost : ������ ex) sobang, police
	' Example
	'	Response.Redirect fncToDestinationHost("police") '������������ �ƴ� ��� ������ �̵�
	' ***************************************************************************************
	Function fncToDestinationHost(dHost)
        move_host = fncToMoveHost()

		url = fncRequestVariables("PATH_INFO")
		strQueryString = fncRequestVariables("QUERY_STRING")
		param = ""
		If strQueryString <> "" Then
			' GET �� ���
			url = "http://"&move_host & url
			param = "?"&strQueryString
		Else
			' POST �� ��� GET ������� ����Ǿ� ó����,,, (�ʿ�� POST ������� �״�� ���޵ǵ��� ���� ���)
			For Each item In REQUEST.FORM
				For i_log=1 To REQUEST.FORM(item).Count
					If strFormString <> "" Then strFormString = strFormString&"&"
					strFormString =  strFormString & "" & item & "=" & REQUEST.FORM(item)(i_log)
				Next
			Next
			url = "http://"&move_host & url
			param = "?"&strFormString
		End If
		r = url & param
		fncToDestinationHost = r
	End Function

	' ***************************************************************************************
	' �ش� �������� ���ƿ��� URL
	' ***************************************************************************************
	Function fncReturnUrl()
		url = fncRequestVariables("PATH_INFO")
		strQueryString = fncRequestVariables("QUERY_STRING")

		param = ""
		If strQueryString <> "" Then
			param = "?"&strQueryString
		End If

		r = url & param
		fncReturnUrl = r
	End Function

	Function MakeDate(dt)
		rv = ""
		Select Case Len(dt)
		Case 8	' ex)19810507
			rv = Mid(dt,1,4)&"-"&Mid(dt,5,2)&"-"&Mid(dt,7,2)
		Case Else
			rv = ""
		End Select

		If IsDate(rv) = False Then
			rv = ""
		End If
		MakeDate = rv
	End Function

	Function MakeHpNo(hp)
		rv = ""

		If IsNumeric(hp) = False Then
			hp = ""
		End If

		Select Case Len(hp)
		Case 11	' 01012345678
			rv = Left(hp,3)&"-"&Mid(hp,4,4)&"-"&Right(hp,4)
		Case 10 ' 0161234567
			rv = Left(hp,3)&"-"&Mid(hp,4,3)&"-"&Right(hp,4)
		End Select

		' ��ȿ��üũ�� ���߿�
		MakeHpNo = rv
	End Function
%>
<%
   t_pageurl = lcase(request.serverVariables("URL"))
   t_server_time =  cstr(date())  +  " " +  right(100 + hour(now()),2)  +  ":" +   right(100 + minute(now()),2) + ":"   +   right(100 + second(now()),2)
   t_timestamp = year(now) & right("0" & month(now),2) & right("0" & day(now),2) & right("0" & hour(now),2) & right("0" & minute(now),2) & right("0" & second(now),2)
%>
<%
'===========================================================================
'�����		: rw
'INPUT 		: str
'��ɼ���	: response.write ���
'===========================================================================
Sub rw (str)
	'response.write str & "<br>"
	response.write ( "<PRE>" & str & "</PRE><BR>")
End Sub

'===========================================================================
'�����		: rend
'INPUT 		:
'��ɼ���	: response.end ���
'===========================================================================
Sub rend ()
	response.End
End Sub

'===========================================================================
 '''''''''''''''''''''''''' ������ �� .. formatnumber �� ǥ���ϱ�
'===========================================================================
    function f_num(fa_1,fa_2)
       re_value = 0

       if isnumeric(fa_1 ) and len(fa_1)>0 then
         re_value= formatnumber(fa_1,fa_2)
       end if

       f_num =re_value
    end function


'===========================================================================
 '''''''''''''''''''''''''' 2015�� 02�� 02��   �� ǥ�� ���ڰ�
'===========================================================================
    function f_date(f_d)
        re_value = ""
        re_value = left(f_d,4) +"�� "+ mid(f_d,6,2)+"�� "+  right(f_d,2) + "��"
        f_date = re_value
    end function


'===========================================================================
'�Լ���		: fncRequest
'INPUT 		: Request��
'��ɼ���	:
'===========================================================================
function fncRequest(varParam)
	fncRequest = Trim(sqlFilter(Request(varParam)))
end Function

'===========================================================================
'�Լ���		: fncRequestForm
'INPUT 		: Request��
'��ɼ���	:
'===========================================================================
function fncRequestForm(varParam)
	fncRequestForm = Trim(sqlFilter(Request.Form(varParam)))
end function

'===========================================================================
'�Լ���		: fncRequestNum
'INPUT 		: Request��
'��ɼ���	:
'===========================================================================
function fncRequestNum(varParam)
    if varParam<>"" then
        if IsNumeric(Request(varParam)) then
            fncRequestNum=trim(sqlFilter(Request(varParam)))
        else
            response.end
        end if
    end if
end function

'===========================================================================
'�Լ���		: fncRequestUnescape
'INPUT 		: Request��
'��ɼ���	: ajax�� �ѱ� ������ escape ó���� sqlfilter ó��
'===========================================================================
function fncRequestUnescape(varParam)
	fncRequestUnescape = Trim(sqlFilter(Unescape(Request(varParam))))
end Function

'===========================================================================
'�Լ���		: fncRequestCookie
'INPUT 		: Request��
'��ɼ���	:
'===========================================================================
function fncRequestCookie(varParam)

	select case lcase(varParam)
	    case "encval"   : cIndex = 0    '������
	    case "userid"   : cIndex = 1    '���̵�
	    case "username" : cIndex = 2    'ȸ����
	    case "mem_type" : cIndex = 3    'ȸ��Ÿ��
	    case "gong_type": cIndex = 4    '�г�����
	    case "whst"     : cIndex = 5
	    case else       : cIndex =-1    '����� ���� ��Ű
    end select

    CK_USER_INFO = sqlFilter(Request.cookies("CK_USER_INFO"))

    if cIndex >= 0 Then
        if CK_USER_INFO <> "" Then
            arrUserInfo = split(CK_USER_INFO,"|")
		    If cIndex = 2 Then
	            returnValue = unescape(arrUserInfo(cIndex))
		    ElseIf cIndex = 3 Then
                if (fncRequestVariables("REMOTE_ADDR") = "210.181.48.60") Or (Left(fncRequestVariables("REMOTE_ADDR"), 12) = "172.15.13.22") Then
                    returnValue = arrUserInfo(cIndex)
                Else
                    returnValue = Replace(arrUserInfo(cIndex), "E", "S")
                End if
            ElseIf cIndex = 1 Then
                if instr(1, fncRequestVariables("PATH_INFO"), "/member/login.asp") > 0 Or instr(1, fncRequestVariables("PATH_INFO"), "/logout_sql.asp") > 0 Or instr(1, fncRequestVariables("PATH_INFO"), "/logout.asp") > 0 Then
                    returnValue = ""
                Elseif instr(1, fncRequestVariables("PATH_INFO"), "/member/login_sql") > 0 Or instr(1, fncRequestVariables("PATH_INFO"), "/sns_login_proc.asp") > 0 Or instr(1, fncRequestVariables("PATH_INFO"), "/Player/kollus/admin/player.asp") > 0 Or instr(1, fncRequestVariables("PATH_INFO"), "/player/kollus/path/api_path") > 0 Or instr(1, fncRequestVariables("PATH_INFO"), "/app/smartlearning/user/login.asp") > 0 Or instr(1, fncRequestVariables("PATH_INFO"), "/app/smartlearning/user/auto_login.asp") > 0 Then
                    returnValue = arrUserInfo(cIndex)
                Else
 	                if Cstr(Encrypt(arrUserInfo(1))) = CStr(Trim(arrUserInfo(0))) then
                        returnValue = arrUserInfo(cIndex)
                    Else
		                Response.Redirect "/member/logout_sql.asp"
 	                end if
                End if
		    Else
	            returnValue = arrUserInfo(cIndex)
		    End If
        Else
            returnValue = ""
        End if
	Else
        returnValue = sqlFilter(Request.cookies(varParam))
    End if

   	fncRequestCookie = trim(returnValue)

end function


'===========================================================================
'�Լ���		: SetUserInfoCookie
'INPUT 		: Cookie ���� ��
'��ɼ���	: CK_USER_INFO �� ���� by ����ǥ
'===========================================================================
Function SetUserInfoCookie(byVal strName,byVal strValue)
    g_encval    = fncRequestCookie("encval")            '������
    g_userid    = fncRequestCookie("userid")            '���̵�
    g_username  = escape(fncRequestCookie("username"))  'ȸ������ espace���� UPD 20170801 CHOIJH
    g_mem_type  = fncRequestCookie("mem_type")          'ȸ��Ÿ��
    g_gong_type = fncRequestCookie("gong_type")         '�г�����
    g_whst      = fncRequestCookie("whst")

	select case lcase(strName)
	    case "encval"   : g_encval = strValue
	    case "userid"   : g_userid = strValue
	    case "username" : g_username = strValue
	    case "mem_type" : g_mem_type = strValue
	    case "gong_type": g_gong_type = strValue
	    case "whst"     : g_whst = strValue
    end select

    'CK_USER_INFO ��Ű �߰� by ����ǥ
	g_user_info = g_encval&"|"&g_userid&"|"&g_username&"|"&g_mem_type&"|"&g_gong_type&"|"&g_whst

    Call SetCookie("CK_USER_INFO",g_user_info)

End Function


'===========================================================================
'�Լ���		: fncRequestVariables
'INPUT 		: Request��
'��ɼ���	:
'===========================================================================
function fncRequestVariables(varParam)
	p = ""
	if ucase(varParam) = "REMOTE_ADDR" then        '����Ʈ ip �����ͼ���
		p = Request.ServerVariables("HTTP_CLIENT_IP")
		if p = "" then   '�ϰ͵� ������ ......
		   p = Request.ServerVariables(varParam)   'REMOTE_ADDR �ٽ� �ް�
		end if
	else
		p = Request.ServerVariables(varParam)      '������ ���� ������ �׳ɻ��
	end if
	fncRequestVariables = p
end function

'===========================================================================
'�Լ���		: Encrypt
'INPUT 		: src ==> �α��� ���̵�
'��ɼ���	: ��Ű ���� ��ȣȭ
'===========================================================================
Function Encrypt(src)
    src = Trim(src)
	sum = 0
	for ncnt=1 to len(src)
		sum = sum + (asc(mid(src,ncnt,1))+85)*(65219649+ncnt)
	next
	Encrypt = sum
End Function

'===========================================================================
'�Լ���		: SetCookie
'INPUT 		: ��Ű��, ��Ű��
'��ɼ���	: ��Ű �� ��Ʈ
'===========================================================================
Function SetCookie(sCNM, sVal)
	'if request.Servervariables("remote_addr") = "10.1.3.86" or request.Servervariables("remote_addr") = "10.1.1.1331" then
	'	Response.AddHeader "Set-Cookie", server.urlencode(sCNM)&"="&LCase(sVal)&";SameSite=None;Domain=megagong.net;Path=/"
	'	'Response.Cookies(sCNM) = LCase(sVal)
	'	'Response.Cookies(sCNM).Path = "/"
	'	'Response.Cookies(sCNM).Domain = "megagong.net"
	'else
		Response.Cookies(sCNM) = LCase(sVal)
		Response.Cookies(sCNM).Path = "/"
		Response.Cookies(sCNM).Domain = "megagong.net"
	'end if


End Function

'===========================================================================
'�Լ���		: SetCookie
'INPUT 		: ��Ű��, ��Ű��
'��ɼ���	: �Ⱓ ������ �ִ� ��Ű �� ��Ʈ
'===========================================================================
function SetExpireCookie(sCNM, sVal,sExpire)
	Call SetCookie(sCNM, sVal)
	if sExpire <> "" then
	    Response.Cookies(sCNM).Expires = date+sExpire
	else
        Response.Cookies(sCNM).Expires = date+100
	end if
end Function

'===========================================================================
'�Լ���		: SetMultiCookie
'INPUT 		: ��Ű��, ��Ű��
'��ɼ���	: ��Ű �� ��Ʈ
'===========================================================================
Function SetMultiCookie(sUNM, sLNM, sVal)
	Response.Cookies(sUNM)(sLNM) = LCase(sVal)
	Response.Cookies(sUNM).Path = "/"

	Response.Cookies(sUNM).Domain = "megagong.net"
End Function

'===========================================================================
'�Լ���		: SET_GOURL
'INPUT 		: URL ==> �̵��� �ּ�
'��ɼ���	: �̵��� �ּҸ� ����
'===========================================================================
Function SET_GOURL(URL)
	Response.Cookies("goURL") = URL
	Response.Cookies("goURL").Path = "/"
	Response.Cookies("goURL").Domain = "megagong.net"
End Function

'===========================================================================
'�Լ���		: SET_GO_DOMAIN
'INPUT 		: DOMAIN ==> �̵��� ������
'��ɼ���	: �̵��� �������� ����
'===========================================================================
Function SET_GO_DOMAIN(DOMAIN)
	Response.Cookies("goDOMAIN") = DOMAIN
	Response.Cookies("goDOMAIN").Path = "/"
	Response.Cookies("goDOMAIN").Domain = "megagong.net"
End Function

'===========================================================================
'�Լ���		: GO_LOGIN
'INPUT 		:
'��ɼ���	: �α��� ����ڰ� �ƴ� ��� �α����������� �̵�
'===========================================================================
Function GO_LOGIN()
	uId = fncRequestCookie("userid")
    userAgent   = Request.ServerVariables("HTTP_USER_AGENT")
    pathinto    = Request.ServerVariables("PATH_INFO")

	If IsEmpty(uId) OR IsNull(uId) OR uId = "" Then

        uId = fncRequestCookie("userid")

        If IsEmpty(uId) OR IsNull(uId) OR uId = "" Then
            Response.Redirect "/member/login.asp"
        End if
	End If

	uId = replace(replace(uId,"_prt",""),"_PRT","")

 	encval_id = TRIM(fncRequestCookie("encval"))			'��ȣȭ���̵�
 	if cstr(Encrypt(uId)) <> encval_id then

		Response.Redirect "/member/logout_sql.asp"
 	end if
End function


'===========================================================================
'�Լ���		: Replace_Number
'INPUT 		: str ==> ���ڿ�
'��ɼ���	: �������� ���ڸ� ������ �Լ�
'===========================================================================
Function Replace_Number(str)
	for i=48 to 57
		str=replace(str,cstr(chr(i)),"")
	next
	Replace_Number=str
end Function

'===========================================================================
'�Լ���		: Replace_Money
'INPUT 		: money ==> �ݾ�
'��ɼ���	: ���ڸ� �ݾ״����� �ٲ� : 3000 --> 3,000
'===========================================================================
Function Replace_Money(money)
	IF money > 0 THEN
		money = MID(FormatCurrency(money), 2, LEN(FormatCurrency(money)))
	END IF
	Replace_Money = money
End Function

'===========================================================================
'�Լ���		: date_db
'INPUT 		:
'��ɼ���	: System DATE -> yyyy-mm-dd
'===========================================================================
Function date_db()
	v_year = year(now())
	mLen = Len(month(now()))
	If mLen <> 2 Then
		v_month = "0" + Cstr(month(now()))
	Else
		v_month = Cstr(month(now()))
	End If
	dLen = Len(day(now()))
	If dLen <> 2 Then
		v_day = "0" + Cstr(day(now()))
	Else
		v_day = Cstr(day(now()))
	End If
	date_db = Cstr(v_year) + "-" + Cstr(v_month) + "-" + Cstr(v_day)
End Function

'===========================================================================
'�Լ���		: date_time
'INPUT 		:
'��ɼ���	: System DATE -> yyyymmddhhmmss
'===========================================================================
Function date_time()
	v_year = year(date)
	v_month = month(date)
	if v_month < 10 then v_month = "0" & v_month
	v_day = day(date)
	if v_day < 10 then v_day = "0" & v_day
	v_hour = hour(time)
	if v_hour < 10 then v_hour = "0" & v_hour
	v_minute = minute(time)
	if v_minute < 10 then v_minute = "0" & v_minute
	v_second = second(time)
	if v_second < 10 then v_second = "0" & v_second
	v_datetime = v_year&v_month&v_day&v_hour&v_minute&v_second
	date_time = v_datetime
End Function

Function date_tm ()
	h = hour(time)
	if h < 10 then h = "0" & h
	m = minute(time)
	if m < 10 then m = "0" & m
	s = second(time)
	if s < 10 then s = "0" & s

	date_tm = h & ":" & m & ":" & s
End Function

Function return_plm_date ()

	dt = dateadd("h",48,date_db() & " " & date_tm())

	redt = year(dt) & "-"
	if month(dt) < 10 then redt = redt & "0"
	redt = redt & month(dt) & "-"
	if day(dt) < 10 then redt = redt & "0"
	redt = redt & day(dt) & "T"
	if hour(dt) < 10 then redt = redt & "0"
	redt = redt & hour(dt) & ":"
	if minute(dt) < 10 then redt = redt & "0"
	redt = redt & minute(dt) & ":"
	if second(dt) < 10 then redt = redt & "0"
	redt = redt & second(dt)

	return_plm_date = redt

End Function

Function return_plm_date_adm ()

	dt = dateadd("n",20,date_db() & " " & date_tm())

	redt = year(dt) & "-"
	if month(dt) < 10 then redt = redt & "0"
	redt = redt & month(dt) & "-"
	if day(dt) < 10 then redt = redt & "0"
	redt = redt & day(dt) & "T"
	if hour(dt) < 10 then redt = redt & "0"
	redt = redt & hour(dt) & ":"
	if minute(dt) < 10 then redt = redt & "0"
	redt = redt & minute(dt) & ":"
	if second(dt) < 10 then redt = redt & "0"
	redt = redt & second(dt)

	return_plm_date_adm = redt

End Function

'===========================================================================
'�Լ���		: date_nude
'INPUT 		: InpDate ==> yyyy/mm/dd
'��ɼ���	: yyyy/mm/dd -> yyyymmdd
'===========================================================================
Function date_nude(InpDate)
	DbDate = left(InpDate,4)
	DbDate = DbDate & mid(InpDate,6,2)
	DbDate = DbDate & right(InpDate,2)
	date_nude = DbDate
End Function

'===========================================================================
'�Լ���		: date_list
'INPUT 		: InpDate ==> yyyymmdd
'��ɼ���	: yyyymmdd -> yyyy-mm-dd
'===========================================================================
Function date_list(InpDate)
	DbDate = left(InpDate,4)
	DbDate = DbDate + "-"
	DbDate = DbDate + mid(InpDate,5,2)
	DbDate = DbDate + "-"
	DbDate = DbDate + right(InpDate,2)
	date_list = DbDate
End Function

'===========================================================================
'�Լ���		: date_form
'INPUT 		: InpDate ==> yyyymmdd
'��ɼ���	: yyyymmdd -> yyyy/mm/dd
'===========================================================================
Function date_form(InpDate)
	DbDate = left(InpDate,4)
	DbDate = DbDate + "/"
	DbDate = DbDate + mid(InpDate,5,2)
	DbDate = DbDate + "/"
	DbDate = DbDate + right(InpDate,2)
	date_form = DbDate
End Function

'===========================================================================
'�Լ���		: date_ad
'INPUT 		: InpDate ==> yyyymmddhhmmss
'��ɼ���	: yyyymmddhhmmss -> [yyyy-mm-dd hh:mm:ss.000]
'===========================================================================
Function date_ad(InpDate)
	DbDate = left(InpDate,4)
	DbDate = DbDate + "-"
	DbDate = DbDate + mid(InpDate,5,2)
	DbDate = DbDate + "-"
	DbDate = DbDate + mid(InpDate,7,2)
	DbDate = DbDate + " "
	DbDate = DbDate + mid(InpDate,9,2)
	DbDate = DbDate + ":"
	DbDate = DbDate + mid(InpDate,11,2)
	DbDate = DbDate + ":"
	DbDate = DbDate + mid(InpDate,13,2)
	DbDate = DbDate + ".000"
	date_ad = DbDate
End Function

'===========================================================================
'�Լ���		: get_dday
'INPUT 		: InpDate ==> yyyymmdd, yyyy-mm-dd
'��ɼ���	: D-Day ��¥ ���(�������� ����)
'===========================================================================
Function get_dday(InpDate)
	If Len(InpDate) = 8 Then
		InpDate = date_list(InpDate)
	End if

	get_dday = datediff("d",date(), InpDate)
End Function

'===========================================================================
'�Լ���		: get_cday
'INPUT 		: InpDate ==> date number
'��ɼ���	: D-Day ��¥ ���(Ư������ ����)
'===========================================================================
Function get_cday(InpDate)
	get_cday = dateadd("d", InpDate, date())
End Function

'===========================================================================
'�Լ���		: str_last
'INPUT 		: Str ==> �˻��� ���ڿ�,Comp ==> �˻�����
'��ɼ���	: Str : "d:\test\test.gif",comp : "\",return : "test.gif"
'===========================================================================
Function str_last(Str,Comp)
	ch = ""
	i = -1
	k = 0
	IF IsEmpty(Str) THEN
		str_last = ""
	ELSE
		Do While k = 0
			ch = MID(Str,Len(Str)-i,1)
			IF ch = Comp THEN
				k = 1
			END IF
			i = i + 1
			IF(i >= Len(Str))  THEN
				k = 1
				i = Len(Str)+1
			END IF
		Loop
		str_last = RIGHT(Str,i-1)
	End IF
End Function

'===========================================================================
'�Լ���		: str_first
'INPUT 		: Str ==> �˻��� ���ڿ�,Comp ==> �˻�����
'��ɼ���	: Str : "d:\test\test.gif",comp : "\",return : "d:"
'===========================================================================
Function str_first(Str,Comp)
	ch = ""
	i = 1
	k = 0
	IF IsEmpty(Str) THEN
		str_first = ""
	ELSE
		Do While k = 0
			ch = MID(Str,i,1)
			IF ch = Comp THEN
				k = 1
			END IF
			i = i + 1
			IF(i >= Len(Str))  THEN
				k = 1
				i = Len(Str)+1
			END IF
		Loop
		str_first = Left(Str,i-1)
	END IF
End Function


'===========================================================================
'�Լ���		: STR_TO_DB
'INPUT 		: cur_str ==> �˻��� ���ڿ�
'��ɼ���	: STR�� DB�� ������
'===========================================================================
Function STR_TO_DB(cur_str)
   if trim(cur_str) <> "" Then
           cur_str = Replace(cur_str,"'","''", 1, -1, 1)
           cur_str = Replace(cur_str,"&amp;","&", 1, -1, 1)
           cur_str = Replace(cur_str,"&cute;", "", 1, -1, 1)
           cur_str = Replace(cur_str,"&nbsp&#59;", "", 1, -1, 1)
           cur_str = Replace(cur_str,"&","&amp;", 1, -1, 1)
           cur_str = Replace(cur_str,"<","&lt;", 1, -1, 1)
           cur_str = Replace(cur_str,">","&gt;", 1, -1, 1)
           cur_str = Replace(cur_str," ?", "", 1, -1, 1)
           cur_str = Replace(cur_str,"\;", "", 1, -1, 1)
           cur_str = Replace(cur_str,"(","&#40;", 1, -1, 1)
           cur_str = Replace(cur_str,")","&#41;", 1, -1, 1)
           cur_str = Replace(cur_str,"#","&#35;", 1, -1, 1)
           cur_str = Replace(cur_str,"JavaScript","", 1, -1, 1)
           cur_str = Replace(cur_str,"Vbscript","", 1, -1, 1)
           cur_str = Replace(cur_str,"script","", 1, -1, 1)
           cur_str = Replace(cur_str,"cookie","", 1, -1, 1)
           cur_str = Replace(cur_str,"location","", 1, -1, 1)
   end if
           STR_TO_DB = cur_str
End Function

'===========================================================================
'�Լ���		: DB_TO_STR
'INPUT 		: cur_str ==> �˻��� ���ڿ�
'��ɼ���	: DB ���� STR ����
'===========================================================================
Function DB_TO_STR(cur_str)
  if trim(cur_str) <> "" Then
        cur_str = Replace(cur_str,"''","", 1, -1, 1)
'        cur_str = Replace(cur_str,"""","", 1, -1, 1)
        cur_str = Replace(cur_str,"&amp;","&", 1, -1, 1)
        cur_str = Replace(cur_str,"&gt;",">", 1, -1, 1)
        cur_str = Replace(cur_str,"&lt;","<", 1, -1, 1)
        cur_str = Replace(cur_str,"&cute;", "", 1, -1, 1)
        cur_str = Replace(cur_str,"&nbsp&#59;", "", 1, -1, 1)
        cur_str = Replace(cur_str," ?", "", 1, -1, 1)
        cur_str = Replace(cur_str,"\;", "", 1, -1, 1)
        cur_str = Replace(cur_str,"&#35;","#", 1, -1, 1)
        cur_str = Replace(cur_str,"&#40;","(", 1, -1, 1)
        cur_str = Replace(cur_str,"&#41;",")", 1, -1, 1)
        cur_str = Replace(cur_str,"&#046;",".", 1, -1, 1)
        cur_str = Replace(cur_str,"&#061;","=", 1, -1, 1)
        cur_str = Replace(cur_str,"JavaScript","", 1, -1, 1)
        cur_str = Replace(cur_str,"Vbscript","", 1, -1, 1)
        cur_str = Replace(cur_str,"script","", 1, -1, 1)
        cur_str = Replace(cur_str,"cookie","", 1, -1, 1)
        cur_str = Replace(cur_str,"location","", 1, -1, 1)
'        cur_str = Replace(cur_str,"&#039", "'", 1, -1, 1)
  end if
  DB_TO_STR = cur_str
End Function



'===========================================================================
'�Լ���		: ChrReConvert
'INPUT 		: str ==> ��ġȯ�� ���ڿ�
'��ɼ���	: ���ڿ� ��ġȯ
'===========================================================================
Function ChrReConvert(str)
	str = replace(str,"&#34;",chr(34))	'Quotation mark
	str = replace(str,"&#39;",chr(39))	'Apostrophe
	str = replace(str,"&amp;","&")		'Ampersand
	str = replace(str,"&lt;","<")		'disable HTML tag
	str = replace(str,"&gt;",">")		'disable HTML tag
	ChrReConvert = str
End Function

'===========================================================================
'�Լ���		: ConvertChr
'INPUT 		: str ==> ġȯ�� ���ڿ�
'��ɼ���	: ���ڿ� ġȯ
'===========================================================================
Function ConvertChr(str)
	str = replace(str,"&lt;","<")		'disable HTML tag
	str = replace(str,"&gt;",">")		'disable HTML tag
	str = replace(str,"&amp;","&")		'Ampersand
	str = replace(str,"&#34;",chr(34))	'Quotation mark
	str = replace(str,"&#39;",chr(39))	'Apostrophe
	ConvertChr = str
End Function



'===========================================================================
'�Լ���		: formatDate
'INPUT 		: dt ==> ��¥ ���ڿ�
'INPUT      : sep ==> ������ (�������, '-' or '/' or ' ' )
'�ۼ�����   : 2004.11.29
'�ۼ���     : �� �� ��
'��ɼ���	: ��¥�� DateŸ������ Formating�Ͽ� ���ڿ� ��ȯ
'===========================================================================
Function formatDate( dt, sep )
	If Len(dt) <> 14 Then
		formatDate = dt
		Exit function
	End If

	yy = Left(dt,4)
	mm = Mid(dt,5,2)
	dd = Mid(dt,7,2)
	ret = yy & sep & mm & sep & dd

	hh = Mid(dt,9,2)
	mi = Mid(dt,11,2)
	ret = ret & " " & hh & ":" & mi
	formatDate = ret
End function


'===========================================================================
'�Լ���		: ZeroFormat
'INPUT 		: str ==> ���ڿ�, inum ==> ���乮�ڱ���
'�ۼ�����	: 2004.12.11
'�ۼ���		: �ֺ���
'��ɼ���	: ���˿� ���߾� ���� -> ex) 0 -> 01
'===========================================================================
Function ZeroFormat(str,inum)
	Dim sString,iLen
	Dim iDiff			'����
	Dim idx
	Dim sAdd
	Dim sRet
	sString = CStr(str)
	iLen = Len(str)
	If iLen < inum Then	'���ڿ� ���̰� �������̺��� ������ �� ����ŭ 0�� �տ� ���δ�
		iDiff = inum - iLen
		For idx = 0 To iDiff - 1
			sAdd = sAdd & "0"
		Next
	End If
	sRet = sAdd + CStr(str)
	ZeroFormat = sRet
End Function


'===========================================================================
'�Լ���		: GetSubString
'INPUT 		:  - str : ��ȯ�� ��Ʈ��, - strLength : ��������
'�ۼ�����	:
'�ۼ���		: ������
'��ɼ���	: ������ ���ڿ�(���ڰ�: str)�� ��������(���ڰ�: strLength)���� Ŭ��� �� ���̸�ŭ�� �߶� �����ֱ� ���� �Լ�
'===========================================================================

FUNCTION GetSubString(ByVal strLength, ByVal Str)

	Dim strLen

	if isNull(Str) = False then

		strLen = len(Str)

		if cInt(strLen) > cInt(strLength) then

			str = left(str, strLength) & "..."

         end if

            GetSubString = str

        else

             GetSubString = ""

        end if

END FUNCTION

'===========================================================================
'�Լ���		: REPLACE_FONT
'INPUT 		:  ��Ʈ ����
'�ۼ�����	:
'�ۼ���		: Ȳ����
'��ɼ���	:
'===========================================================================

Function REPLACE_FONT(ByTtile)

     tot_str = LCase(ByTtile)

       For i = 1 To Len(ByTtile)

             If InStr(i, tot_str, "<") > 0 And InStr(i, tot_str, ">") > 0 Then

                tmp_str = Mid(tot_str, InStr(i, tot_str, "<") + 1, InStr(i, tot_str, ">") - 1)

                If InStr(1, tmp_str, "font") Or InStr(1, tmp_str, "b") Then

                    pre_str = Left(tot_str, InStr(1, tot_str, "<") - 1)
                    aft_str = Mid(tot_str, InStr(1, tot_str, ">") + 1)
                    tot_str = pre_str & aft_str
                End If

             Else

               Exit For

             End If
       Next

     REPLACE_FONT = tot_str

End Function

'===========================================================================
'�Լ���		: REPLACE_FONT
'INPUT 		:  ��Ʈ ����
'�ۼ�����	:
'�ۼ���		: Ȳ����
'��ɼ���	: ' rxReplace( html, "<\b[^>]*>", "", "gi")
'			  ' rxReplace( html, "<font\b[^>]*>|<center\b[^>]*>", "", "gi")
'===========================================================================
function rxReplace( text, pattern, replace_text, flags )
       if IsNull(text) or (text="") then
              rxReplace = ""
       else
              dim rx : set rx = new RegExp

              rx.IgnoreCase = CBool(InStr(1,flags,"i")>0)
              rx.Global = CBool(InStr(1,flags,"g")>0)
              rx.MultiLine = CBool(InStr(1,flags,"m")>0)

              rx.Pattern = pattern
              rxReplace = rx.Replace(text, replace_text)

              set rx = nothing
       end if
end function



function removeHTML(strHTML)

   dim objRegExp

   on error resume next
   set objRegExp = New RegExp

   With objRegExp
      .Global = true
      .IgnoreCase = true
      .Pattern = "<[a-zA-Z\/\s][^>]*>"
      strHTML = .Replace(strHTML, "")
   end With

   set objRegExp = nothing
   removeHTML = strHTML

end Function


Function stripHTML(strHTML)

	Dim objRegExp, strOutput

	Set objRegExp = New Regexp

	objRegExp.IgnoreCase = True
	objRegExp.Global = True

	'objRegExp.Pattern = "<(.|\n|\r)+?>"
	objRegExp.Pattern = "<[^>]*>"

	strOutput = objRegExp.Replace(strHTML, "")

	strOutput = Replace(strOutput, "<", "<")
	strOutput = Replace(strOutput, ">", ">")
'	strOutput = Replace(strOutput, "<!--", "")

	stripHTML = strOutput

	Set objRegExp = Nothing

End Function


'===========================================================================
'�Լ���	: patt_replace
'INPUT 	: ���ڿ� �� �������� ���ڿ� ġȯ
'�ۼ�����	: 2011/11/03
'�ۼ���	: �Ѽ���
'===========================================================================
Function patt_replace(pattern, replace, text)
	Dim objRegExp, strOutput

	Set objRegExp = New Regexp

	objRegExp.IgnoreCase = True		'//��ҹ��� ���� ����
	objRegExp.Global = True			'//��ü �������� �˻�

	objRegExp.Pattern = pattern		'//���� ����

	patt_replace = objRegExp.Replace(text, replace)

	Set objRegExp = Nothing
End Function

'===========================================================================
'�Լ���	: strip_tags
'INPUT 	:  HTML ��� �±����� �Լ�
'�ۼ�����	: 2011/11/03
'�ۼ���	: �Ѽ���
'===========================================================================
Function strip_tags(str)
	Dim content, pattern:

	content = str:

	'pattern = "<(/)?([a-zA-Z]*)(\\s[a-zA-Z]*=[^>]*)?(\\s)*(/)?>"	'All->�̰� ����� �������� �ʴ´�. ��������� ���ܵ�
	'content = patt_replace(pattern, "", content):

	pattern = "<(no)?script[^>]*>.*?</(no)?script>"	'scripts
	content = patt_replace(pattern, "", content)
	pattern = "<style[^>]*>.*</style>"				'style
	content = patt_replace(pattern, "", content)
	pattern = "<(\""[^\""]*\""|\'[^\']*\'|[^\'\"">])*>"	'tags
	content = patt_replace(pattern, "", content)
	pattern = "<\\w+\\s+[^<]*\\s*>"			'ntags
	content = patt_replace(pattern, "", content)
	pattern = "&[^;]+;"							'entity_refs
	content = patt_replace(pattern, "", content)
	pattern = "\\s\\s+"						'whitespace
	content = patt_replace(pattern, "", content):

	strip_tags = content:
End Function


function findErrorSynt(param)
	findErrorSynt = TRUE
	param = replace(param, "%20", "")	'����
	param = replace(param, "%32", "")	'����
	param = replace(param, "%09", "")	'��
	param = replace(param, "%13", "")	'CR
	param = replace(param, "%10", "")	'LF
	param = replace(param, "[", "")	'[
	param = replace(param, "]", "")	']
	param = replace(param, "/**/", "")
	param = ucase(replace(param, " ", ""))

	IF INSTR( param, "CREATETABLE") THEN findErrorSynt = FALSE
	IF INSTR( param, "DROPTABLE") THEN findErrorSynt = FALSE
	IF INSTR( param, "TRUNTABLE") THEN findErrorSynt = FALSE
	IF INSTR( param, "TRUNCATETABLE") THEN findErrorSynt = FALSE
	IF INSTR( param, "DELETEMS_") THEN findErrorSynt = FALSE
	IF INSTR( param, "DELETEFROMMS_") THEN findErrorSynt = FALSE
	IF INSTR( param, "DELETEEV_") THEN findErrorSynt = FALSE
	IF INSTR( param, "DELETEFROMEV_") THEN findErrorSynt = FALSE
	IF INSTR( param, "UPDATEMS_") THEN findErrorSynt = FALSE
	IF INSTR( param, "UNIONSELECT") THEN findErrorSynt = FALSE
	IF INSTR( param, "UNIONALLSELECT") THEN findErrorSynt = FALSE

	IF INSTR( param, "CREATE") AND INSTR( param, "TABLE") THEN findErrorSynt = FALSE
	IF INSTR( param, "DROP") AND INSTR( param, "TABLE") THEN findErrorSynt = FALSE
	IF INSTR( param, "TRUNCATE") AND INSTR( param, "TABLE") THEN findErrorSynt = FALSE
	IF INSTR( param, "DELETE") AND INSTR( param, "MS_") THEN findErrorSynt = FALSE
	IF INSTR( param, "DELETE") AND INSTR( param, "FROM") AND INSTR( param, "MS_") THEN findErrorSynt = FALSE
	IF INSTR( param, "DELETE") AND INSTR( param, "EV_") THEN findErrorSynt = FALSE
	IF INSTR( param, "DELETE") AND INSTR( param, "FROM") AND INSTR( param, "EV_") THEN findErrorSynt = FALSE
	IF INSTR( param, "UPDATE") AND INSTR( param, "MS_") THEN findErrorSynt = FALSE
	IF INSTR( param, "UNION") AND INSTR( param, "SELECT") THEN findErrorSynt = FALSE
	IF INSTR( param, "UNION") AND INSTR( param, "ALL")AND INSTR( param, "SELECT") THEN findErrorSynt = FALSE

	IF INSTR( param, "SYSOBJECT") THEN findErrorSynt = FALSE
	IF INSTR( param, "SYSINDEX") THEN findErrorSynt = FALSE
	IF INSTR( param, "MASTER..") THEN findErrorSynt = FALSE
	IF INSTR( param, "MASTER.DBO.") THEN findErrorSynt = FALSE
	IF INSTR( param, "CAST(") THEN findErrorSynt = FALSE
	IF INSTR( param, "IS_SRVROLEMEMBER") THEN findErrorSynt = FALSE
	IF INSTR( param, "DECLARE@") THEN findErrorSynt = FALSE
	IF INSTR( param, "WAITFORDELAY") THEN findErrorSynt = FALSE
	IF INSTR( param, "VARCHAR") THEN findErrorSynt = FALSE

	IF INSTR( param, "XP_CMDSHELL") THEN findErrorSynt = FALSE
	IF INSTR( param, "XP_DIRTREE") THEN findErrorSynt = FALSE
	IF INSTR( param, "XP_REGDELETEKEY") THEN findErrorSynt = FALSE
	IF INSTR( param, "XP_REGENUMVALUES") THEN findErrorSynt = FALSE
	IF INSTR( param, "XP_REGREAD") THEN findErrorSynt = FALSE
	IF INSTR( param, "XP_REGWRITE") THEN findErrorSynt = FALSE
	IF INSTR( param, "SP_MAKEWEBTASK") THEN findErrorSynt = FALSE
	IF INSTR( param, "SP_ADDUSER") THEN findErrorSynt = FALSE
	IF INSTR( param, "ANDCAST") THEN findErrorSynt = FALSE

	'IF INSTR( param, "DBCC") THEN findErrorSynt = FALSE

	IF INSTR( param, "SELECT") AND INSTR( param, "FROM") THEN findErrorSynt = FALSE
	IF INSTR( param, "SELECT") AND INSTR( param, "FROM") AND INSTR( param, "TOP") THEN findErrorSynt = FALSE
	IF INSTR( param, "/*") AND INSTR( param, "*/") THEN findErrorSynt = FALSE
	IF INSTR( param, "MS_MEM_MAS") THEN findErrorSynt = FALSE
	IF INSTR( param, "MS_MEM_DTL") THEN findErrorSynt = FALSE

	IF INSTR( param, ".sys.") THEN findErrorSynt = FALSE
	IF INSTR( param, "CMD.EXE") THEN findErrorSynt = FALSE
	IF INSTR( param, "OPENROWSET") THEN findErrorSynt = FALSE


end function

%>

<%
'���� ���輺�� �����ϴ� ���ڵ��� ���͸�
'���ڿ� �Է°��� ����
'�������� ������ Ÿ���� ������ üũ�ϵ��� �Ѵ�.
Function sqlFilter(search)
	Dim strSearch(38), strReplace(38), cnt, data

	'SQL Injection Ư������ ���͸�
	'�ʼ� ���͸� ���� ����Ʈ
    strSearch(0)="'"
    strSearch(1)=""""
    strSearch(2)="\"
    strSearch(3)="&"
    strSearch(4)="#"
    strSearch(5)="--"
    strSearch(6)=";"
    strSearch(7)="1=1"

    strSearch(8)="insert "
    strSearch(9)="update "
    strSearch(10)="delete "
    strSearch(11)="select "
    strSearch(12)="exec "
    strSearch(13)="drop "
    strSearch(14)="truncate "
    strSearch(15)="create "
    strSearch(16)="alter "
    strSearch(17)="varchar "
    strSearch(18)="cmdshell "
    strSearch(19)="script "
    strSearch(20)="iframe "
    strSearch(21)="embed "
    strSearch(22)="object "
    strSearch(23)="form "
    strSearch(24)="textarea "
    strSearch(25)="input "
    strSearch(26)="null "

    ' 20190625 �߰�
    strSearch(27)="/*"
    strSearch(28)="*/"
    strSearch(29)="@@"
    strSearch(30)="sysobjects"
    strSearch(31)="declare"
    strSearch(32)="substring"
    strSearch(33)="union"
    strSearch(34)="("
    strSearch(35)=")"
    strSearch(36)="<"
    strSearch(37)=">"

	' 20220506 �߰�
	strSearch(38)="%"

    '��ȯ�� ���� ����
    strReplace(0)="��"
    strReplace(1)="��"
    strReplace(2)="��"
    strReplace(3)="&"
    strReplace(4)="��"
    strReplace(5)="��"
    strReplace(6)="\;"
    strReplace(7)=""

    strReplace(8)="ins��rt "
    strReplace(9)="updat�� "
    strReplace(10)="delet�� "
    strReplace(11)="s��lect "
    strReplace(12)="ex��c "
    strReplace(13)="dr��p "
    strReplace(14)="truncat�� "
    strReplace(15)="creat�� "
    strReplace(16)="alt��r "
    strReplace(17)="v��rchar "
    strReplace(18)="cmdsh��ll "
    strReplace(19)="s��ript "
    strReplace(20)="ifr��me "
    strReplace(21)="��mbed "
    strReplace(22)="��bject "
    strReplace(23)="f��rm "
    strReplace(24)="t��xtarea "
    strReplace(25)="��nput "
    strReplace(26)="��ull"

    ' 20190625 �߰�
    strReplace(27)="����"
    strReplace(28)="����"
    strReplace(29)="����"
    strReplace(30)="��y��obj��cts"
    strReplace(31)="d��clare"
    strReplace(32)="��ub��tring"
    strReplace(33)="uni��n"
    strReplace(34)="��"
    strReplace(35)="��"
    strReplace(36)="��"
    strReplace(37)="��"

	' 20220506 �߰�
	strReplace(38)="��"

	data = search
	For cnt = 0 to 37 '���͸� �ε����� �迭 ũ��� �����ش�.
		data = replace(data, LCASE(strSearch(cnt)), strReplace(cnt))
	Next

	' 20220628 removeXSS �Լ� �߰�
	sqlFilter = data 'removeXSS(data)
End Function


Function Re_sqlFilter(search)
      Dim strSearch(15), strReplace(15), cnt, data

    ''SQL Injection Ư������ ���͸�
    ''�ʼ� ���͸� ���� ����Ʈ
    'strSearch(0)="'"
    'strSearch(1)=""""
    'strSearch(2)="\"
    'strSearch(3)="#"
    'strSearch(4)="--"
    'strSearch(5)=";"
    'strSearch(6)=""
    'strSearch(7)=""
    'strSearch(8)="&quot;"
    'strSearch(9)="#"
    'strSearch(10)="("
    'strSearch(11)=")"
    'strSearch(12)="��"
    'strSearch(13)="��"
	'strSearch(14)="��"
'
    ''��ȯ�� ���� ����
    'strReplace(0)="''"
    'strReplace(1)=""""""
    'strReplace(2)="\\"
    'strReplace(3)="\#"
    'strReplace(4)="\--"
    'strReplace(5)="\;"
    'strReplace(6)=""
    'strReplace(7)=""
    'strReplace(8)="��"
    'strReplace(9)="&#35;"
    'strReplace(10)="&#40;"
    'strReplace(11)="&#41;"
    'strReplace(12)="<"
    'strReplace(13)=">"
	'strReplace(14)="--"

	'SQL Injection Ư������ ���͸�
	'�ʼ� ���͸� ���� ����Ʈ
	strSearch(0)="��"
	strSearch(1)="��"
	strSearch(2)="��"
	strSearch(3)="&#41;"
	strSearch(4)="\#"
	strSearch(5)="��"
	strSearch(6)="\;"
	strSearch(7)="��"
    strSearch(8)="��"
    strSearch(9)="��"
    strSearch(10)="��"
	strSearch(11)="&amp;"
	strSearch(12)="��"
	strSearch(13)=""""""
	'
	'��ȯ�� ���� ����
	strReplace(0)="'"
	strReplace(1)=""""
	strReplace(2)="\\"
	strReplace(3)="&"
	strReplace(4)="#"
	strReplace(5)="--"
	strReplace(6)=";"
	strReplace(7)="("
    strReplace(8)=")"
    strReplace(9)="<"
    strReplace(10)=">"
	strReplace(11)="&"
	strReplace(12)="#"
	strReplace(13)=""""

    data = search
    For cnt = 0 to 12 '���͸� �ε����� �迭 ũ��� �����ش�.
        If Not(IsNull(data)) Then
	        data = replace(data, strSearch(cnt), LCASE(strReplace(cnt)))
        End If
    Next

    Re_sqlFilter = data
 End Function

Function removeXSS(get_String)
   get_String = Replace(get_String, "&", "&amp;")
   get_String = Replace(get_String, "<xmp", "<x-xmo", 1, -1, 1)
   get_String = Replace(get_String, "javascript", "<x-javascript", 1, -1, 1)
   get_String = Replace(get_String, "script", "<x-script", 1, -1, 1)
   get_String = Replace(get_String, "iframe", "<x-iframe", 1, -1, 1)
   get_String = Replace(get_String, "document", "<x-document", 1, -1, 1)
   get_String = Replace(get_String, "vbscript", "<x-vbscript", 1, -1, 1)
   get_String = Replace(get_String, "applet", "<x-applet", 1, -1, 1)
   get_String = Replace(get_String, "embed", "<x-embed", 1, -1, 1)
   get_String = Replace(get_String, "object", "<x-object", 1, -1, 1)
   get_String = Replace(get_String, "frame", "<x-frame", 1, -1, 1)
   get_String = Replace(get_String, "grameset", "<x-grameset", 1, -1, 1)
   get_String = Replace(get_String, "layer", "<x-layer", 1, -1, 1)
   get_String = Replace(get_String, "bgsound", "<x-bgsound", 1, -1, 1)
   get_String = Replace(get_String, "alert", "<x-alert", 1, -1, 1)
   get_String = Replace(get_String, "onblur", "<x-onblur", 1, -1, 1)
   get_String = Replace(get_String, "onchange", "<x-onchange", 1, -1, 1)
   get_String = Replace(get_String, "onclick", "<x-onclick", 1, -1, 1)
   get_String = Replace(get_String, "ondblclick","<x-ondblclick",  1, -1, 1)
   get_String = Replace(get_String, "enerror", "<x-enerror", 1, -1, 1)
   get_String = Replace(get_String, "onfocus", "<x-onfocus", 1, -1, 1)
   get_String = Replace(get_String, "onload", "<x-onload", 1, -1, 1)
   get_String = Replace(get_String, "onmouse", "<x-onmouse", 1, -1, 1)
   get_String = Replace(get_String, "onscroll", "<x-onscroll", 1, -1, 1)
   get_String = Replace(get_String, "onsubmit", "<x-onsubmit", 1, -1, 1)
   get_String = Replace(get_String, "onunload", "<x-onunload", 1, -1, 1)
   get_String = Replace(get_String, "<", "&lt;")
   get_String = Replace(get_String, ">", "&gt;")
   removeXSS = get_String
End Function
'XSS ��� ���� �Լ�
'XSS ���� �Լ�
'$str - ���͸��� ��°�
'$avatag - ����� �±� ����Ʈ ��)  $avatag = "p,br"
Function clearXSS(strString, avatag)
	'XSS ���͸�
	strString = replace(strString, "<", "&lt;")
	strString = replace(strString, "'", "''")
	strString = replace(strString, "\0", "")

	'����� �±� ��ȯ
	avatag = replace(avatag, " ", "")		'���� ����
	If (avatag <> "") Then
		taglist = split(avatag, ",")

		for each p in taglist
			strString = replace(strString, "&lt;"&p&" ", "<"&p&" ", 1, -1, 1)
			strString = replace(strString, "&lt;"&p&">", "<"&p&">", 1, -1, 1)
			strString = replace(strString, "&lt;/"&p&" ", "</"&p&" ", 1, -1, 1)
		next
	End If

	clearXSS = strString
End Function

'==========================================
'  ȸ�����̵� ȣ�� 2008-09-25 ������
'==========================================

Function GETUID()
	GETUID = fncRequestCookie("userid")
End Function

'==========================================
'  ȸ���� ȣ�� 2008-09-25 ������
'==========================================
Function GETUNM()
	GETUNM = fncRequestCookie("username")
End Function


'==========================================
'  ȸ��Ÿ�� ȣ�� 2008-09-25 ������
'==========================================
Function GETUTYPE()
	GETUTYPE = fncRequestCookie("mem_type")
End Function


'==========================================
'  ��üũ
'==========================================
Function NULLCHECK(str)
	If str = "" Or isnull(str) then
		NULLCHECK = true
	else
		NULLCHECK = false
	end if
End Function

'==========================================
'' asp �ڵ峻���� �޽���â ����
'==========================================
sub GetMsgBox(msg)
	Response.write "<SCRIPT LANGUAGE='JavaScript'>"
	Response.write "	alert('"& msg &"');"
	Response.write "</SCRIPT>"
	Response.End
end Sub

'==========================================
'' asp �ڵ峻���� �޽���â ���� �����丮��
'==========================================
sub GetMsgBoxBack(msg)
	Response.write "<SCRIPT LANGUAGE='JavaScript'>"
	Response.write "	alert('"& msg &"');"
	Response.write "	history.back();"
	Response.write "</SCRIPT>"
	Response.End
end sub

'==========================================
'' asp �ڵ峻���� �޽���â ���� â�ݱ�
'==========================================
sub GetMsgBoxClose(msg)
	Response.write "<SCRIPT LANGUAGE='JavaScript'>"
	Response.write "	alert('"& msg &"');"
	Response.write "	window.close();"
	Response.write "</SCRIPT>"
	Response.End
end Sub

'==========================================
'' asp �ڵ峻���� �޽���â ���� â������ �θ�â �̵�
'==========================================
sub GetMsgBoxCloseGo(msg,url)
	Response.write "<SCRIPT LANGUAGE='JavaScript'>"
	Response.write "	alert('"& msg &"');"
	Response.write "	window.close();"
	Response.write "	opener.location.href('"& url &"');"
	Response.write "</SCRIPT>"
	Response.End
end Sub

'==========================================
'' asp �ڵ峻���� �޽���â ���� â�ݰ� �θ�â ���ε�
'==========================================
sub GetMsgBoxCloseReload(msg)
	Response.write "<SCRIPT LANGUAGE='JavaScript'>"
	Response.write "	alert('"& msg &"');"
	Response.write "	window.close();"
	Response.write "	opener.location.reload();"
	Response.write "</SCRIPT>"
	Response.End
end Sub

'==========================================
'' asp �ڵ峻���� �޽���â ���� ���ϴ� ������ redirect "url" ������ ��������
'==========================================
sub GetMsgBoxGo(msg,url)
	Response.write "<SCRIPT LANGUAGE='JavaScript'>"
	Response.write "	alert('"& msg &"');"
	If url <> "" then
		Response.write "	location.replace('"& url &"');"
	End if
	Response.write "</SCRIPT>"
	Response.End
end sub

'==========================================
'' asp �ڵ峻���� �޽���â ���� �θ�â ���ϴ� ������ redirect "url" ������ ��������
'==========================================
sub GetMsgBoxParGo(msg,url, tg)
	Response.write "<SCRIPT LANGUAGE='JavaScript'>"
	Response.write "	alert('"& msg &"');"
	If Trim(url) <> "" then
		Response.write "	"& tg &"location.href = '"& url &"';"
	End if
	Response.write "</SCRIPT>"
	Response.End
end sub


'==========================================
' ���� �� üũ �ڽ�  üũ ����
' RadioValChk(�����, üũ��, ����)
'==========================================
Sub RadioValChk(val, chkval, rw)
	If CStr(Trim(val)) = CStr(Trim(chkval)) Then
		If rw = "c" Then
			Response.write " checked "
		Else
			Response.write " selected "
		End IF
	End IF
End Sub

'==========================================
' ���� ���� �ڸ� �� ����
'==========================================

Function cutStr(title, num)

	 dim i, sum, title_one, result, sumByte

	 If Trim(title)="" Or IsNull(title) Then
		result = ""
	 else
		 for i = 1 to len(title)
		  title_one = MID(title, i, 1)
		  if ASC(title_one)<0 then sumByte = sumByte + 2 else sumByte = sumByte + 1
		  if sumByte>num then result = result &".." : exit for else result = result + title_one
		 Next
	 End If

	 cutStr = result

End Function


'-------------- ����
Function Debug(d)
		Response.write "<BR>" & d & "<BR>"
End Function


Function imgOver(val, overimg)

	'response.write FullUrl

	If InStr(FullUrl, LCase(val)) <> 0 Then
		imgOver = overimg
	Else
		imgOver = null
	End If
End Function


Function imgOverParam(val, overimg)
	If Trim(val) = "" Then
		imgOverParam = overimg
	Else
		imgOverParam = null
	End If
End Function

'������ Image Over ȿ�� ����[ex: imgOverArray("data1,data2,data3", "_on")]
Function imgOverArray(val, overimg)

	Dim arrayVal, arrayValTmp

	arrayVal = Split(val, ",")

	arrayValTmp = Null

	'response.write fncRequestVariables("PATH_INFO")

	If IsArray(arrayVal) Then
		For i = 0 To UBound(arrayVal)
			If fncRequestVariables("PATH_INFO") = LCase(arrayVal(i)) Then
				arrayValTmp = overimg
			End If
		next
	End If

	imgOverArray = arrayValTmp

End Function


Function imgCate( val, overimg)
	Cate = fncRequest("cate")
	If Trim(Cate) = Trim(val) Then
		imgCate = overimg
	Else
		imgCate = ""
	End If
End Function



Function imgParam( p, val, overimg)
	param = fncRequest(""& p &"")

	If Trim(LCase(param)) = Trim(LCase(val)) Then
		imgParam = overimg
	Else
		imgParam = ""
	End If

End Function


Function imgbCode(bCode, val, overimg)
	'param = fncRequest(""& p &"")

	If Trim(LCase(bCode)) = Trim(LCase(val)) Then
		imgbCode = overimg
	Else
		imgbCode = ""
	End If

End Function


'== ��ũ�� ��ư ����
Function ScrapWrite()
	'If tname <> "" And no <> "" Then


		If GetUID() <> "" Then
			ScrapWrite = "<img class=""hand"" onclick=""ListScrap()"" src="""& img_main &"/img/bt_scrap.gif"" width=""57"" height=""24"" hspace=""1"">"
		Else
			SET_GOURL(RootUrl)
			ScrapWrite = "<img class=""hand"" onclick=""ChkLogin()"" src="""& img_main &"/img/bt_scrap.gif"" width=""57"" height=""24"" hspace=""1"">"
		END If

	'End IF
End function


'== �μ� ��ư ����
Function PrintWrite()
	'If tname <> "" And no <> "" Then
		PrintWrite = "<img class=""hand"" onclick=""ViewPrintp()"" src="""& img_main &"/company/pres_print.gif"">"
	'End IF
End function


'PMP ���񽺿� �߰��Լ�
'����/���� ��Ī ġȯ
function fncFileNameReplace( data )

	rep_data = replace(data,"\","")
	rep_data = replace(rep_data,"/","")
	rep_data = replace(rep_data,":","")
	rep_data = replace(rep_data,"*","")
	rep_data = replace(rep_data,"?","")
	rep_data = replace(rep_data,"""","'")
	rep_data = replace(rep_data,"<","[")
	rep_data = replace(rep_data,">","]")
	rep_data = replace(rep_data,"|","_")
	rep_data = replace(rep_data,"-","_")
	rep_data = replace(rep_data,"&"," ")

	fncFileNameReplace = trim(rep_data)

end function

'+++++++++++++++++++++++++++++++++++++++
'��������(����� �����ı� ������)
'+++++++++++++++++++++++++++++++++++++++
Function tecrating(strTecCd)
	strSql = ""
	strSql = strSql & " SELECT ROUND(SUM(CONVERT(numeric,PS_POINT))/COUNT(*),0) FROM MS_BRD_PS "
	strSql = strSql & " Left OUTER Join MS_CHR_MAS on PS_CD = CM_CHR_CD "
	strSql = strSql & " INNER JOIN MS_SUB_CHR ON CM_CHR_CD = SC_CHR_CD "
	strSql = strSql & " INNER JOIN MS_DOM_MAS ON SC_DOM_CD = DM_DOM_CD "
	strSql = strSql & " INNER JOIN MS_SUB_MAS ON DM_DOM_CD = SM_DOM_CD AND SC_SUB_CD = SM_SUB_CD "
	strSql = strSql & " INNER JOIN MS_SUB_TEC ON DM_DOM_CD = ST_DOM_CD AND CM_TEC_CD = ST_TEC_CD "
	strSql = strSql & " INNER JOIN MS_TEC_MAS ON ST_TEC_CD = TM_TEC_CD "
	strSql = strSql & " WHERE PS_FLG = 1 AND CM_DEL_FLG <> 'Y' AND TM_TEC_CD = '" & strTecCd & "'"

	SET RStecrat = DBExec(strSql, "study")
	If Not RStecrat.EOF Then
		If IsNull (RStecrat(0)) Then ratpoint = 0 else	ratpoint = RStecrat(0)
	else
		ratpoint 	= 0
	End If

	ratHtml = ""
	For tecratingcnt = 1 to 5
		if tecratingcnt > cint(ratpoint) then imgno = "no" else imgno = "" end if
		ratHtml = ratHtml&"<img src='"&img_prof&"/ic_star"&imgno&".gif' width='13' height='13'>"
	Next
	RStecrat.close
	tecrating = ratHtml
End Function


' 2008-11-12 ������
' �Խ��� ��ȸ�� ����
' VisitHit("MS_BEST_INFO", "BI_INQR_CUNT", "BI_BEST_IDEN", BI_BEST_IDEN)
' VisitHit("���̺��", "������Ʈ �÷���", "������ȣ�÷�", ������ȣ��ġ ��)
Function VisitHit(tbl, ucol, icol, val)

	Dim iSQL, ingrow
	iSQL = " Update "& tbl &" SET  "
	'If tbl = "MS_BRD_CUS_SL" Then
	'iSQL = iSQL & " "& ucol &" = "& ucol &" + 2.7 "
	'Else
	'iSQL = iSQL & " "& ucol &" = "& ucol &" + 1.3 "
	'End If

    rndSec = (Second(Now()) Mod 5)
    if rndSec = 0 Or rndSec = 1 Then
        iSQL = iSQL & " "& ucol &" = "& ucol &" + 3.6 "
    Elseif rndSec = 2 Or rndSec = 3 Then
        iSQL = iSQL & " "& ucol &" = "& ucol &" + 2.7 "
    Else
        iSQL = iSQL & " "& ucol &" = "& ucol &" + 1.3 "
    End if

	iSQL = iSQL & " Where  "& icol &" = '"& val &"' "
	CALL ExeCuteSQL(iSQL, ingrow)

End Function


Function ChkSelect(val1,val2)
	if nullcheck(val1) = false and nullcheck(val2) = false Then
		If cstr(val1)=cstr(val2) Then
			ChkSelect="selected"
		End If
	End If
End Function

Function ChkChoice(val1,val2)
	if nullcheck(val1) = false and nullcheck(val2) = false Then
		If instr(val1,val2) > 0 Then
			ChkChoice="checked"
		End If
	End If
End Function




Function SecToTime (v)
	Dim tmp, h, m, s

	If v > (60*60*24) Then
		v = v Mod 24
	End If

	h = Int(v / 3600)
	tmp = v Mod 3600
	m = Int(tmp / 60)
	s = tmp Mod 60

	If Len(h) < 2 Then
		h = "0"&h
	End If

	If Len(m) < 2 Then
		m = "0"&m
	End If

	If Len(s) < 2 Then
		s = "0"&s
	End If

	SecToTime = h & ":" & m & ":" & s

End Function



'=========================================================================================================================================
' Base64 Encode / Decode
'=========================================================================================================================================
const BASE_64_MAP_INIT = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
dim nl
' zero based arrays
dim Base64EncMap(63)
dim Base64DecMap(127)

' must be called before using anything else
PUBLIC SUB initCodecs()
	' init vars
	nl = "<P>" & chr(13) & chr(10)

	' setup base 64
	dim max, idx
	max = len(BASE_64_MAP_INIT)

	for idx = 0 to max - 1
		' one based string
		Base64EncMap(idx) = mid(BASE_64_MAP_INIT, idx + 1, 1)
	Next

	for idx = 0 to max - 1
		Base64DecMap(ASC(Base64EncMap(idx))) = idx
	Next

END SUB

' encode base 64 encoded string
PUBLIC FUNCTION base64Encode(plain)

	if len(plain) = 0 then
		base64Encode = ""
		exit function
	end if

	dim ret, ndx, by3, first, second, third
	by3 = (len(plain) \ 3) * 3
	ndx = 1

	do while ndx <= by3
		first  = asc(mid(plain, ndx+0, 1))
		second = asc(mid(plain, ndx+1, 1))
		third  = asc(mid(plain, ndx+2, 1))
		ret = ret & Base64EncMap(  (first \ 4) AND 63 )
		ret = ret & Base64EncMap( ((first * 16) AND 48) + ((second \ 16) AND 15 ) )
		ret = ret & Base64EncMap( ((second * 4) AND 60) + ((third \ 64) AND 3 ) )
		ret = ret & Base64EncMap( third AND 63)
		ndx = ndx + 3
	Loop

	' check for stragglers
	if by3 < len(plain) then
		first  = asc(mid(plain, ndx+0, 1))
		ret = ret & Base64EncMap(  (first \ 4) AND 63 )

		if (len(plain) MOD 3 ) = 2 then
			second = asc(mid(plain, ndx+1, 1))
			ret = ret & Base64EncMap( ((first * 16) AND 48) + ((second \ 16) AND 15 ) )
			ret = ret & Base64EncMap( ((second * 4) AND 60) )
		else
			ret = ret & Base64EncMap( (first * 16) AND 48)
			ret = ret & "="
		end if

		ret = ret & "="
	end if

	base64Encode = ret
END FUNCTION

' decode base 64 encoded string
PUBLIC FUNCTION base64Decode(scrambled)

	if len(scrambled) = 0 then
		base64Decode = ""
		exit function
	end if

	' ignore padding
	dim realLen
	realLen = len(scrambled)
	do while mid(scrambled, realLen, 1) = "="
		realLen = realLen - 1
	loop
	dim ret, ndx, by4, first, second, third, fourth
	ret = ""
	by4 = (realLen \ 4) * 4
	ndx = 1

	do while ndx <= by4
		first  = Base64DecMap(asc(mid(scrambled, ndx+0, 1)))
		second = Base64DecMap(asc(mid(scrambled, ndx+1, 1)))
		third  = Base64DecMap(asc(mid(scrambled, ndx+2, 1)))
		fourth = Base64DecMap(asc(mid(scrambled, ndx+3, 1)))
		ret = ret & chr( ((first * 4) AND 255) +   ((second \ 16) AND 3))
		ret = ret & chr( ((second * 16) AND 255) + ((third \ 4) AND 15) )
		ret = ret & chr( ((third * 64) AND 255) +  (fourth AND 63) )
		ndx = ndx + 4
	Loop

	' check for stragglers, will be 2 or 3 characters
	if ndx < realLen then
		first  = Base64DecMap(asc(mid(scrambled, ndx+0, 1)))
		second = Base64DecMap(asc(mid(scrambled, ndx+1, 1)))
		ret = ret & chr( ((first * 4) AND 255) +   ((second \ 16) AND 3))

		if realLen MOD 4 = 3 then
			third = Base64DecMap(asc(mid(scrambled,ndx+2,1)))
			ret = ret & chr( ((second * 16) AND 255) + ((third \ 4) AND 15) )
		end if
	end if

	base64Decode = ret
END Function

' initialize
'     call initCodecs

' Testing code
'    dim inp, encode
'    inp = request.QueryString("input")
'    encode = base64Encode(inp)
'    response.write "Encoded value = " & encode & nl
'    response.write "Decoded value = " & base64Decode(encode) & nl

'=========================================================================================================================================

'=====================================
' NeoWebEditor HTML ���� ġȯ
'=====================================
Function strEnter(str)
	str = replace(str,chr(13),"\n")
	str = replace(str,chr(10),"\n")
	str = replace(str,"'","""")
	strEnter = str
End Function
'=====================================

'===========================================================================
'�Լ���		: getCalPoint
'INPUT 		: totPnt,pntRate
'��ɼ���	: �� ����Ʈ�� ���ؼ� ���� ����Ʈ���� ���� ����Ʈ ���
'===========================================================================
Function getCalPoint(totPnt,pntRate)
	getCalPoint = fix(totPnt * (pntRate /  100))
End Function

'===========================================================================
'�Լ���		: write_log
'INPUT 		: File_Path,File_Nm,mem_id,noti
'��ɼ���	: �ް����͵� ĳ����ȯ �� ��ȯ�� ĳ�� ������ ���Ϸ� �ۼ�
'===========================================================================
Function write_log(File_Path, File_Nm, mem_id, noti)
	Dim fso, ofile, slog

	myYear = Year(date)
	myMonth = Month(date)
	myDay = Day(date)

	slog =   Now() & " | " & mem_id & " | " & noti

	myDate = myYear & myMonth & myDay

	file = File_Path & "\"&File_Nm&"_"&myDate&".log"
	'response.write file
	Set fso = Server.CreateObject("Scripting.FileSystemObject")
	if fso.fileExists(file) then
		Set ofile = fso.OpenTextFile(file, 8, True)
	else
		Set ofile = fso.CreateTextFile(file, True)
	end if

	ofile.Writeline slog

	ofile.close
	Set ofile = Nothing
	Set fso = Nothing
End Function

''''�赿�� �߰� ����
Function getParamTxt(ByVal paramName, ByVal initValue, ByVal chkReplace)
	'�Ķ���͸�, �ʱⰪ, ����ǥġȯ, ���ѱ��ڼ�,
    Dim tmp
    tmp = Trim(sqlFilter(Request(paramName)))

    If tmp = "" Then
        getParamTxt = initValue
    Else
		If chkReplace = 1 Then
			tmp = Replace(tmp, "'", "''")
			'sql �΢h�� ����
			tmp = Replace_Param_Exec(tmp)
		End If


		getParamTxt = tmp
    End If
End Function

Function getParamTxt2(ByVal paramName, ByVal initValue, ByVal chkReplace)
	'�Ķ���͸�, �ʱⰪ, ����ǥġȯ, ���ѱ��ڼ�,
    Dim tmp
    tmp = Trim(sqlFilter(Request(paramName)))

    If tmp = "" Then
        getParamTxt2 = initValue
    Else
		If chkReplace = 1 Then
			tmp = Replace(tmp, "'", "''")
			'sql �΢h�� ����
			tmp = Replace_Param_Exec(tmp)
		End If


		getParamTxt2 = tmp
    End If
End Function

Function getParamInt(ByVal paramName, ByVal initValue)
    Dim tmp
    tmp = Trim(sqlFilter(Request(paramName)))

    If IsNumeric(Request(paramName)) and Request(paramName) <> "" Then
        tmp = CDbl(Request(paramName))
    Else
        tmp = initValue
    End If

    getParamInt = tmp
End Function

Function getTxt(ByVal paramVal, ByVal initValue, ByVal chkReplace)
    Dim tmp

    tmp = Trim(sqlFilter(Request(paramName)))

    If tmp = "" Then
        getTxt = initValue
    Else
		If chkReplace = 1 Then
			tmp = Replace(tmp, "'", "''")
			'sql �΢h�� ����
			tmp = Replace_Param_Exec(tmp)

		End If

		getTxt = tmp
    End If
End Function

Sub alert(byval msg, byval url)
	Dim arUrl
	response.write "<script>"
	If msg <> "" Then
		response.write "alert(""" & msg & """);"
	End If
	If url = "" Then
		response.write "history.go(-1);"
	ElseIf url = "end" Then
	Else
		If InStr(1,url,"::",1) = 0 Then
			response.write "document.location = """ & url & """;"
		Else
			arUrl = split(url,"::")
			If arUrl(0) = "close" Then
				response.write "top.window.close();"
			ElseIf arUrl(0) = "closeopener" Then
				response.write "top.opener.document.location = """ & arUrl(1) & """;"
				response.write "top.window.close();"
			ElseIf arUrl(0) = "closereload" Then
				response.write "top.window.close();"
				response.write "opener.document.location.reload();"
			Else
				response.write arUrl(0) & ".document.location = """ & arUrl(1) & """;"
			End If
		End If
	End If
	response.write "</script>"
	response.end
End Sub

Function Replace_Param_Exec (ori_text)
	ori_text = Replace_Param(ori_text, "insert ", "ins��rt ")
	ori_text = Replace_Param(ori_text, "update ", "updat�� ")
	ori_text = Replace_Param(ori_text, "delete ", "delet�� ")
	ori_text = Replace_Param(ori_text, "select ", "s��lect ")
	ori_text = Replace_Param(ori_text, "exec ", "ex��c ")
	ori_text = Replace_Param(ori_text, "drop ", "dr��p ")
	ori_text = Replace_Param(ori_text, "truncate ", "truncat�� ")
	ori_text = Replace_Param(ori_text, "create ", "creat�� ")
	ori_text = Replace_Param(ori_text, "alter ", "alt��r ")

	ori_text = Replace_Param(ori_text, "varchar ", "v��rchar ")
	ori_text = Replace_Param(ori_text, "cmdshell ", "cmdsh��ll ")
	ori_text = Replace_Param(ori_text, "script ", "s��ript ")
	ori_text = Replace_Param(ori_text, "iframe ", "ifr��me ")
	ori_text = Replace_Param(ori_text, "embed ", "��mbed ")
	ori_text = Replace_Param(ori_text, "object ", "��bject ")
	ori_text = Replace_Param(ori_text, "form ", "f��rm ")
	ori_text = Replace_Param(ori_text, "textarea ", "t��xtarea ")
	ori_text = Replace_Param(ori_text, "input ", "��nput ")
	ori_text = replace(ori_text, "..\\", ",,\\")
	ori_text = replace(ori_text, "..\/", ",,\/")

	Replace_Param_Exec = ori_text
End Function

'sql �΢h�� ������ �������� ���ں�ȯ �Լ�
Function Replace_Param (ori_text, search_text, replace_text)
	Dim regObj
	Set regObj	= New RegExp
	regObj.Pattern	= search_text	'���� ����
	regObj.IgnoreCase	= True	'��ҹ��� ���� ����
	regObj.Global	= True		'��ü �������� �˻�

	Replace_Param = regObj.Replace(ori_text, replace_text)
End Function

Function getClientIP()
	getClientIP = getTxt(Request.Servervariables("REMOTE_ADDR"),"",1)
End Function

Function getServerIP()
	getServerIP = getTxt(Request.Servervariables("LOCAL_ADDR"),"",1)
End Function

'----------------------------------------------------------------
'	ToDate(dateserialŸ�� or ��¥���ڿ�, ���ڿ� ����)
'	�Էµ� ������ ���ڿ� ������ ����.
'----------------------------------------------------------------
Function ToDate(byval dte, byval tp)
	Dim ret
	If isDate(dte) Then
		If tp = 120 Then
			ret = formatdatetime(dte,2) & " " & formatdatetime(dte,4) & ":" & right("0"&Second(dte),2)
		ElseIf tp = 102 Then
			ret = Year(dte) & "." &  Right("0" & Month(dte),2) & "." & Right("0" & Day(dte),2)
		ElseIf tp = 112 Then
			ret = Year(dte) & Right("0" & Month(dte),2) & Right("0" & Day(dte),2)
		ElseIf tp = 140 Then
			ret = Year(dte) & "-" & Right("0" & Month(dte),2) & "-" &  Right("0" & Day(dte),2) & " 00:00:00"
		ElseIf tp = 141 Then
			ret = Year(dte) & "-" & Right("0" & Month(dte),2) & "-" &  Right("0" & Day(dte),2) & " 23:59:59"
		ElseIf tp = 150 Then
			ret = Year(dte) & "�� " & Month(dte) & "�� " &  Day(dte) & "��"
		ElseIf tp = 50 Then
			ret = Month(dte) & "�� " &  Day(dte) & "��"
		ElseIf tp = 200 Then
			ret = Year(dte) & "-" & right("0"&Month(dte),2) & "-" & right("0"&Day(dte),2)
		End If
	Else
		ret = dte
	End If
	ToDate = ret
End Function

'#################################################
' Recordset�� Dictionary�� �迭��..
'#################################################
Function rsToDictionary(ByVal oRs)
	Dim arrFieldName(), arrDic()
	Dim objField, ii, rsDic, jj

	ReDim arrFieldName(oRs.Fields.Count)

	ii = 0
	For Each objField In oRs.Fields
		arrFieldName(ii) = objField.Name
		ii = ii + 1
	Next
	ReDim arrDic(oRs.RecordCount)

	ii = 0
	Do Until oRs.Eof
		Set rsDic = Server.CreateObject("Scripting.Dictionary")
		For jj = 0 To oRs.Fields.Count - 1
			rsDic.Item( arrFieldName(jj) ) = oRs.Fields(jj)
		Next
		Set arrDic(ii) = rsDic
		ii = ii + 1

		Set rsDic = Nothing
		oRs.MoveNext
	Loop

	rsToDictionary = arrDic
End Function

Function isRealServer()
	if Left(Request.Servervariables("LOCAL_ADDR"),3) ="10." then
		isRealServer = false
	else
		isRealServer = true
	end if
End Function

Public Function TXTtoHTML(ByVal strData)
	If VarType(strData)<>vbString Or Trim(strData) = "" Then
		TXTtoHTML = ""
		Exit Function
	End If
	Dim strOut
	strOut = Trim(CStr(strData))
'	strOut = Replace(strOut, vbCrLf , "<br>", 1, -1, vbBinaryCompare)		'	NewLine
'Response.write  InStr(strOut,Chr(10))
	strOut = Replace(strOut, Chr(13) , "")		'	NewLine
	strOut = Replace(strOut, Chr(10) , "<BR/>")		'	NewLine
	strOut = Replace(strOut, " ", "&nbsp;", 1, -1, vbBinaryCompare)			'	space
	strOut = Replace(strOut, "<script", "<xscript")
	strOut = Replace(strOut, "<object", "<xobject")
	strOut = Replace(strOut, "<embed", "<xembed")
	TXTtoHTML = strOut
End Function

'������ �ڸ������� �ڸ��� �� �ڿ� Ư�����ڿ� ���̱�
Function LimitShowStr(ByVal orgStr, ByVal size, ByVal appendStr)
    Dim ii, tmpSize, tmpStr

    tmpSize = 0
    For ii=1 to Len(orgStr)
        If Asc(Mid(orgStr, ii, 1)) < 0 Then
            tmpSize = tmpSize + 2
        Else
            tmpSize = tmpSize + 1
        End if

        if( tmpSize >= size ) Then Exit For
    Next

    tmpStr =  Left(orgStr, ii)

    if Len(tmpStr) < Len(orgStr) Then tmpStr = tmpStr & appendStr

    LimitShowStr = tmpStr
End function

Function URLDecode(Expression)
	Dim strSource, strTemp, strResult, strchr
	Dim lngPos, AddNum, IFKor

	strSource = Replace(Expression, "+", " ")
	For lngPos = 1 To Len(strSource)
		AddNum  = 2
		strTemp = Mid(strSource, lngPos, 1)

		If strTemp = "%" Then
			If lngPos + AddNum < Len(strSource) + 1 Then
				strchr = CInt("&H" & Mid(strSource, lngPos + 1, AddNum))

				If strchr > 130 Then
					AddNum = 5
					IFKor = Mid(strSource, lngPos + 1, AddNum)
					IFKor = Replace(IFKor, "%", "")
					strchr = CInt("&H" & IFKor )
				End If

				strResult = strResult & Chr(strchr)
				lngPos    = lngPos + AddNum
			End If
		Else
			strResult = strResult & strTemp
		End If
	Next
	URLDecode = strResult
End Function

'������ ���ڿ� ���� ���
Sub adminlog(byval msg)
	Dim adminlogsql2, UrlQueryString2, UrlForm2

	If Left(Request.ServerVariables("HTTP_CONTENT_TYPE"),19) = "multipart/form-data" Then
		UrlQueryString2 = ""
		UrlForm2 = ""
	Else
		UrlQueryString2 = request.QueryString
		UrlForm2 = request.Form
	End If
	If UrlQueryString2 = "" Then
		fullurl2 = "http://" & Request.ServerVariables("HTTP_HOST") & LCASE(Request.ServerVariables("PATH_INFO"))
	Else
		fullurl2 = "http://" & Request.ServerVariables("HTTP_HOST") & LCASE(Request.ServerVariables("PATH_INFO")) &"?" & UrlQueryString2
	End If

	msg = Replace(msg,"'","''")
	adminlogsql2 = "insert into MS_ADMIN_LOG (uid,strsql,uip,pageurl,pagereferer,param_q,param_q_d,param_f,param_f_d) " & _
					"values ('" & Request.Cookies("userid") & "','" & msg & "','" & Request.ServerVariables("REMOTE_ADDR") & "','" & fullurl2 & "','" & Request.ServerVariables("HTTP_REFERER") & "','" & Left(UrlQueryString2,500) & "','" & Left(URLDecode(UrlQueryString2),500) & "','" & Left(UrlForm2,500) & "','" & Left(URLDecode(UrlForm2),500) & "')"
	call DBExec(adminlogsql2,"study")
	DBClose(DBCon)
End Sub

'�п� ���л� ����
Function getCampStuYN(ByVal campCD)
	If cook_id <> "" Then
        vSql = ""
		vSql = vSql & "select top 1 ad_app_seq from dbo.md_app_std with (nolock) "
		vSql = vSql & "inner join dbo.md_app_dtl with (nolock) on as_app_no = ad_app_no "
		vSql = vSql & "inner join dbo.ms_chr_mas_offline with (nolock) on ad_chr_cd = cmo_chr_cd "
		vSql = vSql & "where as_mem_id = '" & cook_id & "' and ad_std_stat <> '4' and CMO_COMM_CD = '" & campCD & "' and ad_std_edt > getdate() "
		vSql = vSql & "union all "
		vSql = vSql & "select top 1 VM_CD from dbo.MD_VOD_MEM with (nolock) "
		vSql = vSql & "where VM_DEL_YN = 'N' and VM_CAMP_CD = '" & campCD & "' and VM_MEM_ID = '" & cook_id & "' "
		vSql = vSql & "and VM_SDT <= getdate() and VM_EDT >= getdate() "
	'	Response.write vSql
		call RSExec(oRs, 0, 3, vSql, "study")
		If oRs.EOF Or oRs. BOF Then
			getCampStuYN = "N"
		Else
			getCampStuYN = "Y"
		End If
		Call RSClose(oRs)
	Else
			getCampStuYN = "N"
	End If
End Function


'-----------------------------------------------------------------------
' API Ȥ�� ������ ȣ��� ������ �� �Ķ���� ���� (������ ���) by 9
'-----------------------------------------------------------------------
Function mSetLogger()
	If url = "" Then
		domain = "http://"&Request.ServerVariables("HTTP_HOST")
		url = Request.ServerVariables("PATH_INFO")
		strQueryString = Request.serverVariables("QUERY_STRING")
		param = ""
		strMethod = ""

		If strQueryString <> "" Then
			strMethod = "GET"
			url = domain & url
			If strQueryString <> "" Then param = "?"&strQueryString
		Else
			strMethod = "POST"
			For Each item In REQUEST.FORM
				For i_log=1 To REQUEST.FORM(item).Count
					If strFormString <> "" Then strFormString = strFormString&"&"
					strFormString =  strFormString & "" & item & "=" & REQUEST.FORM(item)(i_log)
				Next
			Next
			url = domain & url
			If strFormString <> "" Then param = "?"&strFormString
		End If
	End If
	param = sqlFilter(param)

	If Len(url) > 2500 Then url = Left(url,2497)&"..."
	If Len(param) > 2500 Then param = Left(param,2497)&"..."
	If Len(cook_id) > 50 Then cook_id = Left(cook_id,47)&"..."

	sql = sql & " INSERT INTO MB_SMARTAPP_HIS (SH_URL, SH_PARAM, SH_METHOD, SH_MEM_ID, SH_REG_DT ) "
	sql = sql & " SELECT '"&url&"','"&param&"','"&strMethod&"','"&cook_id&"',GETDATE() "
	'Call DBExec(sql,"study") : Call DBClose(DBCon)
End Function

'����Ͽ��� üũ
Function fncChkMobile()
	s12 = "N"
	strUserAgent = fncRequestVariables("HTTP_USER_AGENT")

	If Instr(strUserAgent,"Android") > 0 Then s12 = "Y"
	If Instr(strUserAgent,"Mobile Safari") > 0 Then s12 = "Y"
	If Instr(strUserAgent,"iPhone") > 0 Then s12 = "Y"
	If Instr(strUserAgent,"iPod") > 0 Then s12 = "Y"
	If Instr(strUserAgent,"iPad") > 0 Then s12 = "Y"

	fncChkMobile = s12
End Function

'����Ͽ��� üũ
Function fncMobileType()

	strUserAgent = fncRequestVariables("HTTP_USER_AGENT")

	If Instr(strUserAgent,"Android") > 0 Then MobileType = "Android"
	If Instr(strUserAgent,"Mobile Safari") > 0 Then MobileType = "Android"
	If Instr(strUserAgent,"iPhone") > 0 Then MobileType = "iOS"
	If Instr(strUserAgent,"iPod") > 0 Then MobileType = "iOS"
    If Instr(strUserAgent,"iPad") > 0 Then MobileType = "iOS"

    if MobileType = "" Then MobileType = "PC"

	fncMobileType = MobileType

End Function

'------------------------------------------------------------
'����Ʈ���׾۳� ���� üũ
'����� ������ ���� ����Ʈ���׳� �������� üũ by 9
'------------------------------------------------------------
Function fncGetSmartLearningFlg()
	ret = "N"
	strUserAgent = fncRequestVariables("HTTP_USER_AGENT")
	If Instr(strUserAgent,"net.megagong.smartlearning.android") > 0 Then ret = "Y"	'����Ʈ���� �ȵ���̵�
	If Instr(strUserAgent,"net.megagong.smartlearning.ios") > 0 Then ret = "Y"	'����Ʈ���� iOS

	fncGetSmartLearningFlg = ret
End Function

'------------------------------------------------------------
'���ܾ۳� ���� üũ
'����� ������ ���� ���ܳ� �������� üũ
'------------------------------------------------------------
Function fncGetSconnFlg()
	ret = "N"
	strUserAgent = fncRequestVariables("HTTP_USER_AGENT")
	If Instr(strUserAgent,"com.flexcil.sconn.android") > 0 Then ret = "Y"	'���� �ȵ���̵�
	If Instr(strUserAgent,"com.flexcil.sconn.ios") > 0 Then ret = "Y"	'���� iOS

	fncGetSconnFlg = ret
End Function

'------------------------------------------------------------
'����Ʈ���׾۳� ��� ���� Ȯ�� by crazytiger
'------------------------------------------------------------
Function fncGetAgentHeader(v)
	hval = ""

	if Trim(v) <> "" Then
		strUserAgent = fncRequestVariables("HTTP_USER_AGENT")

		if inStr(strUserAgent, v) > 0 Then
			s = inStr(strUserAgent, v) + Len(v) + 1
			e = inStr(s, strUserAgent, "/")
			if e = 0 Then e = Len(strUserAgent)
			if s > 0 And s < e Then
				hval = Trim(Mid(strUserAgent, s, (e - s)))
			End if
		End if
	End if

	fncGetAgentHeader = hval
End Function

'===========================================================================
'�Լ���		: fncCheckOfficeIp()
'INPUT 		: ����
'��ɼ���	: ������ ���� ���� üũ
'===========================================================================
Function fncCheckOfficeIp()
	user_ip		= fncRequestVariables("REMOTE_ADDR")		'�����	������

	rv = False

	If Left(user_ip,10) = "211.58.239" Or Left(user_ip,10) = "210.181.48" Then			' �Ǽ��� IP
		rv = True
	ElseIf Left(user_ip,6) = "10.1.1" Then			' �ؽ�Ʈ IP
		rv = True
	ElseIf Left(user_ip,6) = "10.1.2" Then			' �ؽ�Ʈ IP
		rv = True
	ElseIf Left(user_ip,6) = "10.1.3" Then			' �ؽ�Ʈ IP
		rv = True
	ElseIf Left(user_ip,7) = "10.10.0" Then			' �ؽ�Ʈ IP
		rv = True
	ElseIf Left(user_ip,9) = "10.240.0." Then		' ������������ ���и�PC
		rv = True
	ElseIf Left(user_ip,10) = "172.15.11." Then		' VPN IP
		rv = True
	ElseIf Left(user_ip,10) = "172.15.13." Then		' VPN IP
		rv = True
	ElseIf user_ip = "211.202.25.230" or user_ip = "222.236.70.75" Then			'���� �系 �������� ���� IP
		rv = True
	End If

	fncCheckOfficeIp = rv
End Function

'===========================================================================
'�Լ���		: fncWeekDay
'��ɼ���	: ����
'===========================================================================
Function fncWeekDay(d)
	wd = WeekDay(d)
	select case wd
	case 1 : fncWeekDay = "��"
	case 2 : fncWeekDay = "��"
	case 3 : fncWeekDay = "ȭ"
	case 4 : fncWeekDay = "��"
	case 5 : fncWeekDay = "��"
	case 6 : fncWeekDay = "��"
	case 7 : fncWeekDay = "��"
	end select
End Function

function strEncode(val)
	Val = Trim(val)
	rv = ""
	if isnull(val) = false then
		Dim objEnc
		Set objEnc= Server.CreateObject("mgDBInfo.DBInfo")
		rv = objEnc.encryptString(val)
	end if

	strEncode = rv
end function

function strDecode(val)
	Val = Trim(val)
	rv = ""
	if isnull(val) = false then
		if right(val,1) = "=" then
			Dim objEnc
			Set objEnc= Server.CreateObject("mgDBInfo.DBInfo")
			rv = objEnc.decryptString(val)
		end if
	end if

	strDecode = rv
end function

'===========================================================================
'�Լ���		: CheckPwd
'��ɼ���	: ��й�ȣ ��ȿ�� Ȯ�� �Լ�
'===========================================================================
Function CheckPwd(ByVal str)
	Dim objRegExp, match, matches

	Set objRegExp = New RegExp
	With objRegExp
		.Pattern = "^.*(?=.{10,20})(?=.*\d)(?=.*[a-zA-Z]).*$"
		.IgnoreCase = true
		Check = .Test(str)
	End With
	Set objRegExp = Nothing
	if len(str) < 10 or len(str) > 20 Then Check = false
	CheckPwd = Check
End Function

'===========================================================================
'�Լ���		: fncTel
'INPUT 		:
'��ɼ���	: ��ȭ��ȣ �ڸ���
'===========================================================================
function fncTel(num, flg)
    fncTel = ""
    strTelNum = ""

	num = replace(num,"-","")

    '07,08  123-4567 / 1234-5678
    '09,10  12-345-6789 / 12-3456-7890
    '10,11  123-456-7890 / 123-4567-8901
    '12     0505-5678-9012

    if len(num) >= 7 and len(num) <= 12 then
        select case len(num)
            case 7      '123-4567
                select case flg
                    case 1:     strTelNum = "02"
                    case 2:     strTelNum = left(num, 3)
                    case 3:     strTelNum = right(num, 4)
                end select

            case 8      '1234-5678
                select case flg
                    case 1:     strTelNum = "02"
                    case 2:     strTelNum = left(num, 4)
                    case 3:     strTelNum = right(num, 4)
                end select

            case 9      '12-345-6789
                if left(num, 2) = "02" then
                    select case flg
                        case 1:     strTelNum = left(num, 2)
                        case 2:     strTelNum = mid(num, 3, 3)
                        case 3:     strTelNum = right(num, 4)
                    end select
                end if

            case 10     '12-3456-7890 or 123-456-7890
                if left(num, 2) = "02" then
                    select case flg
                        case 1:     strTelNum = left(num, 2)
                        case 2:     strTelNum = mid(num, 3, 4)
                        case 3:     strTelNum = right(num, 4)
                    end select
                else
                    select case flg
                        case 1:     strTelNum = left(num, 3)
                        case 2:     strTelNum = mid(num, 4, 3)
                        case 3:     strTelNum = right(num, 4)
                    end select
                end if

            case 11     '123-4567-8901
                select case flg
                    case 1:     strTelNum = left(num, 3)
                    case 2:     strTelNum = mid(num, 4, 4)
                    case 3:     strTelNum = right(num, 4)
                end select

            case 12     '0505-5678-9012
                select case flg
                    case 1:     strTelNum = left(num, 4)
                    case 2:     strTelNum = mid(num, 5, 4)
                    case 3:     strTelNum = right(num, 4)
                end select

        end select

    else
        strTelNum = ""
    end if

    fncTel = strTelNum
end function

'======================================
' XSS ��ũ��Ʈ ����
'======================================
Function fncXssDel(str)

	str = Replace(str,"<script","")
	str = Replace(str,"</script>","")
	str = Replace(str,"<iframe","")
	str = Replace(str,"</iframe>","")
	str = Replace(str,"javascript","")
	str = Replace(str,"eval","")
	str = Replace(str,"onload","")
	str = Replace(str,"alert","")
	str = Replace(str,"onclick","")
	str = Replace(str,"onkeydown","")
	str = Replace(str,"onkeypress","")
	str = Replace(str,"onkeyup","")
	str = Replace(str,"onmouseover","")
	str = Replace(str,"onmouseout","")
	str = Replace(str,"onerror","")
	str = Replace(str,"url","")

	fncXssDel=str
End Function

Function fncMasking(flg, val)
    tmpVal = ""
    tmpLen = ""
    tmpDom = ""


    if val <> "" Then
        tmpLen = Len(val)
        Select Case flg
            Case "all" :
                For ff = 1 To tmpLen
                    tmpVal = tmpVal & "*"
                Next
            Case "name" :
                Select Case tmpLen
                    Case 1 : tmpVal = "*"
                    Case 2 : tmpVal = Left(val, 1) & "*"
					Case 3 : tmpVal = Left(val, 1) & "*" & Right(val, 1)
					Case 4 : tmpVal = Left(val, 1) & "*" & Right(val, 2)
                    Case Else :
                        tmpVal = Left(val, 1)
                        For ff = 1 To ((Fix(tmpLen) / 2))
                            tmpVal = tmpVal & "*"
                        Next
						tmpVal = tmpVal & Right(val, tmpLen - ff )
                End Select
            Case "id" :
                Select Case tmpLen
                    Case 1 : tmpVal = "*"
                    Case 2, 3, 4 : tmpVal = Left(val, tmpLen - 1) & "*"
                    Case Else :
                        tmpVal = Left(val, 4)
                        if tmpLen > 10 Then
                            For ff = 5 To tmpLen - 3
                                tmpVal = tmpVal & "*"
                            Next
                            tmpVal = tmpVal & Right(val, 3)
                        Else
                            For ff = 1 To tmpLen - 4
                                tmpVal = tmpVal & "*"
                            Next
                        End if
                End Select
            Case "email"
                tmpDom = Mid(val, inStr(val, "@"), tmpLen)
                tmpVal = Left(val, inStr(val, "@") - 1)
                tmpLen = Len(tmpVal)
                Select Case tmpLen
                    Case 1 : tmpVal = "*"
                    Case 2, 3, 4 : tmpVal = Left(val, tmpLen - 1) & "*"
                    Case Else :
                        tmpVal = Left(val, 4)
                        For ff = 1 To tmpLen - 4
                            tmpVal = tmpVal & "*"
                        Next
                End Select
                tmpVal = tmpVal & tmpDom
            Case "hp", "tel"
                if inStr(val, "-") > 0 Then
                    arrVal = Split(val, "-")
                    if isArray(arrVal) Then
                        For ff = 0 To Ubound(arrVal)
                            if ff = 1 Then
                                tmpVal = tmpVal & "-****-"
                            Else
                                tmpVal = tmpVal & arrVal(ff)
                            End if
                        Next
                    End if
                Else
                    Select Case tmpLen
                        Case 6 : tmpVal = Left(val, 2) & "-****"
                        Case 7 : tmpVal = Left(val, 3) & "-****"
                        Case 8 : tmpVal = Left(val, 4) & "-****"
                        Case 10 :
                            if Left(val, 2) = "02" Then
                                tmpVal = Left(val, 2) & "-****-" & Right(val, 4)
                            Else
                                tmpVal = Left(val, 3) & "-***-" & Right(val, 4)
                            End if
                        Case 11 : tmpVal = Left(val, 3) & "-****-" & Right(val, 4)
                        Case 12 : tmpVal = Left(val, 4) & "-****-" & Right(val, 4)
                        Case Else :
                            tmpVal = "-"
                    End Select
                End if
        End Select
    End if

	'if cook_id = "crazytiger" Then
	'	tmpVal = val
	'End if

    fncMasking = tmpVal

End Function

function GetGrpNewOffDay(sub_cd,dom_cd)
	rv = dateadd("d",-1,date)
	if dom_cd = "" then dom_Cd = h_dcd
	if dom_cd = "3" then
	elseif dom_cd = "4" then
		select case sub_cd
			case "16" :  rv = cdate("2022-06-15")	'16 - ���� : �ܹ��翵�� (�����ڵ�� ������)
		end select
	elseif dom_cd = "5" then
	end if

	GetGrpNewOffDay = rv
end function

function GetSubNewOffDay(sub_cd,dom_cd)
	rv = dateadd("d",-1,date)
	if dom_cd = "" then dom_Cd = h_dcd
	if dom_cd = "3" then
		select case sub_cd
			case "53" :  rv = cdate("2022-04-01")	'53 - �ѱ���ɷ°���
			case "54" :  rv = cdate("2022-04-01")	'54 - G-TELP
			case "57" :  rv = cdate("2022-12-22")	'57 - ����óġ�а���
		end select
	elseif dom_cd = "4" then
		select case sub_cd
			case "A2" :  rv = cdate("2022-09-28")	'A2 - �Ŀ��۹���
			case "A3" :  rv = cdate("2022-09-28")	'A3 - �����
			case "58" :  rv = cdate("2022-09-21")	'58 - ���౸��
			case "59" :  rv = cdate("2022-09-21")	'59 - �����ȹ
			case "77" :  rv = cdate("2022-09-28")	'77 - ����
			case "78" :  rv = cdate("2022-09-21")	'78 - ��ȣ����
			case "79" :  rv = cdate("2022-09-21")	'79 - ������ȸ��ȣ
			case "95" :  rv = cdate("2022-04-07")	'95 - ��ǻ���Ϲ�
			case "96" :  rv = cdate("2022-05-19")	'96 - ������ȣ��
			case "97" :  rv = cdate("2022-04-14")	'97 - ���뿪��
			case "98" :  rv = cdate("2022-05-12")	'98 - ��񼳰�
			case "60" :  rv = cdate("2022-06-15")	'60 - ������ġ��
		end select
	elseif dom_cd = "5" then
		select case sub_cd
			case "10" :  rv = cdate("2022-06-23")	'10 - ����
			case "11" :  rv = cdate("2022-06-23")	'11 - ����Ҽ۹�
			case "13" :  rv = cdate("2022-06-23")	'13 - ���뿪��
			case "12" :  rv = cdate("2022-06-23")	'12 - ��񼳰�
			case "14" :  rv = cdate("2022-06-23")	'14 - ������ȣ��
			case "15" :  rv = cdate("2022-06-23")	'15 - ��ǻ���Ϲ�
			case "A4" :  rv = cdate("2022-11-19")	'A4 - ���౸��
			case "A5" :  rv = cdate("2022-11-19")	'A5 - �����ȹ
		end select
	end if

	GetSubNewOffDay = rv
end function

function GetTecNewOffDay(tec_cd,dom_cd)
	rv = dateadd("d",-1,date)
    if dom_cd = "" then dom_Cd = h_dcd
   	if dom_cd = "4" then
		select case tec_cd
		' 9��

			case "zzangyoo" : rv = cdate("2020-11-04")
			case "jeonhangil" :  rv = cdate("2020-11-21")
			case "shin242" :  rv = cdate("2020-10-30")
			case "enp301" :  rv = cdate("2020-10-30")
			case "geek2991" :  rv = cdate("2020-10-30")
			case "72jinho" :  rv = cdate("2020-11-04")
			case "moonlaw" :  rv = cdate("2022-09-12")
			case "sinki79" :  rv = cdate("2020-11-19")
			case "cht016" :  rv = cdate("2020-11-04")
			case "carterv" :  rv = cdate("2020-11-28")
			case "jjangga1014" :  rv = cdate("2020-11-28")
			case "lhmlyslove" :  rv = cdate("2020-11-06")
			case "cht016" :  rv = cdate("2020-11-04")
			case "72jinho" :  rv = cdate("2020-11-04")
			case "wwnrwwnrdl" :  rv = cdate("2020-09-09")
			case "777jjj" :  rv = cdate("2020-11-06")
			case "shin242" :  rv = cdate("2020-10-30")
			case "econo114" :  rv = cdate("2020-12-25")
			case "allawyer" :  rv = cdate("2020-12-25")
			case "plower3362" :  rv = cdate("2021-01-01")
			case "amethyst02" :  rv = cdate("2020-12-31")
			case "tjenglish08" :  rv = cdate("2021-01-21")
			case "jaehoonlee" :  rv = cdate("2021-03-11")
			case "jamiedia" :  rv = cdate("2021-11-07")
			case "parkji" :  rv = cdate("2021-05-07")
			case "k1mj1njae" :  rv = cdate("2021-05-06")
			case "lyj4718" :  rv = cdate("2021-09-29") '�ּ�ó��
			case "kjh0512c" :  rv = cdate("2021-10-24")
			case "pt1969" :  rv = cdate("2022-01-01") '������T (2021-12-31�ϱ��� NEW ����)
			case "p3672303" :  rv = cdate("2022-01-22")
			case "khc8319" :  rv = cdate("2022-03-10")
			case "gosabu88" :  rv = cdate("2022-04-01") '�ּ�ó��
			case "nyuseoul" :  rv = cdate("2022-04-07")
			case "jinsyjin03" :  rv = cdate("2022-04-14")
			case "megalaw" :  rv = cdate("2022-05-04")'�鱤��T (2021-12-31�ϱ��� NEW ����)
			case "wjsgywls1" :  rv = cdate("2022-05-04")'��ȿ��T (2021-12-31�ϱ��� NEW ����)
			case "kobee0123" :  rv = cdate("2022-06-15")'���ȯT (2022-06-15�ϱ��� NEW ����)
			case "heesup1990" :  rv = cdate("2023-01-13")'����T (2023-01-13�ϱ��� NEW ����)
			case "ah02" :  rv = cdate("2022-08-21")
			case "nojoony1" :  rv = cdate("2022-09-23")	'�ڳ���T (2022-09-23�ϱ��� NEW ����)
			case "kimchanghun" :  rv = cdate("2022-09-21")
			case "118kimks" :  rv = cdate("2022-09-21")
			case "megapassnurse" :  rv = cdate("2022-09-28")
			case "cny1221" :  rv = cdate("2022-09-28")
			case "flymeca" :  rv = cdate("2022-09-28")
			case "classic7913" :  rv = cdate("2022-11-01")
		end select
	elseif dom_cd = "3" then
		select case tec_cd
		' �ҹ�
			case "tmddk4521" :  rv = cdate("2020-08-27")
			case "nojoony" :  rv = cdate("2020-11-05")
			case "potenjay" :  rv = cdate("2020-11-05")
			case "megaggoarimy" :  rv = cdate("2021-01-04")
			case "vision0911" :  rv = cdate("2021-01-04")
			case "tjenglish08" :  rv = cdate("2021-01-21")
			case "jjangss78" :  rv = cdate("2021-01-22")
			case "lyj4718" :  rv = cdate("2021-09-29") '�ּ�ó��
			case "jamiedia" :  rv = cdate("2022-04-01")
			case "jaehoonlee" :  rv = cdate("2022-04-01") '�ּ�ó��
			case "gosabu88" :  rv = cdate("2022-04-01") '�ּ�ó��
			case "wjsgywls1" :  rv = cdate("2022-05-04")'��ȿ��T (2021-12-31�ϱ��� NEW ����)
			case "sbhr" :  rv = cdate("2022-12-22")'������
		end select
	elseif dom_cd = "5" then
		select case tec_cd
		' ������
			case "mnih74" :  rv = cdate("2021-02-18")
			case "zzangyoo" :  rv = cdate("2020-11-04")
			case "enp301" :  rv = cdate("2021-06-04")
			case "shin242" :  rv = cdate("2020-10-30")
			case "72jinho" :  rv = cdate("2020-11-04")
			case "allawyer" :  rv = cdate("2020-12-25")
			case "geek2991" :  rv = cdate("2020-10-30")
			case "sinki79" :  rv = cdate("2020-11-19")
			case "econo114" :  rv = cdate("2020-12-31")
			case "jaehoonlee" :  rv = cdate("2021-03-11")
			case "jamiedia" :  rv = cdate("2021-03-11")
			case "lyj4718" :  rv = cdate("2021-09-29") '�ּ�ó��
			case "kjh0512c" :  rv = cdate("2021-10-24")
			case "pt1969" :  rv = cdate("2022-03-20")
			case "pesta71" :  rv = cdate("2022-05-04")
			case "megalaw" :  rv = cdate("2022-05-04")
			case "king1290" :  rv = cdate("2022-05-04")
			case "wjsgywls1" :  rv = cdate("2022-05-04")'��ȿ��T (2021-12-31�ϱ��� NEW ����)
			case "do20kg" :  rv = cdate("2022-05-11")
			case "jinsyjin03" :  rv = cdate("2022-06-23")
			case "ah02" :  rv = cdate("2022-08-21")
			case "jeonhangil" :  rv = cdate("2022-08-18")
			case "megaggoarimy" :  rv = cdate("2022-09-12")
			case "vision0911" :  rv = cdate("2022-10-21")
			case "kimchanghun" :  rv = cdate("2022-11-19")
			case "118kimks" :  rv = cdate("2022-11-19")
		end select
	end if
	GetTecNewOffDay = rv
end function

'======================================
'�Լ���	: SetNewIconP
'INPUT	: ������, ���̴� �Ⱓ(9/1�� 30 �Է� �� 10/1 ���� �����), ��Ÿ��
'��ɼ��� :  �Ⱓ�� ���� New �������� ���̰� ��
'======================================
Sub SetNewIconP(sdate, period, style)
	If Not IsDate(sdate) then Exit Sub
	If Datediff("d", CDate(sdate), CDate(lo_now_date)) <= period Then Response.Write "<img src="""&img_main&"/common/ic_new.gif"" style="""&style&""" />"
End Sub


'===========================================================================
'�Լ���		: fncURLEcode
'��ɼ���	: �ɼǿ� ���� ������ Ȯ�� �����ϵ��� ����
'===========================================================================
Function fncURLEcode(opt, str)
	if opt = "" Then opt = "N"
	if opt = "N" Then
		str = Server.URLEncode(str)
	End if
	fncURLEcode = str
End Function


'===========================================================================
'�Լ���		: fncSetDeviceNm
'��ɼ���	: ���𵨸� ����
'===========================================================================
Function fncSetDeviceNm(d)
	tmpD = ""
	if Trim(d) <> "" Then
		if inStr(d, "/") > 0 Then
			tmpD = Mid(d, inStr(d, "/") + 1, Len(d))
		Else
			tmpD = d
		End if

		if inStr(d, "iPhone") > 0 Then tmpD = "iPhone"
		if inStr(d, "iPad") > 0 Then tmpD = "iPad"
		if inStr(d, "iPod") > 0 Then tmpD = "iPod"
	Else
		tmpD = ""
	End if
	fncSetDeviceNm = tmpD
End Function


' ���� ������ ��Ʃ�� ���̺� ��� on/off ���� ��ȯ
Function youtube_live_banner_main(gbn)
	banner_on = "N"

	strSql = ""
	strSql = " SELECT 1234 FROM ME_TMP_VALUE WITH(NOLOCK) WHERE TV_GBN = '"&Trim(gbn)&"' AND TV_VAL = 'Y' "
	set objrs = dbexec(strsql, "study")
    if not (objrs.eof and objrs.bof) then
		if objrs(0) = 1234 then
        	banner_on = "Y"
		end if
    end if
    call dbclose(objrs)

	youtube_live_banner_main = banner_on
End Function

'������ ���� ���� ���� T/F (������ ���� ����)
Function armyOnly(a_ccd)
	strSql = ""
	strSql = " SELECT TOP 1 CM_DOM_CD FROM MS_CHR_MAS WITH(NOLOCK) WHERE CM_CHR_CD = "&a_ccd&" "
	set objrs = dbexec(strSql, "study")
    if not (objrs.eof and objrs.bof) then
		armyDom = objrs(0)
    end if
    call dbclose(objrs)

	'chrList = "/18261/18277/18702/18606/17312/16875/18269/17890/17891/17529/17318/18666/17847/"
	chrList = ""
	resultTf = False
	if armyDom = "5" and instr(chrList, "/"&cstr(a_ccd)&"/") > 0 then
		resultTf = True
	end if

	armyOnly = resultTf
End Function

%>

