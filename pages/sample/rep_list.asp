<!-- #include file = "./inc.asp"-->
<!-- #include virtual = "/common/inc/PageDef.asp"-->
<%
    page = getParamInt("page",1)
    PageSize = 10

    '총 게시글 수
    nListTot = 0
    strSql = ""
    strSql = strSql & " SELECT COUNT(*) "
    strSql = strSql & " FROM MG_EVT_DTL WITH(NOLOCK) "
    strSql = strSql & " WHERE ED_MAS_CD = "&rep_evt_cd&" "
    strSql = strSql & " AND ISNULL(ED_ETC, 'N') <> 'Y' AND  ED_DEL_YN = 'N' "
    set objRs = DBExec(strSql,"study")
    if not (objRs.eof and objrs.bof) then
        nListTot = objRs(0)
    end if
    call dbclose(objrs)

    ' 공지글 출력
    arrList = null
    strSql = ""
    strSql = strSql & " SELECT TOP 1 ROW_NO = ROW_NUMBER() OVER(ORDER BY ED_DTL_CD DESC) "
    strSql = strSql & " 	 , ED_DTL_CD, ED_MEM_ID, ED_CONTENT, ED_REG_DT = convert(CHAR(10),ED_REG_DT,23)  "
    strSql = strSql & " FROM MG_EVT_DTL WITH(NOLOCK) "
    strSql = strSql & " WHERE ED_MAS_CD = "&rep_evt_cd&" "
    strSql = strSql & " AND ED_ETC = 'Y' AND ED_DEL_YN = 'N' "
    set objRs = DBExec(strSql,"study")
    if not (objRs.eof and objrs.bof) then
        N_ROW_NO    = objRs(0)
        N_ED_DTL_CD = objRs(1)
        N_ED_MEM_ID = objRs(2)
        N_MSG       = re_sqlFilter(objRs(3))
        N_ED_REG_DT = objRs(4)
    end if
    call dbclose(objrs)

    ' 비공지글 출력
    arrList = null
    strSql = ""
    strSql = strSql & " SELECT * "
    strSql = strSql & " FROM ( "
    strSql = strSql & " 	SELECT ROW_NO = ROW_NUMBER() OVER(ORDER BY ED_DTL_CD DESC) "
    strSql = strSql & " 		, ED_DTL_CD, ED_MEM_ID, ED_MEM_NM, ED_CONTENT, ED_REG_DT = convert(CHAR(10),ED_REG_DT,23)  "
    strSql = strSql & " 	FROM MG_EVT_DTL WITH(NOLOCK) "
    strSql = strSql & "     WHERE ED_MAS_CD = "&rep_evt_cd&" "
    strSql = strSql & " 	AND ISNULL(ED_ETC, 'N') <> 'Y' AND ED_DEL_YN = 'N' "
    strSql = strSql & " ) PG "
    strSql = strSql & " WHERE PG.ROW_NO BETWEEN (("&page&"-1) * "&PageSize&") +1 AND "&page&" * "&PageSize
    set objRs = DBExec(strSql,"study")
    if not (objRs.eof and objrs.bof) then
        arrList = objRs.getRows
    end if
    call dbclose(objrs)

%>

<p class="total_rpl">
    총 <strong><%=nListTot%></strong>개
</p>
<ul>
<% if N_ED_DTL_CD > 0 then %>
    <li class="notice">
        <span class="usr_info">
            <em>공지</em>
            <span class="name">메가군무원</span>
            <span class="date"><%=N_ED_REG_DT%></span>
        </span>
        <span class="reply">
            <%=N_MSG%>
        </span>
        <% if trim(N_ED_MEM_ID) = trim(cook_id) or ucase(mem_type) = "E" then %>
        <a href="javascript:;" class="del_btn" onclick="delX(<%=N_ED_DTL_CD%>);" title="댓글 삭제">삭제</a>
        <% end if %>
    </li>
<% end if %>
<%
    if isarray (arrList) then
        nListNo = nListTot - ((page-1) * pageSize)
        for n = 0 to ubound(arrList,2)
            ROW_NO = arrList(0,n)
            ED_DTL_CD = arrList(1,n)
            ED_MEM_ID = arrList(2,n)
            ED_MEM_NM = arrList(3,n)
            msg  = re_sqlfilter(arrList(4,n))
            ED_REG_DT = arrList(5,n)

            msg = replace(replace(msg,chr(10),"<br>"),chr(13),"<br>")

            firstName = left(ED_MEM_NM,1)
            tmpNM = firstName & string(len(ED_MEM_NM)-1,"*")
%>

    <li>
        <span class="usr_info">
            <span class="name"><%=tmpNM%></span>
            <span class="date"><%=ED_REG_DT%></span>
        </span>
        <span class="reply">
            <%=msg%>
        </span>
        <% if trim(ED_MEM_ID) = trim(cook_id) or ucase(mem_type) = "E" then %>
        <a href="javascript:;" class="del_btn" onclick="delX(<%=ED_DTL_CD%>);" title="댓글 삭제">삭제</a>
        <% end if %>
    </li>

<%
            nListNo = nListNo - 1
        next
    else
%>
    <li>
        <span class="reply">
            등록된 내용이 없습니다.
        </span>
    </li>
<%
    end if
%>
</ul>

<div class="paging">
<%
    purl = "./rep_list.asp?1=1"
    Call fncCommonPageAx(nListTot, PageSize, page, purl, "paging", "", img_main&"/m/common/btn_tbprev.gif", "", img_main&"/m/common/btn_tbnext.gif")
%>
</div>


