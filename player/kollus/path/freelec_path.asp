<%
    If  APP_NO = "" Or LEC_CD = "" Or uid = "" Then	
        Response.Write "<script>try{fncClose();}catch(e){  }</script>"  
        Response.End
    End If

    '회원 강의 수강 자격 검사
    strSql = ""
    strSql = strSql & "SELECT   LA_APP_NO "
    strSql = strSql & "FROM     MS_LEC_STD WITH(NOLOCK) "
    strSql = strSql & "JOIN     MS_LEC_APP  WITH(NOLOCK) ON LS_APP_NO=LA_APP_NO "
    strSql = strSql & "WHERE    LS_STD_STAT = '2' AND LS_MEM_ID = '"& uId &"' AND LS_APP_NO = '"& APP_NO &"' AND LS_CHR_CD = '"& chr_cd &"' AND LA_UNT_CD = '"& LEC_CD &"' "
    Set RS = DBExec(strSQL,"study")
    IF RS.EOF THEN
        Response.Write "<script>try{fncClose();}catch(e){  }</script>"  
        Response.End
    END IF
    Call DBClose(RS)

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
	
    ' 강의수강이력 테이블에 강의 수강 이력을 남김
    strMobileType = fncMobileType()

	strSQL = "" 
    strSql = strSql & " UPDATE MS_LEC_APP "
	If strMobileType = "PC" Then 
	    strSql = strSql & " SET   LA_STD_DT = getdate (), "		
	Else 
		strSql = strSql & " SET   LA_MBL_STD_DT = getdate(), "		'모바일 수강이력 업데이트 추가 20151103 CHOIJH
	End If 
    strSQL = strSQL & " LA_STD_CNT = LA_STD_CNT + 1 "		
	strSQL = strSQL & " WHERE LA_APP_NO = " & APP_NO 
    strSql = strSql & " AND   LA_UNT_CD = " & LEC_CD 
    Call DBExec(strSQL,"study")
    Call DBClose(DBcon)
%>