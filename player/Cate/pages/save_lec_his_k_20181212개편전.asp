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
kind = fncRequest("kind")	'ȸ�����̵�
ID = fncRequest("ID")	'ȸ�����̵�
MAC = fncRequest("MAC")	'�ƾ�巡��(�������� ��ȣ������ ���� ���� ����)
PLAYER_ID = fncRequest("PLAYER_ID")	'���� �ƾ�巹�� ��ü(�Ǿ��� ID���� �ٸ�, �������� �޶� ID���� ����)
'Call adminlog("save_lec_his_k.asp : start kind : " & kind & ", ID : " & ID & ", MAC : " & MAC)
CN = fncRequest("CN")	'ȣ��Ʈ��
LRN = fncRequest("LRN")	'app_no				USERVALUE0
LHF = fncRequest("LHF")	'��뼭��			USERVALUE1	 UP 0 /REAL 1 20141126 UPD
IP = fncRequest("IP")	'������				USERVALUE2
LCD = fncRequest("LCD")	'�����ڵ�			USERVALUE3
UCD = fncRequest("UCD")	'�����ڵ�
TM = fncRequest("TM")	'�⵿�ð�=���۽ð�(����Ͻú���)=>����������ũ��
PT = fncRequest("PT") ' ��������ð� (��)
ET = fncRequest("ET")	'������ û�� ��ġ(��)
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
DEVICE = fncRequest("DEVICE")	'����� USERVALUE4:Reserved
FRT_KBN = fncRequest("FRT_KBN")	' �Ϲݰ���/���ᰭ�� ����	0 �Ϲ�/ 1 ����	USERVALUE5

'status : lms ���� ���
'TM : start_at ���۽ð�(����)
'PT : playtime - ��������ð�(10�� 2��� ���, 20�� �ݿ�)
'runtime : ���� ���� �ð�
'realplaytime : ���� ���� ��� �ð�(�ݼ���� ����X)


'Skip = fncRequest("Skip")	'������ ��ŵ����(0,1)
'uservalue0 : LRN        'app_no
'uservalue1 : LHF        '��뼭�� D ���� / R �Ǽ���
'uservalue2 : LCD        '�����ڵ�
'uservalue3 : UCD        '�����ڵ�
'uservalue4 : DEVICE     '����� P PC / M �����
'uservalue5 : FRT_KBN    '�����ᱸ�� 0 �Ϲ� / 1 ����

'uservalue8 =  fncRequest("uservalue8")

' �����ʵ� MAC�� PLAYER_ID���� �ο�
MAC = PLAYER_ID

'Call adminlog("save_lec_his_k.asp : ID : " & ID & ", MAC : " & MAC & ", CN : " & CN & ", LRN : " & LRN & ", LHF : " & LHF & ", DEVICE : " & DEVICE & ", PT : " & PT & ", TM : " & TM & ", uservalue8 : " & uservalue8)

'��뼭��
If Trim(url_main) = "http://dev.megacst.com" Then	'���߼������
	SVR_CD = "D"
Else												'�Ǽ������
	SVR_CD = "R"
End If

If ID = "" Or LRN = "" Or SVR_CD <> Trim(LHF) Then		'�����̷��� ���ų� �α��λ��°� �ƴϸ� Callback ������� => �׸��� Call�� ������ �ٸ��ٸ� �������
	Response.End
End If

Function fncMakeNumeric(e)
	s = e
	If Not IsNumeric(s) Then
		s = 0
	Else
		s = Int(e)
	End If
	fncMakeNumeric = s
End Function

TT = 0

'��� ���� ����
If T1 > 0 Then B1 = 1 : If T2 > 0 Then B2 = 1 : If T3 > 0 Then B3 = 1 : If T4 > 0 Then B4 = 1 : If T5 > 0 Then B5 = 1
If T6 > 0 Then B6 = 1 : If T7 > 0 Then B7 = 1 : If T8 > 0 Then B8 = 1 : If T9 > 0 Then B9 = 1 : If T10 > 0 Then B10 = 1

T1 = fncMakeNumeric(T1) : T2 = fncMakeNumeric(T2) : T3 = fncMakeNumeric(T3) : T4 = fncMakeNumeric(T4) : T5 = fncMakeNumeric(T5)
T6 = fncMakeNumeric(T6) : T7 = fncMakeNumeric(T7) : T8 = fncMakeNumeric(T8) : T9 = fncMakeNumeric(T9) : T10 = fncMakeNumeric(T10)



If T1 > 0 Then TT = T1 : If T2 > 0 Then TT = T2 : If T3 > 0 Then TT = T3 : If T4 > 0 Then TT = T4 : If T5 > 0 Then TT = T5
If T6 > 0 Then TT = T6 : If T7 > 0 Then TT = T7 : If T8 > 0 Then TT = T8 : If T9 > 0 Then TT = T9 : If T10 > 0 Then TT = T10

PointChkString = B1&","&B2&","&B3&","&B4&","&B5&","&B6&","&B7&","&B8&","&B9&","&B10&""
PointSecString = T1&","&T2&","&T3&","&T4&","&T5&","&T6&","&T7&","&T8&","&T9&","&T10&""

SERVER_IP_STR = fncRequestVariables("LOCAL_ADDR")
ARR_SERVER_IP = split(SERVER_IP_STR,".")
SERVER_IP = ARR_SERVER_IP(3)

'�ƢƢƢƢƢƢƢƢƢƢƢ� ���� MAC ADDRESS ��� �ƢƢƢƢƢƢƢƢƢƢƢƢ�
	insSQL = " INSERT INTO USR_MEM_INF "
	insSQL = insSQL & " (mi_id, mi_ip, mi_mac_addr, mi_app_no, mi_lec_cd, mi_reg_dt) "
	insSQL = insSQL & " select '"&ID&"', '"&IP&"', '"& MAC &"', "&LRN&", "& UCD &", getdate()"	

	Call DbExec(insSQL,"study")
	Call DbClose(DbCon)



	'Call adminlog("kkk save_lec_his_k.asp start : ID : " & ID & ", MAC : " & MAC & ", CN : " & CN & ", LRN : " & LRN & ", LHF : " & LHF & ", DEVICE : " & DEVICE)
	'lrn : app_no,    ucd : lec_cd
	vSql = " select top 1 lh_last_tm from MS_LEC_HIS with (nolock) " & _
			" where LH_APP_NO = " & LRN & " and LH_LEC_CD = " & UCD & " and LH_MEM_ID = '" & ID & "' " & _
			" order by lh_lec_seq desc "
	If dbg Then Response.write vSql & "<br>"
	call RSExec(oRs, 0, 3, vSql, "study")
	If oRs.EOF Or oRs. BOF Then
		lh_ok = "N"
		lh_last_tm = "0"
	Else
		lh_ok = "Y"
		lh_last_tm = oRs("lh_last_tm")
	End If
	Call RSClose(oRs)

	If lh_ok = "N" Then
		vSql = "INSERT INTO dbo.MS_LEC_HIS " & _
				"(LH_MEM_ID,LH_APP_NO,LH_LEC_CD,LH_STM, LH_ETM, LH_WEB_SVR) " & _
				"VALUES  ( '" & ID & "' , " & LRN & ", " & UCD & ",GETDATE() ,GETDATE() ,'200')"
		Call ExecuteSQL(vSql, oRs)
		Call RSClose(oRs)
		'Call adminlog("kkk save_lec_his_k.asp end : ID : " & ID & ", strSql : " & vSql)
	End If

	'�ƢƢƢƢƢƢƢƢƢƢƢ� �⺻ ���� ���� ���ŢƢƢƢƢƢƢƢƢƢƢƢƢ�
	strSql = " update ms_lec_his set "
	strSql = strSql & " lh_etm=GETDATE()"
	strSql = strSql & ", lh_last_tm='"&PT&"'"
	strSql = strSql & ", lh_web_svr='200'"
	strSql = strSql & ", lh_sec1='"&B1&"'"
	strSql = strSql & ", lh_sec2='"&B2&"'"
	strSql = strSql & ", lh_sec3='"&B3&"'"
	strSql = strSql & ", lh_sec4='"&B4&"'"
	strSql = strSql & ", lh_sec5='"&B5&"'"
	strSql = strSql & ", lh_sec6='"&B6&"'"
	strSql = strSql & ", lh_sec7='"&B7&"'"
	strSql = strSql & ", lh_sec8='"&B8&"'"
	strSql = strSql & ", lh_sec9='"&B9&"'"
	strSql = strSql & ", lh_sec10='"&B10&"'"
	strSql = strSql & ", lh_tm1='"&T1&"'"
	strSql = strSql & ", lh_tm2='"&T2&"'"
	strSql = strSql & ", lh_tm3='"&T3&"'"
	strSql = strSql & ", lh_tm4='"&T4&"'"
	strSql = strSql & ", lh_tm5='"&T5&"'"
	strSql = strSql & ", lh_tm6='"&T6&"'"
	strSql = strSql & ", lh_tm7='"&T7&"'"
	strSql = strSql & ", lh_tm8='"&T8&"'"
	strSql = strSql & ", lh_tm9='"&T9&"'"
	strSql = strSql & ", lh_tm10='"&T10&"'"
	strSql = strSql & " where lh_lec_seq=(select top 1 lh_lec_seq from ms_lec_his with (nolock) where lh_app_no="&LRN&" and lh_lec_cd="&UCD&" and lh_mem_id='"&ID&"' order by lh_lec_seq desc)"
	'Call adminlog("kkk save_lec_his_k.asp : ID : " & ID & ", strSql : " & strSql)
	'Call adminlog("save_lec_his_k.asp : ID : " & ID & ", MAC : " & MAC & ", CN : " & CN & ", LRN : " & LRN & ", LHF : " & LHF & ", DEVICE : " & DEVICE)

	Call DbExec(strSql,"study")
	Call DbClose(DbCon)

	'�ƢƢƢƢƢƢƢƢƢƢƢ� �� ���� �̷� ���� �ƢƢƢƢƢƢƢƢƢƢƢƢ�
	vSql = "select 1 from ms_lec_his_sum with (nolock) " & _
			"where lhs_app_no="&LRN&" and lhs_lec_cd="&UCD&" and lhs_mem_id='"&ID&"'"
	If dbg Then Response.write vSql & "<br>"
	call RSExec(oRs, 0, 3, vSql, "study")
	If oRs.EOF Or oRs. BOF Then
		lhs_ok = "N"
	Else
		lhs_ok = "Y"
	End If
	Call RSClose(oRs)

	If lhs_ok = "N" Then
		vSql = "INSERT INTO dbo.MS_LEC_HIS_SUM " & _
				"(LHS_MEM_ID,LHS_APP_NO,LHS_LEC_CD,LHS_STM,LHS_ETM,LHS_LAST_TM,LHS_SEC1,LHS_SEC2,LHS_SEC3,LHS_SEC4,LHS_SEC5,LHS_SEC6,LHS_SEC7,LHS_SEC8,LHS_SEC9,LHS_SEC10) " & _
				"VALUES  ( '" & ID & "' , " & LRN & ", " & UCD & ",GETDATE() ,GETDATE() ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0)"
		Call ExecuteSQL(vSql, oRs)
		Call RSClose(oRs)
		'Call adminlog("kkk save_lec_his_k.asp end : ID : " & ID & ", strSql : " & vSql)
	End If

	strSql = "update ms_lec_his_sum set "
	strSql = strSql & " lhs_etm=getdate(),"
	'strSql = strSql & " lhs_last_tm=lhs_last_tm+"&TM&","
	strSql = strSql & " lhs_last_tm = lhs_last_tm - "&lh_last_tm&" + "&PT&","
	strSql = strSql & " lhs_sec1='"&B1&"',"
	strSql = strSql & " lhs_sec2='"&B2&"',"
	strSql = strSql & " lhs_sec3='"&B3&"',"
	strSql = strSql & " lhs_sec4='"&B4&"',"
	strSql = strSql & " lhs_sec5='"&B5&"',"
	strSql = strSql & " lhs_sec6='"&B6&"',"
	strSql = strSql & " lhs_sec7='"&B7&"',"
	strSql = strSql & " lhs_sec8='"&B8&"',"
	strSql = strSql & " lhs_sec9='"&B9&"',"
	strSql = strSql & " lhs_sec10='"&B10&"'"
	strSql = strSql & " where lhs_app_no="&LRN&" and lhs_lec_cd="&UCD&" and lhs_mem_id='"&ID&"'"
	
	
	Call DbExec(strSql,"study")
	Call DbClose(DbCon)



	'strSql = " insert into MS_LEC_HIS_SUM_temp_history (LHS_MEM_ID,LHS_APP_NO,LHS_LEC_CD,LHS_STM,LHS_ETM,LHS_LAST_TM "
	'strSql = strSql & " ,LHS_SEC1,LHS_SEC2,LHS_SEC3,LHS_SEC4,LHS_SEC5,LHS_SEC6,LHS_SEC7,LHS_SEC8,LHS_SEC9,LHS_SEC10) "
	'strSql = strSql & " values ('"&ID&"',"&LRN&","&UCD&",NULL,getdate(),"&PT&" "
	'strSql = strSql & " ,'"&B1&"','"&B2&"','"&B3&"','"&B4&"','"&B5&"','"&B6&"','"&B7&"','"&B8&"','"&B9&"','"&B10&"') "
	'Call DbExec(strSql,"study")
	'Call DbClose(DbCon)




	'Call adminlog("kkk_ save_lec_his_k.asp end : ID : " & ID)

%>
