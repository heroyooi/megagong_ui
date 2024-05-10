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

    '이벤트에서 패키지 목록 나오게 할 페이지 (chrlist_ax랑 비슷)

    area_no = fncRequest("area_no")
    if area_no = "" Then area_no = "1"

    '패키지 시작 변수
    area_pkg_no = fncRequest("area_pkg_no")
    if area_pkg_no = "" Then area_pkg_no = "1"

    '패키지리스트 상단 메뉴
    menu_type  = fncRequest("menu_type") ' s : 그냥 패키지만
    sub_tab = fncRequest("sub_tab") ' 과목 탭 사용 YN
    tec_tab = fncRequest("tec_tab") ' 강사 탭 사용 YN
    pick_tab = fncRequest("pick_tab") ' 메가픽 탭 사용 YN
    chr_step = fncRequest("chr_step") ' 학습단계 탭 YN
    tab_yn = fncRequest("tab_yn") ' 탭 보이기 안보이기 값 (n이면 전부 안보임)
    
    '옵션 변수
    dom_cd  = fncRequest("dom_cd")
    sel_type= fncRequest("sel_type")
    tec_cd = fncRequest("tec_cd")
    sub_cd  = fncRequest("sub_cd") ' 과목코드
    step_cd = fncRequest("step_cd") '학습단계 값

    '강좌 옵션 변수
    chr_cd  = fncRequest("chr_cd") ' 해당강좌가 들어있는 패키지
    chr_tec = fncRequest("chr_tec") ' 해당강사의 강좌가 들어있는 패키지
    chr_sub  = fncRequest("chr_sub") ' 강좌 과목
    chr_open  = fncRequest("chr_open") ' 강좌의 오픈유무에 따른 패키지 노출 조건 (Y, Y,D)

    '패키지 옵션 변수
    pkg_cd  = fncRequest("pkg_cd")
    pkg_open = fncRequest("pkg_open") '기본은 무조건 Y , 조건에따라 N 가능

    '메가픽 패키지 변수
    pick_cd  = fncRequest("pick_cd")


    '--------------------------------------------------------------------------------------------------------------------------

    if tab_yn = "" Then tab_yn = "N"
    if chr_open = "" Then 
        ' 비어있으면 Y,D open 값 설정
        tmp_chr_open = "Y','D"
    else 
        tmp_chr_open = chr_open
    end if
    if pkg_open = "" Then 
        pkg_open = "Y"
    end if

    strFrom = ""
    strFrom = strFrom & "FROM   V_CHR_LIST_ON WITH(NOLOCK) "
    strFrom = strFrom & " inner join MS_PKG_DTL with (nolock) on PD_CHR_CD = CM_CHR_CD "
    strFrom = strFrom & " inner join MS_PKG_MAS with (nolock) on PM_PKG_CD = PD_PKG_CD "

    if menu_type = "s2" then
        strFrom = strFrom & " left join MS_MEGAPICK_PKG with (nolock) on MPP_PKG_CD = PM_PKG_CD "
        strFrom = strFrom & " left join MS_MEGAPICK_MAS with (nolock) on MPM_CD = MPP_MPM_CD "
    end if

    strFrom = strFrom & "WHERE  1 = 1 "
    if dom_cd <> "" Then strFrom = strFrom & "AND   CC_DESC1 = '" & dom_cd & "' "
    if dom_cd <> "" Then strFrom = strFrom & "AND   SM_DOM_CD = '" & dom_cd & "' "
    if sel_type <> "" Then strFrom = strFrom & "AND SM_SEL_TYPE = '" & sel_type & "' "
    if chr_cd <> "" Then strFrom = strFrom & "AND   CM_CHR_CD IN (" & chr_cd & ") "
    if chr_tec <> "" Then strFrom = strFrom & "AND  CM_TEC_CD = '" & chr_tec & "' "
    if chr_sub <> "" Then strFrom = strFrom & "AND  SC_SUB_CD = '" & chr_sub & "' "
    if tmp_chr_open <> "" Then strFrom = strFrom & "AND   CM_OPEN_FLG IN ('" & tmp_chr_open & "') "
    if pkg_cd <> "" Then strFrom = strFrom & "AND   PM_PKG_CD IN (" & pkg_cd & ") "
    if pkg_open <> "" Then strFrom = strFrom & "AND   PM_OPEN_YN IN ('" & pkg_open & "') "

    strOrderSet = ""
    strOrderSet = "ISNULL(SM_VIEW_ORD, 99)"


    strSql = ""
    strSql2 = ""

    strSql = strSql & strFrom
    strSql2 = strSql

    '패키지에 포함된 강좌 유효성 확인한 패키지 리스트 추출
    pkglist = "0"
    strPkg = ""
    strPkg = strPkg & " select c.PM_PKG_CD from ( "
    strPkg = strPkg & "     select DISTINCT PM_PKG_CD,  " 
    strPkg = strPkg & "     CM_OPEN_FLG = (SELECT DISTINCT ',' + CM_OPEN_FLG "  
    strPkg = strPkg & "         FROM MS_PKG_DTL with (nolock) inner join ms_chr_mas with (nolock) on PD_CHR_CD = CM_CHR_CD "  
    strPkg = strPkg & "         WHERE PD_PKG_CD = PM_PKG_CD "  
    strPkg = strPkg & "         and PD_PKG_CD in ( "
    strPkg = strPkg & "             select DISTINCT PM_PKG_CD FROM MS_PKG_DTL with (nolock) "
    strPkg = strPkg & "             inner join MS_PKG_MAS with (nolock) on PM_PKG_CD = PD_PKG_CD "
    strPkg = strPkg & "             WHERE PM_DEL_FLG = 'N' and PM_OPEN_YN = 'Y' "  
    strPkg = strPkg & "             and PD_CHR_CD in ( SELECT DISTINCT CM_CHR_CD " & strSql2 & ")) "
    strPkg = strPkg & "         FOR XML PATH('') "  
    strPkg = strPkg & "     ) "  
    strPkg = strPkg & "     FROM MS_PKG_MAS with (nolock) "  
    strPkg = strPkg & "     WHERE PM_DEL_FLG = 'N' and PM_OPEN_YN = 'Y' "  
    strPkg = strPkg & " ) c "
    strPkg = strPkg & " where c.CM_OPEN_FLG is not null and CHARINDEX('X', c.CM_OPEN_FLG) = 0 and CHARINDEX('N', c.CM_OPEN_FLG) = 0 "
    if pkg_cd <> "" Then strPkg = strPkg & " and c.PM_PKG_CD IN (" & pkg_cd & ") "
    if cook_id = "monome" OR cook_id = "jyleems" or cook_id = "jyheo" or cook_id = "wofl2478" or cook_id = "bingo" or cook_id = "young3421" or cook_id = "jhlee" or cook_id = "qpalzm200"  or cook_id = "ehyoo" OR cook_id = "cereall" then
        ' response.write "strPkg " &strPkg
        ' response.end
    end if
    Set objRs = DBExec(strPkg, "study")
    If Not (objRs.EoF And objRs.BoF) Then 
        tmp_arrPkg = objRs.getrows
        if isarray(tmp_arrPkg) = true then
            for n = 0 to ubound(tmp_arrPkg, 2)
                if pkglist = "0" then
                    pkglist = tmp_arrPkg(0,n)
                else
                    pkglist = pkglist & "," & tmp_arrPkg(0,n)
                end if
            next
        else
            pkglist = "0"
        end if
    End If 
    Call DBClose(objRs)


    ' 과목
    if sub_tab = "Y" Then
        strSql = ""
        strSql = strSql & "SELECT	RNO = (ROW_NUMBER() OVER(ORDER BY " & strOrderSet & ")), SC_SUB_CD, SM_SUB_NM, " & strOrderSet & " "
        strSql = strSql & strFrom

        strSql = strSql & " and SC_SUB_CD not in ('99') "   '필요없는거 넣어주세요.
        strSql = strSql & " and PM_OPEN_YN = 'Y' and PM_DEL_FLG = 'N' "
        strSql = strSql & " and PM_PKG_CD in (" & pkglist & ") "

        strSql = strSql & "GROUP BY SC_SUB_CD, SM_SUB_NM, " & strOrderSet & " "
        strSql = strSql & "ORDER BY RNO "
        Set Rs = DBexec(strSql, "study")
        If Not Rs.Eof Then
            ar_sub = Rs.GetRows()
        End if
        RSClose(Rs)

        if sub_cd = "" Then
            if isArray(ar_sub) Then
                '랜덤 처리
                Randomize
                tmpSu = Ubound(ar_sub, 2)
                if tmpSu <> 0 then tmpSu = tmpSu+1
                r = Int(tmpSu * Rnd)
  
                sub_cd = ar_sub(1, r)
            End if
        End if
    End if

    '강사
    if sub_tab = "Y" Then
        strSql = ""
        strSql = strSql & "SELECT	RNO = (ROW_NUMBER() OVER(ORDER BY " & strOrderSet & ", ISNULL(TOS_TEC_ORD, 999))), CM_TEC_CD, TM_TEC_NM, " & strOrderSet & " "
        strSql = strSql & strFrom

        if sub_cd <> "" Then
            strSql = strSql & "AND		SM_SUB_CD = '" & sub_cd & "' "
        End if

        if step_cd <> "" Then
            strSql = strSql & "AND		CM_CHR_FLG = '" & step_cd & "' "
        end if

        strSql = strSql & " and PM_OPEN_YN = 'Y' and PM_DEL_FLG = 'N' "
        strSql = strSql & " and PM_PKG_CD in (" & pkglist & ") "

        strSql = strSql & "GROUP BY CM_TEC_CD, TM_TEC_NM, TOS_TEC_ORD, " & strOrderSet & " "
        strSql = strSql & "ORDER BY RNO "

        Set Rs = DBexec(strSql, "study")
        If Not Rs.Eof Then
            ar_tec = Rs.GetRows()
        End if
        RSClose(Rs)
    End if

    if pick_tab = "Y" then
        '대기
    end if

    '학습단계
    if chr_step = "Y" Then
        strSql = ""
        strSql = strSql & "SELECT	RNO = (ROW_NUMBER() OVER(ORDER BY CC_NUM1)), CM_CHR_FLG = CAST(CM_CHR_FLG AS INT), CM_CHR_FNM = CC_KOR_NM, CC_STEP_ORD = CC_NUM1 "
        strSql = strSql & strFrom
        if sub_cd <> "" Then
            strSql = strSql & "AND		SM_SUB_CD = '" & sub_cd & "' "
        end If
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

        strSql = strSql & " and PM_OPEN_YN = 'Y' and PM_DEL_FLG = 'N' "
        strSql = strSql & " and PM_PKG_CD in (" & pkglist & ") "

        strSql = strSql & "GROUP BY CM_CHR_FLG, CC_KOR_NM, CC_NUM1 "
        strSql = strSql & "ORDER BY RNO "

        Set Rs = DBexec(strSql, "study")
        If Not Rs.Eof Then
            ar_step = Rs.GetRows()
        End if
        RSClose(Rs)
    End if



    '강좌 리스트---------------------------------------------------------------------------------------------
    strSql = ""
    strSql = strSql & "SELECT "
    strSql = strSql & "         RNO = (ROW_NUMBER() OVER(ORDER BY CM_DOM_CD, " & strOrderSet & ", ISNULL(TOS_TEC_ORD, 999), CM_VIEW_ORD)), "
    strSql = strSql & "         CM_CHR_CD, CM_CHR_NM, CM_DOM_CD, SC_SUB_CD, SM_SUB_NM, CM_CHR_FLG = CAST(CM_CHR_FLG AS INT), CM_CHR_FNM = REPLACE(CC_KOR_NM, '/', '<br />/'), CM_TEC_CD, TM_TEC_NM, TM_NEW_YN, "
    strSql = strSql & "         CHRNEW = CM_NEW_FLG, CM_MAKE_FLG, CM_BETTER_FLG, CD_EVENT_FLG, " '(CASE WHEN DATEDIFF(D, CM_CHR_SDT, GETDATE()) < 180 THEN 'Y' ELSE 'N' END)
    strSql = strSql & "         CD_HOT_KEY, CD_ACAD_WM_FLG, CD_ACAD_WM_CD, CD_CHR_CHAIN_VW, CD_CHR_CHAIN, "
    strSql = strSql & "         CM_SALE_FLG, CM_STD_DAY, CM_CHR_PRC, CD_ORG_PRC, CM_BOOK_CNT = (SELECT COUNT(CB_CHR_CD) FROM MS_CHR_BOOK WITH(NOLOCK) WHERE CB_CHR_CD = CM_CHR_CD), CD_BOOK_ETC, "
    strSql = strSql & "         CM_ORI_SPL, CM_OPEN_FLG, CM_SAL_POS_DT, CM_CHR_SDT, CM_GRD_FLG "
    strSql = strSql & "         , PM_PKG_CD, PM_PKG_NM, PM_PKG_PRC, PM_ORN_PRC, PM_DC_RT, PM_STD_DAY "
    strSql = strSql & "         , PD_PKG_CD, PD_VIEW_ORD = isnull(PD_VIEW_ORD, 999) "

    '패키지 등에서 쓸 컬럼들 strPkg
    strPkg = ""
    strPkg = strSql

    strSql = strSql & strFrom

    if sub_cd <> "" Then
        Select Case menu_type
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


    '강좌리스트 용으로 다시 추출 (학습단계 적용)
    strSql2 = Replace(strSql, strPkg, "")

    strPkg2 = ""
    strPkg2 = strPkg2 & " select c.PM_PKG_CD from ( "
    strPkg2 = strPkg2 & "     select DISTINCT PM_PKG_CD,  " 
    strPkg2 = strPkg2 & "     CM_OPEN_FLG = (SELECT DISTINCT ',' + CM_OPEN_FLG "  
    strPkg2 = strPkg2 & "         FROM MS_PKG_DTL with (nolock) inner join ms_chr_mas with (nolock) on PD_CHR_CD = CM_CHR_CD "  
    strPkg2 = strPkg2 & "         WHERE PD_PKG_CD = PM_PKG_CD "  
    strPkg2 = strPkg2 & "         and PD_PKG_CD in ( "
    strPkg2 = strPkg2 & "             select DISTINCT PM_PKG_CD FROM MS_PKG_DTL with (nolock) "
    strPkg2 = strPkg2 & "             inner join MS_PKG_MAS with (nolock) on PM_PKG_CD = PD_PKG_CD "
    strPkg2 = strPkg2 & "             WHERE PM_DEL_FLG = 'N' and PM_OPEN_YN = 'Y' "  
    strPkg2 = strPkg2 & "             and PD_CHR_CD in ( SELECT DISTINCT CM_CHR_CD " & strSql2 & ")) "
    strPkg2 = strPkg2 & "         FOR XML PATH('') " 
    strPkg2 = strPkg2 & "     ) " 
    strPkg2 = strPkg2 & "     FROM MS_PKG_MAS with (nolock) "  
    strPkg2 = strPkg2 & "     WHERE PM_DEL_FLG = 'N' and PM_OPEN_YN = 'Y' and PM_PKG_CD in (" & pkglist & ") "  
    strPkg2 = strPkg2 & " ) c "
    strPkg2 = strPkg2 & " where c.CM_OPEN_FLG is not null and CHARINDEX('X', c.CM_OPEN_FLG) = 0 and CHARINDEX('N', c.CM_OPEN_FLG) = 0 "
    Set objRs = DBExec(strPkg2, "study")
    If Not (objRs.EoF And objRs.BoF) Then 
        tmp_arrPkg = objRs.getrows
        if isarray(tmp_arrPkg) = true then
            for n = 0 to ubound(tmp_arrPkg, 2)
                if n = 0 then
                    pkglist = tmp_arrPkg(0,n)
                else
                    pkglist = pkglist & "," & tmp_arrPkg(0,n)
                end if
            next
        else
            pkglist = "0"
        end if
    End If 
    Call DBClose(objRs)

    strSql = ""
    strSql = strSql & " select DISTINCT PM_PKG_CD, PM_PKG_NM = REPLACE(REPLACE(PM_PKG_NM, '（', '('), '）', ')'), "
    strSql = strSql & " PM_PKG_PRC, PM_ORN_PRC, PM_DC_RT = round(PM_DC_RT, 0), "
    strSql = strSql & " PM_STD_DAY, PM_STD_DT, isnull(PM_STD_TYPE, 'P') as std_type, PM_OPEN_YN, isnull(PM_HOT_KEY, '&nbsp;') as hot_key, isnull(PM_SPF,'') as spf, "
    strSql = strSql & " tec_cd = isnull(PM_PKG_IMG, 'logo'), tec_nm = isnull((select DISTINCT top 1 TM_TEC_NM from MS_TEC_MAS where TM_TEC_CD = PM_PKG_IMG), ''), TOS_TEC_ORD = ISNULL(TOS_TEC_ORD, 999) "
    strSql = strSql & " from MS_PKG_MAS with (nolock) "
    strSql = strSql & "     inner join MS_PKG_DTL with (nolock) on PM_PKG_CD = PD_PKG_CD "

    strSql = strSql & "     LEFT OUTER JOIN MS_CHR_MAS WITH(NOLOCK) ON PD_CHR_CD = CM_CHR_CD "
	strSql = strSql & "     LEFT OUTER JOIN MS_SUB_CHR WITH(NOLOCK) ON SC_CHR_CD = CM_CHR_CD AND SC_DOM_CD = CM_DOM_CD "
	strSql = strSql & "     LEFT OUTER JOIN MS_TECORD_SUB WITH(NOLOCK) ON TOS_DOM_CD = CM_DOM_CD AND TOS_SUB_CD = SC_SUB_CD AND TOS_TEC_CD = ISNULL(PM_PKG_IMG, 'logo') "

    strSql = strSql & " where PM_OPEN_YN = 'Y' and PM_DEL_FLG = 'N' "
    strSql = strSql & " and PM_PKG_CD in ("&pkglist&") "

    strSql = strSql & " ORDER BY TOS_TEC_ORD ASC, PM_PKG_CD DESC "

    if cook_id = "monome" OR cook_id = "jyleems" or cook_id = "jyheo" or cook_id = "wofl2478" or cook_id = "bingo" or cook_id = "young3421" or cook_id = "jhlee" or cook_id = "qpalzm200"  or cook_id = "ehyoo" OR cook_id = "cereall" then
        ' response.write "strSql " &strSql
        ' response.end
    end if
    Set Rs = DBexec(strSql, "study")
	If Not Rs.Eof Then
        ar_pkg = Rs.GetRows()
	End if
    RSClose(Rs)



    '파라미터
    pkg_para = "menu_type=" & menu_type & "&sub_tab=" & sub_tab & "&tec_tab=" & tec_tab & "&chr_step=" & chr_step & "&sel_type=" & sel_type & "&dom_cd=" & dom_cd & "&chr_cd=" & chr_cd & "&chr_tec=" & chr_tec & "&chr_sub=" & chr_sub & "&chr_open=" & chr_open & "&pkg_cd=" & pkg_cd & "&pkg_open=" & pkg_open & "&area_no=" & area_no & "&area_pkg_no=" & area_pkg_no & "&now="&left(lo_now_date,10)

%>

<% if tab_yn = "Y" Then %>
    <%
        '과목
        sub_cnt = 0

        if isArray(ar_sub) Then
            sub_cnt = Ubound(ar_sub, 2)+1
        end if

        gubnV = true
        
        if sub_tab = "Y" and sub_cnt > 1 Then
            if isArray(ar_sub) Then
                gubnV = false
    %>
                <div class="lecTab_wrap" style="border-top: 1px solid #000;">
                    <div id="chrtab_<%=area_no %>" class="lecTab">
                        <p class="tit"><span>과목</span></p>
                        <ul class="lec_list">
                            <%
                                For i = 0 To Ubound(ar_sub, 2)
                                    rno = ar_sub(0, i)
                                    scd = ar_sub(1, i)
                                    snm = ar_sub(2, i)
                                    ord = ar_sub(3, i)
                            %>
                                    <li scd="<%=scd %>" class="<% if CStr(sub_cd) = CStr(scd) Then %> on<% End if %>"><button type="button" class="lec_item">
                                        <span class=""><%=snm %>
                                            <%If cdate(lo_now_date) < GetSubNewOffDay(scd,h_dcd) then%>
                                            <img src="<%=img_main%>/common/ic_new.gif" style="vertical-align:middle; margin-left:3px;" />
                                            <%end if %>
                                        </span></button>
                                    </li>
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
        if tec_tab = "Y" Then
            if isArray(ar_tec) Then
    %>
                <div class="teaTab_wrap" <% if gubnV then %> style="border-top: 1px solid #000;" <% end if %>>
                    <div id="chrtec_<%=area_no %>" class="teaTab">
                        <p class="tit"><span>선생님</span></p>
	                    <ul class="tea_list">
                            <li tcd="" class="<% if tec_cd = "" Then %>on<% End if %>"><button type="button" class="tea_item"><span class="">전체</span></button></li>
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
                                        <li tcd="<%=tcd %>" class="<% if CStr(tec_cd) = CStr(tcd) Then %>on<% End if %>"><button type="button" class="tea_item"><span class=""><a style="cursor:pointer;"><%=tnm %><%If cdate(lo_now_date) < GetTecNewOffDay(tcd,dom_cd) then%><!-- new --><img src="<%=img_main%>/common/ic_new.gif" hspace="4" align="absmiddle" style="vertical-align:middle;margin-left:3px;display:inline-block"><%End if%></a></span></button></li>
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
                if gubnV then gubnV = false 
            End if
        End if
    %>

    <%
        '구분
        if pick_tab = "Y" then
            if isArray(ar_gubn) Then
    %>
                <div class="lecTab_wrap" <% if gubnV then %> style="border-top: 1px solid #000;" <% end if %>>
                    <div id="chrgubn_<%=area_no %>" class="gubnTab">
                        <p class="tit"><span>구분</span></p>
                        <ul class="gubn_list">
                            <%
                                For i = 0 To Ubound(ar_gubn, 2)
                                    ord = ar_gubn(0, i)
                                    gubn = ar_gubn(1, i)
                                    name = ar_gubn(2, i)
                            %>
                                    <li gubn="<%=gubn %>" class="<% if CStr(pkg_gubn) = CStr(gubn) Then %>on<% End if %>">
                                        <button type="button" class="gubn_item"><span class=""><%=name %></span></button>
                                    </li>
                            <%
                                Next
                            %>
                        </ul>
                    </div>
                </div>
    <%
                if gubnV then gubnV = false 
            End if
        End if
    %>

    <%
        '학습단계
        if chr_step = "Y" Then
            if isArray(ar_step) Then
    %>
                <div class="stepTab_wrap" <% if gubnV then %> style="border-top: 1px solid #000;" <% end if %>>
                    <div id="chrstep_<%=area_no %>" class="stepTab" >
                        <p class="tit"><span>학습단계</span></p>
                        <ul class="step_list">
                            <li stc="" class="<% if CStr(step_cd) = "" Then %>on<% End if %>"><button type="button" class="step_item"><span class="">전체</span></button></li>
                            <%
                                For i = 0 To Ubound(ar_step, 2)
                                    rno = ar_step(0, i)
                                    stc = ar_step(1, i)
                                    stm = ar_step(2, i)
                                    ord = ar_step(3, i)
                            %>
                                    <li stc="<%=stc %>" class="<% if CStr(step_cd) = CStr(stc) Then %> on<% End if %>"><button type="button" class="step_item"><span class=""><%=stm %></span></button></li>
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
<% end if %>

<% if isArray(ar_pkg) Then %>
    <% if menu_type = "s2" then %>
        <div class="lectlist ver2">
            
        </div>


    <% elseif menu_type = "s" then %>
        <div class="lectlist ver2">
            <ul class="lectlist_wrap">
            <%
                For i = 0 To Ubound(ar_pkg, 2)
                    pkg_cd = Trim(ar_pkg(0, i))
                    pkg_nm = Trim(ar_pkg(1, i))
                    pkg_prc = Trim(ar_pkg(2, i))
                    org_prc = Trim(ar_pkg(3, i))
                    dc_rt = Trim(ar_pkg(4, i))
                    std_day = Trim(ar_pkg(5, i))

                    'std_dt = ar_pkg(6, i)

                    std_type = Trim(ar_pkg(7, i))
                    hot_ky = Trim(re_sqlfilter(Replace(ar_pkg(9, i), Chr(13)&Chr(10), "<br>")))
                    pkg_SPF = Trim(re_sqlfilter(Replace(ar_pkg(10, i), Chr(13)&Chr(10), "<br>")))
                    pkg_img = Trim(ar_pkg(11, i))

                    temp_tec_cd = ""
                    if tec_cd = "" then
                        if pkg_img <> "logo" or pkg_img <> "" then
                            temp_tec_cd = pkg_img
                        end if
                    else
                        temp_tec_cd = tec_cd
                    end if

                    tec_nm = ""
                    Set objRs = DBExec(" select DISTINCT top 1 TM_TEC_NM from MS_TEC_MAS with (nolock) where TM_TEC_CD = '" & temp_tec_cd & "' ", "study")
                    If Not (objRs.EoF And objRs.BoF) Then 
                        tec_nm = objRs(0)
                    End If 
                    Call DBClose(objRs) 

                    '패키지 안 강좌목록
                    ar_pkg_chr = null
                    strPkg2 = strPkg
                    strPkg2 = strPkg2 & " FROM V_CHR_LIST_ON WITH(NOLOCK) "
                    strPkg2 = strPkg2 & " inner join MS_PKG_DTL with (nolock) on PD_CHR_CD = CM_CHR_CD "
                    strPkg2 = strPkg2 & " inner join MS_PKG_MAS with (nolock) on PM_PKG_CD = PD_PKG_CD "
                    strPkg2 = strPkg2 & " WHERE 1 = 1 "
                    strPkg2 = strPkg2 & " and PM_PKG_CD in (" & pkg_cd & ") "
                    strPkg2 = strPkg2 & " ORDER BY PD_VIEW_ORD, PD_CHR_CD desc, RNO "
                    Set Rs = DBexec(strPkg2, "study")
                    If Not Rs.Eof Then
                        ar_pkg_chr = Rs.getrows
                    End if
                    RSClose(Rs)

                    '패키지 안 교재목록 (바꾸기전 쿼리 냅둠...)
                    ar_pkg_book = null
                    'strSql = ""
                    'strSql = strSql & " SELECT  RNO = (ROW_NUMBER() OVER(ORDER BY CB_VIEW_ORD, CAST(A.BM_BOOK_FLG AS INT),  CB_BOOK_CD DESC)), CB_BOOK_CD, A.BM_BOOK_NM, ISNULL(A.BM_PRC, 0) as BM_PRC, A.BM_ORG_PRC, A.BM_BOOK_FLG, FNM = CC_KOR_NM, A.BM_EBOOK_FLG, BM_SALE_DT = CONVERT(CHAR(10), A.BM_SALE_DT, 20) "
                    'strSql = strSql & "         , ISNULL(BE_EBOOK_PATH,''), ISNULL(BE_EBOOK_NAME,'') "
                    'strSql = strSql & "         , ISNULL(B.BM_BOOK_CD, '') as eBM_BOOK_CD "
                    'strSql = strSql & "         , ISNULL(B.BM_PRC, 0) as eBM_PRC "
                    'strSql = strSql & " FROM    MS_CHR_BOOK WITH(NOLOCK) "
                    'strSql = strSql & " JOIN    MS_BOOK_MAS A WITH(NOLOCK) ON A.BM_BOOK_CD = CB_BOOK_CD AND A.BM_ITEM_KBN = 'B' "
                    'strSql = strSql & " JOIN    MS_COMM_CD WITH(NOLOCK) ON CC_COMM_KIND = '13' AND CC_COMM_CD = BM_BOOK_FLG "
                    'strSql = strSql & " LEFT    JOIN MS_BOOK_EBOOK WITH(NOLOCK) ON A.BM_BOOK_CD = BE_BOOK_CD "
                    'strSql = strSql & " LEFT    JOIN MS_BOOK_MAS B WITH(NOLOCK) ON B.BM_OLD_BOOK_CD = A.BM_BOOK_CD AND B.BM_ITEM_KBN = 'E' AND B.BM_BOOK_FLG IN ('1', '9') "
                    'strSql = strSql & " WHERE A.BM_BOOK_FLG IN ('1', '9') AND CB_CHR_CD in (select DISTINCT PD_CHR_CD from MS_PKG_DTL WITH(NOLOCK) where PD_PKG_CD = "&pkg_cd&") "

                    strSql = ""
                    strSql = strSql & " SELECT a2.RNO, a2.CB_BOOK_CD "
                    strSql = strSql & "         , A.BM_BOOK_NM, ISNULL(A.BM_PRC, 0) as BM_PRC, A.BM_ORG_PRC, A.BM_BOOK_FLG "
                    strSql = strSql & "         , FNM = CC_KOR_NM, A.BM_EBOOK_FLG, BM_SALE_DT = CONVERT(CHAR(10), A.BM_SALE_DT, 20) "
                    strSql = strSql & "         , ISNULL(BE_EBOOK_PATH,''), ISNULL(BE_EBOOK_NAME,'') "
                    strSql = strSql & "         , ISNULL(B.BM_BOOK_CD, '') as eBM_BOOK_CD "
                    strSql = strSql & "         , ISNULL(B.BM_PRC, 0) as eBM_PRC "
                    strSql = strSql & " FROM (select RNO = min(a1.RNO), a1.CB_BOOK_CD from ( "
                    strSql = strSql & "     select RNO = (ROW_NUMBER() OVER(ORDER BY isnull(PD_VIEW_ORD, 99), PD_CHR_CD desc, CB_VIEW_ORD)), CB_BOOK_CD "
                    strSql = strSql & "     from MS_PKG_DTL WITH(NOLOCK) inner join MS_CHR_BOOK WITH(NOLOCK) on PD_CHR_CD = CB_CHR_CD where PD_PKG_CD = "&pkg_cd&") a1 "
                    strSql = strSql & "     group by a1.CB_BOOK_CD) a2 "
                    strSql = strSql & " INNER JOIN MS_BOOK_MAS A WITH(NOLOCK) ON A.BM_BOOK_CD = CB_BOOK_CD AND A.BM_ITEM_KBN = 'B' "
                    strSql = strSql & " JOIN MS_COMM_CD WITH(NOLOCK) ON CC_COMM_KIND = '13' AND CC_COMM_CD = BM_BOOK_FLG "
                    strSql = strSql & " LEFT JOIN MS_BOOK_EBOOK WITH(NOLOCK) ON A.BM_BOOK_CD = BE_BOOK_CD "
                    strSql = strSql & " LEFT JOIN MS_BOOK_MAS B WITH(NOLOCK) ON B.BM_OLD_BOOK_CD = A.BM_BOOK_CD AND B.BM_ITEM_KBN = 'E' AND B.BM_BOOK_FLG IN ('1','9') "
                    strSql = strSql & " ORDER BY RNO "
                    Set Rs = DBexec(strSql, "study")
                    If Not Rs.Eof Then
                        ar_pkg_book = Rs.getrows
                    End if
                    RSClose(Rs)

                    '총 가격 (패키지 판매가격 + 교재가격 + e교재가격)
                    all_prc = 0

                    book_cnt = 0
                    book_prc = 0
                    ebook_cnt = 0
                    ebook_prc = 0

                    all_prc = pkg_prc

                    if isArray(ar_pkg_book) then
                        For b = 0 To Ubound(ar_pkg_book, 2)
                            if ar_pkg_book(5,b) <> "2" and ar_pkg_book(5,b) <> "3" and ar_pkg_book(5,b) <> "6" then
                                if ar_pkg_book(1,b) <> "" and ar_pkg_book(1,b) <> "0" then
                                    book_cnt = book_cnt + 1
                                    book_prc = book_prc + clng(ar_pkg_book(3,b))
                                end if

                                if ar_pkg_book(11,b) <> "" and ar_pkg_book(11,b) <> "0" then
                                    ebook_cnt = ebook_cnt + 1
                                    ebook_prc = ebook_prc + clng(ar_pkg_book(12,b))
                                end if
                            end if
                        next
                    end if

                    all_prc = all_prc + book_prc + ebook_prc
            %>
                <li id="list<%=area_no %>_<%=pkg_cd %>" class="lect_item package">
                    <div class="listName">
                        <p class="txt1"><br><span></span></p>
                        <p class="name"><%=tec_nm%></p>
                    </div>
                    <div class="listWrap">
                        <div class="listTitle  clearfix">
                            <div class="f_left listTxt">
                                <p class="subTxt"><%=hot_ky%></p>
                                <p class="subject"><a href="/vod/vod_pkg_view.asp?pkg_cd=<%=pkg_cd%>"><%=pkg_nm%></a></p>
                                <p class="subNoti"></p>
                            </div>

                        </div>
                        <div class="lecBook">
                            <ul class="bookList">
                                <li class="clearfix">
                                    <div class="f_left">
                                        <strong>수강기간</strong>

                                    <% if std_type = "P" then %>
                                        <span><%=std_day%>일</span>
                                    <% elseif std_type = "D" then %>
                                    <% end if %>

                                    </div>
                                </li>
                            </ul>
                        </div>

                        <div class="listotal f_right">
                            <div class="lecMoney">
                                <ul>
                                <% if Cint(dc_rt) <> 0 then %>
                                    <li>
                                        <strong class="name">강좌</strong>
                                        <strong class="price"><del><%=FormatNumber(org_prc, 0)%>원<del></strong>
                                    </li>
                                    <li class="package_dc">
                                        <strong class="name"><%=dc_rt%>% 할인</strong>
                                        <strong class="price"><%=FormatNumber(pkg_prc, 0)%>원</strong>
                                    </li>
                                <% else %> 
                                    <li>
                                        <strong class="name">강좌</strong>
                                        <strong class="price"><%=FormatNumber(org_prc, 0)%>원</strong>
                                    </li>
                                <% end if %>
                                
                                <% if book_cnt <> 0 then %>
                                    <li>
                                        <strong class="name">교재(<%=book_cnt%>)</strong>
                                        <strong class="price"><%=FormatNumber(book_prc, 0)%>원</strong>
                                    </li>
                                <% end if %>

                                <% if ebook_cnt <> 0 then %>
                                    <li>
                                        <strong class="name">e-교재(<%=ebook_cnt%>)</strong>
                                        <strong class="price"><%=FormatNumber(ebook_prc, 0)%>원</strong>
                                    </li>
                                <% end if %>
                                </ul>
                                <a href="javascript:;" onclick="fncPkgLayer(<%=area_no %>, <%=pkg_cd %>, 0);" class="cart_btn" title="결제">결제</a>
                            </div>
                        </div>
                    </div>
                    
                    <!-- 패키지정보 S-->
                    <div class="packagelst_wrap">
                        <div class="item total">
                            <div class="pkg_info">
                                <div class="total_price">
                                    총 결제금액 <strong><%=FormatNumber(all_prc, 0)%>원</strong>
                                </div>
                            </div> 
                        </div>

                    <% if isArray(ar_pkg_chr) then %>
                        <% 
                            tmp2_chr_cd = ""
                            for pC = 0 To Ubound(ar_pkg_chr, 2) 
                                if tmp2_chr_cd <> ar_pkg_chr(1,pC) then
                                    tmp2_chr_cd = ar_pkg_chr(1,pC)
                        %>
                        <div class="item">
                            <div class="pkg_tit"><%=Replace(ar_pkg_chr(7,pC), "<br />", "")%></div>
                            <div class="pkg_info">
                                <p class="tit"><%=Re_sqlFilter(ar_pkg_chr(2,pC))%></p>
                                <div class="leclistBtn clearfix">
                                    <div class="btn_lecplay f_left">
                                    <% if ar_pkg_chr(26,pC) <> "" Then %>
                                        <a style="cursor:pointer;" onclick="GongcampusFreePlay(40, <%=ar_pkg_chr(1,pC)%>, '', '');" class="prevw_btn">OT</a>
                                    <% End if %>
                                    <%
                                        mov_count = 0
                                        strSql = ""
                                        strSql = strSql & "SELECT	COUNT(1) "
                                        strSql = strSql & "FROM     MD_SPL_LIST WITH(NOLOCK) "
                                        strSql = strSql & "JOIN     MS_LEC_MAS WITH(NOLOCK) ON SL_CHR_CD = LM_CHR_CD AND SL_LEC_CD = LM_LEC_CD "
                                        strSql = strSql & "WHERE	SL_CHR_CD = " & ar_pkg_chr(1,pC) & " "
                                        strSql = strSql & "AND      LM_CONTENT_KEY <> '" & ar_pkg_chr(26,pC) & "' "
                                        Set Rs = DBexec(strSql, "study")
                                        If Not Rs.Eof Then
                                            mov_count = Rs(0)
                                        End if
                                        RSClose(Rs)

                                        if mov_count <> 0 Then
                                    %>
                                        <a style="cursor:pointer;" onclick="fucPkgPrevwLayer(<%=area_no %>, <%=pkg_cd %>, <%=ar_pkg_chr(1,pC)%>, '', 0);" class="prevw_btn">맛보기 <i></i></a>
                                    <%
                                        end if
                                    %>
                                    </div>
                                </div>
                                <div class="pkg_price">
                                    <%=FormatNumber(ar_pkg_chr(23, pC), 0)%>원
                                </div>
                            </div> 

                            <!-- 맛보기 미리보기 S -->
                            <div id="prevwPocket<%=area_no %>_<%=pkg_cd %>_<%=ar_pkg_chr(1,pC)%>" class="pocket_pop prevw" style="margin:0px -1px; display:none;">
                            </div>
                            <!-- 맛보기 미리보기 E -->
                        </div>
                        <% 
                                end if
                            next 
                        %>
                    <% end if %>

                        <!-- 패키지 미리보기 S -->
                        <div id="packagePocket<%=area_no %>_<%=pkg_cd %>" class="pocket_pop_prevw"></div>
                        <!-- 패키지 미리보기 E -->

                    </div>
                    <!-- 패키지정보 E-->
                </li>
            <%
                Next
            %>
            </ul>
        </div>

<%
    end if
End if
%>

<%
    if area_no = "1" or area_pkg_no = "1" Then
%>
    <script type="text/javascript">
        function fncGrpTab(a, n, p) {
            var v = $("#grptab_" + a + " li").eq(n).attr("gcd");
            var t = "<%=tab_yn%>";
            var p = p + "&grp_dom=" + v + "&tab_yn=" + t;
            fncPkgList(a, p);
        }

        function fncPkgTab(a, n, p) {
            var g = "<%=grp_dom%>";
            var v = $("#chrtab_" + a + " li").eq(n).attr("scd");
            var t = "<%=tab_yn%>";
            var p = p + "&grp_dom=" + g + "&sub_cd=" + v + "&tab_yn=" + t;


            fncPkgList(a, p);
        }

        function fncPkgStep(a, n, p) {
            var grp_dom = "<%=grp_dom%>";
            var menu_type = "<%=menu_type %>";
            var sub_cd = "";
            var step_cd = "";
            if (menu_type == "s" || menu_type == "s2") {
                sub_cd = "<%=sub_cd %>";
            } else {
                sub_cd = $("#chrstep_" + a + " li").filter(function () { return $(this).hasClass("on") }).attr("stc");
            }

            var v = $("#chrstep_" + a + " li").eq(n).attr("stc");
            var t = "<%=tab_yn%>";
            tec_cd = "<%=tec_cd %>";

            var gubn = "";

        <% if menu_type = "s2" then %>
            gubn = $("#chrgubn_" + a + " li").filter(function () { return $(this).hasClass("on") }).attr("gubn");
        <% end if %>

            var p = p + "&grp_dom=" + grp_dom + "&sub_cd=" + sub_cd + "&step_cd=" + v + "&tec_cd=" + tec_cd + "&tab_yn=" + t;

            fncPkgList(a, p);
        }

        function fncPkgTec(a, n, p) {
            var grp_dom = "<%=grp_dom%>";
            var menu_type = "<%=menu_type %>";
            var sub_cd = "";
            var step_cd = "";
            if (menu_type == "s" || menu_type == "s2") {
                step_cd = "<%=step_cd %>"; //학습단계 관련 추가
                sub_cd = $("#chrtab_" + a + " li").filter(function () { return $(this).hasClass("on") }).attr("scd");
                if(sub_cd == undefined){
                    sub_cd = "<%=sub_cd %>";
                }

            } else {
                sub_cd = $("#chrtab_" + a + " li").filter(function () { return $(this).hasClass("on") }).attr("scd");

                if(sub_cd == undefined){
                    sub_cd = "<%=sub_cd %>";
                }
                else if(sub_cd == ""){
                    sub_cd = "<%=sub_cd %>";
                }
                step_cd = "<%=step_cd%>";
            }
            var v = $("#chrtec_" + a + " li").eq(n).attr("tcd");

            var t = "<%=tab_yn%>";

            var p = p + "&grp_dom=" + grp_dom + "&sub_cd=" + sub_cd + "&step_cd=" + step_cd + "&tec_cd=" + v + "&tab_yn=" + t;

            fncPkgList(a, p);
        }

        function fncPkgGubn(a, n, p) {
            var grp_dom = "<%=grp_dom%>";
            var menu_type = "<%=menu_type %>";
            var sub_cd = "<%=sub_cd %>";

            var v = "";
            var t = "<%=tab_yn%>";
            var tec_cd = "<%=tec_cd %>";
            var gubn = $("#chrgubn_" + a + " li").eq(n).attr("gubn");

            var p = p + "&grp_dom=" + grp_dom + "&sub_cd=" + sub_cd + "&step_cd=" + v + "&tec_cd=" + tec_cd + "&tab_yn=" + t;

            fncPkgList(a, p);
        }

        function fncTecStepTab(a, p) {
            // not used
        }
    </script>
<%
    End if
%>

<script type="text/javascript">
    $(document).ready(function () {
        $("#grptab_<%=area_no %> li").click(function () {
            fncGrpTab("<%=area_no %>", $(this).index("#grptab_<%=area_no %> li"), "<%=pkg_para %>");
        });

        $("#chrtab_<%=area_no %> li").click(function () {
            fncPkgTab("<%=area_no %>", $(this).index("#chrtab_<%=area_no %> li"), "<%=pkg_para %>");
        });

        $("#chrstep_<%=area_no %> li").click(function () {
            fncPkgStep("<%=area_no %>", $(this).index("#chrstep_<%=area_no %> li"), "<%=pkg_para %>");
        });

        $("#chrtec_<%=area_no %> li").click(function () {
            fncPkgTec("<%=area_no %>", $(this).index("#chrtec_<%=area_no %> li"), "<%=pkg_para %>");
        });

        $("#chrgubn_<%=area_no %> li").click(function () {
            fncPkgGubn("<%=area_no %>", $(this).index("#chrgubn_<%=area_no %> li"), "<%=pkg_para %>");
        });

        // 선생님/학습단계 탭 열기/닫기
        $("#tec_step_tab_<%=area_no %>").click(function () {
            //fncTecStepTab("<%=area_no %>", "<%=pkg_para %>");
        });
    });
</script>



