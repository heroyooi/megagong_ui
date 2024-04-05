<%
Response.AddHeader "Cache-Control", "no-cache"  
Response.AddHeader "Expires", "0"  
Response.AddHeader "Pragma", "no-cache"

Response.ContentType = "text/xml; charset=euc-kr"
%>
<!-- #include virtual = "/common/inc/VarDef.asp" -->
<!-- #include virtual = "/common/inc/Fundef.asp" -->
<!-- #include virtual = "/common/inc/RSexec.asp" -->
<!-- 플레이어 공통 인클루드 페이지 시작 -->
<!-- #include virtual = "/Player/kollus/common/set/play_func.asp"-->
<!-- #include virtual = "/Player/kollus/common/set/play_para.asp"-->
<!-- 플레이어 공통 인클루드 페이지 종료 -->
<%
	am_no=fncRequestNum("am_no")
	seq=fncRequestNum("seq")
	sub_cod=fncRequest("sub_cod")

    '기본 디비 연결자
	CUR_DB_NM = "exammain"	
	
	'MEGAEXAM_OLD_SUM DB에 있을 경우 연결자 변경
	Sql = "SELECT COUNT(1) FROM ME_EXAM_INFO WITH(NOLOCK) WHERE EI_SEQ=" & seq
	call RSExec(Rs,0,3,Sql,"exam_old")
	if Rs(0)>0 then
        CUR_DB_NM = "exam_old"	    
	end if
	RSClose(Rs)			

	Sql = ""
	if CUR_DB_NM<>"exam_old" then
		Sql = Sql & "INSERT INTO ME_OXNOTE_TBL(OT_SEQ,OT_MEM_ID,OT_SUB_COD,OT_NO,OT_SEL_FLG) "
		Sql = Sql & "SELECT " & seq & ",'" & uid & "','" & sub_cod & "',QM_NO,2 "
		Sql = Sql & "FROM ME_QST_MAS WITH(NOLOCK) "
		Sql = Sql & "WHERE QM_SEQ=" & seq & " AND QM_SUB_COD='" & sub_cod & "' AND QM_NO IN (" & am_no & ") "
		Sql = Sql & "AND EXISTS( "
		Sql = Sql & "	SELECT 1 "
		Sql = Sql & "	FROM ME_MEMEXAM_TYPE WITH(NOLOCK) "
		Sql = Sql & "	WHERE MT_SEQ=QM_SEQ "
		Sql = Sql & "	AND MT_EXAM_TYPE=QM_EXAM_TYPE "
		Sql = Sql & "	AND MT_MEM_ID='" & uid  & "' "
		Sql = Sql & ") "		
		Sql = Sql & "AND NOT EXISTS( "
		Sql = Sql & "	SELECT 1 FROM ME_OXNOTE_TBL WITH(NOLOCK) "
		Sql = Sql & " WHERE OT_MEM_ID='" & uid  & "' AND OT_SEQ=QM_SEQ AND OT_SUB_COD=QM_SUB_COD AND OT_NO=QM_NO) "
	else
		Sql = Sql & "INSERT INTO ME_OXNOTE_TBL(OT_SEQ,OT_MEM_ID,OT_SUB_COD,OT_NO,OT_SEL_FLG,OT_ANS) "
		Sql = Sql & "SELECT QM_SEQ,'" & uid  & "',QM_SUB_COD,QM_NO,'1',QM_ANS "
		Sql = Sql & "FROM ME_QST_MAS WITH(NOLOCK) "
		Sql = Sql & "WHERE QM_SEQ=" & seq & " "
		Sql = Sql & "AND QM_NO IN (" & am_no & ") "
		Sql = Sql & "AND QM_SUB_COD='" & sub_cod & "' "
		Sql = Sql & "AND EXISTS( "
		Sql = Sql & "	SELECT 1 "
		Sql = Sql & "	FROM ME_MEMEXAM_TYPE WITH(NOLOCK) "
		Sql = Sql & "	WHERE MT_SEQ=QM_SEQ "
		Sql = Sql & "	AND MT_EXAM_TYPE=QM_EXAM_TYPE "
		Sql = Sql & "	AND MT_MEM_ID='" & uid  & "' "
		Sql = Sql & ") "
		Sql = Sql & "AND NOT EXISTS( "
		Sql = Sql & "	SELECT 1 FROM ME_OXNOTE_TBL WITH(NOLOCK) "
		Sql = Sql & " WHERE OT_MEM_ID='" & uid  & "' AND OT_SEQ=QM_SEQ AND OT_SUB_COD=QM_SUB_COD AND OT_NO=QM_NO) "		
	end if
	call DBexec(Sql,CUR_DB_NM)       
	call DBclose(DBcon)	  
%>
