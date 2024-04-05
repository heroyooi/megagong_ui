<!-- #include virtual = "/common/inc/VarDef.asp" -->
<!-- #include virtual = "/common/inc/Fundef.asp" -->
<!-- #include virtual = "/common/inc/RSexec.asp" -->
<%
Response.AddHeader "Cache-Control", "no-cache"
Response.AddHeader "Expires", "0"
Response.AddHeader "Pragma", "no-cache"
Response.ContentType = "text/html; charset=euc-kr"
%>
<!-- 플레이어 공통 인클루드 페이지 시작 -->
<!-- #include virtual = "/Player/kollus/common/set/play_func.asp"-->
<!-- #include virtual = "/Player/kollus/common/set/play_para.asp"-->
<!-- 플레이어 공통 인클루드 페이지 종료 -->
<%
    '기본 PARAM은 공통 파일
	idx = DNG_IDX
	dom_nm = Unescape(fncRequest("dom_nm"))
	sub_nm = Unescape(fncRequest("sub_nm"))
	range = Unescape(fncRequest("range"))

    '기본 디비 연결자
	CUR_DB_NM = "exammain"	
	
	'MEGAEXAM_OLD_SUM DB에 있을 경우 연결자 변경
	Sql = "SELECT COUNT(1) FROM ME_EXAM_INFO WITH(NOLOCK) WHERE EI_SEQ=" & seq
	call RSExec(Rs,0,3,Sql,"exam_old")
	if Rs(0)>0 then
        CUR_DB_NM = "exam_old"	    
	end if
	RSClose(Rs)		
	
	'등록된 영역 추출
	Sql = "SELECT  "
	Sql = Sql & "	EDL_DOM_NM	"
	Sql = Sql & "FROM ( "
	Sql = Sql & "	SELECT  "
	Sql = Sql & "	EDL_DOM_NM, "
	Sql = Sql & "	CASE WHEN EDL_DOM_NM IN ('언어영역','국어') THEN 1 "
	Sql = Sql & "	     WHEN EDL_DOM_NM IN ('수리영역','수학') THEN 2 "
	Sql = Sql & "	     WHEN EDL_DOM_NM IN ('외국어','영어')   THEN 3 "
	Sql = Sql & "	     WHEN EDL_DOM_NM='사회탐구' THEN 4 "
	Sql = Sql & "	     WHEN EDL_DOM_NM='과학탐구' THEN 5 "
	Sql = Sql & "	     ELSE 6 END SM_DIS_SEQ "
	Sql = Sql & "	FROM ME_EXAMDNG_LST WITH(NOLOCK) JOIN ME_SUB_MAS WITH(NOLOCK) "
	Sql = Sql & "	ON EDL_SUB_CD=SM_SUB_COD "
	Sql = Sql & "	WHERE EDL_SEQ = " & seq & " "
	Sql = Sql & "	AND EDL_OPEN_YN = 'Y' "
	Sql = Sql & "	AND (EDL_FILE_NM1<>'' OR EDL_SFILE_NM1<>'') "
	Sql = Sql & "	GROUP BY EDL_DOM_NM "
	Sql = Sql & ") AA "
	Sql = Sql & "ORDER BY SM_DIS_SEQ"
	Call RSExec(RS,0,3,Sql,CUR_DB_NM)
	if not Rs.eof then
		arr_dom=Rs.GetRows()
	end if
	Call RSClose(RS)
	
	'구분 추출
	Sql = "SELECT "
	Sql = Sql & "DISTINCT REPLACE(EDL_SUB_NM,'<br>',' ') "
	Sql = Sql & "FROM ME_EXAMDNG_LST WITH(NOLOCK) "
	Sql = Sql & "WHERE EDL_SEQ = " & seq & " " 
	Sql = Sql & "AND EDL_OPEN_YN = 'Y' "
	Sql = Sql & "AND (EDL_FILE_NM1<>'' OR EDL_SFILE_NM1<>'') "
	Sql = Sql & "AND EDL_DOM_NM LIKE '" & replace(dom_nm,"영역","") & "%'"
	call RSExec(Rs,0,3,Sql,CUR_DB_NM)
	if not Rs.eof then
		arr_kbn=Rs.GetRows()
	end if
	RSClose(Rs)
	
	Sql = "SELECT EDL_RANGE "
	Sql = Sql & "	FROM ( "
	Sql = Sql & "		SELECT  "
	Sql = Sql & "		REPLACE(EDL_RANGE,'<br>',' ') AS EDL_RANGE,ISNULL(MIN(EDL_LINE_NO),0) EDL_LINE_NO "
	Sql = Sql & "		FROM ME_EXAMDNG_LST WITH(NOLOCK)  "
	Sql = Sql & "		WHERE EDL_SEQ = " & seq & "  "
	Sql = Sql & "		AND EDL_OPEN_YN = 'Y' "
	Sql = Sql & "		AND (EDL_FILE_NM1<>'' OR EDL_SFILE_NM1<>'') "
	Sql = Sql & "		AND EDL_DOM_NM LIKE '" & replace(dom_nm,"영역","") & "%' "
	Sql = Sql & "   AND EDL_SUB_NM='" & sub_nm & "' "
	Sql = Sql & "		GROUP BY EDL_RANGE "
	Sql = Sql & "	) AA "
	Sql = Sql & "	ORDER BY EDL_LINE_NO "
	call RSExec(Rs,0,3,Sql,CUR_DB_NM)
	if not Rs.eof then
		arr_range=Rs.GetRows()
	end if
	RSClose(Rs)	
	
	Sql = "SELECT 	"
	Sql = Sql & "EDL_TEC_CD,EDL_TEC_NM,EDL_IDX	"
	Sql = Sql & "FROM ME_EXAMDNG_LST WITH(NOLOCK) 	"
	Sql = Sql & "WHERE EDL_SEQ = " & seq & " 	"
	Sql = Sql & "AND EDL_OPEN_YN = 'Y'	"
	Sql = Sql & "AND (EDL_FILE_NM1<>'' OR EDL_SFILE_NM1<>'')	"
	Sql = Sql & "AND EDL_DOM_NM LIKE '" & replace(dom_nm,"영역","") & "%'	"
	Sql = Sql & "AND EDL_SUB_NM='" & sub_nm & "'	"
	Sql = Sql & "AND EDL_RANGE='" & range & "'	"
	Sql = Sql & "GROUP BY EDL_TEC_NM,EDL_TEC_CD,EDL_IDX	"
	Sql = Sql & "ORDER BY 2	"
	call RSExec(Rs,0,3,Sql,CUR_DB_NM)
	if not Rs.eof then
		arr_tec=Rs.GetRows()
	end if
	RSClose(Rs)
%>
<div class="select__commentary">
	<select name="" id="" onchange="fncIpsiTop(this.value, '', '')" >
		<option value="">영역선택</option>
		<%
			if isarray(arr_dom) then
				for fCnt=0 to ubound(arr_dom,2) 
		%>
		<option value="<%=arr_dom(0,fCnt)%>" <%if trim(arr_dom(0,fCnt)) = dom_nm then%>selected<%end if%>><%=arr_dom(0,fCnt)%></option>					
		<%		
				next
			end if
		%>	
	</select>
	<select name="" id="" onchange="fncIpsiTop('<%=DOM_NM %>', this.value, '')" >
		<option value="">구분선택</option>
		<%
			if isarray(arr_kbn) then
				for fCnt=0 to ubound(arr_kbn,2) 
		%>
		<option value="<%=arr_kbn(0,fCnt)%>" <%if trim(arr_kbn(0,fCnt))=replace(sub_nm,"<br>"," ") then%>selected<%end if%>><%=arr_kbn(0,fCnt)%></option>					
		<%		
				next
			end if
		%>	
	</select>
	<select name="" id="" onchange="fncIpsiTop('<%=DOM_NM %>', '<%=SUB_NM %>', this.value)" >
		<option value="">범위선택</option>
		<%
			if isarray(arr_range) then
				for fCnt=0 to ubound(arr_range,2) 
		%>
		<option value="<%=arr_range(0,fCnt)%>" <%if trim(arr_range(0,fCnt))=range then%>selected<%end if%>><%=arr_range(0,fCnt)%></option>					
		<%		
				next
			end if
		%>
	</select>
	<select name="" id="" onchange="fncIpsiPlay(this.value)" >
		<option value="">선생님</option>
		<%
			if isarray(arr_tec) then
				for fCnt=0 to ubound(arr_tec,2) 
		%>
		<option value="<%=arr_tec(2,fCnt)%>" <%if trim(arr_tec(2,fCnt))=trim(idx) then%>selected<%end if%>><%=arr_tec(1,fCnt)%></option>					
		<%		
				next
			end if
		%>
	</select>
</div>