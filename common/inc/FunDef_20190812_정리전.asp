<%
	'' 사이트 구분 텍스트 변경
	Function dom_cd_nm(dom_cd)
		If dom_cd = "1" Then
			dom_cd_nm = "경찰"
		ElseIf dom_cd = "2" Then
			dom_cd_nm = "검찰"
		ElseIf dom_cd = "3" Then
			dom_cd_nm = "소방"
		ElseIf dom_cd = "4" Then
			dom_cd_nm = "일행"
		End If
	End Function


	'' 과목 코드 텍스트 변경
	Function sub_cd_nm(sub_cd)
		If sub_cd = "01" Then
			sub_cd_nm = "경찰학개론"
		ElseIf sub_cd = "02" Then
			sub_cd_nm = "형법"
		ElseIf sub_cd = "03" Then
			sub_cd_nm = "형사소송법"
		ElseIf sub_cd = "04" Then
			sub_cd_nm = "경찰한국사"
		ElseIf sub_cd = "05" Then
			sub_cd_nm = "경찰영어"
		ElseIf sub_cd = "06" Then
			sub_cd_nm = "행정법"
		ElseIf sub_cd = "07" Then
			sub_cd_nm = "수사"
		ElseIf sub_cd = "08" Then
			sub_cd_nm = "적성/면접"
		ElseIf sub_cd = "09" Then
			sub_cd_nm = "경찰국어"
		ElseIf sub_cd = "10" Then
			sub_cd_nm = "경찰사회"
		ElseIf sub_cd = "11" Then
			sub_cd_nm = "경찰과학"
		ElseIf sub_cd = "12" Then
			sub_cd_nm = "경찰수학"
		ElseIf sub_cd = "13" Then
			sub_cd_nm = "가산점"
		ElseIf sub_cd = "14" Then
			sub_cd_nm = "모의고사"
		ElseIf sub_cd = "15" Then
			sub_cd_nm = "헌법"
		ElseIf sub_cd = "S1" Then
			sub_cd_nm = "승진형법"
		ElseIf sub_cd = "S2" Then
			sub_cd_nm = "승진형소법"
		ElseIf sub_cd = "S3" Then
			sub_cd_nm = "승진행정법"
		ElseIf sub_cd = "S4" Then
			sub_cd_nm = "승진실무종합"
		ElseIf sub_cd = "S5" Then
			sub_cd_nm = "승진실무1,2,3"
		ElseIf sub_cd = "99" Then
			sub_cd_nm = "공통"
		End If
	End Function
    
	'강좌속성
	Function fncChrClsNm(v_ccd)
		If v_ccd = "1" Then
			fncChrClsNm = "개념"
		ElseIf v_ccd = "2" Then
			fncChrClsNm = "개념+문제"
		ElseIf v_ccd = "3" Then
			fncChrClsNm = "문제+개념"
		ElseIf v_ccd = "4" Then
			fncChrClsNm = "문제풀이"
		End If
	End Function

	' fncToDestinationHost 함수에서 도메인 반환부분 별도 처리
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
            if paramHCode = "sobangcampus" Then move_host = "sobangcampusdev.megagong.net"
        Else
	        if paramHCode = "gong" Then move_host = "www.megagong.net"
            if paramHCode = "sobang" Then move_host = "sobang.megagong.net"
            if paramHCode = "campus" Then move_host = "campus.megagong.net"
            if paramHCode = "ansung" Then move_host = "ansung.megagong.net"
            if paramHCode = "sobangcampus" Then move_host = "sobangcampus.megagong.net"
        End if

		fncToMoveHost = move_host
	end function 

	' ***************************************************************************************
	' alias가 맞지 않을 경우 alias 변경 및 파라미터까지 같이 이동
	' Parameter
	'	fHost : 목적지 ex) sobang, police
	' Example
	'	Response.Redirect fncToDestinationHost("police") '경찰도메인이 아닐 경우 경찰로 이동
	' ***************************************************************************************
	Function fncToDestinationHost(dHost)
        move_host = fncToMoveHost()

		url = fncRequestVariables("PATH_INFO")
		strQueryString = fncRequestVariables("QUERY_STRING")	
		param = ""
		If strQueryString <> "" Then
			' GET 일 경우 
			url = "http://"&move_host & url
			param = "?"&strQueryString
		Else
			' POST 일 경우 GET 방식으로 변경되어 처리됨,,, (필요시 POST 방식으로 그대로 전달되도록 수정 요망) 
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
	
	'===========================================================================
	'함수명		: fncRequestUnescape
	'INPUT 		: Request명
	'기능설명	: ajax로 한글 받을때 escape 처리후 sqlfilter 처리
	'===========================================================================
	function fncRequestUnescape(varParam)
		fncRequestUnescape = Trim(sqlFilter(Unescape(Request(varParam))))
	end Function

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

		' 유효성체크는 나중에
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
'서브명		: rw
'INPUT 		: str
'기능설명	: response.write 축약
'===========================================================================
Sub rw (str)
	response.write str & "<br>"
End Sub

'===========================================================================
'서브명		: rend
'INPUT 		:
'기능설명	: response.end 축약
'===========================================================================
Sub rend ()
	response.End
End Sub

'===========================================================================
 '''''''''''''''''''''''''' 숫자인 거 .. formatnumber 로 표현하기 
'===========================================================================
    function f_num(fa_1,fa_2)       
       re_value = 0 

       if isnumeric(fa_1 ) and len(fa_1)>0 then
         re_value= formatnumber(fa_1,fa_2)
       end if

       f_num =re_value
    end function


'===========================================================================
 '''''''''''''''''''''''''' 2015년 02월 02일   로 표현 하자고 
'===========================================================================
    function f_date(f_d)
        re_value = ""
        re_value = left(f_d,4) +"년 "+ mid(f_d,6,2)+"월 "+  right(f_d,2) + "일"
        f_date = re_value
    end function


'===========================================================================
'함수명		: fncRequest
'INPUT 		: Request명
'기능설명	:
'===========================================================================
function fncRequest(varParam)
	fncRequest = Trim(sqlFilter(Request(varParam)))
end Function

'===========================================================================
'함수명		: fncRequestForm
'INPUT 		: Request명
'기능설명	:
'===========================================================================
function fncRequestForm(varParam)
	fncRequestForm = Trim(sqlFilter(Request.Form(varParam)))
end function

'===========================================================================
'함수명		: fncRequestCookie
'INPUT 		: Request명
'기능설명	:
'===========================================================================
function fncRequestCookie(varParam)

	select case lcase(varParam)
	    case "encval"   : cIndex = 0    '난수값
	    case "userid"   : cIndex = 1    '아이디
	    case "username" : cIndex = 2    '회원명
	    case "mem_type" : cIndex = 3    '회원타입
	    case "gong_type": cIndex = 4    '학년정보
	    case "whst"     : cIndex = 5
	    case else       : cIndex =-1    '사용자 정의 쿠키
    end select

    CK_USER_INFO = sqlFilter(Request.cookies("CK_USER_INFO"))

    if CK_USER_INFO <> "" and cIndex <> "" and cIndex>=0 then
        arrUserInfo = split(CK_USER_INFO,"|")
		If cIndex = 2 Then
	        returnValue = unescape(arrUserInfo(cIndex))
		ElseIf cIndex = 3 Then
            if (fncRequestVariables("REMOTE_ADDR") = "61.254.195.114") Or (Left(fncRequestVariables("REMOTE_ADDR"), 7) = "10.8.0.") Or (fncRequestVariables("REMOTE_ADDR") = "172.15.13.223") Or (fncRequestVariables("REMOTE_ADDR") = "172.15.13.220") Or (fncRequestVariables("REMOTE_ADDR") = "172.15.13.224") Then
                returnValue = arrUserInfo(cIndex)
            Else
                returnValue = Replace(arrUserInfo(cIndex), "E", "S")
            End if
		Else 
	        returnValue = arrUserInfo(cIndex)
		End If 
	else
        returnValue = sqlFilter(Request.cookies(varParam))
    end if

   	fncRequestCookie = trim(returnValue)

end function


'===========================================================================
'함수명		: SetUserInfoCookie
'INPUT 		: Cookie 설정 값
'기능설명	: CK_USER_INFO 값 설정 by 전형표
'===========================================================================
Function SetUserInfoCookie(byVal strName,byVal strValue)
    g_encval    = fncRequestCookie("encval")            '난수값
    g_userid    = fncRequestCookie("userid")            '아이디
    g_username  = escape(fncRequestCookie("username"))  '회원명은 espace실행 UPD 20170801 CHOIJH
    g_mem_type  = fncRequestCookie("mem_type")          '회원타입
    g_gong_type = fncRequestCookie("gong_type")         '학년정보
    g_whst      = fncRequestCookie("whst")

	select case lcase(strName)
	    case "encval"   : g_encval = strValue
	    case "userid"   : g_userid = strValue
	    case "username" : g_username = strValue
	    case "mem_type" : g_mem_type = strValue
	    case "gong_type": g_gong_type = strValue
	    case "whst"     : g_whst = strValue
    end select

    'CK_USER_INFO 쿠키 추가 by 전형표
	g_user_info = g_encval&"|"&g_userid&"|"&g_username&"|"&g_mem_type&"|"&g_gong_type&"|"&g_whst

    Call SetCookie("CK_USER_INFO",g_user_info)

End Function


'===========================================================================
'함수명		: fncRequestVariables
'INPUT 		: Request명
'기능설명	:
'===========================================================================
function fncRequestVariables(varParam)
	p = ""
	if ucase(varParam) = "REMOTE_ADDR" then        '리모트 ip 가져와서리
		p = Request.ServerVariables("HTTP_CLIENT_IP")
		if p = "" then   '암것도 없으면 ......
		   p = Request.ServerVariables(varParam)   'REMOTE_ADDR 다시 받고
		end if
	else
		p = Request.ServerVariables(varParam)      '나머지 서버 변수는 그냥사용
	end if
	fncRequestVariables = p
end function

'===========================================================================
'함수명		: Encrypt
'INPUT 		: src ==> 로그인 아이디
'기능설명	: 쿠키 값에 암호화
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
'함수명		: SetCookie
'INPUT 		: 쿠키명, 쿠키값
'기능설명	: 쿠키 값 세트
'===========================================================================
Function SetCookie(sCNM, sVal)
	Response.Cookies(sCNM) = LCase(sVal)
	Response.Cookies(sCNM).Path = "/"
	Response.Cookies(sCNM).Domain = "megagong.net"
End Function

'===========================================================================
'함수명		: SetCookie
'INPUT 		: 쿠키명, 쿠키값
'기능설명	: 기간 제한이 있는 쿠키 값 세트
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
'함수명		: SetMultiCookie
'INPUT 		: 쿠키명, 쿠키값
'기능설명	: 쿠키 값 세트
'===========================================================================
Function SetMultiCookie(sUNM, sLNM, sVal)
	Response.Cookies(sUNM)(sLNM) = LCase(sVal)
	Response.Cookies(sUNM).Path = "/"

	Response.Cookies(sUNM).Domain = "megagong.net"
End Function

'===========================================================================
'함수명		: CheckMemo
'INPUT 		: userid ==> 회원 아이디
'기능설명	: 쪽지확인
'===========================================================================
Function CheckMemo(userid)
	SQL="SELECT COUNT(*) FROM MS_PAPER_MAS WITH(NOLOCK) WHERE PM_RID='" & userid & "' AND PM_READFLG=1 AND ISNULL(PM_WRITEFLG,1) <> 3 AND PM_DEL_FLG1='N' "
	Sql = Sql & " AND NOT EXISTS(SELECT 1 FROM MS_PAPER_BLOCK WITH(NOLOCK) WHERE PB_MEM_ID='" & userid & "' AND PB_BLOCK_ID=PM_SID) "
	Set RS = DBexec(SQL,"study")
		memocnt = cint(RS(0))
	call DBClose(DBcon)
	if memocnt = 0 then memocnt = "0"
	Response.Cookies("slip") = memocnt
	Response.Cookies("slip").Path = "/"

    Response.Cookies("slip").Domain = "megagong.net"

End Function

'===========================================================================
'함수명		: MovePage
'INPUT 		: MAXSEQ,PagePerRecord,page,purl,fcolor
'기능설명	: 페이지 이동 Paging : 밀레니엄 게시판 경우 시퀀스가 descending되어 인덱스 걸려있을 경우
'===========================================================================
Function MovePage1(MAXSEQ,PagePerRecord,page,purl,fcolor)
	' 총페이지수 계산
	PAGE_COUNT = cLng(MAXSEQ / PagePerRecord)
	if MAXSEQ <= PagePerRecord then
		PAGE_COUNT = 1
	else
		SELECT CASE (MAXSEQ mod PagePerRecord)
		CASE 0 : PAGE_COUNT = (MAXSEQ / PagePerRecord)
		CASE ELSE : PAGE_COUNT = (MAXSEQ / PagePerRecord) + 1
		END SELECT
	end if
	response.write "<center><table align=center border=0><tr><td align=center>"
	if (page mod 10) = 0 then
		page10 = clng((page/10)-0.6)
	else
		page10 = clng((page)/10-0.5)
	end if
	startpage = page10*10 + 1

	if page10 >0 then
		response.write "<a href='"& purl &"&page="& startpage-10 &"'><font color="&fcolor&" face=굴림>이전 ◀</font></a>&nbsp; "
	else
		response.write "<font color="&fcolor&" face=굴림>이전 ◀</font>&nbsp; "
	end if

	for i = clng(startpage) to PAGE_COUNT
	if clng(i) = clng(page) then
		response.write "<font color="&fcolor&" face=굴림><b>|"& i &"|</b></font> "
	else
		response.write "<a href='"& purl &"&page="& i &"'><font color="&fcolor&" face=굴림>|"& i &"|</font></a> "
	end if
	if (i mod 10) = 0 then exit for
	next
	if clng(startpage+10) =< clng(PAGE_COUNT)  then
		response.write "&nbsp;<a href='"& purl &"&page="& startpage+10 &"'><font color="&fcolor&" face=굴림>▶ 다음</font></a>"
	else
		response.write "&nbsp;<font color="&fcolor&" face=굴림>▶ 다음</font>"
	end if
	response.write "</td></tr></table></center>"

End Function

'===========================================================================
'함수명		: MovePage
'INPUT 		: MAXSEQ,PagePerRecord,page,purl,fcolor
'기능설명	: 페이지 이동 Paging : 밀레니엄 게시판 경우 시퀀스가 descending되어 인덱스 걸려있을 경우
'===========================================================================
Function MovePage(MAXSEQ,PagePerRecord,page,purl,fcolor)
	' 총페이지수 계산
	PAGE_COUNT = cLng(MAXSEQ / PagePerRecord)

	if MAXSEQ <= PagePerRecord then
		PAGE_COUNT = 1
	else
		SELECT CASE (MAXSEQ mod PagePerRecord)
		CASE 0 : PAGE_COUNT = (MAXSEQ / PagePerRecord)
		CASE ELSE : PAGE_COUNT = INT((MAXSEQ / PagePerRecord)) + 1
		END SELECT
	end if

	if (page mod 10) = 0 then
		page10 = clng((page/10)-0.6)
	else
		page10 = clng((page)/10-0.5)
	end if
	startpage = page10*10 + 1

	response.write "<table border=0 cellspacing=2 cellpadding=0>"
	response.write "  <tr> "

	if startpage > 10 then
		response.write "    <td width=23 align=center><a href='"& purl &"&page=1'><img src='" & img_main & "/btn/left_aroow2.gif' alt='처음' ></a></td>"
	else
		response.write "    <td width=23 align=center><img src='" & img_main & "/btn/left_aroow2.gif' alt='처음' ></td>"
	end if

	if page10 >0 then
		response.write "    <td width=23 align=left><a href='"& purl &"&page="& startpage-10 &"'><img src='" & img_main & "/btn/left_aroow1.gif' alt='이전' ></a></td> "
	else
		response.write "    <td width=23 align=left><img src='" & img_main & "/btn/left_aroow1.gif' alt='이전' ></td> "
	end if

	response.write "    <td align=center>"
	for i = clng(startpage) to PAGE_COUNT

		if clng(i) = clng(page) then
			if (clng(i) mod 10) =1 then
				response.write "&nbsp;<span class='12p_n2'>" & i & "</span>"
			else
				response.write "&nbsp;&nbsp;<span class='12p_n2'>" & i & "</span>"
			end if
		else
			if (clng(i) mod 10)=1 then
				response.write "&nbsp;<a href='"& purl &"&page="& i &"'>" & i & "</a>"
			else
				response.write "&nbsp;&nbsp;<a href='"& purl &"&page="& i &"'>" & i & "</a>"
			end if
		end if
		if (i mod 10) = 0 then exit for
	next
	response.write "     </td> "

	if clng(startpage+10) =< clng(PAGE_COUNT)  then
		response.write "    <td width=23 align=right><a href='"& purl &"&page="& startpage+10 &"'><img src='" & img_main & "/btn/right_aroow1.gif' alt='다음'></a></td> "
	else
		response.write "    <td width=23 align=right><img src='" & img_main & "/btn/right_aroow1.gif' alt='다음'></td> "
	end if

	if page_count > i then
		response.write "    <td width=23 align=center><a href='"& purl &"&page="& page_count &"'><img src='" & img_main & "/btn/right_aroow2.gif' alt='마지막' ></a></td> "
	else
		response.write "    <td width=23 align=center><img src='" & img_main & "/btn/right_aroow2.gif' alt='마지막' ></td> "
	end if
	response.write "  </tr> "
	response.write "</table> "

End Function

'===========================================================================
'함수명		: MovePage_Cust
'INPUT 		: MAXSEQ,PagePerRecord,page,purl,fcolor
'기능설명	: 페이지 이동 Paging : 밀레니엄 게시판 경우 시퀀스가 descending되어 인덱스 걸려있을 경우
'===========================================================================
Function MovePage_Cust(MAXSEQ,PagePerRecord,page,purl,fcolor)

	Dim mpImg_First : mpImg_First = "<img src=""" & img_main & "/utimage/etc/110314/bt_first.gif"" alt=""처음"" width=""12"" height=""14"" id=""bt_arrow01"" onMouseOver=""MM_swapImage('bt_arrow01','','http://img.megaut.com/utimage/etc/110314/bt_first_on.gif',1);"" onMouseOut=""MM_swapImgRestore()"">"

	Dim mpImg_Back : mpImg_Back = "<img src=""" & img_main & "/utimage/etc/110314/bt_back.gif"" alt=""이전"" height=12 hspace=1 align=absmiddle id=""bt_arrow02"" onMouseOver=""MM_swapImage('bt_arrow02','','http://img.megaut.com/utimage/etc/110314/bt_back_on.gif',1)"" onMouseOut=""MM_swapImgRestore()"">"

	Dim mpImg_Next : mpImg_Next = "<img src=""" & img_main & "/utimage/etc/110314/bt_next.gif"" alt=""다음"" width=13 height=12 hspace=1 align=absmiddle id=""bt_arrow03"" onMouseOver=""MM_swapImage('bt_arrow03','','http://img.megaut.com/utimage/etc/110314/bt_next_on.gif',1)"" onMouseOut=""MM_swapImgRestore()"">"

	Dim mpImg_Last : mpImg_Last = "<img src=""" & img_main & "/utimage/etc/110314/bt_last.gif"" alt=""마지막"" height=12 hspace=1 align=absmiddle id=""bt_arrow04"" onMouseOver=""MM_swapImage('bt_arrow04','','http://img.megaut.com/utimage/etc/110314/bt_last_on.gif',1)"" onMouseOut=""MM_swapImgRestore()"">"

	Dim Page_Gbn : Page_Gbn = "&nbsp;&nbsp;&nbsp;"

	' 총페이지수 계산
	PAGE_COUNT = cLng(MAXSEQ / PagePerRecord)

	if MAXSEQ <= PagePerRecord then
		PAGE_COUNT = 1
	else
		SELECT CASE (MAXSEQ mod PagePerRecord)
		CASE 0 : PAGE_COUNT = (MAXSEQ / PagePerRecord)
		CASE ELSE : PAGE_COUNT = INT((MAXSEQ / PagePerRecord)) + 1
		END SELECT
	end if

	if (page mod 10) = 0 then
		page10 = clng((page/10)-0.6)
	else
		page10 = clng((page)/10-0.5)
	end if
	startpage = page10*10 + 1

	response.write "<table align=center border=0>"
	response.write "	<tr> "

	if startpage > 10 then
		response.write "		<td width=23 align=center><a href='"& purl &"&page=1'>"&mpImg_First&"</a></td>"
	else
		response.write "		<td width=23 align=center>"&mpImg_First&"</td>"
	end if

	if page10 >0 then
		response.write "		<td width=23 align=left><a href='"& purl &"&page="& startpage-10 &"'>"&mpImg_Back&"</a></td> "
	else
		response.write "		<td width=23 align=left>"&mpImg_Back&"</td> "
	end if

	response.write "		<td align=center>"
	for i = clng(startpage) to PAGE_COUNT

		if clng(i) = clng(page) then
			if (clng(i) mod 10) =1 then
				response.write "			<strong><font color="&fcolor&">" & i & "</font></strong>"
			else
				response.write "			<font color=C0B6AC>"&Page_Gbn&"</font><strong><font color="&fcolor&">" & i & "</font></strong>"
			end if
		else
			if (clng(i) mod 10)=1 then
				response.write "			<a href='"& purl &"&page="& i &"'>" & i & "</a>"
			else
				response.write "			<font color=C0B6AC>"&Page_Gbn&"</font><a href='"& purl &"&page="& i &"'>" & i & "</a>"
			end if
		end if
		if (i mod 10) = 0 then exit for
	next
	response.write "		</td> "

	if clng(startpage+10) =< clng(PAGE_COUNT)  then
		response.write "		<td width=23 align=right><a href='"& purl &"&page="& startpage+10 &"'>"&mpImg_Next&"</a></td> "
	else
		response.write "		<td width=23 align=right>"&mpImg_Next&"</td> "
	end if

	if page_count > i then
		response.write "		<td width=23 align=center><a href='"& purl &"&page="& page_count &"'>"&mpImg_Last&"</a></td> "
	else
		response.write "		<td width=23 align=center>"&mpImg_Last&"</td> "
	end if
	response.write "	</tr> "
	response.write "</table> "

End Function

'===========================================================================
'함수명		: MovePage_Cust2
'INPUT 		: MAXSEQ,PagePerRecord,page,purl,fcolor
'기능설명	: 페이지 이동 Paging : 밀레니엄 게시판 경우 시퀀스가 descending되어 인덱스 걸려있을 경우
'===========================================================================
Function MovePage_Cust2(MAXSEQ,PagePerRecord,page,purl,fcolor)

	Dim mpImg_First : mpImg_First = "<img src=""" & img_main & "/utimage/etc/110520_1/bt_first.gif"" alt=""처음"" width=""17"" height=""12"" id=""bt_arrow01"">"

	Dim mpImg_Back : mpImg_Back = "<img src=""" & img_main & "/utimage/etc/110520_1/bt_back.gif"" alt=""이전"" width=""13"" height=""12"" id=""bt_arrow02"">"

	Dim mpImg_Next : mpImg_Next = "<img src=""" & img_main & "/utimage/etc/110520_1/bt_next.gif"" alt=""다음"" width=""13"" height=""12"" id=""bt_arrow03"">"

	Dim mpImg_Last : mpImg_Last = "<img src=""" & img_main & "/utimage/etc/110520_1/bt_last.gif"" alt=""마지막"" width=""17"" height=""12"" id=""bt_arrow04"">"

	Dim Page_Gbn : Page_Gbn = "&nbsp;&nbsp;&nbsp;"

	' 총페이지수 계산
	PAGE_COUNT = cLng(MAXSEQ / PagePerRecord)

	if MAXSEQ <= PagePerRecord then
		PAGE_COUNT = 1
	else
		SELECT CASE (MAXSEQ mod PagePerRecord)
		CASE 0 : PAGE_COUNT = (MAXSEQ / PagePerRecord)
		CASE ELSE : PAGE_COUNT = INT((MAXSEQ / PagePerRecord)) + 1
		END SELECT
	end if

	if (page mod 10) = 0 then
		page10 = clng((page/10)-0.6)
	else
		page10 = clng((page)/10-0.5)
	end if
	startpage = page10*10 + 1

	response.write "<table align=center border=0>"
	response.write "	<tr> "

	if startpage > 10 then
		response.write "		<td width=23 align=center><a href='"& purl &"&page=1'>"&mpImg_First&"</a></td>"
	else
		response.write "		<td width=23 align=center>"&mpImg_First&"</td>"
	end if

	if page10 >0 then
		response.write "		<td width=23 align=left><a href='"& purl &"&page="& startpage-10 &"'>"&mpImg_Back&"</a></td> "
	else
		response.write "		<td width=23 align=left>"&mpImg_Back&"</td> "
	end if

	response.write "		<td align=center>"
	for i = clng(startpage) to PAGE_COUNT

		if clng(i) = clng(page) then
			if (clng(i) mod 10) =1 then
				response.write "			<strong><font color="&fcolor&">" & i & "</font></strong>"
			else
				response.write "			<font color=C0B6AC>"&Page_Gbn&"</font><strong><font color="&fcolor&">" & i & "</font></strong>"
			end if
		else
			if (clng(i) mod 10)=1 then
				response.write "			<a href='"& purl &"&page="& i &"'>" & i & "</a>"
			else
				response.write "			<font color=C0B6AC>"&Page_Gbn&"</font><a href='"& purl &"&page="& i &"'>" & i & "</a>"
			end if
		end if
		if (i mod 10) = 0 then exit for
	next
	response.write "		</td> "

	if clng(startpage+10) =< clng(PAGE_COUNT)  then
		response.write "		<td width=23 align=right><a href='"& purl &"&page="& startpage+10 &"'>"&mpImg_Next&"</a></td> "
	else
		response.write "		<td width=23 align=right>"&mpImg_Next&"</td> "
	end if

	if page_count > i then
		response.write "		<td width=23 align=center><a href='"& purl &"&page="& page_count &"'>"&mpImg_Last&"</a></td> "
	else
		response.write "		<td width=23 align=center>"&mpImg_Last&"</td> "
	end if
	response.write "	</tr> "
	response.write "</table> "

End Function


'===========================================================================
'함수명		: MovePage
'INPUT 		: MAXSEQ,PagePerRecord,page,purl,fcolor
'기능설명	: 페이지 이동 Paging : 밀레니엄 게시판 경우 시퀀스가 descending되어 인덱스 걸려있을 경우
'===========================================================================
Function MovePage_View(MAXSEQ,PagePerRecord,page,purl,fcolor)
	' 총페이지수 계산
	PAGE_COUNT = cLng(MAXSEQ / PagePerRecord)

	if MAXSEQ <= PagePerRecord then
		PAGE_COUNT = 1
	else
		SELECT CASE (MAXSEQ mod PagePerRecord)
		CASE 0 : PAGE_COUNT = (MAXSEQ / PagePerRecord)
		CASE ELSE : PAGE_COUNT = INT((MAXSEQ / PagePerRecord)) + 1
		END SELECT
	end if

	if (page mod 10) = 0 then
		page10 = clng((page/10)-0.6)
	else
		page10 = clng((page)/10-0.5)
	end if
	startpage = page10*10 + 1

	response.write "<table border=0 cellspacing=2 cellpadding=0>"
	response.write "  <tr> "

	if startpage > 10 then
		response.write "    <td width=23 align=center><a href='"& purl &"&page=1'><img src=" & img_common & "/btn/icon_first.gif width=16 height=16 border=0></a></td>"
	else
		response.write "    <td width=23 align=center><img src=" & img_common & "/btn/icon_first.gif width=16 height=16></td>"
	end if

	if page10 >0 then
		response.write "    <td width=23 align=left><a href='"& purl &"&compage="& startpage-10 &"'><img src=" & img_common & "/btn/icon_back.gif width=16 height=16 border=0></a></td> "
	else
		response.write "    <td width=23 align=left><img src=" & img_common & "/btn/icon_back.gif width=16 height=16></td> "
	end if

	response.write "    <td align=center>"
	for i = clng(startpage) to PAGE_COUNT

		if clng(i) = clng(page) then
			if (clng(i) mod 10) =1 then
				response.write "		<strong><font color=423F3D>" & i & "</font></strong>"
			else
				response.write "		<font color=C0B6AC> | </font><strong><font color=423F3D>" & i & "</font></strong>"
			end if
		else
			if (clng(i) mod 10)=1 then
				response.write "		<a href='"& purl &"&compage="& i &"'>" & i & "</a>"
			else
				response.write "		<font color=C0B6AC> | </font><a href='"& purl &"&compage="& i &"'>" & i & "</a>"
			end if
		end if
		if (i mod 10) = 0 then exit for
	next
	response.write "     </td> "

	if clng(startpage+10) =< clng(PAGE_COUNT)  then
		response.write "    <td width=23 align=right><a href='"& purl &"&compage="& startpage+10 &"'><img src=" & img_common & "/btn/icon_next.gif width=16 height=16 border=0></a></td> "
	else
		response.write "    <td width=23 align=right><img src=" & img_common & "/btn/icon_next.gif width=16 height=16></td> "
	end if

	if page_count > i then
		response.write "    <td width=23 align=center><a href='"& purl &"&compage="& page_count &"'><img src=" & img_common & "/btn/icon_end.gif width=16 height=16 border=0></a></td> "
	else
		response.write "    <td width=23 align=center><img src=" & img_common & "/btn/icon_end.gif width=16 height=16></td> "
	end if
	response.write "  </tr> "
	response.write "</table> "

End Function
'===========================================================================
'함수명		: MovePage2
'INPUT 		: RecCount (전체 레코드 수)
'			  PagePerRecord (페이징할때 페이지당 보여줄 레코드 수)
'			  page (페이지번호), purl (이동할 페이지, 인자값포함), fcolor(페이징 폰트 컬러)
'기능설명	: 페이지 이동 Paging : 전체 레코드수를 함수를 call 하기 전에 구한 경우
'===========================================================================
Function MovePage2(RecCount,PagePerRecord,page,purl,fcolor)

    ' 총페이지수 계산
	PAGE_COUNT = cLng(RecCount / PagePerRecord)

	if RecCount <= PagePerRecord then
		PageCount = 1
	else
		SELECT CASE (RecCount mod PagePerRecord)
		CASE 0
			PageCount = fix(RecCount / PagePerRecord)
		CASE ELSE
			PageCount = fix(RecCount / PagePerRecord) + 1
		End SELECT
	End if

	if (page mod 10) = 0 then
		page10 = clng((page/10)-0.6)
	else
		page10 = clng((page)/10-0.5)
	End if

	startpage = page10*10 + 1

	response.write "<center><table align=center border=0><tr><td align=center>"

	if startpage > 10 then
		response.write "    <td width=14 align=center><a href='"& purl &"&page=1'><img src=" & img_main & "/btn/left_aroow2.gif height=12 hspace=2 align=absmiddle></a></td>"
	else
		response.write "    <td width=14 align=center><a href='"& purl &"&page=1'><img src=" & img_main & "/btn/left_aroow2.gif hspace=2 align=absmiddle></a></td>"
	end if

	if page10 > 0 then
		response.write "    <td width=14 align=left><a href='"& purl &"&page="& startpage-10 &"'><img src=" & img_main & "/btn/left_aroow1.gif hspace=2 align=absmiddle></a></td> "
	else
		response.write "    <td width=14 align=left><a href='"& purl &"&page=1'><img src=" & img_main & "/btn/left_aroow1.gif hspace=2 align=absmiddle></a></td> "
	end if

	response.write "<td align=center>"
	for i = clng(startpage) to PageCount
	if clng(i) = clng(page) then
		if (clng(i) mod 10) =1 then
			response.write "		<strong><class=12p_n2>" & i & "</font></strong>&nbsp;"
		else
			response.write "		<strong><class=12p_n2>" & i & "</font></strong>&nbsp;"
		end if
	else
		if (clng(i) mod 10)=1 then
			response.write "		<a href='"& purl &"&page="& i &"'>" & i & "</a>&nbsp;"
		else
			response.write "		<a href='"& purl &"&page="& i &"'>" & i & "</a>&nbsp;"
		end if
	end if
	if (i mod 10) = 0 then exit for
	next
	response.write "</td> "

	if clng(startpage+10) =< clng(PageCount)  then
		response.write "    <td width=14 align=right><a href='"& purl &"&page="& startpage+10 &"'><img src=" & img_main & "/btn/right_aroow1.gif hspace=2 align=absmiddle></a></td> "
	else
		response.write "    <td width=14 align=right><a href='"& purl &"&page="& PageCount &"'><img src=" & img_main & "/btn/right_aroow1.gif hspace=2 align=absmiddle></a></td> "
	end if

	if page_count > i then
		response.write "    <td width=14 align=center><a href='"& purl &"&page="& PageCount &"'><img src=" & img_main & "/btn/right_aroow2.gif hspace=2 align=absmiddle></a></td> "
	else
		response.write "    <td width=14 align=center><a href='"& purl &"&page="& PageCount &"'><img src=" & img_main & "/btn/right_aroow2.gif hspace=2 align=absmiddle></a></td> "
	end if
	response.write "</tr></table></center>"
End Function

'===========================================================================
'함수명		: MovePage
'INPUT 		: MAXSEQ,PagePerRecord,page,purl,fcolor
'기능설명	: 페이지 이동 Paging : 밀레니엄 게시판 경우 시퀀스가 descending되어 인덱스 걸려있을 경우
'===========================================================================
Function MovePage3(MAXSEQ,PagePerRecord,page,purl,fcolor)
	' 총페이지수 계산
	PAGE_COUNT = cLng(MAXSEQ / PagePerRecord)

	if MAXSEQ <= PagePerRecord then
		PAGE_COUNT = 1
	else
		SELECT CASE (MAXSEQ mod PagePerRecord)
		CASE 0 : PAGE_COUNT = (MAXSEQ / PagePerRecord)
		CASE ELSE : PAGE_COUNT = INT((MAXSEQ / PagePerRecord)) + 1
		END SELECT
	end if

	if (page mod 10) = 0 then
		page10 = clng((page/10)-0.6)
	else
		page10 = clng((page)/10-0.5)
	end if
	startpage = page10*10 + 1

	response.write "<table border=0 cellspacing=2 cellpadding=0>"
	response.write "  <tr> "

	if page10 >0 then
		response.write "    <td width=23 align=left><a href='"& purl &"&page="& startpage-10 &"'><img src=" & img_common & "/btn/icon_back.gif width=16 height=16 border=0></a></td> "
	else
		response.write "    <td width=23 align=left><img src=" & img_common & "/btn/icon_back.gif width=16 height=16></td> "
	end if

	response.write "    <td align=center>"
	for i = clng(startpage) to PAGE_COUNT

		if clng(i) = clng(page) then
			if (clng(i) mod 10) =1 then
				response.write "		<strong><font color=423F3D>" & i & "</font></strong>"
			else
				response.write "		<font color=C0B6AC> | </font><strong><font color=423F3D>" & i & "</font></strong>"
			end if
		else
			if (clng(i) mod 10)=1 then
				response.write "		<a href='"& purl &"&page="& i &"'>" & i & "</a>"
			else
				response.write "		<font color=C0B6AC> | </font><a href='"& purl &"&page="& i &"'>" & i & "</a>"
			end if
		end if
		if (i mod 10) = 0 then exit for
	next
	response.write "     </td> "

	if clng(startpage+10) =< clng(PAGE_COUNT)  then
		response.write "    <td width=23 align=right><a href='"& purl &"&page="& startpage+10 &"'><img src=" & img_common & "/btn/icon_next.gif width=16 height=16 border=0></a></td> "
	else
		response.write "    <td width=23 align=right><img src=" & img_common & "/btn/icon_next.gif width=16 height=16></td> "
	end if
	response.write "  </tr> "
	response.write "</table> "

End Function


'===========================================================================
'함수명		: MovePage4
'INPUT 		: MAXSEQ,PagePerRecord,page,purl,fcolor
'기능설명	: 페이지 이동 Paging : 밀레니엄 게시판 경우 시퀀스가 descending되어 인덱스 걸려있을 경우
'===========================================================================
Function MovePage4(MAXSEQ,PagePerRecord,page,purl,fcolor)
	' 총페이지수 계산
	PAGE_COUNT = cLng(MAXSEQ / PagePerRecord)

	if MAXSEQ <= PagePerRecord then
		PAGE_COUNT = 1
	else
		SELECT CASE (MAXSEQ mod PagePerRecord)
		CASE 0 : PAGE_COUNT = (MAXSEQ / PagePerRecord)
		CASE ELSE : PAGE_COUNT = INT((MAXSEQ / PagePerRecord)) + 1
		END SELECT
	end if

	if (page mod 10) = 0 then
		page10 = clng((page/10)-0.6)
	else
		page10 = clng((page)/10-0.5)
	end if
	startpage = page10*10 + 1

	response.write "<table border=0 cellspacing=2 cellpadding=0>"
	response.write "  <tr> "

	if startpage > 10 then
		response.write "    <td width=23 align=center><a href='"& purl &"&page=1'><img src=" & img_common & "/btn/icon_first.gif width=16 height=16 border=0></a></td>"
	else
		response.write "    <td width=23 align=center><img src=" & img_common & "/btn/icon_first.gif width=16 height=16></td>"
	end if

	if page10 >0 then
		response.write "    <td width=23 align=left><a href='"& purl &"&page="& startpage-10 &"'><img src=" & img_common & "/btn/icon_back.gif width=16 height=16 border=0></a></td> "
	else
		response.write "    <td width=23 align=left><img src=" & img_common & "/btn/icon_back.gif width=16 height=16></td> "
	end if

	response.write "    <td align=center>"
	for i = clng(startpage) to PAGE_COUNT

		if clng(i) = clng(page) then
			if (clng(i) mod 10) =1 then
				response.write "		<strong><font color='#ffffff'>" & i & "</font></strong>"
			else
				response.write "		<font color='#C0B6AC'> | </font><strong><font color='#ffffff'>" & i & "</font></strong>"
			end if
		else
			if (clng(i) mod 10)=1 then
				response.write "		<a href='"& purl &"&page="& i &"'><font color='#ffffff'>" & i & "</font></a>"
			else
				response.write "		<font color='#C0B6AC'> | </font><a href='"& purl &"&page="& i &"'><font color='#ffffff'>" & i & "</font></a>"
			end if
		end if
		if (i mod 10) = 0 then exit for
	next
	response.write "     </td> "

	if clng(startpage+10) =< clng(PAGE_COUNT)  then
		response.write "    <td width=23 align=right><a href='"& purl &"&page="& startpage+10 &"'><img src=" & img_common & "/btn/icon_next.gif width=16 height=16 border=0></a></td> "
	else
		response.write "    <td width=23 align=right><img src=" & img_common & "/btn/icon_next.gif width=16 height=16></td> "
	end if

	if page_count > i then
		response.write "    <td width=23 align=center><a href='"& purl &"&page="& page_count &"'><img src=" & img_common & "/btn/icon_end.gif width=16 height=16 border=0></a></td> "
	else
		response.write "    <td width=23 align=center><img src=" & img_common & "/btn/icon_end.gif width=16 height=16></td> "
	end if
	response.write "  </tr> "
	response.write "</table> "

End Function


'===========================================================================
'함수명		: MovePage
'INPUT 		: MAXSEQ,PagePerRecord,page,purl,fcolor
'기능설명	: 페이지 이동 Paging : 밀레니엄 게시판 경우 시퀀스가 descending되어 인덱스 걸려있을 경우
'===========================================================================
Function MovePage5(MAXSEQ,PagePerRecord,page,purl,fcolor)
	' 총페이지수 계산
	PAGE_COUNT = cLng(MAXSEQ / PagePerRecord)

	if MAXSEQ <= PagePerRecord then
		PAGE_COUNT = 1
	else
		SELECT CASE (MAXSEQ mod PagePerRecord)
		CASE 0 : PAGE_COUNT = INT(MAXSEQ / PagePerRecord)
		CASE ELSE : PAGE_COUNT = INT((MAXSEQ / PagePerRecord)) + 1
		END SELECT
	end if

	if (page mod 10) = 0 then
		page10 = clng((page/10)-0.6)
	else
		page10 = clng((page)/10-0.5)
	end if
	startpage = page10*10 + 1

	response.write "<table height='16' border='0' cellpadding='0' cellspacing='0'>"
	response.write "  <tr> "

	if startpage > 10 then
		response.write "    <td width='20'><a href='"& purl &"&page=1'><img src='" & img_teacher & "/newteacher/20071128_jjy/nobt_pre2.gif' width='16' height='16'></a></td>"
	else
		response.write "    <td width='20'><img src='" & img_teacher & "/newteacher/20071128_jjy/nobt_pre2.gif' width='16' height='16'></td>"
	end if

	if page10 >0 then
		response.write "    <td width='24'><a href='"& purl &"&page="& startpage-10 &"'><img src='" & img_teacher & "/newteacher/20071128_jjy/nobt_pre1.gif' width='16' height='16'></a></td> "
	else
		response.write "    <td width='24'><img src='" & img_teacher & "/newteacher/20071128_jjy/nobt_pre1.gif' width='16' height='16'></td> "
	end if

	response.write "    <td align=center>"
	for i = clng(startpage) to clng(PAGE_COUNT)

		if clng(i) = clng(page) then
			if (clng(i) mod 10) =1 then
				response.write "		<span class='style2'>" & i & "</span>"
			else
				response.write "		l <span class='style2'>" & i & "</span>"
			end if
		else
			if (clng(i) mod 10)=1 then
				response.write "		<a href='"& purl &"&page="& i &"'><span class='txt5'>" & i & "</span></a>"
			else
				response.write "		<span class='txt5'>| </span><a href='"& purl &"&page="& i &"'><span class='txt5'>" & i & "</span></a>"
			end if
		end if
		if (i mod 10) = 0 then exit for
	next
	response.write "     </td> "

	if clng(startpage+10) =< clng(PAGE_COUNT)  then
		response.write "    <td width='24' align='right'><a href='"& purl &"&page="& startpage+10 &"'><img src='" & img_common & "/btn/icon_next.gif' width=16 height=16 border=0></a></td> "
	else
		response.write "    <td width='24' align='right'><img src='" & img_teacher & "/newteacher/20071128_jjy/nobt_next1.gif' width='16' height='16'></td> "
	end if

	if clng(page_count) > i then
		response.write "    <td width='20' align='right'><a href='"& purl &"&page="& page_count &"'><img src='" & img_common & "/btn/icon_end.gif' width=16 height=16 border=0></a></td> "
	else
		response.write "    <td width='20' align='right'><img src='" & img_teacher & "/newteacher/20071128_jjy/nobt_next2.gif' width='16' height='16'></td> "
	end if
	response.write "  </tr> "
	response.write "</table> "

End Function


'===========================================================================
'함수명		: MovePage6
'INPUT 		: RecCount (전체 레코드 수)
'			  PagePerRecord (페이징할때 페이지당 보여줄 레코드 수)
'			  page (페이지번호), purl (이동할 페이지, 인자값포함), fcolor(페이징 폰트 컬러)
'기능설명	: 페이지 이동 Paging : 전체 레코드수를 함수를 call 하기 전에 구한 경우
'===========================================================================
Function MovePage6(RecCount,PagePerRecord,page,purl,fcolor)

    ' 총페이지수 계산
	PAGE_COUNT = cLng(RecCount / PagePerRecord)

	if RecCount <= PagePerRecord then
		PageCount = 1
	else
		SELECT CASE (RecCount mod PagePerRecord)
		CASE 0
			PageCount = (RecCount / PagePerRecord)
		CASE ELSE
			PageCount = (RecCount / PagePerRecord) + 1
		End SELECT
	End if

	if (page mod 10) = 0 then
		page10 = clng((page/10)-0.6)
	else
		page10 = clng((page)/10-0.5)
	End if

	startpage = page10*10 + 1

	response.write "<center><table align=center border=0><tr><td align=center>"

	if startpage > 10 then
		response.write "    <td width=23 align=center><a href='"& purl &"?page=1'><img src=" & img_main & "/btn/bt_first.gif width=13 height=12 hspace=5 align=absmiddle></a></td>"
	else
		response.write "    <td width=23 align=center><img src=" & img_main & "/btn/bt_first.gif width=13 height=12 hspace=5 align=absmiddle></td>"
	end if

	if page10 > 0 then
		response.write "    <td width=23 align=left><a href='"& purl &"?page="& startpage-10 &"'><img src=" & img_main & "/btn/bt_back.gif width=13 height=12 hspace=5 align=absmiddle></a></td> "
	else
		response.write "    <td width=23 align=left><img src=" & img_main & "/btn/bt_back.gif width=13 height=12 hspace=5 align=absmiddle></td> "
	end if

	response.write "<td align=center>"
	for i = clng(startpage) to PageCount
	if clng(i) = clng(page) then
		if (clng(i) mod 10) =1 then
			response.write "		<strong><font color=423F3D>" & i & "</font></strong>"
		else
			response.write "		<img src=" & img_main & "/btn/board_img03.gif width=3 height=10 hspace=5><strong><font color=423F3D>" & i & "</font></strong>"
		end if
	else
		if (clng(i) mod 10)=1 then
			response.write "		<a href='"& purl &"?page="& i &"'>" & i & "</a>"
		else
			response.write "		<img src=" & img_main & "/btn/board_img03.gif width=3 height=10 hspace=5><a href='"& purl &"?page="& i &"'>" & i & "</a>"
		end if
	end if
	if (i mod 10) = 0 then exit for
	next
	response.write "</td> "

	if clng(startpage+10) =< clng(PageCount)  then
		response.write "    <td width=23 align=right><a href='"& purl &"?page="& startpage+10 &"'><img src=" & img_main & "/btn/bt_next.gif width=13 height=12 hspace=5 align=absmiddle></a></td> "
	else
		response.write "    <td width=23 align=right><img src=" & img_main & "/btn/bt_next.gif width=13 height=12 hspace=5 align=absmiddle></td> "
	end if

	if page_count > i then
		response.write "    <td width=23 align=center><a href='"& purl &"?page="& page_count &"'><img src=" & img_main & "/btn/bt_last.gif width=13 height=12 hspace=5 align=absmiddle></a></td> "
	else
		response.write "    <td width=23 align=center><img src=" & img_main & "/btn/bt_last.gif width=13 height=12 hspace=5 align=absmiddle></td> "
	end if
	response.write "</tr></table></center>"
End Function
'===========================================================================
'함수명		: MovePage7
'INPUT 		: RecCount (전체 레코드 수)
'			  PagePerRecord (페이징할때 페이지당 보여줄 레코드 수)
'			  page (페이지번호), purl (이동할 페이지, 인자값포함), fcolor(페이징 폰트 컬러)
'기능설명	: 페이지 이동 Paging : 전체 레코드수를 함수를 call 하기 전에 구한 경우
'===========================================================================
Function MovePage7(RecCount,PagePerRecord,page,purl,fcolor)

    ' 총페이지수 계산
	PAGE_COUNT = cLng(RecCount / PagePerRecord)

	if RecCount <= PagePerRecord then
		PageCount = 1
	else
		SELECT CASE (RecCount mod PagePerRecord)
		CASE 0
			PageCount = (RecCount / PagePerRecord)
		CASE ELSE
			PageCount = (RecCount / PagePerRecord) + 1
		End SELECT
	End if

	if (page mod 10) = 0 then
		page10 = clng((page/10)-0.6)
	else
		page10 = clng((page)/10-0.5)
	End if

	startpage = page10*10 + 1

	'response.write "<center><table align=center border=0><tbody><tr><td align=center>"
	response.write "<center><table align=center border=0><tbody><tr>"

	if startpage > 10 then
		response.write "    <td width=23 align=center><a href='"&purl&"&page=1'><img src=" & img_main & "/btn/bt_first.gif width=13 height=12 hspace=5 align=absmiddle></a></td>"
	else
		response.write "    <td width=23 align=center><img src=" & img_main & "/btn/bt_first.gif width=13 height=12 hspace=5 align=absmiddle></td>"
	end if

	if page10 > 0 then
		response.write "    <td width=23 align=left><a href='"& purl &"&page="& startpage-10 &"'><img src=" & img_main & "/btn/bt_back.gif width=13 height=12 hspace=5 align=absmiddle></a></td> "
	else
		response.write "    <td width=23 align=left><img src=" & img_main & "/btn/bt_back.gif width=13 height=12 hspace=5 align=absmiddle></td> "
	end if

	response.write "<td align=center>"
	for i = clng(startpage) to PageCount
	if clng(i) = clng(page) then
		if (clng(i) mod 10) =1 then
			response.write "		<strong><font color=423F3D>" & i & "</font></strong>"
		else
			response.write "		<img src=" & img_main & "/btn/board_img03.gif width=3 height=10 hspace=5><strong><font color=423F3D>" & i & "</font></strong>"
		end if
	else
		if (clng(i) mod 10)=1 then
			response.write "		<a href='"&purl&"&page="& i &"'>" & i & "</a>"
		else
			response.write "		<img src=" & img_main & "/btn/board_img03.gif width=3 height=10 hspace=5><a href='"&purl&"&page="& i &"'>" & i & "</a>"
		end if
	end if
	if (i mod 10) = 0 then exit for
	next
	response.write "</td> "

	if clng(startpage+10) =< clng(PageCount)  then
		response.write "    <td width=23 align=right><a href='"&purl&"&page="& startpage+10 &"'><img src=" & img_main & "/btn/bt_next.gif width=13 height=12 hspace=5 align=absmiddle></a></td> "
	else
		response.write "    <td width=23 align=right><img src=" & img_main & "/btn/bt_next.gif width=13 height=12 hspace=5 align=absmiddle></td> "
	end if

	if page_count > i then
		response.write "    <td width=23 align=center><a href='"&purl&"&page="& page_count &"'><img src=" & img_main & "/btn/bt_last.gif width=13 height=12 hspace=5 align=absmiddle></a></td> "
	else
		response.write "    <td width=23 align=center><img src=" & img_main & "/btn/bt_last.gif width=13 height=12 hspace=5 align=absmiddle></td> "
	end if
	response.write "</tr><tbody></table></center>"
End Function
'===========================================================================
'함수명		: SET_GOURL
'INPUT 		: URL ==> 이동할 주소
'기능설명	: 이동할 주소를 세팅
'===========================================================================
Function SET_GOURL(URL)
	Response.Cookies("goURL") = URL
	Response.Cookies("goURL").Path = "/"
	Response.Cookies("goURL").Domain = "megagong.net"
End Function

'===========================================================================
'함수명		: SET_GO_DOMAIN
'INPUT 		: DOMAIN ==> 이동할 도메인
'기능설명	: 이동할 도메인을 세팅
'===========================================================================
Function SET_GO_DOMAIN(DOMAIN)
	Response.Cookies("goDOMAIN") = DOMAIN
	Response.Cookies("goDOMAIN").Path = "/"
	Response.Cookies("goDOMAIN").Domain = "megagong.net"
End Function

'===========================================================================
'함수명		: GO_LOGIN
'INPUT 		:
'기능설명	: 로그인 사용자가 아닌 경우 로그인페이지로 이동
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

 	encval_id = TRIM(fncRequestCookie("encval"))			'암호화아이디
 	if cstr(Encrypt(uId)) <> encval_id then
    
		Response.Redirect "/member/logout_sql.asp"
 	end if
End function

'===========================================================================
'함수명		: NOT_PARENTS
'INPUT 		:
'기능설명	: 학부모 이용금지후 학부모 메인 페이지로 이동
'===========================================================================
Function NOT_PARENTS()
	if right(ucase(fncRequestCookie("userid")),4) = "_PRT" then
		response.write "<script>alert('본 서비스는 학생회원 전용 서비스입니다.');location.href='/parent/parent_main.asp';</script>"
	End If
End function

'===========================================================================
'함수명		: NOT_STUDENTS
'INPUT 		:
'기능설명	: 학생 이용금지후 사이트 메인 페이지로 이동
'===========================================================================
Function NOT_STUDENTS()
	if right(ucase(fncRequestCookie("userid")),4) <> "_PRT" then
		response.write "<script>location.href='/';</script>"
	End If
End function

'===========================================================================
'함수명		: Replace_Number
'INPUT 		: str ==> 문자열
'기능설명	: 문자중의 숫자를 빼내는 함수
'===========================================================================
Function Replace_Number(str)
	for i=48 to 57
		str=replace(str,cstr(chr(i)),"")
	next
	Replace_Number=str
end Function

'===========================================================================
'함수명		: Replace_Money
'INPUT 		: money ==> 금액
'기능설명	: 숫자를 금액단위로 바꿈 : 3000 --> 3,000
'===========================================================================
Function Replace_Money(money)
	IF money > 0 THEN
		money = MID(FormatCurrency(money), 2, LEN(FormatCurrency(money)))
	END IF
	Replace_Money = money
End Function

'===========================================================================
'함수명		: date_db
'INPUT 		:
'기능설명	: System DATE -> yyyy-mm-dd
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
'함수명		: date_time
'INPUT 		:
'기능설명	: System DATE -> yyyymmddhhmmss
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
'함수명		: date_nude
'INPUT 		: InpDate ==> yyyy/mm/dd
'기능설명	: yyyy/mm/dd -> yyyymmdd
'===========================================================================
Function date_nude(InpDate)
	DbDate = left(InpDate,4)
	DbDate = DbDate & mid(InpDate,6,2)
	DbDate = DbDate & right(InpDate,2)
	date_nude = DbDate
End Function

'===========================================================================
'함수명		: date_list
'INPUT 		: InpDate ==> yyyymmdd
'기능설명	: yyyymmdd -> yyyy-mm-dd
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
'함수명		: date_form
'INPUT 		: InpDate ==> yyyymmdd
'기능설명	: yyyymmdd -> yyyy/mm/dd
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
'함수명		: date_ad
'INPUT 		: InpDate ==> yyyymmddhhmmss
'기능설명	: yyyymmddhhmmss -> [yyyy-mm-dd hh:mm:ss.000]
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
'함수명		: get_dday
'INPUT 		: InpDate ==> yyyymmdd, yyyy-mm-dd
'기능설명	: D-Day 날짜 계산(현재일자 기준)
'===========================================================================
Function get_dday(InpDate)
	If Len(InpDate) = 8 Then
		InpDate = date_list(InpDate)
	End if

	get_dday = datediff("d",date(), InpDate)
End Function

'===========================================================================
'함수명		: get_cday
'INPUT 		: InpDate ==> date number
'기능설명	: D-Day 날짜 계산(특정일자 기준)
'===========================================================================
Function get_cday(InpDate)
	get_cday = dateadd("d", InpDate, date())
End Function

'===========================================================================
'함수명		: str_last
'INPUT 		: Str ==> 검사할 문자열,Comp ==> 검사조건
'기능설명	: Str : "d:\test\test.gif",comp : "\",return : "test.gif"
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
'함수명		: str_first
'INPUT 		: Str ==> 검사할 문자열,Comp ==> 검사조건
'기능설명	: Str : "d:\test\test.gif",comp : "\",return : "d:"
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
'함수명		: STR_TO_SEARCH
'INPUT 		: cur_str ==> 검사할 문자열
'기능설명	: STR을 DB에 넣을때
'===========================================================================
Function STR_TO_SEARCH(cur_str)
	cur_str = replace(cur_str,"'","")
	cur_str = replace(cur_str,"&","")
	cur_str = replace(cur_str,"<","")
	cur_str = replace(cur_str,">","")
	cur_str = replace(cur_str,";","")
	cur_str = replace(cur_str,"%","")
	cur_str = replace(cur_str,"-","")
	STR_TO_SEARCH = cur_str
End Function

'===========================================================================
'함수명		: STR_TO_DB
'INPUT 		: cur_str ==> 검사할 문자열
'기능설명	: STR을 DB에 넣을때
'===========================================================================
Function STR_TO_DB(cur_str)
   if trim(cur_str) <> "" Then
           cur_str = Replace(cur_str,"'","''")
           cur_str = Replace(cur_str,"&amp;","&")
           cur_str = Replace(cur_str,"&cute;", "")
           cur_str = Replace(cur_str,"&nbsp&#59;", "")
           cur_str = Replace(cur_str,"&","&amp;")
           cur_str = Replace(cur_str,"<","&lt;")
           cur_str = Replace(cur_str,">","&gt;")
           cur_str = Replace(cur_str," ?", "")
           cur_str = Replace(cur_str,"\;", "")
           cur_str = Replace(cur_str,"(","&#40;")
           cur_str = Replace(cur_str,")","&#41;")
           cur_str = Replace(cur_str,"#","&#35;")
           cur_str = Replace(cur_str,"JavaScript","")
           cur_str = Replace(cur_str,"Vbscript","")
           cur_str = Replace(cur_str,"script","")
           cur_str = Replace(cur_str,"cookie","")
           cur_str = Replace(cur_str,"location","")
   end if
           STR_TO_DB = cur_str
End Function

'===========================================================================
'함수명		: STR_TO_DB1
'INPUT 		: cur_str ==> 검사할 문자열
'기능설명	: STR을 DB에 넣을때 (공지사항 제외 - 자바스크립트)
'===========================================================================
Function STR_TO_DB1(cur_str)
   if trim(cur_str) <> "" Then
           cur_str = Replace(cur_str,"'","''")
           cur_str = Replace(cur_str,"&amp;","&")
           cur_str = Replace(cur_str,"&cute;", "")
           cur_str = Replace(cur_str,"&nbsp&#59;", "")
           cur_str = Replace(cur_str,"&","&amp;")
           cur_str = Replace(cur_str,"<","&lt;")
           cur_str = Replace(cur_str,">","&gt;")
           cur_str = Replace(cur_str," ?", "")
           cur_str = Replace(cur_str,"\;", "")
           cur_str = Replace(cur_str,"(","&#40;")
           cur_str = Replace(cur_str,")","&#41;")
           cur_str = Replace(cur_str,"#","&#35;")
           cur_str = Replace(cur_str,"Vbscript","")
           cur_str = Replace(cur_str,"cookie","")
           cur_str = Replace(cur_str,"location","")
   end if
           STR_TO_DB1 = cur_str
End Function
'===========================================================================
'함수명		: DB_TO_STR
'INPUT 		: cur_str ==> 검사할 문자열
'기능설명	: DB 에서 STR 뺄때
'===========================================================================
Function DB_TO_STR(cur_str)
  if trim(cur_str) <> "" Then
           cur_str = Replace(cur_str,"''","'")
           cur_str = Replace(cur_str,"""","'")
           cur_str = Replace(cur_str,"&amp;","&")
           cur_str = Replace(cur_str,"&lt;","<")
           cur_str = Replace(cur_str,"&gt;",">")
           cur_str = Replace(cur_str,"&cute;", "")
           cur_str = Replace(cur_str,"&nbsp&#59;", "")
           cur_str = Replace(cur_str," ?", "")
           cur_str = Replace(cur_str,"\;", "")
           cur_str = Replace(cur_str,"&#35;","#")
           cur_str = Replace(cur_str,"&#40;","(")
           cur_str = Replace(cur_str,"&#41;",")")
           cur_str = Replace(cur_str,"JavaScript","")
           cur_str = Replace(cur_str,"Vbscript","")
           cur_str = Replace(cur_str,"script","")
           cur_str = Replace(cur_str,"cookie","")
           cur_str = Replace(cur_str,"location","")
           cur_str = Replace(cur_str,"&#039", "'")
  end if
  DB_TO_STR = cur_str
End Function

'===========================================================================
'함수명		: DB_TO_STR1
'INPUT 		: cur_str ==> 검사할 문자열
'기능설명	: DB 에서 STR 뺄때 (공지사항 제외 - 자바스크립트)
'===========================================================================
Function DB_TO_STR1(cur_str)
  if trim(cur_str) <> "" Then
           cur_str = Replace(cur_str,"''","'")
           cur_str = Replace(cur_str,"""","'")
           cur_str = Replace(cur_str,"&amp;","&")
           cur_str = Replace(cur_str,"&lt;","<")
           cur_str = Replace(cur_str,"&gt;",">")
           cur_str = Replace(cur_str,"&cute;", "")
           cur_str = Replace(cur_str,"&nbsp&#59;", "")
           cur_str = Replace(cur_str," ?", "")
		   cur_str = Replace(cur_str,"\;", "")
           cur_str = Replace(cur_str,"&#35;","#")
           cur_str = Replace(cur_str,"&#40;","(")
           cur_str = Replace(cur_str,"&#41;",")")
           cur_str = Replace(cur_str,"Vbscript","")
           cur_str = Replace(cur_str,"cookie","")
           cur_str = Replace(cur_str,"location","")
  end if
  DB_TO_STR1 = cur_str
End Function


'Function DB_TO_STR1(cur_str)

'	If Trim(cur_str) <> "" Then
'		cur_str = replace(cur_str,"''","'")
'		cur_str = replace(cur_str,"&amp;lt;","&amppp;lttt;")
'		cur_str = replace(cur_str,"&amp;gt;","&amppp;gttt;")
'		cur_str = replace(cur_str,"&amp;","&")
'		cur_str = replace(cur_str,"&lt;","<")
'		cur_str = replace(cur_str,"&gt;",">")
'		cur_str = Replace(cur_str,"&cute;", "")
'		cur_str = Replace(cur_str,"&nbsp&#59;", "")
'		cur_str = Replace(cur_str," ?", "")
		'cur_str = Replace(cur_str,"? ", "")
'		cur_str = Replace(cur_str, "&#59;", ";")

'		cur_str = Replace(cur_str,"&amppp;lttt;", "&lt;")
'		cur_str = Replace(cur_str,"&amppp;gttt;", "&gt;")
'	End if
'	DB_TO_STR1 = cur_str

'End Function


'===========================================================================
'함수명		: STR_TO_DB_EDIT
'INPUT 		: cur_str ==> 검사할 문자열
'기능설명	: DB 에서 STR 뺄때
'===========================================================================
Function DB_TO_STR_EDIT(cur_str)
	if cur_str = "" or isnull(cur_str) then
	else
	cur_str = replace(cur_str,"''","'")
	cur_str = replace(cur_str,"&amp;","&")
	cur_str = replace(cur_str,"&lt;","<")
	cur_str = replace(cur_str,"&gt;",">")
	cur_str = replace(cur_str,"<BR>", Chr(13)&Chr(10))
	cur_str = replace(cur_str,"<br>", Chr(13)&Chr(10))
	end if
	DB_TO_STR_EDIT = cur_str
End Function



'===========================================================================
'함수명		: ChrReConvert
'INPUT 		: str ==> 역치환할 문자열
'기능설명	: 문자열 역치환
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
'함수명		: ConvertChr
'INPUT 		: str ==> 치환할 문자열
'기능설명	: 문자열 치환
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
'함수명		: domnmref
'INPUT 		: str ==> 치환할 문자열
'기능설명	: 영역명을 약어로 변환
'===========================================================================
Function domnmref(str)
	str = Replace(str, "언어영역", "언어")
	str = Replace(str, "수리영역", "수리")
	str = Replace(str, "사회탐구", "사탐")
	str = Replace(str, "과학탐구", "과탐")
	str = Replace(str, "외국어영역", "외국어")
	domnmref = str
End Function


'===========================================================================
'함수명		: EscapeQuery
'INPUT 		: str ==> 검색 질의 문자열
'작성일자   : 2004.11.29
'작성자     : 오 영 석
'기능설명	: 검색 질의 문자열
'===========================================================================
Function escapeQuery( str )
	Dim ret
	ret = ""
	For i=1 To Len(str)
		c = Mid(str,i,1)
		Select Case c
			Case "\"
				ret = ret & "\\"
			Case "'"
				ret = ret & "\'"
			Case chr(34)
				ret = ret & "\" & chr(34)
			Case "*"
				ret = ret & "\*"
			Case else
				ret = ret & c
		End Select
	Next

	escapeQuery = ret
End Function

'===========================================================================
'함수명		: formatDate
'INPUT 		: dt ==> 날짜 문자열
'INPUT      : sep ==> 구분자 (예를들면, '-' or '/' or ' ' )
'작성일자   : 2004.11.29
'작성자     : 오 영 석
'기능설명	: 날짜를 Date타입으로 Formating하여 문자열 변환
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
'함수명		: formatHtml
'INPUT 		: str ==> 검색 결과의 문자열
'작성일자	: 2004.11.29
'작성자		: 오 영 석
'기능설명	: 검색 내용을 HTML로 format
'수정자		: 2004/12/17 최병권 줄간격이 넓어서 리턴을 없엠.
'===========================================================================
Function formatHtml( str )
	formatHtml = Replace(str,CHR(13)&Chr(10),"")
End Function

'===========================================================================
'함수명		: ZeroFormat
'INPUT 		: str ==> 문자열, inum ==> 포멧문자길이
'작성일자	: 2004.12.11
'작성자		: 최병권
'기능설명	: 포맷에 맞추어 리턴 -> ex) 0 -> 01
'===========================================================================
Function ZeroFormat(str,inum)
	Dim sString,iLen
	Dim iDiff			'차이
	Dim idx
	Dim sAdd
	Dim sRet
	sString = CStr(str)
	iLen = Len(str)
	If iLen < inum Then	'문자열 길이가 지정길이보다 작으면 그 수만큼 0을 앞에 붙인다
		iDiff = inum - iLen
		For idx = 0 To iDiff - 1
			sAdd = sAdd & "0"
		Next
	End If
	sRet = sAdd + CStr(str)
	ZeroFormat = sRet
End Function


'===========================================================================
'함수명		: GetSubString
'INPUT 		:  - str : 변환할 스트링, - strLength : 일정길이
'작성일자	:
'작성자		: 최윤희
'기능설명	: 보여줄 문자열(인자값: str)이 일정길이(인자값: strLength)보다 클경우 그 길이만큼만 잘라서 보여주기 위한 함수
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
'함수명		: REPLACE_FONT
'INPUT 		:  폰트 제거
'작성일자	:
'작성자		: 황병규
'기능설명	:
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
'함수명		: REPLACE_FONT
'INPUT 		:  폰트 제거
'작성일자	:
'작성자		: 황병규
'기능설명	: ' rxReplace( html, "<\b[^>]*>", "", "gi")
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

'==========================================
'강좌 단계별 아이콘 Class 가져오기 2015-03-24 유창훈
'==========================================
Function CHAPTER_ICON(flg)
	Select Case flg
        Case "기본이론"
            CHAPTER_ICON = "stepIcon01"
        Case "심화이론"
            CHAPTER_ICON = "stepIcon02"
        Case "문제풀이"
            CHAPTER_ICON = "stepIcon03"
        Case "최종마무리"
            CHAPTER_ICON = "stepIcon04"
        Case "특강"
            CHAPTER_ICON = "stepIcon05"
        Case "기초입문"
            CHAPTER_ICON = "stepIcon07"
        Case "모의고사"
            CHAPTER_ICON = "stepIcon08"
        Case "마무리"
            CHAPTER_ICON = "stepIcon09"
        Case "전략특강"
            CHAPTER_ICON = "stepIcon10"
        Case "이론완성"
            CHAPTER_ICON = "stepIcon11"
        Case "최신판례"
            CHAPTER_ICON = "stepIcon12"
    End Select
End Function

'===========================================================================
'함수명	: patt_replace
'INPUT 	: 문자열 중 패턴으로 문자열 치환
'작성일자	: 2011/11/03
'작성자	: 한수현
'===========================================================================
Function patt_replace(pattern, replace, text)
	Dim objRegExp, strOutput

	Set objRegExp = New Regexp

	objRegExp.IgnoreCase = True		'//대소문자 구분 여부
	objRegExp.Global = True			'//전체 문서에서 검색

	objRegExp.Pattern = pattern		'//패턴 설정

	patt_replace = objRegExp.Replace(text, replace)

	Set objRegExp = Nothing
End Function

'===========================================================================
'함수명	: strip_tags
'INPUT 	:  HTML 모든 태그제거 함수 
'작성일자	: 2011/11/03
'작성자	: 한수현
'===========================================================================
Function strip_tags(str) 
	Dim content, pattern: 
	
	content = str: 
	
	'pattern = "<(/)?([a-zA-Z]*)(\\s[a-zA-Z]*=[^>]*)?(\\s)*(/)?>"	'All->이건 제대로 동작하지 않는다. 참고용으로 남겨둠 
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
	param = replace(param, "%20", "")	'공백
	param = replace(param, "%32", "")	'공백
	param = replace(param, "%09", "")	'탭
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
'공격 위험성이 존재하는 문자들을 필터링
'문자열 입력값을 검증
'숫자형은 데이터 타입을 별도로 체크하도록 한다.
Function sqlFilter(search)
	Dim strSearch(34), strReplace(34), cnt, data

	'SQL Injection 특수문자 필터링
	'필수 필터링 문자 리스트
	strSearch(0)="'"
	strSearch(1)=""""
	strSearch(2)="\"
	strSearch(3)="null,"
	strSearch(4)="#"
	strSearch(5)="--"
	strSearch(6)=";"

	strSearch(7)="insert "
	strSearch(8)="update "
	strSearch(9)="delete "
	strSearch(10)="select "
	strSearch(11)="exec "
	strSearch(12)="drop "
	strSearch(13)="truncate "
	strSearch(14)="create "
	strSearch(15)="alter "
	strSearch(16)="varchar "
	strSearch(17)="cmdshell "
	strSearch(18)="script "
	strSearch(19)="iframe "
	strSearch(20)="embed "
	strSearch(21)="object "
	strSearch(22)="form "
	strSearch(23)="textarea "
	strSearch(24)="input "

	' 20190625 추가
	strSearch(25)="/*"
	strSearch(26)="*/"
	strSearch(27)="@@"
	strSearch(28)="sysobjects"
	strSearch(29)="declare"
	strSearch(30)="substring"
	strSearch(31)="union"
	strSearch(32)="("
	strSearch(33)=")"

	'변환될 필터 문자
	strReplace(0)="''"
	strReplace(1)=""""""
	strReplace(2)="\\"
	strReplace(3)="\"&null
	strReplace(4)="\#"
	strReplace(5)="\--"
	strReplace(6)="\;"

	strReplace(7)="insеrt "
	strReplace(8)="updatе "
	strReplace(9)="deletе "
	strReplace(10)="sеlect "
	strReplace(11)="exеc "
	strReplace(12)="drоp "
	strReplace(13)="truncatе "
	strReplace(14)="creatе "
	strReplace(15)="altеr "
	strReplace(16)="vаrchar "
	strReplace(17)="cmdshеll "
	strReplace(18)="sсript "
	strReplace(19)="ifrаme "
	strReplace(20)="еmbed "
	strReplace(21)="оbject "
	strReplace(22)="fоrm "
	strReplace(23)="tеxtarea "
	strReplace(24)="ⅰnput "

	' 20190625 추가
	strReplace(25)=""
	strReplace(26)=""
	strReplace(27)="＠＠"
	strReplace(28)="ｓyｓobjеcts"
	strReplace(29)="dеclare"
	strReplace(30)="ｓubｓtring"
	strReplace(31)="uniоn"
	strReplace(32)="（"
	strReplace(33)="）"

	data = search
	For cnt = 0 to 33 '필터링 인덱스를 배열 크기와 맞춰준다.
		data = replace(data, LCASE(strSearch(cnt)), strReplace(cnt))
	Next

	sqlFilter = data
End Function


Function Re_sqlFilter(search)
      Dim strSearch(5), strReplace(5), cnt, data

      'SQL Injection 특수문자 필터링
      '필수 필터링 문자 리스트
      strSearch(0)="'"
      strSearch(1)=""""
      strSearch(2)="\"
      strSearch(3)="#"
      strSearch(4)="--"
      strSearch(5)=";"

      '변환될 필터 문자
      strReplace(0)="''"
      strReplace(1)=""""""
      strReplace(2)="\\"
      strReplace(3)="\#"
      strReplace(4)="\--"
      strReplace(5)="\;"

      data = search
      For cnt = 0 to 5 '필터링 인덱스를 배열 크기와 맞춰준다.

		If Not(IsNull(data)) Then

			data = replace(data, LCASE(strReplace(cnt)), strSearch(cnt))

		End If

      Next

      Re_sqlFilter = data
 End Function

'XSS 출력 필터 함수
'XSS 필터 함수
'$str - 필터링할 출력값
'$avatag - 허용할 태그 리스트 예)  $avatag = "p,br"
Function clearXSS(strString, avatag)
	'XSS 필터링
	strString = replace(strString, "<", "&lt;")
	strString = replace(strString, "'", "''")
	strString = replace(strString, "\0", "")

	'허용할 태그 변환
	avatag = replace(avatag, " ", "")		'공백 제거
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
' 로그인 체크 2008-09-25 김은성
'==========================================

Function LoginChk(url, target)

	If GETUID() = "" Then
		SET_GOURL(url)
		Call GetMsgBoxParGo("로그인 후 이용해주세요  ", "/member/memb_login.asp", target)
		response.end
	End IF

End Function


'==========================================
'  회원아이디 호출 2008-09-25 김은성
'==========================================

Function GETUID()
	GETUID = fncRequestCookie("userid")
End Function

'==========================================
'  회원명 호출 2008-09-25 김은성
'==========================================
Function GETUNM()
	GETUNM = fncRequestCookie("username")
End Function


'==========================================
'  회원타입 호출 2008-09-25 김은성
'==========================================
Function GETUTYPE()
	GETUTYPE = fncRequestCookie("mem_type")
End Function


'==========================================
'  빈값체크
'==========================================
Function NULLCHECK(str)
	If str = "" Or isnull(str) then
		NULLCHECK = true
	else
		NULLCHECK = false
	end if
End Function

'==========================================
'' asp 코드내에서 메시지창 띄우기
'==========================================
sub GetMsgBox(msg)
	Response.write "<SCRIPT LANGUAGE='JavaScript'>"
	Response.write "	alert('"& msg &"');"
	Response.write "</SCRIPT>"
	Response.End
end Sub

'==========================================
'' asp 코드내에서 메시지창 띄우고 히스토리백
'==========================================
sub GetMsgBoxBack(msg)
	Response.write "<SCRIPT LANGUAGE='JavaScript'>"
	Response.write "	alert('"& msg &"');"
	Response.write "	history.back();"
	Response.write "</SCRIPT>"
	Response.End 
end sub

'==========================================
'' asp 코드내에서 메시지창 띄우고 창닫기
'==========================================
sub GetMsgBoxClose(msg)
	Response.write "<SCRIPT LANGUAGE='JavaScript'>"
	Response.write "	alert('"& msg &"');"
	Response.write "	window.close();"
	Response.write "</SCRIPT>"
	Response.End
end Sub

'==========================================
'' asp 코드내에서 메시지창 띄우고 창닫은후 부모창 이동
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
'' asp 코드내에서 메시지창 띄우고 창닫고 부모창 리로드
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
'' asp 코드내에서 메시지창 띄우고 원하는 곳으로 redirect "url" 없으면 공백으로
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
'' asp 코드내에서 메시지창 띄우고 부모창 원하는 곳으로 redirect "url" 없으면 공백으로
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
' 라디오 및 체크 박스  체크 리턴
' RadioValChk(밸류값, 체크값, 형식)
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
' 문자 길이 자른 후 리턴
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


'-------------- 찍어보기
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

'복수에 Image Over 효과 적용[ex: imgOverArray("data1,data2,data3", "_on")]
Function imgOverArray(val, overimg)

	Dim arrayVal, arrayValTmp

	arrayVal = Split(val, ",")

	arrayValTmp = Null

	'response.write NowUrl

	If IsArray(arrayVal) Then
		For i = 0 To UBound(arrayVal)
			If NowUrl = LCase(arrayVal(i)) Then
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


'== 스크랩 버튼 생성
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


'== 인쇄 버튼 생성
Function PrintWrite()
	'If tname <> "" And no <> "" Then
		PrintWrite = "<img class=""hand"" onclick=""ViewPrintp()"" src="""& img_main &"/company/pres_print.gif"">"
	'End IF
End function


'PMP 서비스용 추가함수
'폴더/파일 명칭 치환
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
'선생님평가(현재는 수강후기 평가참조)
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


' 2008-11-12 김은성
' 게시판 조회수 증가
' VisitHit("MS_BEST_INFO", "BI_INQR_CUNT", "BI_BEST_IDEN", BI_BEST_IDEN)
' VisitHit("테이블명", "업데이트 컬럼명", "고유번호컬럼", 고유번호일치 값)
Function VisitHit(tbl, ucol, icol, val)

	Dim iSQL, ingrow
	iSQL = " Update "& tbl &" SET  "
	If tbl = "MS_BRD_CUS_SL" Then 
	iSQL = iSQL & " "& ucol &" = "& ucol &" + 2.7 "
	Else 
	iSQL = iSQL & " "& ucol &" = "& ucol &" + 1.3 "
	End If 
	iSQL = iSQL & " Where  "& icol &" = '"& val &"' "
	CALL ExeCuteSQL(iSQL, ingrow)

End Function


'김연호 서브노트(vol.1)관련 임시함수
Function yhkimCart (bookChk,chrChk,bookcd)

	If instr(bookChk,bookcd) > 0 then

		strSql = "select bm_book_flg from ms_book_mas where bm_book_cd=" & bookcd
		set rs = dbexec(strSql,"study")
		If Not Rs.Eof Then
		bookFlg = rs(0)
		End If
		call rsclose(rs)

		'교재 구매 현황 카운트
		strSql = "select count(*) from ms_book_req join ms_book_dtl on br_req_no=bd_req_no and bd_book_cd=" & bookcd & " and bd_cnc_yn='N' and br_cnc_flg = '1' "
		set rs = dbexec(strSql,"study")
		bookCnt = rs(0)
		call rsclose(rs)

		'10723강좌 구매이력
'		strSql = "select count(*) from ms_std_app join ms_app_dtl on sa_app_no=ad_app_no and ad_chr_cd=10723 and ad_std_stat <> '4' and sa_mem_id='"&cook_id&"' "
		strSql = "select count(*) from ms_std_app join ms_app_dtl on sa_app_no=ad_app_no and ad_chr_cd in (10805,10889) and ad_std_stat <> '4' and sa_mem_id='"&cook_id&"' "

		set rs = dbexec(strSql,"study")
		chrcnt = rs(0)
		call rsclose(rs)

		'591교재 구매이력
		'strSql = "select count(*) from ms_book_req join ms_book_dtl on br_req_no=bd_req_no and bd_book_cd=564 and bd_cnc_yn='N' and br_cnc_flg = '1' and br_mem_id='"&cook_id&"' "
		'set rs = dbexec(strSql,"study")
		'memBookCnt = rs(0)
		'call rsclose(rs)

		if chrcnt = 0 then

'			if instr(chrChk,"10723") > 0 and instr(bookChk,"564") > 0 then
			if instr(chrChk,"10805") > 0 or instr(chrChk,"10889") > 0 then


				'구매이력이 없고 교재 총 구매건수가 을 넘었다면 구매불가
				If bookCnt >= 90 AND bookCnt <= 95 then


					'If bookFlg = "1" Then
						' 쪽지발송?
						'Call yhkimBookStat ()
					'End If

					'필수강좌를 선택
					'Call GetMsgBoxBack("‘PEET 완전정복 EX² 일반생물학 서브노트’는 재고 소진으로 인해 구매하실수 없습니다.")
					'Call GetMsgBoxBack("‘심화 생물학 필기노트(vol.1)’는 재고 소진으로 인해 구매하실수 없습니다.")
					'response.end

					' 총 구매건수가 90이상일경우 가격을 10,000으로 업데이트
					strSql = ""
					strSql = "update ms_book_mas set bm_prc = '10000' where bm_book_cd =" & bookcd

					Call DbExec(strSql,"study")
					Call DbClose(DbCon)
				end if


			Else
				'필수강좌/교재를 선택하지 않았다면..
				'Call GetMsgBoxBack("‘PEET 완전정복 EX² 일반생물학 서브노트’는  ‘[강좌]PEET 완전정복 EX² 일반생물학 [기본]’와\n‘[교재]PEET 완전정복 EX² 일반생물학’교재를 구매이력이 있거나\n동시에 구매신청 하시는 분만 정상 결제하실 수 있습니다. ")
				Call GetMsgBoxBack("‘심화 생물학 필기노트(vol.1) 는  ‘[강좌]PEET 완전정복 EX² 심화생물학 [심화]’와\n‘PEET 완전정복 NEW EX² 심화생물학 [심화]’강좌의 구매이력이 있거나\n동시에 구매신청 하시는 분만 정상 결제하실 수 있습니다. ")

				response.end
			End If

		Else
			'강좌구매이력이 있고 교재 구매이력이 없으면
'			 if memBookCnt = 0 Then

'					if instr(bookChk,"564") > 0 then
'
'							'591교재 총 구매건수가 20을 넘었다면 구매불가
'							If bookCnt >= 62 then

'								If bookFlg = "1" Then

'									Call yhkimBookStat ()

'								End If

'								'필수강좌/교재를 선택하지 않았다면..
'								Call GetMsgBoxBack("‘PEET 완전정복 EX² 일반생물학 서브노트’는 재고 소진으로 인해 구매하실수 없습니다.")
'								response.end

'							end if

'					else
'						'필수강좌/교재를 선택하지 않았다면..
'						Call GetMsgBoxBack("‘PEET 완전정복 EX² 일반생물학 서브노트’는  ‘[강좌]PEET 완전정복 EX² 일반생물학 [기본]’와\n‘[교재]PEET 완전정복 EX² 일반생물학’교재를 구매이력이 있거나\n동시에 구매신청 하시는 분만 정상 결제하실 수 있습니다. ")
'						response.end
'					end if
'			 else
					'교재 총 구매건수가 90을 넘었다면 구매불가
					If bookCnt >= 90 AND bookCnt <= 95 then

						'필수강좌/교재를 선택하지 않았다면..
						'Call GetMsgBoxBack("‘심화 생물학 필기노트(vol.1)’는 재고 소진으로 인해 구매하실수 없습니다.")
						'response.end


						strSql = ""
						strSql = "update ms_book_mas set bm_prc = '10000' where bm_book_cd =" & bookcd

						Call DbExec(strSql,"study")
						Call DbClose(DbCon)

					end if
'			end if

		End if


	End If
End Function
'-------------------------------------------------------------------------------------------------------------
'김연호 서브노트(vol.2)관련 임시함수
Function yhkimCart_v2 (bookChk,chrChk,bookcd)

	If instr(bookChk,bookcd) > 0 then

		strSql = "select bm_book_flg from ms_book_mas with(nolock) where bm_book_cd=" & bookcd
		set rs = dbexec(strSql,"study")
		If Not Rs.Eof Then
		bookFlg = rs(0)
		End If
		call rsclose(rs)

		'교재 구매 현황 카운트
		strSql = "select count(*) from ms_book_req with(nolock) join ms_book_dtl with(nolock) on br_req_no=bd_req_no and bd_book_cd=" & bookcd & " and bd_cnc_yn='N' and br_cnc_flg = '1' "

		set rs = dbexec(strSql,"study")
		bookCnt = rs(0)
		call rsclose(rs)

		'10805,10889 강좌 구매이력
		strSql = "select count(*) from ms_std_app with(nolock) join ms_app_dtl with(nolock) on sa_app_no=ad_app_no and ad_chr_cd in (10805,10889) and ad_std_stat <> '4' and sa_mem_id='"&cook_id&"' "

		set rs = dbexec(strSql,"study")
		chrcnt = rs(0)
		call rsclose(rs)

		'591교재 구매이력
		'strSql = "select count(*) from ms_book_req join ms_book_dtl on br_req_no=bd_req_no and bd_book_cd=564 and bd_cnc_yn='N' and br_cnc_flg = '1' and br_mem_id='"&cook_id&"' "
		'set rs = dbexec(strSql,"study")
		'memBookCnt = rs(0)
		'call rsclose(rs)

		if chrcnt = 0 then

			if instr(chrChk,"10805") > 0 or instr(chrChk,"10889") > 0 then

				'구매이력이 없고 교재 총 구매건수가 을 넘었다면 구매불가
				'If bookCnt >= 300 then
				If bookCnt >= 260 then		' 학원에 교재 보내주고 남은개수만큼 조정 2010/05/17

					' 총 구매건수가 300건 이상일경우 가격을 8,000으로 업데이트
					strSql = ""
					strSql = "update ms_book_mas set bm_prc = '8000' where bm_book_cd =" & bookcd

					Call DbExec(strSql,"study")
					Call DbClose(DbCon)
				end if

			Else
				'필수강좌/교재를 선택하지 않았다면..
				'Call GetMsgBoxBack("‘PEET 완전정복 EX² 일반생물학 서브노트’는  ‘[강좌]PEET 완전정복 EX² 일반생물학 [기본]’와\n‘[교재]PEET 완전정복 EX² 일반생물학’교재를 구매이력이 있거나\n동시에 구매신청 하시는 분만 정상 결제하실 수 있습니다. ")
				Call GetMsgBoxBack("‘심화 생물학 필기노트(vol.2) 는  ‘[강좌]PEET 완전정복 EX² 심화생물학 [심화]’와\n‘PEET 완전정복 NEW EX² 심화생물학 [심화]’강좌의 구매이력이 있거나\n동시에 구매신청 하시는 분만 정상 결제하실 수 있습니다. ")

				response.end
			End If

		Else
			'강좌구매이력이 있고 교재 구매이력이 없으면
'			 if memBookCnt = 0 Then

'					if instr(bookChk,"564") > 0 then
'
'							'591교재 총 구매건수가 20을 넘었다면 구매불가
'							If bookCnt >= 62 then

'								If bookFlg = "1" Then

'									Call yhkimBookStat ()

'								End If

'								'필수강좌/교재를 선택하지 않았다면..
'								Call GetMsgBoxBack("‘PEET 완전정복 EX² 일반생물학 서브노트’는 재고 소진으로 인해 구매하실수 없습니다.")
'								response.end

'							end if

'					else
'						'필수강좌/교재를 선택하지 않았다면..
'						Call GetMsgBoxBack("‘PEET 완전정복 EX² 일반생물학 서브노트’는  ‘[강좌]PEET 완전정복 EX² 일반생물학 [기본]’와\n‘[교재]PEET 완전정복 EX² 일반생물학’교재를 구매이력이 있거나\n동시에 구매신청 하시는 분만 정상 결제하실 수 있습니다. ")
'						response.end
'					end if
'			 else
					'교재 총 구매건수가 300을 넘었다면 구매불가
					'If bookCnt >= 300 then
					If bookCnt >= 260 then		' 학원에 교재 보내주고 남은개수만큼 조정 2010/05/17

						'필수강좌/교재를 선택하지 않았다면..
						'Call GetMsgBoxBack("‘심화 생물학 필기노트(vol.1)’는 재고 소진으로 인해 구매하실수 없습니다.")
						'response.end


						strSql = ""
						strSql = "update ms_book_mas set bm_prc = '8000' where bm_book_cd =" & bookcd

						Call DbExec(strSql,"study")
						Call DbClose(DbCon)

					end if
'			end if

		End if


	End If
End Function

'오을식P Best of Best 물리[심화문제] 관련 임시함수
Function usOhCart (bookChk,chrChk,bookcd)

	If instr(bookChk,bookcd) > 0 then

		strSql = "select bm_book_flg from ms_book_mas where bm_book_cd=" & bookcd
		set rs = dbexec(strSql,"study")
		If Not Rs.Eof Then
		bookFlg = rs(0)
		End If
		call rsclose(rs)

		'교재 구매 현황 카운트
		strSql = "select count(*) from ms_book_req join ms_book_dtl on br_req_no=bd_req_no and bd_book_cd=" & bookcd & " and bd_cnc_yn='N' and br_cnc_flg = '1' "
		set rs = dbexec(strSql,"study")
		bookCnt = rs(0)
		call rsclose(rs)

		'10886,10965강좌 구매이력
		strSql = "select count(*) from ms_std_app join ms_app_dtl on sa_app_no=ad_app_no and ad_chr_cd in (10886,10965) and ad_std_stat <> '4' and sa_mem_id='"&cook_id&"' "
		set rs = dbexec(strSql,"study")
		chrcnt = rs(0)
		call rsclose(rs)

		'778교재 구매이력
		strSql = "select count(*) from ms_book_req join ms_book_dtl on br_req_no=bd_req_no and bd_book_cd=778 and bd_cnc_yn='N' and br_cnc_flg = '1' and br_mem_id='"&cook_id&"' "
		set rs = dbexec(strSql,"study")
		memBookCnt = rs(0)
		call rsclose(rs)

		if chrcnt = 0 then

			if instr(chrChk,"10886") > 0 or instr(chrChk,"10965") > 0 then

				'구매이력이 없고 교재 총 구매건수가 을 넘었다면 구매불가(이벤트 시작전 149권)
				If bookCnt >= 360 then

					' 총 구매건수가 360이상일경우 가격을 5,000으로 업데이트
					strSql = ""
					strSql = "update ms_book_mas set bm_prc = '5000' where bm_book_cd =" & bookcd

					Call DbExec(strSql,"study")
					Call DbClose(DbCon)
				end if


			Else
				'필수강좌/교재를 선택하지 않았다면..
				Call GetMsgBoxBack("‘Best of Best 물리 [심화문제] 는  ‘[강좌][Best of Best] 심화개념완셩’과\n‘[Best of Best] 심화+문제풀이’강좌의 구매이력이 있거나\n동시에 구매신청 하시는 분만 정상 결제하실 수 있습니다. ")

				response.end
			End If

		Else

				'교재 총 구매건수가 360을 넘었다면 구매불가(이벤트 시작전 149권)
				If bookCnt >=360 then

					strSql = ""
					strSql = "update ms_book_mas set bm_prc = '5000' where bm_book_cd =" & bookcd

					Call DbExec(strSql,"study")
					Call DbClose(DbCon)

				end if

		End if


	End If
End Function

Function yhkimBookStat ()
		'쪽지발송
		strSql = "select count(*) from ms_cart_item where ci_book_cd=591 "
		set rs = dbexec(strSql,"study")
		sendCnt = rs(0)
		call rsclose(rs)

		If sendCnt > 0 then

			strSql = " insert into ms_note_mas (nm_send_id, nm_title, nm_content, nm_send_count, nm_send_dt) "
			strSql = strSql & " select 'ysh0917','장바구니에 저장되어 있던 ‘김연호 선생님의 서브노트’가 재고소진으로 삭제되었습니다.','안녕하세요, 메가엠디입니다. <br>회원님이 장바구니에 담아두셨던 PEET 완전정복 EX² 일반생물학 서브노트는 한정 제작으로 선착순 150분께만 제공되는 교재입니다. <br>"&month(now)&"월 "&day(now)&"일자로 재고가 모두 소진되어 장바구니에서 자동 삭제되었음을 널리 양해 바랍니다. <br>',"&sendCnt&",getdate()"

			Call DbExec(strSql,"study")
			Call DbClose(DbCon)

			strSql = "select max(nm_mas_no) from ms_note_mas where nm_send_id='ysh0917' "
			set rs = dbexec(strSql,"study")
			mas_no = rs(0)
			call rsclose(rs)

			strSql = " insert into ms_note_dtl (nd_mas_no, nd_mem_id, nd_read_yn, nd_keep_yn, nd_del_yn) "
			strSql = strSql & " select '"&mas_no&"',ci_mem_id,'N','N','N' from ms_cart_item where ci_book_cd=591 "

			Call DbExec(strSql,"study")
			Call DbClose(DbCon)

			'장바구니 삭제처리
			strSql = "delete from ms_cart_item where ci_book_cd='591' "
			Call DbExec(strSql,"study")
			Call DbClose(DbCon)

			'교재 판매상태변경
			strSql = "update ms_book_mas set bm_book_flg='6' where bm_book_cd=591"
			Call DbExec(strSql,"study")
			Call DbClose(DbCon)

		end if
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

'김연호 + 강치욱 서브노트관련 임시함수

Function chkTecApp(bookChk,book_cd,chr_cd,chr_cd_off)

	If instr(bookChk,book_cd) > 0 Then

		bookTrigger = False

		chkSql = "select count(*) from ( " &_
					  "select sa_app_no " &_
					  "from ms_std_app join ms_app_dtl on sa_app_no = ad_app_no where ad_chr_cd in (" & chr_cd & ") and ad_std_stat <> '4' and ad_prc > 0 and sa_mem_id = '" & cook_id & "' " &_
					  " union select ci_cart_no from ms_cart_item where ci_mem_id = '" & cook_id & "' and ci_cart_type = 1 and ci_chr_cd in (" & chr_cd & ") "

		If chr_cd_off <> "" Then

			chkSql = chkSql &	 " union select as_app_no from md_app_std join md_app_dtl on as_app_no = ad_app_no where ad_chr_cd in (" & chr_cd_off & ") " &_
										 " and ad_std_stat <> '4' and ad_prc > 0 and as_mem_id = '" & cook_id & "'" &_
										 " union select ci_num from md_cart_item where ci_mem_id = '" & cook_id & "' and ci_cart_type = 1 and ci_chr_cd in (" & chr_cd_off & ") "
		End If


		chkSql = chkSql & ") as chkTbl "

		set ckRs = DBExec(chkSql,DBName)

		If ckRs(0) > 0 Then

			bookTrigger = True

		End If

		DBClose(ckRs)

		chkTecApp = bookTrigger

	End If

End Function

Function setTecApp(book_cd)

	bookChk = "select count(*) from ms_cart_item where ci_mem_id = '" & cook_id & "' and ci_cart_type = '5' and ci_book_cd = " & book_cd
	delChk = "select count(*) from ms_cart_item where ci_mem_id = '" & cook_id & "' and ci_cart_type = '5' and ci_book_cd = 1"

	Call RsExec(bookRs, 0, 3, bookChk, "study")
	Call RsExec(delRs, 0, 3, delChk, "study")

	If bookRs(0) > 0 Then
		bookSql = "update ms_cart_item set ci_prg_flg = 'Y' where ci_mem_id = '" & cook_id & "' and ci_cart_type = '5' and ci_book_cd = " & book_cd
	Else
		bookSql = "insert ms_cart_item(ci_mem_id,ci_cart_type,ci_book_cd,ci_prg_flg,ci_reg_dt,ci_dc_rt,ci_book_cnt) values('" & cook_id & "','5','" & book_cd & "','Y',getdate(),0,1)"
	End If

	If delRs(0) > 0 Then
		delSql = "update ms_cart_item set ci_prg_flg = 'Y' where ci_mem_id = '" & cook_id & "' and ci_cart_type = '5' and ci_book_cd = 1"
	Else
		delSql = "insert ms_cart_item(ci_mem_id,ci_cart_type,ci_book_cd,ci_prg_flg,ci_reg_dt,ci_dc_rt,ci_book_cnt) values('" & cook_id & "','5','1','Y',getdate(),0,1)"
	End If

	Call DBExec(bookSql,"study")
	Call DBExec(delSql,"study")

	Call RsClose(bookRs)
	Call RsClose(delRs)

End Function

Function getTermAmt(uid,stdDate)

	totAmt = 0

	sql = " exec MSP_MYPAGE_CASH_HIS_03 '" & uid & "' ,'" & stdDate & "' "

	Call RsExec(amtRs, 0, 3, sql, "study")

	If Not amtRs.eof Then

		Do Until amtRs.eof

			totAmt = totAmt + amtRs(6)

			amtRs.movenext

		Loop

	End If

	Call RsClose(amtRs)

	getTermAmt = totAmt

End Function

Function getTermAmt2(uid,endDate)

	totAmt = 0

	sql = " exec MSP_MYPAGE_CASH_HIS_04 '" & uid & "' ,'" & endDate & "' "

	Call RsExec(amtRs, 0, 3, sql, "study")

	If Not amtRs.eof Then

		Do Until amtRs.eof

			totAmt = totAmt + amtRs(6)

			amtRs.movenext

		Loop

	End If

	Call RsClose(amtRs)

	getTermAmt2 = totAmt

End Function

Function getCpn(cpn_kbn,cpn_flg,uid)

	sql = "exec MSP_GET_CPN_EVT '" & cpn_kbn & "','" & cpn_flg & "','" & uid & "'"

	Call RsExec(cpnRs, 0, 3, sql, "study")

	If cpnRs.eof Then
		cpnNum = ""
	Else
		cpnNum = cpnRs("ecm_cpn_num")
	End If

	Call Rsclose(cpnRs)

	getCpn = cpnNum

End Function

'===========================================================================
'Author : Bon
'Date    : 2010-02-23
'Desc    : 특정 구매 행위 시 구매 Exception 처리
'===========================================================================

Function chkException(mode,chr_chk,std_chr_cd,trgt_chr_cd,std_chr_cd_off,book_cd)

	exceptionTrigger = Null

	If mode = "chr" Then

		If instr(chr_chk,trgt_chr_cd) > 0 Then

			exceptionTrigger = True

			chkSql = "select count(*) from ms_std_app join ms_app_dtl on sa_app_no = ad_app_no where ad_chr_cd in (" & std_chr_cd & ") and ad_std_stat <> '4' and ad_prc > 0 and sa_mem_id = '" & cook_id & "'"

			set ckRs = DBExec(chkSql,"study")

			If ckRs(0) > 0 Then

				exceptionTrigger = False

			End If

			DBClose(ckRs)

		End If

	End If

	chkException = exceptionTrigger

End Function

Function chkMinibook()
	bReturn = false

	Book_cd1 = "758"
	Book_cd2 = "757"
	Book_cd3 = "756"


	strSql = ""
	strSql = strSql & "select isnull((select count(*) "
	strSql = strSql & "from ms_cart_item WITH(NOLOCK)  "
	strSql = strSql & "where ci_mem_id = '" & cook_id & "'"
	strSql = strSql & "and ci_cart_type = '5'  "
	strSql = strSql & "and ci_book_cd in ('" & Book_cd1 & "','" & Book_cd2 & "','" & Book_cd3 & "')) + (select count(*) from ms_book_req WITH(NOLOCK)  "
	strSql = strSql & "join ms_book_dtl WITH(NOLOCK)  on br_req_no = bd_req_no "
	strSql = strSql & "where br_mem_id = '" & cook_id & "'"
	strSql = strSql & "and bd_book_cd in ('" & Book_cd1 & "','" & Book_cd2 & "','" & Book_cd3 & "')  "
	strSql = strSql & "and br_cnc_flg = 1 ),0) "

	set ckRs = DBExec(strSql,"study")

	If ckRs(0) > 0 Then

		bReturn = True

	End If

 	chkMinibook = bReturn
End Function

Function chkMinibookPay()

	Book_cd1 = "758"
	Book_cd2 = "757"
	Book_cd3 = "756"

	bReturn = false

	strSql = ""
	strSql = strSql & "select count(*) "
	strSql = strSql & "from ms_cart_item WITH(NOLOCK) "
	strSql = strSql & "where ci_mem_id = '" & cook_id & "'"
	strSql = strSql & "and ci_cart_type = '5'  "
	strSql = strSql & "and ci_prg_flg = 'Y'  "

	set bookRs = DBExec(strSql,"study")

	If bookRs(0) > 0 Then
		strSql = ""
		strSql = strSql & "select isnull((select count(*) "
		strSql = strSql & "from ms_cart_item WITH(NOLOCK)  "
		strSql = strSql & "where ci_mem_id = '" & cook_id & "'"
		strSql = strSql & "and ci_cart_type = '5'  "
		strSql = strSql & "and ci_prg_flg = 'Y'  "
		strSql = strSql & "and ci_book_cd in ('" & Book_cd1 & "','" & Book_cd2 & "','" & Book_cd3 & "')) + (select count(*) from ms_book_req WITH(NOLOCK)  "
		strSql = strSql & "join ms_book_dtl WITH(NOLOCK)  on br_req_no = bd_req_no "
		strSql = strSql & "where br_mem_id = '" & cook_id & "'"
		strSql = strSql & "and bd_book_cd in ('" & Book_cd1 & "','" & Book_cd2 & "','" & Book_cd3 & "')  "
		strSql = strSql & "and br_cnc_flg = 1 ),0) "

		set ckRs = DBExec(strSql,"study")

		If ckRs(0) > 0 Then

			bReturn = True
		End If
		DBClose(ckRs)
	else
		bReturn = True
	End If

	DBClose(bookRs)

	chkMinibookPay = bReturn
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

'손태일 P 고급 일반화학 기본 이론 관련 임시함수
Function usStCart (bookChk,chrChk,bookcd)

	If instr(bookChk,bookcd) > 0 then

		'교재 구매 현황 카운트
		strSql = "select count(*) from ms_book_req join ms_book_dtl on br_req_no=bd_req_no and bd_book_cd=" & bookcd & " and bd_cnc_yn='N' and br_cnc_flg = '1' "
		set rs = dbexec(strSql,"study")
		bookCnt = rs(0)
		call rsclose(rs)

		'11358,11085 구매이력
		strSql = "select count(*) from ms_std_app join ms_app_dtl on sa_app_no=ad_app_no and ad_chr_cd in (11358,11085) and ad_std_stat <> '4' and sa_mem_id='"&cook_id&"' "
		set rs = dbexec(strSql,"study")
		chrcnt = rs(0)
		call rsclose(rs)

		if chrcnt = 0 then

			if instr(chrChk,"11358") > 0 or instr(chrChk,"11085") > 0 then

				'구매이력이 없고 교재 총 구매건수가 을 넘었다면 가격을 16200으로 업데이트
				If bookCnt >= 50 Or Now() >= CDate("2010-11-30 00:00") then

					' 총 구매건수가 50이상일 경우 가격을 16200으로 업데이트
					strSql = ""
					strSql = "update ms_book_mas set bm_prc = '16200' where bm_book_cd =" & bookcd

					Call DbExec(strSql,"study")
					Call DbClose(DbCon)
				end if


			Else
				'필수강좌/교재를 선택하지 않았다면..
				Call GetMsgBoxBack("‘손태일의 고급 일반화학 기본 이론’ 은  ‘[강좌]2012 New 고득점을 위한 일반화학 기본과정’과\n‘2012 고득점을 위한 일반화학 기본이론’강좌의 구매이력이 있거나\n동시에 구매신청 하시는 분만 정상 결제하실 수 있습니다. ")

				response.end
			End If

		Else
			'교재 총 구매건수가 50을 넘었다면 가격을 16200으로 업데이트
			If bookCnt >=50 Or Now() >= CDate("2010-11-30 00:00") then

				strSql = ""
				strSql = "update ms_book_mas set bm_prc = '16200' where bm_book_cd =" & bookcd

				Call DbExec(strSql,"study")
				Call DbClose(DbCon)

			end if
		End if

	End If
End Function

' 첫 유료구매이력 체크처리
Function FirstBuy()

	bReturn = True

	' 첫 구매이력 체크처리(2011.7.21~2011.08.12까지)
	strSql = ""

	strSql = strSql & " SELECT ( "
	strSql = strSql & " SELECT COUNT(*)  "
	strSql = strSql & " FROM MS_STD_APP WITH(NOLOCK) "
	strSql = strSql & " JOIN MS_APP_DTL WITH(NOLOCK) ON SA_APP_NO = AD_APP_NO "
	strSql = strSql & " WHERE AD_PRC > 0  "
	strSql = strSql & " AND AD_STD_STAT <> '4'  "
	strSql = strSql & " AND SA_MEM_ID = '"& cook_id &"' "


	strSql = strSql & ") + ("

	strSql = strSql & " SELECT COUNT(*) "
	strSql = strSql & " FROM MS_FPSAL_HIS WITH(NOLOCK) "
	strSql = strSql & " WHERE FSH_STD_STAT <> '4' "
	strSql = strSql & " AND FSH_MEM_ID = '"& cook_id &"' "
	strSql = strSql & ") "

	set rsFristBuy = DBexec(strSql,"study")

	FristBuyCnt = 0

	if not rsFristBuy.eof Then
		FristBuyCnt = rsFristBuy(0)
	End If

	If FristBuyCnt > 0 Then

		bReturn = False

	End If
	DBClose(rsFristBuy)

	FirstBuy = bReturn

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
' NeoWebEditor HTML 문자 치환
'=====================================
Function strEnter(str)
	str = replace(str,chr(13),"\n")
	str = replace(str,chr(10),"\n")
	str = replace(str,"'","""")
	strEnter = str
End Function
'=====================================

'===========================================================================
'함수명		: getCalPoint
'INPUT 		: totPnt,pntRate
'기능설명	: 총 포인트에 대해서 적용 포인트율에 따른 포인트 계산
'===========================================================================
Function getCalPoint(totPnt,pntRate)
	getCalPoint = fix(totPnt * (pntRate /  100))
End Function

'===========================================================================
'함수명		: write_log
'INPUT 		: File_Path,File_Nm,mem_id,noti
'기능설명	: 메가스터디 캐쉬전환 시 전환한 캐쉬 정보를 파일로 작성
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

''''김동일 추가 시작
Function getParamTxt(ByVal paramName, ByVal initValue, ByVal chkReplace)
	'파라미터명, 초기값, 따옴표치환, 제한글자수, 
    Dim tmp
    tmp = Trim(Request(paramName))

    If tmp = "" Then
        getParamTxt = initValue
    Else
		If chkReplace = 1 Then
			tmp = Replace(tmp, "'", "''")			
			'sql 인줵션 제거
			tmp = Replace_Param_Exec(tmp)
		End If


		getParamTxt = tmp
    End If
End Function

Function getParamTxt2(ByVal paramName, ByVal initValue, ByVal chkReplace)
	'파라미터명, 초기값, 따옴표치환, 제한글자수, 
    Dim tmp
    tmp = Request(paramName)

    If tmp = "" Then
        getParamTxt2 = initValue
    Else
		If chkReplace = 1 Then
			tmp = Replace(tmp, "'", "''")			
			'sql 인줵션 제거
			tmp = Replace_Param_Exec(tmp)
		End If


		getParamTxt2 = tmp
    End If
End Function

Function getParamInt(ByVal paramName, ByVal initValue)
    Dim tmp
    If IsNumeric(Request(paramName)) and Request(paramName) <> "" Then
        tmp = CDbl(Request(paramName))
    Else
        tmp = initValue
    End If

    getParamInt = tmp
End Function

Function getTxt(ByVal paramVal, ByVal initValue, ByVal chkReplace)
    Dim tmp
    tmp = Trim(paramVal)

    If tmp = "" Then
        getTxt = initValue
    Else
		If chkReplace = 1 Then
			tmp = Replace(tmp, "'", "''")
			'sql 인줵션 제거
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
	ori_text = Replace_Param(ori_text, "insert ", "insеrt ")
	ori_text = Replace_Param(ori_text, "update ", "updatе ")
	ori_text = Replace_Param(ori_text, "delete ", "deletе ")
	ori_text = Replace_Param(ori_text, "select ", "sеlect ")
	ori_text = Replace_Param(ori_text, "exec ", "exеc ")
	ori_text = Replace_Param(ori_text, "drop ", "drоp ")
	ori_text = Replace_Param(ori_text, "truncate ", "truncatе ")
	ori_text = Replace_Param(ori_text, "create ", "creatе ")
	ori_text = Replace_Param(ori_text, "alter ", "altеr ")

	ori_text = Replace_Param(ori_text, "varchar ", "vаrchar ")
	ori_text = Replace_Param(ori_text, "cmdshell ", "cmdshеll ")
	ori_text = Replace_Param(ori_text, "script ", "sсript ")
	ori_text = Replace_Param(ori_text, "iframe ", "ifrаme ")
	ori_text = Replace_Param(ori_text, "embed ", "еmbed ")
	ori_text = Replace_Param(ori_text, "object ", "оbject ")
	ori_text = Replace_Param(ori_text, "form ", "fоrm ")
	ori_text = Replace_Param(ori_text, "textarea ", "tеxtarea ")
	ori_text = Replace_Param(ori_text, "input ", "ⅰnput ")
	ori_text = replace(ori_text, "..\\", ",,\\")
	ori_text = replace(ori_text, "..\/", ",,\/")

	Replace_Param_Exec = ori_text
End Function

'sql 인줵션 공격을 막기위한 문자변환 함수
Function Replace_Param (ori_text, search_text, replace_text)
	Dim regObj
	Set regObj	= New RegExp
	regObj.Pattern	= search_text	'패턴 설정
	regObj.IgnoreCase	= True	'대소문자 구분 여부
	regObj.Global	= True		'전체 문서에서 검색

	Replace_Param = regObj.Replace(ori_text, replace_text)
End Function

Function getClientIP()
	getClientIP = getTxt(Request.Servervariables("REMOTE_ADDR"),"",1)
End Function

Function getServerIP()
	getServerIP = getTxt(Request.Servervariables("LOCAL_ADDR"),"",1)
End Function

'----------------------------------------------------------------
'	ToDate(dateserial타입 or 날짜문자열, 문자열 형식)
'	입력된 날자의 문자열 형식을 리턴.
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
			ret = Year(dte) & "년 " & Month(dte) & "월 " &  Day(dte) & "일"
		ElseIf tp = 50 Then
			ret = Month(dte) & "월 " &  Day(dte) & "일"
		ElseIf tp = 200 Then
			ret = Year(dte) & "-" & right("0"&Month(dte),2) & "-" & right("0"&Day(dte),2)
		End If
	Else
		ret = dte
	End If
	ToDate = ret
End Function

'#################################################
' Recordset을 Dictionary의 배열로..
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

'지정된 자릿수에서 자르고 맨 뒤에 특정문자열 붙이기
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

'디버깅용 문자열 찍어볼때 사용
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

'학원 재학생 여부
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

''''김동일 추가 끝

'올프리패스 로그인체크
Sub fn_LoginCheck_allfp(byval pCook_id)
	ssql = ""
	ssql =  ssql +  " declare @tdate varchar(8) "
	ssql =  ssql +  " set @tdate = convert(varchar, getdate(), 112) "
	ssql =  ssql +  " if exists (select top 1 1 from ms_fpsal_his with(nolock) join ms_fpitm_mas with(nolock) on fsh_item_no = fim_item_no where fim_item_no in (5211,5210,5183,5182,4308,4309) and fsh_std_stat='2' and fsh_mem_id='"&pCook_id&"') begin "
	ssql =  ssql +  " 	if not exists (select top 1 1 from MS_MEM_DAILY_CHK with(nolock) where MDC_YMD = @tdate and mdc_mem_id = '"&pCook_id&"' and mdc_type = 'al') begin "
	ssql =  ssql +  " 		insert into MS_MEM_DAILY_CHK (MDC_YMD, MDC_MEM_ID, MDC_TYPE, MDC_CNT) "
	ssql =  ssql +  " 		values (@tdate,'"&pCook_id&"','al',1) "
	ssql =  ssql +  " 	end  "
	ssql =  ssql +  " end  "
	call dbexec(ssql,"study")  
	DBClose(DBCon)
End Sub


'-----------------------------------------------------------------------
' API 혹은 페이지 호출시 페이지 및 파라미터 저장 (디버깅시 사용) by 9 
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
	Call DBExec(sql,"study") : Call DBClose(DBCon)
End Function

'모바일여부 체크
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

'모바일여부 체크
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



'===========================================================================
'함수명		: fncCheckOfficeIp()
'INPUT 		: 없음
'기능설명	: 아이피 본사 여부 체크
'===========================================================================
Function fncCheckOfficeIp()
	user_ip		= fncRequestVariables("REMOTE_ADDR")		'사용자	아이피
	
	rv = False

	If Left(user_ip,10) = "211.58.239" Or Left(user_ip,10) = "210.181.48" Then			' 실서버 IP
		rv = True
	ElseIf Left(user_ip,6) = "10.1.1" Then			' 넥스트 IP
		rv = True
	ElseIf Left(user_ip,6) = "10.1.3" Then			' 넥스트 IP
		rv = True
	ElseIf Left(user_ip,7) = "10.10.0" Then			' 넥스트 IP
		rv = True
	ElseIf Left(user_ip,10) = "172.15.11." Then		' VPN IP
		rv = True
	ElseIf Left(user_ip,10) = "172.15.13." Then		' VPN IP
		rv = True
	End If

	fncCheckOfficeIp = rv
End Function

'===========================================================================
'함수명		: fncWeekDay
'기능설명	: 요일
'===========================================================================
Function fncWeekDay(d)
	wd = WeekDay(d)
	select case wd
	case 1 : fncWeekDay = "일"
	case 2 : fncWeekDay = "월"
	case 3 : fncWeekDay = "화"
	case 4 : fncWeekDay = "수"
	case 5 : fncWeekDay = "목"
	case 6 : fncWeekDay = "금"
	case 7 : fncWeekDay = "토"
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
'함수명		: CheckPwd
'기능설명	: 비밀번호 유효성 확인 함수
'===========================================================================
Function CheckPwd(ByVal str)
	Dim objRegExp, match, matches

	Set objRegExp = New RegExp
	With objRegExp
		.Pattern = "^.*(?=.{6,20})(?=.*\d)(?=.*[a-zA-Z]).*$"
		.IgnoreCase = true
		Check = .Test(str)
	End With	
	Set objRegExp = Nothing
	if len(str) < 6 or len(str) > 20 Then Check = false
	CheckPwd = Check
End Function

'===========================================================================
'함수명		: fncTel
'INPUT 		:
'기능설명	: 전화번호 자르기
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

%>