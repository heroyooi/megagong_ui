<%
    Select Case VOD_KBN

        Case "40", "55" : '¸Àº¸±â, OT

            if LEC_CD <> "" Then
                intLecCnt = 0

	            strSql = ""
                strSql = strSql &"SELECT    COUNT(1) "
	            strSql = strSql &"FROM      MD_SPL_LIST WITH(NOLOCK) "
	            strSql = strSql &"WHERE     SL_LEC_CD = " & LEC_CD & " "
                strSql = strSql &"AND       SL_DEL_FLG = '0' "
	            Set Rs = DBExec(strSql, "study")
	            If Not Rs.Eof Then
		            intLecCnt = Trim(Rs(0))
	            End If
	            Call DBClose(Rs)

                if intLecCnt = 0 Then
                    Response.End
                End if

	            strSql = ""
                strSql = strSql & "SELECT   CM_CHR_NM, CM_TEC_CD, TM_TEC_NM, LM_LEC_NM, LM_CONTENT_KEY, ISNULL(TM_INTRO_KEY, '') " 
                strSql = strSql & "FROM     MS_CHR_MAS WITH(NOLOCK) "
                strSql = strSql & "JOIN     MS_LEC_MAS WITH(NOLOCK) ON LM_CHR_CD = CM_CHR_CD "
                strSql = strSql & "JOIN     MS_TEC_MAS WITH(NOLOCK) ON TM_TEC_CD = CM_TEC_CD "
                strSql = strSql & "WHERE    CM_OPEN_FLG IN ('Y') "
                strSql = strSql & "AND      LM_OPEN_YN IN ('I', 'Y') "
                strSql = strSql & "AND      CM_CHR_CD = " & CHR_CD & " "
                strSql = strSql & "AND      LM_LEC_CD = " & LEC_CD & " "
	            Set Rs = DBExec(strSql, "study")
	            If Not Rs.Eof Then
                    chr_nm  = Trim(Rs(0))
                    tec_cd  = Trim(Rs(1))
                    tec_nm  = Trim(Rs(2))
                    lec_nm  = Trim(Rs(3))

                    mckey   = Trim(Rs(4))
                    irkey   = Trim(Rs(5))
	            End If
	            Call DBClose(Rs)

            Else

	            strSql = ""
                strSql = strSql & "SELECT   CM_CHR_NM, CM_TEC_CD, TM_TEC_NM, CM_ORI_SPL, ISNULL(TM_INTRO_KEY, '') " 
                strSql = strSql & "FROM     MS_CHR_MAS WITH(NOLOCK) "
                strSql = strSql & "JOIN     MS_TEC_MAS WITH(NOLOCK) ON TM_TEC_CD = CM_TEC_CD "
                strSql = strSql & "WHERE    CM_OPEN_FLG IN ('Y') "
                strSql = strSql & "AND      CM_CHR_CD = " & CHR_CD & " "
	            Set Rs = DBExec(strSql, "study")
	            If Not Rs.Eof Then
                    chr_nm  = Trim(Rs(0))
                    tec_cd  = Trim(Rs(1))
                    tec_nm  = Trim(Rs(2))

                    mckey   = Trim(Rs(3))
                    irkey   = Trim(Rs(4))
	            End If
	            Call DBClose(Rs)

            End if

    End Select
%>