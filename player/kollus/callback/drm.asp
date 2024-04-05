<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%
Response.AddHeader "Cache-Control", "no-cache"
Response.AddHeader "Expires", "0"
Response.AddHeader "Pragma", "no-cache"
Response.ContentType = "text/html; charset=utf-8"
%>
<!-- #include virtual = "/Player/kollus/common/inc/common_inc.asp" -->
<!-- #include virtual = "/Player/kollus/common/jwt/json2.asp" -->
<!-- #include virtual = "/common/inc/json_parse.asp"-->
<%
    On Error Resume Next

    'POST 방식 -----------------------------------------
    'str = ""
    'For Each item In REQUEST.FORM
    '    For i=1 To REQUEST.FORM(item).Count
    '        str =  str & "" & item & "=" & REQUEST.FORM(item)(i) & "&"
    '    Next
    'Next
    '
    'strSql = ""
    'strSql = strSql & "INSERT INTO MT_KOLLUS_TEMP(KT_DEVICE, KT_STR) "
    'strSql = strSql & "SELECT 'P', '" & str & "' "
    'call DBExec(strSql,"tran")
    'call DBClose(DBCon)  

    Dim kind, client_user_id, player_id, device_name, media_content_key

    customUserKey = "3396e05bbfdb1c8ae1c6f0d70172e5a3a55a6604cd6dfc6f8356b12b54054fdb"
    serviceAccountKey = "megastudyedu"
    Response.AddHeader "X-Kollus-UserKey", customUserKey

    '회원여부확인
    Function fncMemIdentify(uid)
        if uid <> "" Then
		    sql = "SELECT COUNT(1) FROM MS_MEM_MAS WITH(NOLOCK) WHERE MM_ID = '"& uid & "' "
		    Set rs = DBExec(sql,"study")
		    If Not rs.EOF Then
			    fncVal = rs(0)
		    End If
		    Call DBClose(rs)
        Else
            fncVal = 0
        End if

        fncMemIdentify = fncVal
    End Function

    '모바일등록여부확인
	' return -> X:최초등록, R: 이미등록된 기기, D:기존에 삭제된 기기 있음, O:등록차단(허용기기초과)
    Function fncMobileIdentify(uid,deviceid)
        fncVal = "X"

        if uid <> "" Then

				dbRegDt = ""	'최종등록일
				dbDeviceList = ""	'등록기기리스트

				sql = ""
				sql = sql & "SELECT	CONVERT(CHAR(16),MAX(A.MM_REG_DT),20), STUFF((SELECT ',' + CAST(B.MM_DEVICE_ID AS VARCHAR(MAX)) FROM MS_MEM_MOBILE B WITH(NOLOCK) WHERE B.MM_MEM_ID = A.MM_MEM_ID FOR XML PATH('')),1,1,'') "
				sql = sql & "FROM	MS_MEM_MOBILE A WITH(NOLOCK) "
				sql = sql & "WHERE  A.MM_MEM_ID = '" & uid & "' "
				sql = sql & "GROUP BY A.MM_MEM_ID "
				Set rs = DBExec(sql,"study")
				If Not rs.EOF Then
					dbRegDt = Trim(Rs(0))
					dbDeviceList = Trim(Rs(1))
				End If
				Call DBClose(rs)    

				'최종 등록일이 적용일 이전이면 기존처럼 처리
				if dbDeviceList <> "" And deviceid <> "" Then   '기기등록 여부가 없으면 신규

					dbDelCnt = 0

					sql = "SELECT COUNT(1) FROM MS_MEM_MOBILE WITH(NOLOCK) WHERE MM_DEL_YN = 'Y' AND MM_MEM_ID = '" & uid & "' AND MM_DEVICE_ID = '" & deviceid & "' "
					Set rs = DBExec(sql,"study")
					If Not rs.EOF Then
						dbDelCnt = Trim(Rs(0))
					End If
					Call DBClose(rs)  

					if dbDelCnt = 0 Then

						dbActDeviceList = ""
                                
						sql = ""
						sql = sql & "SELECT	CONVERT(CHAR(16),MAX(A.MM_REG_DT),20), ISNULL(STUFF((SELECT ',' + CAST(B.MM_DEVICE_ID AS VARCHAR(MAX)) FROM MS_MEM_MOBILE B WITH(NOLOCK) WHERE B.MM_MEM_ID = A.MM_MEM_ID AND B.MM_DEL_YN = 'N' FOR XML PATH('')),1,1,''),'') "
						sql = sql & "FROM	MS_MEM_MOBILE A WITH(NOLOCK) "
						sql = sql & "WHERE  A.MM_MEM_ID = '" & uid & "' "
						sql = sql & "AND    A.MM_DEL_YN = 'N' "
						sql = sql & "GROUP BY A.MM_MEM_ID "
						Set rs = DBExec(sql,"study")
						If Not rs.EOF Then
							dbActDeviceList = Trim(Rs(1))
						End If
						Call DBClose(rs)  

						if dbActDeviceList <> "" Then
							if inStr(dbActDeviceList,deviceid) > 0 Then
								fncVal = "R"    '이미등록된 기기
							Else
								fncVal = "O"    '허용기기초과
							End if
						End if

					Else
						fncVal = "D"    '본인 삭제 이력 있는 기기
					End if

				End If
		Else
			fncVal = "L"
		End If

        fncMobileIdentify = fncVal
    End Function

    '다른 사용자등록여부확인
    Function fncDeviceIdentify(uid,deviceid)
        if uid <> "" Then
		    sql = "SELECT COUNT(1) FROM MS_MEM_MOBILE WITH(NOLOCK) WHERE MM_DEL_YN = 'N' AND MM_MEM_ID <> '" & uid & "' AND MM_DEVICE_ID = '"& deviceid & "' "
		    Set rs = DBExec(sql,"study")
		    If Not rs.EOF Then
			    fncVal = rs(0)
		    End If
		    Call DBClose(rs)
        Else
            fncVal = 0
        End if

        fncDeviceIdentify = fncVal
    End Function

    reqItems = fncRequest("items")
    reqItems = Replace(reqItems,"""""","""")

    reqItems = Replace(Replace(reqItems, "uservalues"":{", "uservalues"":[{"), "}}", "}]}")

    Set arr = New JSONarray	'전체 결과 저장
    Set items = New JSONobject.parse(reqItems)

    For i = 0 To items.Length - 1
	    Set row = items(i)
	    kind = row("kind")
	    client_user_id = row("client_user_id")
	    player_id = row("player_id")
	    device_name = row("device_name")
	    media_content_key = row("media_content_key")
	    start_at = row("start_at")

        Set uservalues = row("uservalues")
        ' 구 버전 Spec을 위한 예외 처리
	    'IF is_new THEN
		'    Set uservalues = row("uservalues")
	    'ELSE
		'    Set uservalues = JSONobject.parse(row("uservalues"))
	    'END IF

        For j = 0 To uservalues.Length - 1
            Set val = uservalues(j)
            PlayerKbn = val("uservalue0")
            PlayerApp = val("uservalue1")
            PlayerLoc = val("uservalue2")
            APP_NO = val("uservalue3")
            CHR_CD = val("uservalue4")
            LEC_CD = val("uservalue5")
        Next

        userid = client_user_id
        deviceid = player_id

        devicefullnm = device_name
        if inStr(devicefullnm, "iPhone") > 0 Or inStr(devicefullnm, "iPad") > 0 Or inStr(devicefullnm, "iPod") > 0 Then
            if inStr(devicefullnm, "iPhone") > 0 Then devicemodel = "iPhone"
            if inStr(devicefullnm, "iPad") > 0 Then devicemodel = "iPad"
            if inStr(devicefullnm, "iPod") > 0 Then devicemodel = "iPod"
        Else
            if inStr(devicefullnm, "/") > 0 Then
                devicemodel = Mid(devicefullnm, (inStr(devicefullnm, "/") + 1), Len(devicefullnm))
            Else
                devicemodel = devicefullnm
            End if
        End if

        result_txt = ""
        result_flg = 1

        expired = 0
        cdelete = 0

        if PlayerKbn = "A" Then
            '기기정보확인 
            If deviceid = "" Then
                result_txt = "Device information is invalid." '"기기 정보가 유효하지 않습니다."
                result_flg = 0
	        End If

            '회원여부확인
            mCnt = fncMemIdentify(userid)
	        If mCnt = 0 Then
                result_txt = "User information is invalid." '"사용자 정보가 유효하지 않습니다."
                result_flg = 0
	        End If

            '등록된 기기인지 확인
		    dCnt = 0
		    sql = "SELECT COUNT(1) FROM MS_MEM_MOBILE WITH(NOLOCK) WHERE MM_DEL_YN = 'N' AND MM_MEM_ID = '" & userid & "' AND MM_DEVICE_ID = '" & deviceid & "' "
		    Set rs = DBExec(sql,"study")
		    If Not rs.EOF Then
			    dCnt = Rs(0)
		    End If
		    Call DBClose(rs)  
  
            if dCnt > 0 Then
                result_flg = 1
            Else
		        '기기등록 ------------------------------------------------
                '모바일등록여부확인 - 타사용자
                pCnt = fncDeviceIdentify(userid,deviceid)

                if pCnt = 0 Then
                    rFlg = fncMobileIdentify(userid,deviceid)

                    if rFlg = "X" Then '신규등록
                        strSql = ""
			            strSql = strSql & "INSERT INTO MS_MEM_MOBILE (MM_MEM_ID, MM_DEVICE_ID, MM_DEVICE_MODEL, MM_DEVICE_FULLNAME, MM_REG_DT, MM_UPD_DT ) "
			            strSql = strSql & "SELECT '" & userid & "', '" & deviceid & "', '" & devicemodel & "', '" & devicefullnm & "', GETDATE(), GETDATE() "
                        Call DBexec(strSql, "study") : Call DBClose(Conn)
                        
                        result_flg = 1
		            Elseif rFlg = "R" Then '등록된 기기로 요청
                        result_flg = 1
		            Elseif rFlg = "O" Then '등록된 다른 기기가 있음
                        result_flg = 0
                        result_txt = "Not a registered device." '"등록된 디바이스가 아닙니다."
		            Elseif rFlg = "D" Then '기존 삭제 이력이 있는 기기
                        result_flg = 0
                        result_txt = "Device with registered history." '"등록 이력이 있는 디바이스 입니다."
                    Else
                        result_flg = 0
                        result_txt = "Invalid user." '"유효하지 않은 사용자 입니다."
                    End if
                Else
                    result_flg = 0
                    result_txt = "Device registered by another user." '"다른 사용자가 등록한 디바이스 입니다."
                End if
            End if


            '정상 기기 또는 기기 등록 처리 후 강좌 수강 정보 확인
            if result_flg = 1 Then
                sql = ""
                sql = sql & "SELECT AD_APP_SEQ, STD_EDT = ISNULL(CONVERT(VARCHAR(10), AD_STD_EDT, 20), '') "
                sql = sql & "FROM   MS_STD_APP WITH(NOLOCK) "
                sql = sql & "JOIN   MS_APP_DTL WITH(NOLOCK) ON SA_APP_NO = AD_APP_NO "
                sql = sql & "WHERE  SA_MEM_ID = '" & userid & "' "
                sql = sql & "AND    SA_APP_NO = " & APP_NO & " "
                sql = sql & "AND    AD_CHR_CD = " & CHR_CD & " "
                sql = sql & "AND    AD_STD_STAT = 2 "
                Set rs = DBExec(sql,"study")
                If Not rs.EOF Then
                    APP_SEQ = rs(0)
	                result_edt = Trim(rs(1))
                End If
                Call DBClose(rs)
            End if
        End if

        if result_edt <> "" Then
            result_edt = DateAdd("s", -1, DateAdd("d", 1, CDate(result_edt)))
        Else
            result_edt = DateAdd("s", -1, DateAdd("d", 1, Date()))
            result_flg = 0
        End if

        '정상다운로드 건일 경우 이력 쌓기
        if result_flg = 1 Then
            if kind = "1" Then
                strSql = "Exec Msp_Set_Std_MobileDn_His '" & userid & "', " & APP_NO & " , " & LEC_CD & "; "
                Call DBExec(strSql, "study"): Call DBClose(DBCon)

			    strSql = "EXEC MS_Set_Mobile_Player_CID '" & userid & "','" & APP_NO & "','" & APP_SEQ & "','" & CHR_CD & "','" & LEC_CD & "' "
			    Call DBExec(strSql, "megasp"): Call DBClose(DBCon)

                strSql = ""
                strSql = strSql & "SELECT	TOP 1 MP_CID "
                strSql = strSql & "FROM     MEGATRAN.DBO.MS_MOBILE_PLAYER WITH(NOLOCK) "
                strSql = strSql & "WHERE	MP_DEL_YN = 'N' "
                strSql = strSql & "AND		MP_DOWN_FLG = 'N' "
                strSql = strSql & "AND		MP_MEM_ID = '" & userid & "' "
                strSql = strSql & "AND		MP_APP_NO = " & APP_NO & " "
                strSql = strSql & "AND		MP_APP_SEQ = " & APP_SEQ & " "
                strSql = strSql & "AND		MP_CHR_CD =  " & CHR_CD & " "
                strSql = strSql & "AND		MP_LEC_CD = " & LEC_CD & " "
                strSql = strSql & "ORDER BY MP_CID DESC "
                Set rs = DBExec(strSql,"study")
                If Not rs.EOF Then
                    cid = Trim(rs(0))
                End If
                Call DBClose(rs)

                if cid <> "" Then
                    strSql = "UPDATE MEGATRAN.DBO.MS_MOBILE_PLAYER SET MP_DEVICE_ID = '" & deviceid & "', MP_DEVICE_MODEL = '" & devicemodel & "' WHERE MP_CID = " & cid & " "
                    Call DBExec(strSql, "study"): Call DBClose(DBCon)
                End if

            Elseif kind = "2" Then
                strSql = ""
                strSql = strSql & "SELECT	TOP 1 MP_CID "
                strSql = strSql & "FROM     MEGATRAN.DBO.MS_MOBILE_PLAYER WITH(NOLOCK) "
                strSql = strSql & "WHERE	MP_DEL_YN = 'N' "
                'strSql = strSql & "AND		MP_DOWN_FLG = 'N' "
                strSql = strSql & "AND		MP_MEM_ID = '" & userid & "' "
                strSql = strSql & "AND		MP_APP_NO = " & APP_NO & " "
                strSql = strSql & "AND		MP_APP_SEQ = " & APP_SEQ & " "
                strSql = strSql & "AND		MP_CHR_CD =  " & CHR_CD & " "
                strSql = strSql & "AND		MP_LEC_CD = " & LEC_CD & " "
                strSql = strSql & "ORDER BY MP_CID DESC "
                Set rs = DBExec(strSql,"study")
                If Not rs.EOF Then
                    cid = Trim(rs(0))
                End If
                Call DBClose(rs)

                if cid <> "" Then
                    strSql = "UPDATE MEGATRAN.DBO.MS_MOBILE_PLAYER SET MP_DOWN_FLG = 'Y', MP_DOWNEND_DT = GETDATE() WHERE MP_CID = " & cid & " "
                    Call DBExec(strSql, "study"): Call DBClose(DBCon)
                End if
            Elseif kind = "3" Then
                strSql = ""
                strSql = strSql & "SELECT	TOP 1 MP_CID "
                strSql = strSql & "FROM     MEGATRAN.DBO.MS_MOBILE_PLAYER WITH(NOLOCK) "
                strSql = strSql & "WHERE	MP_DEL_YN = 'N' "
                strSql = strSql & "AND		MP_DOWN_FLG = 'Y' "
                strSql = strSql & "AND		MP_MEM_ID = '" & userid & "' "
                strSql = strSql & "AND		MP_APP_NO = " & APP_NO & " "
                strSql = strSql & "AND		MP_APP_SEQ = " & APP_SEQ & " "
                strSql = strSql & "AND		MP_CHR_CD =  " & CHR_CD & " "
                strSql = strSql & "AND		MP_LEC_CD = " & LEC_CD & " "
                strSql = strSql & "ORDER BY MP_CID DESC "
                Set rs = DBExec(strSql,"study")
                If Not rs.EOF Then
                    cid = Trim(rs(0))
                End If
                Call DBClose(rs)

                if cid = "" Then
                    result_flg = 0
                    result_txt = "Download complete processing failed"
                End if
            End if
        End if


    strSql = ""
    strSql = strSql & "INSERT INTO MT_KOLLUS_TEMP(KT_DEVICE, KT_STR) "
    strSql = strSql & "SELECT 'P', '" & result_edt & " 23:59:59" & "' "
    call DBExec(strSql,"tran")
    call DBClose(DBCon)  

	    Set result = New JSONobject	'개별 처리 결과 저장
	    IF kind = "1" THEN	' kind : 1 다운로드 요청 시
		    result.add "message", result_txt
		    result.add "result", result_flg	'1 (정상)
		    result.add "expiration_refresh_popup", 0
		    result.add "expiration_playtime", 0
		    result.add "check_abuse", 0
		    result.add "expiration_date", DateDiff("s", "1970-01-01 09:00:00", result_edt)	' 만료될 시간의 unixtime stamp 지정
		    result.add "kind", 1
		    result.add "vmcheck", 0
		    result.add "media_content_key", media_content_key
	    ELSEIF kind = "2" THEN	' kind : 2 다운로드 완료 시
		    result.add "kind", 2
		    result.add "media_content_key", media_content_key
		    result.add "content_delete", 0	'0 (삭제하지 않음), 1 (다운로드 받은 파일 삭제) 다운로드된 컨텐츠를 요청에 의해 삭제하는 옵션입니다.
		    result.add "result", result_flg	'1 (정상)
            result.add "message", result_txt
	    ELSEIF kind = "3" THEN	' kind : 3 다운로드 컨텐츠 재생 시
		    result.add "kind", 3
		    result.add "media_content_key", media_content_key
		    result.add "start_at", start_at		'Request에 포함된 start_at
		    result.add "content_expired", 0	'0 (재생가능)
		    result.add "content_delete", 0	'0 (삭제하지 않음), 1 (다운로드 받은 파일 삭제) 다운로드된 컨텐츠를 요청에 의해 삭제하는 옵션입니다.
		    'result.add "content_expire_reset", 1		'1 (expired된 콘텐츠 권한 Reset)
		    result.add "expiration_date", DateDiff("s", "1970-01-01 09:00:00", result_edt)	' 만료될 시간의 unixtime stamp 지정
		    result.add "check_expiration_date", DateDiff("s", "1970-01-01 09:00:00", result_edt) '체크 유효 만료될 시간의 unixtime
		    result.add "result", result_flg	'1 (정상)
            result.add "message", result_txt
	    END IF
    Next
    Set results = New JSONobject
    arr.push result
    results.add "data", arr

    jwt = JWTEncodeCallback(serviceAccountKey, results)

    Response.write jwt
%>