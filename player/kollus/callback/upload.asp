<!-- #include virtual = "/common/inc/RSexec.asp" -->
<!-- #include virtual = "/common/inc/VarDef.asp"-->
<!-- #include virtual = "/common/inc/FunDef.asp"-->
<%
    req = fncRequest("request_id")
    pky = fncRequest("content_provider_key")
    uky = fncRequest("upload_file_key")
    fnm = fncRequest("filename")
    
    '파일명 규칙 정보 설정///////////////////////////////////////////////////////////////
    if fnm <> "" Then
        if inStr(fnm, "/") > 0 Then fnm = Mid(fnm, inStrRev(fnm, "/") + 1, Len(fnm))
    End if

    fnm = UCase(fnm)

    ar = Split(fnm, "_")
        
    For i = 0 To Ubound(ar)
        Select Case i
            Case 0 :
                drm = Mid(ar(i),1,1)
                dyy = Mid(ar(i),2,2)
                ct1 = Mid(ar(i),4,1)
                ct2 = Mid(ar(i),5,1)
            Case 1 : 
                ccd = CLng(ar(i))
            Case 2 :
                tno = CLng(ar(i))
            Case 3 :
                scd = ar(i)
            Case Else :
                if rnm <> "" Then rnm = rnm & "_"
                rnm = rnm & ar(i)
        End Select
    Next

    strSql = ""
    strSql = strSql & "INSERT INTO MT_UPLOAD_HIS(UH_REQ_KEY,UH_PROVIDER_KEY,UH_FILE_NM,UH_UPLOAD_KEY,UH_DRM_YN,UH_YEAR,UH_CATE1,UH_CATE2,UH_CON_CD,UH_SUB_CD,UH_TEC_NUM,UH_REST_NM,UH_REG_DT) "
    strSql = strSql & "SELECT '" & req & "', '" & pky & "', '" & fnm & "', '" & uky & "', '" & drm & "', '20" & dyy & "', '" & ct1 & "', '" & ct2 & "', '" & ccd & "', '" & scd & "', '" & tno & "', '" & rnm & "', GETDATE() "
    call DBExec(strSql,"tran")
    call DBClose(DBCon)
%>