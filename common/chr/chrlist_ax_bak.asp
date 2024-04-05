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

    cate_cd = fncRequest("cate_cd") ' 직군
    chr_grp = fncRequest("chr_grp") ' 직렬 사용
    chr_tab = fncRequest("chr_tab")
    chr_step = fncRequest("chr_step") ' 학습 단계
    chr_tec = fncRequest("chr_tec")
    dom_cd  = fncRequest("dom_cd")
    sel_type= fncRequest("sel_type")
    home_cd = fncRequest("home_cd")
    chr_exam = fncRequest("chr_exam")
    chr_new = fncRequest("chr_new")
    chr_type  = fncRequest("chr_type")
    grp_dom = fncRequest("grp_dom")
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
    tab_yn = fncRequest("tab_yn")
    s3_gubn = fncRequest("s3_gubn") 's3 전체보기 값 pick // all // pkg

    'scd_self= fncRequest("scd_self") 사용안하도록 처리 20210209

    'if grp_cd = "" And sub_cd = "" And chr_cd = "" Then
    '    if dom_cd = "3" Then
    '        sub_cd = "44"
    '    Else
    '        sub_cd = "61"
    '    End if
    'End if

    eventChrStr = ","
    If cdate(lo_now_date) < cdate("2022-03-16") then
        ' 행정법 1위 라인업 기획전 강좌 할인률 30% 적용
        eventChrList = null
        strSql = ""
        strSql = strSql & " SELECT CM_CHR_CD "
        strSql = strSql & " FROM MS_CHR_MAS WITH(NOLOCK) "
        strSql = strSql & " JOIN MS_CHR_DTL WITH(NOLOCK) ON CD_CHR_CD = CM_CHR_CD "
        strSql = strSql & " JOIN MS_SUB_CHR WITH(NOLOCK) ON SC_CHR_CD = CM_CHR_CD "
        strSql = strSql & " JOIN MS_GRP_CHR WITH(NOLOCK) ON GC_CHR_CD = CM_CHR_CD "
        strSql = strSql & " WHERE 1=1 "
        strSql = strSql & " AND CM_DOM_CD = '4' " ' -- 9/7급
        strSql = strSql & " AND CM_OPEN_FLG IN ('Y', 'D') " ' 판매중
        strSql = strSql & " AND SC_SUB_CD = '65' " ' 행정법
        strSql = strSql & " AND CM_CHR_PRC > 0 " ' 무료 강좌 제외
        strSql = strSql & " AND CD_EVENT_FLG = 'N' " ' 무료 특강 제외
        strSql = strSql & " AND CM_NEW_FLG = 'Y' " ' 신규 강좌
        strSql = strSql & " AND GC_GRP_CD IN (501, 502, 503, 504, 507, 510) "
    	Set Rs = DBexec(strSql, "study")
    	if Not Rs.EOF then
    	    eventChrList = Rs.GetRows()
    	end If
    	Call DBClose(Rs)

    	if isArray(eventChrList) Then
    		For i=0 to Ubound(eventChrList, 2)
    			eventChrStr = eventChrStr & eventChrList(0,i) & ","
    		next
    	end if
    end if

    If cdate(lo_now_date) < cdate("2022-04-08") then
        eventChrStr = eventChrStr & "17626,17627,17629,17630,18161,17625,17624,"
    end if

    If cdate(lo_now_date) < cdate("2022-04-09") then
        eventChrStr3 = "18175,17042,17458,17733,17731,17748,16862,17373,"
    end if

    eventChrStr2 = ","
    If cdate(lo_now_date) < cdate("2022-04-03") then
        ' 조태정T 파이널 독해 특강 홍보 이벤트 강좌 할인률 100% 적용
        eventChrList2 = null
        strSql = ""
        strSql = strSql & " SELECT CM_CHR_CD "
        strSql = strSql & " FROM MS_CHR_MAS WITH(NOLOCK) "
        strSql = strSql & " JOIN MS_CHR_DTL WITH(NOLOCK) ON CD_CHR_CD = CM_CHR_CD "
        strSql = strSql & " JOIN MS_SUB_CHR WITH(NOLOCK) ON SC_CHR_CD = CM_CHR_CD "
        strSql = strSql & " WHERE 1=1 "
        strSql = strSql & " AND CM_CHR_CD IN (18333) "
    	Set Rs = DBexec(strSql, "study")
    	if Not Rs.EOF then
    	    eventChrList2 = Rs.GetRows()
    	end If
    	Call DBClose(Rs)

    	if isArray(eventChrList2) Then
    		For i=0 to Ubound(eventChrList2, 2)
    			eventChrStr2 = eventChrStr2 & eventChrList2(0,i) & ","
    		next
    	end if
    end if


    '--------------------------------------------------------------------------------------------------------------------------

    if chr_tec = "" Then chr_tec = "N"
    if grp_ord = "" Then grp_ord = "N"
    if chr_open = "" Then chr_open = "Y" '둘다노출 "Y','D"

    strFrom = ""
    strFrom = strFrom & "FROM   V_CHR_LIST_ON WITH(NOLOCK) "

    if chr_type = "s3" then
        strFrom = strFrom & " left join MS_MEGAPICK_DTL with (nolock) on MPD_CHR_CD = CM_CHR_CD "
        strFrom = strFrom & " left join MS_MEGAPICK_MAS with (nolock) on MPM_CD = MPD_MPM_CD "
    end if

    if chr_type = "s3" and s3_gubn = "pkg" then
        strFrom = strFrom & " left join MS_PKG_DTL with (nolock) on PD_CHR_CD = CM_CHR_CD "
        strFrom = strFrom & " left join MS_PKG_MAS with (nolock) on PM_PKG_CD = PD_PKG_CD "
    end if

    if grp_cd <> "" Then strFrom = strFrom & "JOIN  MS_GRP_CHR WITH(NOLOCK) ON GC_CHR_CD = CM_CHR_CD "
    if chr_grp = "Y" Then
        strFrom = strFrom & " JOIN MS_SUB_GRP WITH(NOLOCK) ON SG_DOM_CD = SM_DOM_CD AND SG_SUB_CD = SM_SUB_CD "
        strFrom = strFrom & " AND SG_CATE_CD = '" & cate_cd & "' "
        strFrom = strFrom & " AND SG_GRD_FLG = '" & grd_fg & "' "
        strFrom = strFrom & " JOIN MS_JOB_GRP_MAS WITH(NOLOCK) ON JGM_CATE_CD = SG_CATE_CD AND SG_GRP_CD = JGM_GRP_CD AND JGM_VIEW_YN = 'Y' "
        'strFrom = strFrom & " JOIN MS_JOB_CATE_MAS CATE WITH(NOLOCK) ON JCM_CATE_CD = JGM_CATE_CD AND JCM_VIEW_YN = 'Y' "
    end if
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
    'if grd_fg <> "" Then strFrom = strFrom & "AND   CM_GRD_FLG LIKE '%" & grd_fg & "%' "
    if grd_fg <> "" Then strFrom = strFrom & "AND   CHARINDEX('" & grd_fg & "', CM_GRD_FLG) > 0 "
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

    ' 직렬
    if chr_grp = "Y" Then
        strSql = ""
        strSql = strSql & "SELECT	RNO = (ROW_NUMBER() OVER(ORDER BY ISNULL(JGM_VIEW_ORD, 99))), JGM_GRP_CD, JGM_GRP_NM, ISNULL(JGM_VIEW_ORD, 99) "
        strSql = strSql & strFrom
        strSql = strSql & "GROUP BY JGM_CATE_CD, JGM_GRP_CD, JGM_GRP_NM, ISNULL(JGM_VIEW_ORD, 99) "
        strSql = strSql & "ORDER BY RNO "

        if cook_id = "w55ps" OR cook_id = "jyleems" or cook_id = "jyheo" or cook_id = "wofl2478" or cook_id = "bingo" or cook_id = "young3421" or cook_id = "qpalzm200" then
            'response.write "strsql" &strSql & "<br><br>"
        end if
	    Set Rs = DBexec(strSql, "study")
	    If Not Rs.Eof Then
            ar_grp = Rs.GetRows()
	    End if
        RSClose(Rs)

        if grp_dom = "" Then
            if isArray(ar_grp) Then
                Randomize
                r = Int((Ubound(ar_grp, 2) * Rnd))
                grp_dom = ar_grp(1, r)
            End if
        End if
    End if

    ' 과목
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
                if grp_dom <> "" then
                    strSql = strSql & "AND  SG_GRP_CD = '" & grp_dom & "' "
                end if
                strSql = strSql & "GROUP BY SC_SUB_CD, SM_SUB_NM, " & strOrderSet & " "
        End Select
        strSql = strSql & "ORDER BY RNO "

        ' if cook_id = "w55ps" OR cook_id = "jyleems" or cook_id = "jyheo" or cook_id = "wofl2478" or cook_id = "bingo" or cook_id = "young3421" or cook_id = "cereall" or cook_id = "ehyoo" then
        '    response.write "strsql" &strsql
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

                    '랜덤 처리
                    if chr_type = "s3" then
                        r = (Ubound(ar_tab, 2) * Rnd)
                    end if

                    sub_cd = ar_tab(1, r)
                End if
            'end if
        End if
    End if

    '학습단계
    if chr_type = "s2" or chr_type = "g" then '신규에서만 사용. 이지영!!!
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
            if chr_type = "g" then
                strSql = strSql & "AND  SG_GRP_CD = '" & grp_dom & "' "
            end if
            strSql = strSql & "GROUP BY CM_CHR_FLG, CC_KOR_NM, CC_NUM1 "
            strSql = strSql & "ORDER BY RNO "

            Set Rs = DBexec(strSql, "study")
	        If Not Rs.Eof Then
                ar_step = Rs.GetRows()
	        End if
            RSClose(Rs)
        End if
    End if


    's3 전용
    if chr_type = "s3" then '강사홈 강좌리스트에서만 사용. 김태영!!!
        if chr_step = "Y" Then

            '---------------------------------------s3 메가픽 유무 확인
            if s3_gubn = "" Then
                strSql = ""
                strSql = strSql & "SELECT DISTINCT 1 "
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
                strSql = strSql & " and MPM_DEL_YN = 'N' and MPM_OPEN_YN = 'Y' "
                strSql = strSql & " and (MPD_SANGSI_YN = 'Y' or '" & lo_now_date & "' between MPD_SDT and MPD_EDT) "

                Set Rs = DBexec(strSql, "study")
                If Not Rs.Eof Then
                    s3_gubn = "pick"
                else
                    s3_gubn = "all"
                End if
                RSClose(Rs)
            end if
            

            '---------------------------------------s3 구분
            strSql = ""
            strSql2 = ""

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

            '전체 강좌용 sql 2로 복사
            strSql2 = strSql

            strSql = "select * from ( SELECT DISTINCT 1 as rank, 'pick' as gubn, 'Mega''s Pick' as nm " & strSql
            strSql = strSql & " and MPM_DEL_YN = 'N' and MPM_OPEN_YN = 'Y' "
            strSql = strSql & " and (MPD_SANGSI_YN = 'Y' or '" & lo_now_date & "' between MPD_SDT and MPD_EDT) "

            '합체
            strSql = strSql & " UNION ALL " & " SELECT DISTINCT 2 as rank, 'all' as gubn, '전체 강좌' as nm " & strSql2 & " "

            '패키지 추가 (별로인거 같은데 그냥 할게요. 항상 없는 시간이 이번에도 없다네요.)
            if cook_id = "cereall" or cook_id = "je0737" or cook_id = "krimu" or cook_id = "eunah0502" then
                strSql = strSql & " UNION ALL " & " SELECT DISTINCT 3 as rank, 'pkg' as gubn, '패키지' as nm "
                strSql = strSql & " from MS_PKG_MAS with (nolock) inner join MS_PKG_DTL with (nolock) on PM_PKG_CD = PD_PKG_CD "
                strSql = strSql & " WHERE PM_OPEN_YN = 'Y' and PM_DEL_FLG = 'N' and PD_CHR_CD in ( "
                strSql = strSql & " select DISTINCT CM_CHR_CD " & strSql2 & ") "
            end if

            strSql = strSql & " ) as t order by rank"

            Set Rs = DBexec(strSql, "study")
	        If Not Rs.Eof Then
                ar_gubn = Rs.GetRows()
	        End if
            RSClose(Rs)


            '---------------------------------------s3 학습단계
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

            if s3_gubn = "pick" then
                strSql = strSql & " and MPM_DEL_YN = 'N' and MPM_OPEN_YN = 'Y' "
                strSql = strSql & " and (MPD_SANGSI_YN = 'Y' or '" & lo_now_date & "' between MPD_SDT and MPD_EDT) "

            elseif s3_gubn = "pkg" then
                strSql = strSql & " and PM_OPEN_YN = 'Y' and PM_DEL_FLG = 'N' "

            end if

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
            if chr_type = "g" then
                strSql = strSql & "AND  SG_GRP_CD = '" & grp_dom & "' "
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


    '강좌 리스트---------------------------------------------------------------------------------------------
    strSql = ""
    'strSql = strSql & "SELECT	RNO = (ROW_NUMBER() OVER(ORDER BY CM_DOM_CD, " & strOrderSet & ", TM_SHOW_ORDER, CC_NUM1, CM_CHR_FLG, CM_CHR_SDT DESC)), "
    strSql = strSql & "SELECT "
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

    's3 메가픽
    if s3_gubn = "pick" then
        strSql = strSql & "         , MPM_CD, MPM_VIEW_ORD, MPM_GRP_NM, MPM_OPEN_YN, MPM_DEL_YN "
        strSql = strSql & "         , MPD_IDX, MPD_MPM_CD, MPD_VIEW_ORD, MPD_SDT, MPD_EDT, MPD_SANGSI_YN "
    end if

    's3 패키지
    if s3_gubn = "pkg" then
        strSql = strSql & "         , PM_PKG_CD, PM_PKG_NM, PM_PKG_PRC, PM_ORN_PRC, PM_DC_RT, PM_STD_DAY "
        strSql = strSql & "         , PD_PKG_CD "
    end if

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

    if chr_type = "g" then
        strSql = strSql & " AND  SG_GRP_CD = '" & grp_dom & "' "
    end if

    's3 메가픽 조건
    if s3_gubn = "pick" then
        strSql = strSql & " and MPM_DEL_YN = 'N' and MPM_OPEN_YN = 'Y' "
        strSql = strSql & " and (MPD_SANGSI_YN = 'Y' or '" & lo_now_date & "' between MPD_SDT and MPD_EDT) "
        strSql = strSql & " ORDER BY MPM_VIEW_ORD, MPD_VIEW_ORD, RNO "

    elseif s3_gubn = "pkg" then
        strSql = strSql & " and PM_OPEN_YN = 'Y' and PM_DEL_FLG = 'N' "
        strSql = strSql & " ORDER BY PM_PKG_CD DESC, RNO "
        'strSql = strSql & " ORDER BY PM_PKG_CD DESC, PD_VIEW_ORD, RNO "    ------ 이걸로 추후 해야함

    else
        strSql = strSql & " ORDER BY RNO "
    end if

    if cook_id = "monome" OR cook_id = "jyleems" or cook_id = "jyheo" or cook_id = "wofl2478" or cook_id = "bingo" or cook_id = "young3421" or cook_id = "jhlee" or cook_id = "qpalzm200"  or cook_id = "ehyoo" OR cook_id = "cereall" then
        'response.write "strSql " &strSql
        'response.end
    end if
    Set Rs = DBexec(strSql, "study")
	If Not Rs.Eof Then
        ar_chr = Rs.GetRows()
	End if
    RSClose(Rs)





    '파라미터
    chr_para = "cate_cd=" & cate_cd & "&chr_grp=" & chr_grp & "&chr_tab=" & chr_tab & "&chr_step=" & chr_step & "&chr_tec=" & chr_tec & "&sel_type=" & sel_type & "&dom_cd=" & dom_cd & "&chr_type=" & chr_type & "&home_cd=" & home_cd & "&grp_cd=" & grp_cd & "&chr_cd=" & chr_cd & "&chr_exam=" & chr_exam & "&area_no=" & area_no & "&grp_ord=" & grp_ord & "&chr_new=" & chr_new & "&chr_open=" & chr_open & "&grd_fg=" & grd_fg & "&free_yn=" & free_yn & "&event_yn=" & event_yn & "&now="&left(lo_now_date,10)
%>

<%
    if chr_type = "s2" or chr_type = "g" Then '신규UI적용
%>
    <%
        if chr_grp = "Y" Then
            if isArray(ar_grp) Then
    %>
                <div class="lecTab_wrap" style="border-top: 1px solid #000;">
                    <div id="grptab_<%=area_no %>" class="lecTab">
                        <p class="tit"><span>직렬</span></p>
	                    <ul class="lec_list">
                            <%
                                For i = 0 To Ubound(ar_grp, 2)
                                    rno = ar_grp(0, i)
                                    gcd = ar_grp(1, i)
                                    gnm = ar_grp(2, i)
                                    ord = ar_grp(3, i)
                            %>
                                    <li gcd="<%=gcd %>" class="<% if CStr(grp_dom) = CStr(gcd) Then %> on<% End if %>">
                                        <button type="button" class="lec_item">
                                            <span class=""><%=gnm %>
                                                <%If cdate(lo_now_date) < GetGrpNewOffDay(gcd,h_dcd) then%>
                                                    <img src="<%=img_main%>/common/ic_new.gif" style="vertical-align:middle; margin-left:3px;" />
                                                <%end if %>
                                            </span>
                                        </button>
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
        if chr_tab = "Y" Then
            if isArray(ar_tab) Then
    %>
                <div class="lecTab_wrap" <% if chr_type <> "g" then %> style="border-top: 1px solid #000;" <% end if %>>
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
        if chr_tec = "Y" Then
            if isArray(ar_tec) Then
    %>
                <div class="teaTab_wrap" <% if tab_yn <> "Y" then %> style="display:none" <% end if %>>
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
            End if
        End if
    %>
    <%
        if chr_step = "Y" Then
            if isArray(ar_step) Then
    %>
                <div class="stepTab_wrap" <% if tab_yn <> "Y" then %> style="display:none" <% end if %>>
                    <div id="chrstep_<%=area_no %>" class="stepTab">
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


<%
    elseif chr_type = "s3" Then '강사홈 강좌리스트용 2022-07-25
%>
    <%
        '과목
        sub_cnt = 0

        if isArray(ar_tab) Then
            sub_cnt = Ubound(ar_tab, 2)+1
        end if

        gubnV = true
        if chr_tab = "Y" and sub_cnt > 1 Then
            if isArray(ar_tab) Then
                gubnV = false
    %>
                <div class="lecTab_wrap" <% if chr_type <> "g" then %> style="border-top: 1px solid #000;" <% end if %>>
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
        '구분
        if chr_tab = "Y" Then
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
                                    <li gubn="<%=gubn %>" class="<% if CStr(s3_gubn) = CStr(gubn) Then %>on<% End if %>">
                                        <button type="button" class="gubn_item"><span class=""><%=name %></span></button>
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
        '학습단계
        if chr_step = "Y" Then
            if isArray(ar_step) Then
    %>
                <div class="stepTab_wrap">
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
                                <li scd="<%=scd %>" class="<% if Len(snm) <= 2 Then %>small<% End if %><% if CStr(sub_cd) = CStr(scd) Then %> on<% End if %>">
                                <a style="cursor:pointer;"><%=snm %>
                                    <%If cdate(lo_now_date) < GetSubNewOffDay(scd,h_dcd) then%>
                                        <img src="<%=img_main%>/common/ic_new.gif" style="vertical-align:middle; margin-left:3px;" />
                                    <%end if %>
                                </a>
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





<%If chr_type = "s2" or chr_type = "g" then%>
<!-- 선생님/학습단계 여닫기 S -->
<div class="conditionSearch_wrap">
    <div class="condition_btn" <% If grp_cd = "663" or grp_cd="674,675" or grp_cd="656" or grp_cd="688" Then %>style="display:none;" <%End If %>>
        <% ' 열기 클릭시 class="on" %>
        <% if tab_yn <> "Y" then %>
            <a href="javascript:void(0);" id="tec_step_tab_<%=area_no %>" data-tab="Y" title="선생님/학습단계 열기">선생님/학습단계 열기</a>
        <% else %>
            <a href="javascript:void(0);" id="tec_step_tab_<%=area_no %>" data-tab="N" class="on" title="선생님/학습단계 닫기">선생님/학습단계 닫기</a>
        <% end if %>
    </div>
</div>
<script>
/*
    $('.conditionSearch_wrap .condition_btn a').click(function () {
        if ($(this).hasClass("on")) {
            $(this).removeClass('on');
            $(this).text('선생님/학습단계 열기');
            searchTabOff();

        } else {
            $(this).addClass('on');
            searchTabView();
            $(this).text('선생님/학습단계 닫기');
        }
    });
    */

    function searchTabView(){
        $('.stepTab_wrap').css("display", "block");
        $('.teaTab_wrap').css("display", "block");
    }

    function searchTabOff(){
        $('.stepTab_wrap').css("display", "none");
        $('.teaTab_wrap').css("display", "none");
    }
    <% if tab_yn = "Y" then %>
        //searchTabView();
    <% end if %>
</script>
<!-- 선생님/학습단계 여닫기 E -->
<%end if%>


<% if isArray(ar_chr) Then %>
    <% if chr_type = "s3" and s3_gubn = "pick" then %>
        <p class="tit_s3">MEGA’S PICK!</p>

        <div class="lectlist ver2">
            <%
                tmp_mpm_cd = 0
                
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

                    mpm_cd = ar_chr(31, i)
                    mpm_view_ord = ar_chr(32, i)
                    mpm_grp_nm = ar_chr(33, i)


                    awm = ""
                    Select Case awf
                        Case "W" : awm = "[학원 강의기간 : " & acd & "주 과정]"
                        Case "M" : awm = "[학원 강의기간 : " & acd & "개월 과정]"
                    End Select

                    ' "군무원 전용" 딱지 붙는 강좌코드
                    ' 2022_07 이후로 군무원 전용이라는 것은 사라질 예정인 1회용이라 하드코딩 처리함 (군무원 전용 사리지면 삭제해도 무관)
                    only_army = False
                    if dcd = "5" and instr("/18261/18277/18702/18606/17312/16875/18269/17890/17891/17529/17318/18666/17847/", "/"&cstr(ccd)&"/") > 0 then
                        only_army = True
                    end if
            %>

            <% if i = 0 then %>
                <div class="lectlist_s3"><p class="subtit"><%=mpm_grp_nm%></p>
                <ul class="lectlist_wrap">

            <% elseif tmp_mpm_cd <> 0 and tmp_mpm_cd <> mpm_cd then %>
                </ul></div>
                <div class="lectlist_s3"><p class="subtit"><%=mpm_grp_nm%></p>
                <ul class="lectlist_wrap">

            <% 
                end if 
                tmp_mpm_cd = mpm_cd
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
                                        <% if mke = "2" Then %><span class="icon8">UPDATE</span> <% End if %>
                                        <% if mke = "3" Then %><span class="icon6">예정</span> <% End if %>
                                        <% if ber = "1" Then %><span class="icon3">다다익선</span> <% End if %>
                                        <!--<% if evt = "Y" Then %><span class="icon4">이벤트</span> <% End if %>-->
                                        <% if gfg="97" Then %><span class="icon7">9/7급</span>
                                        <% elseif gfg="9" Then %><span class="icon7">9급대비</span>
                                        <% elseif gfg="7" Then %><span class="icon7">7급대비</span>
                                        <% elseif only_army Then %><span class="icon7">군무원 전용</span><% End if %>
                                        <% if cdate(lo_now_date) < cdate("2022-04-08") then %>
                                            <% if instr(eventChrStr, ccd) > 0 then %>
                                            <span class="icon_30dc">30% EVENT</span>
                                            <% end if %>
                                        <% end if %>
                                        <% if cdate(lo_now_date) < cdate("2022-04-09") then %>
                                            <% if instr(eventChrStr3, ccd) > 0 then %>
                                            <span class="icon_50dc">50% EVENT</span>
                                            <% end if %>
                                        <% end if %>
                                        <% if cdate(lo_now_date) < cdate("2022-04-03") then %>
                                            <% if instr(eventChrStr2, ccd) > 0 then %>
                                            <span class="icon_100dc">100% EVENT</span>
                                            <% end if %>
                                        <% end if %>
                                    </p>
                                    <p class="subTxt"><%=hky %></p>
                                    <p class="subject"><a href="/vod/vod_chr_view.asp?chr_cd=<%=ccd %>"><%=cnm %></a></p>
                                    <p class="subNoti"><%=awm %> <% if cvw = "Y" Then %><%=replace(cvm,chr(13)&chr(10),"<br>") %><% End if %></p>
                                </div>

                            </div>
                            <%
                                b_bnt = 0
                                e_bnt = 0
                                if bnt > 0 Then
                                    strSql = ""
                                    strSql = strSql & " SELECT  RNO = (ROW_NUMBER() OVER(ORDER BY CB_VIEW_ORD, CAST(A.BM_BOOK_FLG AS INT),  CB_BOOK_CD DESC)), CB_BOOK_CD, A.BM_BOOK_NM, A.BM_PRC, A.BM_ORG_PRC, A.BM_BOOK_FLG, FNM = CC_KOR_NM, A.BM_EBOOK_FLG, BM_SALE_DT = CONVERT(CHAR(10), A.BM_SALE_DT, 20) "
                                    strSql = strSql & "         , ISNULL(BE_EBOOK_PATH,''), ISNULL(BE_EBOOK_NAME,'') "
                                    strSql = strSql & "         , B.BM_BOOK_CD "
                                    strSql = strSql & "         , ISNULL(B.BM_PRC, 0) "
                                    strSql = strSql & " FROM    MS_CHR_BOOK WITH(NOLOCK) "
                                    strSql = strSql & " JOIN    MS_BOOK_MAS A WITH(NOLOCK) ON A.BM_BOOK_CD = CB_BOOK_CD AND A.BM_ITEM_KBN = 'B' "
                                    strSql = strSql & " JOIN    MS_COMM_CD WITH(NOLOCK) ON CC_COMM_KIND = '13' AND CC_COMM_CD = BM_BOOK_FLG "
                                    strSql = strSql & " LEFT    JOIN MS_BOOK_EBOOK WITH(NOLOCK) ON A.BM_BOOK_CD = BE_BOOK_CD "
                                    strSql = strSql & " LEFT    JOIN MS_BOOK_MAS B WITH(NOLOCK) ON B.BM_OLD_BOOK_CD = A.BM_BOOK_CD AND B.BM_ITEM_KBN = 'E' AND B.BM_BOOK_FLG IN ('1', '9') "
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
                                            b_prc_sum = 0
                                            eb_prc_sum = 0
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
                                                eb_bcd = ar_book(11, b)
                                                eb_prc = ar_book(12, b)

                                                if b_bfg <> "2" and b_bfg <> "3" and b_bfg <> "6" then
                                                    b_bnt = cdbl(b_bnt) + 1 
                                                end if 

                                                if eb_bcd <> "" then
                                                    e_bnt = cdbl(e_bnt) + 1 
                                                end if 
                                                b_prc_sum = cdbl(b_prc_sum) + cdbl(b_prc) ' 연결 교재 총 가격
                                                eb_prc_sum = cdbl(eb_prc_sum) + cdbl(eb_prc)
                                        %>
                                                <li class="clearfix">
                                                    <div class="f_left">
                                                        <% if b_bfg <> "2" and b_bfg <> "3" and b_bfg <> "6" then %>
                                                            <strong>교재</strong>
                                                        <% end if %>
                                                        <% if eb_bcd <> "" then %>
                                                            <strong>e-교재</strong>
                                                        <% end if %>
                                                        <span>
                                                            <%=b_bnm %>
                                                            <%if (b_bfg = "4" Or b_bfg = "5") And (b_sdt <> "" And CDate(b_sdt) > Date()) then%> 
                                                                (<strong><%=Month(b_sdt) & "/" & Day(b_sdt) %></strong> 입고예정)
                                                            <%end if%>
                                                        </span>
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

                            <div class="listotal f_right">
                                <div class="lecMoney">
                                    <ul>
                                        <li>
                                            <strong class="name">강좌</strong>
                                            <strong class="price">
                                            <%=FormatNumber(prc, 0) %>원
                                            </strong>
                                        </li>
                                        <% if bnt > 0 Then %>
                                        <li>
                                            <strong class="name">교재(<%=b_bnt%>)</strong>
                                            <strong class="price">
                                            <%=FormatNumber(b_prc_sum, 0)%>원
                                            </strong>
                                        </li>
                                        <% end if %>
                                        <% if e_bnt > 0 Then %>
                                        <li>
                                            <strong class="name">e-교재(<%=e_bnt%>)</strong>
                                            <strong class="price">
                                            <%=FormatNumber(eb_prc_sum, 0)%>원
                                            </strong>
                                        </li>
                                        <% end if %>                              
                                    </ul>
                                    <a href="javascript:void(0);" onclick="fncCartLayer(<%=area_no %>, <%=ccd %>);" class="cart_btn" title="장바구니">장바구니</a>
                                </div>
                            </div>

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

                                    mov_count = 0
                                    strSql = ""
                                    strSql = strSql & "SELECT	COUNT(1) "
                                    strSql = strSql & "FROM     MD_SPL_LIST WITH(NOLOCK) "
                                    'strSql = strSql & "JOIN     MS_CHR_MAS WITH(NOLOCK) ON SL_CHR_CD = CM_CHR_CD "
                                    strSql = strSql & "JOIN     MS_LEC_MAS WITH(NOLOCK) ON SL_CHR_CD = LM_CHR_CD AND SL_LEC_CD = LM_LEC_CD "
                                    strSql = strSql & "WHERE	SL_CHR_CD = " & ccd & " "
                                    strSql = strSql & "AND      LM_CONTENT_KEY <> '" & ori & "' "
                                    Set Rs = DBexec(strSql, "study")
                                    If Not Rs.Eof Then
                                        mov_count = Rs(0)
                                    End if
                                    RSClose(Rs)

                                    if mov_count <> 0 Then
                                %>
                                            <a style="cursor:pointer;" onclick="fucPrevwLayer(<%=area_no %>, <%=ccd %>, '');" class="prevw_btn">맛보기 <%=mov_count%></a>
                                <%
                                    End if
                                %>
                            </div>
                            <!--
                            <div class="btn_buy f_right">
                                <% if chr_type = "f" Then %>
                                    <a onclick="fncGoPay(<%=area_no %>, 'P', <%=ccd %>);" style="cursor:pointer; margin-left:90px;" class="cbuy_btn">결제하기</a>
                                <% Else %>
                                    <a onclick="fncGoPay(<%=area_no %>, 'C', <%=ccd %>);" style="cursor:pointer;" class="cart_btn">장바구니</a>
                                    <a onclick="fncGoPay(<%=area_no %>, 'P', <%=ccd %>);" style="cursor:pointer;" class="cbuy_btn">결제하기</a>
                                <% End if %>
                            </div>
                            -->
                        </div>
                        <%If ccd = "14775" then%>
                        <!--<span class="tag" style="position:absolute;right:10px;top:0;border:1px solid red;">test</span>-->
                        <%End if%>

                        <!-- 장바구니 미리보기 S -->
                        <div id="cartPocket<%=area_no %>_<%=ccd %>" class="pocket_pop_prevw">
                        </div>
                        <!-- 장바구니 미리보기 E -->

                        <!-- 맛보기 미리보기 S -->
                        <div id="prevwPocket<%=area_no %>_<%=ccd %>" class="pocket_pop prevw" style="display:none">
                        </div>
                        <!-- 맛보기 미리보기 E -->
                    </li>

            <% if i = Ubound(ar_chr, 2) then %>
                </ul></div>
            <% end if %>
            <%
                Next
            %>
        </div>



    <% elseif chr_type = "s3" and s3_gubn = "pkg" then %>
        <p class="tit_s3">패키지</p>

        <div class="lectlist ver2">
            <%
                tmp_pkg_cd = 0
                
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

                    pkg_cd = ar_chr(31, i)
                    pm_pkg_nm = ar_chr(32, i)


                    awm = ""
                    Select Case awf
                        Case "W" : awm = "[학원 강의기간 : " & acd & "주 과정]"
                        Case "M" : awm = "[학원 강의기간 : " & acd & "개월 과정]"
                    End Select

                    ' "군무원 전용" 딱지 붙는 강좌코드
                    ' 2022_07 이후로 군무원 전용이라는 것은 사라질 예정인 1회용이라 하드코딩 처리함 (군무원 전용 사리지면 삭제해도 무관)
                    only_army = False
                    if dcd = "5" and instr("/18261/18277/18702/18606/17312/16875/18269/17890/17891/17529/17318/18666/17847/", "/"&cstr(ccd)&"/") > 0 then
                        only_army = True
                    end if
            %>

            <% if i = 0 then %>
                <div class="lectlist_s3"><p class="subtit"><%=pm_pkg_nm%></p>
                <ul class="lectlist_wrap">

            <% elseif tmp_pkg_cd <> 0 and tmp_pkg_cd <> pkg_cd then %>
                </ul></div>
                <div class="lectlist_s3"><p class="subtit"><%=pm_pkg_nm%></p>
                <ul class="lectlist_wrap">

            <% 
                end if 
                tmp_pkg_cd = pkg_cd
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
                                        <% if mke = "2" Then %><span class="icon8">UPDATE</span> <% End if %>
                                        <% if mke = "3" Then %><span class="icon6">예정</span> <% End if %>
                                        <% if ber = "1" Then %><span class="icon3">다다익선</span> <% End if %>
                                        <!--<% if evt = "Y" Then %><span class="icon4">이벤트</span> <% End if %>-->
                                        <% if gfg="97" Then %><span class="icon7">9/7급</span>
                                        <% elseif gfg="9" Then %><span class="icon7">9급대비</span>
                                        <% elseif gfg="7" Then %><span class="icon7">7급대비</span>
                                        <% elseif only_army Then %><span class="icon7">군무원 전용</span><% End if %>
                                        <% if cdate(lo_now_date) < cdate("2022-04-08") then %>
                                            <% if instr(eventChrStr, ccd) > 0 then %>
                                            <span class="icon_30dc">30% EVENT</span>
                                            <% end if %>
                                        <% end if %>
                                        <% if cdate(lo_now_date) < cdate("2022-04-09") then %>
                                            <% if instr(eventChrStr3, ccd) > 0 then %>
                                            <span class="icon_50dc">50% EVENT</span>
                                            <% end if %>
                                        <% end if %>
                                        <% if cdate(lo_now_date) < cdate("2022-04-03") then %>
                                            <% if instr(eventChrStr2, ccd) > 0 then %>
                                            <span class="icon_100dc">100% EVENT</span>
                                            <% end if %>
                                        <% end if %>
                                    </p>
                                    <p class="subTxt"><%=hky %></p>
                                    <p class="subject"><a href="/vod/vod_chr_view.asp?chr_cd=<%=ccd %>"><%=cnm %></a></p>
                                    <p class="subNoti"><%=awm %> <% if cvw = "Y" Then %><%=replace(cvm,chr(13)&chr(10),"<br>") %><% End if %></p>
                                </div>

                            </div>
                            <%
                                b_bnt = 0
                                e_bnt = 0
                                if bnt > 0 Then
                                    strSql = ""
                                    strSql = strSql & " SELECT  RNO = (ROW_NUMBER() OVER(ORDER BY CB_VIEW_ORD, CAST(A.BM_BOOK_FLG AS INT),  CB_BOOK_CD DESC)), CB_BOOK_CD, A.BM_BOOK_NM, A.BM_PRC, A.BM_ORG_PRC, A.BM_BOOK_FLG, FNM = CC_KOR_NM, A.BM_EBOOK_FLG, BM_SALE_DT = CONVERT(CHAR(10), A.BM_SALE_DT, 20) "
                                    strSql = strSql & "         , ISNULL(BE_EBOOK_PATH,''), ISNULL(BE_EBOOK_NAME,'') "
                                    strSql = strSql & "         , B.BM_BOOK_CD "
                                    strSql = strSql & "         , ISNULL(B.BM_PRC, 0) "
                                    strSql = strSql & " FROM    MS_CHR_BOOK WITH(NOLOCK) "
                                    strSql = strSql & " JOIN    MS_BOOK_MAS A WITH(NOLOCK) ON A.BM_BOOK_CD = CB_BOOK_CD AND A.BM_ITEM_KBN = 'B' "
                                    strSql = strSql & " JOIN    MS_COMM_CD WITH(NOLOCK) ON CC_COMM_KIND = '13' AND CC_COMM_CD = BM_BOOK_FLG "
                                    strSql = strSql & " LEFT    JOIN MS_BOOK_EBOOK WITH(NOLOCK) ON A.BM_BOOK_CD = BE_BOOK_CD "
                                    strSql = strSql & " LEFT    JOIN MS_BOOK_MAS B WITH(NOLOCK) ON B.BM_OLD_BOOK_CD = A.BM_BOOK_CD AND B.BM_ITEM_KBN = 'E' AND B.BM_BOOK_FLG IN ('1', '9') "
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
                                            b_prc_sum = 0
                                            eb_prc_sum = 0
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
                                                eb_bcd = ar_book(11, b)
                                                eb_prc = ar_book(12, b)

                                                if b_bfg <> "2" and b_bfg <> "3" and b_bfg <> "6" then
                                                    b_bnt = cdbl(b_bnt) + 1 
                                                end if 

                                                if eb_bcd <> "" then
                                                    e_bnt = cdbl(e_bnt) + 1 
                                                end if 
                                                b_prc_sum = cdbl(b_prc_sum) + cdbl(b_prc) ' 연결 교재 총 가격
                                                eb_prc_sum = cdbl(eb_prc_sum) + cdbl(eb_prc)
                                        %>
                                                <li class="clearfix">
                                                    <div class="f_left">
                                                        <% if b_bfg <> "2" and b_bfg <> "3" and b_bfg <> "6" then %>
                                                            <strong>교재</strong>
                                                        <% end if %>
                                                        <% if eb_bcd <> "" then %>
                                                            <strong>e-교재</strong>
                                                        <% end if %>
                                                        <span>
                                                            <%=b_bnm %>
                                                            <%if (b_bfg = "4" Or b_bfg = "5") And (b_sdt <> "" And CDate(b_sdt) > Date()) then%> 
                                                                (<strong><%=Month(b_sdt) & "/" & Day(b_sdt) %></strong> 입고예정)
                                                            <%end if%>
                                                        </span>
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

                            <div class="listotal f_right">
                                <div class="lecMoney">
                                    <ul>
                                        <li>
                                            <strong class="name">강좌</strong>
                                            <strong class="price">
                                            <%=FormatNumber(prc, 0) %>원
                                            </strong>
                                        </li>
                                        <% if bnt > 0 Then %>
                                        <li>
                                            <strong class="name">교재(<%=b_bnt%>)</strong>
                                            <strong class="price">
                                            <%=FormatNumber(b_prc_sum, 0)%>원
                                            </strong>
                                        </li>
                                        <% end if %>
                                        <% if e_bnt > 0 Then %>
                                        <li>
                                            <strong class="name">e-교재(<%=e_bnt%>)</strong>
                                            <strong class="price">
                                            <%=FormatNumber(eb_prc_sum, 0)%>원
                                            </strong>
                                        </li>
                                        <% end if %>                              
                                    </ul>
                                    <a href="javascript:void(0);" onclick="fncCartLayer(<%=area_no %>, <%=ccd %>);" class="cart_btn" title="장바구니">장바구니</a>
                                </div>
                            </div>

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

                                    mov_count = 0
                                    strSql = ""
                                    strSql = strSql & "SELECT	COUNT(1) "
                                    strSql = strSql & "FROM     MD_SPL_LIST WITH(NOLOCK) "
                                    'strSql = strSql & "JOIN     MS_CHR_MAS WITH(NOLOCK) ON SL_CHR_CD = CM_CHR_CD "
                                    strSql = strSql & "JOIN     MS_LEC_MAS WITH(NOLOCK) ON SL_CHR_CD = LM_CHR_CD AND SL_LEC_CD = LM_LEC_CD "
                                    strSql = strSql & "WHERE	SL_CHR_CD = " & ccd & " "
                                    strSql = strSql & "AND      LM_CONTENT_KEY <> '" & ori & "' "
                                    Set Rs = DBexec(strSql, "study")
                                    If Not Rs.Eof Then
                                        mov_count = Rs(0)
                                    End if
                                    RSClose(Rs)

                                    if mov_count <> 0 Then
                                %>
                                            <a style="cursor:pointer;" onclick="fucPrevwLayer(<%=area_no %>, <%=ccd %>, '');" class="prevw_btn">맛보기 <%=mov_count%></a>
                                <%
                                    End if
                                %>
                            </div>
                            <!--
                            <div class="btn_buy f_right">
                                <% if chr_type = "f" Then %>
                                    <a onclick="fncGoPay(<%=area_no %>, 'P', <%=ccd %>);" style="cursor:pointer; margin-left:90px;" class="cbuy_btn">결제하기</a>
                                <% Else %>
                                    <a onclick="fncGoPay(<%=area_no %>, 'C', <%=ccd %>);" style="cursor:pointer;" class="cart_btn">장바구니</a>
                                    <a onclick="fncGoPay(<%=area_no %>, 'P', <%=ccd %>);" style="cursor:pointer;" class="cbuy_btn">결제하기</a>
                                <% End if %>
                            </div>
                            -->
                        </div>
                        <%If ccd = "14775" then%>
                        <!--<span class="tag" style="position:absolute;right:10px;top:0;border:1px solid red;">test</span>-->
                        <%End if%>

                        <!-- 장바구니 미리보기 S -->
                        <div id="cartPocket<%=area_no %>_<%=ccd %>" class="pocket_pop_prevw">
                        </div>
                        <!-- 장바구니 미리보기 E -->

                        <!-- 맛보기 미리보기 S -->
                        <div id="prevwPocket<%=area_no %>_<%=ccd %>" class="pocket_pop prevw" style="display:none">
                        </div>
                        <!-- 맛보기 미리보기 E -->
                    </li>

            <% if i = Ubound(ar_chr, 2) then %>
                </ul></div>
            <% end if %>
            <%
                Next
            %>
        </div>


    <% else %>
        <% if s3_gubn = "all" then %>
        <p class="tit_s3">전체 강좌</p>
        <% end if %>

        <div class="lectlist ver2">
            <ul class="lectlist_wrap">
            <%
                tmp_chr_cd = ""

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

                    ' "군무원 전용" 딱지 붙는 강좌코드
                    ' 2022_07 이후로 군무원 전용이라는 것은 사라질 예정인 1회용이라 하드코딩 처리함 (군무원 전용 사리지면 삭제해도 무관)
                    only_army = False
                    if dcd = "5" and instr("/18261/18277/18702/18606/17312/16875/18269/17890/17891/17529/17318/18666/17847/", "/"&cstr(ccd)&"/") > 0 then
                        only_army = True
                    end if

                    if tmp_chr_cd <> ccd then
                        tmp_chr_cd = ccd
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
                                    <% if mke = "2" Then %><span class="icon8">UPDATE</span> <% End if %>
                                    <% if mke = "3" Then %><span class="icon6">예정</span> <% End if %>
                                    <% if ber = "1" Then %><span class="icon3">다다익선</span> <% End if %>
                                    <!--<% if evt = "Y" Then %><span class="icon4">이벤트</span> <% End if %>-->
                                    <% if gfg="97" Then %><span class="icon7">9/7급</span>
                                    <% elseif gfg="9" Then %><span class="icon7">9급대비</span>
                                    <% elseif gfg="7" Then %><span class="icon7">7급대비</span>
                                    <% elseif only_army Then %><span class="icon7">군무원 전용</span><% End if %>
                                    <% if cdate(lo_now_date) < cdate("2022-04-08") then %>
                                        <% if instr(eventChrStr, ccd) > 0 then %>
                                        <span class="icon_30dc">30% EVENT</span>
                                        <% end if %>
                                    <% end if %>
                                    <% if cdate(lo_now_date) < cdate("2022-04-09") then %>
                                        <% if instr(eventChrStr3, ccd) > 0 then %>
                                        <span class="icon_50dc">50% EVENT</span>
                                        <% end if %>
                                    <% end if %>
                                    <% if cdate(lo_now_date) < cdate("2022-04-03") then %>
                                        <% if instr(eventChrStr2, ccd) > 0 then %>
                                        <span class="icon_100dc">100% EVENT</span>
                                        <% end if %>
                                    <% end if %>
                                </p>
                                <p class="subTxt"><%=hky %></p>
                                <p class="subject"><a href="/vod/vod_chr_view.asp?chr_cd=<%=ccd %>"><%=cnm %></a></p>
                                <p class="subNoti"><%=awm %> <% if cvw = "Y" Then %><%=replace(cvm,chr(13)&chr(10),"<br>") %><% End if %></p>
                            </div>

                        </div>
                        <%
                            b_bnt = 0
                            e_bnt = 0
                            if bnt > 0 Then
                                strSql = ""
                                strSql = strSql & " SELECT  RNO = (ROW_NUMBER() OVER(ORDER BY CB_VIEW_ORD, CAST(A.BM_BOOK_FLG AS INT),  CB_BOOK_CD DESC)), CB_BOOK_CD, A.BM_BOOK_NM, A.BM_PRC, A.BM_ORG_PRC, A.BM_BOOK_FLG, FNM = CC_KOR_NM, A.BM_EBOOK_FLG, BM_SALE_DT = CONVERT(CHAR(10), A.BM_SALE_DT, 20) "
                                strSql = strSql & "         , ISNULL(BE_EBOOK_PATH,''), ISNULL(BE_EBOOK_NAME,'') "
                                strSql = strSql & "         , B.BM_BOOK_CD "
                                strSql = strSql & "         , ISNULL(B.BM_PRC, 0) "
                                strSql = strSql & " FROM    MS_CHR_BOOK WITH(NOLOCK) "
                                strSql = strSql & " JOIN    MS_BOOK_MAS A WITH(NOLOCK) ON A.BM_BOOK_CD = CB_BOOK_CD AND A.BM_ITEM_KBN = 'B' "
                                strSql = strSql & " JOIN    MS_COMM_CD WITH(NOLOCK) ON CC_COMM_KIND = '13' AND CC_COMM_CD = BM_BOOK_FLG "
                                strSql = strSql & " LEFT    JOIN MS_BOOK_EBOOK WITH(NOLOCK) ON A.BM_BOOK_CD = BE_BOOK_CD "
                                strSql = strSql & " LEFT    JOIN MS_BOOK_MAS B WITH(NOLOCK) ON B.BM_OLD_BOOK_CD = A.BM_BOOK_CD AND B.BM_ITEM_KBN = 'E' AND B.BM_BOOK_FLG IN ('1', '9') "
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
                                        b_prc_sum = 0
                                        eb_prc_sum = 0
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
                                            eb_bcd = ar_book(11, b)
                                            eb_prc = ar_book(12, b)

                                            if b_bfg <> "2" and b_bfg <> "3" and b_bfg <> "6" then
                                                b_bnt = cdbl(b_bnt) + 1 
                                                b_prc_sum = cdbl(b_prc_sum) + cdbl(b_prc) ' 연결 교재 총 가격
                                            end if                                             

                                            if eb_bcd <> "" then
                                                e_bnt = cdbl(e_bnt) + 1 
                                                eb_prc_sum = cdbl(eb_prc_sum) + cdbl(eb_prc)
                                            end if 
                                    %>
                                            <li class="clearfix">
                                                <div class="f_left">
                                                    <% if b_bfg <> "2" and b_bfg <> "3" and b_bfg <> "6" then %>
                                                        <strong>교재</strong>
                                                    <% end if %>
                                                    <% if eb_bcd <> "" then %>
                                                        <strong>e-교재</strong>
                                                    <% end if %>
                                                    <span>
                                                        <%=b_bnm %>
                                                        <%if (b_bfg = "4" Or b_bfg = "5") And (b_sdt <> "" And CDate(b_sdt) > Date()) then%> 
                                                        (<strong><%=Month(b_sdt) & "/" & Day(b_sdt) %></strong> 입고예정)
                                                        <%end if%>
                                                    </span>
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

                        <div class="listotal f_right">
                            <div class="lecMoney">
                                <ul>
                                    <li>
                                        <strong class="name">강좌</strong>
                                        <strong class="price">
                                        <%=FormatNumber(prc, 0) %>원
                                        </strong>
                                    </li>
                                    <% if bnt > 0 Then %>
                                    <li>
                                        <strong class="name">교재(<%=b_bnt%>)</strong>
                                        <strong class="price">
                                        <%=FormatNumber(b_prc_sum, 0)%>원
                                        </strong>
                                    </li>
                                    <% end if %>
                                    <% if e_bnt > 0 Then %>
                                    <li>
                                        <strong class="name">e-교재(<%=e_bnt%>)</strong>
                                        <strong class="price">
                                        <%=FormatNumber(eb_prc_sum, 0)%>원
                                        </strong>
                                    </li>
                                    <% end if %>                              
                                </ul>
                                <a href="javascript:void(0);" onclick="fncCartLayer(<%=area_no %>, <%=ccd %>);" class="cart_btn" title="장바구니">장바구니</a>
                            </div>
                        </div>

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

                                mov_count = 0
                                strSql = ""
                                strSql = strSql & "SELECT	COUNT(1) "
                                strSql = strSql & "FROM     MD_SPL_LIST WITH(NOLOCK) "
                                'strSql = strSql & "JOIN     MS_CHR_MAS WITH(NOLOCK) ON SL_CHR_CD = CM_CHR_CD "
                                strSql = strSql & "JOIN     MS_LEC_MAS WITH(NOLOCK) ON SL_CHR_CD = LM_CHR_CD AND SL_LEC_CD = LM_LEC_CD "
                                strSql = strSql & "WHERE	SL_CHR_CD = " & ccd & " "
                                strSql = strSql & "AND      LM_CONTENT_KEY <> '" & ori & "' "
                                Set Rs = DBexec(strSql, "study")
                                If Not Rs.Eof Then
                                    mov_count = Rs(0)
                                End if
                                RSClose(Rs)

                                if mov_count <> 0 Then
                            %>
                                        <a style="cursor:pointer;" onclick="fucPrevwLayer(<%=area_no %>, <%=ccd %>, '');" class="prevw_btn">맛보기 <%=mov_count%></a>
                            <%
                                End if
                            %>
                        </div>
                        <!--
                        <div class="btn_buy f_right">
                            <% if chr_type = "f" Then %>
                                <a onclick="fncGoPay(<%=area_no %>, 'P', <%=ccd %>);" style="cursor:pointer; margin-left:90px;" class="cbuy_btn">결제하기</a>
                            <% Else %>
                                <a onclick="fncGoPay(<%=area_no %>, 'C', <%=ccd %>);" style="cursor:pointer;" class="cart_btn">장바구니</a>
                                <a onclick="fncGoPay(<%=area_no %>, 'P', <%=ccd %>);" style="cursor:pointer;" class="cbuy_btn">결제하기</a>
                            <% End if %>
                        </div>
                        -->
                    </div>
                    <%If ccd = "14775" then%>
                    <!--<span class="tag" style="position:absolute;right:10px;top:0;border:1px solid red;">test</span>-->
                    <%End if%>

                    <!-- 장바구니 미리보기 S -->
                    <div id="cartPocket<%=area_no %>_<%=ccd %>" class="pocket_pop_prevw">
                    </div>
                    <!-- 장바구니 미리보기 E -->

                    <!-- 맛보기 미리보기 S -->
                    <div id="prevwPocket<%=area_no %>_<%=ccd %>" class="pocket_pop prevw" style="display:none">
                    </div>
                    <!-- 맛보기 미리보기 E -->
                </li>
            <%
                    end if
                Next
            %>
            </ul>
        </div>
<%
    end if
End if
%>
<%
    if area_no = "1" Then
%>
    <script type="text/javascript">
        function fncGrpTab(a, n, p) {
            var v = $("#grptab_" + a + " li").eq(n).attr("gcd");
            var t = "<%=tab_yn%>";
            var p = p + "&grp_dom=" + v + "&tab_yn=" + t;
            fncChrList(a, p);
        }

        function fncChrTab(a, n, p) {
            var g = "<%=grp_dom%>";
            var v = $("#chrtab_" + a + " li").eq(n).attr("scd");
            var t = "<%=tab_yn%>";
            var p = p + "&grp_dom=" + g + "&sub_cd=" + v + "&tab_yn=" + t;
            fncChrList(a, p);
        }

        function fncChrStep(a, n, p) {

            var grp_dom = "<%=grp_dom%>";
            var chr_type = "<%=chr_type %>";
            var sub_cd = "";
            var step_cd = "";
            if (chr_type == "s2" || chr_type == "g" || chr_type == "s3") {
                sub_cd = "<%=sub_cd %>";
            } else {
                sub_cd = $("#chrstep_" + a + " li").filter(function () { return $(this).hasClass("on") }).attr("stc");
            }

            var v = $("#chrstep_" + a + " li").eq(n).attr("stc");
            var t = "<%=tab_yn%>";
            tec_cd = "<%=tec_cd %>";

            var gubn = "";

        <% if chr_type = "s3" then %>
            gubn = $("#chrgubn_" + a + " li").filter(function () { return $(this).hasClass("on") }).attr("gubn");
        <% end if %>

            var p = p + "&grp_dom=" + grp_dom + "&sub_cd=" + sub_cd + "&step_cd=" + v + "&tec_cd=" + tec_cd + "&tab_yn=" + t + "&s3_gubn=" + gubn;

            fncChrList(a, p);
        }

        function fncChrTec(a, n, p) {
            var grp_dom = "<%=grp_dom%>";
            var chr_type = "<%=chr_type %>";
            var sub_cd = "";
            var step_cd = "";
            if (chr_type == "s2" || chr_type =="g" || chr_type == "s3") {

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
                //console.log("sub_cd >>> "+sub_cd );
            }
            var v = $("#chrtec_" + a + " li").eq(n).attr("tcd");

            var t = "<%=tab_yn%>";

            var p = p + "&grp_dom=" + grp_dom + "&sub_cd=" + sub_cd + "&step_cd=" + step_cd + "&tec_cd=" + v + "&tab_yn=" + t;

            fncChrList(a, p);
        }

        function fncTecStepTab(a, p) {

            var grp_dom = "<%=grp_dom%>";
            var chr_type = "<%=chr_type %>";
            if (chr_type == "s2" || chr_type == "g") {
                sub_cd = "<%=sub_cd %>";
            } else {
                sub_cd = $("#chrstep_" + a + " li").filter(function () { return $(this).hasClass("on") }).attr("stc");
            }

            var t = $("#tec_step_tab_" + a).attr("data-tab");
            var p = p + "&grp_dom=" + grp_dom + "&sub_cd=" + sub_cd + "&tab_yn=" + t;
            fncChrList(a, p);
        }

        function fncChrGubn(a, n, p) {
            var grp_dom = "<%=grp_dom%>";
            var chr_type = "<%=chr_type %>";
            var sub_cd = "<%=sub_cd %>";

            var v = "";
            var t = "<%=tab_yn%>";
            var tec_cd = "<%=tec_cd %>";
            var gubn = $("#chrgubn_" + a + " li").eq(n).attr("gubn");

            var p = p + "&grp_dom=" + grp_dom + "&sub_cd=" + sub_cd + "&step_cd=" + v + "&tec_cd=" + tec_cd + "&tab_yn=" + t + "&s3_gubn=" + gubn;

            fncChrList(a, p);
        }

    <% if chr_type = "s3" and s3_gubn = "pick" then %>
        $(function () {
            $('.tech_content .lectlist_s3 .subtit').addClass('on');
            $('.tech_content .lectlist_s3 .subtit').on('click', function () {
                $(this).toggleClass('on');
            });
        });
    <% end if %>

    <% if chr_type = "s3" and s3_gubn = "pkg" then %>
        $(function () {
            $('.tech_content .lectlist_s3 .subtit').addClass('on');
            $('.tech_content .lectlist_s3 .subtit').on('click', function () {
                $(this).toggleClass('on');
            });
        });
    <% end if %>
    </script>
<%
    End if
%>
<script type="text/javascript">
    $(document).ready(function () {
        $("#grptab_<%=area_no %> li").click(function () {
            fncGrpTab("<%=area_no %>", $(this).index("#grptab_<%=area_no %> li"), "<%=chr_para %>");
        });

        $("#chrtab_<%=area_no %> li").click(function () {
            fncChrTab("<%=area_no %>", $(this).index("#chrtab_<%=area_no %> li"), "<%=chr_para %>");
        });

        $("#chrstep_<%=area_no %> li").click(function () {
            fncChrStep("<%=area_no %>", $(this).index("#chrstep_<%=area_no %> li"), "<%=chr_para %>");
        });

        $("#chrtec_<%=area_no %> li").click(function () {
            fncChrTec("<%=area_no %>", $(this).index("#chrtec_<%=area_no %> li"), "<%=chr_para %>");
        });

        $("#chrgubn_<%=area_no %> li").click(function () {
            fncChrGubn("<%=area_no %>", $(this).index("#chrgubn_<%=area_no %> li"), "<%=chr_para %>");
        });

        // 선생님/학습단계 탭 열기/닫기
        $("#tec_step_tab_<%=area_no %>").click(function () {
            fncTecStepTab("<%=area_no %>", "<%=chr_para %>");
        });
    });
</script>



