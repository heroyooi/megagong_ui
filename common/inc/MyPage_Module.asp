<%
'=======================================================================
'�� �� �� : �ް�����-ȸ��
'����� : ���������� ������
'�� �� �� : MyPage_Module.asp
'�ۼ����� : 2008/09/30
'�� �� �� : �缮ȯ
'-----------------------------------------------------------------------
'��������   ������  ��������
'=======================================================================
%>
<%
'===========================================================================
' ����Ʈ �޴� ���̶���Ʈ ó��
'===========================================================================
Dim MyMenu_Img1 : MyMenu_Img1 = "left_mu01"
Dim MyMenu_Img2 : MyMenu_Img2 = "left_mu02"
Dim MyMenu_Img3 : MyMenu_Img3 = "left_mu03"
Dim MyMenu_Img4 : MyMenu_Img4 = "left_mu04"
Dim MyMenu_Img5 : MyMenu_Img5 = "left_mu05"
Dim MyMenu_Img6 : MyMenu_Img6 = "left_mu06"
Dim MyMenu_Img7 : MyMenu_Img7 = "left_mu07"
Dim MyMenu_Img8 : MyMenu_Img8 = "left_mu08"
Dim MyMenu_Img9 : MyMenu_Img9 = "left_mu09"
Dim MyMenu_Img10 : MyMenu_Img10 = "left_mu10"
Dim MyMenu_Img11 : MyMenu_Img11 = "left_mu11_n"

Select Case MyMenu_Main
	Case "1"
		MyMenu_Img1 = MyMenu_Img1 & "_a"
	Case "2"
		MyMenu_Img2 = MyMenu_Img2 & "_a"
	Case "3"
		MyMenu_Img3 = MyMenu_Img3 & "_a"
	Case "4"
		MyMenu_Img4 = MyMenu_Img4 & "_a"
	Case "5"
		MyMenu_Img5 = MyMenu_Img5 & "_a"
	Case "6"
		MyMenu_Img6 = MyMenu_Img6 & "_a"
	Case "7"
		MyMenu_Img7 = MyMenu_Img7 & "_a"
	Case "8"
		MyMenu_Img8 = MyMenu_Img8 & "_a"
	Case "9"
		MyMenu_Img9 = MyMenu_Img9 & "_a"
	Case "10"
		MyMenu_Img10 = MyMenu_Img10 & "_a"
	Case "11"
		MyMenu_Img11 = "left_mu11_a"
End Select

Function FreePassTab(t,t1)

	If t = t1 then
		FreePassTab = "_a"
	Else
		FreePassTab = ""
	End If

End Function

'===========================================================================
'�Լ���		: MP_LEFT_MENU_STRONG
'INPUT 		: �޴���,��ȣ
'��ɼ���	: �޴� ���̶���Ʈ ó��
'===========================================================================
Function MP_LEFT_MENU_STRONG(str, num)
	If MyMenu_Sub = num Then
		MP_LEFT_MENU_STRONG = "<strong>"&str&"</strong>"
	Else
		MP_LEFT_MENU_STRONG = str
	End If
End Function
'===========================================================================
'�Լ���		: MP_MONTH_NAME
'INPUT 		: ��¥
'��ɼ���	: ���ϱ��ϱ�
'===========================================================================
Function MP_MONTH_NAME(dt)
	M_NM = WeekDay(dt)

	Select Case M_NM
		Case 1
			MP_MONTH_NAME = "��"
		Case 2
			MP_MONTH_NAME = "��"
		Case 3
			MP_MONTH_NAME = "ȭ"
		Case 4
			MP_MONTH_NAME = "��"
		Case 5
			MP_MONTH_NAME = "��"
		Case 6
			MP_MONTH_NAME = "��"
		Case Else
			MP_MONTH_NAME = "��"
	End Select
End Function

'===========================================================================
'�Լ���		: MP_MONTH_LASTDAY
'INPUT 		: ��,��
'��ɼ���	: ���� �������� ���ϱ�
'===========================================================================
Function MP_MONTH_LASTDAY(yy,mm)

	Select Case mm
		Case 1,3,5,7,8,10,12
			last_day = 31
		Case 4,6,9,11
			last_day = 30
		Case 2
			if YY mod 400 = 0  or (YY mod 100 <> 0 and YY mod 4 = 0) then ' ����
				last_day = 29
			else
				last_day = 28
			end if
	End Select

	MP_MONTH_LASTDAY = last_day

End Function
'===========================================================================
'�Լ���		: MP_LEARNING_PER
'INPUT 		: ��ü���Ǽ�, �������Ǽ�
'��ɼ���	: �н������� ���ϱ�
'===========================================================================
Function MP_LEARNING_PER(cnt1,cnt2)
	Dim retStr

	If cnt1 = 0 Then
		retStr = "�̼���"
	Else
		retStr = cnt2&"����/"&cnt1&"��<br>("&Round((cnt2/cnt1) * 100 , 1) &"%)"
	End If

	MP_LEARNING_PER = retStr
End Function

'===========================================================================
'�Լ���		: MP_PAY_FLG
'INPUT 		: ��������Ұ�,������Ұ�,�������¼�,�����
'��ɼ���	: �н������� ���ϱ�
'===========================================================================
Function MP_PAY_FLG(vod_cnc,book_cnc,vod_cnt,book_cnt)
	Dim retStr

	If vod_cnc = 0 and book_cnc = 0 then
		reStr = "�����Ϸ�"
	end if

	if (vod_cnc + book_cnc) <> 0 and (vod_cnt + book_cnt) > (vod_cnc + book_cnc) then
		reStr = "�κ����"
	end if

	if (vod_cnt + book_cnt) = (vod_cnc + book_cnc) then
		reStr = "�ֹ����"
	end if

	MP_PAY_FLG = reStr
End Function

'===========================================================================
'�Լ���		: MP_FREEPASS_YN
'INPUT 		: ȸ�����̵�
'��ɼ���	: �����н� ȸ������ �˻�
'===========================================================================
Dim Mp_FreePass_Flg, Mp_FreePass_eDt

Sub MP_FREEPASS_YN(ID)

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "dbo.MSP_MYPAGE_FREEPASS_YN"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@MEM_ID").Value = ID

		Set objRs = .Execute

			if not objRs.EOF then
				Mp_FreePass_Flg = objRs(0)
				Mp_FreePass_eDt = objRs(1)
			end if

			objRs.close
		Set objRs = Nothing

	End With

	Set objCmd = Nothing

	Mp_FreePass_Flg = "N"

End Sub


'===========================================================================
'�Լ���		: MP_ONLINE_COUNT
'INPUT 		: ����ھ��̵�
'��ɼ���	: ���������� ����-�������¼� �Ҵ�
'===========================================================================
Dim Mp_Online_Ing, Mp_Online_Rest, Mp_Online_Wite, Mp_Online_End

Sub MP_ONLINE_COUNT (ID)

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "dbo.MSP_MYPAGE_ONLINE_CNT"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@MEM_ID").Value = ID

		Set objRs = .Execute

			if not objRs.EOF then
				Mp_Online_Ing = objRs(0)
				Mp_Online_Rest = objRs(1)
				Mp_Online_Wite = objRs(2)
				Mp_Online_End = objRs(3)
			end If

			objRs.close

		Set objRs = Nothing

	End With

	Set objCmd = Nothing

End Sub


'===========================================================================
'�Լ���		: MP_PKG_COUNT
'INPUT 		: ����ھ��̵�
'��ɼ���	: ���������� ����-�������¼� �Ҵ�
'===========================================================================
Dim Mp_PKG_Ing, Mp_PKG_Rest, Mp_PKG_Wite, Mp_PKG_End

Sub MP_PKG_COUNT (ID)

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "dbo.MSP_MYPAGE_PKG_CNT"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@MEM_ID").Value = ID

		Set objRs = .Execute

			if not objRs.EOF then
				Mp_PKG_Ing = objRs(0)
				Mp_PKG_Rest = objRs(1)
				Mp_PKG_Wite = objRs(2)
				Mp_PKG_End = objRs(3)
			end If

			objRs.close

		Set objRs = Nothing

	End With

	Set objCmd = Nothing

End Sub

'===========================================================================
'�Լ���		: MP_OFFLINE_COUNT
'INPUT 		: ����ھ��̵�
'��ɼ���	: ���������� ����-�п����¼� �Ҵ�
'===========================================================================
Dim Mp_Offline_Ing, Mp_Offline_Rest, Mp_Offline_End,Mp_Offline_Dmy

Sub MP_OFFLINE_COUNT (ID)

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "dbo.MSP_MYPAGE_OFFLINE_CNT"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@MEM_ID").Value = ID

		Set objRs = .Execute

			if not objRs.EOF then
				Mp_Offline_Ing = objRs(0)
				Mp_Offline_Rest = objRs(1)
				Mp_Offline_End = objRs(2)
				Mp_Offline_Dmy = objRs(3)
			end if

			objRs.close

		Set objRs = Nothing

	End With

	Set objCmd = Nothing

End Sub

'===========================================================================
'�Լ���		: MP_LEARNING_STAT
'INPUT 		: ����ھ��̵�
'��ɼ���	: ���������� ����-�ֱ�������/�⼮��/�н��� ���� �Ҵ�
'===========================================================================
Dim Mp_Latest_Date, Mp_Visit_Cnt, Mp_Lecture_Cnt

Sub MP_LEARNING_STAT (ID)
	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "dbo.MSP_MYPAGE_LEARN_STAT"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@MEM_ID").Value = ID

		Set objRs = .Execute

			if not objRs.EOF then
				Mp_Latest_Date = objRs(0)
				Mp_Visit_Cnt = objRs(1)
				Mp_Lecture_Cnt = objRs(2)
			end if

			objRs.close

		Set objRs = Nothing

	End With

	Set objCmd = Nothing
End Sub

'===========================================================================
'�Լ���		: MP_PTCP_COUNT
'INPUT 		: ����ھ��̵�
'��ɼ���	: ���������� ����-����Ʈ/���� ���� ���� �Ҵ�
'===========================================================================
Dim Mp_Point_Cnt, Mp_Coupon_Cnt

Sub MP_PTCP_COUNT (ID)
	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "dbo.MSP_MYPAGE_PTCP_CNT"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@MEM_ID").Value = ID

		Set objRs = .Execute

			if not objRs.EOF then
				Mp_Point_Cnt = objRs(0)
				Mp_Coupon_Cnt = objRs(1)
			end if

			objRs.close
		Set objRs = Nothing

	End With

	Set objCmd = Nothing
End Sub

'===========================================================================
'�Լ���		: MP_CHR_DROPDOWN_DB
'INPUT 		: ����ھ��̵�
'��ɼ���	: ���������� ����-�����߰��� ����Ʈ�ڽ� ����
'===========================================================================
Dim Mp_Cdl_Ary, Mp_Cdl_Cnt, Mp_Cdl_Max

Sub MP_CHR_DROPDOWN_DB (ID)

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "MSP_MYPAGE_CHR_DROPDOWN"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@MEM_ID").Value = ID

		Set objRs = .Execute

	End With

	Set objCmd = Nothing

	If NOT objRS.EOF Then
		Mp_Cdl_Ary = objRS.GetRows()
	End If

	objRs.Close()
	Set objRs = Nothing

End Sub

'===========================================================================
'�Լ���		: MP_CHR_DROPDOWN_MAKE
'INPUT 		:
'��ɼ���	: ���������� ����-�����߰��� ����Ʈ�ڽ� ����
'===========================================================================
Sub MP_CHR_DROPDOWN_MAKE ()

	If IsArray(Mp_Cdl_Ary) Then

		Mp_Cdl_Max = UBound(Mp_Cdl_Ary, 2)

		For Mp_Cdl_Cnt = 0 to Mp_Cdl_Max

			Response.Write "<option value='" & Mp_Cdl_Ary(2,Mp_Cdl_Cnt) & "'>" & "[" & Mp_Cdl_Ary(3,Mp_Cdl_Cnt) & "]" & Mp_Cdl_Ary(1,Mp_Cdl_Cnt) & "</option>"

		Next

	End If

End Sub

'===========================================================================
'�Լ���		: MP_CASH_HIS_01
'INPUT 		: ����ھ��̵�
'��ɼ���	: ���������� ����-�� ��������
'===========================================================================
Dim Mp_Cah_Ary, Mp_Cah_Cnt, Mp_Cah_Max

Sub MP_CASH_HIS_01 (ID)

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "MSP_MYPAGE_CASH_HIS_01"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@MEM_ID").Value = ID

		Set objRs = .Execute

	End With

	Set objCmd = Nothing

	If NOT objRS.EOF Then
		Mp_Cah_Ary = objRS.GetRows()
	End If

	objRs.Close()
	Set objRs = Nothing

End Sub

'===========================================================================
'�Լ���		: MP_LEC_LEARNING
'INPUT 		: ����ھ��̵�
'��ɼ���	: ���������� ����-�������� �������� ����Ʈ
'===========================================================================
Dim Mp_ll_Ary, Mp_ll_Cnt, Mp_ll_Max

Sub MP_LEC_LEARNING (ID)

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "MSP_MYPAGE_CHR_LIST_01"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@MEM_ID").Value = ID

		Set objRs = .Execute

	End With

	Set objCmd = Nothing

	If NOT objRS.EOF Then
		Mp_ll_Ary = objRS.GetRows()
	End If

	objRs.Close()
	Set objRs = Nothing

End Sub

'===========================================================================
'�Լ���		: MP_RESEXT_DEFINFO
'INPUT 		: ������û��������
'��ɼ���	: ������û���������� ���� ����/���� ��û�� �ʿ��� �⺻���� ������
'===========================================================================
Dim Mp_Rd_App_No, Mp_Rd_Chr_Nm, Mp_Rd_Ext_Cnt, Mp_Rd_Chr_Cd, Mp_Rd_Pkg_Cd, Mp_Rd_Unt_Cd, Mp_Rd_Chr_Prc, Mp_Rd_Std_Day

Sub MP_RESEXT_DEFINFO (SEQ)
	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "dbo.MSP_MYPAGE_RESEXT_DEFINFO"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@APP_SEQ").Value = SEQ

		Set objRs = .Execute

			if not objRs.EOF then
				Mp_Rd_App_No = objRs(0)	'������û��ȣ
				Mp_Rd_Chr_Nm = objRs(1)	'���¸�
				Mp_Rd_Ext_Cnt = objRs(2)	'����Ƚ��
				Mp_Rd_Chr_Cd = objRs(3)	'�����ڵ�
				Mp_Rd_Pkg_Cd = objRs(4)	'��Ű���ڵ�
				Mp_Rd_Unt_Cd = objRs(5)	'�ܿ��ڵ�
				Mp_Rd_Chr_Prc = objRs(6)	'���±ݾ�
				Mp_Rd_Std_Day = objRs(7)	'�����Ⱓ
			end if

			objRs.close
		Set objRs = Nothing

	End With

	Set objCmd = Nothing
End Sub

'===========================================================================
'�Լ���		: MP_RESEXT_DEFINFO_PKG
'INPUT 		: ������û������ȣ, ��Ű����ȣ
'��ɼ���	: ������û������ȣ, ��Ű����ȣ ���� ����/���� ��û�� �ʿ��� �⺻���� ������
'===========================================================================
Dim Mp_Rdp_App_No, Mp_Rdp_Pkg_Nm, Mp_Rdp_Ext_Cnt, Mp_Rdp_Pkg_Cd, Mp_Rdp_Unt_Cd, Mp_Rdp_Pkg_Prc, Mp_Rdp_Std_Day

Sub MP_RESEXT_DEFINFO_PKG (NO,CD)
	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "dbo.MSP_MYPAGE_RESEXT_DEFINFO_PKG"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@APP_NO").Value = NO
		.Parameters("@PKG_CD").Value = CD

		Set objRs = .Execute

			if not objRs.EOF then
				Mp_Rdp_App_No = objRs(0)	'������û��ȣ
				Mp_Rdp_Pkg_Nm = objRs(1)	'���¸�
				Mp_Rdp_Ext_Cnt = objRs(2)	'����Ƚ��
				Mp_Rdp_Pkg_Cd = objRs(3)	'��Ű���ڵ�
				Mp_Rdp_Unt_Cd = objRs(4)	'�ܿ��ڵ�
				Mp_Rdp_Pkg_Prc = objRs(5)	'���±ݾ�
				Mp_Rdp_Std_Day = objRs(6)	'�����Ⱓ
			end if

			objRs.close
		Set objRs = Nothing

	End With

	Set objCmd = Nothing
End Sub

'===========================================================================
'�Լ���		: MP_CHR_DTLINFO
'INPUT 		: ������û��������
'��ɼ���	: ������û���������� ���� ���»������� �����´�
'===========================================================================
Dim Mp_Cd_Remain, Mp_Cd_Sub_Nm, Mp_Cd_Tec_Cd, Mp_Cd_Tec_Nm, Mp_Cd_Chr_Cd, Mp_Cd_Chr_Nm, Mp_Cd_Std_Mlt, Mp_Cd_Std_Sdt, Mp_Cd_Std_Edt, Mp_Cd_Lec_Cnt, Mp_Cd_Hr_Cnt, Mp_Cd_Std_Day,Mp_App_No,Mp_Old_Chr_Cd
Dim Mp_Cd_Dom_Cd,Mp_Cd_Sub_Cd, Mp_Cd_Dom_Nm, Mp_Cd_Down_Cnt, Mp_Cd_Make_Type, Mp_Cd_Cafe_Yn, Mp_Cd_Open_Flg, Mp_Cd_Pls_File

Sub MP_CHR_DTLINFO (SEQ)
	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "dbo.MSP_MYPAGE_CHR_DTL"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@APP_SEQ").Value = SEQ

		Set objRs = .Execute

			if not objRs.EOF then
				Mp_Cd_Remain = objRs(0)	'�����ϼ�
				Mp_Cd_Sub_Nm = objRs(1)	'�����
				Mp_Cd_Tec_Cd = objRs(2)	'�������ڵ�
				Mp_Cd_Tec_Nm = objRs(3)	'�����Ը�
				Mp_Cd_Chr_Cd = objRs(4)	'�����ڵ�
				Mp_Cd_Chr_Nm = objRs(5)	'���¸�
				Mp_Cd_Std_Mlt = objRs(6)	'�������
				Mp_Cd_Std_Sdt = objRs(7)	'����������
				Mp_Cd_Std_Edt = objRs(8)	'����������
				Mp_Cd_Lec_Cnt = objRs(9)	'��ü���Ǽ�
				Mp_Cd_Hr_Cnt = objRs(10)	'�������Ǽ�
				Mp_Cd_Std_Day = objRs(11)	 '���������ϼ�
				Mp_Cd_Dom_Cd = objRs(12)	 '
				Mp_Cd_Sub_Cd = objRs(13)	 '
				Mp_App_No = objRs(14)	 'APP_No
				Mp_Old_Chr_Cd = objRs(15)	 '�� ���� �ڵ�(���� ���¿�)
				Mp_Cd_Dom_Nm = objRs(16)
				Mp_Cd_Down_Cnt = objRs(17)
				Mp_Cd_Make_Type = objRs(18)
				Mp_Cd_Cafe_Yn = objRs(20)
				Mp_Cd_Open_Flg = objRs(21)	'���� OPEN ����
				Mp_Cd_Pls_File =  objRs(22)	'PMP ���� ���
			end if

			objRs.close
		Set objRs = Nothing

	End With

	Set objCmd = Nothing
End Sub

'===========================================================================
'�Լ���		: MP_LEC_LIST
'INPUT 		: ������û��������,�����ڵ�,����ھ��̵�
'��ɼ���	: ���������� ����-���º� ���Ǹ���Ʈ
'===========================================================================
Dim Mp_Lec_Ary, Mp_Lec_Cnt, Mp_Lec_Max

Sub MP_LEC_LIST (ASEQ,CCD,ID)

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "MSP_MYPAGE_LEC_LST"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@APP_SEQ").Value = ASEQ
		.Parameters("@CHR_CD").Value = CCD
		.Parameters("@MEM_ID").Value = ID

		Set objRs = .Execute

	End With

	Set objCmd = Nothing

	If NOT objRS.EOF Then
		Mp_Lec_Ary = objRS.GetRows()
	End If

	objRs.Close()
	Set objRs = Nothing

End Sub

Sub MP_LEC_LIST_CHUM (ASEQ,CCD,ID)

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "MSP_MYPAGE_LEC_LST_CHUM"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@APP_SEQ").Value = ASEQ
		.Parameters("@CHR_CD").Value = CCD
		.Parameters("@MEM_ID").Value = ID

		Set objRs = .Execute

	End With

	Set objCmd = Nothing

	If NOT objRS.EOF Then
		Mp_Lec_Ary = objRS.GetRows()
	End If

	objRs.Close()
	Set objRs = Nothing

End Sub


'===========================================================================
'�Լ���		: MP_PKG_LEARNING
'INPUT 		: ����ھ��̵�
'��ɼ���	: ���������� ����-�������� ������ ��Ű������ ����Ʈ
'===========================================================================
Dim Mp_Pl_Ary, Mp_Pl_Cnt, Mp_Pl_Max

Sub MP_PKG_LEARNING (ID)

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "MSP_MYPAGE_PKG_LIST_01"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@MEM_ID").Value = ID

		Set objRs = .Execute

	End With

	Set objCmd = Nothing

	If NOT objRS.EOF Then
		Mp_Pl_Ary = objRS.GetRows()
	End If

	objRs.Close()
	Set objRs = Nothing

End Sub

'===========================================================================
'�Լ���		: MP_PKG_BY_CHR
'INPUT 		: ����ھ��̵�, ��Ű���ڵ�, ������û��ȣ
'��ɼ���	: ���������� ����-��Ű���� ���� ����Ʈ
'===========================================================================
Dim Mp_Pbc_Ary, Mp_Pbc_Cnt, Mp_Pbc_Max

Sub MP_PKG_BY_CHR (ID,CD,NO)

	CALL DBOPEN

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "MSP_MYPAGE_PKG_CHR_LIST_01"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@MEM_ID").Value = ID
		.Parameters("@PKG_CD").Value = CD
		.Parameters("@APP_NO").Value = NO

		Set objRs = .Execute

	End With

	Set objCmd = Nothing

	If NOT objRS.EOF Then
		Mp_Pbc_Ary = objRS.GetRows()
	End If

	objRs.Close()
	Set objRs = Nothing

	CALL DBOUT

End Sub

'===========================================================================
'�Լ���		: MP_LEC_REST_LST
'INPUT 		: ����ھ��̵�
'��ɼ���	: ���������� ����-�������� �������� ����Ʈ
'===========================================================================
Dim Mp_Lrl_Ary, Mp_Lrl_Cnt, Mp_Lrl_Max

Sub MP_LEC_REST_LST (ID)

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "MSP_MYPAGE_CHR_LIST_02"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@MEM_ID").Value = ID

		Set objRs = .Execute

	End With

	Set objCmd = Nothing

	If NOT objRS.EOF Then
		Mp_Lrl_Ary = objRS.GetRows()
	End If

	objRs.Close()
	Set objRs = Nothing

End Sub

'===========================================================================
'�Լ���		: MP_PKG_REST_LST
'INPUT 		: ����ھ��̵�
'��ɼ���	: ���������� ����-�������� ��Ű�� ����Ʈ
'===========================================================================
Dim Mp_Prl_Ary, Mp_Prl_Cnt, Mp_Prl_Max

Sub MP_PKG_REST_LST (ID)

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "MSP_MYPAGE_PKG_LIST_02"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@MEM_ID").Value = ID

		Set objRs = .Execute

	End With

	Set objCmd = Nothing

	If NOT objRS.EOF Then
		Mp_Prl_Ary = objRS.GetRows()
	End If

	objRs.Close()
	Set objRs = Nothing

End Sub

'===========================================================================
'�Լ���		: MP_LEARN_CHR_BEFORE
'INPUT 		: ����ھ��̵�
'��ɼ���	: ���������� ����-�������������¸���Ʈ
'===========================================================================
Dim Mp_Lcb_Ary, Mp_Lcb_Cnt, Mp_Lcb_Max

Sub MP_LEARN_CHR_BEFORE (ID)

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "MSP_MYPAGE_CHR_LIST_03"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@MEM_ID").Value = ID

		Set objRs = .Execute

	End With

	Set objCmd = Nothing

	If NOT objRS.EOF Then
		Mp_Lcb_Ary = objRS.GetRows()
	End If

	objRs.Close()
	Set objRs = Nothing

End Sub

'===========================================================================
'�Լ���		: MP_LEARN_PKG_BEFORE
'INPUT 		: ����ھ��̵�
'��ɼ���	: ���������� ����-���������� ��Ű������Ʈ
'===========================================================================
Dim Mp_Lpb_Ary, Mp_Lpb_Cnt, Mp_Lpb_Max

Sub MP_LEARN_PKG_BEFORE (ID)

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "MSP_MYPAGE_PKG_LIST_03"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@MEM_ID").Value = ID

		Set objRs = .Execute

	End With

	Set objCmd = Nothing

	If NOT objRS.EOF Then
		Mp_Lpb_Ary = objRS.GetRows()
	End If

	objRs.Close()
	Set objRs = Nothing

End Sub

'===========================================================================
'�Լ���		: MP_OPEN_CHR_BEFORE
'INPUT 		: ����ھ��̵�
'��ɼ���	: ���������� ����-���������¸���Ʈ
'===========================================================================
Dim Mp_Ocb_Ary, Mp_Ocb_Cnt, Mp_Ocb_Max

Sub MP_OPEN_CHR_BEFORE (ID)

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "MSP_MYPAGE_CHR_LIST_04"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@MEM_ID").Value = ID

		Set objRs = .Execute

	End With

	Set objCmd = Nothing

	If NOT objRS.EOF Then
		Mp_Ocb_Ary = objRS.GetRows()
	End If

	objRs.Close()
	Set objRs = Nothing

End Sub

'===========================================================================
'�Լ���		: MP_LEC_REST_DTL
'INPUT 		: ����ھ��̵�
'��ɼ���	: ���������� ����-�������� �������� ��
'===========================================================================
Dim Mp_Lrd_App_Seq, Mp_Lrd_Std_Sdt, Mp_Lrd_Std_Edt,  Mp_Lrd_Res_Dt, Mp_Lrd_Res_Day, Mp_Lrd_Redate

Sub MP_LEC_REST_DTL (ID,SEQ)

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "dbo.MSP_MYPAGE_CHR_DTL_01"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@APP_SEQ").Value = SEQ
		.Parameters("@MEM_ID").Value = ID

		Set objRs = .Execute

			if not objRs.EOF then

				Mp_Lrd_App_Seq = Trim(objRs(0))
				Mp_Lrd_Std_Sdt = Trim(objRs(6))
				Mp_Lrd_Std_Edt = Trim(objRs(7))
				Mp_Lrd_Res_Dt = Trim(objRs(8))
				Mp_Lrd_Res_Day = Trim(objRs(9))
				Mp_Lrd_Redate = Trim(objRs(10))

			end if

			objRs.close
		Set objRs = Nothing

	End With

	Set objCmd = Nothing

End Sub

'===========================================================================
'�Լ���		: MP_LEC_REST_DTL1
'INPUT 		: ����ھ��̵�
'��ɼ���	: ���������� ����-�������� �������� ��
'===========================================================================

Sub MP_LEC_REST_DTL1 (ID,SEQ)

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "dbo.MSP_MYPAGE_CHR_DTL_02"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@APP_SEQ").Value = SEQ
		.Parameters("@MEM_ID").Value = ID

		Set objRs = .Execute
			if not objRs.EOF then

				Mp_Lrd_App_Seq = Trim(objRs(0))
				Mp_Lrd_Std_Sdt = Trim(objRs(6))
				Mp_Lrd_Std_Edt = Trim(objRs(7))

			end if

			objRs.close
		Set objRs = Nothing

	End With

	Set objCmd = Nothing

End Sub

'===========================================================================
'�Լ���		: MP_GET_APP_SEQ
'INPUT 		: ����ھ��̵�, ������û��ȣ,��Ű����ȣ
'��ɼ���	: ���������� ����-��Ű���� ���� APP_SEQ�� ȹ��
'===========================================================================
Dim Mp_Gsa_Ary, Mp_Gsa_Cnt, Mp_Gsa_Max

Sub MP_GET_APP_SEQ (ID,NO,CD)

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "MSP_MYPAGE_PKG_APP_SEQ"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@MEM_ID").Value = ID
		.Parameters("@APP_NO").Value = NO
		.Parameters("@PKG_CD").Value = CD

		Set objRs = .Execute

	End With

	Set objCmd = Nothing

	If NOT objRS.EOF Then
		Mp_Gsa_Ary = objRS.GetRows()
	End If

	objRs.Close()
	Set objRs = Nothing

End Sub

'===========================================================================
'�Լ���		: MP_CHR_END_EXT
'INPUT 		: ����ھ��̵�
'��ɼ���	: ���������� ����-���尡���� ����� ����
'===========================================================================
Dim Mp_Cee_Ary, Mp_Cee_Cnt, Mp_Cee_Max

Sub MP_CHR_END_EXT (ID)

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "MSP_MYPAGE_CHR_LIST_05"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@MEM_ID").Value = ID

		Set objRs = .Execute

	End With

	Set objCmd = Nothing

	If NOT objRS.EOF Then
		Mp_Cee_Ary = objRS.GetRows()
	End If

	objRs.Close()
	Set objRs = Nothing

End Sub

'===========================================================================
'�Լ���		: MP_CHR_END_NOEXT
'INPUT 		: ����ھ��̵�
'��ɼ���	: ���������� ����-����Ұ����� ����� ����
'===========================================================================
Dim Mp_Cen_Ary, Mp_Cen_Cnt, Mp_Cen_Max

Sub MP_CHR_END_NOEXT (ID)

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "MSP_MYPAGE_CHR_LIST_06"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@MEM_ID").Value = ID

		Set objRs = .Execute

	End With

	Set objCmd = Nothing

	If NOT objRS.EOF Then
		Mp_Cen_Ary = objRS.GetRows()
	End If

	objRs.Close()
	Set objRs = Nothing

End Sub

'===========================================================================
'�Լ���		: MP_PKG_END_EXT
'INPUT 		: ����ھ��̵�
'��ɼ���	: ���������� ����-���尡���� ����� ��Ű��
'===========================================================================
Dim Mp_Pee_Ary, Mp_Pee_Cnt, Mp_Pee_Max

Sub MP_PKG_END_EXT (ID)

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "MSP_MYPAGE_PKG_LIST_04"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@MEM_ID").Value = ID

		Set objRs = .Execute

	End With

	Set objCmd = Nothing

	If NOT objRS.EOF Then
		Mp_Pee_Ary = objRS.GetRows()
	End If

	objRs.Close()
	Set objRs = Nothing

End Sub

'===========================================================================
'�Լ���		: MP_PKG_END_NOEXT
'INPUT 		: ����ھ��̵�
'��ɼ���	: ���������� ����-����Ұ����� ����� ��Ű��
'===========================================================================
Dim Mp_Pen_Ary, Mp_Pen_Cnt, Mp_Pen_Max

Sub MP_PKG_END_NOEXT (ID)

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "MSP_MYPAGE_PKG_LIST_05"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@MEM_ID").Value = ID

		Set objRs = .Execute

	End With

	Set objCmd = Nothing

	If NOT objRS.EOF Then
		Mp_Pen_Ary = objRS.GetRows()
	End If

	objRs.Close()
	Set objRs = Nothing

End Sub

'===========================================================================
'�Լ���		: MP_DMY_LST
'INPUT 		: ����ھ��̵�
'��ɼ���	: ���������� ����-�п�����()
'===========================================================================
Dim Mp_Dmy_Ary, Mp_Dmy_Cnt, Mp_Dmy_Max

Sub MP_DMY_LST (ID,ARROW)

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "MSP_MYPAGE_CHR_OFF_DMY"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@MEM_ID").Value = ID
		.Parameters("@ARROW").Value = ARROW

		Set objRs = .Execute

	End With

	Set objCmd = Nothing

	If NOT objRS.EOF Then
		Mp_Dmy_Ary = objRS.GetRows()
	End If

	objRs.Close()
	Set objRs = Nothing

End Sub

'===========================================================================
'�Լ���		: MP_OFF_LST
'INPUT 		: ����ھ��̵�
'��ɼ���	: ���������� ����-�п�����
'===========================================================================
Dim Mp_Ol_Ary, Mp_Ol_Cnt, Mp_Ol_Max

Sub MP_OFF_LST (ID,ARROW)

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "MSP_MYPAGE_CHR_OFF"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@MEM_ID").Value = ID
		.Parameters("@ARROW").Value = ARROW

		Set objRs = .Execute

	End With

	Set objCmd = Nothing

	If NOT objRS.EOF Then
		Mp_Ol_Ary = objRS.GetRows()
	End If

	objRs.Close()
	Set objRs = Nothing

End Sub
'===========================================================================
'�Լ���		: MP_OFF_END_LST
'INPUT 		: ����ھ��̵�
'��ɼ���	: ���������� ����-�п�����(����� �п� ���� ��  1�� ���� ����
'===========================================================================
Dim Mp_Off_End_Ary, Mp_Off_End_Ol_Cnt, Mp_Off_End_Ol_Max

Sub MP_OFF_END_LST (ID,ARROW,DOMCD)

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "MSP_MYPAGE_CHR_OFF_END"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@MEM_ID").Value = ID
		.Parameters("@ARROW").Value = ARROW
		.Parameters("@DOM_CD").Value = DOMCD

		Set objRs = .Execute

	End With

	Set objCmd = Nothing

	If NOT objRS.EOF Then
		Mp_Off_End_Ary = objRS.GetRows()
	End If

	objRs.Close()
	Set objRs = Nothing

End Sub

'===========================================================================
'�Լ���		: MP_ONLINE_PSCNT
'INPUT 		:
'��ɼ���	: �¶��μ����ı� �ۼ�ī��Ʈ
'===========================================================================
Dim Mp_Op_Idx

Sub MP_ONLINE_PSCNT (ID, CHR_CD)
	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "dbo.MSP_MYPAGE_OLN_PSCNT"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@MEM_ID").Value = ID
		.Parameters("@CHR_CD").Value = CHR_CD

		Set objRs = .Execute

			If NOT objRS.EOF Then
				Mp_Op_Idx = objRs(0)
			End If

			objRs.close
		Set objRs = Nothing

	End With

	Set objCmd = Nothing
End Sub

'===========================================================================
'�Լ���		: MP_DELIV_LST
'INPUT 		: ����ھ��̵�
'��ɼ���	: ���������� ����-������
'===========================================================================
Dim Mp_Dl_Ary, Mp_Dl_Cnt, Mp_Dl_Max

Sub MP_DELIV_LST (ID)

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "MSP_MYPAGE_DELIV_LST"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@MEM_ID").Value = ID

		Set objRs = .Execute

	End With

	Set objCmd = Nothing

	If NOT objRS.EOF Then
		Mp_Dl_Ary = objRS.GetRows()
	End If

	objRs.Close()
	Set objRs = Nothing

End Sub

'===========================================================================
'�Լ���		: MP_TOT_EXP_MONEY
'INPUT 		:
'��ɼ���	: �¶��μ����ı� �ۼ�ī��Ʈ
'===========================================================================
Dim Mp_Tep_Tot_Money

Sub MP_TOT_EXP_MONEY (ID)
	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "dbo.MSP_MYPAGE_TOTMONEY"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@MEM_ID").Value = ID

		Set objRs = .Execute

			If NOT objRS.EOF Then
				Mp_Tep_Tot_Money = objRs(0)
			End If

			objRs.close
		Set objRs = Nothing

	End With

	Set objCmd = Nothing
End Sub

'===========================================================================
'�Լ���		: MP_TOT_EXP_POINT
'INPUT 		:
'��ɼ���	: �¶��μ����ı� �ۼ�ī��Ʈ
'===========================================================================
Dim Mp_Tep_Tot, Mp_Tep_Mtot, Mp_Tep_Mg_Tot

Sub MP_TOT_EXP_POINT (ID)
	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "dbo.MSP_MYPAGE_TOTPOINT"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@MEM_ID").Value = ID

		Set objRs = .Execute

			If NOT objRS.EOF Then
				Mp_Tep_Tot = objRs(0)		'���ʽ� ĳ��
				Mp_Tep_Mtot = objRs(1)		'1���� �� �Ҹ꿹�� ���ʽ� ĳ��
				Mp_Tep_Mg_Tot = objRs(2)	'�ް� ĳ��
			End If

			objRs.close
		Set objRs = Nothing

	End With

	Set objCmd = Nothing
End Sub

'===========================================================================
'�Լ���		: MP_MAIN_DELIV_LST
'INPUT 		: ����ھ��̵�
'��ɼ���	: ���������� ����-������
'===========================================================================
Dim Mp_Mdl_Ary, Mp_Mdl_Cnt, Mp_Mdl_Max

Sub MP_MAIN_DELIV_LST (ID)

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "MSP_MYPAGE_MAIN_DEVIV"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@MEM_ID").Value = ID

		Set objRs = .Execute

	End With

	Set objCmd = Nothing

	If NOT objRS.EOF Then
		Mp_Mdl_Ary = objRS.GetRows()
	End If

	objRs.Close()
	Set objRs = Nothing

End Sub

'===========================================================================
'�Լ���		: MP_ENG_TEST_LIST
'INPUT 		: ����ھ��̵�
'��ɼ���	: ���������� ����-���� ���� ���� ����Ʈ ��������
'===========================================================================
Dim Mp_Eng_Test_Ary

Sub MP_ENG_TEST_LIST (ID)

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "MSP_MYPAGE_CHR_LIST_07"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@MEM_ID").Value = ID

		Set objRs = .Execute

	End With

	Set objCmd = Nothing

	If NOT objRS.EOF Then
		Mp_Eng_Test_Ary = objRS.GetRows()
	End If

	objRs.Close()
	Set objRs = Nothing

End Sub

'===========================================================================
'�Լ���		: MP_MAIN_DELIV_LST
'INPUT 		: ����ھ��̵�
'��ɼ���	: ���������� ����-������
'===========================================================================
Dim Mp_Mcl_Ary, Mp_Mcl_Cnt, Mp_Mcl_Max

Sub MP_MAIN_COMM_LST (ID)

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "MSP_MYPAGE_MAIN_COMM"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@MEM_ID").Value = ID

		Set objRs = .Execute

	End With

	Set objCmd = Nothing

	If NOT objRS.EOF Then
		Mp_Mcl_Ary = objRS.GetRows()
	End If

	objRs.Close()
	Set objRs = Nothing

End Sub

'===========================================================================
'�Լ���		: MP_STD_QA_VIEW
'INPUT 		: �۹�ȣ
'��ɼ���	: ���������� ����-�н�QA ��
'===========================================================================
Dim Sqv_Idx, Sqv_Subject, Sqv_View_Hit, Sqv_Name, Sqv_Write_Date, Sqv_Reply_Yn, Sqv_Sub_Nm, Sqv_Tec_Nm, Sqv_Content, Sqv_Reply_Content, Sqv_Reply_Write_Date

Sub MP_STD_QA_VIEW (IDX)

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "dbo.MSP_MYPAGE_STD_QA_VIEW"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@IDX").Value = IDX

		Set objRs = .Execute

			if not objRs.EOF then
				Sqv_Idx = Trim(objRs(0))
				Sqv_Subject = Trim(objRs(1))
				Sqv_View_Hit = Trim(objRs(2))
				Sqv_Name = Trim(objRs(3))
				Sqv_Write_Date = Trim(objRs(4))
				Sqv_Reply_Yn = Trim(objRs(5))
				Sqv_Sub_Nm = Trim(objRs(6))
				Sqv_Tec_Nm = Trim(objRs(7))
				Sqv_Content = Trim(objRs(8))
				Sqv_Reply_Content = Trim(objRs(9))
				Sqv_Reply_Write_Date = Trim(objRs(10))
				Sqv_BID = Trim(objRs(10))
			end if

			objRs.close

		Set objRs = Nothing

	End With

	Set objCmd = Nothing

End Sub

'===========================================================================
'�Լ���		: MP_EXAM_VIEW
'INPUT 		: �۹�ȣ
'��ɼ���	: ���������� ����-�Խû���
'===========================================================================
Dim Ev_Idx, Ev_Subject, Ev_View_Hit, Ev_Name, Ev_Write_Date, Ev_Cate, Ev_Content, Ev_Reply_Content, Ev_Stat

Sub MP_EXAM_VIEW (IDX)

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "dbo.MSP_MYPAGE_CONSULT_EXAM_VIEW"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@IDX").Value = IDX

		Set objRs = .Execute

			if not objRs.EOF then
				Ev_Idx = Trim(objRs(0))
				Ev_Subject = Trim(objRs(1))
				Ev_View_Hit = Trim(objRs(2))
				Ev_Name = Trim(objRs(3))
				Ev_Write_Date = Trim(objRs(4))
				Ev_Stat = Trim(objRs(5))
				Ev_Cate = Trim(objRs(6))
				Ev_Content = Trim(objRs(7))
				Ev_Reply_Content = Trim(objRs(8))
			end if

			objRs.close

		Set objRs = Nothing

	End With

	Set objCmd = Nothing

End Sub

'===========================================================================
'�Լ���		: MP_VOD_VIEW
'INPUT 		: �۹�ȣ
'��ɼ���	: ���������� ����-�Խû���
'===========================================================================
Dim Vv_Idx, Vv_Subject, Vv_View_Hit, Vv_Name, Vv_Write_Date, Vv_Stat, Vv_Content, Vv_Reply_Content, Vv_Reply_Write_Date

Sub MP_VOD_VIEW (IDX, BID)

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "dbo.MSP_MYPAGE_CONSULT_VOD_VIEW"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@IDX").Value = IDX
		.Parameters("@BID").Value = BID

		Set objRs = .Execute

			if not objRs.EOF then
				Vv_Idx = Trim(objRs(0))
				Vv_Subject = Trim(objRs(1))
				Vv_View_Hit = Trim(objRs(2))
				Vv_Name = Trim(objRs(3))
				Vv_Write_Date = Trim(objRs(4))
				Vv_Stat = Trim(objRs(5))
				Vv_Content = Trim(objRs(6))
				Vv_Reply_Content = Trim(objRs(7))
				Vv_Reply_Write_Date = Trim(objRs(8))
			end if

			objRs.close

		Set objRs = Nothing

	End With

	Set objCmd = Nothing

End Sub

'===========================================================================
'�Լ���		: MP_ACAD_VIEW
'INPUT 		: �۹�ȣ
'��ɼ���	: ���������� ����-�Խû���
'===========================================================================
Dim Av_Idx, Av_Subject, Av_View_Hit, Av_Name, Av_Write_Date, Av_Stat, Av_Content, Av_Reply_Content

Sub MP_ACAD_VIEW (IDX)

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "dbo.MSP_MYPAGE_CONSULT_ACAD_VIEW"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@IDX").Value = IDX

		Set objRs = .Execute

			if not objRs.EOF then
				Av_Idx = Trim(objRs(0))
				Av_Subject = Trim(objRs(1))
				Av_View_Hit = Trim(objRs(2))
				Av_Name = Trim(objRs(3))
				Av_Write_Date = Trim(objRs(4))
				Av_Stat = Trim(objRs(5))
				Av_Content = Trim(objRs(6))
				Av_Reply_Content = Trim(objRs(7))
			end if

			objRs.close

		Set objRs = Nothing

	End With

	Set objCmd = Nothing

End Sub

'===========================================================================
'�Լ���		: MP_ACCT_ORD_DTL
'INPUT 		: ������ȣ,�������, ���̵�
'��ɼ���	: ���������� ����-�Խû���
'===========================================================================
Dim Aod_Pay_Dt, Aod_Mem_Nm, Aod_Email, Aod_Tel_No, Aod_Hp_No, Aod_Tot_Amt, Aod_Pay_Amt, Aod_Point, Aod_Method, Aod_Pay_Flg, Aod_Book_Cnt, Aod_Pay_Tid, Aod_Pay_Money, Aod_Cpn_Money, Aod_MD_Money,Aod_MD_Point, Aod_Cpn_No, Aod_Cpn_KBN, Aod_Cpn_FLG

Sub MP_ACCT_ORD_DTL (NO,METHOD,ID)

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "dbo.MSP_MYPAGE_CASH_DTL"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@PAY_NO").Value = NO
		.Parameters("@PAY_METHOD").Value = METHOD
		.Parameters("@MEM_ID").Value = ID

		Set objRs = .Execute

	If NOT objRS.EOF Then
			Aod_Pay_Dt			=Trim(objRs(0))
			Aod_Mem_Nm		=Trim(objRs(1))
			Aod_Email			=Trim(objRs(2))
			Aod_Tel_No			=Trim(objRs(3))
			Aod_Hp_No			=Trim(objRs(4))
			Aod_Tot_Amt		=Trim(objRs(5))
			Aod_Pay_Amt		=Trim(objRs(6))
			Aod_Point			=Trim(objRs(7))
			Aod_Method			= replace( Trim(objRs(8)), "�ް�CSTĳ��","���ʽ�ĳ��")
			Aod_Pay_Flg		=Trim(objRs(9))
			Aod_Book_Cnt		=Trim(objRs(10))
			Aod_Pay_Tid		=Trim(objRs(11))
			Aod_Pay_Money	=Trim(objRs(12))
			Aod_Cpn_Money	=Trim(objRs(13))			'// Add 2009/10/09 Y.Yoon
			Aod_MD_Money	=Trim(objRs(14))			'// Add 2009/10/09 Y.Yoon
			Aod_MD_Point		=Trim(objRs(15))			'// Add 2009/12/02 Bon
			Aod_Cpn_No		=Trim(objRs(16))			'// Add 2010/02/02 Bon
			Aod_Cpn_KBN		=Trim(objRs(17))			'// Add 2010/02/04 Bon
			Aod_Cpn_FLG		=Trim(objRs(18))			'// Add 2010/02/04 Bon
	End If


			objRs.close

		Set objRs = Nothing

	End With

	Set objCmd = Nothing

End Sub

'===========================================================================
'�Լ���		: MP_DELIV_DTL
'INPUT 		: ������ȣ,�������, ���̵�
'��ɼ���	: ���������� ����-�Խû���
'===========================================================================
Dim Dd_Rec_Nm, Dd_Tel_No, Dd_Hp_No, Dd_Post_No, Dd_Addr1, Dd_Addr2, Dd_Memo

Sub MP_DELIV_DTL (NO)

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "dbo.MSP_MYPAGE_DELIV_DTL"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@PAY_NO").Value = NO

		Set objRs = .Execute

			if not objRs.EOF then
				Dd_Rec_Nm	= Trim(objRs(0))
				Dd_Tel_No		= Trim(objRs(1))
				Dd_Hp_No		= Trim(objRs(2))
				Dd_Post_No	= Trim(objRs(3))
				Dd_Addr1		= Trim(objRs(4))
				Dd_Addr2		= Trim(objRs(5))
				Dd_Memo		= Trim(objRs(6))
			end if

			objRs.close

		Set objRs = Nothing

	End With

	Set objCmd = Nothing

End Sub


'===========================================================================
'�Լ���		: MP_MAIN_PRMS
'INPUT 		: ���̵�
'��ɼ���	: ���������� ����-���ǰ���
'===========================================================================
Dim Mp_Prms_Seq, Mp_Prms_Content

Sub MP_MAIN_PRMS (ID)

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "dbo.MSP_MYPAGE_PRMS"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@MEM_ID").Value = ID

		Set objRs = .Execute

			If NOT objRS.EOF Then
				Mp_Prms_Seq = trim(objRs(0))
				Mp_Prms_Content = trim(objRs(1))
			End If

			objRs.close

		Set objRs = Nothing

	End With

	Set objCmd = Nothing

End Sub

'===========================================================================
'�Լ���		: MP_ACCT_DTL
'INPUT 		: ������ȣ
'��ɼ���	: ���������� - ���� ��
'===========================================================================
Dim Mp_Ad_Ary, Mp_Ad_Cnt, Mp_Ad_Max

Sub MP_ACCT_DTL (NO)

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "MSP_MYPAGE_ACCT_DTL"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@PAY_NO").Value = NO

		Set objRs = .Execute

	End With

	Set objCmd = Nothing

	If NOT objRS.EOF Then
		Mp_Ad_Ary = objRS.GetRows()
	End If

	objRs.Close()
	Set objRs = Nothing

End Sub

'===========================================================================
'�Լ���		: MP_ACCT_DELIV_PRC
'INPUT 		: ������ȣ
'��ɼ���	: ���������� - ��ۺ�
'===========================================================================
Dim Mp_Adp_Ary, Mp_Adp_Cnt, Mp_Adp_Max

Sub MP_ACCT_DELIV_PRC (NO)

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "MSP_MYPAGE_ACCT_DELIV"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@PAY_NO").Value = NO

		Set objRs = .Execute

	End With

	Set objCmd = Nothing

	If NOT objRS.EOF Then
		Mp_Adp_Ary = objRS.GetRows()
	End If

	objRs.Close()
	Set objRs = Nothing

End Sub


'===========================================================================
'�Լ���		: MP_OFF_ACCT_DTL
'INPUT 		: �ֹ���ȣ
'��ɼ���	: ���������� - �������ΰ��� ��
'===========================================================================
Dim Mp_Oad_Rcpt_Dt, Mp_Oad_Mem_Nm, Mp_Oad_Email, Mp_Oad_Tel_No, Mp_Oad_Hp_No, Mp_Oad_Prc, Mp_Oad_Prc_Mony

Sub MP_OFF_ACCT_DTL (TRNO)

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "dbo.MSP_MYPAGE_ACCT_OFF_DTL"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@MSIS_TRNO").Value = TRNO

		Set objRs = .Execute

			If NOT objRS.EOF Then
				Mp_Oad_Rcpt_Dt		= trim(objRs(0))
				Mp_Oad_Mem_Nm	= trim(objRs(1))
				Mp_Oad_Email		= trim(objRs(2))
				Mp_Oad_Tel_No		= trim(objRs(3))
				Mp_Oad_Hp_No		= trim(objRs(4))
				Mp_Oad_Prc			= trim(objRs(5))
				Mp_Oad_Prc_Mony = trim(objRs(6))
			End If

			objRs.close

		Set objRs = Nothing

	End With

	Set objCmd = Nothing

End Sub

'===========================================================================
'�Լ���		: MP_OFF_ACCT_DTL_LIST
'INPUT 		: ������ȣ
'��ɼ���	: ���������� - �������� ���� �󼼸���Ʈ
'===========================================================================
Dim Mp_Oadl_Ary, Mp_Oadl_Cnt, Mp_Oadl_Max

Sub MP_OFF_ACCT_DTL_LIST (TRNO)

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "MSP_MYPAGE_ACCT_OFF_DTL_LIST"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@MSIS_TRNO").Value = TRNO

		Set objRs = .Execute

	End With

	Set objCmd = Nothing

	If NOT objRS.EOF Then
		Mp_Oadl_Ary = objRS.GetRows()
	End If

	objRs.Close()
	Set objRs = Nothing

End Sub


'===========================================================================
'�Լ���		: MP_GET_CD_ARY
'INPUT 		: �ڵ�
'��ɼ���	: ���������� - �������� ���� �󼼸���Ʈ
'===========================================================================
Dim Mp_Gca_Ary, Mp_Gca_Cnt, Mp_Gca_Max

Sub MP_GET_CD_ARY (KIND)

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "MP_GET_CD_ARY"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@COMM_KIND").Value = KIND

		Set objRs = .Execute

	End With

	Set objCmd = Nothing

	If NOT objRS.EOF Then
		Mp_Gca_Ary = objRS.GetRows()
	End If

	objRs.Close()
	Set objRs = Nothing

End Sub

'===========================================================================
'�Լ���		: MP_ACCT_WAIT_DTL
'INPUT 		: ������¹�ȣ
'��ɼ���	: ���������� - �Աݴ�� ������
'===========================================================================
Dim Awd_App_Dt, Awd_Rec_Nm, Awd_Rec_Email, Awd_Tel_No, Awd_Hp_No, Awd_App_Amt, Awd_Realpay, Awd_UsePoint, Awd_BookCnt, Awd_Banknm, Awd_Addr, Awd_Memo, Awd_UseMoney
Dim Awd_Ary, Awd_Cnt, Awd_Max

Sub MP_ACCT_WAIT_DTL (NO)

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "dbo.MSP_MYPAGE_ACCT_WAIT_DTL"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@ACCT_NO").Value = NO

		Set objRs = .Execute

			if not objRs.EOF then
				Awd_App_Dt		= Trim(objRs(0))
				Awd_Rec_Nm		= Trim(objRs(1))
				Awd_Rec_Email	= Trim(objRs(2))
				Awd_Tel_No		= Trim(objRs(3))
				Awd_Hp_No		= Trim(objRs(4))
				Awd_App_Amt		= Trim(objRs(5))
				Awd_Realpay		= Trim(objRs(6))
				Awd_UsePoint	= Trim(objRs(7))
				Awd_UseMoney	= Trim(objRs(8))
				Awd_Banknm		= Trim(objRs(9))
			end if

			objRs.close

		Set objRs = Nothing

	End With

	Set objCmd = Nothing


	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "dbo.MSP_MYPAGE_ACCT_WAIT_BOOKCNT"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@ACCT_NO").Value = NO

		Set objRs = .Execute

			if not objRs.EOF then
				Awd_BookCnt		= Trim(objRs(0))
			end if
			objRs.close

		Set objRs = Nothing

	End With

	Set objCmd = Nothing


	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "MSP_MYPAGE_ACCT_WAIT_DTL_LIST"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@ACCT_NO").Value = NO

		Set objRs = .Execute

	End With

	Set objCmd = Nothing

	If NOT objRS.EOF Then
		Awd_Ary = objRS.GetRows()
	End If

	objRs.Close()
	Set objRs = Nothing

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "dbo.MSP_MYPAGE_ACCT_WAIT_DELIV_DTL"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@ACCT_NO").Value = NO

		Set objRs = .Execute

			if not objRs.EOF then
				Awd_Addr		= Trim(objRs(3))
				Awd_Memo	= Trim(objRs(4))
			end if

			objRs.close

		Set objRs = Nothing

	End With

	Set objCmd = Nothing


End Sub

'===========================================================================
'�Լ���		: MP_ACCT_WAIT_DTL
'INPUT 		: ������¹�ȣ
'��ɼ���	: ���������� - �Աݴ�� ������
'===========================================================================

Dim Fcb_Ary, Fcb_Cnt, Fcb_Max

Sub MP_FREEPASS_CHR_BOOK (CD)

	CALL DBOPEN

	Set objCmd = Server.CreateObject("ADODB.Command")

	With objCmd

		.ActiveConnection	= objCon
		.Prepared			= true
		.CommandType		= 4
		.CommandText		= "MSP_MYPAGE_CHR_BOOK_LIST"
		.CommandTimeout		= 0	'�ð� ���Ѹ��� ����

		.Parameters("@CHR_CD").Value = CD

		Set objRs = .Execute

	End With

	Set objCmd = Nothing

	If NOT objRS.EOF Then
		Fcb_Ary = objRS.GetRows()
	End If

	objRs.Close()
	Set objRs = Nothing

	CALL DBOUT

End Sub

'������°� ��ȯ
Function BOOK_FLG (flg)

	select case flg
		case "1"
			BOOK_FLG = ""
		case "2"
			BOOK_FLG = "[���źҰ�]"
		case "3"
			BOOK_FLG = "[������]"
		case "4"
			BOOK_FLG = "[�԰���]"
		case "5"
			BOOK_FLG = "[�Ͻ�ǰ��]"
		case "6"
			BOOK_FLG = "[���źҰ�]"
	end select

End Function

'// PLAYTM : ���� ����ð�
'// HRTM   : ȸ�� ���� ���� �ð�
SUB MAKE_PLAYBTN (PLAYTM, HRTM)
	DIM PSEC

	If Mp_Cd_Std_Mlt = "" Then Mp_Cd_Std_Mlt = 0
	PSEC = CINT(PLAYTM * 60) * CInt(Mp_Cd_Std_Mlt)

	'IF PSEC <= HRTM And PSEC <> 0 THEN
	IF Mp_Lec_Ary(26,Mp_Lec_Cnt) = 0 THEN
		if Mp_Lec_Ary(2,Mp_Lec_Cnt)<>"" Then
%>
	<img src="<%=img_main%>/icon/icon_il.gif" hspace="1" align="absmiddle" onclick="alert('���� ������ �÷��̽ð��� ����Ǿ����ϴ�.');" style="cursor:hand;">
<%		
		end If
		if Mp_Lec_Ary(3,Mp_Lec_Cnt)<>"" Then
%>
	<img src="<%=img_main%>/icon/icon_go.gif" hspace="1" align="absmiddle" onclick="alert('���� ������ �÷��̽ð��� ����Ǿ����ϴ�.');" style="cursor:hand;">
<%
		Else
			response.write "&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; "
		End If 
	ELSE
		If HRTM > 0 Then
			if Mp_Lec_Ary(3,Mp_Lec_Cnt)<>"" Then
%>
<a href="javascript:relay_pop('88',<%=Mp_App_No%>,<%=Mp_Cd_Chr_Cd%>,<%=Mp_Lec_Ary(16,Mp_Lec_Cnt)%>,'<%=Mp_Cd_Tec_Nm%>')" onFocus="blur()"><img src="<%=img_main%>/icon/icon_acadmode<%if Mp_Lec_Ary(25,Mp_Lec_Cnt) <> 0 then response.write "i" end if%>.gif" hspace="1" align="absmiddle"></a>
<%
			End If 
			if Mp_Lec_Ary(2,Mp_Lec_Cnt)<>"" Then
%>
	<a href="javascript:relay_pop('10',<%=Mp_App_No%>,<%=Mp_Cd_Chr_Cd%>,<%=Mp_Lec_Ary(16,Mp_Lec_Cnt)%>,'<%=Mp_Cd_Tec_Nm%>')" onFocus="blur()"><img src="<%=img_main%>/icon/icon_il.gif" hspace="1" align="absmiddle"></a>
<%			
			End If
			if Mp_Lec_Ary(3,Mp_Lec_Cnt)<>"" Then
%>
<a href="javascript:relay_pop('20',<%=Mp_App_No%>,<%=Mp_Cd_Chr_Cd%>,<%=Mp_Lec_Ary(16,Mp_Lec_Cnt)%>,'<%=Mp_Cd_Tec_Nm%>')" onFocus="blur()"><img src="<%=img_main%>/icon/icon_go<%if Mp_Lec_Ary(25,Mp_Lec_Cnt) <> 0 then response.write "i" end if%>.gif" hspace="1" align="absmiddle"></a>
<%
			Else
				response.write "&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; "
			End If 
		Else
			if Mp_Lec_Ary(3,Mp_Lec_Cnt)<>"" Then
%><a href="javascript:player_mega('88',<%=Mp_App_No%>,<%=Mp_Cd_Chr_Cd%>,<%=Mp_Lec_Ary(16,Mp_Lec_Cnt)%>,'<%=Mp_Cd_Tec_Nm%>')" onFocus="blur()"><img src="<%=img_main%>/icon/icon_acadmode<%if Mp_Lec_Ary(25,Mp_Lec_Cnt) <> 0 then response.write "i" end if%>.gif" hspace="1" align="absmiddle"></a>
<%
			End If 
			if Mp_Lec_Ary(2,Mp_Lec_Cnt)<>"" Then
%>
	<a href="javascript:player_mega('10',<%=Mp_App_No%>,<%=Mp_Cd_Chr_Cd%>,<%=Mp_Lec_Ary(16,Mp_Lec_Cnt)%>,'<%=Mp_Cd_Tec_Nm%>')" onFocus="blur()"><img src="<%=img_main%>/icon/icon_il.gif"hspace="1" align="absmiddle"></a>
<%
			End if
			if Mp_Lec_Ary(3,Mp_Lec_Cnt)<>"" Then
%><a href="javascript:player_mega('20',<%=Mp_App_No%>,<%=Mp_Cd_Chr_Cd%>,<%=Mp_Lec_Ary(16,Mp_Lec_Cnt)%>,'<%=Mp_Cd_Tec_Nm%>')" onFocus="blur()"><img src="<%=img_main%>/icon/icon_go<%if Mp_Lec_Ary(25,Mp_Lec_Cnt) <> 0 then response.write "i" end if%>.gif" hspace="1" align="absmiddle"></a>
<%
			Else
				response.write "&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; "
			End If 
		End if
	END IF
END SUB
%>

