<!-- #include virtual = "/common/inc/VarDef.asp" -->
<!-- #include virtual = "/common/inc/Fundef.asp" -->
<!-- #include virtual = "/common/inc/RSexec.asp" -->
<%
Response.AddHeader "Cache-Control", "no-cache"
Response.AddHeader "Expires", "0"
Response.AddHeader "Pragma", "no-cache"
Response.ContentType = "text/html; charset=euc-kr"
%>
<%
	IMG = img_player+"/player_2016"
	
    seq=fncRequest("seq")
    dom_cd=fncRequest("dom_cd")	
    sub_cd=fncRequest("sub_cd")	
    
    Sql = "SELECT DOM_CD,DOM_MM "
    Sql = Sql & "FROM ( "
    Sql = Sql & "	SELECT  "
    Sql = Sql & "	DOM_CD=CASE WHEN LEFT(QM_SUB_COD,2)='10' THEN 1 "
    Sql = Sql & "		 WHEN LEFT(QM_SUB_COD,2)='20' THEN 2 "
    Sql = Sql & "		 WHEN LEFT(QM_SUB_COD,2)='30' THEN 3 "	 
    Sql = Sql & "		 WHEN LEFT(QM_SUB_COD,2)='41' THEN  "
    Sql = Sql & "			CASE WHEN QM_SUB_COD='4113' THEN 4 ELSE 5 END "
    Sql = Sql & "		 WHEN LEFT(QM_SUB_COD,2)='42' THEN 6 "
    Sql = Sql & "		 WHEN LEFT(QM_SUB_COD,2)='50' THEN 7 END, "
    Sql = Sql & "	DOM_MM=CASE WHEN LEFT(QM_SUB_COD,2)='10' THEN '국어' "
    Sql = Sql & "		 WHEN LEFT(QM_SUB_COD,2)='20' THEN '수학' "
    Sql = Sql & "		 WHEN LEFT(QM_SUB_COD,2)='30' THEN '영어'	  "
    Sql = Sql & "		 WHEN LEFT(QM_SUB_COD,2)='41' THEN  "
    Sql = Sql & "			CASE WHEN QM_SUB_COD='4113' THEN '한국사' ELSE '사회탐구' END "
    Sql = Sql & "		 WHEN LEFT(QM_SUB_COD,2)='42' THEN '과학탐구' "
    Sql = Sql & "		 WHEN LEFT(QM_SUB_COD,2)='50' THEN '제2외국어' END	  "
    Sql = Sql & "	FROM ME_QST_MAS WITH(NOLOCK) "
    Sql = Sql & "	WHERE QM_SEQ=" & seq & " "
    Sql = Sql & "	AND QM_EXAM_TYPE='1' "
    Sql = Sql & ") A "
    Sql = Sql & "GROUP BY DOM_CD,DOM_MM	  "
    Sql = Sql & "ORDER BY 1 "    
    call RSExec(Rs,0,3,Sql,"exammain")
    if not Rs.eof then
        arr_dom=Rs.GetRows()
    end if
    RSClose(Rs)
    
    if dom_cd="2" or dom_cd="5" or dom_cd="6" or dom_cd="7" then
        Sql = "SELECT SM_SUB_COD,SM_SUB_NAM,SM_DIS_SEQ_GO2	  "
        Sql = Sql & "FROM ME_QST_MAS WITH(NOLOCK) JOIN ME_SUB_MAS WITH(NOLOCK) "
        Sql = Sql & "ON QM_SUB_COD=SM_SUB_COD "
        Sql = Sql & "WHERE QM_SEQ=" & seq & " "
        Sql = Sql & "AND QM_EXAM_TYPE='1' "
        select case dom_cd
            case "2" : Sql = Sql & "AND QM_SUB_COD LIKE '2%' "
            case "5" : Sql = Sql & "AND QM_SUB_COD LIKE '41%' AND QM_SUB_COD<>'4113' "
            case "6" : Sql = Sql & "AND QM_SUB_COD LIKE '42%' "
            case "7" : Sql = Sql & "AND QM_SUB_COD LIKE '50%' "
        end select 
        Sql = Sql & "GROUP BY SM_SUB_COD,SM_SUB_NAM,SM_DIS_SEQ_GO2	  "
        Sql = Sql & "ORDER BY SM_DIS_SEQ_GO2 "
        call RSExec(Rs,0,3,Sql,"exammain")
        if not Rs.eof then
            arr_subject=Rs.GetRows()
        end if
        RSClose(Rs)        
    end if
%>
					<select id="dom_cd" onchange="fncChange_Dom();">
						<option value="">선택</option>
						<%
						    if isarray(arr_dom) then
						        for fCnt=0 to ubound(arr_dom,2)
                        %>
						<option value="<%=arr_dom(0,fCnt)%>" <%if dom_cd=trim(arr_dom(0,fCnt)) then%>selected<%end if%>><%=arr_dom(1,fCnt)%></option>
                        <%						        
						        next
						    end if
						%>
					</select>
					<select id="sub_cd" <%if not isarray(arr_subject) then%>disabled<%end if%> onchange="fncChange_Subject();">
						<option value="">선택</option>
						<%
						    if isarray(arr_subject) then
						        for fCnt=0 to ubound(arr_subject,2)
                        %>
						<option value="<%=arr_subject(0,fCnt)%>" <%if sub_cd=trim(arr_subject(0,fCnt)) then%>selected<%end if%>><%=arr_subject(1,fCnt)%></option>                        
                        <%						        
						        next
						    end if
						%>						
					</select>