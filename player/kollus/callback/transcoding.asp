<!-- #include virtual = "/common/inc/RSexec.asp" -->
<!-- #include virtual = "/common/inc/VarDef.asp"-->
<!-- #include virtual = "/common/inc/FunDef.asp"-->
<!-- #include virtual = "/common/inc/json_parse.asp"-->
<%
    req = fncRequest("request_id")
    pky = fncRequest("content_provider_key")
    fnm = fncRequest("filename")
    uky = fncRequest("upload_file_key")
    trt = fncRequest("transcoding_result") '트랜스코딩 여부

    'req = "20170927-callback-59cb3a104c18d"
    'pky = "megastudyedu"
    'fnm = "Y17AO_34567890_11131_000000_C15EF34556MX112.MP4"
    'uky = "20170927-j4tu6428"
    'trt = "success"

    if pky = "megastudy-test" Then
        Response.End
    End if


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
            w = 16 : h = 9
            pfk = "megastudyedu-pc1-high-1"
        End if
    End if

    Select Case drm
        Case "Y" :
            Select Case ct1
                Case "A" : cky = "yozl19lv"
                Case "H" : cky = "2u2ep1fc"
            End Select
        Case Else :
            Select Case ct1
                Case "A" : cky = "hid5p2ps"
                Case Else : cky = "yzqgwk4l"
            End Select
    End Select


    if cky <> "" Then
	    '결과
        strSql = ""
        strSql = strSql & "INSERT INTO MT_TRANSCODING_HIS(TH_REQ_KEY,TH_PROVIDER_KEY,TH_FILE_NM,TH_UPLOAD_KEY,TH_DRM_YN,TH_YEAR,TH_CATE1,TH_CATE2,TH_CON_CD,TH_SUB_CD,TH_TEC_NUM,TH_REST_NM,TH_SET_CH,TH_RESULT,TH_REG_DT) "
        strSql = strSql & "SELECT '" & req & "', '" & pky & "', '" & fnm & "', '" & uky & "', '" & drm & "', '20" & dyy & "', '" & ct1 & "', '" & ct2 & "', '" & ccd & "', '" & scd & "', '" & tno & "', '" & rnm & "', '" & cky & "', '" & trt & "', GETDATE() "
        call DBExec(strSql,"tran")
        call DBClose(DBCon)

	    Set objXMLHTTP = Server.CreateObject("MSXML2.ServerXMLHTTP")
	    strUrl = "http://api.kr.kollus.com/0/media/channel/attach/" & uky & "?access_token=9hxkdfcrnv2zprz0"
	    strParam = "channel_key=" & cky 'POST 방식일 경우 사용

	    objXMLHTTP.Open "POST", strUrl, false
	    objXMLHTTP.setRequestHeader "Content-Type","application/x-www-form-urlencoded"
	    objXMLHTTP.Send strParam

	    strStatus = objXMLHTTP.Status
	    strData = objXMLHTTP.responseText

	    Set objXMLHTTP = Nothing
    
        Set rData = JSON.parse(join(array(strData)))
        
        mky =  rData.result.media_content_key   
    
        strSql = ""
        strSql = strSql & "INSERT INTO MT_CHANNEL_HIS(CH_REQ_KEY, CH_UPD_TYPE, CH_PROVIDER_KEY, CH_FILE_NM, CH_MEDIA_KEY, CH_UPLOAD_KEY, CH_CHANNEL_KEY, CH_CHANNEL_NM, CH_PROFILE_KEY, CH_QUERY_STR, CH_REG_DT) "
        strSql = strSql & "SELECT '" & req & "','" & utp & "','" & pky & "','" & fnm & "','" & mky & "','" & uky & "','" & cky & "','" & cnm & "','" & pfk & "','" & str & "',GETDATE() "
        call DBExec(strSql,"tran")
        call DBClose(DBCon)

	    'strSql = ""
	    'strSql = strSql & "SELECT   CI_UPLOAD_KEY "
	    'strSql = strSql & "FROM     MS_CONTENT_INFO WITH(NOLOCK) "
        'strSql = strSql & "WHERE    CI_DEL_YN = 'N' "
        'strSql = strSql & "AND      CI_CATE1 = '" & ct1 & "' "
        'strSql = strSql & "AND      CI_CON_CD = '" & ccd & "'; "
	    'SET RS = DBexec(strSql,"study")
	    'If Not RS.EOF Then
        '    del_uky = Trim(Rs(0))
	    'End If
	    'Call DBClose(RS)

        strSql = ""
        'if del_uky <> "" Then
        '    strSql = strSql & "INSERT   INTO MegaTran.dbo.MS_CONTENT_HIS(CH_INFO_IDX,CH_FILE_NM,CH_MEDIA_KEY,CH_UPLOAD_KEY,CH_CHANNEL_KEY,CH_CHANNEL_NM,CH_PROFILE_KEY,CH_DRM_YN,CH_YEAR,CH_CATE1,CH_CATE2,CH_CON_CD,CH_SUB_CD,CH_TEC_NUM,CH_REST_NM,CH_CONSIZE_W,CH_CONSIZE_H,CH_DEL_YN,CH_REG_DT) "
        '    strSql = strSql & "SELECT   CI_IDX, CI_FILE_NM,CI_MEDIA_KEY,CI_UPLOAD_KEY,CI_CHANNEL_KEY,CI_CHANNEL_NM,CI_PROFILE_KEY,CI_DRM_YN,CI_YEAR,CI_CATE1,CI_CATE2,CI_CON_CD,CI_SUB_CD,CI_TEC_NUM,CI_CONSIZE_W,CI_CONSIZE_H,CI_REST_NM,CI_DEL_YN,CI_REG_DT "
        '    strSql = strSql & "WHERE    CI_DEL_YN = 'N' "
        '    strSql = strSql & "AND      CI_CATE1 = '" & ct1 & "' "
        '    strSql = strSql & "AND      CI_CON_CD = '" & ccd & "'; "
        '
        '    strSql = strSql & "DELETE   MS_CONTENT_INFO "
        '    strSql = strSql & "WHERE    CI_DEL_YN = 'N' "
        '    strSql = strSql & "AND      CI_CATE1 = '" & ct1 & "' "
        '    strSql = strSql & "AND      CI_CON_CD = '" & ccd & "'; "
        'End if


	    strSql = ""
	    strSql = strSql & "SELECT   COUNT(1) "
	    strSql = strSql & "FROM     MS_CONTENT_INFO WITH(NOLOCK) "
        strSql = strSql & "WHERE    CI_DEL_YN = 'N' "
        strSql = strSql & "AND      CI_UPLOAD_KEY = '" & uky & "' "
	    SET RS = DBexec(strSql,"study")
	    If Not RS.EOF Then
            keyCnt = Rs(0)
	    End If
	    Call DBClose(RS)

        if keyCnt = 0 Then
            strSql = strSql & "INSERT INTO MS_CONTENT_INFO(CI_FILE_NM,CI_MEDIA_KEY,CI_UPLOAD_KEY,CI_CHANNEL_KEY,CI_CHANNEL_NM,CI_PROFILE_KEY,CI_DRM_YN,CI_YEAR,CI_CATE1,CI_CATE2,CI_CON_CD,CI_SUB_CD,CI_TEC_NUM,CI_CONSIZE_W,CI_CONSIZE_H,CI_REST_NM,CI_DEL_YN,CI_REG_DT) "
            strSql = strSql & "SELECT '" & fnm & "', '" & mky & "', '" & uky & "', '" & cky & "', '" & cnm & "', '" & pfk & "', '" & drm & "', '20" & dyy & "', '" & ct1 & "', '" & ct2 & "', '" & ccd & "', '" & scd & "', '" & tno & "', '" & w & "', '" & h & "', '" & rnm & "', 'N', GETDATE() "
            call DBExec(strSql,"study")
            call DBClose(DBCon)
        End if

        Select Case ct1
            Case "A":

            Case "E":

            Case "H":

        End Select

        'if del_uky <> "" Then
        '    Set objXMLHTTP = Server.CreateObject("MSXML2.ServerXMLHTTP")
        '    strUrl = "http://api.kr.kollus.com/0/media/library/delete/" & del_uky & "?access_token=9hxkdfcrnv2zprz0"
        '    strParam = "" 'POST 방식일 경우 사용
        '
        '    objXMLHTTP.Open "POST", strUrl, false
        '    objXMLHTTP.setRequestHeader "Content-Type","application/x-www-form-urlencoded"
        '    objXMLHTTP.Send strParam
        '
        '    strStatus = objXMLHTTP.Status
        '    strData = objXMLHTTP.responseText
        '
        '    Set objXMLHTTP = Nothing
        'End if

    End if
%>