<%
'=======================================================================
'�� �� �� : �ް�CST-������ �÷��̾�
'����� : ������ �÷��̾�
'�� �� �� : Player_Mega.asp
'�ۼ����� : 2016/09/07
'�� �� �� : �� �� ȫ
'-----------------------------------------------------------------------
'��������   ������  ��������
'=======================================================================
' ������ ������ �ҽ��� �ٸ��� ���ǰ� �ʿ��մϴ�.
'=======================================================================
%>

<!-- ���� ��Ŭ��� ������ ���� -->
<!-- #include virtual = "/common/inc/RSexec.asp" -->
<!-- #include virtual = "/common/inc/VarDef.asp"-->
<!-- #include virtual = "/common/inc/FunDef.asp"-->
<!-- #include virtual = "/player/Cate/cate_inc.asp"-->

<!-- #include virtual="/player/Cate/JSON_2.0.4.asp" -->
<!-- #include virtual="/player/Cate/JSON_UTIL_0.1.1.asp" -->

<!-- ���� ��Ŭ��� ������ ��ħ -->
<%
	uId = LCase(Request.cookies("userid"))			'ȸ�� ���̵� ���
	mem_type = LCase(request.cookies("mem_type"))	'ȸ�� Ÿ��

    CHR_CD 	= TRIM(REQUEST("CHR_CD"))
    LEC_CD 	= TRIM(REQUEST("LEC_CD"))
    DNG_FLG = TRIM(REQUEST("DNG_FLG"))	'������ FLAG
	DNG_CD = TRIM(REQUEST("DNG_CD"))
	WIDE_KBN= request("WIDE_KBN")		'���̵� ���� Y:���̵�
'	KBN    =  TRIM(fncRequest("KBN"))
	DNG_KBN	= request("DNG_KBN")		'
	ST_FILENAME = TRIM(REQUEST("ST_FILENAME"))	'���ϸ�

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
	SPL_STM = TRIM(REQUEST("SPL_STM"))	'������ ���۽ð�(��)
	SPL_ETM	= TRIM(REQUEST("SPL_ETM"))	'������ ����ð�(��)

'Response.write SPL_ETM
'Response.end
	CALL_TYPE = 1		'1: ȣ�����    2 : URL ȣ��
	CALL_URL  = ""
	CM_WMT9_SPL=""               '�������ϸ�

	'S20100312	UPD	W.H.JANG	#001
	'SPL_STM = 0			'������ ���۽ð�
	'SPL_ETM = 0			'������ ����ð�
	if SPL_STM = "" or IsNull(SPL_STM)  then
		SPL_STM = 0			'������ ���۽ð�
	end if
	if SPL_ETM = "" or IsNull(SPL_ETM)  then
		SPL_ETM = 0			'������ ����ð�
	end if
	'E20100312	UPD	W.H.JANG	#001

	TEC_NM = Trim(Request("TEC_NM"))		'�����

	SET3 = "1"	'ǥ�ػ����� ����Ʈ

	'Response.write DNG_KBN

	SELECT CASE DNG_KBN

         CASE "101","12143","12907","13092","13417","13109","13762","13889","13889","13890"    ''''�̺�Ʈ ���� �̸�     
                  
	       strSql =          "  SELECT top 1 LM_LEC_NM,  "
		   strSql = strSql & "      PRM_PATH = ISNULL(LMP_PRM_PATH, CM_NOR_FILE2)  + '/' + ISNULL(LM_PRM_FILE,LM_WMT9_FILE),	 "
		   strSql = strSql & "      NOR_PATH = ISNULL(LMP_NOR_PATH, CM_NOR_FILE1) + '/' + LM_NOR_FILE,CM_WMT9_SPL,CM_SPL_STM, CM_SPL_ETM,	 "
		   strSql = strSql & "      LM_WIDE_FLG,	 "		'--���̵� ����
		   strSql = strSql & "      LM_DRM_FLG,		 "	'--DRM ����
		   strSql = strSql & "      CM_TEC_CD,	 "		'--�����ڵ�
		   strSql = strSql & "      CM_DOM_CD,	 "		'--�����ڵ�
		   strSql = strSql & "      HD_PATH = ISNULL(LMP_PRM_PATH, CM_NOR_FILE2) + '/' + LM_PRM_FILE   ,cm_chr_flg, lm_content_key, " '	-- 20110916 S.HAN
		   strSql = strSql & "      TM_INTRO_KEY "
	       strSql = strSql & "  FROM    MS_LEC_MAS with(nolock) "
	       strSql = strSql & "  INNER JOIN MS_CHR_MAS with(nolock) ON LM_CHR_CD = CM_CHR_CD "
	       strSql = strSql & "  LEFT  JOIN MS_LEC_MAS_PATH with(nolock) ON LMP_CHR_CD = CM_CHR_CD AND LMP_LEC_CD = LM_LEC_CD "
		   strSql = strSql & " LEFT JOIN MS_TEC_MAS with(nolock) ON CM_TEC_CD = TM_TEC_CD  "
	       strSql = strSql & "  WHERE  LM_CHR_CD = " & DNG_KBN & " and LM_LEC_seq = " & CHR_CD 



           	SET RS = DBexec(strSql,"study")

			If Not RS.EOF Then

				CHR_NM = TRIM(RS(0))
           '     DNGPATH = TRIM(RS(1))
				'IF TEC_NM = "" THEN TEC_NM = RS(2)		'�����
				WIDE_KBN = RS("LM_WIDE_FLG")
				DRM_FLG = RS("LM_DRM_FLG")	'DRM ����
				CM_WMT9_SPL = trim(RS("CM_WMT9_SPL"))
				cm_chr_flg = RS("cm_chr_flg")
				CONTENT_KEY = RS("lm_content_key")
				TM_INTRO_KEY = RS("TM_INTRO_KEY")
				SPL_STM = Rs("CM_SPL_STM")
				SPL_ETM = Rs("CM_SPL_ETM")

				If SPL_STM = "" Then SPL_STM = 0
				If SPL_ETM = "" Then SPL_ETM = 0
			End If
			Call DBClose(RS) 

		Case "45","55"
			IF CHR_CD <> "" And Instr(lcase(Chr_cd),"open") = 0 Then
				If CHR_CD <> "101" And CHR_CD <> "13482" And CHR_CD <> "13190" And CHR_CD <> "13646" And CHR_CD <> "14310" And CHR_CD <> "14665" And CHR_CD <> "14666" And CHR_CD <> "14667" And CHR_CD <> "14672" And CHR_CD <> "14668" And CHR_CD <> "14669" And CHR_CD <> "14670" And CHR_CD <> "14671" And CHR_CD <> "14675" And CHR_CD <> "14674" Then 
					err_yn = "N"
					strSql = "select top 1 * from md_spl_list with (nolock) where sl_chr_cd = " & CHR_CD & " and sl_lec_cd = " & LEC_CD & " and sl_del_flg = '0' "
					SET RS = DBexec(strSql,"study")
					If RS.EOF Then
						err_yn = "Y"
					End If
					Call DBClose(RS)

					If err_yn = "Y" Then
						Response.Write "<script>try{alert('�ش� ���� ���� ������ �����ϴ�.(err1004)');window.opener=self;self.close();}catch(e){window.close();}</script>"
						Response.End
					End If
				End If 

				strSql = ""

				strSql = strSql & " select lm_chr_cd,CM_CHR_NM,lm_lec_cd, lm_nor_file "
				strSql = strSql & " 		,case RTRIM(isnull(cm_spl_file,'')) when  '' then '' else RTRIM(CM_NOR_FILE1) + '/' + RTRIM(isnull(cm_spl_file,'')) end as cm_spl_file "
				strSql = strSql & "		,case RTRIM(isnull(lm_wmt9_file,'')) when  '' then '' else RTRIM(CM_NOR_FILE2) + '/' + RTRIM(isnull(lm_wmt9_file,'')) end as wmt9_file "
				strSql = strSql & "		,case RTRIM(isnull(lm_wmt9_file,'')) when  '' then '' else RTRIM(CM_NOR_FILE2) + '/' + RTRIM(isnull(lm_wmt9_file,'')) end as prm_spl "			'20110310	����Ʈ������ ����
				strSql = strSql & " 		,TM_TEC_NM, CD_WIDE_FLG, ISNULL(CD_DRM_FLG,1) as CD_DRM_FLG, LM_WIDE_FLG  ,cm_chr_flg,lm_content_key "		'#005 20120409 S.HAN INS
				strSql = strSql & " 		,TM_INTRO_KEY = (CASE WHEN CM_DOM_CD = '3' THEN '' ELSE TM_INTRO_KEY END) "
				strSql = strSql & " from ms_lec_mas with (nolock)"
				strSql = strSql & " join ms_chr_mas with (nolock) on lm_chr_cd = cm_chr_cd "
				strSql = strSql & " LEFT JOIN MS_CHR_DTL with(nolock) ON CM_CHR_CD = CD_CHR_CD "
				strSql = strSql & " LEFT JOIN MS_TEC_MAS with(nolock) ON CM_TEC_CD = TM_TEC_CD  "
				strSql = strSql & " where lm_chr_cd =" & CHR_CD
				strSql = strSql & "  AND LM_LEC_CD = " & LEC_CD

				SET RS = DBexec(strSql,"study")

				If Not RS.EOF Then
					CHR_NM = TRIM(RS("CM_CHR_NM"))
				'	DNGPATH = TRIM(RS("wmt9_file"))

					if trim(RS("prm_spl")) <> "" then
						DNGPATH = TRIM(RS("prm_spl"))
					end if

					IF TEC_NM = "" THEN TEC_NM = RS(7)		'�����
	'				WIDE_KBN = RS("CD_WIDE_FLG")
					DRM_FLG = RS("CD_DRM_FLG")	'DRM ����
					LEC_CD = RS("lm_lec_cd")
					cm_chr_flg = RS("cm_chr_flg")
					CONTENT_KEY = RS("lm_content_key")
					TM_INTRO_KEY = RS("TM_INTRO_KEY")
					WIDE_KBN = RS("LM_WIDE_FLG")		'���̵� ������ ���� �����Ϳ��� 20120328 CHOIJH	'#005 20120409 S.HAN INS
				End If
				Call DBClose(RS)
			End If
		Case "30"

			strSql = ""
			strSql = strSql & " SELECT	TOP 1 CM_CHR_NM, "
			strSql = strSql & "		    RTRIM(CM_NOR_FILE2) + '/' + RTRIM(CM_ORI_SPL), "
			strSql = strSql & "		    TM_TEC_NM, CD_WIDE_FLG, ISNULL(CD_DRM_FLG,1),CM_ORI_SPL, "
			strSql = strSql & "		    CM_SPL_STM, CM_SPL_ETM, TM_TEC_NM, ISNULL(LM_LEC_CD,0) as LEC_CD , cm_chr_flg,lm_content_key, "
			strSql = strSql & "		    TM_INTRO_KEY = (CASE WHEN CM_DOM_CD = '3' THEN '' ELSE TM_INTRO_KEY END) "
			strSql = strSql & " FROM	MS_CHR_MAS with(nolock) "
			strSql = strSql & " 	LEFT JOIN MS_CHR_DTL with(nolock) ON CM_CHR_CD = CD_CHR_CD "
			strSql = strSql & "   LEFT JOIN MS_TEC_MAS with(nolock) ON CM_TEC_CD = TM_TEC_CD "
			strSql = strSql & "   LEFT JOIN MS_LEC_MAS with(nolock) ON CM_CHR_CD = LM_CHR_CD "
			strSql = strSql & " WHERE	CM_CHR_CD = " & CHR_CD


			SET RS = DBexec(strSql,"study")

			If Not RS.EOF Then
				CHR_NM = TRIM(RS(0))
			'	DNGPATH = TRIM(RS(1))
				IF TEC_NM = "" THEN TEC_NM = RS(2)		'�����
				WIDE_KBN = RS(3)
				DRM_FLG = RS(4)	'DRM ����
				CM_WMT9_SPL = trim(RS("CM_ORI_SPL"))

				SPL_STM = Rs("CM_SPL_STM")
				SPL_ETM = Rs("CM_SPL_ETM")
'// S20100223	UPD	J.K.KIM	���ǵ�Ͼȵ� OT���� ����� ���� ������������ �����ڵ�� LEFT JOIN ó��
'//				LEC_CD = RS("LM_LEC_CD")
				LEC_CD = RS("LEC_CD")
				cm_chr_flg = RS("cm_chr_flg")
				If SPL_STM = "" Then SPL_STM = 0
				If SPL_ETM = "" Then SPL_ETM = 0
				CONTENT_KEY = RS("lm_content_key")
				TM_INTRO_KEY = RS("TM_INTRO_KEY")
			End If
			Call DBClose(RS)
		
		Case "40"
			strSql = ""
			strSql = strSql & " SELECT	TOP 1 CM_CHR_NM, "
			strSql = strSql & "		    RTRIM(CM_NOR_FILE2) + '/' + RTRIM(CM_WMT9_SPL), "
			strSql = strSql & "		    TM_TEC_NM, CD_WIDE_FLG, ISNULL(CD_DRM_FLG,1),CM_WMT9_SPL, "
			strSql = strSql & "		    CM_SPL_STM, CM_SPL_ETM, TM_TEC_NM, LM_LEC_CD ,cm_chr_flg,cm_ori_spl as lm_content_key, "
			strSql = strSql & "		    TM_INTRO_KEY = (CASE WHEN CM_DOM_CD = '3' THEN '' ELSE TM_INTRO_KEY END) "
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
				IF TEC_NM = "" THEN TEC_NM = RS(2)		'�����
				WIDE_KBN = RS(3)
				DRM_FLG = RS(4)	'DRM ����
				CM_WMT9_SPL = trim(RS("CM_WMT9_SPL"))

				SPL_STM = Rs("CM_SPL_STM")
				SPL_ETM = Rs("CM_SPL_ETM")
				LEC_CD = RS("LM_LEC_CD")
				cm_chr_flg = RS("cm_chr_flg")
				CONTENT_KEY = RS("lm_content_key")
				TM_INTRO_KEY = RS("TM_INTRO_KEY")

				If SPL_STM = "" Then SPL_STM = 0
				If SPL_ETM = "" Then SPL_ETM = 0
			End If
			Call DBClose(RS)

		CASE ELSE		'�ܿ� ������ ����



			strSql = ""
			strSql = strSql & " SELECT	TOP 1 CM_CHR_NM, "
			strSql = strSql & "		    RTRIM(CM_NOR_FILE2) + '/' + RTRIM(CM_WMT9_SPL), "
			strSql = strSql & "		    TM_TEC_NM, CD_WIDE_FLG, ISNULL(CD_DRM_FLG,1),CM_WMT9_SPL, "
			strSql = strSql & "		    CM_SPL_STM, CM_SPL_ETM, TM_TEC_NM, LM_LEC_CD ,cm_chr_flg,lm_content_key, "
			strSql = strSql & "		    TM_INTRO_KEY = (CASE WHEN CM_DOM_CD = '3' THEN '' ELSE TM_INTRO_KEY END) "
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
				IF TEC_NM = "" THEN TEC_NM = RS(2)		'�����
				WIDE_KBN = RS(3)
				DRM_FLG = RS(4)	'DRM ����
				CM_WMT9_SPL = trim(RS("CM_WMT9_SPL"))

				SPL_STM = Rs("CM_SPL_STM")
				SPL_ETM = Rs("CM_SPL_ETM")
				LEC_CD = RS("LM_LEC_CD")
				cm_chr_flg = RS("cm_chr_flg")
				CONTENT_KEY = RS("lm_content_key")
				TM_INTRO_KEY = RS("TM_INTRO_KEY")

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
' ������ ũ�� ����------------------------------------------
	If UCase(WIDE_KBN) = "Y" Then	'���̵��� ��� ȭ�� ũ�� ũ���ϱ�
		'#005 20120409 S.HAN UPD(START)
		'intGWidth = 1050 : intGHeight = 720
		'intGWidth2X = 1660 : intGHeight2X = 1260
		If UseWidth > 1600 Then 
			intGWidth = 1583 : intGHeight = 830
		ElseIf UseWidth > 1200 Then 
			If UseHeight <= 690 Then					' �߰� : 1280 * 720 ���� 
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

if DNG_KBN <> "101" and DNG_KBN <> "12143" and DNG_KBN <> "12907" and DNG_KBN <> "13092" And DNG_KBN <> "13417" And DNG_KBN <> "13109" And DNG_KBN <> "13762" And DNG_KBN <> "13889" And DNG_KBN <> "13890" then

   'response.Write dng_kbn    2013-05-03 �ּ� ó�� �� 
        '�ƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢ�
        '	�����������
        '�ƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢ�
        '// S20100223	UPD	J.K.KIM	���ǵ�Ͼȵ� OT���� ����� ���� ������������ �����ڵ�� LEFT JOIN ó��
        '//strSql = " select cm_chr_nm, tm_tec_nm, lm_lec_seq, lm_lec_nm,"
        '//strSql = strSql & " 		(select top 1 lm_lec_cd from ms_lec_mas with(nolock) where lm_lec_cd<"&lec_cd&" and lm_chr_cd=cm_chr_cd order by lm_lec_cd desc ) as prev_lec_cd,"
        '//strSql = strSql & " 		(select top 1 lm_lec_cd from ms_lec_mas with(nolock) where lm_lec_cd>"&lec_cd&" and lm_chr_cd=cm_chr_cd order by lm_lec_cd ) as next_lec_cd"
        '//strSql = strSql & " 		from ms_chr_mas with(nolock) join ms_tec_mas with(nolock) on cm_tec_cd=tm_tec_cd "
        '//strSql = strSql & " 		join ms_lec_mas with(nolock) on cm_chr_cd=lm_chr_cd and lm_lec_cd="&lec_cd
        strSql = " select cm_chr_nm, tm_tec_nm, isnull(lm_lec_seq,0), isnull(lm_lec_nm,'OT����'),"
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

'�ƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢ�
'	ȸ�� �÷��� ����������� start
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
'	ȸ�� �÷��� ����������� end
'�ƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢ�


'�ƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢ�
'	ȸ�� ���� ����������� start
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
'	ȸ�� ���� ����������� end
'�ƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢ�


'�ƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢ�
'	ȸ�� EQ ����������� start
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
'	ȸ�� ���� ����������� end
'�ƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢ�

	'��Ʈ�� ����
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
	' �̵����� �Ķ���� ����
	'//////////////////////////////////////////////////////////////////////////
	Dim userId


	if SPL_STM = "" or IsNull(SPL_STM) then
		SPL_STM = 0			'������ ���۽ð�
	end if
	if SPL_ETM = ""  or IsNull(SPL_ETM) then
		SPL_ETM = 0			'������ ����ð�
	end if


	'�ƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢ�
	' �÷��̾� JWTó��
	'�ƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢ�
	Dim Payload, mc, JWTHead, temp()
	Set JWTHead = jsObject()
	JWTHead("typ") = "JWT"
	JWTHead("alg") = "HS256"

	Set mc_intro = jsObject()
	mc_intro("intr") = True
	mc_intro("mckey") = TM_INTRO_KEY
	mc_intro("seek") = False 
	mc_intro("mcpf") = security_key&"-pc1-high"

	Set mc = jsObject()
	mc("intr") = False
	mc("mckey") = CONTENT_KEY

	If KBN = "N" Then
		mc("mcpf") = security_key&"-mobile1-normal"				'���ڵ� �������� Ű(ȭ�� ����) - ����� �Ϲ�ȭ��
	Else
		mc("mcpf") = security_key&"-pc1-high"				'���ڵ� �������� Ű(ȭ�� ����) - ���ۿ��̵� ��ȭ��
	End If

	'TM_INTRO_KEY = ""
	If TM_INTRO_KEY <> "" Then 
		reDim temp(1)
		Set temp(0) = mc_intro
		Set temp(1) = mc
	Else
		reDim temp(0)
		Set temp(0) = mc
	End If 

	Set Payload = jsObject()
	Payload("cuid") = cook_id
	Payload("expt") = DateDiff("s", "01/01/1970 00:00:00", Now())
	Payload("mc") = temp

	tmp = Base64encode_cate(toJSON(JWTHead)) + "." + Base64encode_cate(toJSON(Payload))

	Dim sha256
	Set sha256 = GetObject( "script:" & Server.MapPath("/player/Cate/sha256.wsc") )
	sha256.hexcase = 0

	Dim result
	customKey=CUSTOM_USER_KEY
	result = sha256.b64_hmac_sha256(SERVICE_ACCOUNT_KEY, tmp)
	'Response.write tmp+"."+result+"<br>"
	result = Server.URLEncode(result)
	'response.write "<iframe width='800' height='600' src='http://v.kr.kollus.com/s?jwt="+tmp+"."+result+"&custom_key="+customKey+"'></iframe><br>"
	
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
	// ������ ���� Ȯ��
	var winPosition = navigator.appVersion.lastIndexOf('MSIE');
	var winVersion = navigator.appVersion.substr(winPosition + 10, 12);
	//#001 20120409 S.HAN INS( END )

	// ȭ��ũ�� �ʱ� ���� Ȯ���ϴ� flag
	var isInitSize = false;

	// ���� ȭ��ũ�� ����
	// 100% ũ���� ���� Width, Height
	var gWidth		= <%=intGWidth%>;
	var gHeight		= <%=intGHeight%>;

	// 200% ũ���� ���� Width, Height
	var gWidth2X	= <%=intGWidth2X%>;
	var gHeight2X	= <%=intGHeight2X%>;

	//#001 20120409 S.HAN INS(START)
	var cutWidth = 0;
	var cutHeight = 0;

	if (winVersion == "Windows NT 5")
	{
		cutHeight = 0;			// ����XP���
	}else{
		cutHeight = -12;
	}

	<% If KBN = "S" Then %>
		<%If INSTR(1,"/101/12143/12907/13092/13417/13109/13762/13889/13890/",DNG_KBN)>0 Then %>
			var right_tab = "N"; // ������ �޴� ������		������ �Ʒ����� ����ø� 20120503 CHOIJH
		<%Else %>
			var right_tab = "Y"; // ������ �޴� ������		������ �Ʒ����� ����ø� 20120503 CHOIJH
		<%End If %>
	<% Else %>
			var right_tab = "N"; // ������ �޴� ������		������ �Ʒ����� ����ø� 20120503 CHOIJH
	<% End If %>
	//alert(right_tab);
    
	//#001 20120409 S.HAN INS( END )

    // 0 : Default ȭ��, 1 : Fullscreen
    var screenMode = 0;

    // ���� ������, iSizeFull:��ü, iSizeStd:ǥ��, iSizeBig:Ȯ��
	var strSize = "iSizeStd";

	var sBtnStatus = "pause";

	var vCompleteFlg = false;	// ���ϷῩ��(true:�Ϸ�, false:�̿Ϸ�)
	var vAllPlayTime;	//������ð�
	var vCurPlayTime=0;	//������ð�_��ġ

	var APT_Timer;
	var Final_Study_Point;
	var hGetPosition;

	function HandleClose() {

	}

	function initSize(){
		<% If SET3 = "1" Then 'ǥ�� %>
			strSize = "iSizeStd";
			fncBtnSize('iSizeStd');
		<% Else 'ūȭ�� %>
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
			alert("���ڸ� �Է°��� �մϴ�.");
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
				//parent.document.getElementById("player_top").cols = "*,251";
				$("#view_2", parent.document).show();
				if (isIE()){
					//IE������
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
				//parent.document.getElementById("player_top").cols = "*,0";
				$("#view_2", parent.document).hide();
				if (isIE()){
					//IE������
				} else {
					//$('#frame2').forceRedraw(true);
				}
				//alert(document.getElementById("frameimg").src);
				document.getElementById("frameimg").src = "http://img.megagong.net/player/2015_newskin/arrow_open.gif";
				//$("frameimg").src = $("frameimg").src.replace("_close","_open");
			}
		}else if (movieform.iSize.value == "iSizeBig"){
			if (right_tab == "Y"){
				//parent.player_top.cols='*,251';
				$("#view_2", parent.document).show();
				$("frameimg").src = $("frameimg").src.replace("_open","_close");
			}else{
				//parent.player_top.cols='*,0';
				$("#view_2", parent.document).hide();
				$("frameimg").src = $("frameimg").src.replace("_close","_open");
			}
		}
	}

	function fncSetRightTab2(){
		if (movieform.iSize.value == "iSizeStd"){
			if (right_tab == "Y"){
				parent.window.resizeTo(gWidth-cutWidth+20, gHeight-cutHeight);		//#001 20120409 S.HAN UPD
				//parent.player_top.cols='*,251';
				$("#view_2", parent.document).show();
				$("frameimg").src = $("frameimg").src.replace("_open","_close");
			}else{
				parent.window.resizeTo(gWidth - cutWidth - 231, gHeight-cutHeight);		//#001 20120409 S.HAN UPD
				//parent.player_top.cols='*,0';
				$("#view_2", parent.document).hide();
				alert($("frameimg").src);
				$("frameimg").src = $("frameimg").src.replace("_close","_open");
			}
		}else if (movieform.iSize.value == "iSizeBig"){
			if (right_tab == "Y"){
				//parent.player_top.cols='*,251';
				$("#view_2", parent.document).show();
				$("frameimg").src = $("frameimg").src.replace("_open","_close");
			}else{
				//parent.player_top.cols='*,0';
				$("#view_2", parent.document).hide();
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
	If (UseWidth <= 1200 And WIDE_KBN = "Y") Or INSTR(1,"/101/12143/12907/13092/13417/13109/13762/13889/13890/",DNG_KBN)>0 Then				' 1280�ػ󵵹̸��̰� ���̵� �����̶�� ������ �� �Ⱥ���
		response.write "$('#view_2', parent.document).hide();"
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
	function correctWindowSize(){						// ���� ������ ���� 20120405 CHOIJH
		var ClientH = document.body.clientHeight
		if (gWidth == "1190" && gHeight == "650")									// ������̰� ���������� ���� ��� (1280 * 720)
		{
			if (ClientH > 640 && cutHeight == 0) {									// ���̰� �ּ�â ������ �ƴ϶�� âũ�⸦ �� �� �۰� XP�� ���
				cutHeight = cutHeight + 22;
			}else if (ClientH > 630 && cutHeight != 0)								// ���̰� �ּ�â ������ �ƴ϶�� âũ�⸦ �� �� �۰� (XP�̿�)
			{
				cutWidth = -80;				// �ش� �ػ󵵿����� ���� ����
			}
		}else{
			if (gWidth == "1583" && ClientH > 680 && cutHeight == 0) {				// �� 1�� ��� ���̵� ���̰� �ּ�â ������ �ƴ϶�� âũ�⸦ �� �� �۰� XP�� ���
				cutHeight = cutHeight + 22;
			}else if (gWidth == "1240" && ClientH > 680 && cutHeight == 0) {		// �� 2�� ��� ���̵� ���̰� �ּ�â ������ �ƴ϶�� âũ�⸦ �� �� �۰� XP�� ���
				cutHeight = cutHeight + 22;
			}else if (gWidth == "883" && ClientH > 680 && cutHeight == 0) {			// �� 3�� ��� ���̵� ���̰� �ּ�â ������ �ƴ϶�� âũ�⸦ �� �� �۰� XP�� ���
				cutHeight = cutHeight + 22;
			}else if (gWidth == "1065" && ClientH > 690 && cutHeight == 0) {		// �Ϲݿ��󿡼� ���̰� �ּ�â ������ �ƴ϶�� âũ�⸦ �� �� �۰� XP�� ���
				cutHeight = cutHeight + 22;
			}else if (gWidth == "1583" && ClientH > 670 && cutHeight != 0) {		// �� 1�� ��� ���̵� ���̰� �ּ�â ������ �ƴ϶�� âũ�⸦ �� �� �۰� XP��
				cutHeight = cutHeight + 37;
			}else if (gWidth == "1240" && ClientH > 670 && cutHeight != 0) {		// �� 2�� ��� ���̵� ���̰� �ּ�â ������ �ƴ϶�� âũ�⸦ �� �� �۰� XP��
				cutHeight = cutHeight + 37;
			}else if (gWidth == "883" && ClientH > 670 && cutHeight != 0) {			// �� 3�� ��� ���̵� ���̰� �ּ�â ������ �ƴ϶�� âũ�⸦ �� �� �۰� XP��
				cutHeight = cutHeight + 37;
			}else if (gWidth == "1065" && ClientH > 680 && cutHeight != 0) {		// �Ϲݿ��󿡼� ���̰� �ּ�â ������ �ƴ϶�� âũ�⸦ �� �� �۰� XP��
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

		var agent = navigator.userAgent.toLowerCase();
		if (agent.indexOf("msie") != -1 ) {
			$("#view_ontop").show();
		} 

		<% If KBN = "S" Then %>
			if (right_tab == "N")			//���� ������ �Ǿ��� �����ŭ ���̱�	20120503 CHOIJH
			{
				parent.resizeTo(gWidth-cutWidth-251, gHeight-cutHeight);
			}else{
				parent.resizeTo(gWidth-cutWidth, gHeight-cutHeight);
			}
			document.getElementById('child').height = gHeight-cutHeight - 280;
			$("#player_main", parent.document).attr("height", gHeight-cutHeight-100);
			$("#player_right", parent.document).attr("height", gHeight-cutHeight-100);
		<% Else %>
//				alert(1);
//				parent.resizeTo(gWidth-cutWidth-251, gHeight-cutHeight);
//				alert(2);
				document.getElementById('child').height = gHeight-cutHeight - 190;
				$("#player_main", parent.document).attr("height", gHeight-cutHeight);
				$("#player_right", parent.document).attr("height", gHeight-cutHeight);
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
<%' SPL_STM = 30 : SPL_ETM = 35 %>
			<% If SPL_STM > 0 Then %>
				//alert(<%= SPL_STM %>);
				controller.play(<%= SPL_STM %>);
				//alert(<%= SPL_ETM %>);
			<% End If %>

			// video playback event binding
			controller
				.on('progress', function(percent, position, duration) {
					var progr = document.getElementById('progr');
					//progr.innerText = percent + '% (' + position + ' / ' + duration + ')';
					<% If SPL_ETM > 0 Then %>
					if (position >= <%= SPL_ETM %>){
						controller.pause();
						parent.window.close();
						//controller.play(<%= SPL_STM %>);
						//controller.play(20);
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
// IE9 �˾�â�� ���� ������ ���׼���
</script>
</head>
<body style="height:100%; background-color:#2d2d2f;" topmargin="0" leftmargin="0">
<div class="player_l_wrap">
<table id="player_mainframe" width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
    <!-- �ΰ� ���� S -->
    <tr>
        <td style="height:40px; padding-left:22px;"><!--<img src="http://img.megagong.net/player/2015_newskin/etc/logo.png">--></td>
    </tr>
     <!-- //�ΰ� ���� E -->
    <tr>
        <td style="vertical-align:top; text-align:center; padding:0 22px 0 22px; position:relative;">
            <table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td colspan="3" style="height:3px; background-color:#000;"></td>
                </tr>
                <tr>
                    <td style="width:3px; background-color:#000;"></td>
                    <td style="text-align:center;background-color:#000;">
                        <!-- ���� ���� -->
                        <table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td style="background-color:#000;">
			<iframe id="child" width="100%" height="100%" src="http://v.kr.kollus.com/s?jwt=<%=tmp%>.<%=result%>&custom_key=<%=customKey%>&a&s=<%= SPL_STM %>" frameborder="0" allowFullScreen="true" webkitallowfullscreen="true" mozallowfullscreen="true" ></iframe>
                            </td>
                        </tr>
                        </table>
                        <!-- ���� ���� �� -->
                    </td>
                    <td style="width:3px; background-color:#000;"></td>
                </tr>
                <tr>
                    <td colspan="3" style="height:3px; background-color:#000;"></td>
                </tr> 
            </table>
            <div style="position:absolute; right:11px; top:50%; margin-top:-15px"><%If (UseWidth > 1200 Or WIDE_KBN <> "Y") And (KBN = "S") Then%><a href="javascript:fncRightTab();"><img id="frameimg" src="http://img.megagong.net/player/2015_newskin/arrow_close.gif" alt="�ݱ�" /></a><%End if%></div>  
        </td>    
    </tr>
    <tr>
        <td style="padding:0px 22px 0 22px ;">
            <!-- �ϴܿ��� S -->
             <div style="padding:11px 0 11px 0;">
             <table width="100%" border="0" cellpadding="0" cellspacing="0" >
                 <colgroup><col width="*" /><col width="60px" /></colgroup>
                 <tr>
                     <td style="text-align:left;"><img src="http://img.megagong.net/player/2015_newskin/etc/info_keboard_1.png" alt="����Ű�ȳ�"/></td>
                     <td style="text-align:rght; vertical-align:top;">
                         <div id="view_ontop" style="display:none; width:60px; height:21px; background:url(http://img.megagong.net/player/2015_newskin/bt_back01.gif) no-repeat left top;">
                             <!-- �׻��� üũ -->
                            <p style="padding:2px 0 0 5px;"><input type="checkbox" name="alwaysontop" onClick="fncAlwaysOnTop();" id="alwaysontop"></p>
                         </div>
                     </td>
                 </tr>
             </table>
             </div>
  <%if DNG_KBN	<>  "101" THEN	' %>
             <!-- ���¸�/����/�����Ը� ���� -->
             <table width="100%" border="0" cellspacing="0" cellpadding="0" class="player_l_lecinfo">
                 <colgroup>
                     <col width="60px" ><col width="*" ><col width="60px" ><col width="20%" >
                 </colgroup>
                <tr>
                     <td><img src="http://img.megagong.net/player/2015_newskin/tx01.gif" alt="���¸�"></td>
                     <td><span class="lectitle"><%=DB_TO_STR(cm_chr_nm)%></span><span id="progr"></span></td>
                     <td><img src="http://img.megagong.net/player/2015_newskin/tx03.gif"></td>
                     <td><%If tm_tec_nm <> "" Then%><%=tm_tec_nm%> ������<%End if%></td>
                 </tr>
                 <tr class="last">
                     <td><img src="http://img.megagong.net/player/2015_newskin/tx02.gif"></td>
                     <td colspan="3"><%If lm_lec_nm <> "" Then%><%=lm_lec_seq%> : <%=DB_TO_STR(lm_lec_nm)%><%End if%></td>
                 </tr>           
             </table>
             <!-- //���¸�/����/�����Ը� ���� -->
             <!-- �ϴܿ��� E -->
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