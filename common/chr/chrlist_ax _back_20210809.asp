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
    area_no = fncRequest("area_no")
    if area_no = "" Then area_no = "1"

    chr_tab = fncRequest("chr_tab")
    chr_step = fncRequest("chr_step") '학습 단계
    chr_tec = fncRequest("chr_tec")
    dom_cd  = fncRequest("dom_cd")
    sel_type= fncRequest("sel_type")
    home_cd = fncRequest("home_cd")
    chr_exam = fncRequest("chr_exam")
    chr_new = fncRequest("chr_new")
    chr_type  = fncRequest("chr_type")
    grp_cd  = fncRequest("grp_cd")
    sub_cd  = fncRequest("sub_cd")
    tec_cd  = fncRequest("tec_cd")
    chr_cd  = fncRequest("chr_cd")
    grp_ord = fncRequest("grp_ord")
    chr_open = re_sqlfilter(fncRequest("chr_open"))
    grd_fg = fncRequest("grd_fg")
    step_cd = fncRequest("step_cd")
    event_yn = fncRequest("event_yn") '무료특강여부
    free_yn = fncRequest("free_yn") '무료강좌여부
    'scd_self= fncRequest("scd_self") 사용안하도록 처리 20210209

    'if grp_cd = "" And sub_cd = "" And chr_cd = "" Then
    '    if dom_cd = "3" Then
    '        sub_cd = "44"
    '    Else
    '        sub_cd = "61"
    '    End if
    'End if
 
  
    if chr_tec = "" Then chr_tec = "N"
    if grp_ord = "" Then grp_ord = "N"
    if chr_open = "" Then chr_open = "Y" '둘다노출 "Y','D"

    
    strFrom = ""
    strFrom = strFrom & "FROM   V_CHR_LIST_ON WITH(NOLOCK) "
    if grp_cd <> "" Then strFrom = strFrom & "JOIN  MS_GRP_CHR WITH(NOLOCK) ON GC_CHR_CD = CM_CHR_CD "
    strFrom = strFrom & "WHERE  1 = 1 "
    if dom_cd <> "" Then strFrom = strFrom & "AND   CC_DESC1 = '" & dom_cd & "' "
    if dom_cd <> "" Then strFrom = strFrom & "AND   SM_DOM_CD = '" & dom_cd & "' "
    if sel_type <> "" Then strFrom = strFrom & "AND SM_SEL_TYPE = '" & sel_type & "' "
    if home_cd <> "" Then strFrom = strFrom & "AND  CM_TEC_CD = '" & home_cd & "' "
    if chr_type = "k" Then strFrom = strFrom & "AND CM_KHSPECIAL_YN = 'Y' "
    if chr_type = "f" Then strFrom = strFrom & "AND CM_CHR_PRC = 0 "
    if chr_type = "law" Then strFrom = strFrom & "AND SM_SUB_CD IN ('74','88','89','90') AND CM_CHR_CD <> 16487 "
    'if chr_type = "law" Then strFrom = strFrom & "AND SM_SUB_CD IN ('74','88','89','90','69') AND CM_TEC_CD IN ('tarrius','ljwamarna','cht016','pesta71','king1290') AND CM_CHR_CD <> 16487 "
    if grp_cd <> "" Then strFrom = strFrom & "AND   GC_GRP_CD IN (" & grp_cd & ") "
    if chr_cd <> "" Then strFrom = strFrom & "AND   CM_CHR_CD IN (" & chr_cd & ") "
    if chr_new <> "" Then strFrom = strFrom & "AND   CM_NEW_FLG = '" & chr_new & "' "
    if chr_open <> "" Then strFrom = strFrom & "AND   CM_OPEN_FLG IN ('" & chr_open & "') "
    if grd_fg <> "" Then strFrom = strFrom & "AND   CM_GRD_FLG LIKE '%" & grd_fg & "%' "
    if free_yn = "Y" Then strFrom = strFrom & "AND CM_CHR_PRC = 0 "
    if event_yn <> "" Then strFrom = strFrom & "AND CD_EVENT_FLG = '"& event_yn &"' "
    if chr_type = "e" Then
        strFrom = strFrom & "AND CD_EXPLAIN_FLG = 'Y' "
    Else
        if chr_exam = "Y" Then
        Else
            strFrom = strFrom & "AND CD_EXPLAIN_FLG = 'N' "
        End if
    End if

    strOrderSet = "ISNULL(SM_VIEW_ORD, 99)"
    if chr_type = "k" Then strOrderSet = "SM_KHS_VIEW_ORD "


    '탭영역
    if chr_tab = "Y" Then
        strSql = ""
        Select Case chr_type
            Case "m" :
                strSql = strSql & "SELECT	RNO = (ROW_NUMBER() OVER(ORDER BY CC_NUM1)), CM_CHR_FLG = CAST(CM_CHR_FLG AS INT), CM_CHR_FNM = CC_KOR_NM, CC_STEP_ORD = CC_NUM1 "
                strSql = strSql & strFrom
                strSql = strSql & "GROUP BY CM_CHR_FLG, CC_KOR_NM, CC_NUM1 "
            Case Else :
                strSql = strSql & "SELECT	RNO = (ROW_NUMBER() OVER(ORDER BY " & strOrderSet & ")), SC_SUB_CD, SM_SUB_NM, " & strOrderSet & " "
                strSql = strSql & strFrom
                strSql = strSql & "GROUP BY SC_SUB_CD, SM_SUB_NM, " & strOrderSet & " "
        End Select
        strSql = strSql & "ORDER BY RNO "
        ' if cook_id = "w55ps" OR cook_id = "jyleems" or cook_id = "jyheo" or cook_id = "wofl2478" or cook_id = "bingo" or cook_id = "young3421" then 
        '     response.write "strsql" &strsql
        ' end if 
	    Set Rs = DBexec(strSql, "study")
	    If Not Rs.Eof Then
            ar_tab = Rs.GetRows()
	    End if
        RSClose(Rs)

        if sub_cd = "" Then
            'if grd_fg<>"" then
            '    if grd_fg="7" then
            '        tabList = "61/62/64/65/81/70/82/72/68/71/73/74/69/66/85/84"
            '        tabArr = split(tabList,"/")
            '    elseif grd_fg="9" then
            '        tabList = "61/62/63/64/65/67/81/70/82/72/73/74/83/68/66/84"
            '        tabArr = split(tabList,"/")
            '    end if
            '
            '    if isArray(tabArr) Then
            '        Randomize
            '        r = Int(((Ubound(tabArr)+1) * Rnd))
            '        sub_cd = tabArr(r)
            '    End if
            'else
                if isArray(ar_tab) Then
                    Randomize
                    r = Int((Ubound(ar_tab, 2) * Rnd)) 
                    sub_cd = ar_tab(1, r)
                End if
            'end if
        End if
    End if

    '학습단계
    if chr_type = "s2" then '신규에서만 사용. 이지영!!!
        if chr_step = "Y" Then
            strSql = ""
            strSql = strSql & "SELECT	RNO = (ROW_NUMBER() OVER(ORDER BY CC_NUM1)), CM_CHR_FLG = CAST(CM_CHR_FLG AS INT), CM_CHR_FNM = CC_KOR_NM, CC_STEP_ORD = CC_NUM1 "
            strSql = strSql & strFrom
            if sub_cd <> "" Then
                strSql = strSql & "AND		SM_SUB_CD = '" & sub_cd & "' "
            end If
            strSql = strSql & "GROUP BY CM_CHR_FLG, CC_KOR_NM, CC_NUM1 "
            strSql = strSql & "ORDER BY RNO "
            Set Rs = DBexec(strSql, "study")
	        If Not Rs.Eof Then
                ar_step = Rs.GetRows()
	        End if
            RSClose(Rs)
        End if
    End if
    
    '강사영역(상황별 구성 추가)
    Select Case chr_tec
        Case "Y" :
            strSql = ""
            'strSql = strSql & "SELECT	RNO = (ROW_NUMBER() OVER(ORDER BY " & strOrderSet & ", CAST(TM_SHOW_ORDER AS INT))), CM_TEC_CD, TM_TEC_NM, TM_SHOW_ORDER, " & strOrderSet & " "
            strSql = strSql & "SELECT	RNO = (ROW_NUMBER() OVER(ORDER BY " & strOrderSet & ", ISNULL(TOS_TEC_ORD, 999))), CM_TEC_CD, TM_TEC_NM, " & strOrderSet & " "
            strSql = strSql & strFrom
            if sub_cd <> "" Then
                Select Case chr_type
                    Case "m" :
                        strSql = strSql & "AND		CM_CHR_FLG = '" & sub_cd & "' "
                    Case Else :
                        strSql = strSql & "AND		SM_SUB_CD = '" & sub_cd & "' "
                End Select
            End if
            if step_cd <> "" Then
                strSql = strSql & "AND		CM_CHR_FLG = '" & step_cd & "' "
            end if
            strSql = strSql & "GROUP BY CM_TEC_CD, TM_TEC_NM, TOS_TEC_ORD, " & strOrderSet & " "
            strSql = strSql & "ORDER BY RNO "

	        Set Rs = DBexec(strSql, "study")
	        If Not Rs.Eof Then
                ar_tec = Rs.GetRows()
	        End if
            RSClose(Rs)
        Case "M" :
            strSql = ""
            strSql = strSql & "SELECT	RNO = (ROW_NUMBER() OVER(ORDER BY CC_NUM1)), CM_CHR_FLG = CAST(CM_CHR_FLG AS INT), CM_CHR_FNM = CC_KOR_NM, CC_STEP_ORD = CC_NUM1 "
            strSql = strSql & strFrom
            strSql = strSql & "GROUP BY CM_CHR_FLG, CC_KOR_NM, CC_NUM1 "
            strSql = strSql & "ORDER BY RNO "
	        Set Rs = DBexec(strSql, "study")
	        If Not Rs.Eof Then
                ar_tec = Rs.GetRows()
	        End if
            RSClose(Rs)
    End Select



    strSql = ""
    'strSql = strSql & "SELECT	RNO = (ROW_NUMBER() OVER(ORDER BY CM_DOM_CD, " & strOrderSet & ", TM_SHOW_ORDER, CC_NUM1, CM_CHR_FLG, CM_CHR_SDT DESC)), "
    strSql = strSql & "SELECT	"
    if grp_ord = "Y" And grp_cd <> "" Then
        strSql = strSql & "         RNO = (ROW_NUMBER() OVER(ORDER BY GC_VIEW_ORD ASC)), "
    Else
        'strSql = strSql & "         RNO = (ROW_NUMBER() OVER(ORDER BY CM_DOM_CD, " & strOrderSet & ", ISNULL(TOS_TEC_ORD, 999), CC_NUM1, CM_CHR_FLG, CM_CHR_SDT DESC)), "
        strSql = strSql & "         RNO = (ROW_NUMBER() OVER(ORDER BY CM_DOM_CD, " & strOrderSet & ", ISNULL(TOS_TEC_ORD, 999), CM_VIEW_ORD)), "
    End if
    strSql = strSql & "         CM_CHR_CD, CM_CHR_NM, CM_DOM_CD, SC_SUB_CD, SM_SUB_NM, CM_CHR_FLG = CAST(CM_CHR_FLG AS INT), CM_CHR_FNM = REPLACE(CC_KOR_NM, '/', '<br />/'), CM_TEC_CD, TM_TEC_NM, TM_NEW_YN, "
    strSql = strSql & "         CHRNEW = CM_NEW_FLG, CM_MAKE_FLG, CM_BETTER_FLG, CD_EVENT_FLG, " '(CASE WHEN DATEDIFF(D, CM_CHR_SDT, GETDATE()) < 180 THEN 'Y' ELSE 'N' END)
    strSql = strSql & "         CD_HOT_KEY, CD_ACAD_WM_FLG, CD_ACAD_WM_CD, CD_CHR_CHAIN_VW, CD_CHR_CHAIN, "
    strSql = strSql & "         CM_SALE_FLG, CM_STD_DAY, CM_CHR_PRC, CD_ORG_PRC, CM_BOOK_CNT = (SELECT COUNT(CB_CHR_CD) FROM MS_CHR_BOOK WITH(NOLOCK) WHERE CB_CHR_CD = CM_CHR_CD), CD_BOOK_ETC, "
    strSql = strSql & "         CM_ORI_SPL, CM_OPEN_FLG, CM_SAL_POS_DT, CM_CHR_SDT, CM_GRD_FLG "
    strSql = strSql & strFrom
    if sub_cd <> "" Then
        Select Case chr_type
            Case "m" :
                strSql = strSql & "AND		CM_CHR_FLG = '" & sub_cd & "' "
            Case Else :
                strSql = strSql & "AND		SM_SUB_CD = '" & sub_cd & "' "
        End Select
    End if
     if step_cd <> "" Then
        strSql = strSql & "AND		CM_CHR_FLG = '" & step_cd & "' "
    End if
    if tec_cd <> "" Then
        Select Case chr_tec
            Case "Y" :
                strSql = strSql & "AND  CM_TEC_CD = '" & tec_cd & "' "
            Case "M" :
                strSql = strSql & "AND  CM_CHR_FLG = '" & tec_cd & "' "
            Case Else :
                strSql = strSql & "AND  CM_TEC_CD = '" & tec_cd & "' "    
        End Select
    End if
    strSql = strSql & "ORDER BY RNO "
      if cook_id = "w55ps" OR cook_id = "jyleems" or cook_id = "jyheo" or cook_id = "wofl2478" or cook_id = "bingo" or cook_id = "young3421" or cook_id = "jhlee" then 
            'response.write "strsql" &strsql
      end if 
    Set Rs = DBexec(strSql, "study")
	If Not Rs.Eof Then
        ar_chr = Rs.GetRows()
	End if
    RSClose(Rs)

    '파라미터
    chr_para = "chr_tab=" & chr_tab & "&chr_step=" & chr_step & "&chr_tec=" & chr_tec & "&sel_type=" & sel_type & "&dom_cd=" & dom_cd & "&chr_type=" & chr_type & "&home_cd=" & home_cd & "&grp_cd=" & grp_cd & "&chr_cd=" & chr_cd & "&chr_exam=" & chr_exam & "&area_no=" & area_no & "&grp_ord=" & grp_ord & "&chr_new=" & chr_new & "&chr_open=" & chr_open & "&grd_fg=" & grd_fg & "&free_yn=" & free_yn & "&event_yn=" & event_yn & "&now="&left(lo_now_date,10)
%>
<%
    if chr_type = "s2" Then '신규UI적용
%>
    <%
        if chr_tab = "Y" Then
            if isArray(ar_tab) Then
    %>          
                <div class="lecTab_wrap" style="border-top: 1px solid #000;">
                    <div id="chrtab_<%=area_no %>" class="lecTab">
                        <p class="tit"><span>과목</span></p>
	                    <ul class="lec_list">
                            <%
                                For i = 0 To Ubound(ar_tab, 2)
                                    rno = ar_tab(0, i)
                                    scd = ar_tab(1, i)
                                    snm = ar_tab(2, i)
                                    ord = ar_tab(3, i)
                            %>
                                    <li scd="<%=scd %>"><button type="button" class="lec_item <% if CStr(sub_cd) = CStr(scd) Then %> on<% End if %>"><span class=""><%=snm %></span></button></li>
                            <%
                                Next
                            %>
                        </ul>
                    </div>
                </div>
    <%
            End if
        End if
    %>
    <%
        if chr_step = "Y" Then
            if isArray(ar_step) Then
    %>
                <div class="stepTab_wrap">
                    <div id="chrstep_<%=area_no %>" class="stepTab">
                        <p class="tit"><span>학습단계</span></p>
                        <ul class="step_list">
                            <li stc=""><button type="button" class="step_item <% if CStr(step_cd) = "" Then %>on<% End if %>"><span class="">전체</span></button></li>
                            <%
                                For i = 0 To Ubound(ar_step, 2)
                                    rno = ar_step(0, i)
                                    stc = ar_step(1, i)
                                    stm = ar_step(2, i)
                                    ord = ar_step(3, i)
                            %>
                                    <li stc="<%=stc %>"><button type="button" class="step_item <% if CStr(step_cd) = CStr(stc) Then %> on<% End if %>"><span class=""><%=stm %></span></button></li>
                            <%
                                Next
                            %>
                        </ul>
                    </div>
                </div>
    <%
            End if
        End if
    %>
    <%
        if chr_tec = "Y" Then
            if isArray(ar_tec) Then
    %>
                <div class="teaTab_wrap">
                    <div id="chrtec_<%=area_no %>" class="teaTab">
                        <p class="tit"><span>선생님</span></p>
	                    <ul class="tea_list">
                            <li tcd=""><button type="button" class="tea_item <% if tec_cd = "" Then %>on<% End if %>"><span class="">전체</span></button></li>
                            <%
                                p_tcd = ""
                                t_tnm = "tnm:"
                                For i = 0 To Ubound(ar_tec, 2)

                                    rno = ar_tec(0, i)
                                    tcd = ar_tec(1, i)
                                    tnm = ar_tec(2, i)
                                    ord = ar_tec(3, i)

                                    if p_tcd <> tcd Then
                                        if inStr(t_tnm, tcd & tnm) = 0 Then
                            %>
                                        <li tcd="<%=tcd %>"><button type="button" class="tea_item <% if CStr(tec_cd) = CStr(tcd) Then %>on<% End if %>"><span class=""><a style="cursor:pointer;"><%=tnm %><%If cdate(lo_now_date) < GetTecNewOffDay(tcd,dom_cd) then%><!-- new --><img src="<%=img_main%>/common/ic_new.gif" hspace="4" align="absmiddle" style="vertical-align:middle;margin-left:3px;display:inline-block"><%End if%></a></span></button></li>
                            <%
                                            if t_tnm <> "" Then t_tnm = t_tnm & ","
                                            t_tnm = t_tnm & tcd & tnm
                                        End if
                                    End if

                                    p_tcd = tcd
                                Next
                            %>
                        </ul>
                    </div>
                </div>
    <%
            End if
        End if
    %>
<%
    Else    '기존UI
%>
    <%
        if chr_tab = "Y" Then
            if isArray(ar_tab) Then
    %>
                <div id="chrtab_<%=area_no %>" class="commonTab lecTab">
	                <ul class="clearfix">
                        <%
                            For i = 0 To Ubound(ar_tab, 2)
                                rno = ar_tab(0, i)
                                scd = ar_tab(1, i)
                                snm = ar_tab(2, i)
                                ord = ar_tab(3, i)
                        %>
                                <li scd="<%=scd %>" class="<% if Len(snm) <= 2 Then %>small<% End if %><% if CStr(sub_cd) = CStr(scd) Then %> on<% End if %>"><a style="cursor:pointer;"><%=snm %></a></li>
                        <%
                            Next
                        %>
                    </ul>
                </div>
    <%
            End if
        End if
    %>
    <%
        if chr_tec = "Y" Then
            if isArray(ar_tec) Then
    %>
                <div id="chrtec_<%=area_no %>" class="subTab">
	                <ul class="clearfix">
                        <li tcd="" class="<% if tec_cd = "" Then %>on<% End if %>" ><a style="cursor:pointer;">전체</a></li>
                        <%
                            p_tcd = ""
                            t_tnm = "tnm:"
                            For i = 0 To Ubound(ar_tec, 2)

                                rno = ar_tec(0, i)
                                tcd = ar_tec(1, i)
                                tnm = ar_tec(2, i)
                                ord = ar_tec(3, i)

                                if p_tcd <> tcd Then
                                    if inStr(t_tnm, tcd & tnm) = 0 Then
                        %>
                                    <li tcd="<%=tcd %>" class="<% if CStr(tec_cd) = CStr(tcd) Then %>on<% End if %>"><a style="cursor:pointer;"><%=tnm %><%If cdate(lo_now_date) < GetTecNewOffDay(tcd,dom_cd) then%><!-- new --><img src="<%=img_main%>/common/ic_new.gif" hspace="4" align="absmiddle" style="vertical-align:middle;margin-left:3px;display:inline-block"><%End if%></a></li>
                        <%
                                        if t_tnm <> "" Then t_tnm = t_tnm & ","
                                        t_tnm = t_tnm & tcd & tnm
                                    End if
                                End if

                                p_tcd = tcd
                            Next
                        %>
                    </ul>
                </div>
    <%
            End if
        End if
    %>
<%
    End if '신규UI적용끝
%>





<%If cdate(lo_now_date) >= cdate("2021-08-15") then%>
<!-- 선생님/학습단계 여닫기 S -->
<div class="conditionSearch_wrap">
    <div class="condition_btn">
        <% ' 열기 클릭시 class="on" %>
        <a href="javascript:;" title="선생님/학습단계 열기">선생님/학습단계 열기</a>
        <!-- <a href="javascript:;" class="on" title="선생님/학습단계 닫기">선생님/학습단계 닫기</a> -->

    </div>
</div>
<!-- 선생님/학습단계 여닫기 E -->
<%end if%>








<%
    if isArray(ar_chr) Then
%>
    <div class="lectlist<%If cdate(lo_now_date) >= cdate("2021-08-15") then%> ver2<%end if%>">
	    <ul class="lectlist_wrap">

                        
            <%If cdate(lo_now_date) >= cdate("2021-08-15") then%>
            <% ' 210811 개선 S %>
            <li id="" class="lect_item" style="margin-bottom: 100px;">
			    <div class="listName">
				    <p class="txt1">한국사<br /><span>기초입문</span></p>

				    <p class="name">이유진<!-- new --><img src="<%=img_main%>/common/ic_new.gif" hspace="4" align="absmiddle" style="vertical-align:middle;margin-left:3px;display:inline-block"></p>
			    </div>
			    <div class="listWrap">
				    <div class="listTitle  clearfix">
					    <div class="f_left listTxt">
						    <p class="icon">
							    <span class="icon1">N</span> <span class="icon5">진행중</span> 
						    </p>
						    <p class="subTxt">선지 개념부터 필수작 분석과 문풀까지 꼼꼼하게 이해와 문풀 훈련 완성</p>
						    <p class="subject"><a href="/vod/vod_chr_view.asp?chr_cd=17088">[이론완성] 2022 이유진 국어 알고리즘 ALL-IN-ONE 문학</a></p>
						    <!-- <p class="subNoti">8월까지 수강 기간 10주로 연장!</p> -->
					    </div>
					    <div class="listotal f_right">
						    <div class="lecMoney">
							    <ul>
                                    <li>
                                        <strong class="name">강좌</strong>
                                        <strong class="price">7,971,000원</strong>
                                    </li>
                                    <li>
                                        <strong class="name">교재(2)</strong>
                                        <strong class="price">71,000원</strong>
                                    </li>
                                </ul>
                                <a href="javascript:;" onclick="" class="cart_btn" title="장바구니">장바구니</a>
						    </div>
					    </div>
				    </div>
            
                    <div class="lecBook">
                        <ul class="bookList">
                            <li class="clearfix">
                                <div class="f_left">
                                    <strong>교재</strong><span>2022 이유진 국어 문학 알고리즘</span>
                                        <!-- <a href="javascript:;" onclick="fncDownload('/userdown/ebook/ebook_86937797651_20210622181659.pdf', '2022 이유진 국어 문학 알고리즘.pdf');"><img src="<%=img_main%>/bookPre/leclist_prevw.gif" style="margin-left:5px;vertical-align:middle" alt="미리보기"></a>-->
                                </div>
                            </li>

                            <li class="clearfix">
                                <div class="f_left">
                                    <strong>교재</strong><span>2022 이유진 국어 문학 알고리즘</span>
                                </div>
                            </li>
                        </ul>
                    </div>
			    </div>

			    <div class="leclistBtn clearfix">
				    <div class="btn_lecplay f_left">
                        <a href="javascript:;" onclick="" id="ot_btn">OT</a>
                        <a href="javascript:;" onclick="" id="prevw_btn" class="prevw_btn">맛보기 <i></i></a>
				    </div>
			    </div>

                <!-- 장바구니 미리보기 S -->
                <div id="cartPocket" class="pocket_pop cart" style="display:none">
                    <a href="javascript:;" class="close_pocket">팝업 닫기</a>
                    <ol class="cart_list">
                        <% ' 강좌 li에 class="on"%>
                        <li class="on">
                            <label>
                                <span class="p_type"><input type="checkbox" value=""> 강좌</span>
                                <strong class="p_tit">f아아아아아아f아아아아아아f아아아아아아f아아아아아아f아아아아아아f아아아아아아f아아아아아아f아아아아아아</strong>
                                <span class="p_price">
                                    <del>21,000원</del> 
                                    <strong>213,000원</strong>
                                </span>
                            </label>
                        </li>
                        <li>
                            <label>
                                <span class="p_type"><input type="checkbox" value=""> 강좌</span>
                                <strong class="p_tit">f아아아아아아f아아아아아아f아아아아아아f아아아아아아f아아아아아아f아아아아아아f아아아아아아f아아아아아아</strong>
                                <span class="p_price">
                                    <del>21,000원</del> 
                                    <strong>213,000원</strong>
                                </span>
                            </label>
                        </li>
                    </ol>

                    <ul class="btn_wrap">
                        <li><a href="jaascript:;" title="장바구니" class="cart">장바구니</a></li>
                        <li><a href="jaascript:;" title="바로 결제" class="pay">바로 결제</a></li>
                        <li><a href="jaascript:;" title="패스 담기" class="pass">패스 담기</a></li>
                    </ul>
                </div>
                <!-- 장바구니 미리보기 E -->

                <!-- 맛보기 미리보기 S -->
                <div id="prevwPocket" class="pocket_pop prevw" style="display:none">
                    <a href="javascript:;" class="close_pocket">팝업 닫기</a>
                    <p class="prevw_tit">이 강좌의 <strong>맛보기</strong> <span class="tiny">* 핵심 강의 전체를 미리 확인하실 수 있습니다.</span></p>
                    <ol class="prevw_list">
                        <li>
                            <strong class="lc_tit">1강.아아아아아아아아아아아아아아아아아아아아아아아아</strong>
                            <a href="javascript:;" class="lc_go" title="플레이어 창 재생">플레이어 재생</a>
                            <span class="btn">
                                <a href="javascript:;" title="다운로드">다운로드</a>
                                <a href="javascript:;" title="다운로드">다운로드</a>
                                <a href="javascript:;" title="다운로드">다운로드</a>
                                <a href="javascript:;" title="다운로드">다운로드</a>
                            </span>
                        </li>
                        <li>
                            <strong class="lc_tit">1강.아아아아아아아아아아아아아아아아아아아zzzzzz아아아아아</strong>
                            <a href="javascript:;" class="lc_go" title="플레이어 창 재생">플레이어 재생</a>
                            <span class="btn">
                                <a href="javascript:;" title="다운로드">다운로드</a>
                                <a href="javascript:;" title="다운로드">다운로드</a>
                            </span>
                        </li>
                       
                    </ol>

                </div>
                <!-- 맛보기 미리보기 E -->

		    </li>
            <% ' // 210811 개선 E %>




<%end if%>

        <%
            For i = 0 To Ubound(ar_chr, 2)
                rno = ar_chr(0, i)
                ccd = ar_chr(1, i)
                cnm = Re_sqlFilter(ar_chr(2, i))
                dcd = ar_chr(3, i)
                scd = ar_chr(4, i)
                snm = ar_chr(5, i)
                cfg = ar_chr(6, i)
                cfm = ar_chr(7, i)
                tcd = ar_chr(8, i)
                tnm = ar_chr(9, i)
                tnw = ar_chr(10, i)
                cnw = ar_chr(11, i)
                mke = ar_chr(12, i)
                ber = ar_chr(13, i)
                evt = ar_chr(14, i)
                hky = ar_chr(15, i)
                awf = ar_chr(16, i)
                acd = ar_chr(17, i)
                cvw = ar_chr(18, i)
                cvm = ar_chr(19, i)
                sal = ar_chr(20, i)
                sdy = ar_chr(21, i)
                prc = ar_chr(22, i)
                orc = ar_chr(23, i)
                bnt = ar_chr(24, i)
                bet = ar_chr(25, i)
                ori = ar_chr(26, i)
                gfg = ar_chr(30, i)

                awm = ""
                Select Case awf
                    Case "W" : awm = "[학원 강의기간 : " & acd & "주 과정]"
                    Case "M" : awm = "[학원 강의기간 : " & acd & "개월 과정]"
                End Select
        %>
		    <li id="list<%=area_no %>_<%=ccd %>" class="lect_item">
			    <div class="listName">
				    <p class="txt1"><%=snm %><br /><span><%=cfm %></span></p>
				    <p class="name"><%=tnm %><%If cdate(lo_now_date) < GetTecNewOffDay(tcd,dcd) then%><!-- new --><img src="<%=img_main%>/common/ic_new.gif" hspace="4" align="absmiddle" style="vertical-align:middle;margin-left:3px;display:inline-block"><%End if%></p>
			    </div>
			    <div class="listWrap">
				    <div class="listTitle <% if bnt = 0 Then %>nobook<% End if %> clearfix">
					    <div class="f_left listTxt">
						    <p class="icon">
							    <% if cnw = "Y" Then %><span class="icon1">N</span> <% End if %>
                                <% if mke = "1" Then %><span class="icon2">완강</span> <% End if %>
                                <% if mke = "2" Then %><span class="icon5">진행중</span> <% End if %>
                                <% if mke = "3" Then %><span class="icon6">예정</span> <% End if %>
                                <% if ber = "1" Then %><span class="icon3">다다익선</span> <% End if %>
                                <!--<% if evt = "Y" Then %><span class="icon4">이벤트</span> <% End if %>-->
                                <% if gfg="97" Then %><span class="icon7">9/7급</span>
                                <% elseif gfg="9" Then %><span class="icon7">9급대비</span>
                                <% elseif gfg="7" Then %><span class="icon7">7급대비</span><% End if %>
						    </p>
						    <p class="subTxt"><%=hky %></p>
						    <p class="subject"><a href="/vod/vod_chr_view.asp?chr_cd=<%=ccd %>"><%=cnm %></a></p>
						    <p class="subNoti"><%=awm %> <% if cvw = "Y" Then %><%=replace(cvm,chr(13)&chr(10),"<br>") %><% End if %></p>
					    </div>
					    <div class="listotal f_right">
						    <div class="lecMoney">
							    <input type="checkbox" name="chr" id="chr_<%=ccd %>" value="<%=ccd %>" > <label for="day"><%=sdy %>일</label>
							    <p class="listMoney">
								    <%
                                    if orc > 0 And orc <> prc Then
                                        dis_per = round((orc-prc) / orc * 100)
                                        if dis_per>0 then
                                            disIcon = "↓"
                                        else
                                            disIcon = "↑"
                                        end if
                                    %>
                                    <span class="dis_per">[<%=abs(dis_per)%>%<%=disIcon%>]</span><span><%=FormatNumber(orc, 0) %>원</span>
                                    <% End if %>
                                    &nbsp;<%=FormatNumber(prc, 0) %>원
							    </p>
						    </div>
					    </div>
				    </div>
                    <%
                        if bnt > 0 Then
                            strSql = ""
                            strSql = strSql & " SELECT  RNO = (ROW_NUMBER() OVER(ORDER BY CB_VIEW_ORD, CAST(BM_BOOK_FLG AS INT),  CB_BOOK_CD DESC)), CB_BOOK_CD, BM_BOOK_NM, BM_PRC, BM_ORG_PRC, BM_BOOK_FLG, FNM = CC_KOR_NM, BM_EBOOK_FLG, BM_SALE_DT = CONVERT(CHAR(10), BM_SALE_DT, 20) "
                            strSql = strSql & "         , ISNULL(BE_EBOOK_PATH,''), ISNULL(BE_EBOOK_NAME,'') "
                            strSql = strSql & " FROM    MS_CHR_BOOK WITH(NOLOCK) "
                            strSql = strSql & " JOIN    MS_BOOK_MAS WITH(NOLOCK) ON BM_BOOK_CD = CB_BOOK_CD "
                            strSql = strSql & " JOIN    MS_COMM_CD WITH(NOLOCK) ON CC_COMM_KIND = '13' AND CC_COMM_CD = BM_BOOK_FLG "
                            strSql = strSql & " LEFT    JOIN MS_BOOK_EBOOK WITH(NOLOCK) ON BM_BOOK_CD = BE_BOOK_CD "
                            strSql = strSql & " WHERE	CB_CHR_CD = " & ccd
	                        Set Rs = DBexec(strSql, "study")
	                        If Not Rs.Eof Then
                                ar_book = Rs.GetRows()
	                        End if
                            RSClose(Rs)

                            if isArray(ar_book) Then
                    %>
				            <div class="lecBook">
					            <ul class="bookList">
                                <%
                                    For b = 0 To Ubound(ar_book, 2)
                                        b_rno = ar_book(0, b)
                                        b_bcd = ar_book(1, b)
                                        b_bnm = re_sqlfilter(ar_book(2, b))
                                        b_prc = ar_book(3, b)
                                        b_orc = ar_book(4, b)
                                        b_bfg = ar_book(5, b)
                                        b_bfm = ar_book(6, b)
                                        b_ebk = ar_book(7, b)
                                        b_sdt = ar_book(8, b)
                                        b_ebook_path = ar_book(9,b)
                                        b_ebook_name = re_sqlfilter(ar_book(10,b))

                                        preview_act = ""
                                        if b_ebk = "Y" and b_ebook_path = "" then 
                                            preview_act = "fncEBookView('"&h_dcd&"', '"&b_bcd&"');"
                                        elseif b_ebk = "Y" and b_ebook_path <> "" then 
                                            preview_act = "fncDownload('"&b_ebook_path&"', '"&b_ebook_name&"');"
                                        end if 
                                %>
						                <li class="clearfix">
							                <div class="f_left">
								                <strong>교재<%=b_rno %></strong> <span><%=b_bnm %><%if (b_bfg = "4" Or b_bfg = "5") And (b_sdt <> "" And CDate(b_sdt) > Date()) then%> (<strong><%=Month(b_sdt) & "/" & Day(b_sdt) %></strong> 입고예정)<%end if%></span>
                                                <% if b_ebk = "Y" Then %>
                                                    <a href="javascript:;" onclick="<%=preview_act%>"><img src="<%=img_main %>/bookPre/leclist_prevw.gif" style="margin-left:5px;vertical-align:middle" alt="미리보기" /></a>
                                                <% End if %>
							                </div>
							                <div class="f_right bookTotal">
								                <p class="bookChk">
									                <input type="checkbox" name="book" id="book_<%=b_bcd %>" value="<%=b_bcd %>" <% if b_bfg <> "1" Then %>disabled<% End if %>> <label for="book<%=b_rno %>">교재<%=b_rno %></label>
								                </p>
								                <p class="bookMoney">
                                                    <% if b_bfg = "1" Then %>
                                                        <% if b_orc > 0 And b_orc <> b_prc Then %><span><%=FormatNumber(b_orc, 0) %>원</span><% End if %>&nbsp;<%=FormatNumber(b_prc, 0) %>원
                                                    <% Else %>
                                                        <%=b_bfm %>
                                                    <% End if %>
								                </p>
							                </div>
						                </li>
                                <%
                                    Next
                                %>
					            </ul>
				            </div>
                    <%
                            End if
                        End if
                    %>
			    </div>
			    <div class="leclistBtn clearfix">
				    <div class="btn_lecplay f_left">
					    <% if ori <> "" Then %><a style="cursor:pointer;" onclick="GongcampusFreePlay(40, <%=ccd %>, '', '');" class="prevw_btn">OT</a><% End if %>
                        <%
                            ar_mov = null

                            strSql = ""
                            strSql = strSql & "SELECT	RNO = ROW_NUMBER() OVER (ORDER BY SL_TOP_FLG DESC, LM_LEC_SEQ), SL_LEC_CD, SL_SPL_NM, LM_CONTENT_KEY = ISNULL(LM_CONTENT_KEY,''), SL_SPL_STM, SL_SPL_ETM "
                            strSql = strSql & "FROM     MD_SPL_LIST WITH(NOLOCK) "
                            strSql = strSql & "JOIN     MS_CHR_MAS WITH(NOLOCK) ON SL_CHR_CD = CM_CHR_CD "
                            strSql = strSql & "JOIN     MS_LEC_MAS WITH(NOLOCK) ON SL_CHR_CD = LM_CHR_CD AND SL_LEC_CD = LM_LEC_CD "
                            strSql = strSql & "WHERE	SL_CHR_CD = " & ccd & " "
                            strSql = strSql & "AND      LM_CONTENT_KEY <> '" & ori & "' "
	                        Set Rs = DBexec(strSql, "study")
	                        If Not Rs.Eof Then
                                ar_mov = Rs.GetRows()
	                        End if
                            RSClose(Rs)

                            if isArray(ar_mov) Then
                                For m = 0 To Ubound(ar_mov, 2)
                                    m_rno = ar_mov(0, m)
                                    m_lcd = ar_mov(1, m)
                                    m_tit = ar_mov(2, m)
                                    m_mky = ar_mov(3, m)
                                    m_stm = ar_mov(4, m)
                                    m_etm = ar_mov(5, m)
                        %>
					                <a style="cursor:pointer;" onclick="GongcampusFreePlay(55, <%=ccd %>, <%=m_lcd %>, <%=m_stm %>);" class="prevw_btn">맛보기 <%=m_rno%></a>
					    <%
                                Next
                            End if
                        %>
				    </div>
				    <div class="btn_buy f_right">
                        <% if chr_type = "f" Then %>
                            <a onclick="fncGoPay(<%=area_no %>, 'P', <%=ccd %>);" style="cursor:pointer; margin-left:90px;" class="cbuy_btn">결제하기</a>
                        <% Else %>
					        <a onclick="fncGoPay(<%=area_no %>, 'C', <%=ccd %>);" style="cursor:pointer;" class="cart_btn">장바구니</a>
					        <a onclick="fncGoPay(<%=area_no %>, 'P', <%=ccd %>);" style="cursor:pointer;" class="cbuy_btn">결제하기</a>
                        <% End if %>
				    </div>
			    </div>
				<%If ccd = "14775" then%>
				<!--<span class="tag" style="position:absolute;right:10px;top:0;border:1px solid red;">test</span>-->
				<%End if%>
		    </li>
        <%
            Next
        %>
	    </ul>
    </div>
<%
    End if
%>
<%
    if area_no = "1" Then
%>
    <script type="text/javascript">
        function fncChrTab(a, n, p) {
            var v = $("#chrtab_" + a + " li").eq(n).attr("scd");
            var p = p + "&sub_cd=" + v;
            fncChrList(a, p);
        }

        function fncChrStep(a, n, p) {

            var chr_type = "<%=chr_type %>";
            var sub_cd = "";
            var step_cd = "";
            if (chr_type == "s2") {
                sub_cd = "<%=sub_cd %>";
            } else {
                sub_cd = $("#chrstep_" + a + " li").filter(function () { return $(this).hasClass("on") }).attr("stc");
            }

            var v = $("#chrstep_" + a + " li").eq(n).attr("stc");

            var p = p + "&sub_cd=" + sub_cd + "&step_cd=" + v;

            fncChrList(a, p);
        }

        function fncChrTec(a, n, p) {

            var chr_type = "<%=chr_type %>";
            var sub_cd = "";
            var step_cd = "";
            if (chr_type == "s2") {
                sub_cd = "<%=sub_cd %>";
                step_cd = "<%=step_cd %>"; //학습단계 관련 추가
            } else {
                sub_cd = $("#chrtab_" + a + " li").filter(function () { return $(this).hasClass("on") }).attr("scd");
            }

            var v = $("#chrtec_" + a + " li").eq(n).attr("tcd");

            var p = p + "&sub_cd=" + sub_cd + "&step_cd=" + step_cd + "&tec_cd=" + v;

            fncChrList(a, p);
        }
    </script>
<%
    End if
%>
<script type="text/javascript">
    $(document).ready(function () {
        $("#chrtab_<%=area_no %> li").click(function () {
            fncChrTab("<%=area_no %>", $(this).index("#chrtab_<%=area_no %> li"), "<%=chr_para %>");
        });

        $("#chrstep_<%=area_no %> li").click(function () {
            fncChrStep("<%=area_no %>", $(this).index("#chrstep_<%=area_no %> li"), "<%=chr_para %>");
        });

        $("#chrtec_<%=area_no %> li").click(function () {
            fncChrTec("<%=area_no %>", $(this).index("#chrtec_<%=area_no %> li"), "<%=chr_para %>");
        });
    });
</script>




