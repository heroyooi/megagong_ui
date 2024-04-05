<%
	' 작업중 페이지 표시
	'If left(Request.ServerVariables("REMOTE_ADDR"),10) = "172.15.11." or Request.ServerVariables("REMOTE_ADDR") = "210.181.48.60" Or Request.ServerVariables("REMOTE_ADDR") = "112.216.111.58" Then
	'Else
	'	Response.redirect "/parking.asp"
	'	Response.End
	'End If

   ' if inStr(fncRequestVariables("PATH_INFO"), "/mypage/order/my_order.asp") > 0 Then
   '    'if Now() < CDate("2020-07-23 03:00:00") Then
   '	    Response.redirect "/error.asp"
   '	    Response.End
   '    'Else
   '	   ' Response.redirect "/megagong.asp"
   '	   ' Response.End
   '    'End if
   'End if
    'response.write Request.ServerVariables("REMOTE_ADDR")

'response.redirect "/"
	g_site_domain = "megagong.net"

    https   =  fncRequestVariables("https")
    hostnm  =  fncRequestVariables("HTTP_HOST")

    if inStr(hostnm, "dev") > 0 Then
		httpsnm = "https://" & hostnm
        if inStr(hostnm, "dev.megagong.net") = 0 And inStr(fncRequestVariables("PATH_INFO"), "/s/gong/") > 0 Then
            Response.Redirect "https://dev.megagong.net" & fncRequestVariables("PATH_INFO")
        End if
        if inStr(hostnm, "sobangdev.megagong.net") = 0 And inStr(fncRequestVariables("PATH_INFO"), "/s/sobang/") > 0 Then
            Response.Redirect "https://sobangdev.megagong.net" & fncRequestVariables("PATH_INFO")
        End if
        if inStr(hostnm, "gongsseldev.megagong.net") = 0 And inStr(fncRequestVariables("PATH_INFO"), "/c/gong/") > 0 Then
            Response.Redirect "https://gongsseldev.megagong.net" & fncRequestVariables("PATH_INFO")
        End if
        if inStr(hostnm, "ansungdev.megagong.net") = 0 And inStr(fncRequestVariables("PATH_INFO"), "/c/ansung/") > 0 Then
            Response.Redirect "https://ansungdev.megagong.net" & fncRequestVariables("PATH_INFO")
        End if
        if inStr(hostnm, "sobangcampusdev.megagong.net") = 0 And inStr(fncRequestVariables("PATH_INFO"), "/c/sobang/") > 0 Then
            Response.Redirect "https://sobangcampusdev.megagong.net" & fncRequestVariables("PATH_INFO")
        End if
        if inStr(hostnm, "ngbrdev.megagong.net") = 0 And inStr(fncRequestVariables("PATH_INFO"), "/r/ngbr/") > 0 Then
            Response.Redirect "https://ngbrdev.megagong.net" & fncRequestVariables("PATH_INFO")
        End if
        if inStr(hostnm, "armydev.megagong.net") = 0 And inStr(fncRequestVariables("PATH_INFO"), "/s/army/") > 0 Then
            Response.Redirect "https://armydev.megagong.net" & fncRequestVariables("PATH_INFO")
        End if
    Else
        if hostnm = "campus.megagong.net" Then
            Response.Redirect "https://sobangcampus.megagong.net" & fncRequestVariables("PATH_INFO")
        End if

        'if hostnm = "gongssel.megagong.net" Then
        '    Response.Redirect "https://gongssel.megagong.net" & fncRequestVariables("PATH_INFO")
        'End if

        if hostnm = "megagong.net" Then
            Response.Redirect "https://www.megagong.net" & fncRequestVariables("PATH_INFO")
        End if

		httpsnm = "https://" & hostnm
        if inStr(hostnm, "www.megagong.net") = 0 And inStr(hostnm, "www171.megagong.net") = 0 And inStr(hostnm, "www172.megagong.net") = 0  And inStr(fncRequestVariables("PATH_INFO"), "/s/gong/") > 0 Then
            Response.Redirect "https://www.megagong.net" & fncRequestVariables("PATH_INFO")
        End if
        if inStr(hostnm, "sobang.megagong.net") = 0 And inStr(hostnm, "sobang171.megagong.net") = 0 And inStr(hostnm, "sobang172.megagong.net") = 0 And inStr(fncRequestVariables("PATH_INFO"), "/s/sobang/") > 0 Then
            Response.Redirect "https://sobang.megagong.net" & fncRequestVariables("PATH_INFO")
        End if
        if inStr(hostnm, "gongssel.megagong.net") = 0 And inStr(hostnm, "gongssel171.megagong.net") = 0 And inStr(hostnm, "gongssel172.megagong.net") = 0 And inStr(fncRequestVariables("PATH_INFO"), "/c/gong/") > 0 Then
            Response.Redirect "https://gongssel.megagong.net" & fncRequestVariables("PATH_INFO")
        End if
        if inStr(hostnm, "ansung.megagong.net") = 0 And inStr(hostnm, "ansung171.megagong.net") = 0 And inStr(hostnm, "ansung172.megagong.net") = 0 And inStr(fncRequestVariables("PATH_INFO"), "/c/ansung/") > 0 Then
            Response.Redirect "https://ansung.megagong.net" & fncRequestVariables("PATH_INFO")
        End if
        if inStr(hostnm, "sobangcampus.megagong.net") = 0 And inStr(hostnm, "sobangcampus171.megagong.net") = 0 And inStr(hostnm, "sobangcampus172.megagong.net") = 0 And inStr(fncRequestVariables("PATH_INFO"), "/c/sobang/") > 0 Then
            Response.Redirect "https://sobangcampus.megagong.net" & fncRequestVariables("PATH_INFO")
        End if
        if inStr(hostnm, "ngbr.megagong.net") = 0 And inStr(hostnm, "ngbr171.megagong.net") = 0 And inStr(hostnm, "ngbr172.megagong.net") = 0 And inStr(fncRequestVariables("PATH_INFO"), "/r/ngbr/") > 0 Then
            Response.Redirect "https://ngbr.megagong.net" & fncRequestVariables("PATH_INFO")
        End if
        if inStr(hostnm, "army.megagong.net") = 0 And inStr(hostnm, "army171.megagong.net") = 0 And inStr(hostnm, "army172.megagong.net") = 0 And inStr(fncRequestVariables("PATH_INFO"), "/s/army/") > 0 Then
            Response.Redirect "https://army.megagong.net" & fncRequestVariables("PATH_INFO")
        End if

    End If

    if https <> "on" Then
        qstr = fncRequestVariables("QUERY_STRING")
        if qstr <> "" Then qstr = "?" & qstr
        Response.Redirect "https://" & hostnm & fncRequestVariables("PATH_INFO") & qstr
    End if

	' ▒▒▒ 이미지 경로 : 작성 규약 - img_{폴더명} ▒▒▒
	Dim img_main, img_common, img_prof, img_vod, img_mypage, img_search, img_player
	if inStr(fncRequestVariables("HTTP_HOST"), "dev") > 0 then
		img_main	= "https://design.megagong.net/image"
	Else
        img_main	= "https://img.megagong.net"
	End If


	lo_now_date  = getParamTxt( "now", "", 1)
	'' 접속자가 관리자인 경우 타이머 확인 가능
	If lo_now_date = "" Then
		lo_now_date = now()
	Else
		If ucase(fncrequestCookie("mem_type"))="E" Then
			lo_now_date = lo_now_date
		Else
			lo_now_date = now()
		End IF
	End If
    'lo_now_date = replace(replace(lo_now_date,"오전",""),"오후","")
	lo_now_date = Year(lo_now_date)&"-"&Right("0"&Month(lo_now_date),2)&"-"&Right("0"&day(lo_now_date),2)& " " & Right("0"&hour(lo_now_date),2)&":"& Right("0"&minute(lo_now_date),2)&":"& Right("0"&second(lo_now_date),2)

    if inStr(hostnm, ".") = 0 Then hostnm = "www.megagong.net"
    ar_h = Split(hostnm, ".")

    if isArray(ar_h) Then
        hval = ar_h(0)
        Select Case hval
            Case "dev", "www" :
                hcode = "gong"
				h_dcd = "4"
                pay_gbn = "on"

                h_lnk = "/"

                h_tit = "공무원 합격의 새로운 기준, 메가공무원"
                h_des = "합격할 때까지 전 강좌 무제한, 공무원 메가패스! 7/9급 공무원 인강, 수강료 100% 환급, 최정상급 강사진"
                h_key = "메가공무원, 메가스터디공무원, 메가공, 공무원메가패스, 수강료환급, 100%환급, 9급공무원, 7급공무원, 공무원시험, 공무원인강, 공무원시험준비, 국가직공무원, 지방직공무원"

                h_img = img_main & "/brand/gong.png?now="&now

                h_headlogo = img_main & "/s/gong/logo_v2.png"
                h_footlogo = ""

                If instr(fncRequestVariables("path_info"),"/s/gong/pass/sale_2021.asp")>0 Then
                    h_tit = "9급공무원 합격의 기준, 9급 메가패스"  '9급 메가패스 페이지 (title 별도)
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/pass/sale_2021_7rank.asp")>0  Then
                    h_tit = "7급공무원 합격의 기준, 7급XPSAT 메가패스"  '7급 메가패스 페이지 (title 별도)
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/event/2021/03300046/")>0  Then
                    h_tit = "합격예측 정확도 99%, 메가공무원 국가직 풀서비스 사전예약"
                    h_des = "4/17 국가직 시험, 합격예측 풀서비스 사전예약! 필기합격 가능성 예측, 특허받은 예측 서비스"
                    h_key = "메가공무원, 메가스터디공무원, 7급공무원, 공무원인강, 공무원시험, 국가직공무원, 지방직공무원, 9급공무원, 국가직시험과목, 공무원모의고사, 국가직9급, 국가직시험, 국가직필기, 국가직시험기출, 메가공무원합격예측, 국가직합격예측, 국가직채점"
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/full/20210417/")>0  Then
                    h_tit = "2021 국가직 시험, 메가공무원 합격예측 풀서비스"
                    h_des = "합격예측 정확도 99%, 모바일 간편채점, 정답 확인, 실시간 예상 합격선 제공, 내 위치 확인, 총평과 해설"
                    h_key = "메가공무원, 메가스터디공무원, 공무원시험, 국가직공무원, 국가직시험과목, 국가직9급, 국가직시험, 국가직필기, 메가공무원합격예측, 국가직합격예측, 국가직채점, 메가공무원풀서비스, 국가직총평, 국가직해설강의, 국가직가답안, 국가직합격컷, 국가직시험정답"
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/full/20210605/")>0  Then
                    h_tit = "2021 지방직 시험, 메가공무원 합격예측 풀서비스"
                    h_des = "합격예측 정확도 99%, 모바일 간편채점, 정답 확인, 실시간 예상 합격선 제공, 내 위치 확인, 총평과 해설"
                    h_key = "메가공무원, 메가스터디공무원, 공무원시험, 지방직공무원, 지방직시험과목, 지방직9급, 지방직시험, 지방직필기, 메가공무원합격예측, 지방직합격예측, 지방직채점, 메가공무원풀서비스, 지방직총평, 지방직해설강의, 지방직가답안, 지방직합격컷, 지방직시험정답"
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/pass/sale_2022.asp")>0  Then
                    h_tit = "9급공무원 | 7급공무원 | 공무원 메가패스"
                    h_des = "9/7급 전 직렬 대비! 공무원 메가패스, 전 과목 평생 수강, 100% 환급, 최정상급 강사 라인업"
                    h_key = "메가공무원, 메가스터디공무원, 공무원메가패스, 전직렬패스, 무제한수강, 수강료환급, 100%환급, 9급공무원, 7급공무원, 공무원시험, 공무원인강, 국가직공무원, 지방직공무원"
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/pass/gov_sale_2022.asp")>0  Then
                    h_tit = "행정직 공무원 합격은 메가공무원"
                    h_des = "9/7급 행정직 대비! 행정직 메가패스, 전 과목 평생 수강, 100% 환급, 최정상급 강사 라인업"
                    h_key = "메가공무원, 메가스터디공무원, 행정직패스, 행정직메가패스, 무제한수강, 수강료환급, 행정직공무원, 행정공무원, 일반행정직, 일행직, 행정직, 9급행정직, 7급행정직, 행정직시험"
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/pass/tax_sale_2022.asp")>0  Then
                    h_tit = "세무/관세직 공무원 합격은 메가공무원"
                    h_des = "9/7급 세무직, 관세직 대비! 세무/관세직 메가패스, 전 과목 평생 수강, 100% 환급, 최정상급 강사 라인업"
                    h_key = "메가공무원, 세무직패스, 관세직패스, 세무직메가패스, 관세직메가패스, 세무직공무원, 관세직공무원, 세무직, 관세직, 9급세무직, 7급세무직, 9급관세직, 7급관세직, 세무직시험, 관세직시험"
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/pass/welfare_sale_2022.asp")>0  Then
                    h_tit = "사회복지직 공무원 합격은 메가공무원"
                    h_des = "9급 사회복지직 대비! 사회복지직 메가패스, 전 과목 평생 수강, 100% 환급, 최정상급 강사 라인업"
                    h_key = "메가공무원, 메가스터디공무원, 사회복지직메가패스, 사회복지직패스, 무제한수강, 수강료환급, 사회복지공무원, 사회복지직공무원, 사회복지사공무원, 사회복지직, 9급사회복지직, 9급사회복지공무원, 9급사회복지직공무원"
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/pass/security_sale_2022.asp")>0  Then
                    h_tit = "공안직 공무원 합격은 메가공무원"
                    h_des = "9/7급 공안직 대비! 공안직 메가패스, 전 과목 평생 수강, 100% 환급, 최정상급 강사 라인업"
                    h_key = "메가공무원, 메가스터디공무원, 공안직패스, 공안직메가패스, 무제한수강, 수강료환급, 공안직, 공안직공무원, 공안직종류, 검찰직, 마약수사직, 철도경찰직, 교정직, 보호직, 출입국관리직"
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/pass/edu_sale_2022.asp")>0  Then
                    h_tit = "교육행정직 공무원 합격은 메가공무원"
                    h_des = "9/7급 교육행정직렬 대비! 교육행정직 메가패스, 전 과목 평생 수강, 100% 환급, 최정상급 강사 라인업"
                    h_key = "메가공무원, 메가스터디공무원, 교육행정직패스, 교행직패스, 교육행정직, 교육직, 교행직, 교육학공무원, 교육직공무원, 교행직공무원, 9급교육직, 7급교육직, 교육행정직공무원, 교육행정직시험"
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/pass/safety_sale_2022.asp")>0  Then
                    h_tit = "교정직 공무원 합격은 메가공무원"
                    h_des = "9/7급 교정직 대비! 교정직 메가패스, 전 과목 평생 수강, 100% 환급, 최정상급 강사 라인업"
                    h_key = "메가공무원, 메가스터디공무원, 교정직패스, 교정직메가패스, 무제한수강, 수강료환급, 100%환급, 교정직공무원, 9급교정직, 7급교정직, 교정직시험, 교정직공무원시험"
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/pass/court_sale_2022.asp")>0  Then
                    h_tit = "법원직 공무원 합격은 메가공무원"
                    h_des = "9급 법원직 대비! 법원직 메가패스, 전 과목 평생 수강, 100% 환급, 최정상급 강사 라인업"
                    h_key = "메가공무원, 메가스터디공무원, 법원직패스, 법원직메가패스, 메가법원직, 무제한수강, 수강료환급, 100%환급, 법원직공무원, 9급법원직공무원, 법원직, 9급법원직, 법원직시험, 법원직공무원시험"
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/pass/tech_sale_2022.asp")>0  Then
                    h_tit = "전산직 공무원 합격은 메가공무원"
                    h_des = "9급 전산직 대비! 전산직 메가패스, 전 과목 무제한 수강, 전산직 전문 강사 라인업"
                    h_key = "메가공무원, 메가스터디공무원, 전산직패스, 전산직메가패스, 기술직, 전산직, 기술직공무원, 전산직공무원, 전산공무원, 9급전산직, 전산직시험, 전산직공무원시험, 전산직인강"
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/pass/engi_sale_2022.asp")>0  Then
                    h_tit = "토목직 공무원 합격은 메가공무원"
                    h_des = "9급 토목직 대비! 토목직 메가패스, 전 과목 무제한 수강, 토목직 전문 강사 라인업"
                    h_key = "메가공무원, 메가스터디공무원, 토목직패스, 토목직메가패스, 기술직, 토목직, 기술직공무원, 토목직공무원, 토목공무원, 9급토목직, 토목직시험, 토목직공무원시험, 토목직인강"
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/full/20210911/")>0  Then
                    h_tit = "2021 7급 국가직 2차 시험, 메가공무원 합격예측 풀서비스"
                    h_des = "합격예측 정확도 99%, 모바일 간편채점, 정답 확인, 실시간 예상 합격선 제공, 내 위치 확인, 총평과 해설"
                    h_key = "메가공무원, 메가스터디공무원, 7급공무원, 공무원시험, 국가직공무원, 국가직7급2차, 국가직시험, 7급공무원시험, 국가직7급채점, 메가공무원합격예측, 국가직7급풀서비스, 국가직7급난이도, 메가공무원풀서비스, 국가직7급총평, 국가직7급해설강의, 국가직7급가답안, 국가직7급합격컷, 국가직7급시험정답"
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/full/20211016/")>0  Then
                    h_tit = "2021 지방직 7급 시험, 메가공무원 합격예측 풀서비스"
                    h_des = "합격예측 정확도 99%, 모바일 간편채점, 정답 확인, 실시간 예상 합격선 제공, 내 위치 확인, 총평과 해설"
                    h_key = "메가공무원, 메가스터디공무원, 7급공무원, 공무원시험, 지방직공무원, 지방직7급, 지방직시험, 7급공무원시험, 지방직7급채점, 메가공무원합격예측, 메가공무원풀서비스, 지방직7급풀서비스, 지방직7급난이도, 지방직7급총평, 지방직7급해설강의, 지방직7급가답안, 지방직7급합격컷, 지방직7급시험정답"
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/event/2022/03170034/")>0  Then
                    h_tit = "2022 국가직 9급, 메가공무원 합격예측 풀서비스"
                    h_des = "4/2(토) 국가직 시험, 합격예측 풀서비스! 9급 채점, 난이도, 합격컷, 합격선 필기합격 가능성 예측. 행정직&기술직군"
                    h_key = "메가공무원, 메가스터디공무원, 메가공, 9급공무원, 7급공무원, 공무원시험, 국가직공무원, 지방직공무원, 9급일반행정직, 공무원9급, 국가직9급, 공무원9급시험, 9급공무원시험, 국가직공무원공채시험, 국가직시험, 국가직공무원시험, 국가직합격예측, 국가직채점"
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/full/20220402/")>0  Then
                    h_tit = "메가공무원, 2022년 국가직 9급 실시간 합격예측"
                    h_des = "합격예측 풀서비스, 정확도 99%, 모바일 간편채점, 정답 확인, 난이도, 합격컷, 실시간 합격 가능성, 총평과 해설"
                    h_key = "메가공무원, 메가스터디공무원, 9급공무원, 공무원시험, 국가직공무원, 국가직필기, 국가직필기시험, 9급일반행정직, 공무원9급, 국가직9급, 공무원9급시험, 9급공무원시험, 국가직시험, 국가직공무원시험, 국가직합격컷, 국가직합격예측, 국가직채점, 국가직시험정답, 국가직가답안, 국가직가채점"
                ElseIf instr(fncRequestVariables("path_info"),"/s/sobang/full/20220409/")>0  Then
                    h_tit = "메가소방, 2022 소방직 공채/경채 실시간 합격예측"
                    h_des = "합격예측 풀서비스, 정확도 99.9%, 모바일 간편채점, 정답 확인, 난이도, 합격컷, 실시간 합격 가능성, 총평, 해설강의"
                    h_key = "메가소방, 메가스터디소방, 소방공무원, 소방직공무원, 소방공무원시험, 소방직공채, 소방직경채, 소방직필기, 소방직필기시험, 공무원소방, 소방공무원공채시험, 소방직시험, 소방직합격예측, 소방직채점, 소방공무원필기, 소방합격선, 소방합격컷, 소방직시험정답, 소방직가답안, 소방직가채점, 소방직예측, 소방면접"
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/event/2022/06020064/")>0  Then
                    h_tit = "메가공무원, 2022년 지방직 9급 합격예측 풀서비스"
                    h_des = "6/18(토) 지방직 시험, 합격예측 정확도 100%, 9급 채점, 난이도, 합격컷, 합격선, 필기합격 가능성"
                    h_key = "메가공무원, 메가스터디공무원, 메가공, 9급공무원, 7급공무원, 공무원시험, 국가직공무원, 지방직공무원, 9급일반행정직, 공무원9급, 지방직9급, 공무원9급시험, 9급공무원시험, 지방직공무원공채시험, 지방직시험, 지방직공무원시험, 지방직합격예측, 지방직채점"
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/full/20220618/")>0  Then
                    h_tit = "2022 지방직 9급, 메가공무원 실시간 합격예측"
                    h_des = "정확도 100%, 지방직 시험, 채점, 풀서비스, 지방직 정답, 난이도, 합격컷, 합격선, 총평 및 해설"
                    h_key = "메가공무원, 메가스터디공무원, 메가공, 9급공무원, 공무원시험, 공무원시험준비, 지방직공무원, 지방직필기, 지방직필기시험, 지방직합격예측, 지방직채점, 지방직시험정답, 지방직가답안, 지방직답안, 지방직가채점, 지방직9급, 지방직9급시험, 지방직시험, 지방직공무원시험, 지방직합격컷"
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/event/2022/07190107/index.asp")>0  Then
                    h_tit = "메가공무원 NEW 학습스타일 테스트"
                    h_des = "MBTI 반영! 8가지 채소 캐릭터로 여러분의 학습 성향을 확인해 보세요!"
                    h_img = img_main & "/m/2022/0719_quiz/main.png"
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/event/2022/07190107/share.asp")>0  Then
                    h_des = "[MBIT 학습스타일 테스트] 당신의 채소 캐릭터는?"
                    event_result_2956 = fncrequest("testResult")
                    if event_result_2956 = "SSS" then
                        h_tit = "차분한 옥수수"
                        h_img = img_main & "/m/2022/0719_quiz/" & event_result_2956 & ".png"
                    elseif event_result_2956 = "SSE" then
                        h_tit = "여유로운 늙은 호박"
                        h_img = img_main & "/m/2022/0719_quiz/" & event_result_2956 & ".png"
                    elseif event_result_2956 = "SNS" then
                        h_tit = "성질 급한 브로콜리"
                        h_img = img_main & "/m/2022/0719_quiz/" & event_result_2956 & ".png"
                    elseif event_result_2956 = "SNE" then
                        h_tit = "호기심 많은 고구마"
                        h_img = img_main & "/m/2022/0719_quiz/" & event_result_2956 & ".png"
                    elseif event_result_2956 = "NSS" then
                        h_tit = "성실한 양파"
                        h_img = img_main & "/m/2022/0719_quiz/" & event_result_2956 & ".png"
                    elseif event_result_2956 = "NSE" then
                        h_tit = "불타는 파프리카"
                        h_img = img_main & "/m/2022/0719_quiz/" & event_result_2956 & ".png"
                    elseif event_result_2956 = "NNS" then
                        h_tit = "발 빠른 가지"
                        h_img = img_main & "/m/2022/0719_quiz/" & event_result_2956 & ".png"
                    elseif event_result_2956 = "NNE" then
                        h_tit = "춤추는 상추"
                        h_img = img_main & "/m/2022/0719_quiz/" & event_result_2956 & ".png"
                    else
                        h_tit = "차분한 옥수수"
                        h_img = img_main & "/m/2022/0719_quiz/SSS.png"
                    end if
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/event/2022/06280086/index.asp")>0  Then
                    h_img = img_main & "/m/2022/0628_planner/planner_OGimg.png"
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/event/2022/09230145/index.asp")>0  Then
                    h_tit = "MBTI 직업 추천 테스트"
                    h_des = "내 성격과 가장 찰떡인 직업을 확인해 보세요!"
                    h_img = img_main & "/m/2022/0923_quiz/result_og.png"
                    event_result_3035 = fncrequest("testResult")
                    If event_result_3035 <> "" Then
                        Select Case event_result_3035
                            Case "a" :
                                h_tit = "천상 연예인"
                                h_des = "[MBTI 직업 추천 테스트] 나와 찰떡인 직업은?"
                                h_img = img_main & "/m/2022/0923_quiz/result_og_a.png"
                            Case "b" :
                                h_tit = "한국의 고든램지"
                                h_des = "[MBTI 직업 추천 테스트] 나와 찰떡인 직업은?"
                                h_img = img_main & "/m/2022/0923_quiz/result_og_b.png"
                            Case "c" :
                                h_tit = "솔로몬의 환생"
                                h_des = "[MBTI 직업 추천 테스트] 나와 찰떡인 직업은?"
                                h_img = img_main & "/m/2022/0923_quiz/result_og_c.png"
                            Case "d" :
                                h_tit = "백의의 천사"
                                h_des = "[MBTI 직업 추천 테스트] 나와 찰떡인 직업은?"
                                h_img = img_main & "/m/2022/0923_quiz/result_og_d.png"
                            Case "e" :
                                h_tit = "현대의 피카소"
                                h_des = "[MBTI 직업 추천 테스트] 나와 찰떡인 직업은?"
                                h_img = img_main & "/m/2022/0923_quiz/result_og_e.png"
                            Case "f" :
                                h_tit = "제 2의 피타고라스"
                                h_des = "[MBTI 직업 추천 테스트] 나와 찰떡인 직업은?"
                                h_img = img_main & "/m/2022/0923_quiz/result_og_f.png"
                            Case "g" :
                                h_tit = "인간 CCTV"
                                h_des = "[MBTI 직업 추천 테스트] 나와 찰떡인 직업은?"
                                h_img = img_main & "/m/2022/0923_quiz/result_og_g.png"
                        End Select
                    End If
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/full/20221015/")>0  Then
                    h_tit = "2022 7급 국가직 2차 시험, 메가공무원 합격예측 풀서비스"
                    h_des = "10/15(토) 국가직 7급 2차, 정확도 100%, 간편채점, 정답, 난이도, 합격컷, 합격선, 커트라인"
                    h_key = "메가공무원, 메가스터디공무원, 7급공무원, 공무원시험, 국가직공무원, 국가직7급2차, 국가직시험, 7급공무원시험, 국가직7급채점, 메가공무원합격예측, 국가직7급풀서비스, 국가직7급난이도, 메가공무원풀서비스, 국가직7급총평, 국가직7급해설강의, 국가직7급가답안, 국가직7급합격컷, 국가직7급시험정답"
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/full/20221029/")>0  Then
                    h_tit = "2022 7급 지방직시험, 메가공무원 합격예측 풀서비스"
                    h_des = "10/29(토) 서울시/지방직 7급, 정확도 100%, 간편채점, 정답, 난이도, 합격컷, 합격선, 커트라인"
                    h_key = "메가공무원, 메가스터디공무원, 7급공무원, 공무원시험, 지방직공무원, 지방직7급, 지방직시험, 7급공무원시험, 지방직7급채점, 메가공무원합격예측, 지방직7급풀서비스, 지방직7급난이도, 메가공무원풀서비스, 지방직7급총평, 지방직7급해설강의, 지방직7급가답안, 지방직7급합격컷, 지방직7급시험정답"
                End If

            Case "sobangdev", "sobang", "sobang171", "sobang172" :
                hcode = "sobang"
				h_dcd = "3"
                pay_gbn = "on"

                h_lnk = "/"

                h_tit = "소방 합격의 새로운 기준, 메가소방"

                h_des = "최종 합격생 900% 증가! 소방 메가패스, 공채/경채 전문 강좌, 전 과목 평생 수강, 100% 환급"
                h_key = "메가소방, 메가스터디소방, 소방메가패스, 무제한수강, 수강료환급, 100%환급, 소방전문, 소방공채, 소방경채, 소방공무원, 소방공무원시험, 소방공무원시험과목, 소방공무원필기, 소방공무원인강"
                h_img = img_main & "/brand/sobang.png?now="&now

                h_headlogo = img_main & "/s/sobang/logo_v2.png"
                h_footlogo = ""

                If instr(fncRequestVariables("path_info"),"/s/sobang/pass/sale_2021.asp")>0 Then
                    h_tit = "소방공무원 합격의 새로운 기준, 소방 메가패스" '소방 메가패스 페이지 (title 별도)
                ElseIf instr(fncRequestVariables("path_info"),"/s/sobang/event/2021/03170017/index.asp")>0 Then
                    h_tit = "합격예측 정확도 99.9%, 메가소방 풀서비스 사전예약 이벤트" '소방 풀서비스 사전예약 페이지 (title 별도)
                    h_des = "소방 수험 브랜드 1위, 2021 소방직 시험! 합격예측 풀서비스 사전예약, 필기합격 가능성 예측, 특허받은 예측 서비스"
                    h_key = "메가소방, 메가스터디소방, 소방전문, 소방공무원시험과목, 소방공무원필기, 소방공무원, 소방공무원인강, 소방공무원시험, 소방모의고사, 소방시험과목, 소방시험기출, 소방증원, 소방필기, 소방면접, 소방체력"
                ElseIf instr(fncRequestVariables("path_info"),"/s/sobang/full/20210403/")>0 Then
                    h_tit = "2021 소방공무원 시험, 메가소방 합격예측 풀서비스"
                    h_des = "합격예측 정확도 99.9% 모바일 간편 채점, 실시간 예상 합격선 제공, 채용분야별 내 위치 확인, 총평과 해설"
                    h_key = "메가소방, 메가스터디소방, 소방전문, 소방공무원필기, 소방공무원, 소방공무원시험, 소방시험과목, 소방필기, 소방면접, 소방체력, 소방공무원총평, 소방공무원해설강의, 소방공무원시험가답안, 소방가답안, 소방시험정답, 소방시험채점, 소방합격컷"
                ElseIf instr(fncRequestVariables("path_info"),"/s/sobang/event/2022/03240018/")>0 Then
                    h_tit = "2022 소방직, 메가소방 합격예측 풀서비스"
                    h_des = "4/9(토) 소방공무원시험, 합격예측 풀서비스! 소방직 채점, 난이도, 합격컷, 합격선 필기합격 가능성 예측, 공채&경채"
                    h_key = "메가소방, 메가스터디소방, 소방공무원, 소방직공무원, 공무원시험, 소방공무원시험, 소방직공채, 소방직경채, 공무원소방, 국가직소방, 소방공무원공채시험, 소방직시험, 소방직합격예측, 소방직채점, 소방공무원필기, 소방합격선, 소방합격컷"
                End If
            Case "gongsseldev", "gongssel", "gongssel171", "gongssel172" :
                hcode = "gongssel"
				h_dcd = "4"
                pay_gbn = "off"

                h_rms_aca_cd = "1"
                h_pay_aca_cd = "4"
                h_lnk = "/"

                h_tit = "메가스터디가 만든 공무원 전문학원, 메가공무원학원"
                h_des = "9급/7급/법원직 단과&종합반, 면접센터, 프리미엄 학습공간, 노량진역 3-1번 출구, 메가스터디타워 3/4층"
                h_key = "메가공무원학원, 메가공무원, 메가스터디공무원학원, 9급공무원, 7급공무원, 노량진공무원학원, 노량진학원, 공무원학원, 관리형자습관, 노량진관리형독서실"
                h_img = img_main & "/brand/gongcampus.png?now="&now

                h_headlogo = img_main & "/c/gongssel/logo_nk.png"
                h_footlogo = ""
            Case "ansungdev", "ansung", "ansung171", "ansung172" :
                hcode = "ansung"
				h_dcd = "1"
                pay_gbn = "off"

                h_pay_aca_cd = "2"
                h_lnk = "/"

                h_tit = "합격자 배출 1위, 메가공무원 기숙 전문관"
                h_des = "수석합격자 다수, 24시간 chain-care 시스템, 학습+체력 완벽 대비, 누적 필기합격자 1,089명"
                h_key = "메가공무원 전문관, 메가공무원, 메가공무원기숙학원, 메가경찰기숙학원, 메가소방기숙학원, 공무원기숙학원, 경찰기숙학원, 소방기숙학원, 안성기숙학원"
                h_img = img_main & "/brand/ansung.png?now="&now

                h_headlogo = img_main & "/c/ansung/logo_renewal.png?now="&now
                h_footlogo = ""

            Case "sobangcampusdev", "sobangcampus", "sobangcampus171", "sobangcampus172" :
                hcode = "sobangcampus"
				h_dcd = "3"
                pay_gbn = "off"

                h_pay_aca_cd = "3"
                h_lnk = "/"

                h_tit = "메가스터디가 만든 소방전문학원, 메가소방학원"
                h_des = "수강생 10명 중 6명 필기합격!* 버닝클래스, 소방 전문 강의, 노량진역 3-1번 출구, 메가스터디타워 7층"
                h_key = "난공소방학원, 메가소방, 메가소방학원, 버닝클래스, 공무원학원, 소방학원, 소방공무원학원, 노량진학원, 노량진소방학원, 소방공무원"
                h_img = img_main & "/brand/sobangcampus.png?now="&now

                h_headlogo = img_main & "/s/sobangcampus/logo.png"
                h_footlogo = ""

            Case "ngbrdev", "ngbr", "ngbr171", "ngbr172" :
                hcode = "ngbr"
				h_dcd = "r"
                pay_gbn = "off"

                h_lnk = "/"

                h_tit = "합격의 본질에 집중하다. 메가공무원 스파르타"
                h_des = "공무원 수험생을 위한 프리미엄 관리형 독서실. 합격생멘토 상주 및 1:1 관리, 수험생 맞춤 일간/주간 학습 콘텐츠 제공, 메가패스 수강료 지원"
                h_key = "메가공무원 스파르타, 난공불락스파르타, 난공스파르타, 관리형독서실, 9급공무원, 공무원독서실, 공무원자습, 프리미엄독서실, 난공스파, 메가공무원, 공무원메가패스"
                h_img = img_main & "/brand/ngbr.png?now="&now

                h_headlogo = img_main & "/r/ngbr/common/logo.png"
                h_footlogo = ""

            Case "armydev", "army", "army171", "army172" :

                If cdate(lo_now_date) >= cdate("2022-09-01 00:00:00") AND inStr(fncRequestVariables("PATH_INFO"), "/s/army/campus/") > 0 Then
                    hcode = "armycampus"
                    h_lnk = "/s/army/campus/"
                Else
                    hcode = "army"
                    h_lnk = "/"
                End If

				h_dcd = "5"
                pay_gbn = "on"

                h_pay_aca_cd = "3"

                h_tit = "군무원 합격의 새로운 기준, 메가군무원"
                h_des = "군무원 전문 강사/콘텐츠! 군무원 메가패스, 전 과목 무제한, 100% 환급, G-TELP/한능검 강좌 제공"
                h_key = "메가군무원, 메가스터디군무원, 군무원메가패스, 군무원, 군무원시험, 군무원경쟁률, 군무원인강, 국방부군무원, 행정직군무원, 공군군무원, 육군군무원, 해군군무원, 해병대군무원, 군수직공무원, 군무원수사직"
                h_img = img_main & "/brand/army.png?now="&now

                If instr(fncRequestVariables("path_info"),"/s/army/pass/sale_2021.asp")>0 Then
                    h_tit = "군무원 합격의 새로운 기준, 군무원 메가패스"
                ElseIf instr(fncRequestVariables("path_info"),"/s/army/event/2022/06300009/")>0 Then
                    h_tit = "2022 메가군무원 합격예측 풀서비스"
                    h_des = "7/16(토) 군무원시험, 정확도 100%, 9/7급 군무원 채점, 난이도, 합격컷, 합격선, 필기합격 가능성"
                    h_key = "메가군무원, 메가스터디군무원, 군무원, 9급군무원, 7급군무원, 육군군무원, 해군군무원, 공군군무원, 국방부군무원, 해병대군무원, 군무원시험, 군무원9급시험, 9급군무원시험, 군무원7급시험, 7급군무원시험, 군무원공채, 군무원합격예측, 군무원필기, 군무원채점, 군무원합격선, 군무원합격컷"
                ElseIf instr(fncRequestVariables("path_info"), "/s/army/full/20220716/") > 0 Then
                    h_tit = "7/16(토) 군무원 시험, 메가군무원 풀서비스"
                    h_des = "2022년 군무원시험, 실시간 합격예측, 간편채점, 정답확인, 정확도100%, 채점선물, 난이도, 합격 커트라인"
                    h_key = "메가군무원, 메가스터디군무원, 군무원, 9급군무원, 7급군무원, 육군군무원, 해군군무원, 공군군무원, 국방부군무원, 해병대군무원, 군무원시험, 군무원9급시험, 9급군무원시험, 군무원7급시험, 7급군무원시험, 군무원공채, 군무원합격예측, 군무원필기, 군무원채점, 군무원합격선, 군무원합격컷, 메가군무원풀서비스, 메가군무원채점, 메가군무원합격예측, 군무원풀서비스, 군무원합격예측, 군무원공채채점, 군무원공채정답, 군무원시험난이도, 군무원시험커트라인, 군무원필기정답, 군무원정답, 군무원필기시험, 군무원답안, 군무원가답안, 군무원가채점, 군무원커트라인"
                End If

                h_headlogo = img_main & "/s/army/logo.png"
                h_footlogo = ""

            Case "labdev", "lab" :
                '합격전략 연구소 서브도메인 세팅
                hcode = "lab"
                h_gubn = "gong"
                h_lnk = "/"
                h_dcd = fncRequestCookie("h_dcd")

                If instr(fncRequestVariables("path_info"),"/gong/")>0 Then
                    h_dcd = "4"
                ElseIf instr(fncRequestVariables("path_info"),"/sobang/")>0 Then
                    h_dcd = "3"
                ElseIf instr(fncRequestVariables("path_info"),"/army/")>0 Then
                    h_dcd = "5"
                End If

                if h_dcd = "3" then
                    h_gubn = "sobang"

                elseif h_dcd = "5" then
                    h_gubn = "army"

                else
                    h_dcd = "4"
                    h_gubn = "gong"
                end if

                Call SetCookie("h_dcd", h_dcd)

                pay_gbn = "off"

                h_tit = "공무원 합격의 새로운 기준, 메가공무원 합격전략연구소"
                h_des = ""
                h_key = ""

                h_img = img_main & "/brand/gong.png?now="&now

                h_headlogo = img_main & "/s/gong/logo_v2.png"
                h_footlogo = ""

            Case Else :
                hcode = "gong"
				h_dcd = "4"
                pay_gbn = "on"

                h_lnk = "/"

                h_tit = "공무원 합격의 새로운 기준, 메가공무원"
                If instr(fncRequestVariables("path_info"),"/s/gong/pass/sale_2021.asp")>0 Then
                    h_tit = "9급공무원 합격의 기준, 9급 메가패스"  '9급 메가패스 페이지 (title 별도)
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/pass/sale_2021_7rank.asp")>0  Then
                    h_tit = "7급공무원 합격의 기준, 7급XPSAT 메가패스"  '7급 메가패스 페이지 (title 별도)
                End If

                h_des = "합격할 때까지 전 강좌 무제한, 공무원 메가패스! 7/9급 전문 콘텐츠, 수강료 100% 환급, 최정상급 강사진"
                h_key = "메가공무원, 메가스터디공무원, 메가공, 공무원메가패스, 수강료환급, 100%환급, 9급공무원, 7급공무원, 공무원시험, 공무원인강, 공무원시험준비, 국가직공무원, 지방직공무원"
                h_img = img_main & "/brand/gong.png?now="&now

                h_headlogo = img_main & "/s/gong/logo_v2.png"
                h_footlogo = ""
        End Select
    End if

	' ▒▒▒ 소스 경로 : 작성 규약 - img_{폴더명} ▒▒▒
	img_common		= img_main & "/common"			'공통 이미지
	img_prof		= img_main & "/prof"			'선생님
	img_vod			= img_main & "/vod"				'동영상강좌
	img_mypage		= img_main & "/mypage"			'마이페이지
	img_search		= img_main & "/search"			'검색
	img_player		= img_main & "/player"			'동영상플레이어
	img_profphoto	= img_main & "/profphoto/" & hcode



	' ▒▒▒ 소스 경로 : 작성 규격 - url_{폴더명} ▒▒▒
	Dim url_main
    if inStr(hostnm, "dev") > 0 Then
	    url_main	        = "https://dev.megagong.net"
        sobang_main	        = "https://sobangdev.megagong.net"
        campus_main	        = "https://campusdev.megagong.net"
        ansung_main	        = "https://ansungdev.megagong.net"
        sobangcampus_main	= "https://sobangcampusdev.megagong.net"
        gongssel_main       = "https://gongsseldev.megagong.net"
        ngbr_main           = "https://ngbrdev.megagong.net"
        army_main           = "https://armydev.megagong.net"
        lab_main           = "https://labdev.megagong.net"
    Else
        if inStr(hostnm, "171.") > 0 Then
	        url_main	        = "https://www171.megagong.net"
            sobang_main	        = "https://sobang171.megagong.net"
            campus_main	        = "https://campus171.megagong.net"
            ansung_main	        = "https://ansung171.megagong.net"
            sobangcampus_main	= "https://sobangcampus171.megagong.net"
            gongssel_main       = "https://gongssel171.megagong.net"
            ngbr_main           = "https://ngbr171.megagong.net"
            army_main           = "https://army171.megagong.net"
        Elseif inStr(hostnm, "172.") > 0 Then
	        url_main	        = "https://www172.megagong.net"
            sobang_main	        = "https://sobang172.megagong.net"
            campus_main	        = "https://campus172.megagong.net"
            ansung_main	        = "https://ansung172.megagong.net"
            sobangcampus_main	= "https://sobangcampus172.megagong.net"
            gongssel_main       = "https://gongssel172.megagong.net"
            ngbr_main           = "https://ngbr172.megagong.net"
            army_main           = "https://army172.megagong.net"
        Else
	        url_main	        = "https://www.megagong.net"
            sobang_main	        = "https://sobang.megagong.net"
            campus_main	        = "https://campus.megagong.net"
            ansung_main	        = "https://ansung.megagong.net"
            sobangcampus_main	= "https://sobangcampus.megagong.net"
            gongssel_main       = "https://gongssel.megagong.net"
            ngbr_main           = "https://ngbr.megagong.net"
            army_main           = "https://army.megagong.net"
            lab_main           = "https://lab.megagong.net"
        End if
    End if


    Dim url_common, url_vod, url_mypage
	url_common		= url_main & "/common"			'공통폴더
	url_vod   		= url_main & "/vod"				'동영상강좌
	url_mypage	 	= url_main & "/mypage"			'공통폴더



	' ▒▒▒ 파일 경로 : 작성 규약 - file_{폴더명} ▒▒▒
	Dim file_main

    if fncRequestVariables ("HTTPS") ="off" Then
	    if inStr(fncRequestVariables("HTTP_HOST"), "dev.megagong.net") > 0 then
            file_main		= "http://filedev.megagong.net"
        Else
            file_main		= "http://file.megagong.net"
        End If
    else
        if inStr(fncRequestVariables("HTTP_HOST"), "dev.megagong.net") > 0 then
            file_main		= "https://filedev.megagong.net"
        Else
            file_main		= "https://file.megagong.net"
        End If
    End If



    CUR_PATH_INFO	= LCASE(fncRequestVariables("PATH_INFO"))

	COOK_ID			= fncRequestCookie("userid")
	COOK_NAME		= fncRequestCookie("username")
    mem_type		= fncRequestCookie("mem_type")
    police_yn		= fncRequestCookie("police_yn")
    set_view		= UCase(fncRequestCookie("set_view"))
    myDom		= fncRequestCookie("mydom")
    if myDom = "" then myDom = h_dcd

    'if fncRequestVariables("REMOTE_HOST") = "1.215.102.67" Then
        if set_view = "" Then set_view = "R"
    'End if

	'=========================
	' 2008-10-07 김은성
	' 현재 주소를 받아논다.
	'=========================
	Dim Host, NowUrl, UrlQueryString, UrlForm, FullUrl, RootUrl

    Host = Request.ServerVariables("HTTP_HOST")
	NowUrl =  LCase(CUR_PATH_INFO)
	UrlQueryString = request.QueryString
	UrlForm = request.Form


	FullUrl = "http://"& Host & NowUrl &"?"& UrlQueryString   '== http 도메인을 포함한 전체 주소

	If UrlQueryString <> "" Then
		RootUrl = fncRequestVariables("URL") &"?"& UrlQueryString  '== http 도메인을 제외한  root path
	Else
		If UrlForm <> "" Then
			RootUrl = fncRequestVariables("URL") &"?"& UrlForm  '== http 도메인을 제외한  root path
		Else
			RootUrl = fncRequestVariables("URL") '== http 도메인을 제외한  root path
		End IF
	End IF

	Dim INNER_IP, COMM_USER_IP, MEGA_IP
	INNER_IP = "172.15.13"

	COMM_USER_IP=Request.ServerVariables("REMOTE_ADDR")
	MEGA_IP = split(COMM_USER_IP,".")(0)&"."
	MEGA_IP = MEGA_IP & split(COMM_USER_IP,".")(1)&"."
	MEGA_IP = MEGA_IP & split(COMM_USER_IP,".")(2)


	'=======================================================================================================
	'페이지 파라미터 셋팅
	'=======================================================================================================
	Dim returnUrl
	returnUrl = ""
	returnUrl = Request.ServerVariables("HTTP_REFERER")
	'=======================================================================================================

	'=======================================================================================================
	'페이지 파라미터 셋팅
	'=======================================================================================================
	Dim pagePara, Formitem
	pagePara = ""

	For Each Formitem In Request.Form
		If pagePara = "" Then
			pagePara = Formitem&"="&Server.Urlencode(Request.Form(Formitem))
		Else
			pagePara = pagePara&"&"&Formitem&"="&Server.Urlencode(Request.Form(Formitem))
		End if
	Next

	For Each Formitem In Request.Querystring
		If pagePara = "" Then
			pagePara = Formitem&"="&Server.Urlencode(Request.Querystring(Formitem))
		Else
			pagePara = pagePara&"&"&Formitem&"="&Server.Urlencode(Request.Querystring(Formitem))
		End if
	Next
	'=======================================================================================================

	' 로그인 상태일때 사이트 이용동의 체크
	'g_dom_cd = trim(fncRequestCookie("dom"))
	'g_site_agree = ucase(fncRequestCookie("site_agree"))
    '
	'if inStr(fncRequestVariables("PATH_INFO"), "/member/site_agree") = 0 then
	'	if cook_id <> "" then
	'		if g_site_agree = "" then ' 적용전 로그인 상태면 로그아웃시킴
	'			response.redirect "/member/logout_sql.asp"
	'			response.end
	'		end if
    '
	'		if (g_dom_cd <> "1" and g_dom_cd <> "2" and g_dom_cd <> "3") and g_site_agree <> "Y" then
	'			response.redirect "/member/site_agree.asp"
	'		end if
	'	end if
	'end if

	helpdesk_work_yn = "Y"
    helpdesk_time_txt1 = ""
    helpdesk_time_txt2 = ""

    if CDate(lo_now_date) >= CDate("2020-07-30 10:00:00") And CDate(lo_now_date) <= CDate("2020-07-30 22:00:00") Then
		helpdesk_work_yn = "N"	' 운영안함
        helpdesk_time_txt1 = "현재 문의량이 많아 전화연결이 어렵습니다."
        helpdesk_time_txt2 = "[1:1 문의상담] 게시판에 내용을 남겨 주시면 <br />빠르게 답변 드리겠습니다."
	end if

    if CDate(lo_now_date) >= CDate("2020-07-31 10:00:00") And CDate(lo_now_date) <= CDate("2020-07-31 22:00:00") Then
		helpdesk_work_yn = "N"	' 운영안함
        helpdesk_time_txt1 = "현재 문의량이 많아 전화연결이 어렵습니다."
        helpdesk_time_txt2 = "[1:1 문의상담] 게시판에 내용을 남겨 주시면 <br />빠르게 답변 드리겠습니다."
	end if

    ' 소셜 로그인 키값
    NAVER_API_Client_ID = "EN_UTjmIT949rM_pmht9"
    NAVER_API_Client_Secret = "ByRRpClVd8"

    KAKAO_API_JS_KEY = "5aa0676abcad06b6ae4a7a56e66f29bf"
    KAKAO_API_API_KEY = "9111024c09d3f3b6a2df7feaa142f507"
    KAKAO_API_Client_Secret = "ScmsFhEbQXbK6GFCYakpqHNgVffqlx98"

    APPLE_API_Client_ID = "net.megagong.smartlearning.ios.servicesid"

    naver_login_callback = url_main & "/api/member/naver_loginauth.asp"
    kakao_login_callback = server.urlencode(url_main&"/api/member/kakao_loginauth.asp")
    apple_login_callback = url_main & "/api/member/apple_loginauth.asp"


    naver_login_url = "https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id="&NAVER_API_Client_ID&"&redirect_uri="&naver_login_callback&"&state="
    kakao_login_url = "https://kauth.kakao.com/oauth/authorize?client_id="&KAKAO_API_API_KEY&"&redirect_uri="&kakao_login_callback&"&response_type=code"
    apple_login_url = "https://appleid.apple.com/auth/authorize?client_id="&APPLE_API_Client_ID&"&redirect_uri="&apple_login_callback&"&response_type=code%20id_token&scope=name%20email&response_mode=form_post"
    'apple_login_url = "https://appleid.apple.com/auth/authorize?client_id="&APPLE_API_Client_ID&"&redirect_uri="&apple_login_callback&"&response_type=code%20id_token"

	'스마트러닝앱 여부 체크 (Y:스마트러닝)
    SmartLearingFlg = "N"
    SmartLearingFlg = fncGetSmartLearningFlg()

    MobileType = fncMobileType()

    ' 스콘앱 여부 체크
    SconnFlg = "N"
    SconnFlg = fncGetSconnFlg()

    if cook_id = "jyheo" or cook_id = "heroyooi" or cook_id = "cereall" Then
        SconnFlg = "Y"
        'SmartLearingFlg = "Y"
    End if

    if SmartLearingFlg = "Y" Then
        'SmartLearingVer = fncGetSmartLearningVer()
        'SmartLearingAndroidMinVer = "1.0.5"
    End if
%>
