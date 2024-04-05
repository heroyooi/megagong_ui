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
<!-- 수강정보 -->
<%
    if APP_SEQ = "" Then Response.End

    strSql = ""
    strSql = strSql & "SELECT   CCD = CM_CHR_CD, CNM = CM_CHR_NM, DCD = CM_DOM_CD, SCD = SC_SUB_CD, SNM = SM_SUB_NM, TCD = CM_TEC_CD, TNM = TM_TEC_NM, SDT = CONVERT(CHAR(10), AD_STD_SDT, 20), EDT = CONVERT(CHAR(10), AD_STD_EDT, 20), LNT = (SELECT COUNT(1) FROM MS_LEC_MAS WITH(NOLOCK) WHERE LM_CHR_CD = CM_CHR_CD AND LM_OPEN_YN = 'Y'), SNT = (SELECT COUNT(1) FROM MS_STD_HIS WITH(NOLOCK) JOIN MS_LEC_MAS WITH(NOLOCK) ON LM_LEC_CD = SH_LEC_CD AND LM_OPEN_YN = 'Y' WHERE SH_APP_NO = SA_APP_NO AND LM_CHR_CD = AD_CHR_CD), PYN = ISNULL(CM_FILE_PAID_YN, 'Y'), STP = (CASE SA_PAY_FLG WHEN '51' THEN 'PASS' WHEN '9' THEN 'FREE' ELSE 'DAN' END) "
    strSql = strSql & "FROM     MS_STD_APP WITH(NOLOCK) "
    strSql = strSql & "JOIN     MS_APP_DTL WITH(NOLOCK) ON AD_APP_NO = SA_APP_NO "
    strSql = strSql & "JOIN     MS_CHR_MAS WITH(NOLOCK) ON CM_CHR_CD = AD_CHR_CD "
    strSql = strSql & "JOIN     MS_SUB_CHR WITH(NOLOCK) ON SC_CHR_CD = CM_CHR_CD "
    strSql = strSql & "JOIN     MS_SUB_MAS WITH(NOLOCK) ON SM_SUB_CD = SC_SUB_CD "
    strSql = strSql & "JOIN     MS_TEC_MAS WITH(NOLOCK) ON TM_TEC_CD = CM_TEC_CD "
    strSql = strSql & "WHERE    SA_MEM_ID = '" & uid & "' "
    strSql = strSql & "AND      SA_APP_NO = " & app_no & " "
    strSql = strSql & "AND      AD_STD_STAT = '2' "
    strSql = strSql & "AND      ((GETDATE() BETWEEN CONVERT(CHAR(10), AD_STD_SDT, 20) AND CONVERT(CHAR(10), AD_STD_EDT, 20) + ' 23:59:59') OR (GETDATE() < CM_CHR_SDT)) "
    strSql = strSql & "AND      AD_APP_SEQ = " & app_seq & " "
    strSql = strSql & "AND      AD_CHR_CD = " & chr_cd & " "
	Set Rs = DBexec(strSql, "study")
	if Not Rs.EOF then
        ccd = Rs(0)
        cnm = Rs(1)
        dcd = Rs(2)
        scd = Rs(3)
        snm = Rs(4)
        tcd = Rs(5)
        tnm = Rs(6)
        sdt = Rs(7)
        edt = Rs(8)
        lnt = Rs(9)
        snt = Rs(10)
        pyn = Rs(11)
        stp = Rs(12)
    Else
        Response.End
	end If
	Call DBClose(Rs)

    lec_free = ""

    strSql = ""
    strSql = strSql & "SELECT	ISNULL(SOA_LEC_SEQS, '') "
    strSql = strSql & "FROM     MS_STD_OFF_ADD WITH(NOLOCK) "
    strSql = strSql & "WHERE	SOA_APP_NO = " & app_no & " "
    strSql = strSql & "AND		SOA_CHR_CD = " & chr_cd & " "
    strSql = strSql & "AND		SOA_MEM_ID = '" & cook_id & "' "
	strSql = strSql & "AND		SOA_LEC_SEQS  <> '0' "
	Set Rs = DBexec(strSql, "study")
	If Not Rs.Eof Then
        lec_free = Trim(Rs(0))
	End if
    RSClose(Rs)

    strSql = ""
    strSql = strSql & "SELECT	LCD = LM_LEC_CD, "
    strSql = strSql & "		    SEQ = LM_LEC_SEQ, "
    strSql = strSql & "		    LNM = LM_LEC_NM, "
    strSql = strSql & "		    LTM = LM_LEC_TM, "
    strSql = strSql & "		    FN1 = ISNULL(LM_ATC_FILE1, ''), "
    strSql = strSql & "		    FN2 = ISNULL(LM_ATC_FILE2, ''), "
    strSql = strSql & "		    FH1 = (CASE WHEN ISNULL(LM_ATC_FILE1, '') <> '' THEN (SELECT ISNULL(CAST(CONVERT(CHAR(10), MAX(DS_INS_DT), 20) AS VARCHAR), '') FROM MS_FILEDOWN_HIS WITH(NOLOCK) WHERE DS_MEM_ID = '" & cook_id & "' AND DS_CHR_CD = LM_CHR_CD AND DS_FILE_NM = LM_ATC_FILE1) ELSE '' END), "
    strSql = strSql & "		    FH2 = (CASE WHEN ISNULL(LM_ATC_FILE2, '') <> '' THEN (SELECT ISNULL(CAST(CONVERT(CHAR(10), MAX(DS_INS_DT), 20) AS VARCHAR), '') FROM MS_FILEDOWN_HIS WITH(NOLOCK) WHERE DS_MEM_ID = '" & cook_id & "' AND DS_CHR_CD = LM_CHR_CD AND DS_FILE_NM = LM_ATC_FILE2) ELSE '' END), "
    strSql = strSql & "		    MOV = ISNULL(LM_CONTENT_KEY, ''),  "
    strSql = strSql & "		    LDT = ISNULL(CAST(CONVERT(CHAR(10), LDT, 20) AS VARCHAR), ''),  "
    strSql = strSql & "		    MDT = ISNULL(CONVERT(CHAR(10), LM_MAKE_DT, 20), '') "
    strSql = strSql & "FROM	    MS_LEC_MAS A WITH(NOLOCK)  "
    strSql = strSql & "LEFT	    JOIN ( SELECT LCD = SH_LEC_CD, LDT = MAX(SH_LAST_STD_DT) FROM MS_STD_HIS WITH(NOLOCK) WHERE SH_APP_NO = " & app_no & " AND SH_MEM_ID = '" & cook_id & "' GROUP BY SH_LEC_CD) B ON LCD = LM_LEC_CD "
    strSql = strSql & "WHERE	LM_OPEN_YN IN ('Y') "
    strSql = strSql & "AND		LM_CHR_CD = " & chr_cd & " "
    if lec_free <> "" Then strSql = strSql & "AND		LM_LEC_SEQ IN (" & lec_free & ") "
    strSql = strSql & "ORDER BY A.LM_LEC_SEQ "
	Set Rs = DBexec(strSql, "study")
	If Not Rs.Eof Then
        ar_lec = Rs.GetRows()
	End if
    RSClose(Rs)
%>
<div>
	<div class="my__info">
		<ul>
			<% If strUnitYN <> "Y" Then '단원강좌일경우 해당값 미노출 %>
				<li>
					<span class="my__title">나의진도</span>
					<div class="my__titleBar"><span class="bar" style="width:<%=Cint(snt / lnt * 100) %>%; background-color:#555555;"></span></div>
					<span class="my__title__txt"><strong><%=snt %></strong>/<%=lnt %>강<span style="color:#0c998d;font-weight:bold">(<%=Cint(snt / lnt * 100) %>%)</span></span>
				</li>
			<% End if %>
			<li>
				<span class="my__title">수강종료일</span>
                <%=edt %> <strong style="color:#555">[D-<%=DateDiff("d", Date(), CDate(edt)) %>]</strong>
			</li>
			<!--li>
				<span class="my__title">강의자료</span>
				<a href="">다운로드</a>
			</li-->
		</ul>
	</div>

	<div class="table__top">
		<div class="table__message table__message2">- 강의 수강 중 궁금한 점이 있나요?</div>
        <a href="/teacher/qna/qna.asp?bcode=<%=tcd %>&mcode=5#content" target="_blank" class="btn bt_ask" style="background-color:#555555;">질문하기</a>
	</div>

    <%
        if isArray(ar_lec) Then
    %>
		<table class="table__common">
		<colgroup>
			<col>
		</colgroup>
		<thead>
			<tr>
				<th><span>강의목록</span></th>
			</tr>
		</thead>
		<tbody>
			<%
                For i = 0 To Ubound(ar_lec, 2)
                    lcd = ar_lec(0, i)
                    seq = ar_lec(1, i)
                    lnm = ar_lec(2, i)
                    ltm = ar_lec(3, i)
                    fn1 = ar_lec(4, i)
                    fn2 = ar_lec(5, i)
                    fh1 = ar_lec(6, i)
                    fh2 = ar_lec(7, i)
                    mov = ar_lec(8, i)
                    ldt = ar_lec(9, i)
                    mdt = ar_lec(10, i)
			%>
					<tr id="tr<%=CStr(lcd) %>" <% if CStr(LEC_CD) = CStr(lcd) Then %>class="on"<% End if %>>
						<td class="table__subject" style="padding:7px 5px 5px">
                            <% if mov <> "" Then %>
                                <a href="/Player/kollus/player.asp?APP_NO=<%=APP_NO %>&APP_SEQ=<%=APP_SEQ %>&CHR_CD=<%=CHR_CD %>&LEC_CD=<%=lcd %>&VOD_KBN=<%=VOD_KBN %>&PlayerKbn=<%=PlayerKbn %>&PlayerApp=<%=PlayerApp %>&UseWidth=<%=UseWidth %>&UseHeight=<%=UseHeight %>&PlayerLoc=<%=PlayerLoc %>&userBrowser=<%=userBrowser %>&BrowserVersion=<%=BrowserVersion %>">
                            <% Else %>
                                <a href="javascript:;" onclick="alert('강의 준비중 입니다.\n조금만 기다려주세요^^');">
                            <% End if %>
                                <% if seq > 0 Then %><%=seq %>강<% End if %> <span style="font-weight:bold;"><%=lnm %></span><br />
                                강의시간 : <span class="time_bg"><%=ltm %>분</span> | 최근 수강일 : <span style="letter-spacing: -1px;"><% if ldt <> "" Then %><%=ldt %><% Else %>-<% End if %></span>
                            </a>
						</td>
					</tr>
			<%
				Next
			%>
		</tbody>
		</table>
	<%
		End if
	%>
</div>
