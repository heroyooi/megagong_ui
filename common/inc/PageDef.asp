<%
'===========================================================================
'함수명		: fncCommonPage
'===========================================================================
Function fncCommonPage(MAXSEQ, PagePerRecord, page, purl, classname, previmgico01, previmgico02, nextimgico01, nextimgico02)
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
	startpage = page10 * 10 + 1

	If classname="" Then classname = "pagenav"

    if previmgico01 = "" Then previmgico01 = img_main & "/btn/left_aroow2.gif"
    if previmgico02 = "" Then previmgico02 = img_main & "/btn/left_aroow1.gif"
    if nextimgico01 = "" Then nextimgico01 = img_main & "/btn/right_aroow2.gif"
    if nextimgico02 = "" Then nextimgico02 = img_main & "/btn/right_aroow1.gif"

	Response.Write "<div class='" & classname & "'>"

	prevBtn01 = "<a href='"& purl &"&page=1'><img src='" & previmgico01 & "' alt='처음'></a>"
	prevBtn02 = "<a href='"& purl &"&page="& page - 1 &"'><img src='" & previmgico02 & "' alt='이전 " & PagePerRecord & "개 페이지'></a>"
    prevBtnNo = "<img src='" & previmgico02 & "' alt='이전'>"
	nextBtn01 = "<a href='"& purl &"&page=" & page + 1 & "'><img src='" & nextimgico02 & "' alt='다음 " & PagePerRecord & "개 페이지'></a>"
	nextBtn02 = "<a href='"& purl &"&page=" & PAGE_COUNT & "'><img src='" & nextimgico01 & "' alt='맨끝'></a>"
    nextBtnNo = "<img src='" & nextimgico02 & "' alt='다음'>"

	'If PAGE_COUNT > 1 then
	'	response.write prevBtn02
	'End if

	if CLng(page) > 1 then
        response.write prevBtn02
	else
		response.write prevBtnNo
	end if

	for i = clng(startpage) to PAGE_COUNT

		if clng(i) = clng(page) then
            response.write "<strong>" & i & "</strong>"
		else
			response.write "<a href='" & purl & "&page=" & i & "'>" & i & "</a>"
		end if
		if (i mod 10) = 0 then exit for
	next

        
	if CLng(page) < CLng(PAGE_COUNT) then
        response.write nextBtn01
	else
		response.write nextBtnNo
	end if

	'If PAGE_COUNT > 1 then
	'	response.write nextBtn02
	'End if

    Response.Write "</div>"

End Function

'===========================================================================
'함수명		: fncCommonPageAx
'설  명     : Ajax 용 페이징 처리
'===========================================================================
Function fncCommonPageAx(MAXSEQ, PagePerRecord, page, purl, classname, previmgico01, previmgico02, nextimgico01, nextimgico02)
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
	startpage = page10 * 10 + 1

	If classname="" Then classname = "pagenav"

    if previmgico01 = "" Then previmgico01 = img_main & "/btn/left_aroow2.gif"
    if previmgico02 = "" Then previmgico02 = img_main & "/btn/left_aroow1.gif"
    if nextimgico01 = "" Then nextimgico01 = img_main & "/btn/right_aroow2.gif"
    if nextimgico02 = "" Then nextimgico02 = img_main & "/btn/right_aroow1.gif"

	Response.Write "<div class='" & classname & "'>"

	prevBtn01 = "<a href=""javascript:fncCommonPageMv('" & purl &"&page=1');""><img src='" & previmgico01 & "' alt='처음'></a>"
	prevBtn02 = "<a href=""javascript:fncCommonPageMv('" & purl &"&page="& page - 1 &"');""><img src='" & previmgico02 & "' alt='이전 " & PagePerRecord & "개 페이지'></a>"
    prevBtnNo = "<a><img src='" & previmgico02 & "' alt='이전'></a>"
	nextBtn01 = "<a href=""javascript:fncCommonPageMv('" & purl &"&page=" & page + 1 & "');""><img src='" & nextimgico02 & "' alt='다음 " & PagePerRecord & "개 페이지'></a>"
	nextBtn02 = "<a href=""javascript:fncCommonPageMv('" & purl &"&page=" & PAGE_COUNT & "');""><img src='" & nextimgico01 & "' alt='맨끝'></a>"
    nextBtnNo = "<a><img src='" & nextimgico02 & "' alt='다음'></a>"

	'If PAGE_COUNT > 1 then
	'	response.write prevBtn02
	'End if

	if CLng(page) > 1 then
        response.write prevBtn02
	else
		response.write prevBtnNo
	end if

	for i = clng(startpage) to PAGE_COUNT

		if clng(i) = clng(page) then
            response.write "<strong>" & i & "</strong>"
		else
			response.write "<a href=""javascript:fncCommonPageMv('" & purl & "&page=" & i & "');"">" & i & "</a>"
		end if
		if (i mod 10) = 0 then exit for
	next

        
	if CLng(page) < CLng(PAGE_COUNT) then
        response.write nextBtn01
	else
		response.write nextBtnNo
	end If

    Response.Write "</div>"
End Function


'===========================================================================
'함수명		: fncCommonPageAx_multi
'설  명     : Ajax 용 페이징 처리
'실행함수명지정
'===========================================================================
Function fncCommonPageAx_multi(funcname, MAXSEQ, PagePerRecord, page, purl, classname, previmgico01, previmgico02, nextimgico01, nextimgico02)
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
	startpage = page10 * 10 + 1

	If classname="" Then classname = "pagenav"

    if previmgico01 = "" Then previmgico01 = img_main & "/btn/left_aroow2.gif"
    if previmgico02 = "" Then previmgico02 = img_main & "/btn/left_aroow1.gif"
    if nextimgico01 = "" Then nextimgico01 = img_main & "/btn/right_aroow2.gif"
    if nextimgico02 = "" Then nextimgico02 = img_main & "/btn/right_aroow1.gif"

	Response.Write "<div class='" & classname & "'>"

	prevBtn01 = "<a href=""javascript:"&funcname&"('" & purl &"&page=1');""><img src='" & previmgico01 & "' alt='처음'></a>"
	prevBtn02 = "<a href=""javascript:"&funcname&"('" & purl &"&page="& page - 1 &"');""><img src='" & previmgico02 & "' alt='이전 " & PagePerRecord & "개 페이지'></a>"
    prevBtnNo = "<a><img src='" & previmgico02 & "' alt='이전'></a>"
	nextBtn01 = "<a href=""javascript:"&funcname&"('" & purl &"&page=" & page + 1 & "');""><img src='" & nextimgico02 & "' alt='다음 " & PagePerRecord & "개 페이지'></a>"
	nextBtn02 = "<a href=""javascript:"&funcname&"('" & purl &"&page=" & PAGE_COUNT & "');""><img src='" & nextimgico01 & "' alt='맨끝'></a>"
    nextBtnNo = "<a><img src='" & nextimgico02 & "' alt='다음'></a>"

	'If PAGE_COUNT > 1 then
	'	response.write prevBtn02
	'End if

	if CLng(page) > 1 then
        response.write prevBtn02
	else
		response.write prevBtnNo
	end if

	for i = clng(startpage) to PAGE_COUNT

		if clng(i) = clng(page) then
            response.write "<strong>" & i & "</strong>"
		else
			response.write "<a href=""javascript:"&funcname&"('" & purl & "&page=" & i & "');"">" & i & "</a>"
		end if
		if (i mod 10) = 0 then exit for
	next

        
	if CLng(page) < CLng(PAGE_COUNT) then
        response.write nextBtn01
	else
		response.write nextBtnNo
	end If

    Response.Write "</div>"
End Function
%>