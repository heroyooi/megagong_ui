<%
Response.AddHeader "Cache-Control", "no-cache"
Response.AddHeader "Expires", "0"
Response.AddHeader "Pragma", "no-cache"
Response.ContentType = "text/html; charset=euc-kr"
%>
<!-- #include file = "./inc.asp"-->
<!-- #include virtual = "/common/inc/PageDef.asp"-->
<%

mode = fncRequest("mode")
page = getParamInt("page",1)
PageSize = 6

strWhere = ""
strWhere = strWhere & " AND ED_DEL_YN='N' "
if mode = "my" Then
    strWhere = strWhere & " AND ED_MEM_ID='"&cook_id&"' "
End if

nListTot = 0
strSql = ""
strSql = strSql & " SELECT COUNT(*) "
strSql = strSql & " FROM MG_EVT_DTL WITH(NOLOCK) "
strSql = strSql & " WHERE ED_MAS_CD = '"&certEventCode&"' "
strSql = strSql & strWhere
set objRs = DBExec(strSql,"study")
    if not (objRs.eof and objrs.bof) then
        nListTot = objRs(0)
    end if
call dbclose(objrs)

arrList = null
strSql = ""
strSql = strSql & " SELECT * "
strSql = strSql & " FROM ( "
strSql = strSql & " 	SELECT ROW_NO = ROW_NUMBER() OVER(ORDER BY ED_DTL_CD DESC) "
strSql = strSql & " 		   , ED_DTL_CD, ED_MEM_ID, ED_MEM_NM, ED_CONTENT2, ED_CONTENT4, MM_MEM_TYPE, ED_REG_DT=(CONVERT(VARCHAR(10),ED_REG_DT,23)), ED_CONTENT,ED_MAS_CD "
strSql = strSql & " 	  FROM MG_EVT_DTL WITH(NOLOCK) "
strSql = strSql & "      INNER JOIN MS_MEM_MAS WITH(NOLOCK) ON ED_MEM_ID = MM_ID "
strSql = strSql & " WHERE ED_MAS_CD = '"&certEventCode&"'  "
strSql = strSql & strWhere
strSql = strSql & " ) PG "
strSql = strSql & " WHERE PG.ROW_NO BETWEEN (("&page&"-1) * "&PageSize&") +1 AND "&page&" * "&PageSize
set objRs = DBExec(strSql,"study")
    if not (objRs.eof and objrs.bof) then
        arrList = objRs.getRows
    end if
call dbclose(objrs)
%>
<!--  gallery_lst 갤러리 리스트 -->
<div class="gallery_lst">
    <ul>
        <%
        if isarray (arrList) then
            nListNo = nListTot - ((page-1) * pageSize)
            for n = 0 to ubound(arrList,2)
                ROW_NO = arrList(0,n)
                ED_DTL_CD = arrList(1,n)
                ED_MEM_ID = arrList(2,n)
                ED_MEM_NM = arrList(3,n)
                FILENAME  = arrList(4,n)
                edContent4 = arrList(5,n)
                mmMemType = arrList(6,n)
                REG_DT = arrList(7,n)

                edContent4 = Replace(edContent4, chr(10), "<br>")
                
                firstName = left(ED_MEM_NM,1)                
                tmpNM = firstName & string(len(ED_MEM_NM)-1,"*")

        %>
        <li>
            <div>
                <span class="img"><img src="<%=file_main %>/event/<%=certEventCode%>/<%=FILENAME%>" alt="인증샷 갤러리"/></span>
                <div class="txt">
                    <%=edContent4%>
                </div>
                <p>
                    <% if (trim(ED_MEM_ID) = trim(cook_id) or ucase(fncrequestCookie("mem_type"))="E") and not isEvent then %>
                    <a href="javascript:void(0);" title="삭제" onclick="delX(<%=ED_DTL_CD%>)">[삭제]</a>
                    <% end if %>
                    <span><%=tmpNM%></span><span><%=REG_DT%></span>
                </p>
            </div>
        </li>
        <%
                nListNo = nListNo - 1
            next
        else
        %>
        <li class="none">
            <div>
            등록된 게시물이 없습니다.
            </div>
        </li>
        <%
        End if
        %>
    </ul>
</div>
<!-- // gallery_lst 갤러리 리스트 -->
<%
    if isarray (arrList) then
        purl = "./gall_list_ax.asp?1=1&mode="&mode&"&now="&lo_now_date
        Call fncCommonPageAx(nListTot, PageSize, page, purl,"paging gall", "",img_main&"/m/2022/1130_shin242/btn_prev.png", "",img_main&"/m/2022/1130_shin242/btn_next.png")
    end if
%>
