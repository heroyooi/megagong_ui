<% '���� ��Ŭ��� ������ S %>
<!-- #include virtual = "/common/inc/RSexec.asp" -->
<!-- #include virtual = "/common/inc/VarDef.asp"-->
<!-- #include virtual = "/common/inc/FunDef.asp"-->
<% '���� ��Ŭ��� ������ E %>
<!-- #include virtual = "/player/Cate/json2.asp" -->
<!-- #include virtual = "/player/Cate/JSON_2.0.4.asp" -->
<script language="javascript" runat="server" src="/common/js/json2.js"></script>
<%
Dim items, row, i, kollus, result

Dim kind				' ��û ����(1:drm�������� Expire������ ��û,2:�ٿ�ε尡 �Ϸ�Ȱ��(100%),3:���������)
Dim client_user_id		' ���� ����� ID, media_token ������ ���� client_user_id�� �����մϴ�.
Dim player_id			' ���� ����ڰ� ������ �ִ� �ܸ��� ���̵�
Dim device_name			' ���� ����ڰ� ������ �ִ� �ܸ��� �𵨸�
Dim media_content_key	' Kollus ������ unique key
Dim uservalues			' JSON format (VideoGateway ȣ��� ���� uservalue0~9)
Dim session_key			' �ٿ�ε�� ������ ó��


	'�ˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢ�
	uip = ""
	uip = Request.ServerVariables("HTTP_CLIENT_IP")		'HTTP Ŭ���̾�Ʈ �����ǰ� ������
	If uip = "" Then
		uip = Request.ServerVariables("REMOTE_ADDR")	'������ �ּҾ�����
	End If

	   'ȸ������Ȯ��
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

		'ȸ��������ϵ�Ͽ���Ȯ��
		Function fncMemMobileIdentify(uid, did)
			fncVal = 0

			if uid <> "" And did <> "" Then
				sql = "SELECT COUNT(1) FROM MS_MEM_MOBILE WITH(NOLOCK) WHERE MM_DEL_YN = 'N' AND MM_MEM_ID = '"& uid & "' AND MM_DEVICE_ID = '"& did &"' "
				Set rs = DBExec(sql,"study")
				If Not rs.EOF Then
					fncVal = rs(0)
				End If
				Call DBClose(rs)
			Elseif uid = "" And did <> "" Then
				sql = "SELECT COUNT(1) FROM MS_MEM_MOBILE WITH(NOLOCK) WHERE MM_DEL_YN = 'N' AND MM_DEVICE_ID = '"& did &"' "
				Set rs = DBExec(sql,"study")
				If Not rs.EOF Then
					fncVal = rs(0)
				End If
				Call DBClose(rs)
			Elseif uid <> "" And did = "" Then
				sql = "SELECT COUNT(1) FROM MS_MEM_MOBILE WITH(NOLOCK) WHERE MM_DEL_YN = 'N' AND MM_MEM_ID = '"& uid & "' "
				Set rs = DBExec(sql,"study")
				If Not rs.EOF Then
					fncVal = rs(0)
				End If
				Call DBClose(rs)
			End if

			fncMemMobileIdentify = fncVal
		End Function

	'�ˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢ�

items = request("items")

' �� ���� Spec�� ���� ���� ó��
IF len(items) = 0 THEN
	Dim tmp : Set tmp = jsObject()
	tmp("kind") = request("kind")
	tmp("client_user_id") = request("client_user_id")
	tmp("player_id") = request("player_id")
	tmp("device_name") = request("device_name")
	tmp("media_content_key") = request("media_content_key")
	tmp("uservalues") = request("uservalues")

	items = "[" & tmp.jsString & "]"
END IF

'Call adminlog("0 player_save_k.asp " & items)

Dim clist : Set clist = JSON.parse(items)
Set result = jsArray()	'��ü ��� ����


For i = 0 To clist.Length - 1
	Set row = clist.get(i)

	kind = row.kind
	client_user_id = row.client_user_id
	'Call adminlog("1 player_save_k.asp " & client_user_id & " : start : kind : " & kind)
	player_id = row.player_id
	device_name = row.device_name
	media_content_key = row.media_content_key


	strSql = ""
	strSql = strSql & "INSERT INTO MT_MOBILEQSTR_HIS (MQH_KBN,MQH_USER_ID,MQH_DEVICE_ID,MQH_ACTION,MQH_QUERY_STRING,MQH_IP,MQH_REG_DT) "
	strSql = strSql & "SELECT 'DRMInterface','" & client_user_id & "','" & player_id & "','register_device','deviceid="&player_id&"&userid="&client_user_id&"&devicemodel="&device_name&"','" & uip & "', GETDATE() "
	Call DBExec(strSql,"study")
	DBClose(DBCon)


	Set uservalues = row.uservalues

	rAppNo		= uservalues.uservalue0	'�����̷�
	rAppChrCd	= uservalues.uservalue1	'�����ڵ�
	rAppLecCd	= uservalues.uservalue2	'�����ڵ�
	rAppSeq		= uservalues.uservalue3	'�����̷»�
	rFrtKbn		= uservalues.uservalue5	'����, ���ᰭ�� ���� 0 ����, 1 ����

	Set result(null) = jsObject()	'���� ó�� ��� ����


		'ȸ������Ȯ��
		mCnt = fncMemIdentify(client_user_id)

		nCnt1 = 0
		nCnt2 = 0
		nCnt3 = 0
		'����ϵ�Ͽ���Ȯ��
		nCnt1 = fncMemMobileIdentify(client_user_id, player_id)		'�����̵�� ������ϵ� ��� ����
		nCnt2 = fncMemMobileIdentify(client_user_id, "")			'�����̵� ��ϵ� ��ⰳ��
		nCnt3 = fncMemMobileIdentify("", player_id)					'�ش��Ⱑ ��ϵ� ���̵� ����
'		nCnt3 = 0
		nCnt = nCnt1 + nCnt2 + nCnt3
		'Call adminlog("2 player_save_k.asp " & client_user_id & " : cCnt : '" & nCnt1 & "', '" & nCnt2 & "', '" & nCnt3)

	If rFrtKbn <> "1" Then	' ���ᰭ��
		'Call adminlog("player_save_k.asp : Exec MSP_Set_Mobile_Player_CID '" & client_user_id & "', '" & rAppNo & "', '" & rAppSeq & "', '" & rAppChrCd & "', '" & rAppLecCd & "' ")
		If client_user_id <> "" And rAppLecCd <> "" Then
			If kind <> "3" Then	'����ÿ��� ��� ����
				sql = " Exec MSP_Set_Mobile_Player_CID '"&client_user_id&"', '"&rAppNo&"', '"&rAppSeq&"', '"&rAppChrCd&"', '"&rAppLecCd&"' "
				Set rs = DBExec(sql,"study")
				If Not rs.EOF Then
					rCID = rs(1)		'�ٿ��غ� �̷� �ְ� ������ �ε���(CID) ��������
				Else
					rCID = 0
				End If
				Call DBClose(rs)
			End If
			'Call adminlog("3 player_save_k.asp " & client_user_id & " : cid : " & rCID)
			sql = ""
			sql = sql & " SELECT	STD_SDT = CONVERT(VARCHAR(10), GetUTCDate(), 21)+' 00:00:00', "
			sql = sql & "			STD_EDT = ( "
	'		sql = sql & "		 		CASE WHEN CM_DOM_CD = 'D' AND SM_SUB_CD IN ('29', '30', '31') THEN "
			sql = sql & "		 			CONVERT(VARCHAR(10), AD_STD_EDT, 21)+ ' 23:59:59' "
	'		sql = sql & "		 		ELSE "
	'		sql = sql & "		 			CONVERT(VARCHAR(10), GetUTCDate()+2 ,21)+ ' 23:59:59' "
	'		sql = sql & "		 		END "
			sql = sql & "  	) "
			sql = sql & " 		, SMART_FLG = isnull(( "
			sql = sql & " 						SELECT TOP 1 MP_CID  "
			sql = sql & " 						FROM MS_MOBILE_PLAYER WITH(NOLOCK) "
			sql = sql & " 						WHERE 1 = 1 "
			sql = sql & " 							AND MP_DEL_YN = 'N' "
			sql = sql & " 							AND MP_DOWN_FLG = 'Y' "
			sql = sql & " 							AND MP_APP_NO = AD_APP_NO  "
			sql = sql & " 							AND MP_APP_SEQ = AD_APP_SEQ "
			sql = sql & " 							AND MP_CHR_CD = LM_CHR_CD "
			sql = sql & " 							AND MP_LEC_CD = LM_LEC_CD  "
			sql = sql & " 							AND MP_MEM_ID = SA_MEM_ID "
'			sql = sql & " 							AND MP_IP = 'KOLLUS' "
			sql = sql & " 			), 0) "


'			sql = sql & " 			, SDOWN_CNT = isnull(( "
'			sql = sql & " 						SELECT SUM(SH_ATT_CNT)  "
'			sql = sql & " 						FROM MS_STD_HIS WITH(NOLOCK)  "
'			sql = sql & " 						WHERE 1 = 1  "
'			sql = sql & " 							AND SH_LOG_KBN = 'SMT'  "
'			sql = sql & " 							AND SH_APP_NO = AD_APP_NO "
'			sql = sql & " 							AND SH_LEC_CD = LM_LEC_CD "
'			sql = sql & " 							AND SH_MEM_ID = SA_MEM_ID "
'			sql = sql & " 			), 0) "


			sql = sql & " 		, SDOWN_CNT = isnull(( "
			sql = sql & " 						SELECT sum(mp_down_cnt)  "
			sql = sql & " 						FROM MS_MOBILE_PLAYER WITH(NOLOCK) "
			sql = sql & " 						WHERE 1 = 1 "
			sql = sql & " 							AND MP_DEL_YN = 'N' "
			sql = sql & " 							AND MP_DOWN_FLG = 'Y' "
			sql = sql & " 							AND MP_APP_NO = AD_APP_NO  "
			sql = sql & " 							AND MP_APP_SEQ = AD_APP_SEQ "
			sql = sql & " 							AND MP_CHR_CD = LM_CHR_CD "
			sql = sql & " 							AND MP_LEC_CD = LM_LEC_CD  "
			sql = sql & " 							AND MP_MEM_ID = SA_MEM_ID "
'			sql = sql & " 							AND MP_IP = 'KOLLUS' "
			sql = sql & " 			), 0) "







			sql = sql & " 			, SDOWN_DT = ( "
			sql = sql & " 						SELECT TOP 1 SH_LAST_STD_DT "
			sql = sql & " 						FROM MS_STD_HIS WITH(NOLOCK)  "
			sql = sql & " 						WHERE 1 = 1  "
			sql = sql & " 							AND SH_LOG_KBN = 'SMT'  "
			sql = sql & " 							AND SH_APP_NO = AD_APP_NO  "
			sql = sql & " 							AND SH_LEC_CD = LM_LEC_CD  "
			sql = sql & " 							AND SH_MEM_ID = SA_MEM_ID   "
			sql = sql & " 						ORDER BY SH_HIS_SEQ DESC  "
			sql = sql & " 			) "
			sql = sql & "  FROM MS_LEC_MAS WITH(NOLOCK) "
			'sql = sql & "  	JOIN V_CHR_MAS_MOBILE WITH(NOLOCK) ON CM_CHR_CD = LM_CHR_CD "
			sql = sql & "  	INNER JOIN dbo.MS_CHR_MAS WITH (NOLOCK) ON LM_CHR_CD = CM_CHR_CD "
			sql = sql & "  	INNER JOIN MS_APP_DTL WITH(NOLOCK) ON LM_CHR_CD = AD_CHR_CD "
			sql = sql & "  	INNER JOIN MS_STD_APP WITH(NOLOCK) ON SA_APP_NO = AD_APP_NO "
			sql = sql & " WHERE	1 = 1 "
			sql = sql & " 	AND LM_OPEN_YN = 'Y' "
			sql = sql & " 	AND AD_STD_STAT = 2 "
			sql = sql & "	AND LM_LEC_CD = '" & rAppLecCd & "' "
			sql = sql & "	AND AD_CHR_CD = '" & rAppChrCd & "' "
			sql = sql & " 	AND AD_APP_SEQ = '"&rAppSeq&"' "
			sql = sql & " 	AND SA_MEM_ID = '"&client_user_id&"' "

			Set rs = DBExec(sql,"study")
			If Not rs.EOF Then
				rStdSdt = rs(0)
				rStdEdt = rs(1)
				rSmart_flg = rs(2)
				rSdown_cnt = rs(3)
				rsdown_dt = rs(4)
			End If
			Call DBClose(rs)
		End If
	Else ' ���ᰭ��
'		If client_user_id <> "" And rAppLecCd <> "" Then
'			If kind <> "3" Then	'����ÿ��� ��� ����
'				sql = " Exec MSP_Set_FRT_Mobile_Player_CID '"&client_user_id&"', '"&rAppNo&"', '"&rAppSeq&"', '"&rAppChrCd&"', '"&rAppLecCd&"' "
'				Set rs = DBExec(sql,"study")
'				If Not rs.EOF Then
'					rCID = rs(0)		'�ٿ��غ� �̷� �ְ� ������ �ε���(CID) ��������
'				Else
'					rCID = 0
'				End If
'				Call DBClose(rs)
'			End If
'			sql = ""
'			sql = sql & " SELECT  STD_SDT = CONVERT(VARCHAR(10), GETUTCDATE(), 21) + ' 00:00:00' , "
'			sql = sql & "         STD_EDT = ( CONVERT(VARCHAR(10), FAD_STD_EDT, 21) + ' 23:59:59' ) , "
'			sql = sql & "         SMART_FLG = isnull(( SELECT TOP 1 "
'			sql = sql & "                                     FMP_CID "
'			sql = sql & "                              FROM   MS_FRT_MOBILE_PLAYER WITH ( NOLOCK ) "
'			sql = sql & "                              WHERE  1 = 1 "
'			sql = sql & "                                     AND FMP_DEL_YN = 'N' "
'			sql = sql & "                                     AND FMP_DOWN_FLG = 'Y' "
'			sql = sql & "                                     AND FMP_APP_NO = FAD_APP_NO "
'			sql = sql & "                                     AND FMP_APP_SEQ = FAD_APP_SEQ "
'			sql = sql & "                                     AND FMP_CHR_CD = LM_CHR_CD "
'			sql = sql & "                                     AND FMP_LEC_CD = LM_LEC_CD "
'			sql = sql & "                                     AND FMP_MEM_ID = FSA_MEM_ID "
'			sql = sql & "                                     AND FMP_IP = 'KOLLUS' "
'			sql = sql & "                            ), 0) , "
'			sql = sql & "         SDOWN_CNT = ISNULL(( SELECT SUM(FSH_ATT_CNT) "
'			sql = sql & "                              FROM   dbo.MS_FRT_STD_HIS WITH ( NOLOCK ) "
'			sql = sql & "                              WHERE  1 = 1 "
'			sql = sql & "                                     AND FSH_LOG_KBN = 'SMT' "
'			sql = sql & "                                     AND FSH_APP_NO = FAD_APP_NO "
'			sql = sql & "                                     AND FSH_LEC_CD = LM_LEC_CD "
'			sql = sql & "                                     AND FSH_MEM_ID = FSA_MEM_ID "
'			sql = sql & "                            ), 0) , "



'			sql = sql & "         SDOWN_DT = ( SELECT TOP 1 "
'			sql = sql & "                             FSH_LAST_STD_DT "
'			sql = sql & "                      FROM   dbo.MS_FRT_STD_HIS WITH ( NOLOCK ) "
'			sql = sql & "                      WHERE  1 = 1 "
'			sql = sql & "                             AND FSH_LOG_KBN = 'SMT' "
'			sql = sql & "                             AND FSH_APP_NO = FAD_APP_NO "
'			sql = sql & "                             AND FSH_LEC_CD = LM_LEC_CD "
'			sql = sql & "                             AND FSH_MEM_ID = FSA_MEM_ID "
'			sql = sql & "                      ORDER BY FSH_HIS_SEQ DESC "
'			sql = sql & "                    ) "
'			sql = sql & " FROM    MS_LEC_MAS WITH ( NOLOCK ) "
'			sql = sql & "         JOIN V_CHR_MAS_MOBILE WITH ( NOLOCK ) ON CM_CHR_CD = LM_CHR_CD "
'			sql = sql & "         INNER JOIN dbo.MS_FRT_APP_DTL WITH ( NOLOCK ) ON LM_CHR_CD = FAD_CHR_CD "
'			sql = sql & "         INNER JOIN dbo.MS_FRT_STD_APP WITH ( NOLOCK ) ON FSA_APP_NO = FAD_APP_NO "
'			sql = sql & " WHERE   1 = 1 "
'			sql = sql & "         AND LM_OPEN_YN = 'Y' "
'			sql = sql & "         AND FAD_STD_STAT = 2 "
'			sql = sql & "         AND LM_LEC_CD = '" & rAppLecCd & "' "
'			sql = sql & "         AND FAD_CHR_CD = '" & rAppChrCd & "' "
'			sql = sql & "         AND FAD_APP_SEQ = '"&rAppSeq&"' "
'			sql = sql & "         AND FSA_MEM_ID = '"&client_user_id&"' "
'
'			Set rs = DBExec(sql,"study")
'			If Not rs.EOF Then
'				rStdSdt = rs(0)
'				rStdEdt = rs(1)
'				rSmart_flg = rs(2)
'				rSdown_cnt = rs(3)
'				rsdown_dt = rs(4)
'			End If
'			Call DBClose(rs)
'		End If

	End If
	'�ˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢˢ�



	IF len(kind) > 0 and len(client_user_id) > 0 and len(media_content_key) > 0 THEN
		IF kind = "1" THEN	' kind : 1 �ٿ�ε� ��û ��
			result(null)("kind") = 1
			result(null)("media_content_key") = media_content_key
			If nCnt = 0 And client_user_id <> "lakemind" Then
				'��ϵ��̷��� ���ٸ�

				If device_name <> "" Then
					strDevicenm = Left(device_name,4)
					Select Case strDevicenm
						Case "iPho" : device_name = "iPhone"
						Case "iPad" : device_name = "iPad"
						Case "iPod" : device_name = "iPod_touch"
						Case Else strDevicenm = "android"
					End Select

					If strDevicenm = "android" Then
						devicenm = Split(device_name,"/")
						device_name = devicenm(1)
					End If
				End If

				'��� ���� �� ��� ����
				vSql = "select top 1 MLV_MODEL_NM from MS_MBDLST_VER MV with (nolock) " & _
						"where MLV_MODEL_NM = '" & device_name & "' " & _
						"order by MLV_SEQ desc "
				call RSExec(oRs, 0, 3, vSql, "study")
				If oRs.EOF Or oRs. BOF Then
					model_ok = "N"
				Else
					model_ok = "Y"
				End If
				Call RSClose(oRs)
'				If model_ok = "Y" Then
					'��� ������ ���̶��
					sql = " INSERT INTO MS_MEM_MOBILE (MM_MEM_ID, MM_DEVICE_ID, MM_DEVICE_MODEL, MM_DEL_YN, MM_REG_DT, MM_UPD_DT, MM_IP) "
					sql = sql & " SELECT '"&client_user_id&"', '"&player_id&"', '"&device_name&"', 'N', GETDATE(), GETDATE(), '"&uip&"' "
					Call DBexec(sql, "study")
					Call DBClose(Conn)

					nCnt1 = 1			'�����
					nCnt = 1
					is_ok = "Y"
'				Else
'					'��� �Ұ����� ���̶��
'					Call adminlog("err(50001) : player_save_k.asp " & client_user_id & " : device_name : " & device_name & ", model_ok : " & model_ok)
'					result(null)("result") = 0
'					Session.CodePage = 65001
'					result(null)("message") = "��� ������ ��Ⱑ �ƴմϴ�."
'					Session.CodePage = 949
'					is_ok = "N"
'				End If
			Else
				'��ϵ� �̷��� ���� ��
'				If client_user_id <> "lakemind" and client_user_id <> "yesmj1" and client_user_id <> "san123p" Then
'					'������ ���� ó��
'					is_ok = "Y"
'				Else
'					If client_user_id = "lakemind" Then
'						is_ok = "Y"
'					Else
'						vSql = "select top 1 MM_DEVICE_ID from MS_MEM_MOBILE mm with (nolock) " & _
'								"where MM_MEM_ID = '" & client_user_id & "' and MM_DEL_YN = 'N' " & _
'								"order by mm_seq desc "
'						Call adminlog("player_save_k.asp " & client_user_id & " : err : vSql : " & vSql)
'						call RSExec(oRs, 0, 3, vSql, "study")
'						If oRs.EOF Or oRs. BOF Then
'							ori_device_id = ""
'						Else
'							ori_device_id = oRs(0)
'						End If
'						Call RSClose(oRs)
'						If ori_device_id <> player_id Then
'							Call adminlog("player_save_k.asp " & client_user_id & " : err : " & ori_device_id & "," & player_id)
'							result(null)("result") = 0
'							Session.CodePage = 65001
'							result(null)("message") = "��ϵ� ��Ⱑ �ƴմϴ�."
'							Session.CodePage = 949
'							is_ok = "N"
'						Else
'							is_ok = "Y"
'						End If
'					End If
'				End If

				'��ϵ� �̷��� ���� ��
				If client_user_id = "lakemind" Then
					'������ ���� ó��
					is_ok = "Y"
				ElseIf nCnt1 = 0 And nCnt3 > 0 Then
'						Call adminlog("err(20001) : player_save_k.asp " & client_user_id & " : player_id : " & player_id)
						result(null)("result") = 0
						Session.CodePage = 65001
						result(null)("message") = "�ش� ��⿡ �ٸ� ��ϵ� ���̵� �ֽ��ϴ�."
						Session.CodePage = 949
						is_ok = "N"
				Else
					vSql = "select top 1 MM_DEVICE_ID from MS_MEM_MOBILE mm with (nolock) " & _
							"where MM_MEM_ID = '" & client_user_id & "' and MM_DEL_YN = 'N' " & _
							"order by mm_seq desc "
					call RSExec(oRs, 0, 3, vSql, "study")
					If oRs.EOF Or oRs. BOF Then
						ori_device_id = ""
					Else
						ori_device_id = oRs(0)
					End If
					Call RSClose(oRs)
					If ori_device_id <> player_id Then
'						Call adminlog("err(40001) : player_save_k.asp " & client_user_id & " : " & ori_device_id & "," & player_id)
						result(null)("result") = 0
						Session.CodePage = 65001
						result(null)("message") = "��ϵ� ��Ⱑ �ƴմϴ�."
						Session.CodePage = 949
						is_ok = "N"
					Else
						is_ok = "Y"
					End If
				End If
			End If
			If Is_ok = "Y" Then
'				Call adminlog("4 player_save_k.asp " & client_user_id & " : result : " & rStdSdt & "," & rStdEdt & "," & rSdown_cnt & "," & nCnt1)
				
				result(null)("expiration_refresh_popup") = 1

				If client_user_id = "lakemind" And rStdSdt <> "" And rStdEdt <> "" Then
					result(null)("expiration_date") = DateDiff("s", "1970-01-01 09:00:00", Now()+2)	' ����� �ð��� unixtime stamp ����
					'result(null)("expiration_date") = DateDiff("s", "1970-01-03 08:40:00", Now()+2)		' �׽�Ʈ��
					result(null)("expiration_count") = 0	'��� ���� Ƚ��, ��) 10 �� 10�� ��� ���� ' 0 ������
					result(null)("expiration_playtime") = 0	'��� �ð� ����, ��) 60 �� 60�� ��� ���� * v1.7 ���� ����
					result(null)("result") = 1	'1 (����)
				ElseIf rStdSdt = "" Or rStdEdt = ""  Then	' ������ ���ٸ�
'					Call adminlog("5 err(30001) : player_save_k.asp " & client_user_id & " : " & rStdSdt & "," & rStdEdt & "," & rSdown_cnt & "," & nCnt1)
					Session.CodePage = 65001
					result(null)("message") = "���� �������� �������ϴ�."
					Session.CodePage = 949
					result(null)("result") = 0	'0 (������)
				ElseIf rSdown_cnt >= "6"  Then	' ������ ���ٸ�
'					Call adminlog("err(30002) : player_save_k.asp " & client_user_id & " : " & rStdSdt & "," & rStdEdt & "," & rSdown_cnt & "," & nCnt1)
					Session.CodePage = 65001
					result(null)("message") = "�ٿ�ε� Ƚ���� 5ȸ�� �ʰ��Ͽ����ϴ�."
					Session.CodePage = 949
					result(null)("result") = 0	'0 (������)
				ElseIf nCnt < 1  Then	' ������ ���ٸ�
'					Call adminlog("6 err(30003) : player_save_k.asp " & client_user_id & " : " & rStdSdt & "," & rStdEdt & "," & rSdown_cnt & "," & nCnt1)
					Session.CodePage = 65001
					result(null)("message") = "��ϵ� ��Ⱑ �����ϴ�."
					Session.CodePage = 949
					result(null)("result") = 0	'0 (������)

				Else
					result(null)("expiration_date") = DateDiff("s", "1970-01-01 09:00:00", Now()+2)	' ����� �ð��� unixtime stamp ����
					'result(null)("expiration_date") = DateDiff("s", "1970-01-03 08:40:00", Now()+2)		' �׽�Ʈ��
					result(null)("expiration_count") = 0	'��� ���� Ƚ��, ��) 10 �� 10�� ��� ���� ' 0 ������
					result(null)("expiration_playtime") = 0	'��� �ð� ����, ��) 60 �� 60�� ��� ���� * v1.7 ���� ����
					result(null)("result") = 1	'1 (����)
				End If
			End If
		ELSEIF kind = "2" THEN	' kind : 2 �ٿ�ε� �Ϸ� ��
			result(null)("kind") = 2
			result(null)("media_content_key") = media_content_key

			' �ٿ�ε� ��� ���� �� ó��
			IF client_user_id <> "" And rAppLecCd <> "" And rCID > 0 THEN	' ���� ó�� �Ǿ��� ���

				If rFrtKbn <> "1" Then
					' ���ᰭ��
					sql = ""
					sql = " UPDATE MS_MOBILE_PLAYER "
					sql = sql & " SET MP_DOWN_FLG = 'Y' "
					sql = sql & " , MP_DOWNEND_DT = GETDATE() "
					sql = sql & " WHERE MP_CID = " & rCID
					'Call adminlog("7 player_save_k.asp " & client_user_id & " : sql : " & sql)
					Call DBexec(sql, "study")

					shsql = ""
					shsql = "INSERT INTO MS_STD_HIS (SH_MEM_ID, SH_APP_NO, SH_LEC_CD, SH_PKG_CD,SH_LAST_STD_DT,SH_ATT_CNT,SH_LOG_KBN) VALUES ( "
					shsql = shsql & "'" & client_user_id & "'," & rAppNo & "," & rAppLecCd & ",NULL, GETDATE(), 1, 'SMT') "
					'Call adminlog("8 player_save_k.asp " & client_user_id & " : shsql : " & shsql)
					Call DBexec(shsql, "study")

					Call DBClose(Conn)
				Else
					' ���ᰭ��
'					sql = ""
'					sql = " UPDATE MS_FRT_MOBILE_PLAYER "
'					sql = sql & " SET FMP_DOWN_FLG = 'Y' "
'					sql = sql & " , FMP_DOWNEND_DT = GETDATE() "
'					sql = sql & " WHERE FMP_CID = " & rCID
'					Call DBexec(sql, "study")
'
'					shsql = ""
'					shsql = "INSERT INTO MS_FRT_STD_HIS (FSH_MEM_ID, FSH_APP_NO, FSH_LEC_CD, FSH_PKG_CD, FSH_LAST_STD_DT, FSH_ATT_CNT, FSH_LOG_KBN) VALUES ( "
'					shsql = shsql & "'" & client_user_id & "'," & rAppNo & "," & rAppLecCd & ",NULL, GETDATE(), 1, 'SMT') "
'					Call DBexec(shsql, "study")
'
'					Call DBClose(Conn)

				End If

				result(null)("content_delete") = 0	'0 (�������� ����), 1 (�ٿ�ε� ���� ���� ����) �ٿ�ε�� �������� ��û�� ���� �����ϴ� �ɼ��Դϴ�.
				result(null)("result") = 1	'1 (����)
			ELSE
				result(null)("result") = 0	'0 (������)
			END IF




		ELSEIF kind = "3" THEN	' kind : 3 �ٿ�ε� ������ ��� ��
'			Call adminlog("30 player_save_k.asp " & client_user_id & " : result : " & rStdSdt & "," & rStdEdt)

			session_key = row.session_key	' ������ ó�� KIND 3 ������ ����Ű �Ѿ���Ƿ� ���⼭�� ó��
			result(null)("kind") = 3
			result(null)("media_content_key") = media_content_key
			result(null)("start_at") = row.start_at		'Request�� ���Ե� start_at
			result(null)("session_key") = session_key	' ������ ó��

			sql = ""
			sql = sql & " select case when dateadd(day, 2, isnull(max(SH_LAST_STD_DT), getdate())) > getdate() then 1 else 0 end as limit_date, max(SH_LAST_STD_DT) from MS_STD_HIS with(nolock) "
			sql = sql & " where SH_MEM_ID = '"&client_user_id&"' and sh_app_no = '"&rAppNo&"' and sh_lec_cd = '"&rAppLecCd&"' AND SH_LOG_KBN = 'SMT' "
			Set rs = DBExec(sql,"study")

			If Not rs.EOF Then
				rlimit = rs(0)
				rlimit_date = rs(0)
			End If
			Call DBClose(rs)

			If rlimit = "0" Then	' �������� �ʿ��� ���
'				Call adminlog("31 player_save_k.asp " & client_user_id & " : result : " & rlimit & " , " & rlimit_date)
				
				' ��� ���� Ȯ�� �� ó��
				IF rStdSdt <> "" And rStdEdt <> "" THEN	' ������ ���� ���
'					Call adminlog("32 player_save_k.asp " & client_user_id & " : result : " & rStdSdt & " , " & rStdEdt)

					If rSdown_cnt >= "6"  Then	' ������ ���ٸ�
'						Call adminlog("34 player_save_k.asp " & client_user_id & " : result : " & rStdSdt & "," & rStdEdt & "," & rSdown_cnt)

						Session.CodePage = 65001
						result(null)("message") = "�ٿ�ε� Ƚ���� 5ȸ�� �ʰ��Ͽ����ϴ�."
						Session.CodePage = 949
						result(null)("result") = 1	'0 (������)
					Else 
						
						IF client_user_id <> "" And rAppLecCd <> "" And rCID > 0 THEN	' ���� ó�� �Ǿ��� ���
							If rFrtKbn <> "1" Then
								sql = ""
								sql = " UPDATE MS_MOBILE_PLAYER "
								sql = sql & " SET MP_DOWN_FLG = 'Y' "
								sql = sql & " , MP_DOWNEND_DT = GETDATE() "
								sql = sql & " WHERE MP_CID = " & rCID
								'Call adminlog("7 player_save_k.asp " & client_user_id & " : sql : " & sql)
								Call DBexec(sql, "study")

								shsql = ""
								shsql = "INSERT INTO MS_STD_HIS (SH_MEM_ID, SH_APP_NO, SH_LEC_CD, SH_PKG_CD,SH_LAST_STD_DT,SH_ATT_CNT,SH_LOG_KBN) VALUES ( "
								shsql = shsql & "'" & client_user_id & "'," & rAppNo & "," & rAppLecCd & ",NULL, GETDATE(), 1, 'SMT') "
								Call DBexec(shsql, "study")
								Call DBClose(Conn)

								'Call adminlog("35 player_save_k.asp " & client_user_id & " : shsql : " & shsql)
							End If 
						End If 

						'Call adminlog("36 player_save_k.asp " & client_user_id)

						result(null)("content_expire_reset") = 1	'1 (expired�� ������ ���� Reset)
						result(null)("expiration_date") = DateDiff("s", "1970-01-01 09:00:00", Now()+2)	' 2�� �߰� ����

						result(null)("content_expired") = 0 '0 (�������)
						result(null)("content_delete") = 0	'0 (�������� ����), 1 (�ٿ�ε� ���� ���� ����) �ٿ�ε�� �������� ��û�� ���� �����ϴ� �ɼ��Դϴ�.
						result(null)("result") = 1	'1 (����)
					End If 

				ELSE	' ������ ���� ���
'					Call adminlog("33 player_save_k.asp " & client_user_id & " : result : " & rStdSdt & " , " & rStdEdt)

					result(null)("content_expired") = 1 '0 (����Ұ�)
					
					Session.CodePage = 65001
					result(null)("message") = "���� �������� �������ϴ�."
					Session.CodePage = 949
					result(null)("result") = 1	'0 (������)

				END IF
			Else
				'Call adminlog("38 player_save_k.asp " & client_user_id & " : result : " & rlimit & " , " & rlimit_date)
				result(null)("result") = 1	'1 (����)	
			End If

			
		END If

	ELSE
		result(null)("result") = 0	'0 (������)
	END IF
Next

'Call adminlog("9 player_save_k.asp " & client_user_id & " : result.jsString : " & result.jsString)

' Kollus ��ȣȭ ��� ���
Set kollus = Server.CreateObject("KollusCrypt.Encrypt")
response.write kollus.Encrypt(result.jsString)

' �α�

	if client_user_id <> "" Then
'		dtl = "kind : "&kind&"|| client_user_id : "&client_user_id&"|| player_id : "&player_id&"|| device_name : "&device_name&"|| media_content_key : "&media_content_key&"|| rStdSdt : "&rStdSdt&" || rStdSdt : "&rStdEdt&" || rSdown_cnt : "&rSdown_cnt&" || rFrtKbn : "&rFrtKbn" || data : "&result.jsString

		dtl = "client_user_id : "&client_user_id&" || "&result.jsString

		Function write_log(file, dtl)
			Dim fso, ofile

			Set fso = Server.CreateObject("Scripting.FileSystemObject")
			if fso.fileExists(file) then
				Set ofile = fso.OpenTextFile(file, 8, True)
			else
				Set ofile = fso.CreateTextFile(file, True)
			end if

			ofile.Writeline dtl

			ofile.close
			Set ofile = Nothing
			Set fso = Nothing
		End Function


		'call write_log("d:\Mega_Log\Kollus_Log\Koll_CallBack_"&date&".log", dtl)
		'Call adminlog("10 player_save_k.asp " & client_user_id & " : dtl : " & dtl)
	End if

%>