<%
	if dng_num = "" Then dng_num = 1

    '기본 디비 연결자
	CUR_DB_NM = "exammain"	
	'MEGAEXAM_OLD_SUM DB에 있을 경우 연결자 변경
	strSql = "SELECT COUNT(1) FROM ME_EXAM_INFO WITH(NOLOCK) WHERE EI_SEQ = " & seq
    Set Rs = DBExec(strSql,"exam_old")
	if Rs(0) > 0 Then
        CUR_DB_NM = "exam_old"	    
	End if
	RSClose(Rs)	


	'생생 동영상 루트 가져오기
	strSql = ""
	strSql = strSql & "SELECT   TOP 1 ISNULL(CONVERT(CHAR(10), EI_EXAM_DT, 20), '') "
	strSql = strSql & "FROM     ME_EXAM_INFO WITH(NOLOCK) WHERE EI_SEQ = " & seq
	Set Rs = DBExec(strSql,CUR_DB_NM)
	if Not Rs.Eof Then
	    exam_dt = Trim(Rs(0))
        exam_dt = Replace(Mid(exam_dt, 3, Len(exam_dt)), "-", "")
	End if
	Call DBClose(RS)

    fnt = 0
	strSql = ""
	strSql = strSql & "SELECT 	EDL_SFILE_NM" & dng_num & ", "
    strSql = strSql & "         EDL_DOM_NM, EDL_TEC_CD, EDL_TEC_NM, EDL_SUB_CD, SNM = (CASE WHEN RIGHT(EDL_DOM_NM,2) = '탐구' THEN EDL_SUB_NM ELSE (CASE WHEN RIGHT(EDL_SUB_NM,1)='1' THEN SUBSTRING(EDL_SUB_NM,1,LEN(EDL_SUB_NM)-1) ELSE EDL_SUB_NM END) END), EDL_RANGE "
	strSql = strSql & "FROM		ME_EXAMDNG_LST WITH(NOLOCK) "
	strSql = strSql & "WHERE	EDL_SEQ = " & seq & " "
	strSql = strSql & "AND		EDL_IDX = " & dng_idx & " "
	strSql = strSql & "AND		EDL_OPEN_YN = 'Y' "
	Set Rs = DBExec(strSql,CUR_DB_NM)
	if Not Rs.Eof Then
		FILE_NM = Trim(Rs(0))
        if inStr(FILE_NM, ".") > 0 Then
            fnm = Replace(FILE_NM, Mid(FILE_NM, inStr(FILE_NM, "."), Len(FILE_NM)), "") & ".MP4"
        Else
            fnm = FILE_NM & ".MP4"
        End if

        DOM_NM = Trim(Rs(1))
        TEC_CD = Trim(Rs(2))
        TEC_NM = Trim(Rs(3))
        SUB_COD = Trim(Rs(4))
        SUB_NM = Trim(Rs(5))
        RANGE  = Trim(Rs(6))
        
	    SELECT CASE left(SUB_COD, 2)
	      CASE "10":DOM_CD = "1"
	      CASE "21","22","20":DOM_CD = "2"
	      CASE "30":DOM_CD = "3" 
	      CASE "41","40":DOM_CD = "4"
	      CASE "42":DOM_CD = "5"
	      CASE "50":DOM_CD = "6"
	    END SELECT  

	End if
	Call RSClose(Rs)
    
    '강사번호 가지고 오기
    'TEC_CD

    '영상컨텐츠 정보
    strSql = ""
    strSql = strSql & "SELECT	CI_MEDIA_KEY, CI_PROFILE_KEY, CI_CONSIZE_W, CI_CONSIZE_H "
    strSql = strSql & "FROM     MS_CONTENT_INFO WITH(NOLOCK) "
    strSql = strSql & "WHERE	CI_DEL_YN = 'N' "
    strSql = strSql & "AND		CI_CATE1 = 'H' "
    strSql = strSql & "AND		CI_CATE2 = 'O' "
    '강사번호
    strSql = strSql & "AND		CI_CON_CD = " & dng_idx & " "
    strSql = strSql & "AND		CI_SUB_CD = '" & exam_dt & "' "
    if seq <= 85 And FILE_NM <> "" Then
        strSql = strSql & "AND		SUBSTRING(CI_REST_NM, 1, CHARINDEX('.', CI_REST_NM) - 1) = '" & Replace(fnm, ".MP4", "") & "' "
    End if
    Set Rs = DBExec(strSql,"study")
    If Not Rs.Eof Then
        mckey   = Trim(Rs(0))
        mcpf    = Trim(Rs(1))
        con_w   = Trim(Rs(2))
        con_h   = Trim(Rs(3))
    End If
    Call DBClose(Rs)
%>