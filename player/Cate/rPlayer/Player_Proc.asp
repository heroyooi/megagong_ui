<%
Response.AddHeader "Cache-Control", "no-cache"
Response.AddHeader "Expires", "0"
Response.AddHeader "Pragma", "no-cache"
Response.ContentType = "text/html; charset=euc-kr"
%>
<% '공통 인클루드 페이지 시작 %>
<!-- #include virtual = "/common/inc/RSexec.asp" -->
<!-- #include virtual = "/common/inc/VarDef.asp"-->
<!-- #include virtual = "/common/inc/FunDef.asp"-->
<% '공통 인클루드 페이지 종료 %>
<%
    '=======================================================================
	'변수 선언
	'=======================================================================
	Dim LH_APP_NO, LH_LEC_CD, lh_type
		
	'=======================================================================
	'변수 전달받은 값
	'=======================================================================
	lh_type = getParamTxt("type", "", 1)
	LH_APP_NO = getParamTxt("app_no", "", 1)
	LH_LEC_CD = getParamTxt("lec_cd", "", 1)
	LH_CHR_CD = getParamTxt("chr_cd", "", 1)
	
	If lh_type = "I" Then 
		ssql = " INSERT INTO MS_LEC_HIS_RTIME (LH_MEM_ID,LH_APP_NO,LH_LEC_CD,LH_CHR_CD,LH_REGDATE) VALUES ('" & cook_id & "'," & LH_APP_NO & "," & LH_LEC_CD & "," & LH_CHR_CD & ",GETDATE()) "
		call rsexec(rs,0,0,ssql, "study")
	ElseIf lh_type = "D" Then 
		ssql = ssql & " DECLARE @LH_LEC_SEQ INT "
		ssql = ssql & " SET @LH_LEC_SEQ = 0 "
		ssql = ssql & " SELECT TOP 1 @LH_LEC_SEQ = LH_LEC_SEQ FROM MS_LEC_HIS_RTIME WITH(NOLOCK) WHERE LH_APP_NO = " & LH_APP_NO & " AND LH_LEC_CD = " & LH_LEC_CD & " ORDER BY LH_REGDATE DESC "
		ssql = ssql & " DELETE FROM MS_LEC_HIS_RTIME WHERE LH_LEC_SEQ = @LH_LEC_SEQ "
		call rsexec(rs,0,0,ssql, "study")
	End If 

	
	ssql = " DECLARE @LEC_CNT int, @TOT_CNT INT "
	ssql = ssql & " SELECT @TOT_CNT = COUNT(*) FROM MS_LEC_MAS WITH(NOLOCK) WHERE LM_CHR_CD=" & LH_CHR_CD & " AND LM_OPEN_YN = 'Y' "
	ssql = ssql & " SELECT @LEC_CNT = COUNT(*) FROM (SELECT lh_lec_cd FROM MS_LEC_HIS_RTIME WITH(NOLOCK) WHERE lh_mem_id = '" & cook_id & "' AND lh_chr_cd = " & LH_CHR_CD & " GROUP BY lh_lec_cd) AS j "
	ssql = ssql & " SELECT @LEC_CNT AS LEC_CNT, @TOT_CNT AS TOT_CNT "
	SET RS = DBExec(ssql, "study")
	IF NOT RS.EOF THEN
		LEC_CNT = RS(0)
		TOT_CNT = RS(1)
	End If
	Call DBClose(RS)

	ssql = " IF EXISTS (SELECT TOP 1 1 FROM MS_LEC_HIS_SUM_RTIME WHERE LHS_MEM_ID = '" & cook_id & "' AND LHS_CHR_CD = " & LH_CHR_CD & ") BEGIN "
	ssql = ssql & " 	UPDATE MS_LEC_HIS_SUM_RTIME "
	ssql = ssql & " 	SET LHS_LEC_CNT = " & LEC_CNT & ", LHS_TOT_CNT = " & TOT_CNT & ", LHS_EDIT_DT = GETDATE() "
	ssql = ssql & "     WHERE LHS_MEM_ID = '" & cook_id & "' AND LHS_CHR_CD = " & LH_CHR_CD & " "
	ssql = ssql & " END "
	ssql = ssql & " ELSE BEGIN "
	ssql = ssql & " 	INSERT INTO MS_LEC_HIS_SUM_RTIME (LHS_MEM_ID, LHS_APP_NO, LHS_LEC_CD, LHS_CHR_CD, LHS_LEC_CNT, LHS_TOT_CNT, LHS_EDIT_DT, LHS_EVT_CHK) "
	ssql = ssql & " 	VALUES ('" & cook_id & "'," & LH_APP_NO & "," & LH_LEC_CD & "," & LH_CHR_CD & "," & LEC_CNT & "," & TOT_CNT & ",GETDATE(),'N') "
	ssql = ssql & " END "
	call rsexec(rs,0,0,ssql, "study")

	Response.write "ok"
	Response.End

%>