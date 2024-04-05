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
                        tmpSu = Ubound(ar_tab, 2)
                        if tmpSu <> 0 then tmpSu = tmpSu+1
                        r = Int(tmpSu * Rnd)
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

        ' 강좌리스트 s3관련 비고 2022-09-01
        ' 기존에 chrlist_ax를 사용하는 곳에 영향을 주면 안되기에 여러모로 코드가 복잡해졌음 (s, s2 != s3)
        ' 이제는 강좌리스트 보다 강좌/패키지 리스트라고 보여짐
        ' 강좌의 오픈 정책, 룰과 패키지의 오픈, 정책 룰이 다름 (메가픽은 강좌와 패키지가 섞여 있음)

        if chr_step = "Y" Then

            strSql = ""
            strSql2 = ""
            strSql3 = ""
            tmp_tec_cd = ""

            strSql = strSql & strFrom
            if sub_cd <> "" Then
                strSql = strSql & "AND		SM_SUB_CD = '" & sub_cd & "' "
            end If
            if tec_cd <> "" Then
                tmp_tec_cd = tec_cd

                Select Case chr_tec
                    Case "Y" :
                        strSql = strSql & "AND  CM_TEC_CD = '" & tec_cd & "' "
                    Case "M" :
                        strSql = strSql & "AND  CM_CHR_FLG = '" & tec_cd & "' "
                    Case Else :
                        strSql = strSql & "AND  CM_TEC_CD = '" & tec_cd & "' "
                End Select
            else
                if home_cd <> "" then
                    tmp_tec_cd = home_cd
                end if
            End if

            '선생님 이름 없을 경우
            tec_nm = ""

            Set objRs = DBExec(" select DISTINCT top 1 TM_TEC_NM from MS_TEC_MAS with (nolock) where TM_TEC_CD = '" & tmp_tec_cd & "' ", "study")
            If Not (objRs.EoF And objRs.BoF) Then
                tec_nm = objRs(0)
            End If
            Call DBClose(objRs)


            '패키지용 sql 2 복사 (패키지는 D도 나와야함)
            strSql2 = strSql

            '패키지에 포함된 강좌의 Y,D 유무 확인한 패키지 리스트 추출
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
            strPkg = strPkg & "             and PD_CHR_CD in ( SELECT DISTINCT CM_CHR_CD " & Replace(strSql2, "CM_OPEN_FLG IN ('Y')", "CM_OPEN_FLG IN ('Y','D')") & ")) "
            strPkg = strPkg & "         FOR XML PATH('') "
            strPkg = strPkg & "     ) "
            strPkg = strPkg & "     FROM MS_PKG_MAS with (nolock) "
            strPkg = strPkg & "     WHERE PM_DEL_FLG = 'N' and PM_OPEN_YN = 'Y' "
            strPkg = strPkg & " ) c "
            strPkg = strPkg & " where c.CM_OPEN_FLG is not null and c.CM_OPEN_FLG is not null and CHARINDEX('X', c.CM_OPEN_FLG) = 0 and CHARINDEX('N', c.CM_OPEN_FLG) = 0 "
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


            '전체 강좌용 sql 3 복사
            strSql3 = strSql

            '메가픽 강좌+패키지
            strSql = " select * from (SELECT DISTINCT top 1 * from (SELECT DISTINCT 1 as rank, 'pick' as gubn, 'Mega''s Pick' as nm " & strSql
            strSql = strSql & " and MPM_DEL_YN = 'N' and MPM_OPEN_YN = 'Y' and MPM_TEC_CD = '" & tmp_tec_cd & "' "
            strSql = strSql & " and (MPD_SANGSI_YN = 'Y' or '" & lo_now_date & "' between MPD_SDT and MPD_EDT) "
            strSql = strSql & " UNION ALL " & " SELECT DISTINCT 1 as rank, 'pick' as gubn, 'Mega''s Pick' as nm "
            strSql = strSql & " from MS_MEGAPICK_MAS with (nolock) inner join MS_MEGAPICK_PKG with (nolock) on MPP_MPM_CD = MPM_CD "
            strSql = strSql & " WHERE MPM_DEL_YN = 'N' and MPM_OPEN_YN = 'Y' and MPM_TEC_CD = '" & tmp_tec_cd & "' "
            strSql = strSql & " and MPP_PKG_CD in (" & pkglist & ") "
            strSql = strSql & " and (MPP_SANGSI_YN = 'Y' or '" & lo_now_date & "' between MPP_SDT and MPP_EDT)) a "

            '전체 강좌 합체
            strSql = strSql & " UNION ALL " & " SELECT DISTINCT 2 as rank, 'all' as gubn, '전체 강좌' as nm " & strSql3 & " "

            '패키지 전체 합체
            strSql = strSql & " UNION ALL " & " SELECT DISTINCT 3 as rank, 'pkg' as gubn, '패키지' as nm "
            strSql = strSql & " from MS_PKG_MAS with (nolock) inner join MS_PKG_DTL with (nolock) on PM_PKG_CD = PD_PKG_CD "
            strSql = strSql & " WHERE PM_OPEN_YN = 'Y' and PM_DEL_FLG = 'N' and PM_PKG_CD in (" & pkglist & ") "

            strSql = strSql & " ) as t order by rank"
            Set Rs = DBexec(strSql, "study")
	        If Not Rs.Eof Then
                ar_gubn = Rs.GetRows()
	        End if
            RSClose(Rs)

            if isArray(ar_gubn) and s3_gubn = "" then
                if ar_gubn(1, 0) = "pick" then
                    s3_gubn = "pick"
                else
                    s3_gubn = "all"
                end if
            end if


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
                strSql = strSql & " and MPM_DEL_YN = 'N' and MPM_OPEN_YN = 'Y' and MPM_TEC_CD = '" & tmp_tec_cd & "' "
                strSql = strSql & " and (MPD_SANGSI_YN = 'Y' or '" & lo_now_date & "' between MPD_SDT and MPD_EDT) "

                '메가픽 패키지 학습단계
                strPick = "SELECT RNO = (ROW_NUMBER() OVER(ORDER BY CC_NUM1)), CM_CHR_FLG = CAST(CM_CHR_FLG AS INT), CM_CHR_FNM = CC_KOR_NM, CC_STEP_ORD = CC_NUM1 FROM ( "
                strPick = strPick & " SELECT RNO = (ROW_NUMBER() OVER(ORDER BY CC_NUM1)), CM_CHR_FLG = CAST(CM_CHR_FLG AS INT), CC_KOR_NM, CC_NUM1 "
                strPick = strPick & " FROM V_CHR_LIST_ON WITH(NOLOCK) "
                strPick = strPick & " inner join MS_PKG_DTL with (nolock) on PD_CHR_CD = CM_CHR_CD "
                strPick = strPick & " inner join MS_MEGAPICK_PKG with (nolock) on MPP_PKG_CD = PD_PKG_CD "
                strPick = strPick & " inner join MS_MEGAPICK_MAS with (nolock) on MPM_CD = MPP_MPM_CD "
                strPick = strPick & " WHERE 1 = 1 "
                strPick = strPick & " and SM_SUB_CD = '" & sub_cd & "' "
                strPick = strPick & " and CM_TEC_CD = '" & tmp_tec_cd & "' "
                strPick = strPick & " and MPM_TEC_CD = '" & tmp_tec_cd & "' "
                strPick = strPick & " and MPM_DEL_YN = 'N' and MPM_OPEN_YN = 'Y' "
                strPick = strPick & " and (MPP_SANGSI_YN = 'Y' or '" & lo_now_date & "' between MPP_SDT and MPP_EDT) "
                strPick = strPick & " and MPP_PKG_CD in (" & pkglist & ") union all " & strSql

                strSql = strPick & " ) a "

            elseif s3_gubn = "pkg" then
                strSql = strSql & " and PM_OPEN_YN = 'Y' and PM_DEL_FLG = 'N' "
                strSql = strSql & " and PM_PKG_CD in (" & pkglist & ") "

                strSql = Replace(strSql, "CM_OPEN_FLG IN ('Y')", "CM_OPEN_FLG IN ('Y','D')")

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
    strSql = strSql & "SELECT "
    if grp_ord = "Y" And grp_cd <> "" Then
        strSql = strSql & "         RNO = (ROW_NUMBER() OVER(ORDER BY GC_VIEW_ORD ASC)), "
    Else
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
        strSql = strSql & "         , PD_PKG_CD, PD_VIEW_ORD = isnull(PD_VIEW_ORD, 999) "
    end if

    '패키지 등에서 쓸 컬럼들 strPkg
    strPkg = ""
    strPkg = strSql

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


    '강좌리스트 용으로 다시 추출 (학습단계 적용)
    if (s3_gubn = "pick" or s3_gubn = "pkg") and pkglist <> "0" then
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
        strPkg2 = strPkg2 & "             and PD_CHR_CD in ( SELECT DISTINCT CM_CHR_CD " & Replace(strSql2, "CM_OPEN_FLG IN ('Y')", "CM_OPEN_FLG IN ('Y','D')") & ")) "
        strPkg2 = strPkg2 & "         FOR XML PATH('') "
        strPkg2 = strPkg2 & "     ) "
        strPkg2 = strPkg2 & "     FROM MS_PKG_MAS with (nolock) "
        strPkg2 = strPkg2 & "     WHERE PM_DEL_FLG = 'N' and PM_OPEN_YN = 'Y' and PM_PKG_CD in (" & pkglist & ") "
        strPkg2 = strPkg2 & " ) c "
        strPkg2 = strPkg2 & " where c.CM_OPEN_FLG is not null and c.CM_OPEN_FLG is not null and CHARINDEX('X', c.CM_OPEN_FLG) = 0 and CHARINDEX('N', c.CM_OPEN_FLG) = 0 "
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
        else
            pkglist = "0"
        End If
        Call DBClose(objRs)
    end if

    's3 메가픽  (ar_chr는 쓰는데 메가픽 리스트임)
    if s3_gubn = "pick" then
        strSql = strSql & " and MPM_DEL_YN = 'N' and MPM_OPEN_YN = 'Y' and MPM_TEC_CD = '" & tmp_tec_cd & "' "
        strSql = strSql & " and (MPD_SANGSI_YN = 'Y' or '" & lo_now_date & "' between MPD_SDT and MPD_EDT) "

        strChr = ""
        strChr = strSql

        '메가픽 그룹리스트 추출
        strPick = ""
        strPick = strPick & " select * from ( "
        strPick = strPick & " select DISTINCT MPM_CD, MPM_GRP_NM, MPM_VIEW_ORD, 'pkg' as gubn  "
        strPick = strPick & " from MS_MEGAPICK_MAS with (nolock) "
        strPick = strPick & " inner join MS_MEGAPICK_PKG with (nolock) on MPM_CD = MPP_MPM_CD "
        strPick = strPick & " WHERE 1 = 1 "
        strPick = strPick & " and MPM_DEL_YN = 'N' and MPM_OPEN_YN = 'Y' "
        strPick = strPick & " and MPM_TEC_CD = '" & tmp_tec_cd & "' "
        strPick = strPick & " and MPP_PKG_CD in (" & pkglist & ") "
        strPick = strPick & " and (MPP_SANGSI_YN = 'Y' or '" & lo_now_date & "' between MPP_SDT and MPP_EDT) "

        strPick = strPick & " union all "

        strPick = strPick & " select DISTINCT MPM_CD, MPM_GRP_NM, MPM_VIEW_ORD, 'chr' as gubn "
        strPick = strPick & " from MS_MEGAPICK_MAS with (nolock) "
        strPick = strPick & " inner join MS_MEGAPICK_DTL with (nolock) on MPM_CD = MPD_MPM_CD "
        strPick = strPick & " WHERE 1 = 1 "
        strPick = strPick & " and MPM_CD in (select DISTINCT MPM_CD from (" & strSql & ") a "

        strSql = strPick & " )) b "

        if UCase(mem_type) <> "E" Then
            'strSql = strSql & " where gubn != 'pkg' "
        end if

        strSql = strSql & " ORDER BY MPM_VIEW_ORD, MPM_CD desc "

    's3 패키지 (ar_chr는 쓰는데 pkg 리스트임)
    elseif s3_gubn = "pkg" then
        strSql = ""
        strSql = strSql & " select DISTINCT PM_PKG_CD, PM_PKG_NM = REPLACE(REPLACE(PM_PKG_NM, '（', '('), '）', ')'), "
        strSql = strSql & " PM_PKG_PRC, PM_ORN_PRC, PM_DC_RT = round(PM_DC_RT, 0), "
        strSql = strSql & " PM_STD_DAY, PM_STD_DT, isnull(PM_STD_TYPE, 'P') as std_type, PM_OPEN_YN, isnull(PM_HOT_KEY, '&nbsp;') as hot_key, isnull(PM_SPF,'') as spf, "
        strSql = strSql & " tec_cd = isnull(PM_PKG_IMG, 'logo'), tec_nm = isnull((select DISTINCT top 1 TM_TEC_NM from MS_TEC_MAS where TM_TEC_CD = PM_PKG_IMG), '') "
        strSql = strSql & " from MS_PKG_MAS with (nolock) "
        strSql = strSql & " inner join MS_PKG_DTL with (nolock) on PM_PKG_CD = PD_PKG_CD "
        strSql = strSql & " where PM_OPEN_YN = 'Y' and PM_DEL_FLG = 'N' "
        strSql = strSql & " and PM_PKG_CD in ("&pkglist&") "

        strSql = strSql & " ORDER BY PM_PKG_CD DESC "

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

                '강좌는 미리 뽑아둠
                ar_Pick_chr = null
                strSql = ""
                strSql = strSql & strChr
                strSql = strSql & " ORDER BY MPM_VIEW_ORD, MPD_VIEW_ORD, RNO "
                Set Rs = DBexec(strSql, "study")
                If Not Rs.Eof Then
                    ar_Pick_chr = Rs.getrows
                End if
                RSClose(Rs)

                For i = 0 To Ubound(ar_chr, 2)
                    mpm_cd = ar_chr(0, i)
                    mpm_grp_nm = Re_sqlFilter(ar_chr(1, i))
                    mpm_view_ord = ar_chr(2, i)
                    mpm_gubn = ar_chr(3, i)

                    ar_Pick = null
                    if mpm_gubn = "chr" then
                        ar_Pick = ar_Pick_chr

                    elseif mpm_gubn = "pkg" then
                        strSql = ""
                        strSql = strSql & " select DISTINCT PM_PKG_CD, PM_PKG_NM = REPLACE(REPLACE(PM_PKG_NM, '（', '('), '）', ')'), "
                        strSql = strSql & " PM_PKG_PRC, PM_ORN_PRC, PM_DC_RT = round(PM_DC_RT, 0), "
                        strSql = strSql & " PM_STD_DAY, PM_STD_DT, isnull(PM_STD_TYPE, 'P') as std_type, PM_OPEN_YN, isnull(PM_HOT_KEY, '&nbsp;') as hot_key, isnull(PM_SPF,'') as spf, "
                        strSql = strSql & " tec_cd = isnull(PM_PKG_IMG, 'logo'), tec_nm = isnull((select DISTINCT top 1 TM_TEC_NM from MS_TEC_MAS where TM_TEC_CD = PM_PKG_IMG), ''), "
                        strSql = strSql & " MPP_VIEW_ORD "
                        strSql = strSql & " from MS_PKG_MAS with (nolock) "
                        strSql = strSql & " inner join MS_PKG_DTL with (nolock) on PM_PKG_CD = PD_PKG_CD "
                        strSql = strSql & " inner join MS_MEGAPICK_PKG with (nolock) on PD_PKG_CD = MPP_PKG_CD "
                        strSql = strSql & " inner join MS_MEGAPICK_MAS with (nolock) on MPP_MPM_CD = MPM_CD "
                        strSql = strSql & " where PM_OPEN_YN = 'Y' and PM_DEL_FLG = 'N' "
                        strSql = strSql & " and MPP_MPM_CD = " & mpm_cd
                        strSql = strSql & " and MPP_PKG_CD in (" & pkglist & ") "
                        strSql = strSql & " and (MPP_SANGSI_YN = 'Y' or '" & lo_now_date & "' between MPP_SDT and MPP_EDT) "
                        strSql = strSql & " ORDER BY MPP_VIEW_ORD, PM_PKG_CD DESC "
                        Set Rs = DBexec(strSql, "study")
                        If Not Rs.Eof Then
                            ar_Pick = Rs.getrows
                        End if
                        RSClose(Rs)

                    end if
            %>
            <div class="lectlist_s3">
                <p class="subtit"><%=mpm_grp_nm%></p>
                <ul class="lectlist_wrap">

            <% if isArray(ar_Pick) and mpm_gubn = "chr" Then %>
                <%
                    for c = 0 To Ubound(ar_Pick, 2)
                        if ar_Pick(31, c) = mpm_cd then
                            rno = ar_Pick(0, c)
                            ccd = ar_Pick(1, c)
                            cnm = Re_sqlFilter(ar_Pick(2, c))
                            dcd = ar_Pick(3, c)
                            scd = ar_Pick(4, c)
                            snm = ar_Pick(5, c)
                            cfg = ar_Pick(6, c)
                            cfm = ar_Pick(7, c)
                            tcd = ar_Pick(8, c)
                            tnm = ar_Pick(9, c)
                            tnw = ar_Pick(10, c)
                            cnw = ar_Pick(11, c)
                            mke = ar_Pick(12, c)
                            ber = ar_Pick(13, c)
                            evt = ar_Pick(14, c)
                            hky = ar_Pick(15, c)
                            awf = ar_Pick(16, c)
                            acd = ar_Pick(17, c)
                            cvw = ar_Pick(18, c)
                            cvm = ar_Pick(19, c)
                            sal = ar_Pick(20, c)
                            sdy = ar_Pick(21, c)
                            prc = ar_Pick(22, c)
                            orc = ar_Pick(23, c)
                            bnt = ar_Pick(24, c)
                            bet = ar_Pick(25, c)
                            ori = ar_Pick(26, c)
                            gfg = ar_Pick(30, c)

                            awm = ""
                            Select Case awf
                                Case "W" : awm = "[학원 강의기간 : " & acd & "주 과정]"
                                Case "M" : awm = "[학원 강의기간 : " & acd & "개월 과정]"
                            End Select

                            ' "군무원 전용" 딱지 붙는 강좌코드
                            ' 2022_10 이후로 전부 블락처리 -> 추후에 군무원 딱지 재사용 가능성 있다고 함
                            only_army = armyOnly(ccd)
                %>

                    <li id="list<%=area_no %>_<%=ccd %>" class="lect_item" value2="<%=mpm_cd%>">
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
                                    <a href="javascript:void(0);" onclick="fncPickCartLayer(<%=area_no %>, <%=ccd %>, <%=mpm_cd%>);" class="cart_btn" title="장바구니">장바구니</a>
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
                                        <a style="cursor:pointer;" onclick="fncPickPrevwLayer(<%=area_no %>, <%=ccd %>, '', <%=mpm_cd%>);" class="prevw_btn">맛보기 <%=mov_count%></a>
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
                    next
                %>

            <% elseif isArray(ar_Pick) and mpm_gubn = "pkg" Then %>
                <%
                    For p = 0 To Ubound(ar_Pick, 2)
                        pkg_cd = Trim(ar_Pick(0, p))
                        pkg_nm = Trim(ar_Pick(1, p))
                        pkg_prc = Trim(ar_Pick(2, p))
                        org_prc = Trim(ar_Pick(3, p))
                        dc_rt = Trim(ar_Pick(4, p))
                        std_day = Trim(ar_Pick(5, p))

                        'std_dt = ar_Pick(6, p)

                        std_type = Trim(ar_Pick(7, p))
                        hot_ky = Trim(re_sqlfilter(Replace(ar_Pick(9, p), Chr(13)&Chr(10), "<br>")))
                        pkg_SPF = Trim(re_sqlfilter(Replace(ar_Pick(10, p), Chr(13)&Chr(10), "<br>")))


                        '패키지 안 강좌목록
                        ar_pkg_chr = null
                        strPkg2 = strPkg
                        strPkg2 = strPkg2 & " , PM_PKG_CD, PM_PKG_NM, PM_PKG_PRC, PM_ORN_PRC, PM_DC_RT, PM_STD_DAY "
                        strPkg2 = strPkg2 & " , PD_PKG_CD, PD_VIEW_ORD = isnull(PD_VIEW_ORD, 999) "
                        strPkg2 = strPkg2 & " FROM V_CHR_LIST_ON WITH(NOLOCK) "
                        strPkg2 = strPkg2 & " left join MS_MEGAPICK_DTL with (nolock) on MPD_CHR_CD = CM_CHR_CD "
                        strPkg2 = strPkg2 & " inner join MS_PKG_DTL with (nolock) on PD_CHR_CD = CM_CHR_CD "
                        strPkg2 = strPkg2 & " inner join MS_PKG_MAS with (nolock) on PM_PKG_CD = PD_PKG_CD "
                        strPkg2 = strPkg2 & " inner join MS_MEGAPICK_PKG with (nolock) on MPP_PKG_CD = PM_PKG_CD "
                        strPkg2 = strPkg2 & " inner join MS_MEGAPICK_MAS with (nolock) on MPM_CD = MPP_MPM_CD "
                        strPkg2 = strPkg2 & " WHERE 1 = 1 "
                        strPkg2 = strPkg2 & " and PM_PKG_CD in (" & pkg_cd & ") "
                        strPkg2 = strPkg2 & " and MPM_CD in (" & mpm_cd & ") "
                        strPkg2 = strPkg2 & " ORDER BY PD_VIEW_ORD, PD_CHR_CD desc, RNO "
                        Set Rs = DBexec(strPkg2, "study")
                        If Not Rs.Eof Then
                            ar_pkg_chr = Rs.getrows
                        End if
                        RSClose(Rs)

                        '패키지 안 교재목록
                        ar_pkg_book = null
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
                    <li id="list<%=area_no %>_<%=pkg_cd %>_<%=mpm_cd %>" class="lect_item package">
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
                                    <a href="javascript:void(0);" onclick="fncPkgLayer(<%=area_no %>, <%=pkg_cd %>, <%=mpm_cd%>);" class="cart_btn" title="결제">결제</a>
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
                                            'strSql = strSql & "JOIN     MS_CHR_MAS WITH(NOLOCK) ON SL_CHR_CD = CM_CHR_CD "
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
                                            <a style="cursor:pointer;" onclick="fucPkgPrevwLayer(<%=area_no %>, <%=pkg_cd %>, <%=ar_pkg_chr(1,pC)%>, '', <%=mpm_cd%>);" class="prevw_btn">맛보기 <i></i></a>
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
                                <div id="prevwPocket<%=area_no %>_<%=pkg_cd %>_<%=ar_pkg_chr(1,pC)%>_<%=mpm_cd%>" class="pocket_pop prevw" style="margin:0px -1px; display:none;">
                                </div>
                                <!-- 맛보기 미리보기 E -->
                            </div>
                            <%
                                    end if
                                next
                            %>
                        <% end if %>

                            <!-- 패키지 미리보기 S -->
                            <div id="packagePocket<%=area_no %>_<%=pkg_cd %>_<%=mpm_cd%>" class="pocket_pop_prevw"></div>
                            <!-- 패키지 미리보기 E -->

                        </div>
                        <!-- 패키지정보 E-->
                    </li>
                <% next %>
            <% end if %>

                </ul>
            </div>
            <% next %>
        </div>



    <% elseif chr_type = "s3" and s3_gubn = "pkg" then %>
        <p class="tit_s3">패키지</p>

        <div class="lectlist ver2">
            <ul class="lectlist_wrap">
            <%
                For i = 0 To Ubound(ar_chr, 2)
                    pkg_cd = Trim(ar_chr(0, i))
                    pkg_nm = Trim(ar_chr(1, i))
                    pkg_prc = Trim(ar_chr(2, i))
                    org_prc = Trim(ar_chr(3, i))
                    dc_rt = Trim(ar_chr(4, i))
                    std_day = Trim(ar_chr(5, i))

                    'std_dt = ar_chr(6, i)

                    std_type = Trim(ar_chr(7, i))
                    hot_ky = Trim(re_sqlfilter(Replace(ar_chr(9, i), Chr(13)&Chr(10), "<br>")))
                    pkg_SPF = Trim(re_sqlfilter(Replace(ar_chr(10, i), Chr(13)&Chr(10), "<br>")))


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

                    '패키지 안 교재목록
                    ar_pkg_book = null
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
                            if ar_pkg_book(5,b) <> "2" and ar_pkg_book(5,b)  <> "3" and ar_pkg_book(5,b) <> "6" then
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
                                <a href="javascript:void(0);" onclick="fncPkgLayer(<%=area_no %>, <%=pkg_cd %>, 0);" class="cart_btn" title="결제">결제</a>
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
                                        'strSql = strSql & "JOIN     MS_CHR_MAS WITH(NOLOCK) ON SL_CHR_CD = CM_CHR_CD "
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
                    ' 2022_10 이후로 전부 블락처리 -> 추후에 군무원 딱지 재사용 가능성 있다고 함
                    only_army = armyOnly(ccd)

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



