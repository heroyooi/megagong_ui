<%
'=======================================================================
'업 무 명 : 메가스터디-동영상 플레이어-고화질
'모듈기능 : 동영상 플레이어-고화질(무료)
'파 일 명 : Player_Mega.asp
'작성일자 : 2008/06/16
'작 성 자 :
'-----------------------------------------------------------------------
'변경일자   변경자  변동내역
'=======================================================================
'
'=======================================================================
%>

<!-- 공통 인클루드 페이지 시작 -->
<!-- #include virtual = "/common/inc/RSexec.asp" -->
<!-- #include virtual = "/common/inc/VarDef.asp"-->
<!-- #include virtual = "/common/inc/FunDef.asp"-->
<!-- #include virtual = "/player/Cate/cate_inc.asp"-->
<!-- 공통 인클루드 페이지 마침 -->
<%
	l_user_type = fncRequestCookie("user_type")
	If l_user_type <> "E" And l_user_type <> "T" Then
		Response.Write "관리자 권한이 필요합니다."
		Response.End
	End IF

	uId = LCase(Request.cookies("userid"))			'회원 아이디 취득
	mem_type = LCase(request.cookies("mem_type"))	'회원 타입

    CHR_CD 	= TRIM(REQUEST("CHR_CD"))
    LEC_CD 	= TRIM(REQUEST("LEC_CD"))
    DNG_FLG = TRIM(REQUEST("DNG_FLG"))	'동영상 FLAG
	DNG_CD = TRIM(REQUEST("DNG_CD"))
	WIDE_KBN= request("WIDE_KBN")		'와이드 구분 Y:와이드
'	KBN    =  TRIM(fncRequest("KBN"))
	DNG_KBN	= request("DNG_KBN")		'
	ST_FILENAME = TRIM(REQUEST("ST_FILENAME"))	'파일명

'	If DNG_KBN <> "45" Then
'		KBN = "S"
'	Else
'		KBN = "N"
'	End If
	If DNG_KBN = "55" Or DNG_KBN = "40" Then
		KBN = "S"
	Else
		KBN = "N"
	End If

	'#005 20120409 S.HAN INS(START)
	UseWidth = Trim(request("UseWidth"))
	UseHeight = Trim(request("UseHeight"))
	'#005 20120409 S.HAN INS( END )

	'S20100312	INS	W.H.JANG	#001
	SPL_STM = TRIM(REQUEST("SPL_STM"))	'맛보기 시작시간(초)
	SPL_ETM	= TRIM(REQUEST("SPL_ETM"))	'맛보기 종료시간(초)

'Response.write SPL_ETM
'Response.end
	CALL_TYPE = 1		'1: 호출안함    2 : URL 호출
	CALL_URL  = ""
	CM_WMT9_SPL=""               '강의파일명

	'S20100312	UPD	W.H.JANG	#001
	'SPL_STM = 0			'맛보기 시작시간
	'SPL_ETM = 0			'맛보기 종료시간
	if SPL_STM = "" or IsNull(SPL_STM)  then
		SPL_STM = 0			'맛보기 시작시간
	end if
	if SPL_ETM = "" or IsNull(SPL_ETM)  then
		SPL_ETM = 0			'맛보기 종료시간
	end if
	'E20100312	UPD	W.H.JANG	#001

	TEC_NM = Trim(Request("TEC_NM"))		'강사명

	SET3 = "1"	'표준사이즈 디폴트

	'Response.write DNG_KBN

	SELECT CASE DNG_KBN

         CASE "101","12143","12907","13092"    ''''이벤트 영상 이면     
                  
	       strSql =          "  SELECT top 1 LM_LEC_NM,  "
		   strSql = strSql & "      PRM_PATH = ISNULL(LMP_PRM_PATH, CM_NOR_FILE2)  + '/' + ISNULL(LM_PRM_FILE,LM_WMT9_FILE),	 "
		   strSql = strSql & "      NOR_PATH = ISNULL(LMP_NOR_PATH, CM_NOR_FILE1) + '/' + LM_NOR_FILE,CM_WMT9_SPL,CM_SPL_STM, CM_SPL_ETM,	 "
		   strSql = strSql & "      LM_WIDE_FLG,	 "		'--와이드 구분
		   strSql = strSql & "      LM_DRM_FLG,		 "	'--DRM 구분
		   strSql = strSql & "      CM_TEC_CD,	 "		'--강사코드
		   strSql = strSql & "      CM_DOM_CD,	 "		'--영역코드
		   strSql = strSql & "      HD_PATH = ISNULL(LMP_PRM_PATH, CM_NOR_FILE2) + '/' + LM_PRM_FILE   ,cm_chr_flg, lm_content_key " '	-- 20110916 S.HAN
	       strSql = strSql & "  FROM    MS_LEC_MAS with(nolock) "
	       strSql = strSql & "  INNER JOIN MS_CHR_MAS with(nolock) ON LM_CHR_CD = CM_CHR_CD "
	       strSql = strSql & "  LEFT  JOIN MS_LEC_MAS_PATH with(nolock) ON LMP_CHR_CD = CM_CHR_CD AND LMP_LEC_CD = LM_LEC_CD "
	       strSql = strSql & "  WHERE  LM_CHR_CD = " & DNG_KBN & " and LM_LEC_seq = " & CHR_CD 



           	SET RS = DBexec(strSql,"study")

			If Not RS.EOF Then

				CHR_NM = TRIM(RS(0))
           '     DNGPATH = TRIM(RS(1))
				'IF TEC_NM = "" THEN TEC_NM = RS(2)		'강사명
				WIDE_KBN = RS("LM_WIDE_FLG")
				DRM_FLG = RS("LM_DRM_FLG")	'DRM 구분
				CM_WMT9_SPL = trim(RS("CM_WMT9_SPL"))
				cm_chr_flg = RS("cm_chr_flg")
				CONTENT_KEY = RS("lm_content_key")
				SPL_STM = Rs("CM_SPL_STM")
				SPL_ETM = Rs("CM_SPL_ETM")

				If SPL_STM = "" Then SPL_STM = 0
				If SPL_ETM = "" Then SPL_ETM = 0
			End If
			Call DBClose(RS) 

		Case "45","55"
			IF CHR_CD <> "" And Instr(lcase(Chr_cd),"open") = 0 THEN

			strSql = ""

			strSql = strSql & " select lm_chr_cd,CM_CHR_NM,lm_lec_cd, lm_nor_file "
			strSql = strSql & " 		,case RTRIM(isnull(cm_spl_file,'')) when  '' then '' else RTRIM(CM_NOR_FILE1) + '/' + RTRIM(isnull(cm_spl_file,'')) end as cm_spl_file "
			strSql = strSql & "		,case RTRIM(isnull(lm_wmt9_file,'')) when  '' then '' else RTRIM(CM_NOR_FILE2) + '/' + RTRIM(isnull(lm_wmt9_file,'')) end as wmt9_file "
			strSql = strSql & "		,case RTRIM(isnull(lm_wmt9_file,'')) when  '' then '' else RTRIM(CM_NOR_FILE2) + '/' + RTRIM(isnull(lm_wmt9_file,'')) end as prm_spl "			'20110310	스마트폰파일 대응
			strSql = strSql & " 		,TM_TEC_NM, CD_WIDE_FLG, ISNULL(CD_DRM_FLG,1) as CD_DRM_FLG, LM_WIDE_FLG  ,cm_chr_flg,lm_content_key "		'#005 20120409 S.HAN INS
			strSql = strSql & " from ms_lec_mas with (nolock)"
			strSql = strSql & " join ms_chr_mas with (nolock) on lm_chr_cd = cm_chr_cd "
			strSql = strSql & " LEFT JOIN MS_CHR_DTL with(nolock) ON CM_CHR_CD = CD_CHR_CD "
			strSql = strSql & " LEFT JOIN MS_TEC_MAS with(nolock) ON CM_TEC_CD = TM_TEC_CD  "
			strSql = strSql & " where lm_chr_cd =" & CHR_CD
			strSql = strSql & "  AND LM_LEC_CD = " & LEC_CD
'Response.write strSql
'Response.end
			SET RS = DBexec(strSql,"study")

			If Not RS.EOF Then
				CHR_NM = TRIM(RS("CM_CHR_NM"))
			'	DNGPATH = TRIM(RS("wmt9_file"))

				if trim(RS("prm_spl")) <> "" then
					DNGPATH = TRIM(RS("prm_spl"))
				end if

				IF TEC_NM = "" THEN TEC_NM = RS(7)		'강사명
'				WIDE_KBN = RS("CD_WIDE_FLG")
				DRM_FLG = RS("CD_DRM_FLG")	'DRM 구분
				LEC_CD = RS("lm_lec_cd")
				cm_chr_flg = RS("cm_chr_flg")
				CONTENT_KEY = RS("lm_content_key")
				WIDE_KBN = RS("LM_WIDE_FLG")		'와이드 구분은 강의 마스터에서 20120328 CHOIJH	'#005 20120409 S.HAN INS
			End If
			Call DBClose(RS)
			End If
		Case "30"

			strSql = ""
			strSql = strSql & " SELECT	TOP 1 CM_CHR_NM, "
			strSql = strSql & "		    RTRIM(CM_NOR_FILE2) + '/' + RTRIM(CM_ORI_SPL), "
			strSql = strSql & "		    TM_TEC_NM, CD_WIDE_FLG, ISNULL(CD_DRM_FLG,1),CM_ORI_SPL, "
			strSql = strSql & "		    CM_SPL_STM, CM_SPL_ETM, TM_TEC_NM, ISNULL(LM_LEC_CD,0) as LEC_CD , cm_chr_flg,lm_content_key"
			strSql = strSql & " FROM	MS_CHR_MAS with(nolock) "
			strSql = strSql & " 	LEFT JOIN MS_CHR_DTL with(nolock) ON CM_CHR_CD = CD_CHR_CD "
			strSql = strSql & "   LEFT JOIN MS_TEC_MAS with(nolock) ON CM_TEC_CD = TM_TEC_CD "
			strSql = strSql & "   LEFT JOIN MS_LEC_MAS with(nolock) ON CM_CHR_CD = LM_CHR_CD "
			strSql = strSql & " WHERE	CM_CHR_CD = " & CHR_CD


			SET RS = DBexec(strSql,"study")

			If Not RS.EOF Then
				CHR_NM = TRIM(RS(0))
			'	DNGPATH = TRIM(RS(1))
				IF TEC_NM = "" THEN TEC_NM = RS(2)		'강사명
				WIDE_KBN = RS(3)
				DRM_FLG = RS(4)	'DRM 구분
				CM_WMT9_SPL = trim(RS("CM_ORI_SPL"))

				SPL_STM = Rs("CM_SPL_STM")
				SPL_ETM = Rs("CM_SPL_ETM")
'// S20100223	UPD	J.K.KIM	강의등록안된 OT영상 재생을 위해 강의정보취득시 강좌코드로 LEFT JOIN 처리
'//				LEC_CD = RS("LM_LEC_CD")
				LEC_CD = RS("LEC_CD")
				cm_chr_flg = RS("cm_chr_flg")
				If SPL_STM = "" Then SPL_STM = 0
				If SPL_ETM = "" Then SPL_ETM = 0
				CONTENT_KEY = RS("lm_content_key")
			End If
			Call DBClose(RS)

		CASE ELSE		'단원 맛보기 파일



			strSql = ""
			strSql = strSql & " SELECT	TOP 1 CM_CHR_NM, "
			strSql = strSql & "		    RTRIM(CM_NOR_FILE2) + '/' + RTRIM(CM_WMT9_SPL), "
			strSql = strSql & "		    TM_TEC_NM, CD_WIDE_FLG, ISNULL(CD_DRM_FLG,1),CM_WMT9_SPL, "
			strSql = strSql & "		    CM_SPL_STM, CM_SPL_ETM, TM_TEC_NM, LM_LEC_CD ,cm_chr_flg,lm_content_key "
			strSql = strSql & " FROM	MS_CHR_MAS with(nolock), MS_CHR_DTL with(nolock), MS_TEC_MAS with(nolock), MS_LEC_MAS WITH(NOLOCK)  "
			strSql = strSql & " WHERE	CM_CHR_CD = " & CHR_CD
			strSql = strSql & " AND		CM_TEC_CD = TM_TEC_CD "
			strSql = strSql & " AND		CM_CHR_CD = CD_CHR_CD "
			strSql = strSql & " AND		LM_CHR_CD = CM_CHR_CD "
			'Response.write strSql & "<br>"
			SET RS = DBexec(strSql,"study")

			If Not RS.EOF Then
				CHR_NM = TRIM(RS(0))
			'	DNGPATH = TRIM(RS(1))
				IF TEC_NM = "" THEN TEC_NM = RS(2)		'강사명
				WIDE_KBN = RS(3)
				DRM_FLG = RS(4)	'DRM 구분
				CM_WMT9_SPL = trim(RS("CM_WMT9_SPL"))

				SPL_STM = Rs("CM_SPL_STM")
				SPL_ETM = Rs("CM_SPL_ETM")
				LEC_CD = RS("LM_LEC_CD")
				cm_chr_flg = RS("cm_chr_flg")
				CONTENT_KEY = RS("lm_content_key")

				If SPL_STM = "" Then SPL_STM = 0
				If SPL_ETM = "" Then SPL_ETM = 0
			End If
			Call DBClose(RS)

	End Select

'Response.write "KBN : " & KBN & ", DNG_KBN : " & DNG_KBN & ", SPL_STM : " & SPL_STM & ", SPL_ETM : " & SPL_ETM & ", WIDE_KBN : " & WIDE_KBN
'Response.end

'PATH = url_main & "/player/Player_Common/player_list.asp?CHR_CD=" & CHR_CD & "&LEC_CD=" & LEC_CD & "&DNG_KBN=" & DNG_KBN &"&chr_flg="&cm_chr_flg
'Response.write PATH
'DNGPATH = PATH
If KBN = "S" Then
' 윈도우 크기 설정------------------------------------------
	If UCase(WIDE_KBN) = "Y" Then	'와이드인 경우 화면 크기 크게하기
		'#005 20120409 S.HAN UPD(START)
		'intGWidth = 1050 : intGHeight = 720
		'intGWidth2X = 1660 : intGHeight2X = 1260
		If UseWidth > 1600 Then 
			intGWidth = 1583 : intGHeight = 830
		ElseIf UseWidth > 1200 Then 
			If UseHeight <= 690 Then					' 추가 : 1280 * 720 대응 
				intGWidth = 1190 : intGHeight = 670
			Else 
				intGWidth = 1240 : intGHeight = 688
			End If 
		Else 
			intGWidth = 883 : intGHeight = 645
		End If 
		intGWidth2X = UseWidth : intGHeight2X = UseHeight
		'#005 20120409 S.HAN UPD( END )
	Else
		'#005 20120409 S.HAN UPD(START)
		'intGWidth = 1050 : intGHeight = 760
		'intGWidth2X = 1660 : intGHeight2X = 1260
		intGWidth = 1065 : intGHeight = 725
		intGWidth2X = UseWidth : intGHeight2X = UseHeight
		'#005 20120409 S.HAN UPD( END )
	End If
Else
		intGWidth = 883 : intGHeight = 645
		intGWidth2X = UseWidth : intGHeight2X = UseHeight
End If

if DNG_KBN <> "101" and DNG_KBN <> "12143" and DNG_KBN <> "12907" and DNG_KBN <> "13092" then

   'response.Write dng_kbn    2013-05-03 주석 처리 함 
        '▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
        '	강좌정보취득
        '▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
        '// S20100223	UPD	J.K.KIM	강의등록안된 OT영상 재생을 위해 강의정보취득시 강좌코드로 LEFT JOIN 처리
        '//strSql = " select cm_chr_nm, tm_tec_nm, lm_lec_seq, lm_lec_nm,"
        '//strSql = strSql & " 		(select top 1 lm_lec_cd from ms_lec_mas with(nolock) where lm_lec_cd<"&lec_cd&" and lm_chr_cd=cm_chr_cd order by lm_lec_cd desc ) as prev_lec_cd,"
        '//strSql = strSql & " 		(select top 1 lm_lec_cd from ms_lec_mas with(nolock) where lm_lec_cd>"&lec_cd&" and lm_chr_cd=cm_chr_cd order by lm_lec_cd ) as next_lec_cd"
        '//strSql = strSql & " 		from ms_chr_mas with(nolock) join ms_tec_mas with(nolock) on cm_tec_cd=tm_tec_cd "
        '//strSql = strSql & " 		join ms_lec_mas with(nolock) on cm_chr_cd=lm_chr_cd and lm_lec_cd="&lec_cd
        strSql = " select cm_chr_nm, tm_tec_nm, isnull(lm_lec_seq,0), isnull(lm_lec_nm,'OT영상'),"
        strSql = strSql & " 		(select top 1 lm_lec_cd from ms_lec_mas with(nolock) where lm_lec_cd<"&lec_cd&" and lm_chr_cd=cm_chr_cd order by lm_lec_cd desc ) as prev_lec_cd,"
        strSql = strSql & " 		(select top 1 lm_lec_cd from ms_lec_mas with(nolock) where lm_lec_cd>"&lec_cd&" and lm_chr_cd=cm_chr_cd order by lm_lec_cd ) as next_lec_cd"
        strSql = strSql & " 		from ms_chr_mas with(nolock) left join ms_tec_mas with(nolock) on cm_tec_cd=tm_tec_cd "
        strSql = strSql & " 		left join ms_lec_mas with(nolock) on cm_chr_cd=lm_chr_cd and lm_lec_cd="&lec_cd
        strSql = strSql & " 		where cm_chr_cd="&chr_cd
        '// E20100223	UPD	J.K.KIM

        Set Rs = DbExec(strSql, "study")
        If Not Rs.Eof Then
	        cm_chr_nm = Rs(0)
	        tm_tec_nm = Rs(1)
	        lm_lec_seq = Rs(2)
	        lm_lec_nm = Rs(3)
	        prev_lec_cd = Rs(4)
	        next_lec_cd = Rs(5)
        End If
        Call RsClose(Rs)

end if

'▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
'	회원 플레이 설정정보취득 start
strSql = "select sp_speed, sp_size, sp_alwaysontop, sp_block, sp_audio, sp_audio_pop from md_set_play with(nolock) where sp_mem_id='"&Cook_Id&"' "

Set Rs = DbExec(strSql, "study")
If Not Rs.Eof Then
	sp_speed = Trim(Rs(0))
	sp_size = Trim(Rs(1))
	sp_alwaysontop = Trim(Rs(2))
	sp_block = Trim(Rs(3))
	sp_audio = Trim(Rs(4))
	sp_audio_pop = Trim(Rs(5))

	bPlaySave = "Y"
Else
	sp_speed = 1000
	sp_size = "iSizeStd"
	sp_alwaysontop = "0"
	sp_block = 30
	bPlaySave = "N"
End If
Call RsClose(Rs)
'	회원 플레이 설정정보취득 end
'▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒


'▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
'	회원 영상 설정정보취득 start
strSql = "select sm_brightness,sm_hue,sm_contrast,sm_saturation from md_set_movie with(nolock) where sm_mem_id='"&Cook_Id&"' "

Set Rs = DbExec(strSql, "study")
If Not Rs.Eof Then
	sm_brightness = Trim(Rs(0))
	sm_hue = Trim(Rs(1))
	sm_contrast = Trim(Rs(2))
	sm_saturation = Trim(Rs(3))
Else
	sm_brightness = 8
	sm_hue = 2
	sm_contrast = 128
	sm_saturation = 64
End If
Call RsClose(Rs)
'	회원 영상 설정정보취득 end
'▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒


'▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
'	회원 EQ 설정정보취득 start
strSql = "select se_band1,se_band2,se_band3,se_band4,se_band5,se_band6,se_band7,se_band8,se_preset from md_set_eq with(nolock) where se_mem_id='"&Cook_Id&"'"

Set Rs = DbExec(strSql, "study")
If Not Rs.Eof Then

	se_band1 = rs(0)
	se_band2 = rs(1)
	se_band3 = rs(2)
	se_band4 = rs(3)
	se_band5 = rs(4)
	se_band6 = rs(5)
	se_band7 = rs(6)
	se_band8 = rs(7)
	se_preset = rs(8)

Else
	se_band1 = 45
	se_band2 = 45
	se_band3 = 45
	se_band4 = 45
	se_band5 = 45
	se_band6 = 45
	se_band7 = 45
	se_band8 = 45
	se_preset = ""
End If

if se_preset <> "" then
	se_band1 = 45
	se_band2 = 45
	se_band3 = 45
	se_band4 = 45
	se_band5 = 45
	se_band6 = 45
	se_band7 = 45
	se_band8 = 45
end if

Call RsClose(Rs)
'	회원 영상 설정정보취득 end
'▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒

	'인트로 정보
	If TEC_NM <> "" Then
		vSql = "select lm_content_key from ms_lec_mas lm with (nolock) " & _
				"where lm_chr_cd = 101 and lm_lec_nm = 'CST_INTRO_" & TEC_NM & "P' "
		call RSExec(oRs, 0, 3, vSql, "study")
		If oRs.EOF Or oRs. BOF Then
			intro_yn = "N"
			intro_content_key = ""
		Else
			intro_yn = "Y"
			intro_content_key = oRs(0)
		End If
		Call RSClose(oRs)
	Else
		intro_yn = "N"
	End If


	Dim loginid
	'//////////////////////////////////////////////////////////////////////////
	' 미디어관련 파라미터 설정
	'//////////////////////////////////////////////////////////////////////////
	Dim userId

	'암호화 선언 작업
	Dim kollus
	Set kollus = Server.CreateObject("KollusCrypt.Encrypt")

	Dim media_token, security_key, media_content_key, media_profile_key, awt_code, client_user_id, expire_time, playlist_flag

	media_content_key = Trim(CONTENT_KEY)		'채널에 할당된 미디어 컨텐츠 키
	If IsNull(media_content_key) Or media_content_key = "" Then
		Response.Write "<script language='javascript'>alert('파일이 없습니다.');parent.self.close();</script>"
		Response.End
	End If
	If KBN = "N" Then
		media_profile_key = security_key&"-mobile1-normal"				'인코딩 프로파일 키(화질 지정) - 모바일 일반화질
	Else
		media_profile_key = security_key&"-pc1-hd"				'인코딩 프로파일 키(화질 지정) - 슈퍼와이드 고화질
	End If
	'client_user_id = "no_" & right(cstr(clng(rnd * 900000)),5) & REPLACE(RIGHT(NOW(),5),":","")				'사이트 USER ID
	client_user_id = ""

'	If cook_id="yesmj1" Then
	'intro_yn = ""
'	Else
'	intro_yn = "N"
'	End If
'	intro_yn = "N"
'Response.write intro_yn
'Response.end
	intro_yn = "N"
	If intro_yn = "Y" Then 
		'인트로 영상이 있을 경우
		'Response.write intro_content_key
		call kollus.kollus_multi_content_add(intro_content_key, media_profile_key, true, false)	'인트로로 삽입되는 영상의 media content key 값 입력
		Response.end
		call kollus.kollus_multi_content_add(media_content_key, media_profile_key, false, true)	'본영의 media content key 값 입력
		media_token = kollus.kollus_media_link_by_multi_userid(security_key, awt_code, client_user_id, expire_time, playlist_flag)
	Else
		'인트로 영상이 없을 경우
		' media_token 에 12000초 (200분) 동안 유효한 media token 가 할당
		media_token = kollus.kollus_media_link_by_userid(security_key, media_content_key, media_profile_key, awt_code, client_user_id, expire_time, playlist_flag)
	End If
	' media_token에 담긴 내용을 가지고
	' http://v.kr.kollus.com/s?key=[$media_token] 의 형태로 이용하시면 됩니다.
	Set kollus = Nothing

	if SPL_STM = "" or IsNull(SPL_STM) then
		SPL_STM = 0			'맛보기 시작시간
	end if
	if SPL_ETM = ""  or IsNull(SPL_ETM) then
		SPL_ETM = 0			'맛보기 종료시간
	end if

%>
<!DOCTYPE html PUBLIC "-/W3C/DTD XHTML 1.0 Transitional/EN" "http:/www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http:/www.w3.org/1999/xhtml">
<head>
<meta charset="euc-kr" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<link href="<%=img_main%>/common/css/201504/2013_style.css" rel="stylesheet" type="text/css">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet" integrity="sha256-MfvZlkHCEqatNoGiOXveE8FIwMzZg4W85qfrfIFBfYc= sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==" crossorigin="anonymous">
<script language="JavaScript" src="<%=img_main%>/common/js/common.js?vt=<%=t_server_time%>"></script>
<script src="https://code.jquery.com/jquery-1.11.3.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" integrity="sha256-Sk3nkD6mLTMOF0EOpNtsIry+s1CsaqQC1rVLTAy+0yc= sha512-K1qjQ+NcF2TYO/eI3M6v8EiNYZfA95pQumfvcVrTHtwQVDG+aHRqLi/ETn2uB+1JqwYqVG3LIvdm9lj6imS/pQ==" crossorigin="anonymous"></script>
<script src="<%'=img_main%>/common/js/kollus.videogateway-controller.min.js"></script>
<SCRIPT language=javascript>
	//#001 20120409 S.HAN INS(START)
	// 윈도우 버전 확인
	var winPosition = navigator.appVersion.lastIndexOf('MSIE');
	var winVersion = navigator.appVersion.substr(winPosition + 10, 12);
	//#001 20120409 S.HAN INS( END )

	// 화면크기 초기 설정 확인하는 flag
	var isInitSize = false;

	// 전역 화면크기 설정
	// 100% 크기일 때의 Width, Height
	var gWidth		= <%=intGWidth%>;
	var gHeight		= <%=intGHeight%>;

	// 200% 크기일 때의 Width, Height
	var gWidth2X	= <%=intGWidth2X%>;
	var gHeight2X	= <%=intGHeight2X%>;

	//#001 20120409 S.HAN INS(START)
	var cutWidth = 0;
	var cutHeight = 0;

	if (winVersion == "Windows NT 5")
	{
		cutHeight = 0;			// 윈도XP라면
	}else{
		cutHeight = -12;
	}

	<% If KBN = "S" Then %>
		<%If INSTR(1,"/101/12143/12907/13092/",DNG_KBN)>0 Then %>
			var right_tab = "N"; // 오른쪽 메뉴 프레임		변수를 아래에서 끌어올림 20120503 CHOIJH
		<%Else %>
			var right_tab = "Y"; // 오른쪽 메뉴 프레임		변수를 아래에서 끌어올림 20120503 CHOIJH
		<%End If %>
	<% Else %>
			var right_tab = "N"; // 오른쪽 메뉴 프레임		변수를 아래에서 끌어올림 20120503 CHOIJH
	<% End If %>
	//alert(right_tab);
    
	//#001 20120409 S.HAN INS( END )

    // 0 : Default 화면, 1 : Fullscreen
    var screenMode = 0;

    // 현재 사이즈, iSizeFull:전체, iSizeStd:표준, iSizeBig:확대
	var strSize = "iSizeStd";

	var sBtnStatus = "pause";

	var vCompleteFlg = false;	// 듣기완료여부(true:완료, false:미완료)
	var vAllPlayTime;	//총재생시간
	var vCurPlayTime=0;	//현재생시간_위치

	var APT_Timer;
	var Final_Study_Point;
	var hGetPosition;

	function HandleClose() {

	}

	function initSize(){
		<% If SET3 = "1" Then '표준 %>
			strSize = "iSizeStd";
			fncBtnSize('iSizeStd');
		<% Else '큰화면 %>
			strSize = "iSizeBig";
			fncBtnSize('iSizeBig');
		<% End If %>
	}

	function fncImgOn(t){
		$(t).src = $(t).src.replace("_off","_on");
	}
	function fncImgOut(t){
		$(t).src = $(t).src.replace("_on","_off");
	}
	function fncBtnSize(t){

		if (t == "iSizeFull"){
			strSize = "iSizeFull";
			AquaPlayer.SetSizeFull();
		}else if (t == "iSizeStd"){
			strSize = "iSizeStd";
			AquaPlayer.SetSize100();
		}else if (t == "iSizeBig"){
			strSize = "iSizeBig";
			parent.window.moveTo(0,0);
			parent.window.resizeTo(gWidth2X, gHeight2X);	//#001 20120409 S.HAN UPD
		}
	}

	function fncSetSize(e) {
		if (e == "iSizeStd") {
			/* #001 20120409 S.HAN DEL(START)
			$("iSizeStd").src = $("iSizeStd").src.replace("_off","_on");
			$("iSizeBig").src = $("iSizeBig").src.replace("_on","_off");
			$("iSizeFull").src = $("iSizeFull").src.replace("_on","_off");
				#001 20120409 S.HAN DEL( END ) */
			movieform.iSize.value="iSizeStd";
		} else if (e == "iSizeBig") {
			/* #001 20120409 S.HAN DEL(START)
			$("iSizeStd").src = $("iSizeStd").src.replace("_on","_off");
			$("iSizeBig").src = $("iSizeBig").src.replace("_off","_on");
			$("iSizeFull").src = $("iSizeFull").src.replace("_on","_off");
				#001 20120409 S.HAN DEL( END ) */
			movieform.iSize.value="iSizeBig";
		} else if (e == "iSizeFull") {
			/* #001 20120409 S.HAN DEL(START)
			$("iSizeStd").src = $("iSizeStd").src.replace("_on","_off");
			$("iSizeBig").src = $("iSizeBig").src.replace("_on","_off");
			$("iSizeFull").src = $("iSizeFull").src.replace("_off","_on");
				#001 20120409 S.HAN DEL( END ) */
			movieform.iSize.value="iSizeFull";
		}
	//	$("savechk").checked=false;
		fncBtnSize(e);
	}

	function MoveLec(cd) {
		if (cd != "") {
			top.location.href="/player/cate/sPlayer/Player_Load.asp?APP_NO=<%=APP_NO%>&CHR_CD=<%=CHR_CD%>&LEC_CD="+cd;
		}
	}

	function IsNum(f,val) {

		if (!isValidNumber(val)) {
			alert("숫자만 입력가능 합니다.");
			f.value="";
			f.focus();
		}
		$("savechk").checked=false;
		return;
	}

//	function player_change() {
//		fncBtnMove("iBtnStop");
//		var vPlayerUrl;
//		var vPlayerParam, vPlayerNm, vPlayerOption;
//		vPlayerParam = "?APP_NO=<%=app_no%>&CHR_CD=<%=chr_cd%>&LEC_CD=<%=lec_cd%>&TEC_NM=<%=tec_nm%>&kbn=10&Relay_Yn=Y";
//		vPlayerNm = "DNGPlayer1";
//		vPlayerUrl = "/Player/Cate/nPlayer/Player_Normal.asp";
//		vPlayerOption = "scrollbars=yes,width=370,height=610,top=0,left=0";
//		window.open(vPlayerUrl + vPlayerParam, vPlayerNm, vPlayerOption);
//
//		top.close();
//	}

	function fncSetRightTab(){
		//alert(right_tab);
		if (movieform.iSize.value == "iSizeStd"){
			if (right_tab == "Y"){
				//parent.window.resizeTo(gWidth-cutWidth+20, gHeight-cutHeight);		//#001 20120409 S.HAN UPD
				parent.window.resizeBy(251, 0);
				//parent.player_top.cols='*,251';
				parent.document.getElementById("player_top").cols = "*,251";
				if (isIE()){
					//IE브라우저
				} else {
					//$('#frame2').forceRedraw(true);
				}
				//$('#frame2').forceRedraw(true);
				document.getElementById("frameimg").src = "http://img.megagong.net/player/2015_newskin/arrow_close.gif";
				//$("frameimg").src = $("frameimg").src.replace("_open","_close");
			}else{
				//alert(gHeight);
				//parent.window.resizeTo(gWidth - cutWidth - 231, gHeight-cutHeight);		//#001 20120409 S.HAN UPD
				parent.window.resizeBy(-251, 0);
				//parent.parent.player_top.cols='*,0';
				parent.document.getElementById("player_top").cols = "*,0";
				if (isIE()){
					//IE브라우저
				} else {
					//$('#frame2').forceRedraw(true);
				}
				//alert(document.getElementById("frameimg").src);
				document.getElementById("frameimg").src = "http://img.megagong.net/player/2015_newskin/arrow_open.gif";
				//$("frameimg").src = $("frameimg").src.replace("_close","_open");
			}
		}else if (movieform.iSize.value == "iSizeBig"){
			if (right_tab == "Y"){
				parent.player_top.cols='*,251';
				$("frameimg").src = $("frameimg").src.replace("_open","_close");
			}else{
				parent.player_top.cols='*,0';
				$("frameimg").src = $("frameimg").src.replace("_close","_open");
			}
		}
	}

	function fncSetRightTab2(){
		if (movieform.iSize.value == "iSizeStd"){
			if (right_tab == "Y"){
				parent.window.resizeTo(gWidth-cutWidth+20, gHeight-cutHeight);		//#001 20120409 S.HAN UPD
				parent.player_top.cols='*,251';
				$("frameimg").src = $("frameimg").src.replace("_open","_close");
			}else{
				parent.window.resizeTo(gWidth - cutWidth - 231, gHeight-cutHeight);		//#001 20120409 S.HAN UPD
				parent.player_top.cols='*,0';
				alert($("frameimg").src);
				$("frameimg").src = $("frameimg").src.replace("_close","_open");
			}
		}else if (movieform.iSize.value == "iSizeBig"){
			if (right_tab == "Y"){
				parent.player_top.cols='*,251';
				$("frameimg").src = $("frameimg").src.replace("_open","_close");
			}else{
				parent.player_top.cols='*,0';
				$("frameimg").src = $("frameimg").src.replace("_close","_open");
			}
		}
	}

	function fncRightTab(t){
		//alert(right_tab);
		if (right_tab == "Y"){
			right_tab = "N";
		}else{
			right_tab = "Y";
		}    
		fncSetRightTab();
	}
	//alert('<%= UseWidth %>');
<%
	'#001 20120409 S.HAN INS(START)    
	If (UseWidth <= 1200 And WIDE_KBN = "Y") Or INSTR(1,"/101/12143/12907/13092/",DNG_KBN)>0 Then				' 1280해상도미만이고 와이드 영상이라면 오른쪽 탭 안보임
		response.write "parent.player_top.cols='*,0';"
	end if
	'#001 20120409 S.HAN INS( END )
%>

	var s1 = null;
	var s2 = null;
	var s3 = null;
	var s4 = null;

    function createXMLHttpRequest(){
    	if(window.ActiveXObject){
    		return new ActiveXObject("Microsoft.XMLHTTP");
    	}else if(window.XMLHttpRequest){
    		return new XMLHttpRequest();
    	}
    }

	//#001 20120409 S.HAN INS(START)
	function correctWindowSize(){						// 영상 사이즈 보정 20120405 CHOIJH
		var ClientH = document.body.clientHeight
		if (gWidth == "1190" && gHeight == "650")									// 영상높이가 설정값보다 작은 경우 (1280 * 720)
		{
			if (ClientH > 640 && cutHeight == 0) {									// 높이가 주소창 포함이 아니라면 창크기를 좀 더 작게 XP의 경우
				cutHeight = cutHeight + 22;
			}else if (ClientH > 630 && cutHeight != 0)								// 높이가 주소창 포함이 아니라면 창크기를 좀 더 작게 (XP이외)
			{
				cutWidth = -80;				// 해당 해상도에서는 폭을 줄임
			}
		}else{
			if (gWidth == "1583" && ClientH > 680 && cutHeight == 0) {				// 폭 1번 모드 와이드 높이가 주소창 포함이 아니라면 창크기를 좀 더 작게 XP의 경우
				cutHeight = cutHeight + 22;
			}else if (gWidth == "1240" && ClientH > 680 && cutHeight == 0) {		// 폭 2번 모드 와이드 높이가 주소창 포함이 아니라면 창크기를 좀 더 작게 XP의 경우
				cutHeight = cutHeight + 22;
			}else if (gWidth == "883" && ClientH > 680 && cutHeight == 0) {			// 폭 3번 모드 와이드 높이가 주소창 포함이 아니라면 창크기를 좀 더 작게 XP의 경우
				cutHeight = cutHeight + 22;
			}else if (gWidth == "1065" && ClientH > 690 && cutHeight == 0) {		// 일반영상에서 높이가 주소창 포함이 아니라면 창크기를 좀 더 작게 XP의 경우
				cutHeight = cutHeight + 22;
			}else if (gWidth == "1583" && ClientH > 670 && cutHeight != 0) {		// 폭 1번 모드 와이드 높이가 주소창 포함이 아니라면 창크기를 좀 더 작게 XP외
				cutHeight = cutHeight + 37;
			}else if (gWidth == "1240" && ClientH > 670 && cutHeight != 0) {		// 폭 2번 모드 와이드 높이가 주소창 포함이 아니라면 창크기를 좀 더 작게 XP외
				cutHeight = cutHeight + 37;
			}else if (gWidth == "883" && ClientH > 670 && cutHeight != 0) {			// 폭 3번 모드 와이드 높이가 주소창 포함이 아니라면 창크기를 좀 더 작게 XP외
				cutHeight = cutHeight + 37;
			}else if (gWidth == "1065" && ClientH > 680 && cutHeight != 0) {		// 일반영상에서 높이가 주소창 포함이 아니라면 창크기를 좀 더 작게 XP외
				cutHeight = cutHeight + 37;
			}else{
				//alert(1);
			}
		}
	}
	//#001 20120409 S.HAN INS( END )

	var controller;
	window.onload = function() {
		//correctWindowSize();		//#001 20120409 S.HAN INS
		parent.moveTo(0,0);
		<% If KBN = "S" Then %>
			if (right_tab == "N")			//탭이 없으면 탭없는 사이즈만큼 줄이기	20120503 CHOIJH
			{
				parent.resizeTo(gWidth-cutWidth-251, gHeight-cutHeight);
			}else{
				parent.resizeTo(gWidth-cutWidth, gHeight-cutHeight);
			}
			document.getElementById('child').height = gHeight-cutHeight - 280;
		<% Else %>
//				alert(1);
//				parent.resizeTo(gWidth-cutWidth-251, gHeight-cutHeight);
//				alert(2);
				document.getElementById('child').height = gHeight-cutHeight - 190;
		<% End If %>
		//alert(right_tab);
		//alert(1);
		//alert("<%= SPL_STM %> , <%= SPL_ETM %>");
//		window.effect = new Effect["SlideUp"]( 'eq',0,0,0);		#001 20120409 S.HAN DEL
//		window.effect = new Effect["SlideUp"]( 'hotkey',0,0,0);
//		window.effect = new Effect["SlideUp"]( 'vol',0,0,0);		#001 20120409 S.HAN DEL

		try {
			var bind_event = function(id, listener) {
					document.getElementById(id).onclick = listener;
				};

		var add_event_message = function(message) {
					//var event_message = document.getElementById('event');

					//event_message.value += message + "\n";
				};

			controller = new Kollus.VideogatewayController({
					target_window: document.getElementById('child').contentWindow
				});

			<% If SPL_STM > 0 Then %>
				controller.play(<%= SPL_STM %>);
			<% End If %>

			// video playback event binding
			controller
				.on('progress', function(percent, position, duration) {
					var progr = document.getElementById('progr');
					//progr.innerText = percent + '% (' + position + ' / ' + duration + ')';
					<% If SPL_ETM > 0 Then %>
					if (position >= <%= SPL_ETM %>){
						controller.pause();
					}
					<% End If %>
//					var progress = document.getElementById('progress-bar');
//
//					if(progress.textContent) {
//						progress.textContent = percent + '% (' + position + ' / ' + duration + ')';
//					} else {
//						progress.innerText = percent + '% (' + position + ' / ' + duration + ')';
//					}
//					progress.style.width = Math.max(5, percent) + '%';
				})
				.on('play', function() {
					add_event_message('play');
				})
				.on('pause', function() {
					add_event_message('pause');
				})
				.on('done', function() {
					add_event_message('done');
				})
				.on('ready', function() {
					add_event_message('ready');
					//document.getElementById('speed').value = controller.get_speed();
				})
			// command event binding
		} catch(e) {
			if(e instanceof KollusPostMessageException && e.code === -99) {
				// browser does not support window.postMessage.
				// script won't work under this condition.
				alert('You can`t use video playback control.');
			} else {
				// some other errors
				console.log(e.message);
			}
		}

	}
	function fncAlwaysOnTop(){
		//alert(1);
		controller.set_topmost(controller.get_topmost() ? false : true);
		//alert(2);
	}

</script>
<script language="JavaScript" src="<%=url_common%>/js/common.js"></script>
<xscript language="JavaScript" src="<%=url_common%>/js/scriptaculous/prototype.js"></xscript>
<xscript language="JavaScript" src="<%=url_common%>/js/scriptaculous/scriptaculous.js"></xscript>
<script  language=javascript >
window.onbeforeunload = function() {};
// IE9 팝업창이 먼저 닫히는 버그수정
</script>
</head>
<body style="height:100%; background-color:#2d2d2f;" topmargin="0" leftmargin="0">
<div class="player_l_wrap">
<table id="player_mainframe" width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
    <!-- 로고 영역 S -->
    <tr>
        <td style="height:40px; padding-left:22px;"><!--<img src="http://img.megagong.net/player/2015_newskin/etc/logo.png">--></td>
    </tr>
     <!-- //로고 영역 E -->
    <tr>
        <td style="vertical-align:top; text-align:center; padding:0 22px 0 22px; position:relative;">
            <table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td colspan="3" style="height:3px; background-color:#000;"></td>
                </tr>
                <tr>
                    <td style="width:3px; background-color:#000;"></td>
                    <td style="text-align:center;background-color:#000;">
                        <!-- 영상 영역 -->
                        <table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td style="background-color:#000;">
			<iframe id="child" width="100%" height="100%" src="http://v.kr.kollus.com/s?key=<%=media_token%>&a" frameborder="0" allowFullScreen="true" webkitallowfullscreen="true" mozallowfullscreen="true" ></iframe>
                            </td>
                        </tr>
                        </table>
                        <!-- 영상 영역 끝 -->
                    </td>
                    <td style="width:3px; background-color:#000;"></td>
                </tr>
                <tr>
                    <td colspan="3" style="height:3px; background-color:#000;"></td>
                </tr> 
            </table>
            <div style="position:absolute; right:11px; top:50%; margin-top:-15px"><%If (UseWidth > 1200 Or WIDE_KBN <> "Y") And (KBN = "S") Then%><a href="javascript:fncRightTab();"><img id="frameimg" src="http://img.megagong.net/player/2015_newskin/arrow_close.gif" alt="닫기" /></a><%End if%></div>  
        </td>    
    </tr>
    <tr>
        <td style="padding:0px 22px 0 22px ;">
            <!-- 하단영역 S -->
             <div style="padding:11px 0 11px 0; position:relative;">
                 <div style="position:absolute; right:0; top:5px; width:60px; height:21px; background:url(http://img.megagong.net/player/2015_newskin/bt_back01.gif) no-repeat left top;">
                     <!-- 항상위 체크 -->
                    <p style="padding:2px 0 0 5px;"><input type="checkbox" name="alwaysontop" onClick="fncAlwaysOnTop();" id="alwaysontop"></p>
                 </div>
                 <div style="width:686px; height:52px;">
                     <img src="http://img.megagong.net/player/2015_newskin/etc/info_keboard_1.png" alt="단축키안내"/>
                 </div>
             </div>
  <%if DNG_KBN	<>  "101" THEN	' %>
             <!-- 강좌명/강의/선생님명 영역 -->
             <table width="100%" border="0" cellspacing="0" cellpadding="0" class="player_l_lecinfo">
                 <colgroup>
                     <col width="60px" ><col width="*" ><col width="60px" ><col width="20%" >
                 </colgroup>
                <tr>
                     <td><img src="http://img.megagong.net/player/2015_newskin/tx01.gif" alt="강좌명"></td>
                     <td><span class="lectitle"><%=DB_TO_STR(cm_chr_nm)%></span><span id="progr"></span></td>
                     <td><img src="http://img.megagong.net/player/2015_newskin/tx03.gif"></td>
                     <td><%If tm_tec_nm <> "" Then%><%=tm_tec_nm%> 선생님<%End if%></td>
                 </tr>
                 <tr class="last">
                     <td><img src="http://img.megagong.net/player/2015_newskin/tx02.gif"></td>
                     <td colspan="3"><%If lm_lec_nm <> "" Then%><%=lm_lec_seq%> : <%=DB_TO_STR(lm_lec_nm)%><%End if%></td>
                 </tr>           
             </table>
             <!-- //강좌명/강의/선생님명 영역 -->
             <!-- 하단영역 E -->
  <%END IF%>
        </td>
    <tr>
        <td style="height:15px;"></td>
    </tr>
</table>
<form name="movieform" method="post">
	<input type="hidden" name="brightness">
	<input type="hidden" name="hue">
	<input type="hidden" name="contrast">
	<input type="hidden" name="saturation">
	<input type="hidden" name="band1">
	<input type="hidden" name="band2">
	<input type="hidden" name="band3">
	<input type="hidden" name="band4">
	<input type="hidden" name="band5">
	<input type="hidden" name="band6">
	<input type="hidden" name="band7">
	<input type="hidden" name="band8">
	<input type="hidden" name="preset">

	<input type="hidden" name="iSize" value="iSizeStd">
</form>
</body>
</html>