<%
Response.AddHeader "Cache-Control", "no-cache"
Response.AddHeader "Expires", "0"
Response.AddHeader "Pragma", "no-cache"
Response.ContentType = "text/html; charset=euc-kr"
%>
<!-- #include virtual = "/common/inc/RSexec.asp"-->
<!-- #include virtual = "/common/inc/VarDef.asp"-->
<!-- #include virtual = "/common/inc/FunDef.asp"-->
<%
    camp_cd = fncRequest("camp_cd")
    dom_cd = fncRequest("dom_cd")
    sch_cd = fncRequest("sch_cd")
    sch_yr = fncRequest("sch_yr")
    sch_mn = fncRequest("sch_mn")
    grade_cd = fncRequest("grade_cd")
    lev_cd = fncRequest("lev_cd")
    dcc = "0"

    tno = fncRequest("tno")
    cls = fncRequest("cls")
    scd = fncRequest("scd")
    tcd = fncRequest("tcd")

    '파라미터
    chr_para = "camp_cd=" & camp_cd & "&dom_cd=" & dom_cd & "&sch_cd=" & sch_cd & "&sch_yr=" & sch_yr & "&sch_mn=" & sch_mn & "&grade_cd=" & grade_cd & "&lev_cd=" & lev_cd
    ' 년/월/캠퍼스/영역에 해당하는 TAB 추출 (공쉘일 경우,7/9급으로 나뉘어져 있음)
    strSql = ""
    strSql = strSql & "SELECT	TOP 1 TM_TITLE, TM_CONTENT "
    strSql = strSql & "FROM     MS_TAB_MAS WITH(NOLOCK) "
    strSql = strSql & "WHERE	TM_OPEN_YN = 'Y' "
    strSql = strSql & "AND      TM_CAMP_CD = '" & camp_cd & "' "
    strSql = strSql & "AND		TM_DOM_CD = '" & dom_cd & "' "
    strSql = strSql & "AND		TM_YEAR = '" & sch_yr & "' "
    strSql = strSql & "AND		TM_MONTH = '" & sch_mn & "' "
    strSql = strSql & "AND		TM_GRADE_CD = '" & grade_cd & "' "   '9/7급
    strSql = strSql & "AND		TM_LEV_CD = '" & lev_cd & "' "   '과정
    strSql = strSql & "ORDER BY TM_TAB_CD DESC  "

    '  if cook_id = "w55ps" OR cook_id = "jyleems" or cook_id = "bingo" then
    '          response.write strsql
    '  end if
	Set Rs = DBexec(strSql, "study")
	If Not Rs.Eof Then
        tab_nm  = Rs(0)
        tab_con = Rs(1)
	End if
    RSClose(Rs)

    'if tab_nm = "" Then
    '    Response.Redirect "/"
    '    Response.End
    'End if
  
    ar_tab = Split(tab_nm, "@")
    if isArray(ar_tab) Then

        chrcnt = 0
         
         MAX_DIS_COUNT = 5    '다다익선 할인상품은 최대 5개 까지
        'TARGET_DIS_COUNT = 0 '다다익선 강좌

        strSql = ""

        '이유진T가 이윤주T 보다 앞에 나올 수 있도록 수정 (공무원 학원 요청)
        'strSql = strSql & "SELECT RNO = (ROW_NUMBER() OVER(ORDER BY ISNULL(SM_VIEW_ORD, 99), CASE WHEN TOS_TEC_CD ='lyj4718' THEN '0' ELSE TOS_TEC_ORD END, CMO_CHR_CD DESC)), CMO_CHR_CD, CMO_CHR_NM, CMO_SUB_CD, SM_SUB_NM, CMO_TEC_CD, CMO_TEC_NM, CMO_CLS_TYPE, CMO_BOOK_TITLE, "
        strSql = strSql & "SELECT	RNO = (ROW_NUMBER() OVER(ORDER BY ISNULL(SM_VIEW_ORD, 99), ISNULL(TOSO_TEC_ORD,99), CMO_CHR_CD DESC)), CMO_CHR_CD, CMO_CHR_NM, CMO_SUB_CD, SM_SUB_NM, CMO_TEC_CD, CMO_TEC_NM, CMO_CLS_TYPE, CMO_BOOK_TITLE, "
        strSql = strSql & "         CMO_CHR_TIME, CMO_CHR_TERM, CMO_CHR_STEP, CMO_CHR_STEP_MTH, CMO_CHR_CNTS, CMO_CHR_EALRT, CMO_PRE_PRC = ( CASE WHEN CMO_PRE_PRC = 0 THEN CMO_CHR_PRC ELSE CMO_PRE_PRC END ), CMO_CHR_PRC, FNM = ISNULL(CMOF_FILE_NM, ''), "
        strSql = strSql & "         STDCNT = (SELECT COUNT(1) FROM MD_APP_DTL WITH (NOLOCK) WHERE AD_CHR_CD = CMO_CHR_CD AND AD_STD_STAT <> '4' ), CMO_ATND_CAPA, "
		strSql = strSql & "         TABFLG = ( "
		strSql = strSql & "         	SELECT	TOP 1 STUFF((SELECT ',' + CAST(Y.SG_TAB_FLG AS VARCHAR) FROM MS_SCH_CHR X WITH(NOLOCK) JOIN MS_SCH_GROUP Y WITH(NOLOCK) ON Y.SG_GROUP_CD = X.SC_GROUP_CD WHERE X.SC_CHR_CD = A.SC_CHR_CD FOR XML PATH('')),1,1,'') "
		strSql = strSql & "         	FROM	MS_SCH_CHR A WITH(NOLOCK) "
		strSql = strSql & "         	JOIN	MS_SCH_GROUP B WITH(NOLOCK) ON B.SG_GROUP_CD = A.SC_GROUP_CD "
		strSql = strSql & "         	WHERE	A.SC_CHR_CD = CMO_CHR_CD "
		strSql = strSql & "         	GROUP BY A.SC_CHR_CD "
		strSql = strSql & "         ), "
		strSql = strSql & "         CHRFLG = CMO_LEV_CODE, "
        strSql = strSql & "         CMO_BETTER_FLG, "
        strSql = strSql & "         CMO_GRADE_CD "
        strSql = strSql & "FROM     MS_CHR_MAS_OFFLINE WITH(NOLOCK) "
        strSql = strSql & "JOIN     MS_SUB_MAS WITH(NOLOCK) ON SM_SUB_CD = CMO_SUB_CD AND SM_DOM_CD = CMO_DOM_CD "
        strSql = strSql & "LEFT     JOIN MS_CHR_MAS_OFFLINE_FILE WITH(NOLOCK) ON CMO_CHR_CD = CMOF_CHR_CD  "
        strSql = strSql & "LEFT     JOIN MS_TECORD_SUB_OFFLINE WITH(NOLOCK) ON TOSO_DOM_CD = CMO_DOM_CD AND TOSO_SUB_CD = CMO_SUB_CD AND TOSO_TEC_CD = CMO_TEC_CD AND TOSO_OFFLINE_ID = 'gongssel' "
        strSql = strSql & "WHERE	CMO_DEL_FLG = 'N' "
        strSql = strSql & "AND		CMO_CHR_EALRT <> '4' "
        strSql = strSql & "AND		CMO_ATND_CAPA > 0 "     '인원수 0 이상일때
        strSql = strSql & "AND		EXISTS ( "
        strSql = strSql & "     SELECT	1 "
        strSql = strSql & "     FROM	MS_SCH_GROUP WITH(NOLOCK) "
        strSql = strSql & "     JOIN	MS_SCH_CHR WITH (NOLOCK) ON SC_GROUP_CD = SG_GROUP_CD "
        strSql = strSql & "     WHERE	CMO_CHR_CD = SC_CHR_CD   "
        strSql = strSql & "     AND		SG_SCH_CD = " & sch_cd & " "
        strSql = strSql & "     AND		SC_DOM_CD = '" & dom_cd & "' "
        if tno <> "" Then strSql = strSql & " AND   SG_TAB_FLG = '" & tno & "' "    'tab 순서
        strSql = strSql & ") "
        if cls <> "" Then strSql = strSql & " AND   CMO_LEV_CODE = '" & cls & "' "  '상품 구분(기초입문/기본이론...)
        if scd <> "" Then strSql = strSql & " AND   CMO_SUB_CD = '" & scd & "' "    '과목
        if tcd <> "" Then strSql = strSql & " AND   CMO_TEC_CD = '" & tcd & "' "    '선생님

        'response.write strSql
	    Set Rs = DBexec(strSql, "study")
	    If Not Rs.Eof Then
            ar_off = Rs.GetRows()
            chrcnt = Rs.RecordCount
	    End if

	    Set Rs = DBexec(strSql, "study")

        RSClose(Rs)
        ' if cook_id = "w55ps" OR cook_id = "jyleems" or cook_id = "bingo" then
        '     response.write strsql
        ' end if
        strSql = ""
        strSql = strSql & "SELECT	LCODE = CMO_LEV_CODE, LNAME = CC_KOR_NM "
        strSql = strSql & "FROM     MS_CHR_MAS_OFFLINE WITH(NOLOCK) "
        strSql = strSql & "JOIN     MS_SUB_MAS WITH(NOLOCK) ON SM_SUB_CD = CMO_SUB_CD AND SM_DOM_CD = CMO_DOM_CD "
        strSql = strSql & "JOIN     MS_COMM_CD WITH(NOLOCK) ON CC_COMM_KIND = '06' AND CC_COMM_CD = CMO_LEV_CODE "
        strSql = strSql & "WHERE	CMO_DEL_FLG = 'N' "
        strSql = strSql & "AND		CMO_CHR_EALRT <> '4' "
        strSql = strSql & "AND		EXISTS ( "
        strSql = strSql & "     SELECT	1 "
        strSql = strSql & "     FROM	MS_SCH_GROUP WITH(NOLOCK) "
        strSql = strSql & "     JOIN	MS_SCH_CHR WITH (NOLOCK) ON SC_GROUP_CD = SG_GROUP_CD "
        strSql = strSql & "     WHERE	CMO_CHR_CD = SC_CHR_CD   "
        strSql = strSql & "     AND		SG_SCH_CD = " & sch_cd & " "
        strSql = strSql & "     AND		SC_DOM_CD = '" & dom_cd & "' "
        if tno <> "" Then strSql = strSql & " AND   SG_TAB_FLG = '" & tno & "' "
        strSql = strSql & ") "
        strSql = strSql & "GROUP BY CMO_LEV_CODE, CC_KOR_NM "
        strSql = strSql & "ORDER BY CMO_LEV_CODE "
	    Set Rs = DBexec(strSql, "study")
	    If Not Rs.Eof Then
            ar_cls = Rs.GetRows()
	    End if
        RSClose(Rs)


        strSql = ""
        strSql = strSql & "SELECT	CMO_SUB_CD, SM_SUB_NM "
        strSql = strSql & "FROM     MS_CHR_MAS_OFFLINE WITH(NOLOCK) "
        strSql = strSql & "JOIN     MS_SUB_MAS WITH(NOLOCK) ON SM_SUB_CD = CMO_SUB_CD AND SM_DOM_CD = CMO_DOM_CD "
        strSql = strSql & "WHERE	CMO_DEL_FLG = 'N' "
        strSql = strSql & "AND		CMO_CHR_EALRT <> '4' "
        strSql = strSql & "AND		EXISTS ( "
        strSql = strSql & "     SELECT	1 "
        strSql = strSql & "     FROM	MS_SCH_GROUP WITH(NOLOCK) "
        strSql = strSql & "     JOIN	MS_SCH_CHR WITH (NOLOCK) ON SC_GROUP_CD = SG_GROUP_CD "
        strSql = strSql & "     WHERE	CMO_CHR_CD = SC_CHR_CD   "
        strSql = strSql & "     AND		SG_SCH_CD = " & sch_cd & " "
        strSql = strSql & "     AND		SC_DOM_CD = '" & dom_cd & "' "
        if tno <> "" Then strSql = strSql & " AND   SG_TAB_FLG = '" & tno & "' "
        strSql = strSql & ") "
        strSql = strSql & "GROUP BY CMO_SUB_CD, SM_SUB_NM, SM_VIEW_ORD "
        strSql = strSql & "ORDER BY SM_VIEW_ORD "
	    Set Rs = DBexec(strSql, "study")
	    If Not Rs.Eof Then
            ar_sub = Rs.GetRows()
	    End if
        RSClose(Rs)



        strSql = ""
        strSql = strSql & "SELECT	CMO_TEC_CD, CMO_TEC_NM "
        strSql = strSql & "FROM     MS_CHR_MAS_OFFLINE WITH(NOLOCK) "
        strSql = strSql & "JOIN     MS_SUB_MAS WITH(NOLOCK) ON SM_SUB_CD = CMO_SUB_CD AND SM_DOM_CD = CMO_DOM_CD "
        strSql = strSql & "WHERE	CMO_DEL_FLG = 'N' "
        strSql = strSql & "AND		CMO_CHR_EALRT <> '4' "
        strSql = strSql & "AND		EXISTS ( "
        strSql = strSql & "     SELECT	1 "
        strSql = strSql & "     FROM	MS_SCH_GROUP WITH(NOLOCK) "
        strSql = strSql & "     JOIN	MS_SCH_CHR WITH (NOLOCK) ON SC_GROUP_CD = SG_GROUP_CD "
        strSql = strSql & "     WHERE	CMO_CHR_CD = SC_CHR_CD   "
        strSql = strSql & "     AND		SG_SCH_CD = " & sch_cd & " "
        strSql = strSql & "     AND		SC_DOM_CD = '" & dom_cd & "' "
        if tno <> "" Then strSql = strSql & " AND   SG_TAB_FLG = '" & tno & "' "
        strSql = strSql & ") "
        strSql = strSql & "GROUP BY CMO_TEC_CD, CMO_TEC_NM "
        strSql = strSql & "ORDER BY CMO_TEC_NM "
	    Set Rs = DBexec(strSql, "study")
	    If Not Rs.Eof Then
            ar_tec = Rs.GetRows()
	    End if
        RSClose(Rs)


%>
<div>
    <div id="chrtab" class="lectureTab">
	    <ul>
		    <li tno="" <% if tno = "" Then %>class="on"<% End if %>><a href="#_blank">전체</a></li>
            <%
                For i = 0 To Ubound(ar_tab)
                    ar_dtl = Split(ar_tab(i), "|")
                    if isArray(ar_dtl) Then
                        tab_nm = ar_dtl(0)
                        tab_no = ar_dtl(1)
            %>
			            <li tno="<%=tab_no %>" <% if CStr(tab_no) = CStr(tno) Then %>class="on"<% End if %>><a href="#_blank"><%=tab_nm %></a></li>
            <%
                    End if
                Next
            %>
	    </ul>
    </div>

    <div class="lectureInfo">
	    <p>총 <%=FormatNumber(chrcnt, 0) %> 강좌</p>
	    <ul>
		    <li>
            <%
                if isArray(ar_cls) Then
            %>
			    <select id="chrcls" onchange="fncChrSub('<%=chr_para %>')">
                    <option value="" <% if cls = "" Then %>selected<% End if %>>과정 전체</option>
                    <%
                        For i = 0 To Ubound(ar_cls, 2)
                            cls_cd = ar_cls(0, i)
                            cls_nm = ar_cls(1, i)
                    %>
				            <option value="<%=cls_cd %>" <% if CStr(cls) = CStr(cls_cd) Then %>selected<% End if %>><%=cls_nm %></option>
				    <%
                        Next
                    %>
			    </select>
            <%
                End if
            %>
		    </li>
		    <li>
            <%
                if isArray(ar_sub) Then
            %>
			    <select id="chrsub" onchange="fncChrSub('<%=chr_para %>')">
                    <option value="" <% if scd = "" Then %>selected<% End if %>>과목 전체</option>
                    <%
                        For i = 0 To Ubound(ar_sub, 2)
                            sub_cd = ar_sub(0, i)
                            sub_nm = ar_sub(1, i)
                    %>
				            <option value="<%=sub_cd %>" <% if CStr(scd) = CStr(sub_cd) Then %>selected<% End if %>><%=sub_nm %></option>
				    <%
                        Next
                    %>
			    </select>
            <%
                End if
            %>
		    </li>
		    <li>
            <%
                if isArray(ar_tec) Then
            %>
			    <select id="chrtec" onchange="fncChrSub('<%=chr_para %>')">
                    <option value="" <% if tcd = "" Then %>selected<% End if %>>선생님 전체</option>
                    <%
                        For i = 0 To Ubound(ar_tec, 2)
                            tec_cd = ar_tec(0, i)
                            tec_nm = ar_tec(1, i)
                    %>
				            <option value="<%=tec_cd %>" <% if CStr(tcd) = CStr(tec_cd) Then %>selected<% End if %>><%=tec_nm %></option>
				    <%
                        Next
                    %>
			    </select>
            <%
                End if
            %>
		    </li>
	    </ul>
    </div>

    <%
        if isArray(ar_off) Then
    %>
        <div class="tableType_2">
	        <table>
                <colgroup>
                    <col width="12%">
                    <col width="12%">
                    <col width="*">
                    <col width="12%">
                </colgroup>
		        <thead>
			        <tr>
				        <th>과목</th>
				        <th>선생님</th>
				        <th>강좌</th>
				        <th>수업안내</th>
			        </tr>
		        </thead>
		        <tbody>
                <%
                    For i = 0 To Ubound(ar_off, 2)
                        rno = ar_off(0, i)
                        ccd = ar_off(1, i)
                        cnm = ar_off(2, i)
                        scd = ar_off(3, i)
                        snm = ar_off(4, i)
                        tcd = ar_off(5, i)
                        tnm = ar_off(6, i)
                        cls = ar_off(7, i)
                        bnm = ar_off(8, i)
                        tim = ar_off(9, i)
                        trm = ar_off(10, i)
                        wnt = ar_off(11, i)
                        wek = ar_off(12, i)
                        con = ar_off(13, i)
                        ing = ar_off(14, i)
                        prc = ar_off(15, i)
                        orc = ar_off(16, i)
                        fnm = ar_off(17, i)
                        snt = ar_off(18, i)
                        tnt = ar_off(19, i)
                        tlg = ar_off(20, i)
                        clg = ar_off(21, i)
                        btf = ar_off(22, i) 'better flg (다다익선 강좌 체크 여부)
                        gcd = ar_off(23, i) '9/7급 구분

                        clm = ""
                        Select Case cls
                            Case "1" : clm = "시작반"
                            Case "2" : clm = "연속반"
                        End Select

                        rnt = tnt - snt
                        evtimg = ""           ' 다다익선 이벤트 딱지

                        IF btf = "Y" then     ' 다다익선
                            dcc = dcc & "," & ccd
                            evtimg = "Y"
                        END IF

                        if tnt > 0 Then
                            rto = FormatNumber(snt / tnt, 1)
                        Else
                            rto = 0
                        End if
                %>
			            <tr>
				            <td><strong><%=snm %></strong></td>
				            <td><strong><%=tnm %></strong></td>
				            <td class="info">
					            <span class="icon">
                                    <% if ing = "1" Then %>
                                        <img src="<%=img_main%>/c/gongssel/schedule/common/table_icon_2.png" alt="마감임박" />
                                    <% Elseif ing = "2" Then %>
                                        <img src="<%=img_main%>/c/gongssel/schedule/common/table_icon_3.png" alt="마감" />
                                    <% Elseif ing = "3" Then %>
                                        <img src="<%=img_main%>/c/gongssel/schedule/common/table_icon_4.png" alt="접수대기" />
                                    <% Elseif ing = "4" Then %>
                                        <img src="<%=img_main%>/c/gongssel/schedule/common/table_icon_5.png" alt="폐강" />
                                    <% Else %>
                                        <% if rto >= 1.0 Then %>
                                            <img src="<%=img_main%>/c/gongssel/schedule/common/table_icon_3.png" alt="마감" />
                                        <% Elseif rto >= 0.7 And rto < 1.0 Then %>
                                            <% if tnt >= 140 And rnt < 27 Then %>
                                                <img src="<%=img_main%>/c/gongssel/schedule/common/table_icon_2.png" alt="마감임박" />
                                            <% Elseif (tnt >= 80 And tnt <= 139) And rnt < 18 Then %>
                                                <img src="<%=img_main%>/c/gongssel/schedule/common/table_icon_2.png" alt="마감임박" />
                                            <% Elseif (tnt <= 79) And rnt < 9 Then %>
                                                <img src="<%=img_main%>/c/gongssel/schedule/common/table_icon_2.png" alt="마감임박" />
                                            <% Else %>
                                                <img src="<%=img_main%>/c/gongssel/schedule/common/table_icon_1.png" alt="접수증" />
                                            <% End if %>
                                        <% Else %>
                                            <img src="<%=img_main%>/c/gongssel/schedule/common/table_icon_1.png" alt="접수증" />
                                        <% End if %>
                                    <% End if %>

                                    <% '임시로 작업 - 확장 시 변경해야함 %>
						            <% if gcd = "97" Then %>
                                        <img src="<%=img_main%>/c/gongssel/schedule/common/table_icon_6.png" alt="9/7급" />
                                    <% End if %>
						            <% if gcd = "9"  Then %>
                                        <img src="<%=img_main%>/c/gongssel/schedule/common/table_icon_7.png" alt="9급" />
                                    <% End if %>
						            <% if gcd = "7"  Then %>
                                        <img src="<%=img_main%>/c/gongssel/schedule/common/table_icon_8.png" alt="7급" />
                                    <% End if %>
                                    <% '임시로 작업 - 확장 시 변경해야함 %>

                                    <% if clg = "401" Then %>
						                <img src="<%=img_main%>/c/gongssel/schedule/common/table_icon_9.png" alt="기초입문" />
                                    <% End if %>
                                    <% if clg = "402" Then %>
						                <img src="<%=img_main%>/c/gongssel/schedule/common/table_icon_10.png" alt="기본이론" />
                                    <% End if %>
                                    <% if clg = "403" Then %>
						                <img src="<%=img_main%>/c/gongssel/schedule/common/table_icon_11.png" alt="심화이론" />
                                    <% End if %>
                                    <% if clg = "406" Then %>
						                <img src="<%=img_main%>/c/gongssel/schedule/common/table_icon_12.png" alt="기출문풀" />
                                    <% End if %>
                                    <% if clg = "407" Then %>
						                <img src="<%=img_main%>/c/gongssel/schedule/common/table_icon_13.png" alt="파이널모고" />
                                    <% End if %>
                                    <% if clg = "408" Then %>
						                <img src="<%=img_main%>/c/gongssel/schedule/common/table_icon_14.png" alt="전략특강" />
                                    <% End if %>
                                    <% if clg = "409" Then %>
						                <img src="<%=img_main%>/c/gongssel/schedule/common/table_icon_15.png" alt="해설겅의" />
                                    <% End if %>
                                    <% if clg = "410" Then %>
						                <img src="<%=img_main%>/c/gongssel/schedule/common/table_icon_16.png" alt="기본심화" />
                                    <% End if %>
					            </span><br />
					            <strong class="tit"><%=cnm %></strong> <%if evtimg = "Y" then%><img src="<%=img_main%>/c/gongssel/schedule/common/event.png" alt="다다익선 이벤트" /><% end if %><br />
					            <span><%=trm %><span class="bar">|</span><%=tim %><span class="bar">|</span><%=wnt %><span class="bar">|</span><%=wek %></span><br />
					            <% if bnm <> "" Then %><span><strong>교재명</strong> : <%=bnm %></span><% End if %>
				            </td>
				            <td><a href="#" class="btnLectureView">강의특징</a></td>
			            </tr>
			            <tr class="lectureDetail">
				            <td colspan="4">
					            <%=Replace(con, Chr(13), "<br />") %>
				            </td>
			            </tr>
			            <tr class="priceBox">
				            <td colspan="4" class="price">
                                <% if ing = "2" Or ing = "3" Or rto >= 1.0 Then %>
					                <input type="checkbox" disabled="disabled" /><label><%=FormatNumber(prc, 0) %>원</label>
                                    <a href="#" style="cursor:none;" ><img src="<%=img_main%>/c/sobang/academy/btn_buy.gif" alt="결제하기" /></a>
                                <% Else %>
                                    <input type="checkbox" name="chr" id="chr_<%=ccd %>" value="<%=ccd %>" /><label for="chr_<%=ccd %>"><%=FormatNumber(prc, 0) %>원</label>
                                    <a href="javascript:;" onclick="fncGoPayOff('P', <%=ccd %>);" class="btnBuy"><img src="<%=img_main%>/c/sobang/academy/btn_buy.gif" alt="결제하기" /></a>
                                <% End if %>
				            </td>
			            </tr>
                <%
                    Next
                %>
		        </tbody>
	        </table>
        </div>
        <div class="btnTotal"><a href="javascript:;" onclick="fncGoPayOff('P', 0);"><img src="<%=img_main%>/c/sobang/academy/btn_total.gif" alt="선택항목 결제하기" /></a></div>
    <%
        Else
    %>
        <p class="lectureNone">조건에 해당하는 강좌가 없습니다.</p>
    <%
        End if
    %>
</div>
<script type="text/javascript">
    $('.tableType_2 .btnLectureView').on('click', function (e) {
        e.preventDefault();
        $(this).toggleClass('on');
        $(this).closest('tr').next('.lectureDetail').toggleClass('on');
    });
</script>
<%
    End if
%>
<script type="text/javascript">
    function fncChrTab(n, p) {
        var v = $("#chrtab li").eq(n).attr("tno");
        var p = p + "&tno=" + v;
        fncChrList(p);
    }

    function fncChrSub(p) {
        var c = $("#chrcls").val();
        var s = $("#chrsub").val();
        var t = $("#chrtec").val();
        var p = p + "&tno=<%=tno %>&cls=" + c + "&scd=" + s + "&tcd=" + t;
        fncChrList(p);
    }
</script>
<script type="text/javascript">
    $(document).ready(function () {
        $("#chrtab li").click(function () {
            fncChrTab($(this).index("#chrtab li"), "<%=chr_para %>");
        });
    });
</script>

<script>
    function fncGoPayOff(acd, ccd) {    //강좌 선택 후 결제

        var dcc = "<%=dcc%>";  //다다익선 할인 강좌

        var c = "";
        var amsg = "";
        var alnk = "";
        if (acd == "C") {
            amsg = "장바구니에 담을 강좌를 선택해주세요.";
            alnk = "/mypage/payment/my_cart_pre_off.asp";
        } else {
            amsg = "결제하실 강좌를 선택해주세요.";
            //alnk = "/mypage/payment/my_direct_pay_pre_off.asp";
            alnk = "/mypage/pay/my_direct_pay_off.asp";
        }

        if (ccd > 0) { //강좌 선택을 하나만 한 경우
            $("#chr_" + ccd).prop("checked", true);
            c = ccd;
        } else {        //선택항목 결제하기를 클릭한 경우
            var arrChrChk = new Array();
            var chrChkList = '';

            var max_dis_count = <%=MAX_DIS_COUNT%>;
            var tot_dis_count = 0 ;


            $("input:checkbox[name='chr']:checked").each(function () {
                var t = $(this);

                if (t.prop("checked") == true) {
                    if (c != "") { c += "," }
                    c += t.val();

                    var tmp = $(this).val();
                    arrChrChk.push(tmp);

                    if(dcc.indexOf(","+tmp) > 0) {
                        tot_dis_count++;
                    }
                }
            });

            if (c == "") {
                alert(amsg);
                return;
            }

            chrChkList = arrChrChk.join(',');
            if(tot_dis_count > max_dis_count) {
                alert("할인강좌는 "+max_dis_count+"개 까지 결제 가능합니다.");
                return false;
            }

        }

        var cartform = $("#cartform");
        if (cartform.length > 0) {
            cartform.empty();
        }
        cartform = $("<form/>").attr({ id: "cartform", method: 'post', action: alnk });
        $(document.body).append(cartform);

        $("<input></input>").attr({ type: "hidden", name: "chrChk", value: c }).appendTo(cartform);

        if (acd == "C") {
            if (confirm("장바구니로 이동 하시겠습니까?")) {
                cartform.submit();
            } else {
                $.post(alnk, {
                    "chrChk": c
                })
                    .done(function () {
                        $("input:checkbox[name='chr']:checked").prop("checked", false);
                    });
            }
        } else {
            cartform.submit();
        }
    }
</script>
