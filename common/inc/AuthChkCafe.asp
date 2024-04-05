<%
'=======================================================================
'업 무 명 : 메가엠디-카페회원 체크 === 카페에서만 쓰는 페이지
'모듈기능 : 카페에 소속된 회원인지 체크
'파 일 명 : AuthChkCafe.asp
'작성일자 : 2008-09-25
'작 성 자 : 김은성
'-----------------------------------------------------------------------
'변경일자   변경자  변동내역
'=======================================================================
'
'=======================================================================
'Response.Expires = -1


'===== 카페 테이블 체크
'===== CafeAuthchk(받을 변수명)
'== 권한
'	 0 강제탈퇴
'	10 회원(일반)
'	20 회원(수강)
'	30 스텝
'	40 시샵
'	50 선생님

'' 기존권한
' 1 스텝
' 2 정회원
' 3 준회원
' 4 Guest
' 5 강제탈퇴

'=====================================================
' 링크 기본 페이지명  - 카페에서만 적용
' 리스트 Defaultpage.asp
' 상세 Defaultpage_view.asp
' 작성/수정 Defaultpage_write.asp
'=====================================================
Dim DefaultPage : DefaultPage = Replace(Replace(Replace(Replace(LCase(CUR_PATH_INFO), ".asp", ""), "_view", ""), "_write", ""), "_del", "")

'===== 강사 아이디
Dim TeacherID : TeacherID = fncRequest("bCode")

'==========================================
'  카페 시샵 호출 2008-09-25 김은성
'==========================================
Function GETSYSOP()
	GETSYSOP = fncRequestCookie("SYNAME")
End Function


'==========================================
'  카페 회원수 호출 2008-09-25 김은성
'==========================================
Function GETSYCNT()
	GETSYCNT = fncRequestCookie("SYCNT")
End Function

'==========================================
'  강사명 호출 2008-09-25 김은성
'==========================================
Function GETTNAME()
	GETTNAME = fncRequestCookie("TNAME")
End Function

'==========================================
'  강사이미지1 호출 2008-09-25 김은성
'==========================================
Function GETTIMG1()
	GETTIMG1 = fncRequestCookie("TIMG1")
End Function

'==========================================
'  강사이미지2 호출 2008-09-25 김은성
'==========================================
Function GETTIMG2()
	GETTIMG2 = fncRequestCookie("TIMG2")
End Function



'==================================================
'// 선생님소개 디렉토리라면
'// 해당 선생님의 아이디를 남긴다.
'==================================================
If InStr(LCase(CUR_PATH_INFO), "/prof/") <> 0 Then

	'== 해당 선생님를 쿠키에 저장한다.
	'== 선택한 강사가 이전에 선택한 강사와 틀릴경우 다시 쿠키를 굽니다.

	IF (bCode <> "") AND LCase(bCode) <> LCase(fncRequestCookie("PROID"))  Or trim(fncRequestCookie("SYNAME"))=""  THEN
		Call SetCookie("PROID" , LCase(bCode))

		Dim cySQL, cyRs
		cySQL = "SELECT "
		cySQL = cySQL & " (		 "
		cySQL = cySQL & " 	SELECT TOP 1 MM_MEM_NM FROM MS_CAFE_MEM_MAS AS B WITH(NOLOCK) "
		cySQL = cySQL & " 	LEFT JOIN MS_MEM_MAS AS C WITH(NOLOCK) ON B.CMM_MEMB_IDEN = C.MM_ID  "
		cySQL = cySQL & " 	WHERE Lower(CMM_CLUB_BID) = '"& Trim(bCode) &"' AND  CMM_CLUB_RGHT='40'  "
		cySQL = cySQL & " ) AS MM_MEM_NM,  "
		cySQL = cySQL & " ( "
		cySQL = cySQL & " SELECT COUNT(*) FROM MS_CAFE_MEM_MAS WITH(NOLOCK) WHERE Lower(CMM_CLUB_BID) = '"& Trim(bCode) &"') AS CNT ,  "
		cySQL = cySQL & " TM_TEC_NM, TM_IMG_FILE1, TM_IMG_FILE2 "
		cySQL = cySQL & " FROM MS_TEC_MAS AS A WITH(NOLOCK) "
		cySQL = cySQL & " WHERE Lower(TM_TEC_CD) = '"& Trim(bCode) &"'   "


		If SelectSQL(cySQL, cyRs) = True Then

			Call SetCookie("SYNAME" , "운영자")
			Call SetCookie("SYCNT" , "0")
			Call SetCookie("TNAME" , "")
			Call SetCookie("TIMG1" , "")
			Call SetCookie("TIMG2" , "")


			If Not IsNull(cyRs(0,0)) Then Call SetCookie("SYNAME" , cyRs(0,0))	' 시샵명
			If Not IsNull(cyRs(1,0)) Then Call SetCookie("SYCNT" , cyRs(1,0))		' 카페 회원수
			If Not IsNull(cyRs(2,0)) Then Call SetCookie("TNAME" , cyRs(2,0))		' 강사명
			If Not IsNull(cyRs(3,0)) Then Call SetCookie("TIMG1" , cyRs(3,0))		' 강사이미지 1
			If Not IsNull(cyRs(4,0)) Then Call SetCookie("TIMG2" , cyRs(4,0))		' 강사이미지 2

		Else
			Call SetCookie("SYNAME" , "없음")
			Call SetCookie("SYCNT" , "없음")
			Call SetCookie("TNAME" , "없음")
			Call SetCookie("TIMG1" , "없음")
			Call SetCookie("TIMG2" , "없음")
		End IF

	EnD If
End If

IF fncRequestCookie("PROID")="" Then
	'Debug("선생님지정안됨")
End IF
'==================================================



'========================================================
'  강사에 따른 현재 수강중인 강의를 불러온다.
'========================================================
Dim LecRs
Function TLecture(tid, tcd)
	Dim tSQL, tRs




	tSQL = " SELECT CM_CHR_CD, CM_CHR_NM from MS_CHR_MAS WITH(NOLOCK) WHERE CM_TEC_CD = '"& tid &"' AND CM_DEL_FLG <> 'Y' AND CM_OPEN_FLG = 'Y' "
	If tcd <> "" Then tSQL = tSQL & " And CM_CHR_CD in ( " & tcd &" ) "


	If SelectSQL(tSQL, tRs) = True Then
		TLecture = true
		LecRs = tRs
	Else
		TLecture = false
	End If
	Set tRs = Nothing
End Function


'========================================================
'  회원에 따른 강의 수강여부 리턴
'========================================================
Function ChkUserLec(Mcd, Lcd)

	Dim returnFlg, mcSql, mcrs, offcnt

	' 종료일의 5일을 더해서 수강여부 체크 리턴
	Dim cuSQL, cuRs
	cuSQL = " SELECT * FROM MS_STD_APP WITH(NOLOCK) INNER JOIN MS_APP_DTL WITH(NOLOCK) ON MS_APP_DTL.AD_APP_NO = MS_STD_APP.SA_APP_NO "
	cuSQL = cuSQL & " WHERE     (MS_APP_DTL.AD_STD_STAT = '2') "
	cuSQL = cuSQL & " and MS_STD_APP.SA_MEM_ID = '"& trim(Mcd) &"'  "
	'cuSQL = cuSQL & " And convert(varchar(10), dateAdd(d, 5, getDate()) , 120) between AD_STD_SDT AND AD_STD_EDT "
	'cuSQL = cuSQL & " And convert(varchar(10), getDate() , 120) between AD_STD_SDT AND AD_STD_EDT "
	cuSQL = cuSQL & " And convert(varchar(10), getDate() , 120) >= convert(varchar(10), SA_ADM_DT, 120) "
'	cuSQL = cuSQL & " and AD_CHR_CD in ( "& trim(Lcd) &" ) "
	cuSQL = cuSQL & " and (AD_CHR_CD in ( "& trim(Lcd) &" ) OR AD_CHR_CD in (SELECT CL_CHRLNK_CD FROM MS_CHRCHR_LNK WITH(NOLOCK) WHERE CL_CHR_CD IN( "& trim(Lcd) &")))"

	If SelectSQL(cuSQL, cuRs) = True Then
		returnFlg = True
	Else
		returnFlg = False
	End If
	Set cuRs = Nothing

	If returnFlg = False Then
		'매칭된 학원강좌의 수강여부 체크

		mcSql = " SELECT (SELECT COUNT(*)"
		mcSql = mcSql & " FROM MS_CHR_ONOFF_MAS WITH(NOLOCK) JOIN MS_CHR_ONOFF_DTL WITH(NOLOCK) ON COM_MAS_NO=COD_MAS_NO "
		mcSql = mcSql & " JOIN MS_PAYMNT_OFF WITH(NOLOCK) ON COD_OFF_CD=PO_CHR_CD"
		mcSql = mcSql & " AND COM_ON_CD in (" & Lcd & ")"
		mcSql = mcSql & " AND PO_MEMB_IDEN='"&Mcd&"')"
		mcSql = mcSql & " +"
		mcSql = mcSql & " (SELECT COUNT(*) FROM MD_APP_STD WITH(NOLOCK) JOIN MD_APP_DTL WITH(NOLOCK) ON AS_APP_NO=AD_APP_NO"
		mcSql = mcSql & " AND AD_CHR_CD IN ("
		mcSql = mcSql & " 	SELECT COD_OFF_CD"
		mcSql = mcSql & " 	FROM MS_CHR_ONOFF_MAS WITH(NOLOCK) JOIN MS_CHR_ONOFF_DTL WITH(NOLOCK) ON COM_MAS_NO=COD_MAS_NO "
		mcSql = mcSql & " 	AND COM_ON_CD in (" & Lcd & ")"
		mcSql = mcSql & " ) AND AS_MEM_ID='"&Mcd&"' AND AD_STD_STAT <> '4')"

		set mcrs = dbexec(mcSql, "study")

		if not mcrs.eof then
			offcnt=mcrs(0)
		end if

		call rsclose(mcrs)

		If offcnt > 0 then
			returnFlg = True
		end if

	End if

	ChkUserLec = returnFlg

End Function




Function ChkUserLecTec(Mcd, Tcd)

	Dim returnFlg, mcSql, mcrs, offcnt

	' 종료일의 5일을 더해서 수강여부 체크 리턴
	Dim cuSQL, cuRs
	cuSQL = ""
	cuSQL = cuSQL & " SELECT 1 FROM MS_STD_APP WITH(NOLOCK) INNER JOIN MS_APP_DTL WITH(NOLOCK) ON MS_APP_DTL.AD_APP_NO = MS_STD_APP.SA_APP_NO "
	cuSQL = cuSQL & " join ms_chr_mas with(nolock) on cm_chr_cd = ad_chr_cd "
	cuSQL = cuSQL & " WHERE SA_MEM_ID = '"& trim(Mcd) &"' AND MS_APP_DTL.AD_STD_STAT <> '4' "
	cuSQL = cuSQL & " and CM_TEC_CD = '"& trim(Tcd) &"' "

	cuSQL = cuSQL & " union all "

	cuSQL = cuSQL & " select 1 from md_app_std with(nolock) join md_app_dtl with(nolock) on ad_app_no = as_app_no "
	cuSQL = cuSQL & " join ms_chr_mas_offline with(nolock) on cmo_chr_cd = ad_chr_cd "
	cuSQL = cuSQL & " where as_mem_id = '"& trim(Mcd) &"' and cmo_tec_cd = '"& trim(Tcd) &"' and ad_std_stat <> '4' "

	If SelectSQL(cuSQL, cuRs) = True Then
		returnFlg = True
	Else
		returnFlg = False
	End If
	Set cuRs = Nothing


	ChkUserLecTec = returnFlg

End Function





'=====================================================
' 사용자 권한 체크
'CafeChk = CafeAuthchk(cfRs)
'if CafeChk = True Then
'	Debug(cfRs(0,0))
'	Debug(cfRs(1,0))
'Else
'	Debug("bbbbc")
'
'End If
'=====================================================


Dim CafeChk
CafeChk = CafeAuthchk(cfRs)

Dim CMemAuthCode
Function CafeAuthchk(ckRs)

	Dim cSQL, cRs
	cSQL = "SELECT CMM_MEMB_IDEN, CMM_CLUB_RGHT, CMM_ENTR_DATE FROM  MS_CAFE_MEM_MAS WITH(NOLOCK) WHERE CMM_CLUB_BID = '"& bCode &"' "
	cSQL = cSQL & " AND CMM_MEMB_IDEN = '"& cook_id &"' AND CMM_AWAY_YSNO = 'N'  AND  CMM_CLUB_RGHT <> '0' "

'Response.write cSQL

	If SelectSQL(cSQL, cRs) = True Then 		 '// 카페에 가입된 회원이다
		ckRs = cRs
		CMemAuthCode = cRs(1,0)
		CMakeDate	 = cRs(2,0)
		CafeAuthchk = True

	Else
		'DEBUG("비횐")
		CMemAuthCode = 0
		CafeAuthchk = False
		'Response.write "<script language='javascript'>"& vbcrlf
		'Response.write "alert(""이 글과"")"& vbcrlf
		'Response.write "</script>"& vbcrlf

	End IF

    if ucase(fncRequestCookie("mem_type")) ="E" then ''관리자
       CMemAuthCode = "50"
    end if

End Function


'실명노출 Flag(True:노출, False:비노출)
Dim NmViewFlg		: NmViewFlg = CafeViewName()
'=====================================================
' 학습 Q&A 회원 실명 노출
'=====================================================
Function CafeViewName()

	Dim vSQL, vRs

	vSQL = " SELECT ISNULL(TM_MEM_FLG,0) AS REAL_NAME_FLG "
	vSQL = vSQL & " FROM MS_TEC_MAS WITH(NOLOCK) "
	vSQL = vSQL & " WHERE TM_TEC_CD = '"&bCode&"'"

	If SelectSQL(vSQL, vRs) = True Then 		 '// 실명 노출 여부 판단
		If Trim(vRs(0,0)) = "1" Then
			CafeViewName = True
		Else
			CafeViewName = False
		End if
	Else
		CafeViewName = False
	End If

End Function


'=====================================================
' 버튼권한
' tMnu() 배열은 /prof/left_prof.asp 부분에 정의되어 있음
'=====================================================

Dim WBtn, DBtn, EBtn, LBtn, RBtn

'// Add 2009/09/09 Y.Yoon ==> 답변글이 있는 경우
Function BtnAuthWithReply(code,pg)
	WBtn = "<img src='"& img_main &"/btn/bt_pqa3.gif' align='absmiddle' class='hand' onclick=""Write()"">"
	DBtn = "<img src='"& img_main &"/btn/bt_del.gif' align='absmiddle' class='hand' onclick=""Del();"">"
	EBtn = "<img src='"& img_main &"/btn/btn_mod.gif' align='absmiddle' class='hand' onclick=""Modify();"">"
	LBtn = "<img src='"& img_main &"/btn/bt_list.gif' align='absmiddle' class='hand' onclick=""List();"">"
	RBtn = "<img src='"& img_main &"/btn/bt_reply.gif'  class='hand' align='absmiddle' onclick=""Reply();"">"

		'// 권한설정
		If code = "w" Then ' 작성자일경우
			' 모든 버튼 권한
				DBtn = ""   '//// 답변글이 있을경우 수정 삭제 버튼 제거
				EBtn = ""	'//// 답변글이 있을경우 수정 삭제 버튼 제거
			If Not(IsNull(tMnu(4)) And IsNull(tMnu(5))) Then WBtn = ""
			RBtn = ""
			'// 답글 존재시도 삭제기능 추가
'			DBtn = ""

		Else

			If CMemAuthCode = "10"  Then '회원(일반)
				'DEBUG("일반")

				If Not(IsNull(tMnu(2)) And IsNull(tMnu(3))) Then WBtn = ""
				If pg = "view" Then WBtn = ""
				DBtn = ""
				EBtn = ""
				RBtn = ""

			ElseIf CMemAuthCode = "20" Then '회원(수강회원)
				'DEBUG("수강")

				'// Q&A / 자유게시판 일 경우
				If Not(IsNull(tMnu(4)) And IsNull(tMnu(5))) Then WBtn = ""
				If pg = "view" Then WBtn = ""
				DBtn = ""
				EBtn = ""
				RBtn = ""

			ElseIf CMemAuthCode = "30" Then '스텝
				'DEBUG("스텝")
			ElseIf CMemAuthCode = "40" Then '시샵
				'DEBUG("시샵")
			ElseIf CMemAuthCode = "50" Then '선생님
				'DEBUG("선생님")
			Else

				CMemAuthCode = 0
				WBtn = ""
				DBtn = ""
				EBtn = ""
				RBtn = ""

				'DEBUG("비횐")
			End If

		End If

		If pg = "view" Then WBtn = ""

		' 만약 리스트 페이지라면
		If pg = "list" Then
			DBtn = ""
			EBtn = ""
			LBtn = ""
			RBtn = ""
		End If


		' 만약 텝스쪽 강사 학습 Q&A 라면  그냥 버튼 보여준다.
		If InStr(arrayMnu, TeacherID) <> 0 Then

				'WBtn = "<img src='"& img_main &"/img/bt_write.gif' class='hand' onclick=""Write()"">"
				'DBtn = "<img src='"& img_main &"/img/bt_del.gif'  class='hand' onclick=""Del();"">"
				'EBtn = "<img src='"& img_main &"/img/bt_modify.gif'  class='hand' onclick=""Modify();"">"
				'LBtn = "<img src='"& img_main &"/img/bt_list.gif'  class='hand' onclick=""List();"">"
				'RBtn = "<img src='"& img_main &"/img/bt_reply.gif'  class='hand' onclick=""Reply();"">"

		End IF

		Response.write  "<table width='100%'  border='0' cellspacing='0' cellpadding='0'>"& vbcrlf
        	Response.write  "<tr>"& vbcrlf
		Response.write  "<td align='right'  height='30'  >"& vbcrlf
		if PRINT_YN = "Y" then response.write "<a href=""javascript:goPrintBbs("&idx&")""><img src='"&img_main&"/utimage/etc/110708/btn_print.gif' alt='인쇄하기' align='absmiddle'></a>&nbsp;"
		Response.write	WBtn &"&nbsp;"& RBtn &"&nbsp;"& EBtn &"&nbsp;"& DBtn &"&nbsp;"& LBtn ' & tMnu(2) &"/"& bCode &"/"& CMemAuthCode
		Response.write  "</td>"& vbcrlf
        	Response.write  "</tr>"& vbcrlf
		Response.write  "</table>"& vbcrlf

End Function

Function BtnAuth(code , pg)

	WBtn = "<img src='"& img_main &"/btn/btn_write2.gif' align='absmiddle' class='hand' onclick=""Write()"">"
	DBtn = "<img src='"& img_main &"/btn/bt_del.gif' align='absmiddle' class='hand' onclick=""Del();"">"
	EBtn = "<img src='"& img_main &"/btn/btn_mod.gif' align='absmiddle' class='hand' onclick=""Modify();"">"
	LBtn = "<img src='"& img_main &"/btn/bt_list.gif' align='absmiddle' class='hand' onclick=""List();"">"
	RBtn = "<img src='"& img_main &"/btn/bt_reply.gif'  class='hand' align='absmiddle' onclick=""Reply();"">"
  ARBtn = "<img src='"& img_main &"/btn/btn_board_edit.gif' class='hand' align='absmiddle'  onclick=""Modify();"">"
  ADBtn = "<img src='"& img_main &"/btn/btn_board_del.gif' class='hand' align='absmiddle'  onclick=""Del();"">"

        if ucase(fncRequestCookie("mem_type")) = "E" then  '''관리자 이면
           CMemAuthCode = "50"
        end if

		'// 권한설정
		If code = "w" Then ' 작성자일경우
		''Response.Write "1" & "<br/>"
			' 모든 버튼 권한
     		 ARBtn = ""
             ADBtn= ""
			''Response.WRite tMnu(4) &"||"& tMnu(5) & "<br/>"
			If Not(IsNull(tMnu(4)) And IsNull(tMnu(5))) Then  WBtn = ""
			''Response.Write "2" & "<br/>"
			RBtn = ""

		Else
					''Response.Write "3" & "<br/>"

            '//관리자 권한 부여 위해 하드코딩 40
            'CMemAuthCode = "40"
			If CMemAuthCode = "10"  Then '회원(일반)
						''Response.Write "4" & "<br/>"
				'DEBUG("일반")
				If Not(IsNull(tMnu(2)) And IsNull(tMnu(3))) Then WBtn = ""
				If pg = "view" Then WBtn = ""
				DBtn = ""
				EBtn = ""
				RBtn = ""
			 ARBtn = ""
             ADBtn= ""
			ElseIf CMemAuthCode = "20" Then '회원(수강회원)
						''Response.Write "5" & "<br/>"
				'DEBUG("수강")

				'// Q&A / 자유게시판 일 경우
				If Not(IsNull(tMnu(4)) And IsNull(tMnu(5))) Then WBtn = ""
				If pg = "view" Then WBtn = ""
				DBtn = ""
				EBtn = ""
				RBtn = ""
			 ARBtn = ""
             ADBtn= ""
			ElseIf CMemAuthCode = "30" Then '스텝
						''Response.Write "6" & "<br/>"
				'DEBUG("스텝")
			ElseIf CMemAuthCode = "40" Then '시샵
				'DEBUG("시샵")
			ElseIf CMemAuthCode = "50" And CBDS_RN = 0 Then '선생님
						''Response.Write "7" & "<br/>"
			 ARBtn = ""
             ADBtn= ""


				'DEBUG("선생님")
			ElseIf CMemAuthCode = "50" And CBDS_RN = 1 Then '선생님
						''Response.Write "8" & "<br/>"
				RBtn = ""
				EBtn = ""
				DBtn = ""
			Else
						''Response.Write "9" & "<br/>"

				CMemAuthCode = 0
				WBtn = ""
				DBtn = ""
				EBtn = ""
				RBtn = ""
			 ARBtn = ""
             ADBtn= ""

				'DEBUG("비횐")
			End If

		End If

		If pg = "view" Then WBtn = ""

		' 만약 리스트 페이지라면
		If pg = "list" Then
			DBtn = ""
			EBtn = "" ' 수정
			LBtn = ""
			RBtn = "" '답변
		    ARBtn = "" '답변 수정
            ADBtn= "" '답변삭제
		End If


		'공지사항과 학습자료실은 답변 버튼 노출 안함
		If tMnu(3)<>"" or tMnu(4)<>"" Then RBtn = ""


		' 만약 텝스쪽 강사 학습 Q&A 라면  그냥 버튼 보여준다.
		If InStr(arrayMnu, TeacherID) <> 0 Then

				'WBtn = "<img src='"& img_main &"/img/bt_write.gif' class='hand' onclick=""Write()"">"
				'DBtn = "<img src='"& img_main &"/img/bt_del.gif'  class='hand' onclick=""Del();"">"
				'EBtn = "<img src='"& img_main &"/img/bt_modify.gif'  class='hand' onclick=""Modify();"">"
				'LBtn = "<img src='"& img_main &"/img/bt_list.gif'  class='hand' onclick=""List();"">"
				'RBtn = "<img src='"& img_main &"/img/bt_reply.gif'  class='hand' onclick=""Reply();"">"

		End IF

		Response.write  "<table width='100%' border='0' cellspacing='0' cellpadding='0' style='margin-top:5px;'>"& vbcrlf
       	Response.write  "<tr>"& vbcrlf
		Response.write  "<td align='right'>"& vbcrlf
		if PRINT_YN = "Y" then response.write "<a href=""javascript:goPrintBbs("&idx&")""><img src='"&img_main&"/utimage/etc/110708/btn_print.gif' alt='인쇄하기' align='absmiddle'></a>&nbsp;"
		Response.write	 ARBtn &"&nbsp;"& ADBtn &"&nbsp;"& WBtn &"&nbsp;"& RBtn &"&nbsp;"& EBtn &"&nbsp;"& DBtn &"&nbsp;"& LBtn ' & tMnu(2) &"/"& bCode &"/"& CMemAuthCode
		Response.write  "</td>"& vbcrlf
        Response.write  "</tr>"& vbcrlf
		Response.write  "</table>"& vbcrlf

End Function

' 글쓰기 권한 새로 설정
Function BtnAuth1(w_r, CAFE_YN)

	if CAFE_YN = "Y" then
		WBtn = "<img src='"& img_main &"/btn/bt_pqa3.gif' align='absmiddle' class='hand' onclick=""Write()"">"
	elseif CAFE_YN = "P" then
		WBtn = "<img src='"& img_main &"/btn/bt_pqa3.gif' align='absmiddle' class='hand' onclick=""javascript:alert('선생님 개인사정으로 당분간 서비스가 이루어지지 못합니다.')"">"
	end if

	if w_r <> 1 then
		WBtn = ""
	else
		if PRINT_YN = "Y" then response.write "<a href=""javascript:goPrintBbs("&idx&")""><img src='"&img_main&"/utimage/etc/110708/btn_print.gif' alt='인쇄하기' align='absmiddle'></a>&nbsp;"
		Response.write	WBtn
	end if

End Function


' 카페 기본 정보를 읽어온다.
Dim CafeInfoTxt(5)
Function CafeInfo()
	Dim sSQL, sRs
	sSQL = "SELECT CBM_BID, CBM_NAME, CBM_HEAD, CBM_FILE, CONVERT(VARCHAR(10), CBM_DATE, 102) FROM MS_CAFE_BRD_MAS WITH(NOLOCK) WHERE CBM_BID = '"& bCode &"'"
	If SelectSQL(sSQL, sRs) = True Then

		CafeInfoTxt(0) = Re_sqlFilter(sRs(0, 0))
		CafeInfoTxt(1) = Re_sqlFilter(sRs(1, 0))
		CafeInfoTxt(2) = Re_sqlFilter(sRs(2, 0))
		if isnull(CafeInfoTxt(2)) or CafeInfoTxt(2) = "" then
			CafeInfoTxt(2) = CafeInfoTxt(1) & "선생님 카페입니다."
		end if
		CafeInfoTxt(3) = Re_sqlFilter(sRs(3, 0))
		CafeInfoTxt(4) = sRs(4, 0)
		CafeInfoTxt(5) = Re_sqlFilter(sRs(2, 0))
	End If
End Function


'========= 카페 강사 정보를 불러온다.
Function CafeTecInfo()

	Dim tSQL, tRs
'	tSQL = "SELECT FROM MS_TEC_MAS WHERE "

End Function


Dim CafeBbsText(4)
Function CafeBbsInfo()
	Dim cbiSQL, cbiRS

	cbiSQL = " SELECT TM_CAFE_YN, TM_NOTICE_FLG, TM_QNA_FLG, TM_DATA_FLG, TM_FREE_FLG FROM MS_TEC_MAS WITH(NOLOCK) WHERE TM_TEC_CD = '" & bCode & "' "

	If SelectSQL(cbiSQL, cbiRS) = True Then

		CafeBbsText(0) = Trim(cbiRS(0, 0))
		CafeBbsText(1) = Trim(cbiRS(1, 0))
		CafeBbsText(2) = Trim(cbiRS(2, 0))
		CafeBbsText(3) = Trim(cbiRS(3, 0))
		CafeBbsText(4) = Trim(cbiRS(4, 0))
	End If

End Function


' 게시판 읽기 권한 분석
function GetReadRight(strRight)

	dim strReturn
	strReturn = "all"

	if right(strRight, 1) = "o" then
		strReturn = "all"
	elseif mid(strRight, 3, 1) = "o" then
		strReturn = "site_member_all"
	elseif mid(strRight, 2, 1) = "o" then
		strReturn = "cafe_member_all"
	elseif left(strRight, 1) = "o" then
		strReturn = "std_member_all"
	end if

	GetReadRight = strReturn

end function

' 게시판 쓰기 권한 분석
function GetWriteRight(strRight)

	dim strReturn
	strReturn = "site_member_all"

	if right(strRight, 1) = "o" then
		strReturn = "site_member_all"
	elseif mid(strRight, 2, 1) = "o" then
		strReturn = "cafe_member_all"
	elseif left(strRight, 1) = "o" then
		strReturn = "std_member_all"
	end if

	GetWriteRight = strReturn

end function

' 게시판 덧글 권한 분석
function GetCommentRight(strRight)

	dim strReturn
	strReturn = "site_member_all"

	if right(strRight, 1) = "o" then
		strReturn = "site_member_all"
	elseif mid(strRight, 2, 1) = "o" then
		strReturn = "cafe_member_all"
	elseif left(strRight, 1) = "o" then
		strReturn = "std_member_all"
	end if

	GetCommentRight = strReturn

end function

' 게시판 읽기 권한 정의
function GetYouCanRead(user_id, auth_code, r_r, b_std)

	dim strReturn
	strReturn = 1

	if CInt(auth_code) = 40 Then  ' 시샵이하의 권한 체크
		strReturn = 1
	elseif read_right = "all" then   ' 사이트 비회원도 가능
		strReturn = 1
	else
		strReturn = 1
		if r_r = "site_member_all" then	'사이트 회원이면 가능
			if user_id <> "" then
				strReturn = 1
			else
				strReturn = 2
			end if
		elseif r_r = "cafe_member_all" then ' 카폐 회원이여야 가능
			if CInt(auth_code) > 0 then
				strReturn = 1
			else
				strReturn = 3
			end if
		elseif r_r = "std_member_all" then  ' 해당 강좌를 수강해야만 가능
			if b_std = true then
				strReturn = 1
			else
				strReturn = 4
			end if
		end if

	end if

	GetYouCanRead = strReturn

end function

' 게시판 쓰기 권한 정의
function GetYouCanWrite(user_id, auth_code, w_r, b_std)

	dim strReturn
	strReturn = 1

	if user_id = "" then
		strReturn = 2
	elseif CInt(auth_code) = 40 Then  ' 시샵이하의 권한 체크
		strReturn = 1
	else

		if w_r = "site_member_all" then	'사이트 회원이면 가능
			if user_id <> "" then
				strReturn = 1
			else
				strReturn = 2
			end if
		elseif w_r = "cafe_member_all" then ' 카폐 회원이여야 가능
			if CInt(auth_code) > 0 then
				strReturn = 1
			else
				strReturn = 3
			end if
		elseif w_r = "std_member_all" then  ' 해당 강좌를 수강해야만 가능
			if b_std = true then
				strReturn = 1
			else
				strReturn = 4
			end if
		end if

	end if

	GetYouCanWrite = strReturn

end function

' 게시판 덧글 권한 정의
function GetYouCanComment(user_id, auth_code, w_r, b_std)

	dim strReturn
	strReturn = 1

	if user_id = "" then
		strReturn = 2
	elseif CInt(auth_code) = 40 Then  ' 시샵이하의 권한 체크
		strReturn = 1
	else

		if w_r = "site_member_all" then	'사이트 회원이면 가능
			if user_id <> "" then
				strReturn = 1
			else
				strReturn = 2
			end if
		elseif w_r = "cafe_member_all" then ' 카폐 회원이여야 가능
			if CInt(auth_code) > 0 then
				strReturn = 1
			else
				strReturn = 3
			end if
		elseif w_r = "std_member_all" then  ' 해당 강좌를 수강해야만 가능
			if b_std = true then
				strReturn = 1
			else
				strReturn = 4
			end if
		end if

	end if

	GetYouCanComment = strReturn

end function
%>
