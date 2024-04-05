<%
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
        strSql = strSql & "AND		LMP_LEC_CD = " & LEC_CD & " "
        strSql = strSql & "AND		LMP_CHR_CD = " & CHR_CD & " "
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
    strSql = strSql & "SELECT	CM_CHR_NM, CM_TEC_CD, TM_TEC_NM, LM_LEC_NM "
    strSql = strSql & "FROM     MS_CHR_MAS WITH(NOLOCK) "
    strSql = strSql & "JOIN     MS_LEC_MAS WITH(NOLOCK) ON LM_CHR_CD = CM_CHR_CD "
    strSql = strSql & "JOIN     MS_TEC_MAS WITH(NOLOCK) ON TM_TEC_CD = CM_TEC_CD "
    strSql = strSql & "WHERE    CM_CHR_CD = " & CHR_CD & " "
    strSql = strSql & "AND      LM_LEC_CD = " & LEC_CD & " "
    Set rs = DBExec(strSql,"study")
    If Not rs.EOF Then
        chr_nm  = Trim(Rs(0))
        tec_cd  = Trim(Rs(1))
        tec_nm  = Trim(Rs(2))
        lec_nm  = Trim(Rs(3))
    End If
    Call DBClose(rs)
%>