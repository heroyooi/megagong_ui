<%
Response.AddHeader "Cache-Control", "no-cache"
Response.AddHeader "Expires", "0"
Response.AddHeader "Pragma", "no-cache"
Response.ContentType = "text/html; charset=euc-kr"
%>
<!-- #include virtual = "/common/inc/RSexec.asp" -->
<!-- #include virtual = "/common/inc/FunDef.asp"-->
<!-- #include virtual = "/common/inc/VarDef.asp"-->
{"TecList":[
<%
    strSql = ""
    strSql = strSql & "SELECT  TM_NUMBER, "
    strSql = strSql & "        TM_TEC_CD, "
    strSql = strSql & "        TM_TEC_NM, "
    strSql = strSql & "        DCD = ISNULL(TD_DOM_CD,'G'), "
    strSql = strSql & "        DNM = (CASE WHEN ISNULL(TD_DOM_CD,'') <> '' THEN (SELECT DM_DOM_NM FROM MS_DOM_MAS WITH(NOLOCK) WHERE DM_DOM_CD = TD_DOM_CD) ELSE '±‚≈∏' END), "
    strSql = strSql & "        ACT = TM_ACT_YN "
    strSql = strSql & "FROM    MS_TEC_MAS WITH(NOLOCK) "
    strSql = strSql & "LEFT    JOIN MS_TEC_DTL WITH(NOLOCK) ON TD_TEC_CD = TM_TEC_CD "
    'strSql = strSql & "WHERE   TM_ACT_YN = 'Y' "
    strSql = strSql & "ORDER BY TM_TEC_NM "
	Set Rs = DBExec(strSql,"study")
	If Not Rs.Eof Then
		arTec = Rs.GetRows()
	End If
	Call DBClose(rs)

    if isArray(arTec) Then
        For i = 0 To Ubound(arTec,2)
            tno = arTec(0,i)
            tcd = arTec(1,i)
            tnm = arTec(2,i)
            dcd = arTec(3,i)
            dnm = arTec(4,i)
            act = arTec(5,i)

            if strDataList <> "" Then strDataList = strDataList & ","
            strDataList = strDataList & "{"
            strDataList = strDataList & """tno"": """ & tno & """, "
            strDataList = strDataList & """tcd"": """ & tcd & """, "
            strDataList = strDataList & """tnm"": """ & tnm & """, "
            strDataList = strDataList & """dcd"": """ & dcd & """, "
            strDataList = strDataList & """dnm"": """ & dnm & """, "
            strDataList = strDataList & """act"": """ & UCase(act) & """ "
            strDataList = strDataList & "}"
        Next
    End if

    Response.Write strDataList
%>
]}