<%
    intPlayAuth = 0
    if MegaAdmin = "Y" Then
        intPlayAuth = 1
    Else

        If  APP_NO = "" Or APP_SEQ = "" Or LEC_CD = "" Or uid = "" Then	
            Response.Write "<script>try{fncClose();}catch(e){  }</script>"  
            Response.End
        End If


        strSql = ""
        strSql = strSql & "SELECT	COUNT(1) "
        strSql = strSql & "FROM     MS_STD_APP WITH(NOLOCK) "
        strSql = strSql & "JOIN     MS_APP_DTL WITH(NOLOCK) ON AD_APP_NO = SA_APP_NO "
        strSql = strSql & "JOIN     MS_CHR_MAS WITH(NOLOCK) ON CM_CHR_CD = AD_CHR_CD "
        strSql = strSql & "WHERE	AD_STD_STAT = '2' "
        strSql = strSql & "AND		((GETDATE() BETWEEN CONVERT(CHAR(10), AD_STD_SDT, 20) AND CONVERT(CHAR(10), AD_STD_EDT, 20) + ' 23:59:59') OR (GETDATE() < CM_CHR_SDT)) "
        strSql = strSql & "AND		AD_CHR_CD =  " & CHR_CD & " "
        strSql = strSql & "AND		AD_APP_SEQ =  " & APP_SEQ & " "
        strSql = strSql & "AND		SA_APP_NO =  " & APP_NO & " "
        strSql = strSql & "AND		SA_MEM_ID = '" & uid & "' "
        Set rs = DBExec(strSql,"study")
        If Not rs.EOF Then
            intPlayAuth = Rs(0)
        End If
        Call DBClose(rs)

    End if

    if intPlayAuth = 0 Then
        Response.Write "수강중인 강좌가 아닙니다."
        Response.End
    End if

    '강좌정보
    strSql = ""
    strSql = strSql & "SELECT	CM_CHR_NM, CM_TEC_CD, TM_TEC_NM, LM_LEC_NM, LM_CONTENT_KEY "
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

        mckey   = Trim(Rs(4))

    End If
    Call DBClose(rs)

    'strMobileType = fncMobileType()
    if uid <> "" Then
	    IF ucase(uId) <> "ADMIN" THEN
		    '4: 강의수강이력 테이블에 강의 수강 이력을 남김
		    'If strMobileType = "PC" Then
			    ' 강의수강이력 테이블에 강의 수강 이력을 남김
			    strSql = "Exec Msp_Set_Std_His '" & uid & "', " & app_no & " , " & lec_cd 
			    Call DBExec(strSql,"study")
            'Else
            '    strSql = ""
		    '    strSql = strSql & "Exec Msp_Set_Std_Mobile_His '" & uid & "', " & app_no & " , " & lec_cd & "; "
	        '    Call DBExec(strSql,"study")
		    'END IF
	    End If
    End if

    if MegaAdmin = "N" Then
	    strSql="SELECT TOP 1 ISNULL(LS_LAST_TIME,0) FROM MS_LMS_SUM with(nolock) WHERE LS_MEM_ID='" & uid & "' AND LS_APP_NO = " & APP_NO & " AND LS_LEC_CD="& LEC_CD &" ORDER BY LS_IDX DESC"
	    SET RS = DBExec(strSql,"study")
	    IF NOT RS.EOF THEN
		    intStartSec = RS(0)   '수강자료 잇으면 ,
	    ELSE
		    intStartSec = 0       '수강자료 없으면 
	    END IF
	    CALL DBClose(RS)
    End if
%>