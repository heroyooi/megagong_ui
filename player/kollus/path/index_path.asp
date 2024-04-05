<%
Select CAse DNG_KBN
    Case "13","23" :

        strSql = ""
        strSql = strSql & " SELECT  TOP 1 FDI_DNG_NO, DATEDIFF(S,'1900-01-01',CAST(FDI_STM AS DATETIME)), DATEDIFF(S,'1900-01-01',CAST(FDI_ETM AS DATETIME)) "
        strSql = strSql & " FROM    MS_FREEDNG_IX WITH(NOLOCK) "
        strSql = strSql & " WHERE   FDI_IDX = " & DNG_IDX
        SET RS = DBExec(strSql, "study")
        IF NOT RS.EOF THEN
            DNG_NO      = RS(0)
            SPL_STM     = Rs(1)
			SPL_ETM     = Rs(2)
        ELSE
            RESPONSE.END
        END IF
        Call DBClose(RS)

	    strSql = ""
	    strSql = strSql & "SELECT   TOP 1 "
        strSql = strSql & "         CI_MEDIA_KEY, "
        strSql = strSql & "         CI_TEC_NUM, "
        strSql = strSql & "         CI_REST_NM, "
        strSql = strSql & "         CI_CONSIZE_W, "
        strSql = strSql & "         CI_CONSIZE_H, "
	    strSql = strSql & "         DT_TITLE, "
        strSql = strSql & "         DT_CONTENT "
	    strSql = strSql & "FROM     MS_FREEDNG_MAS WITH(NOLOCK) "
        strSql = strSql & "JOIN     MS_CONTENT_INFO WITH(NOLOCK) ON CI_CATE1 = 'E' AND CI_CON_CD = DT_DNG_NO "
	    strSql = strSql & "WHERE    DT_DNG_NO = " & DNG_NO
	    strSql = strSql & "AND      DT_USE_FLG ='Y' "
        strSql = strSql & "ORDER BY CI_IDX DESC "
	    SET RS = DBexec(strSql,"study")
	    If Not RS.EOF Then
            dbMcKey     = Trim(Rs(0))
            TecNum      = Trim(Rs(1))
            FileNm      = Trim(Rs(2))
            Con_W       = Trim(Rs(3))
            Con_H       = Trim(Rs(4))
            Title       = Trim(Rs(5))
            Content     = Trim(Rs(6))
	    End If
	    Call DBClose(RS)

    Case Else :

        '강좌코드 처리 되는 코드  
        Select Case DNG_KBN
            Case "10", "20" :
                strSql = ""
                strSql = strSql & " SELECT  TOP 1 , LDI_CHR_CD, LDI_LEC_CD, DATEDIFF(MS,'1900-01-01',CAST(LDI_STM AS DATETIME)), DATEDIFF(MS,'1900-01-01',CAST(LDI_ETM AS DATETIME)) "
                strSql = strSql & " FROM    MS_LECDNG_IX WITH(NOLOCK) "
                strSql = strSql & " WHERE   LDI_IDX = " & DNG_IDX
                SET RS = DBExec(strSql, "study")
                IF NOT RS.EOF THEN
                    CHR_CD = trim(Rs(0))
                    LEC_CD = trim(Rs(1))
                    SPL_STM = trim(Rs(2))
			        SPL_ETM = trim(Rs(3))
                ELSE
                    RESPONSE.END
                END IF
                Call DBClose(RS)
            
            Case "79", "89" :
                '강좌정보
                strSql = ""
                strSql = strSql & " SELECT	CM_CHR_NM, CM_TEC_CD, TM_TEC_NM, LP_STT_SEC, LP_END_SEC "
	            strSql = strSql & " FROM     MS_LEC_PART WITH(NOLOCK) "
	            strSql = strSql & " JOIN     MS_LEC_MAS WITH(NOLOCK) ON LM_LEC_CD = LP_LEC_CD "
                strSql = strSql & " JOIN     MS_CHR_MAS WITH(NOLOCK) ON CM_CHR_CD = LM_CHR_CD "
                strSql = strSql & " JOIN     MS_TEC_MAS WITH(NOLOCK) ON TM_TEC_CD = CM_TEC_CD "
                strSql = strSql & " WHERE    CM_CHR_CD = " & CHR_CD & " "
                Set rs = DBExec(strSql,"study")
                If Not rs.EOF Then
                    chr_nm  = Trim(Rs(0))
                    tec_cd  = Trim(Rs(1))
                    tec_nm  = Trim(Rs(2))
                    SPL_STM = Trim(Rs(3))
                    SPL_ETM = Trim(Rs(4))
                End If
                Call DBClose(rs)
            Case "99" :
		        ''맛보기 영상 재생 수 일자별 카운트 S : 차재혁(2014-12-23)
		        strSql = ""
		        strSql = strSql & "IF NOT EXISTS (SELECT 1 FROM MT_TECMAIN_DNG_CNT WITH(NOLOCK) WHERE TDC_IDX = '"& DNG_IDX &"' AND TDC_DTE = '"& Date() & "') "
		        strSql = strSql & " BEGIN "
		        strSql = strSql & "     INSERT INTO MT_TECMAIN_DNG_CNT "
		        strSql = strSql & "     SELECT '"& DNG_IDX & "', '"& Date() &"', 1; "
		        strSql = strSql & " END "
		        strSql = strSql & "ELSE "
		        strSql = strSql & " BEGIN "
		        strSql = strSql & "     UPDATE  MT_TECMAIN_DNG_CNT "
		        strSql = strSql & "     SET     TDC_CNT = TDC_CNT + 1 "
		        strSql = strSql & "     WHERE   TDC_DTE = '"& Date() &"' AND TDC_IDX = '"& DNG_IDX &"'; "
		        strSql = strSql & " END "
		        Call DBExec(strSql,"tran"): Call DBClose(DBCon)

		        strSql = "UPDATE MS_TECMAIN_DNG_DTL "
		        strSql = strSql & "SET TDD_TOT_CNT = TDD_TOT_CNT + 1 "
		        strSql = strSql & "WHERE TDD_IDX = "& DNG_IDX
		        Call DBExec(strSql,"study"): Call DBClose(DBCon)
		        ''맛보기 영상 재생 수 일자별 카운트 E : 차재혁(2014-12-23)

                strSql = ""
                strSql = strSql & " SELECT  TDD_CHR_CD, TDD_LEC_CD, TDD_LEC_STM, TDD_LEC_ETM "
                strSql = strSql & " FROM    MS_TECMAIN_DNG_DTL WITH(NOLOCK) "
                strSql = strSql & " WHERE   TDD_IDX = " & DNG_IDX


                SET RS = DBExec(strSql, "study")
                IF NOT RS.EOF THEN
                    CHR_CD = trim(Rs(0))
                    LEC_CD = trim(Rs(1))

                    if trim(Rs(2)) > "0" Then SPL_STM = trim(Rs(2))
                    if trim(Rs(3)) > "0" Then SPL_ETM = trim(Rs(3))
                ELSE
                    RESPONSE.END
                END IF
                Call DBClose(RS)
        End Select

        '영상컨텐츠 정보
        strSql = ""
        strSql = strSql & "SELECT	TOP 1 CI_MEDIA_KEY, CI_PROFILE_KEY, CI_CONSIZE_W, CI_CONSIZE_H "
        strSql = strSql & "FROM     MS_CONTENT_INFO WITH(NOLOCK) "
        strSql = strSql & "WHERE	CI_DEL_YN = 'N' "
        strSql = strSql & "AND		CI_CATE1 = 'A' "
        strSql = strSql & "AND		CI_CON_CD = " & LEC_CD & " "
        strSql = strSql & "AND		CI_SUB_CD = " & CHR_CD & " "
        strSql = strSql & "ORDER BY CI_IDX DESC "
        Set rs = DBExec(strSql,"study")
        If Not rs.EOF Then
            mckey   = Trim(Rs(0))
            mcpf    = Trim(Rs(1))
            con_w   = Trim(Rs(2))
            con_h   = Trim(Rs(3))
        End If
        Call DBClose(rs)


        if mckey = "" Then
            '편집강좌 여부 확인
            strSql = ""
            strSql = strSql & "SELECT	TOP 1 CI_MEDIA_KEY, CI_PROFILE_KEY, CI_CONSIZE_W, CI_CONSIZE_H "
            strSql = strSql & "FROM     MS_CONTENT_INFO WITH(NOLOCK) "
            strSql = strSql & "JOIN     MS_LEC_MAS_PATH WITH(NOLOCK) ON CI_CON_CD = LMP_ORD_LEC_CD AND CI_SUB_CD = LMP_ORD_CHR_CD "
            strSql = strSql & "WHERE	CI_DEL_YN = 'N' "
            strSql = strSql & "AND		CI_CATE1 = 'A' "
            strSql = strSql & "AND		LMP_LEC_CD = " & lec_cd & " "
            strSql = strSql & "AND		LMP_CHR_CD = " & chr_cd & " "
            strSql = strSql & "ORDER BY CI_IDX DESC "
            Set rs = DBExec(strSql,"study")
            If Not rs.EOF Then
                mckey   = Trim(Rs(0))
                mcpf    = Trim(Rs(1))
                con_w   = Trim(Rs(2))
                con_h   = Trim(Rs(3))
            End If
            Call DBClose(rs)
        End if

	
        '강좌정보
        strSql = ""
        strSql = strSql & "SELECT	CM_CHR_NM, LM_LEC_NM, CM_TEC_CD, TM_TEC_NM, TM_NUMBER, ISNULL(TM_INTRO, '') "
        strSql = strSql & "FROM     MS_LEC_MAS WITH(NOLOCK) "
        strSql = strSql & "JOIN     MS_CHR_MAS WITH(NOLOCK) ON CM_CHR_CD = LM_LEC_CD "
        strSql = strSql & "JOIN     MS_TEC_MAS WITH(NOLOCK) ON TM_TEC_CD = CM_TEC_CD "
        strSql = strSql & "WHERE    CM_CHR_CD = " & CHR_CD & " "
        Set rs = DBExec(strSql,"study")
        If Not rs.EOF Then
            chr_nm  = Trim(Rs(0))
            lec_nm  = Trim(Rs(1))
            tec_cd  = Trim(Rs(2))
            tec_nm  = Trim(Rs(3))
            tec_num = Trim(Rs(4))
            tec_intro = Trim(Rs(5))
        End If
        Call DBClose(rs)

        if tec_intro <> "" Then
            strSql = ""
            strSql = strSql & "SELECT	TOP 1 CI_MEDIA_KEY "
            strSql = strSql & "FROM     MS_CONTENT_INFO WITH(NOLOCK) "
            strSql = strSql & "WHERE	CI_DEL_YN = 'N' "
            strSql = strSql & "AND		CI_CATE1 = 'E' "
            strSql = strSql & "AND		CI_CATE2 = 'I' "
            strSql = strSql & "AND		CI_SUB_CD = " & tec_num & " "
            strSql = strSql & "ORDER BY CI_IDX DESC "
            Set rs = DBExec(strSql,"study")
            If Not rs.EOF Then
                irkey   = Trim(Rs(0))
            End If
            Call DBClose(rs)
        End if

    End Select
%>