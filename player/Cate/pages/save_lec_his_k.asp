<%
'=======================================================================
'�� �� �� : �ް����͵�-������ �÷��̾�-��ȭ��
'����� : ������ �÷��̾�-��ȭ��
'�� �� �� : Player_SaveStatus_lec_his.asp
'�ۼ����� : 2008/12/23
'�� �� �� : �̱�ȣ
'-----------------------------------------------------------------------
'��������   ������  ��������
'=======================================================================
'
'=======================================================================
%>

<!-- ���� ��Ŭ��� ������ ���� -->
<!-- #include virtual = "/common/inc/RSexec.asp" -->
<!-- #include virtual = "/common/inc/VarDef.asp"-->
<!-- #include virtual = "/common/inc/FunDef.asp"-->
<!-- ���� ��Ŭ��� ������ ��ħ -->
<%
'Skip = fncRequest("Skip")	'������ ��ŵ����(0,1) - �̻��
'uservalue0 : LRN        'app_no
'uservalue1 : LHF        '��뼭�� D ���� / R �Ǽ���
'uservalue2 : LCD        '�����ڵ�
'uservalue3 : UCD        '�����ڵ�
'uservalue4 : DEVICE     '����� P PC / M �����
'uservalue5 : FRT_KBN    '�����ᱸ�� 0 �Ϲ� / 1 ����
'uservalue8 =  fncRequest("uservalue8")

status = fncRequest("status")	'lms ���� ��� play, stop - 5�� ����, ���� �� ����
userid = fncRequest("ID")	'ȸ�����̵�
app_no = fncRequest("LRN")	'app_no				USERVALUE0
chr_cd = fncRequest("LCD")	'�����ڵ�			USERVALUE3
lec_cd = fncRequest("UCD")	'�����ڵ�			USERVALUE2
app_type = fncRequest("FRT_KBN")	' �Ϲݰ���/���ᰭ�� ����	0 �Ϲ�/ 1 ����	USERVALUE5
player_type = fncRequest("DEVICE")	'����� USERVALUE4:Reserved
player_nm = fncRequest("MODEL")	'����� USERVALUE4:Reserved
player_id = fncRequest("PLAYER_ID")	'���� �ƾ�巹�� ��ü(�Ǿ��� ID���� �ٸ�, �������� �޶� ID���� ����)
host_nm = fncRequest("CN")	'ȣ��Ʈ��
run_sdt = DateAdd("s", fncRequest("TM"), "1970-01-01 09:00:00")	'�÷��̾� ���� �ð� �⵿�ð�=���۽ð�(����Ͻú���)=>����������ũ�� start_at ���۽ð�(����)
run_sdt = Left(CStr(run_sdt), 11) & CStr(Hour(run_sdt)) & ":" & CStr(Minute(run_sdt)) & ":" & CStr(Second(run_sdt))
run_time = fncRequest("runtime") '���� ���� �ð�
run_edt = DateAdd("s", run_time, run_sdt) 'run_sdt + run_time '���� �÷��̾� �����ð����� ���
run_edt = Left(CStr(run_edt), 11) & CStr(Hour(run_edt)) & ":" & CStr(Minute(run_edt)) & ":" & CStr(Second(run_edt))
play_time = fncRequest("PT") 'PT : playtime - ��������ð�(10�� 2��� ���, 20�� �ݿ�)
real_playtime = fncRequest("real_playtime") '���� ���� ��� �ð�(�ݼ���� ����X)
last_time = fncRequest("ET") '������ û�� ��ġ(��)

B1 = fncRequest("B1")	'��� ��� ����(0,1)
B2 = fncRequest("B2")	'��� ��� ����(0,1)
B3 = fncRequest("B3")	'��� ��� ����(0,1)
B4 = fncRequest("B4")	'��� ��� ����(0,1)
B5 = fncRequest("B5")	'��� ��� ����(0,1)
B6 = fncRequest("B6")	'��� ��� ����(0,1)
B7 = fncRequest("B7")	'��� ��� ����(0,1)
B8 = fncRequest("B8")	'��� ��� ����(0,1)
B9 = fncRequest("B9")	'��� ��� ����(0,1)
B10 = fncRequest("B10")	'��� ��� ����(0,1)
T1 = fncRequest("T1")	'��� ��� �ð� üũ(��)
T2 = fncRequest("T2")	'��� ��� �ð� üũ(��)
T3 = fncRequest("T3")	'��� ��� �ð� üũ(��)
T4 = fncRequest("T4")	'��� ��� �ð� üũ(��)
T5 = fncRequest("T5")	'��� ��� �ð� üũ(��)
T6 = fncRequest("T6")	'��� ��� �ð� üũ(��)
T7 = fncRequest("T7")	'��� ��� �ð� üũ(��)
T8 = fncRequest("T8")	'��� ��� �ð� üũ(��)
T9 = fncRequest("T9")	'��� ��� �ð� üũ(��)
T10 = fncRequest("T10")	'��� ��� �ð� üũ(��)

server_type = fncRequest("LHF")	'��뼭��			USERVALUE1	 UP 0 /REAL 1 20141126 UPD

if server_type = "R" Then
    if status = "stop" Then

        strSql = ""
        strSql = strSql & "INSERT INTO MS_LMS_ALL(LA_MEM_ID,LA_APP_NO,LA_CHR_CD,LA_LEC_CD,LA_APP_TYPE,LA_PLAYER_TYPE,LA_PLAYER_NM,LA_PLAYER_ID,LA_HOST_NM,LA_RUN_SDT,LA_RUN_EDT,LA_RUN_TIME,LA_PLAY_TIME,LA_REALPLAY_TIME,LA_LAST_TIME,LA_BLOCK_PASS1,LA_BLOCK_PASS2,LA_BLOCK_PASS3,LA_BLOCK_PASS4,LA_BLOCK_PASS5,LA_BLOCK_PASS6,LA_BLOCK_PASS7,LA_BLOCK_PASS8,LA_BLOCK_PASS9,LA_BLOCK_PASS10,LA_BLOCK_TIME1,LA_BLOCK_TIME2,LA_BLOCK_TIME3,LA_BLOCK_TIME4,LA_BLOCK_TIME5,LA_BLOCK_TIME6,LA_BLOCK_TIME7,LA_BLOCK_TIME8,LA_BLOCK_TIME9,LA_BLOCK_TIME10,LA_REG_DT, LA_LEC_TM) "
        strSql = strSql & "SELECT '" & userid & "','" & app_no & "','" & chr_cd & "','" & lec_cd & "','" & app_type & "','" & player_type & "','" & player_nm & "','" & player_id & "','" & host_nm & "','" & run_sdt & "','" & run_edt & "','" & run_time & "','" & play_time & "','" & real_playtime & "','" & last_time & "','" & B1 & "','" & B2 & "','" & B3 & "','" & B4 & "','" & B5 & "','" & B6 & "','" & B7 & "','" & B8 & "','" & B9 & "','" & B10 & "','" & T1 & "','" & T2 & "','" & T3 & "','" & T4 & "','" & T5 & "','" & T6 & "','" & T7 & "','" & T8 & "','" & T9 & "','" & T10 & "',GETDATE(), (SELECT TOP 1 (LM_LEC_TM * 60) FROM MS_LEC_MAS WITH(NOLOCK) WHERE LM_LEC_CD = '" & lec_cd & "') "
        Call DBExec(strSql,"study")
        Call DBclose(DBcon)

        strSql = ""
        strSql = strSql & "IF (SELECT COUNT(1) FROM MS_LMS_SUM WITH(NOLOCK) WHERE LS_MEM_ID = '" & userid & "' AND LS_APP_NO = '" & app_no & "' AND LS_CHR_CD = '" & chr_cd & "' AND LS_LEC_CD = '" & lec_cd & "') = 0 "
        strSql = strSql & "	BEGIN "
        strSql = strSql & "		INSERT INTO MS_LMS_SUM(LS_MEM_ID,LS_APP_NO,LS_CHR_CD,LS_LEC_CD,LS_STD_SDT,LS_STD_EDT,LS_RUN_TIME,LS_PLAY_TIME,LS_REALPLAY_TIME,LS_LAST_TIME,LS_BLOCK_PASS1,LS_BLOCK_PASS2,LS_BLOCK_PASS3,LS_BLOCK_PASS4,LS_BLOCK_PASS5,LS_BLOCK_PASS6,LS_BLOCK_PASS7,LS_BLOCK_PASS8,LS_BLOCK_PASS9,LS_BLOCK_PASS10,LS_BLOCK_TIME1,LS_BLOCK_TIME2,LS_BLOCK_TIME3,LS_BLOCK_TIME4,LS_BLOCK_TIME5,LS_BLOCK_TIME6,LS_BLOCK_TIME7,LS_BLOCK_TIME8,LS_BLOCK_TIME9,LS_BLOCK_TIME10,LS_REG_DT) "
        strSql = strSql & "		SELECT '" & userid & "','" & app_no & "','" & chr_cd & "','" & lec_cd & "','" & run_sdt & "','" & run_edt & "','" & run_time & "','" & play_time & "','" & real_playtime & "','" & last_time & "','" & B1 & "','" & B2 & "','" & B3 & "','" & B4 & "','" & B5 & "','" & B6 & "','" & B7 & "','" & B8 & "','" & B9 & "','" & B10 & "','" & T1 & "','" & T2 & "','" & T3 & "','" & T4 & "','" & T5 & "','" & T6 & "','" & T7 & "','" & T8 & "','" & T9 & "','" & T10 & "',GETDATE() "
        strSql = strSql & "	END "
        strSql = strSql & "ELSE "
        strSql = strSql & "	BEGIN "
        strSql = strSql & "		UPDATE	MS_LMS_SUM "
        strSql = strSql & "		SET		LS_STD_EDT = '" & run_edt & "', "
        strSql = strSql & "				LS_RUN_TIME = LS_RUN_TIME + '" & run_time & "', "
        strSql = strSql & "				LS_PLAY_TIME = LS_PLAY_TIME + '" & play_time & "', "
        strSql = strSql & "				LS_REALPLAY_TIME = LS_REALPLAY_TIME + '" & real_playtime & "', "
        strSql = strSql & "				LS_LAST_TIME = '" & last_time & "', "
        strSql = strSql & "				LS_BLOCK_PASS1 = (CASE WHEN LS_BLOCK_PASS1 = 1 THEN 1 ELSE '" & B1 & "' END), "
        strSql = strSql & "				LS_BLOCK_PASS2 = (CASE WHEN LS_BLOCK_PASS2 = 1 THEN 1 ELSE '" & B2 & "' END), " 
        strSql = strSql & "				LS_BLOCK_PASS3 = (CASE WHEN LS_BLOCK_PASS3 = 1 THEN 1 ELSE '" & B3 & "' END), " 
        strSql = strSql & "				LS_BLOCK_PASS4 = (CASE WHEN LS_BLOCK_PASS4 = 1 THEN 1 ELSE '" & B4 & "' END), " 
        strSql = strSql & "				LS_BLOCK_PASS5 = (CASE WHEN LS_BLOCK_PASS5 = 1 THEN 1 ELSE '" & B5 & "' END), " 
        strSql = strSql & "				LS_BLOCK_PASS6 = (CASE WHEN LS_BLOCK_PASS6 = 1 THEN 1 ELSE '" & B6 & "' END), " 
        strSql = strSql & "				LS_BLOCK_PASS7 = (CASE WHEN LS_BLOCK_PASS7 = 1 THEN 1 ELSE '" & B7 & "' END), " 
        strSql = strSql & "				LS_BLOCK_PASS8 = (CASE WHEN LS_BLOCK_PASS8 = 1 THEN 1 ELSE '" & B8 & "' END), " 
        strSql = strSql & "				LS_BLOCK_PASS9 = (CASE WHEN LS_BLOCK_PASS9 = 1 THEN 1 ELSE '" & B9 & "' END), "
        strSql = strSql & "				LS_BLOCK_PASS10 = (CASE WHEN LS_BLOCK_PASS10 = 1 THEN 1 ELSE '" & B10 & "' END), "
        strSql = strSql & "				LS_BLOCK_TIME1 = LS_BLOCK_TIME1 + '" & T1 & "', "
        strSql = strSql & "				LS_BLOCK_TIME2 = LS_BLOCK_TIME2 + '" & T2 & "', "
        strSql = strSql & "				LS_BLOCK_TIME3 = LS_BLOCK_TIME3 + '" & T3 & "', "
        strSql = strSql & "				LS_BLOCK_TIME4 = LS_BLOCK_TIME4 + '" & T4 & "', "
        strSql = strSql & "				LS_BLOCK_TIME5 = LS_BLOCK_TIME5 + '" & T5 & "', "
        strSql = strSql & "				LS_BLOCK_TIME6 = LS_BLOCK_TIME6 + '" & T6 & "', "
        strSql = strSql & "				LS_BLOCK_TIME7 = LS_BLOCK_TIME7 + '" & T7 & "', "
        strSql = strSql & "				LS_BLOCK_TIME8 = LS_BLOCK_TIME8 + '" & T8 & "', "
        strSql = strSql & "				LS_BLOCK_TIME9 = LS_BLOCK_TIME9 + '" & T9 & "', "
        strSql = strSql & "				LS_BLOCK_TIME10 = LS_BLOCK_TIME10 + '" & T10 & "', "
        strSql = strSql & "				LS_UPD_DT = GETDATE() "
        strSql = strSql & "		FROM	MS_LMS_SUM WITH(NOLOCK) "
        strSql = strSql & "		WHERE	LS_MEM_ID = '" & userid & "' "
        strSql = strSql & "		AND		LS_APP_NO = '" & app_no & "' "
        strSql = strSql & "		AND		LS_CHR_CD = '" & chr_cd & "' "
        strSql = strSql & "		AND		LS_LEC_CD = '" & lec_cd & "' "
        strSql = strSql & "	END "
        Call DBExec(strSql,"study")
        Call DBclose(DBcon)

    End if
End if
%>
