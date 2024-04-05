<!-- #include virtual="/s/gong/event/2022/12220192/inc.asp" -->
<!-- #include virtual = "/common/inc/PageDef.asp"-->
<%
mode = fncrequest("mode")
if mode="exam_nm" then 
    examidx = fncrequest("examidx")

    strSql =""
    strSql = strSql&"    SELECT MOE_DTL_CNT,CASE WHEN T.CNT=MOE_DTL_QCNT then 'Y' else 'N' end as chk "
    strSql = strSql&"    FROM "&dboHead&"ME_ONLINE_EXAM_DTL WITH(NOLOCK) "
    strSql = strSql&"    LEFT JOIN ( "
    strSql = strSql&"        SELECT COUNT(1) AS CNT,MOE_QST_DIDX FROM "&dboHead&"ME_ONLINE_EXAM_DTL WITH(NOLOCK) "
    strSql = strSql&"        INNER JOIN "&dboHead&"ME_ONLINE_EXAM_QST WITH(NOLOCK) ON MOE_DTL_IDX=MOE_QST_DIDX  "
    strSql = strSql&"        WHERE MOE_DTL_MIDX = '"&examidx&"' "
    strSql = strSql&"        GROUP BY MOE_QST_DIDX  "
    strSql = strSql&"    ) AS T ON T.MOE_QST_DIDX=MOE_DTL_IDX "
    strSql = strSql&"    WHERE MOE_DTL_MIDX = '"&examidx&"' ORDER BY MOE_DTL_CNT " 
    set objrs = dbexec(strSql, "exam")
    if not ( objrs.eof and objrs.bof) then 
        proc_result = "succ"        
        while not objrs.eof
            rv = rv & " { "
            rv = rv & "     ""cnt"":"""&objrs("MOE_DTL_CNT")&""", ""chk"":"""&objrs("CHK")&""" "
            rv = rv & " },"
            objrs.movenext
        wend
        rv = left(rv,len(rv)-1)
    end if 
    call dbclose(objrs)

    response.write " { "
    response.write "    ""proc_result"" : """&proc_result&""" "
    response.write "    , ""proc_data"" : [ "
    response.write rv
    response.write "    ] "
    response.write " } "
    response.end 

elseif mode="exam_cnt" then '선택 회차 제출여부 확인. 
    examidx = fncrequest("examidx")
    examqcnt = fncrequest("examqcnt")
    examchk = "N"
    examqstchk = "N"     '선택한 회차 DB등록 여부 확인
    strSql = ""
    strSql = strSql & " SELECT * FROM "&dboHead&"ME_ONLINE_EXAM_MEM_INFO WITH(NOLOCK) "
    strSql = strSql & " WHERE MOE_INFO_MIDX = '"&examidx&"' AND MOE_INFO_MEM_ID ='"&cook_id&"' AND MOE_INFO_EXAM_CNT="&examqcnt&" AND MOE_INFO_DELYN='N' "
 
    set objrs = dbexec(strSql, "exam")
    if not (objrs.eof and objrs.bof) then
        examchk = "Y"
    end if
    call dbclose(objrs)

    strSql = ""
    strSql = strSql & "    SELECT * FROM ( "
    strSql = strSql & "        SELECT COUNT(1) AS CNT,MOE_QST_DIDX FROM "&dboHead&"ME_ONLINE_EXAM_DTL WITH(NOLOCK) "
    strSql = strSql & "        INNER JOIN "&dboHead&"ME_ONLINE_EXAM_QST WITH(NOLOCK) ON MOE_DTL_IDX=MOE_QST_DIDX "
    strSql = strSql & "        WHERE  MOE_DTL_MIDX = '"&examidx&"' AND MOE_DTL_CNT="&examqcnt&" "
    strSql = strSql & "        GROUP BY MOE_QST_DIDX"
    strSql = strSql & "    ) AS T "
    strSql = strSql & "    INNER JOIN ME_ONLINE_EXAM_DTL WITH(NOLOCK) ON T.CNT=MOE_DTL_QCNT AND T.MOE_QST_DIDX=MOE_DTL_IDX"
    strSql = strSql & "    WHERE MOE_DTL_MIDX = '"&examidx&"' AND MOE_DTL_CNT="&examqcnt&" "

    set objrs = dbexec(strSql, "exam")
    if not (objrs.eof and objrs.bof) then
        examqstchk = "Y"
    end if
    call dbclose(objrs)   


	Response.write "{ ""proc_data"":"""&examchk&""",""proc_data2"":"""&examqstchk&"""   }"
	Response.End 

elseif mode ="apply" then  '응시한시험명 회차선택

    examidx = fncrequest("examidx")
    strSql = ""
    strSql = strSql & " SELECT MOE_INFO_IDX,MOE_INFO_EXAM_CNT "
    strSql = strSql & " FROM "&dboHead&"ME_ONLINE_EXAM_MEM_INFO WITH(NOLOCK) "
    strSql = strSql & " WHERE MOE_INFO_MIDX= '"&examidx&"' AND MOE_INFO_DELYN='N' AND MOE_INFO_MEM_ID='"&cook_id&"' "
    strSql = strSql & " ORDER BY MOE_INFO_EXAM_CNT "
    set objrs = dbexec(strSql, "exam")
    if not ( objrs.eof and objrs.bof) then 
        proc_result = "succ"        
        while not objrs.eof
            rv = rv & " { "
            rv = rv & "     ""apply_infoidx"":"""&objrs("MOE_INFO_IDX")&""", ""apply_infocnt"":"""&objrs("MOE_INFO_EXAM_CNT")&""" "
            rv = rv & " },"
            objrs.movenext
        wend
        rv = left(rv,len(rv)-1)
    end if 
    call dbclose(objrs)

    response.write " { "
    response.write "    ""proc_result"" : """&proc_result&""" "
    response.write "    , ""proc_data"" : [ "
    response.write rv
    response.write "    ] "
    response.write " } "
    response.end 

elseif mode="cate_qst" then '대분류 항목 선택

    castcode = fncrequest("castcode")
    rv = "" : proc_result = "fail"
    tmpDbHead = ""

    if isRealServer() = false then
        tmpDbHead = "real_megagong.megaexam.dbo."
    end if

    strSql = ""
    strSql = strSql&" SELECT T.MOE_COM_CATE_CD2,T.MOE_COM_CATE_NM2,ISNULL(S.CNT,0) AS CNT FROM ("
    strSql = strSql & " SELECT MOE_COM_CATE_CD2,MOE_COM_CATE_NM2 "
    strSql = strSql & " FROM "&dboHead&"ME_ONLINE_EXAM_DTL WITH(NOLOCK) "  
    strSql = strSql & " INNER JOIN "&dboHead&"ME_ONLINE_EXAM_QST WITH(NOLOCK) ON MOE_DTL_IDX=MOE_QST_DIDX AND MOE_DTL_SUB_CD=MOE_QST_SUB_CD "
    strSql = strSql & " INNER JOIN ( "
    strSql = strSql & "        SELECT MOE_SC_DOM_CD,MOE_SC_SUB_CD,MOE_COM_CATE_CD,MOE_COM_CATE_NM,MOE_COM_CATE_CD2,MOE_COM_CATE_NM2 "
    strSql = strSql & "        FROM "&dboHead&"ME_ONLINE_EXAM_SUBJ_COMM WITH(NOLOCK) "
    strSql = strSql & "        INNER JOIN "&dboHead&"ME_ONLINE_EXAM_SUBJ_COMM_MAS WITH(NOLOCK) ON MOE_SC_IDX= MOE_COM_SUBJ_IDX "
    strSql = strSql & "        WHERE MOE_SC_DEL_YN='N' AND MOE_SC_SUB_CD='61' AND MOE_SC_DOM_CD='4' "
    strSql = strSql & "    )  as T ON MOE_DTL_DOM_CD=T.MOE_SC_DOM_CD AND MOE_DTL_SUB_CD=T.MOE_SC_SUB_CD AND MOE_QST_CATE_CD=MOE_COM_CATE_CD AND MOE_QST_CATE_SCD=MOE_COM_CATE_CD2 "
    strSql = strSql & "    WHERE MOE_DTL_MIDX IN ("&exam_idx&")  AND MOE_COM_CATE_CD='"&castcode&"' Group by MOE_COM_CATE_CD2,MOE_COM_CATE_NM2  ) AS T "
    strSql = strSql&" LEFT JOIN ( "
	strSql = strSql&" SELECT MOE_QST_CATE_SCD,COUNT(MOE_QST_CATE_SCD) AS CNT "
	strSql = strSql&" FROM "&dboHead&"ME_ONLINE_EXAM_QST WITH(NOLOCK) "
    strSql = strSql&" INNER JOIN  "&dboHead&"ME_ONLINE_EXAM_DTL WITH(NOLOCK) " 
    strSql = strSql&" ON MOE_DTL_IDX=MOE_QST_DIDX AND MOE_DTL_SUB_CD=MOE_QST_SUB_CD "
    strSql = strSql&" WHERE MOE_DTL_MIDX IN ("&exam_idx&") Group by MOE_QST_CATE_SCD "
    strSql = strSql&" ) as S ON T.MOE_COM_CATE_CD2=S.MOE_QST_CATE_SCD ORDER BY MOE_COM_CATE_CD2 "          
    set objrs = dbexec(strSql, "exam")
    if not ( objrs.eof and objrs.bof) then 
        proc_result = "succ"        
        while not objrs.eof
            rv = rv & " { "
            rv = rv & "     ""cd"":"""&objrs("MOE_COM_CATE_CD2")&""", ""nm"":"""&objrs("MOE_COM_CATE_NM2")&""" , ""cnt"":"""&objrs("CNT")&""""
            rv = rv & " },"
            objrs.movenext
        wend
        rv = left(rv,len(rv)-1)
    end if 
    call dbclose(objrs)

    response.write " { "
    response.write "    ""proc_result"" : """&proc_result&""" "
    response.write "    , ""proc_data"" : [ "
    response.write rv
    response.write "    ] "
    response.write " } "
    response.end 

elseif mode="qst_result" then  '검색 결과

    page = getParamInt("page",1)
    PageSize = 10

    castcode    = fncrequest("castcode")    '대분류코드
    scastcode   = fncrequest("scastcode")   '소분류코드
    chk_season  = fncrequest("chk_season")  '시즌(s0~s4)
    chk_qstper  = fncrequest("chk_qstper")  '정답률(q0~q5)
        
    arr_chk_season = split(chk_season, ",")
    arr_chk_qstper = split(chk_qstper, ",")
    strSqlWhere =""
    strSqlWhere1 =""
    '검색한 문항명
    strsql =""
    strSql = strSql & " SELECT MOE_COM_CATE_CD,MOE_COM_CATE_NM,MOE_COM_CATE_CD2,MOE_COM_CATE_NM2 "
    strSql = strSql & " FROM "&dboHead&"ME_ONLINE_EXAM_SUBJ_COMM WITH(NOLOCK) "
    strSql = strSql & " INNER JOIN "&dboHead&"ME_ONLINE_EXAM_SUBJ_COMM_MAS WITH(NOLOCK) ON MOE_SC_IDX= MOE_COM_SUBJ_IDX "
    strSql = strSql & " WHERE MOE_SC_DEL_YN='N' AND MOE_SC_SUB_CD='61' AND MOE_SC_DOM_CD='4' "
    strSql = strSql & " AND MOE_COM_CATE_CD ='"&castcode&"' AND MOE_COM_CATE_CD2 ='"&scastcode&"' "
    
    Set objrs = dbexec(strsql, "exam")
    If Not (objrs.eof And objrs.bof) Then
        MOE_COM_CATE_NM   = objrs("MOE_COM_CATE_NM")    
        MOE_COM_CATE_NM2   = objrs("MOE_COM_CATE_NM2")   
    End If
    Call dbclose(objrs)

    '시즌(s0~s4) '화제의 모의고사 추가 (1 -> 17 변경예정)
    for i = 0 to ubound(arr_chk_season)
        arr_chk_season_tmp = Trim(arr_chk_season(i))
        if arr_chk_season_tmp ="s1" then 
            strSqlWhere = "( MOE_DTL_MIDX = 17 AND ( MOE_DTL_CNT between 1 and 35 ) ) "
        elseif arr_chk_season_tmp ="s2" then 
            if strSqlWhere ="" then 
                strSqlWhere = "( MOE_DTL_MIDX = 17 AND ( MOE_DTL_CNT between 36 and 63 ) ) "
            else
                strSqlWhere = strSqlWhere + "OR ( MOE_DTL_MIDX = 17 AND ( MOE_DTL_CNT between 36 and 63 ) ) "
            end if 
        elseif arr_chk_season_tmp ="s3" then 
            if strSqlWhere ="" then 
                strSqlWhere = "( MOE_DTL_MIDX = 17 AND ( MOE_DTL_CNT between 64 and 77 ) ) "
            else
                strSqlWhere = strSqlWhere + "OR ( MOE_DTL_MIDX = 17 AND ( MOE_DTL_CNT between 64 and 77 ) ) "
            end if    
        elseif arr_chk_season_tmp ="s4" then 
            if strSqlWhere ="" then 
                strSqlWhere = "( MOE_DTL_MIDX = 17 AND ( MOE_DTL_CNT between 78 and 100 ) )"
            else
                strSqlWhere = strSqlWhere + "OR ( MOE_DTL_MIDX = 17 AND ( MOE_DTL_CNT between 78 and 100 ) ) "
            end if  
        'elseif arr_chk_season_tmp ="zz" then 
        '    if strSqlWhere = "" then 
        '        strSqlWhere = " MOE_DTL_MIDX =6 "
        '    else
        '         strSqlWhere = strSqlWhere + "OR ( MOE_DTL_MIDX = 6) "
        '    end if 
        end if 
    next

    '정답률(q0~q5)
    for k = 0 to ubound(arr_chk_qstper)
        arr_chk_qstper_tmp = Trim(arr_chk_qstper(k))
        if arr_chk_qstper_tmp ="q0" then 
            strSqlWhere1 = "( ISNULL(MOE_QST_ANS_PER,0) = 0 ) "
        elseif arr_chk_qstper_tmp ="q1" then 
            if strSqlWhere1 ="" then 
                strSqlWhere1 = "( MOE_QST_ANS_PER < 21 ) "
            else
                strSqlWhere1 = strSqlWhere1 + "OR ( MOE_QST_ANS_PER < 21 ) "
            end if    
        elseif arr_chk_qstper_tmp ="q2" then 
            if strSqlWhere1 ="" then 
                strSqlWhere1 = "( MOE_QST_ANS_PER >= 21 and MOE_QST_ANS_PER < 41  ) "
            else
                strSqlWhere1 = strSqlWhere1 + "OR ( MOE_QST_ANS_PER >= 21 and MOE_QST_ANS_PER < 41  ) "
            end if           
        elseif arr_chk_qstper_tmp ="q3" then 
            if strSqlWhere1 ="" then 
                strSqlWhere1 = "( MOE_QST_ANS_PER >= 41 and MOE_QST_ANS_PER < 61  ) "
            else
                strSqlWhere1 = strSqlWhere1 + "OR ( MOE_QST_ANS_PER >= 41 and MOE_QST_ANS_PER < 61  ) "
            end if         
        elseif arr_chk_qstper_tmp ="q4" then 
            if strSqlWhere1 ="" then 
                strSqlWhere1 = "( MOE_QST_ANS_PER >= 61 and MOE_QST_ANS_PER < 81  ) "
            else
                strSqlWhere1 = strSqlWhere1 + "OR ( MOE_QST_ANS_PER >= 61 and MOE_QST_ANS_PER < 81  ) "
            end if            
        elseif arr_chk_qstper_tmp ="q5" then 
            if strSqlWhere1 ="" then 
                strSqlWhere1 = "( MOE_QST_ANS_PER >= 81  ) "
            else
                strSqlWhere1 = strSqlWhere1 + "OR ( MOE_QST_ANS_PER >= 81 ) "
            end if               
        end if 
    next
    tmpDbHead = ""
    if isRealServer() = false then
        tmpDbHead = "real_megagong.megaexam.dbo."
    end if

    '검색결과
    nListTot = 0    	
    strSql =""
    strSql = strSql&" SELECT COUNT(1) AS CNT "
    strSql = strSql&" FROM "&dboHead&"ME_ONLINE_EXAM_DTL WITH(NOLOCK) "			
    strSql = strSql&" INNER JOIN "&dboHead&"ME_ONLINE_EXAM_QST WITH(NOLOCK) " 
	strSql = strSql&" ON MOE_DTL_IDX=MOE_QST_DIDX AND MOE_DTL_SUB_CD=MOE_QST_SUB_CD " 
    strSql = strSql&" WHERE MOE_QST_CATE_CD ='"&castcode&"' AND MOE_QST_CATE_SCD ='"&scastcode&"' "

    if strSqlWhere <> "" then 
        strSql = strSql&" AND ( "&strSqlWhere&") "
    end if 
    if strSqlWhere1 <> "" then 
        strSql = strSql&" AND ( "&strSqlWhere1&") "
    end if     
    Set objRs = DBExec(strSql, "exam")
        if not (objRs.eof and objrs.bof) then
            nListTot = objRs(0) '본인이 제출한 최대 회차 및 회차로 카운트
        end if
    call dbclose(objrs)

    catechklist = null
    strsql=""    
    strSql = strSql&" SELECT * FROM ( "
    strSql = strSql&" SELECT ROW_NO = ROW_NUMBER() OVER(ORDER BY MOE_DTL_MIDX,MOE_DTL_CNT,CAST(MOE_QST_NO as INT) DESC), "
    strSql = strSql&" MOE_DTL_CNT,MOE_QST_NO,MOE_QST_ANS,ISNULL(MOE_QST_ANS_PER,999) AS MOE_QST_ANS_PER, "
    strSql = strSql&" ISNULL(MOE_QST_CHOICE_1_PER,999) AS MOE_QST_CHOICE_1_PER,ISNULL(MOE_QST_CHOICE_2_PER,999) AS MOE_QST_CHOICE_2_PER, "
    strSql = strSql&" ISNULL(MOE_QST_CHOICE_3_PER,999) AS MOE_QST_CHOICE_3_PER,ISNULL(MOE_QST_CHOICE_4_PER,999) AS MOE_QST_CHOICE_4_PER, MOE_DTL_MIDX "
    strSql = strSql&" FROM "&dboHead&"ME_ONLINE_EXAM_DTL WITH(NOLOCK) "			
    strSql = strSql&" INNER JOIN "&dboHead&"ME_ONLINE_EXAM_QST WITH(NOLOCK) " 
	strSql = strSql&" ON MOE_DTL_IDX=MOE_QST_DIDX AND MOE_DTL_SUB_CD=MOE_QST_SUB_CD " 
    strSql = strSql&" WHERE MOE_QST_CATE_CD ='"&castcode&"' AND MOE_QST_CATE_SCD ='"&scastcode&"' "

    if strSqlWhere <> "" then 
        strSql = strSql&" AND ( "&strSqlWhere&") "
    end if 
    if strSqlWhere1 <> "" then 
        strSql = strSql&" AND ( "&strSqlWhere1&") "
    end if        
    strSql = strSql & " ) PG "
    strSql = strSql & " WHERE PG.ROW_NO BETWEEN (("&page&"-1) * "&PageSize&") +1 AND "&page&" * "&PageSize    
    strSql = strSQl & " ORDER BY ROW_NO"

    Set objRs = DBExec(strSql, "exam")
        If Not (objRs.EoF And objRs.BoF) Then 
            catechklist= objRs.getrows
        End If 
    Call DBClose(objRs)
    '검색된 문항에 대한 평균 정답률 계산 
    strsql=""    
    strSql = strSql&" SELECT ISNULL(ROUND(SUM(MOE_QST_ANS_PER)/COUNT(1),1),0) AS TOT_ANS_PER "
    strSql = strSql&" FROM "&dboHead&"ME_ONLINE_EXAM_DTL WITH(NOLOCK) "
    strSql = strSql&" INNER JOIN "&dboHead&"ME_ONLINE_EXAM_QST WITH(NOLOCK) ON MOE_DTL_IDX=MOE_QST_DIDX AND MOE_DTL_SUB_CD=MOE_QST_SUB_CD "
    strSql = strSql&" WHERE MOE_QST_CATE_CD ='"&castcode&"' AND MOE_QST_CATE_SCD ='"&scastcode&"' AND ISNULL(MOE_QST_ANS_PER,0) <> 0 "
    
    if strSqlWhere <> "" then 
        strSql = strSql&" AND ( "&strSqlWhere&") "
    end if 
    if strSqlWhere1 <> "" then 
        strSql = strSql&" AND ( "&strSqlWhere1&") "
    end if  
    Set objrs = dbexec(strsql, "exam")
    If Not (objrs.eof And objrs.bof) Then
        TOT_ANS_PER   = objrs("TOT_ANS_PER")    
    End If
    Call dbclose(objrs)
end if

%>
<div class="schtxtBox">
    <div>
        <h4><%=MOE_COM_CATE_NM%> > <%=MOE_COM_CATE_NM2%></h4>
        <p class="answer">평균정답률 <%if TOT_ANS_PER <> "" then %><span><%=TOT_ANS_PER%>%</span><%end if%></p>
        <p class="right">▶ 검색된 문항 : <span><%=nListTot%></span> 개</p>
    </div>

    <div class="errata_tbl">
        <table>
            <colgroup>
                <col style="width:20.11%">
                <col style="width:8.11%">
                <col style="width:8.11%">
                <col style="width:8.11%">
                <col style="width:11.11%">
                <col style="width:11.11%">
                <col style="width:11.11%">
                <col style="width:11.11%">
                <col style="width:11.11%">
            </colgroup>
            <tr>
                <th rowspan="2">구분</th>
                <th rowspan="2">회차</th>
                <th rowspan="2">문항 번호</th>
                <th rowspan="2">정답</th>
                <th rowspan="2">전체 정답률</th>
                <th colspan="4">선택지별 선택비율</th>
            </tr>
            <tr>
                <th class="bdt">1</th>
                <th class="bdt">2</th>
                <th class="bdt">3</th>
                <th class="bdt">4</th>
            </tr>
            <%
            If IsArray(catechklist) = True Then
                For n = 0 To UBound(catechklist,2)
                chk_cnt = catechklist(1,n)
                chk_qno = catechklist(2,n)
                chk_ans = catechklist(3,n)
                chk_ans_per = catechklist(4,n)
                chk_ans_per1 = catechklist(5,n)
                chk_ans_per2 = catechklist(6,n)
                chk_ans_per3 = catechklist(7,n)
                chk_ans_per4 = catechklist(8,n)
                chk_idx = catechklist(9,n)
            %>
            <tr>
                <td>
                    <%if chk_idx ="17" then %>
                        <%if chk_cnt <= 35 then %>시즌1 기본유형
                        <%elseif chk_cnt <=63 then %>시즌2 심화유형
                        <%elseif chk_cnt <=77 then %>시즌3 실전유형
                        <%else %>시즌3 독해강화<%end if %>
                    <%'else%>
                        <!-- 화제의 모의고사 -->
                    <%end if %>
                </td>
                <td><%=chk_cnt%></td>
                <td><%=chk_qno%></td>
                <td><%=chk_ans%></td>
                <td><%if chk_ans_per = 999 then %>집계중<%else%><%=chk_ans_per%>%<%end if%></td>
                <%if (chk_ans_per1 =999 OR chk_ans_per2 =999 OR chk_ans_per3 =999 OR chk_ans_per4= 999) then %>
                    <td colspan="4">집계중</td>
                <%else%>
                    <td><%=chk_ans_per1%>%</td>
                    <td><%=chk_ans_per2%>%</td>
                    <td><%=chk_ans_per3%>%</td>
                    <td><%=chk_ans_per4%>%</td>
                <%end if %>
            </tr>
            <%
                next
            else
            %>
            <tr>
                <td colspan="9">검색된 결과가 없습니다. </td>
            </tr>
            <%
            end if
            %>
        </table>
    </div>
</div>
    <%
    if isarray (catechklist) then 
        purl = "./get_info.asp?mode="&mode&"&castcode="&castcode&"&scastcode="&scastcode&"&chk_season="&chk_season&"&chk_qstper="&chk_qstper&"&1=1"
        Call fncCommonPageAx(nListTot, PageSize, page, purl, "paging", "", img_main&"/m/2021/1214_lyj4718/paging_L.jpg", "", img_main&"/m/2021/1214_lyj4718/paging_R.jpg")
    end if 
    %>  

        