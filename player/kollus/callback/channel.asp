<!-- #include virtual = "/common/inc/RSexec.asp" -->
<!-- #include virtual = "/common/inc/VarDef.asp"-->
<!-- #include virtual = "/common/inc/FunDef.asp"-->
<%
    RESPONSE.END


    req = fncRequest("request_id")

    pky = fncRequest("content_provider_key")
    fnm = fncRequest("filename")
    uky = fncRequest("upload_file_key")
    mky = fncRequest("media_content_key")
    cky = fncRequest("channel_key")
    cnm = fncRequest("channel_name")
    pfk = fncRequest("profile_key")
    utp = fncRequest("update_type")

    'POST 방식 -----------------------------------------
    str = ""
    For Each item In REQUEST.FORM
        For i=1 To REQUEST.FORM(item).Count
            str =  str & "" & item & " : " & REQUEST.FORM(item)(i) & "&"
        Next
    Next

    strSql = ""
    strSql = strSql & "INSERT INTO MT_KOLLUS_TEMP(KT_DEVICE, KT_STR) "
    strSql = strSql & "SELECT 'P', '" & str & "' "
    call DBExec(strSql,"tran")
    call DBClose(DBCon)

    'if pky = "megastudy-test" Then
    '    Response.End
    'End if

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

    if rnm <> "" Then
        if Left(rnm,1) = "Y" Then
            rnm_cut = Right(Left(rnm,3),1)
        Else
            rnm_cut = Left(rnm,2)
        End if

        if inStr(rnm_cut, "C") > 0 Then
            w = 21 : h = 9
            pfk = "megastudyedu-pc1-high"
        Elseif inStr(rnm_cut, "K") > 0 Then
            w = 16 : h = 9
            pfk = "megastudyedu-pc1-high-2"
        Elseif inStr(rnm_cut, "QH") > 0 Then
            w = 16 : h = 9
            pfk = "megastudyedu-pc1-high-1"
        Elseif inStr(rnm_cut, "QE") > 0 Then
            w = 16 : h = 9
            pfk = "megastudyedu-pc1-high-3"
        Else
            w = 4 : h = 3
            pfk = "megastudyedu-pc1-high-1"
        End if
    End if
    '파일명 규칙 정보 설정///////////////////////////////////////////////////////////////


        
    if utp = "channel_join" Then

        strSql = ""
        strSql = strSql & "INSERT INTO MT_CHANNEL_HIS(CH_REQ_KEY, CH_UPD_TYPE, CH_PROVIDER_KEY, CH_FILE_NM, CH_MEDIA_KEY, CH_UPLOAD_KEY, CH_CHANNEL_KEY, CH_CHANNEL_NM, CH_PROFILE_KEY, CH_QUERY_STR, CH_REG_DT) "
        strSql = strSql & "SELECT '" & req & "','" & utp & "','" & pky & "','" & fnm & "','" & mky & "','" & uky & "','" & cky & "','" & cnm & "','" & pfk & "','" & str & "',GETDATE() "
        call DBExec(strSql,"tran")
        call DBClose(DBCon)

	    strSql = ""
	    strSql = strSql & "SELECT   CI_UPLOAD_KEY "
	    strSql = strSql & "FROM     MS_CONTENT_INFO WITH(NOLOCK) "
        strSql = strSql & "WHERE    CI_DEL_YN = 'N' "
        strSql = strSql & "AND      CI_CATE1 = '" & ct1 & "' "
        strSql = strSql & "AND      CI_CON_CD = '" & ccd & "'; "
	    SET RS = DBexec(strSql,"study")
	    If Not RS.EOF Then
            del_uky = Trim(Rs(0))
	    End If
	    Call DBClose(RS)

        strSql = ""
        strSql = strSql & "UPDATE   MS_CONTENT_INFO "
        strSql = strSql & "SET      CI_DEL_YN = 'Y', "
        strSql = strSql & "         CI_UPD_DT = GETDATE() "
        strSql = strSql & "WHERE    CI_DEL_YN = 'N' "
        strSql = strSql & "AND      CI_CATE1 = '" & ct1 & "' "
        strSql = strSql & "AND      CI_CON_CD = '" & ccd & "'; "
        strSql = strSql & "INSERT INTO MS_CONTENT_INFO(CI_FILE_NM,CI_MEDIA_KEY,CI_UPLOAD_KEY,CI_CHANNEL_KEY,CI_CHANNEL_NM,CI_PROFILE_KEY,CI_DRM_YN,CI_YEAR,CI_CATE1,CI_CATE2,CI_CON_CD,CI_SUB_CD,CI_TEC_NUM,CI_CONSIZE_W,CI_CONSIZE_H,CI_REST_NM,CI_DEL_YN,CI_REG_DT) "
        strSql = strSql & "SELECT '" & fnm & "', '" & mky & "', '" & uky & "', '" & cky & "', '" & cnm & "', '" & pfk & "', '" & drm & "', '20" & dyy & "', '" & ct1 & "', '" & ct2 & "', '" & ccd & "', '" & scd & "', '" & tno & "', '" & w & "', '" & h & "', '" & rnm & "', 'N', GETDATE() "
        call DBExec(strSql,"study")
        call DBClose(DBCon)


        Select Case ct1
            Case "A":

            Case "E":

                


            Case "H":

        End Select

        if del_uky <> "" Then
            Set objXMLHTTP = Server.CreateObject("MSXML2.ServerXMLHTTP")
            strUrl = "http://api.kr.kollus.com/0/media/library/delete/" & del_uky & "?access_token=9hxkdfcrnv2zprz0"
            strParam = "" 'POST 방식일 경우 사용
        
            objXMLHTTP.Open "POST", strUrl, false
            objXMLHTTP.setRequestHeader "Content-Type","application/x-www-form-urlencoded"
            objXMLHTTP.Send strParam
        
            strStatus = objXMLHTTP.Status
            strData = objXMLHTTP.responseText
        
            Set objXMLHTTP = Nothing
        End if
    End if
%>