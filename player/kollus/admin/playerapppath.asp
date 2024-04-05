<%
        '1:강좌명/단원명 취득, 2:단원리스트 취득
    strSQL = "Exec Msp_Get_Lec_Mas_04 " & CHR_CD &"," & LEC_CD & ",0,'ADMIN'"
    
    SET RS = DBexec(strSQL,"study")
    IF NOT RS.EOF THEN
	    CHR_NM = REPLACE(TRIM(RS(0)),"&","/")	'강좌명
        CHR_NM = REPLACE(TRIM(RS(0)),"'","`")	'강좌명
	    LEC_NM = REPLACE(TRIM(RS(1)),"&","")	'단원명
        LEC_NM = REPLACE(TRIM(RS(1)),"'","`")	'단원명
        HighPath = RS(2)	'쌩쌩 동영상PATH
        NormalPath = RS(3)	'일반 동영상PATH
	    DRM_FLG = RS(5)	'DRM 구분
	    TEC_CD  = TRIM(RS(6))	'강사코드
	    DOM_CD  = TRIM(RS(7))	'강사코드
    Else
        CALL DBClose(RS)
        response.end
    END IF

    if DNG_KBN = "10" then
        PATH = NormalPath	'일반 동영상PATH
    else
        PATH = HighPath	'쌩쌩 동영상PATH
    end if

    DBPath = PATH
    DNGPATH = PATH
%>