<%
Dim email_header0, email_header1, email_footer1, email_footer2
email_header1 = "<html>" & vbCrLf & _
			"<head>" & vbCrLf & _
			"<title>:::::::::: �ް�CST : ���������� ::::::::::</title>" & vbCrLf & _
			"</head>" & vbCrLf & _
			"<body>" & vbCrLf & _
			"<table width='700' border='0' cellspacing='0' cellpadding='0'>" & vbCrLf & _
				"<!--ž S-->" & vbCrLf & _
				"<tr>" & vbCrLf & _
					"<td><img src=""http://img.megacst.com/etc/150530_1/mail_top.gif"" alt=""�ް�CST"" /></td>" & vbCrLf & _
				"</tr>" & vbCrLf & _
				"<!--//ž E-->" & vbCrLf
email_footer1 = "<!--����Ǫ�� S-->" & vbCrLf & _
			"<tr>" & vbCrLf & _
				"<td bgcolor=""ebebeb"" background=""http://img.megacst.com/etc/150530_1/mail_footerbg1.gif""  style=""padding:30px;font-size:11px;letter-spacing:0px; text-align:left; font-family: ����, Dotum, Verdana, Sans-serif; color:#888888;"" >" & vbCrLf & _
				"�� ������ �߽� ���� ���Ϸ� ȸ�ŵ��� �ʽ��ϴ�.<br/>" & vbCrLf & _
				"�ñ��Ͻ� ���̳� ������ ������ <a href=""http://www.megacst.com/side.asp?su=/cust/cust_sub01.asp"" target=""_blank"" style='color:#666;'><span >�¶��� ������</span></a>�� �̿����ּ���.<br/><br/>" & vbCrLf & _
				"�ް�������Ƽ(��) <br/>" & vbCrLf & _
				"137-877 ����Ư���� ���ʱ� ȿ�ɷ� 321 7�� (���ʵ�, ��������)<br/>" & vbCrLf & _
				"�¶��� ������: 1644-8806 | �п� ����: 02-823-8806 <br/>" & vbCrLf & _
				"�� MEGACST CORP.All Right Reserved." & vbCrLf & _
				"</td>" & vbCrLf & _
			"</tr>" & vbCrLf & _
			"<!--//����Ǫ�� E-->" & vbCrLf & _
			"</table>" & vbCrLf & _
			"</body>" & vbCrLf & _
			"</html>" & vbCrLf
email_footer2 = "<!--����Ǫ�� ȫ�����ΰ�� S-->" & vbCrLf & _
			"<tr>" & vbCrLf & _
				"<td bgcolor=""ebebeb""  background=""http://img.megacst.com/etc/150530_1/mail_footerbg1.gif"" style=""padding:30px;font-size:11px;letter-spacing:0px; text-align:left; font-family: ����, Dotum, Verdana, Sans-serif; color:#888888;"" >" & vbCrLf & _
				"�� ������ %username%���� ������ ���� ���ſ� �����ϼ̱⿡ �߼۵� �����Դϴ�.<br/>" & vbCrLf & _
				"���� ������ ��ġ �����ôٸ� <a href=""#"" target=""_blank""><span  style='color:#666;'><u>ȸ����������</u></span></a>���� ������ �ֽñ� �ٶ��ϴ�.<br/>" & vbCrLf & _
				"�� ������ �߽� ���� ���Ϸ� ȸ�ŵ��� �ʽ��ϴ�.<br/>" & vbCrLf & _
				"�ñ��Ͻ� ���̳� ������ ������ <a href=""http://www.megacst.com/side.asp?su=/cust/cust_sub01.asp"" target=""_blank"" style='color:#666;'><span  >�¶��� ������</span></a>�� �̿����ּ���.<br/><br/>" & vbCrLf & _
				"�ް�������Ƽ(��) <br/>" & vbCrLf & _
				"137-877 ����Ư���� ���ʱ� ȿ�ɷ� 321 7�� (���ʵ�, ��������)<br/>" & vbCrLf & _
				"�¶��� ������: 1644-8806 | �п� ����: 02-823-8806 <br/>" & vbCrLf & _
				"�� MEGACST CORP.All Right Reserved." & vbCrLf & _
				"</td>" & vbCrLf & _
			"</tr>" & vbCrLf & _
			"<!--����Ǫ�� ȫ�����ΰ�� E-->" & vbCrLf & _
			"</table>" & vbCrLf & _
			"</body>" & vbCrLf & _
			"</html>" & vbCrLf

Sub sendEmail(ByVal t_from, ByVal t_to, ByVal t_title, ByVal t_content)
	'strBody = "<html><body>�׽�Ʈ �����Դϴ�.</body></html>"
	Dim objMessage, objConfig, Fields

	Set objMessage = Server.CreateObject("CDO.Message")
	Set objConfig = Server.CreateObject("CDO.Configuration")

	Set Fields = objConfig.Fields

	With Fields
	.Item("http://schemas.microsoft.com/cdo/configuration/sendusing") = 1
	.Item("http://schemas.microsoft.com/cdo/configuration/smtpserver") = "localhost"
	.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverpickupdirectory") = "C:\Inetpub\mailroot\Pickup"
	.Update
	End With

	Set objMessage.Configuration = objConfig

	objMessage.From = t_from '"�ް�CST <megacst@megacst.com>"
	objMessage.To = t_to '"dikim9@megacst.com;respite9@nate.com;respite9@gmail.com;respite@naver.com;"
	objMessage.Subject = t_title '"�׽�Ʈ �����Դϴ�." & now()
	objMessage.HtmlBody = t_content 'strBody
	objMessage.Fields.Update
	objMessage.Send

	Set objMessage = Nothing
	Set objConfiguration = Nothing
End Sub

'''' 01_�������Ϲ߼�
Sub sendmail_auth(ByVal t_to, ByVal t_msg)
	Dim tr_from, tr_title, tr_content, tstr, arMsg

	arMsg = Split(t_msg,"$$")

	tr_from = "�ް�CST <megacst@megacst.com>"
	tr_title = "[�ް�CST] " & arMsg(0) & " ���� ����Ȯ�� �����Դϴ�."

	tstr = "<!--������ S-->" & vbCrLf & _
		"<tr>" & vbCrLf & _
			"<td style=""padding:30px 30px 50px 30px; font-family: ����, Dotum, Verdana, Sans-serif; font-size:12px;"">" & vbCrLf & _
				"<!--����S-->" & vbCrLf & _
				"<table width='640' border='0' cellspacing='0' cellpadding='0' style=""border-bottom:1px solid #666;"">" & vbCrLf & _
					"<tr>" & vbCrLf & _
						"<td width=""90""><img src=""http://img.megacst.com/etc/150530_1/mail_ico01.gif""/></td>" & vbCrLf & _
						"<td width=""550"" style=""padding-left:20px; font-size:18px; font-weight:bold; color:#333;  "">" & vbCrLf & _
						"��û�Ͻ� <span style=""color:#3373d4;"">������ȣ</span>�� �˷��帳�ϴ�. " & vbCrLf & _
						"</td>" & vbCrLf & _
					"</tr>" & vbCrLf & _
					"<tr>" & vbCrLf & _
					"	<td colspan=""2"" style=""height:20px;""></td>" & vbCrLf & _
					"</tr>" & vbCrLf & _
				"</table>" & vbCrLf & _
				"<!--//���� E-->" & vbCrLf & _
				"<!--���� S-->" & vbCrLf & _
				"<table width=""640"" border=""0"" cellspacing=""0"" cellpadding=""0"">" & vbCrLf & _
					"<tbody>" & vbCrLf & _
					"<tr>" & vbCrLf & _
						"<td style=""padding:30px 0 20px 0; font-size:12px; color:#666; text-align:left; line-height:18px;"">" & vbCrLf & _
						"�Ʒ��� ������ȣ�� ������ȣ �Է�â�� �Է��� �ֽñ� �ٶ��ϴ�." & vbCrLf & _
						"</td>" & vbCrLf & _
					"</tr>" & vbCrLf & _
					"<tr>" & vbCrLf & _
						"<td bgcolor=""f5f5f5"" style=""padding:30px 0; border:1px solid #e6e6e6; font-size:18px; color:#333; text-align:center; line-height:18px;"">" & vbCrLf & _
							"<span style=""font-weight:bold;"">" & arMsg(1) & "</span>" & vbCrLf & _
						"</td>" & vbCrLf & _
					"</tr>" & vbCrLf & _
					"</tbody>" & vbCrLf & _
				"</table>" & vbCrLf & _
				"<!--//���� E-->" & vbCrLf & _
			"</td>" & vbCrLf & _
		"</tr>" & vbCrLf & _
		"<!--//������E-->" & vbCrLf

	Call sendEmail(tr_from,t_to,tr_title, email_header1 & tstr & email_footer1)
End Sub

''''02_�ӽ� ��й�ȣ
Sub sendmail_imsipw(ByVal t_to, ByVal t_msg)
	Dim tr_from, tr_title, tr_content, tstr, arMsg

	arMsg = Split(t_msg,"$$")

	tr_from = "�ް�CST <megacst@megacst.com>"
	tr_title = "[�ް�CST] " & arMsg(0) & " ���� �ӽú�й�ȣ Ȯ�� �����Դϴ�."
	tstr = "    <!--������ S-->" & vbCrLf & _
		"<tr>" & vbCrLf & _
		"	<td style=""padding:30px 30px 50px 30px; font-family: ����, Dotum, Verdana, Sans-serif; font-size:12px;"">" & vbCrLf & _
		"		<!--����S-->" & vbCrLf & _
		"		<table width='640' border='0' cellspacing='0' cellpadding='0' style=""border-bottom:1px solid #666;"">" & vbCrLf & _
		"			<tr>" & vbCrLf & _
		"				<td width=""90""><img src=""http://img.megacst.com/etc/150530_1/mail_ico02.gif""/></td>" & vbCrLf & _
		"				<td width=""550"" style=""padding-left:20px; font-size:18px; font-weight:bold;  color:#333; "">" & vbCrLf & _
		"				��û�Ͻ� <span style=""color:#3373d4;"">�ӽ� ��й�ȣ</span>�� �˷��帳�ϴ�. " & vbCrLf & _
		"				</td>" & vbCrLf & _
		"			</tr>" & vbCrLf & _
					"<tr>" & vbCrLf & _
					"	<td colspan=""2"" style=""height:20px;""></td>" & vbCrLf & _
					"</tr>" & vbCrLf & _
		"		</table>" & vbCrLf & _
		"		<!--//���� E-->" & vbCrLf & _
		"		<!--���� S-->" & vbCrLf & _
		"		<table width=""640"" border=""0"" cellspacing=""0"" cellpadding=""0"">  " & vbCrLf & _
		"			  <tbody>" & vbCrLf & _
		"			  <tr>  " & vbCrLf & _
		"				  <td style=""padding:30px 0 20px 0; font-size:12px; color:#666; text-align:left; line-height:18px;"">" & vbCrLf & _
		"				  <span style=""color:#3373d4;"">" & arMsg(0) & "</span>���� �ӽ� ��й�ȣ�Դϴ�." & vbCrLf & _
		"				  </td>  " & vbCrLf & _
		"			  </tr>  " & vbCrLf & _
		"			  <tr>  " & vbCrLf & _
		"				  <td bgcolor=""f5f5f5"" style=""padding:30px 0; border:1px solid #e6e6e6; font-size:18px; color:#333; text-align:center; line-height:18px;"">" & vbCrLf & _
		"					  <span style=""font-weight:bold;"">" & arMsg(1) & "</span>" & vbCrLf & _
		"				  </td>  " & vbCrLf & _
		"			  </tr>   " & vbCrLf & _
		"			  </tbody>" & vbCrLf & _
		"		 </table>" & vbCrLf & _
		"		<!--//���� E-->" & vbCrLf & _
		"	</td>" & vbCrLf & _
		"</tr>" & vbCrLf & _
		"<!--//������E-->" & vbCrLf

	Call sendEmail(tr_from,t_to,tr_title, email_header1 & tstr & email_footer1)

End Sub

''''03_ȸ�������� ����
Sub sendmail_memjoin(ByVal t_to, ByVal t_msg)
	Dim tr_from, tr_title, tr_content, tstr, arMsg

	arMsg = Split(t_msg,"$$")

	tr_from = "�ް�CST <megacst@megacst.com>"
	tr_title = "[�ް�CST] " & arMsg(0) & " ���� ȸ�������� �����մϴ�."

	tstr = "<!--������ S-->" & vbCrLf & _
		"<tr>" & vbCrLf & _
		"	<td style=""padding:30px 30px 50px 30px; font-family: ����, Dotum, Verdana, Sans-serif; font-size:12px;"">" & vbCrLf & _
		"		<!--����S-->" & vbCrLf & _
		"		<table width='640' border='0' cellspacing='0' cellpadding='0' style=""border-bottom:1px solid #666;"">" & vbCrLf & _
		"			<tr>" & vbCrLf & _
		"				<td width=""90""><img src=""http://img.megacst.com/etc/150530_1/mail_ico03.gif""/></td>" & vbCrLf & _
		"				<td width=""550"" style=""padding-left:20px; font-size:18px; font-weight:bold; color:#333;"">" & vbCrLf & _
		"					������������� <span style=""color:#3373d4;"">" & arMsg(0) & "</span>��, �ް�CST ȸ�������� �����մϴ�!" & vbCrLf & _
		"				</td>" & vbCrLf & _
		"			</tr>" & vbCrLf & _
					"<tr>" & vbCrLf & _
					"	<td colspan=""2"" style=""height:20px;""></td>" & vbCrLf & _
					"</tr>" & vbCrLf & _
		"		</table>" & vbCrLf & _
		"		<!--//���� E-->" & vbCrLf & _
		"		<!--���� S-->" & vbCrLf & _
		"		<table width=""640"" border=""0"" cellspacing=""0"" cellpadding=""0"">  " & vbCrLf & _
		"			  <tbody>" & vbCrLf & _
		"			  <tr>  " & vbCrLf & _
		"				  <td style=""padding:30px 0 20px 0; font-size:12px; color:#666; text-align:left; line-height:18px;"">" & vbCrLf & _
		"					  <span style=""color:#3373d4;"">" & arMsg(0) & "</span>���� ����� ����� ���� �� �ֵ��� �ް� CST�� �հ��� ���� ���� ��Ʈ�ʰ� �ǰڽ��ϴ�." & vbCrLf & _
		"				  </td>  " & vbCrLf & _
		"			  </tr>  " & vbCrLf & _
		"			  <tr>  " & vbCrLf & _
		"				  <td bgcolor=""f5f5f5"" style=""padding:30px 0; border:1px solid #e6e6e6; font-size:18px; color:#333; text-align:center; line-height:18px;"">" & vbCrLf & _
		"					  <span style=""font-weight:bold;"">" & arMsg(1) & "</span>" & vbCrLf & _
		"				  </td>  " & vbCrLf & _
		"			  </tr>" & vbCrLf & _
		"			  <tr>" & vbCrLf & _
		"				  <td style=""padding:20px 0 20px 0; font-size:12px; color:#666; text-align:left; line-height:18px;"">" & vbCrLf & _
		"					  <span style=""color:#3373d4;"">" & Left(now(),10) & "</span> ���ԿϷ� �Ǿ����ϴ�. ȸ�������� �����Ͻ÷��� <span><u><a href=""http://www.megacst.com/mypage/Private/Account_Chk.asp"" target=""_blank"" style=""color:#3373d4; text-decoration:underline;"" >����</a></u></span>�� Ŭ���ϼ���." & vbCrLf & _
		"				  </td>" & vbCrLf & _
		"			  </tr> " & vbCrLf & _
		"			  <tr>" & vbCrLf & _
		"				  <td><img src=""http://img.megacst.com/etc/150530_1/email_bnr01.gif"" border=""0"" usemap=""#Map_mail1"">" & vbCrLf & _
		"				  <map name=""Map_mail1"">" & vbCrLf & _
		"					<area shape=""rect"" coords=""2,3,316,132"" href=""http://www.megacst.com/cust/cust_guide.asp"" target=""_blank"" alt=""�ʺ��ڰ��̵�"">" & vbCrLf & _
		"					<area shape=""rect"" coords=""326,2,639,131"" href=""http://www.megacst.com/"" target=""_blank"" alt=""Ȩ����������"">" & vbCrLf & _
		"				  </map>" & vbCrLf & _
		"				</td>" & vbCrLf & _
		"			  </tr>  " & vbCrLf & _
		"			  </tbody>" & vbCrLf & _
		"		 </table>" & vbCrLf & _
		"		<!--//���� E-->" & vbCrLf & _
		"	</td>" & vbCrLf & _
		"</tr>" & vbCrLf & _
		"<!--//������E-->" & vbCrLf

	Call sendEmail(tr_from,t_to,tr_title, email_header1 & tstr & email_footer1)

End Sub

''''04_�����Ϸ�
Sub sendmail_pay(ByVal t_to, ByVal t_msg)
	Dim tr_from, tr_title, tr_content, tstr, arMsg

	arMsg = Split(t_msg,"$$") '0:�̸� 1:�����ڵ� 2:���̵� 3:pay_method

	tr_from = "�ް�CST <megacst@megacst.com>"
	tr_title = "[�ް�CST] " & arMsg(0) & " ���� ������ �Ϸ� �Ǿ����ϴ�."

	CALL DBOPEN
		CALL MP_FREEPASS_YN (arMsg(2))
		CALL MP_ACCT_ORD_DTL (arMsg(1), arMsg(3), arMsg(2))

		If Aod_Book_Cnt > 0 Then
			CALL MP_DELIV_DTL (arMsg(1))
			CALL MP_ACCT_DELIV_PRC (arMsg(1))
		End If
		CALL MP_ACCT_DTL (arMsg(1))
	CALL DBOUT


	tstr = "<!--������ S-->"  & vbCrLf & _
		"<tr>"  & vbCrLf & _
		"	<td style=""padding:30px 30px 50px 30px; font-family: ����, Dotum, Verdana, Sans-serif; font-size:12px;"">"  & vbCrLf & _
		"		<!--����S-->"  & vbCrLf & _
		"		<table width='640' border='0' cellspacing='0' cellpadding='0' style=""border-bottom:1px solid #666;"">"  & vbCrLf & _
		"			<tr>"  & vbCrLf & _
		"				<td width=""90""><img src=""http://img.megacst.com/etc/150530_1/mail_ico04.gif""/></td>"  & vbCrLf & _
		"				<td width=""550"" style=""padding-left:20px; font-size:18px; font-weight:bold; color:#333;"">"  & vbCrLf & _
		"					<span style=""color:#3373d4;"">����</span>�� �Ϸ�Ǿ����ϴ�."  & vbCrLf & _
		"				</td>"  & vbCrLf & _
		"			</tr>"  & vbCrLf & _
					"<tr>" & vbCrLf & _
					"	<td colspan=""2"" style=""height:20px;""></td>" & vbCrLf & _
					"</tr>" & vbCrLf & _
		"		</table>"  & vbCrLf & _
		"		<!--//���� E-->"  & vbCrLf & _
		"		<!--���� S-->"  & vbCrLf & _
		"		<table width=""640"" border=""0"" cellspacing=""0"" cellpadding=""0"">  "  & vbCrLf & _
		"			<tr>  "  & vbCrLf & _
		"				<td style=""padding:30px 0 20px 0; font-size:12px; color:#666; text-align:left; line-height:18px;"">"  & vbCrLf & _
		"					<span style=""color:#3373d4;"">" & arMsg(0) & "</span>��, �ް�CST���� " & Left(now(),10) & " �����Ͻ� �����Դϴ�."  & vbCrLf & _
		"				</td>  "  & vbCrLf & _
		"			</tr>"  & vbCrLf & _
		"			<tr></tr>"  & vbCrLf & _
		"		</table>"  & vbCrLf & _
		"		<!--���������� ����Ʈ ���� -->"  & vbCrLf & _
		"		<table width=""100%"" border=""0"" cellpadding=""0"" cellspacing=""0"">"  & vbCrLf & _
		"			<tbody>"  & vbCrLf & _
		"				<tr>"  & vbCrLf & _
		"					<td height=""20"" style=""padding:0px 10px 10px 0; font-size:12px; color:#333; text-align:left; line-height:18px;""><strong>���� ����</strong></td>"  & vbCrLf & _
		"				</tr>"  & vbCrLf & _
		"			</tbody>"  & vbCrLf & _
		"		</table>"  & vbCrLf & _
		"		<table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"  & vbCrLf & _
		"			<tbody>"  & vbCrLf & _
		"				<tr><td height=""1"" colspan=""5"" bgcolor=""dddddd""></td></tr>"  & vbCrLf & _
		"				<tr style=""font-size:12px; color:#7e7e7e; line-height:18px;"">"  & vbCrLf & _
		"					<td align=""center"" width=""320"" height=""29"" bgcolor=""f7f7f7""><strong>��ǰ��</strong></td>"  & vbCrLf & _
		"					<td align=""center"" width="""" bgcolor=""f7f7f7""><strong>����</strong></td>"  & vbCrLf & _
		"					<td align=""center"" width=""50"" bgcolor=""f7f7f7""><strong>����</strong></td>"  & vbCrLf & _
		"					<td align=""center"" width="""" bgcolor=""f7f7f7""><strong>�ֹ�����</strong></td>"  & vbCrLf & _
		"					<td align=""center"" width="""" bgcolor=""f7f7f7""><strong>�հ�</strong></td>"  & vbCrLf & _
		"				</tr>"  & vbCrLf

	Dim TotPrc, TotQty, sql, dtlTrigger, rsMoney, Mp_Ad_Max, tcol2, tcol3
	TotPrc = 0
	TotQty = 0

	If IsArray(Mp_Ad_Ary) Then
		Mp_Ad_Max = UBound(Mp_Ad_Ary, 2)
		For Mp_Ad_Cnt = 0 to Mp_Ad_Max
			TotPrc = TotPrc + Mp_Ad_Ary(4,Mp_Ad_Cnt)
			TotQty = TotQty + Mp_Ad_Ary(3,Mp_Ad_Cnt)

			sql = "select count(*) from ms_std_app with(nolock) join ms_app_dtl with(nolock) on sa_app_no = ad_app_no where sa_pay_no = " & arMsg(1) & " and ad_chr_cd in (1,2,3)"
			Set rsMoney = DBExec(sql,"study")

			dtlTrigger = False

			If rsMoney(0) > 0 Then
				dtlTrigger = True
			End If
			rsMoney.close

			If dtlTrigger Then
				tcol2 = "�ް��Ӵ�����"
			Else
				tcol2 = Mp_Ad_Ary(1,Mp_Ad_Cnt)
			End If

			If dtlTrigger Then
				tcol3 = ""
			Else
				If Mp_Ad_Ary(2,Mp_Ad_Cnt) = "C" Then
					tcol3 = "���"
				else
					tcol3 = Mp_Ad_Ary(2,Mp_Ad_Cnt)
				End if
			End If

			tstr = tstr & "<tr><td colspan=""5"" style=""height:1px; background:#dddddd;"" ></td></tr>" & vbCrLf & _
				"		<tr style=""font-size:12px; color:#7e7e7e; line-height:18px; letter-spacing:-1px;"">" & vbCrLf & _
				"			<td align=""left"" style=""padding:5px;"">" & Mp_Ad_Ary(0,Mp_Ad_Cnt) & "</td>" & vbCrLf & _
				"			<td align=""center"">" & tcol2 & "</td>" & vbCrLf & _
				"			<td align=""center"">" & tcol3 & "</td>" & vbCrLf & _
				"			<td align=""center"">" & Mp_Ad_Ary(3,Mp_Ad_Cnt) & "</td>" & vbCrLf & _
				"			<td align=""center""><span>" & formatnumber(Mp_Ad_Ary(4,Mp_Ad_Cnt),0) & "��</span></td>" & vbCrLf & _
				"		</tr>" & vbCrLf
		Next
	End If

	tstr = tstr & "<tr><td height=""1"" colspan=""5"" bgcolor=""dddddd""></td></tr>"

	'��ۺ� ó��
	if Aod_Book_Cnt > 0 And Aod_Cpn_No <> "53" Then
		DlvPrc = 0
		DlvQty = 0

		If IsArray(Mp_Adp_Ary) Then

			Mp_Adp_Max = UBound(Mp_Adp_Ary, 2)

			For Mp_Adp_Cnt = 0 to Mp_Adp_Max

				DlvPrc = DlvPrc + Mp_Adp_Ary(2,Mp_Adp_Cnt)
				DlvQty = DlvQty + Mp_Adp_Ary(1,Mp_Adp_Cnt)
				tstr = tstr & "2015-07-28<tr style=""font-size:12px; color:#7e7e7e; line-height:18px; letter-spacing:-1px;"">" & vbCrLf & _
					"			<td align=""left"" style=""padding:5px;"">��ۺ�</td>" & vbCrLf & _
					"			<td align=""center"">" & tcol2 & "</td>" & vbCrLf & _
					"			<td align=""center"">" & Mp_Adp_Ary(0,Mp_Adp_Cnt) & "</td>" & vbCrLf & _
					"			<td align=""center"">" & Mp_Adp_Ary(1,Mp_Adp_Cnt) & "</td>" & vbCrLf & _
					"			<td align=""center""><span>" & formatnumber(BD_BOOK_AMT,0) & "��</span></td>" & vbCrLf & _
					"		</tr>" & vbCrLf & _
					"		<tr><td height=""1"" colspan=""5"" bgcolor=""dddddd""></td></tr> " & vbCrLf

			Next
		End If
	End If

		tstr = tstr & "<tr>" & vbCrLf & _
		"					<td colspan=""4"" align=""center"" style=""padding:5px; font-size:12px; color:#7e7e7e; text-align:center; line-height:18px;""><strong>�հ�</strong></td>" & vbCrLf & _
		"					<td align=""center"" style=""padding:5px; font-size:12px; color:#f93345; text-align:center; line-height:18px;""><strong>" & formatnumber(TotPrc+DlvPrc,0) & "��</strong></td>" & vbCrLf & _
		"				</tr>" & vbCrLf & _
		"				<tr><td height=""1"" colspan=""5"" bgcolor=""dddddd""></td></tr>" & vbCrLf & _
		"			</tbody>" & vbCrLf & _
		"		</table>" & vbCrLf

	'����/���ʽ�ĳ�� ����
	pkgstat = "����"
	extCnt	 = 0

	If Aod_Cpn_Money = 0 Then
		cpnstat = "����"

		sql = "select count(*) from ms_std_ext with (nolock) where se_pay_no = " & arMsg(1)
		Call RsExec(extRs, 0, 0, sql, "study")
		extCnt = extRs(0)

		Call RsClose(extRs)

		If extCnt = 0 Then
			sql = "select	 ( sum(cm_chr_prc) + isnull((select br_tot_amt from ms_book_req with (nolock) where br_pay_no = sa_pay_no),0) ) , " &_
			"			 ( sum(ad_prc) + isnull((select br_tot_amt from ms_book_req with (nolock) where br_pay_no = sa_pay_no),0) ) " &_
			"from ms_std_app with (nolock) join ms_app_dtl with (nolock) on sa_app_no = ad_app_no " & _
			"join ms_chr_mas with (nolock) on ad_chr_cd = cm_chr_cd " &_
			"where sa_pay_no = " & arMsg(1) & " group by sa_pay_no"
			Call RsExec(pkgRs, 0, 0, sql, "study")

			If pkgRs.eof Then
			Else
				originAmt = pkgRs(0)
				payAmt = pkgRs(1)

				Call Rsclose(pkgRs)

				If originAmt >  payAmt Then
					pkgstat = replace_money( originAmt - payAmt ) & " ��"
				End If
			End If
		Else
			Aod_Pay_Flg = "�������Ῥ��"
		End If
	Else
		cpnstat = Aod_Cpn_Money

		If Aod_Cpn_Money >= 100 Then
			cpnstat = replace_money(cpnstat) & " ��"
		Else
			cpnstat = replace_money(cpnstat) & " %"
		End If

		If Aod_Cpn_KBN = "4" Then
			cpnstat = cpnstat & " <font color=""#32cd32"">[����]</font>"
		End If

		If Aod_Cpn_FLG = "0" Then
		cpnstat = cpnstat & " <font color=""#32cd32"">[��ۺ�]</font>"
		End If
	End If

	'rw "�ٴ��ͼ� : " & pkgstat

	if cpnstat <> "����" then 
		print_str = "���� : " & cpnstat
	else
		print_str = cpnstat 
	end if

	'response.write print_str
	if nullcheck(Aod_Pay_Amt)  then
		m6 = 0
	else
		m6 = Aod_Pay_Amt
	end if

	tstr = tstr & "<!--//���������� ����Ʈ ���� -->  " & vbCrLf & _
		"		<!--���� ���� ����-->  " & vbCrLf & _
		"		<table width=""100%"" border=""0"" cellpadding=""0"" cellspacing=""0"">" & vbCrLf & _
		"			<tbody>" & vbCrLf & _
		"				<tr>" & vbCrLf & _
		"					<td height=""20"" style=""padding:20px 10px 10px 0; font-size:12px; color:#333; text-align:left; line-height:18px;""><strong style=""color:#333;"">" & arMsg(0) & "���� ���� / ���ʽ�ĳ�� ����</strong></td>" & vbCrLf & _
		"				</tr>" & vbCrLf & _
		"			</tbody>" & vbCrLf & _
		"		</table>" & vbCrLf & _
		"		<table width=""100%"" border=""0"" cellpadding=""0"" cellspacing=""0"">" & vbCrLf & _
		"			<tr><td height=""1"" colspan=""3"" bgcolor=""dddddd""></td></tr>   " & vbCrLf & _
		"			<tr >" & vbCrLf & _
		"			  <td width=""300"" align=""left"" bgcolor=""f7f7f7"" style=""padding:5px; font-size:12px; color:#7e7e7e; line-height:18px;height:29px;""><strong>���� �� ���γ��� </strong></td>" & vbCrLf & _
		"			  <td width=""100"" align=""center"" bgcolor=""f7f7f7"" style=""padding:5px;font-size:12px; color:#7e7e7e;  line-height:18px;""><strong>�հ�</strong></td>" & vbCrLf & _
		"			  <td align=""center"" bgcolor=""f7f7f7"" style=""padding:5px;border-left:1px solid #dddddd; font-size:12px; color:#7e7e7e; line-height:18px;"">�� �����ݾ�</td>" & vbCrLf & _
		"			</tr>" & vbCrLf & _
		"				<tr><td height=""1"" colspan=""3"" bgcolor=""dddddd""></td></tr> " & vbCrLf & _
		"			<tr>" & vbCrLf & _
		"				<td align=""left"" style=""padding:5px; font-size:12px; color:#7e7e7e; line-height:18px; letter-spacing:-1px;"">�������</td>" & vbCrLf & _
		"				<td align=""center"" style=""padding:5px; font-size:12px; color:#7e7e7e; line-height:18px; letter-spacing:-1px;"">" & print_str & "</td>" & vbCrLf & _
		"				<td align=""center"" rowspan=""7"" bgcolor=""fffddb""  style=""padding:5px;  border-left:1px solid #ddd; font-size:16px; font-weight:bold; color:#f93345"">" & formatnumber(m6,0) & "��</td>" & vbCrLf & _
		"			</tr>" & vbCrLf & _
		"			<tr><td height=""1"" colspan=""2"" bgcolor=""dddddd""></td></tr>    " & vbCrLf & _
		"			<tr>" & vbCrLf & _
		"				<td align=""left"" style=""padding:5px; font-size:12px; color:#7e7e7e; line-height:18px; letter-spacing:-1px;"">���ʽ�ĳ�����</td>" & vbCrLf & _
		"				<td align=""center"" style=""padding:5px; font-size:12px; color:#7e7e7e; line-height:18px; letter-spacing:-1px;"">" & replace_money(Aod_MD_Point) & "��</td>" & vbCrLf & _
		"			</tr>" & vbCrLf & _
		"			<tr><td height=""1"" colspan=""2"" bgcolor=""dddddd""></td></tr>   " & vbCrLf & _
		"			<tr>" & vbCrLf & _
		"			  <td height=""29"" colspan=""2"" align=""left"" bgcolor=""f7f7f7"" style=""padding:5px; font-size:12px; color:#7e7e7e; line-height:18px;""><strong>��������</strong></td>" & vbCrLf & _
		"			</tr>" & vbCrLf & _
		"			<tr><td height=""1"" colspan=""2"" bgcolor=""dddddd""></td></tr>    " & vbCrLf & _
		"			<tr>" & vbCrLf & _
		"				<td align=""left"" style=""padding:5px; font-size:12px; color:#7e7e7e; line-height:18px; letter-spacing:-1px;"">" & Aod_Method & "</td>" & vbCrLf & _
		"				<td align=""center"" style=""padding:5px; font-size:12px; color:#7e7e7e; line-height:18px; letter-spacing:-1px;"">" & formatnumber(Aod_Tot_Amt,0) & "��</td>" & vbCrLf & _
		"			</tr>" & vbCrLf & _
		"			<tr><td height=""1"" colspan=""3"" bgcolor=""dddddd""></td></tr>" & vbCrLf & _
		"		</table>  " & vbCrLf & _
		"	   <!-- ���� ���� ��-- -->  " & vbCrLf

	'Response.write Dd_Rec_Nm & "$$" & Aod_Book_Cnt
	if Dd_Rec_Nm <> "" and Aod_Book_Cnt > 0 then
		tstr = tstr & "<!--������� ����-->  " & vbCrLf & _
			"		<table width=""100%"" border=""0"" cellpadding=""0"" cellspacing=""0"">" & vbCrLf & _
			"			<tbody>" & vbCrLf & _
			"				<tr>" & vbCrLf & _
			"					<td height=""20"" style=""padding:20px 10px 10px 0; font-size:12px; color:#333; text-align:left; line-height:18px;""><strong style=""color:#333;"">�������</strong></td>" & vbCrLf & _
			"				</tr>" & vbCrLf & _
			"			</tbody>" & vbCrLf & _
			"		</table>" & vbCrLf & _
			"		<table width=""100%"" border=""0"" cellpadding=""0"" cellspacing=""0"">" & vbCrLf & _
			"			<tr><td height=""1"" colspan=""2"" bgcolor=""dddddd""></td></tr>" & vbCrLf & _
			"			<tr>" & vbCrLf & _
			"				<td width=""120"" align=""left"" height=""29"" bgcolor=""f7f7f7"" style=""padding:5px; font-size:12px; color:#7e7e7e; line-height:18px;""><strong>�޴»��</strong></td>" & vbCrLf & _
			"				<td align=""left"" style=""padding:5px; font-size:12px; color:#7e7e7e; line-height:18px; letter-spacing:-1px;"">" & Dd_Rec_Nm & "</td>" & vbCrLf & _
			"			</tr>" & vbCrLf & _
			"			<tr><td height=""1"" colspan=""2"" bgcolor=""dddddd""></td></tr> " & vbCrLf & _
			"			<tr>" & vbCrLf & _
			"				<td align=""left"" height=""29"" bgcolor=""f7f7f7"" style=""padding:5px; font-size:12px; color:#7e7e7e; line-height:18px;""><strong>��ȭ��ȣ</strong></td>" & vbCrLf & _
			"				<td align=""left"" style=""padding:5px; font-size:12px; color:#7e7e7e; line-height:18px; letter-spacing:-1px;"">" & Dd_Tel_No & "</td>" & vbCrLf & _
			"			</tr>" & vbCrLf & _
			"			<tr><td height=""1"" colspan=""2"" bgcolor=""dddddd""></td></tr>" & vbCrLf & _
			"			<tr>" & vbCrLf & _
			"				<td align=""left"" height=""29"" bgcolor=""f7f7f7"" style=""padding:5px; font-size:12px; color:#7e7e7e; line-height:18px;""><strong>�޴��� ��ȣ</strong></td>" & vbCrLf & _
			"				<td align=""left"" style=""padding:5px; font-size:12px; color:#7e7e7e; line-height:18px; letter-spacing:-1px;"">" & Dd_Hp_No & "</td>" & vbCrLf & _
			"			</tr>" & vbCrLf & _
			"			<tr><td height=""1"" colspan=""2"" bgcolor=""dddddd""></td></tr>" & vbCrLf & _
			"			<tr>" & vbCrLf & _
			"				<td align=""left"" height=""29"" bgcolor=""f7f7f7"" style=""padding:5px; font-size:12px; color:#7e7e7e; line-height:18px;""><strong>����� �ּ�</strong></td>" & vbCrLf & _
			"				<td align=""left"" style=""padding:5px; font-size:12px; color:#7e7e7e; line-height:18px; letter-spacing:-1px;"">(" & Dd_Post_No & ") " & Dd_Addr1 & " " & Dd_Addr2 & "</td>" & vbCrLf & _
			"			</tr>" & vbCrLf & _
			"			<tr><td height=""1"" colspan=""2"" bgcolor=""dddddd""></td></tr>" & vbCrLf & _
			"			<tr>" & vbCrLf & _
			"				<td align=""left"" height=""29"" bgcolor=""f7f7f7"" style=""padding:5px; font-size:12px; color:#7e7e7e; line-height:18px;""><strong>��� ���ǻ���</strong></td>" & vbCrLf & _
			"				<td align=""left"" style=""padding:5px; font-size:12px; color:#7e7e7e; line-height:18px; letter-spacing:-1px;"">" & Re_sqlFilter(Dd_Memo) & "</td>" & vbCrLf & _
			"			</tr>" & vbCrLf & _
			"			<tr><td height=""1"" colspan=""2"" bgcolor=""dddddd""></td></tr>" & vbCrLf & _
			"		</table>  " & vbCrLf & _
			"		<!--//<!--������� ��-- -->" & vbCrLf
	end If
	
	tstr = tstr & "<table width=""100%"" border=""0"" cellpadding=""0"" cellspacing=""0"">" & vbCrLf & _
		"		<tr>" & vbCrLf & _
		"			<td style=""padding:10px 0 20px 0; font-size:11px; color:#888; text-align:left; line-height:18px;"">" & vbCrLf & _
		"			* �������Ա� ���� ��ȣ ��ȸ�� <span><u><a href=""http://www.megacst.com/mypage/payment/my_acct.asp"" target=""_blank""  style=""color:#3373d4"">[��ٱ���/�������� > ��������]</a></u></span>���� Ȯ���Ͻ� �� �ֽ��ϴ�.<br/>" & vbCrLf & _
		"			* ���� ����� ���Ե� ���<span><u><a href=""http://www.megacst.com/side.asp?su=/mypage/deliv/my_deliv_lst.asp"" target=""_blank""  style=""color:#3373d4"">[��������ȸ]</a></u></span>���� Ȯ���Ͻ� �� �ֽ��ϴ�." & vbCrLf & _
		"		</td>" & vbCrLf & _
		"		<td align=""right""><a href=""http://www.megacst.com/mypage/payment/my_acct_dtl.asp?pay_method=" & arMsg(3) & "&pay_no=" & arMsg(1) & """ target=""_blank""><img src=""http://img.megacst.com/etc/150530_1/btn_payinfo.gif"" alt=""���������� ��ȸ""></a></td>" & vbCrLf & _
		"		</tr>" & vbCrLf & _
		"		</table>" & vbCrLf & _
		"		<!--//���� E-->" & vbCrLf & _
		"	</td>" & vbCrLf & _
		"</tr>" & vbCrLf & _
		"<!--//������E-->" & vbCrLf
	'Response.write tstr
	Call sendEmail(tr_from,t_to,tr_title, email_header1 & tstr & email_footer1)
End Sub

Sub sendmail_cust(ByVal t_to, ByVal t_msg)
	Dim tr_from, tr_title, tr_content, tstr, arMsg

	arMsg = Split(t_msg,"$$") '0:�Խù��ڵ�

	vSql = "select mm_id,mm_mem_nm, bos_re_email ,convert(varchar(10),bos_write_date,120) bos_wirte_date,bos_subject , bos_re_hp_yn , bos_re_send_yn,bos_content,bos_fn " & _
			"from ms_mem_mas with(nolock) " & _
			"join ms_mem_dtl with(nolock) on mm_id=md_mem_id " & _
			"join MS_BRD_ON_sl with(nolock) on bos_id = mm_id " & _
			"where  bos_idx= " & arMsg(0) & ""
	call RSExec(rs_sms, 0, 3, vSql, "study")
	mem_id   =  rs_sms(0)
	mem_nm   =  rs_sms(1)
	email    =  trim(rs_sms(2))
	write_dt =  rs_sms(3)
	subject  =   trim(replace(rs_sms(4),"&",""))
	hp_send_yn = rs_sms(5)
	email_send_yn = rs_sms(6)
	bos_content = rs_sms(7)
	bos_fn = rs_sms(8)
	Call RSClose(rs_sms)

	vSql = "select bos_content " & _
			"from MS_BRD_ON_sl with(nolock) " & _
			"where bos_fn= " & bos_fn & " and bos_rn = 1"
	call RSExec(rs_sms, 0, 3, vSql, "study")
	bos_content2 = rs_sms(0)
	Call RSClose(rs_sms)

	tr_from = "�ް�CST <megacst@megacst.com>"
	tr_title = "[�ް�CST] " & mem_nm & " ��, �����Ͻ� ���뿡 �亯�� ��ϵǾ����ϴ�."

	tstr = "<!--������ S-->"  & vbCrLf & _
		"<tr>" & vbCrLf & _
		"	<td style=""padding:30px 30px 50px 30px; font-family: ����, Dotum, Verdana, Sans-serif; font-size:12px;"">" & vbCrLf & _
		"		<!--����S-->" & vbCrLf & _
		"		<table width='640' border='0' cellspacing='0' cellpadding='0' style=""border-bottom:1px solid #666;"">" & vbCrLf & _
		"			<tr>" & vbCrLf & _
		"				<td width=""90""><img src=""http://img.megacst.com/etc/150530_1/mail_ico05.gif""/></td>" & vbCrLf & _
		"				<td width=""550"" style=""padding-left:20px; font-size:18px; font-weight:bold; color:#333;"">" & vbCrLf & _
		"					�����Ͻ� �ۿ� <span style=""color:#3373d4;"">�亯�� ���</span>�Ǿ����ϴ�." & vbCrLf & _
		"				</td>" & vbCrLf & _
		"			</tr>" & vbCrLf & _
					"<tr>" & vbCrLf & _
					"	<td colspan=""2"" style=""height:20px;""></td>" & vbCrLf & _
					"</tr>" & vbCrLf & _
		"		</table>" & vbCrLf & _
		"		<!--//���� E-->" & vbCrLf & _
		"		<!--���� S-->" & vbCrLf & _
		"		<table width=""640"" border=""0"" cellspacing=""0"" cellpadding=""0"">  " & vbCrLf & _
		"			  <tbody>" & vbCrLf & _
		"			  <tr>  " & vbCrLf & _
		"				  <td style=""padding:30px 0 20px 0; font-size:12px; color:#666; text-align:left; line-height:18px;"">" & vbCrLf & _
		"					  <span style=""color:#3373d4;"">" & mem_nm & "</span>�� �ް�CST�� " & write_dt & " �����Ͻ� �ۿ� �亯�� ��ϵǾ����ϴ�." & vbCrLf & _
		"				  </td>  " & vbCrLf & _
		"			  </tr>  " & vbCrLf & _
		"			  <tr>  " & vbCrLf & _
		"				  <td bgcolor=""f5f5f5"" style=""padding:15px; border-top:1px solid #e6e6e6; border-bottom:1px solid #e6e6e6;font-size:12px; color:#666; text-align:left; line-height:18px;"">" & vbCrLf & _
		"					  <p>" & vbCrLf & _
							Re_sqlFilter(bos_content2) & vbCrLf & _
		"					  </p>" & vbCrLf & _
		"				  </td>  " & vbCrLf & _
		"			  </tr>" & vbCrLf & _
		"			   <tr>  " & vbCrLf & _
		"					<td bgcolor=""ffffff"" style=""padding:15px; border-top:1px solid #e6e6e6; border-bottom:1px solid #e6e6e6;font-size:12px; color:#666; text-align:left; line-height:18px;"">" & vbCrLf & _
		"						<p><strong>���ǳ���</strong><br/>" & vbCrLf & _
								Re_sqlFilter(bos_content) & vbCrLf & _
		"					  </p>" & vbCrLf & _
		"					</td>  " & vbCrLf & _
		"			  </tr>" & vbCrLf & _
		"			  <tr>" & vbCrLf & _
		"				  <td style=""padding:10px 0 20px 0; font-size:11px; color:#666; text-align:left; line-height:18px;"">" & vbCrLf & _
		"					  * �� ��� ������ <span><u><a href=""http://www.megacst.com/cust/qna/cust_sub20.asp?menu_gubun=mypage"" target=""_blank""  style=""color:#3373d4"">��� ����</a></u></span>���� Ȯ���Ͻ� �� �ֽ��ϴ�." & vbCrLf & _
		"				  </td>" & vbCrLf & _
		"			  </tr>  " & vbCrLf & _
		"			  </tbody>" & vbCrLf & _
		"		 </table>" & vbCrLf & _
		"		<!--//���� E-->" & vbCrLf & _
		"	</td>" & vbCrLf & _
		"</tr>" & vbCrLf & _
		"<!--//������E-->" & vbCrLf
	Call sendEmail(tr_from,t_to,tr_title, email_header1 & tstr & email_footer1)
End Sub

%>
