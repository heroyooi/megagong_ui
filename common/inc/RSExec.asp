<%
'=======================================================================
'�� �� �� : �ް����͵�-common
'����� : ���� ��� ������ ����
'�� �� �� : Create RecordSet object
'			����� ������ ���� call
'			����� ������ ��ü ��ȯ call RSClose(RecordSet�̸�)
'�ۼ����� : 2004/10/09
'�� �� �� : �迵��
'-----------------------------------------------------------------------
'��������   ������  ��������
'=======================================================================
'
'=======================================================================
'Response.Expires = -1
%>
<!-- #include file="DBSrv.asp" -->
<%
'===========================================================================
'�Լ���		: DBexec
'INPUT 		: sSQL(������ Query ����), DBTarget(�� ����Ÿ���̽� ����̽� ���� ����)
'��ɼ���	: ���� ������ ���̽� ���� ��ü ����/����
'===========================================================================
Function DBexec(sSQL,DBTarget)

'response.Write ssql 

	Dim DBCon, DBTgt
	''On Error Resume Next

	If  LEN(sSQL) = 0 Then
		Response.Write "<br><font size=2>�������� 1 : ������ SQL���� �Է��ϼ���.</font><br>"
		response.end
		Exit function
	End If

	Select Case DBTarget

		Case "study"		:	DBTgt = DBConMegaMD		'���� DB
		Case "exam"		:	DBTgt = DBConMegaExam		'���� DB
		Case "rms"		:	DBTgt = DBConMegaRMS		'RMS

		Case Else
			Response.Write "<br><font size=2>�������� 2 : ������ ����Ÿ���̽��� ��Ȯ�� ���ڿ��� �Է��Ͻÿ�!</font><br>"
			Response.End
	End Select

	Set DBCon=Server.CreateObject("ADODB.Connection") 'DB�� ����
	DBCon.CursorLocation = 3	'client cursor
	DBCon.CommandTimeout = 0	'�ð� ���Ѹ��� ����
	DBCon.Open DBTgt

	if Err.number <> 0 Then
		IF TRIM(MEGA_IP) = "211.233.183" OR TRIM(MEGA_IP) = INNER_IP THEN

			response.write "<br><font size=2>�������� 3 : DB Open Error!! �����ͺ��̽��� ���������� �������� ���Ͽ����ϴ�.</font><br>"
			v_to = "bkstory@megacst.com"
			v_from = "sysadmin@megacst.com"
			v_subject = "�������� 3 : DB Open Error!! �����ͺ��̽��� ���������� �������� ���Ͽ����ϴ�."
			htmlstr = "�����߻������� : " & request.servervariables("LOCAL_ADDR") & "<br>"
			htmlstr = htmlstr & "�����߻��������� : " & request.servervariables("PATH_INFO") & "<br>"
			htmlstr = htmlstr & "�����߻������ͺ��̽������� : "& DBTarget
			call SendHtmlMail(v_to,v_from,v_subject,htmlstr)
			Response.End
			Exit Function
		Else
			Response.redirect "/ErrorProc/Error.asp"
			Response.end
		End If

	End If

	Set DBexec = DBCon.Execute(sSQL)

	If Err.number <> 0 Then
		IF TRIM(MEGA_IP) = "211.233.183" OR TRIM(MEGA_IP) = INNER_IP THEN
			err_source = replace(Err.Source,"'","''")
			err_description = replace(Err.description,"'","''")
			err_number = replace(Err.Number,"'","''")
			err_page = replace(request.servervariables("URL"),"'","''")
			sErr = "<TABLE cellSpacing=1 cellPadding=1 width='80%' border=1 align=center>"
			sErr = sErr & "<TR><TD width='12%'><FONT SIZE=2>�������� 4</FONT></TD><TD><FONT SIZE=2>��ü���̳� �÷� Ȥ�� �μ����� �߸��Ǿ����ϴ�.</FONT></TD></TR>"
			sErr = sErr & "<TR><TD ><FONT SIZE=2>������ü��</FONT></TD><TD><FONT SIZE=2>"&Err.Source&"</FONT></TD></TR>"
			sErr = sErr & "<TR><TD><FONT SIZE=2>��������</FONT></TD><TD><FONT SIZE=2>"&Err.description&"</FONT></TD></TR>"
			sErr = sErr & "<TR><TD><FONT SIZE=2>������ȣ</FONT></TD><TD><FONT SIZE=2>"&Err.Number&"</FONT></TD></TR>"
			sErr = sErr & "<TR><TD><FONT SIZE=2>QUERY</FONT></TD><TD><FONT SIZE=2>"&sSQL&"</FONT></TD></TR>"
			sErr = sErr & "<TR><TD><FONT SIZE=2>����������</FONT></TD><TD><FONT SIZE=2>"&err_page&"</FONT></TD></TR>"
			sErr = sErr & "</TABLE>"
			Response.Write sErr

			call DBclose(DBcon)

			Set DBCon=Server.CreateObject("ADODB.Connection") 'DB�� ����
			DBCon.CursorLocation = 3	'client cursor
			DBCon.Open DBConManager
			SQL = "INSERT ERROR_WEB VALUES ('"&err_source&"','"&err_description&"','"&err_number&"','"&sSQL&"',GETDATE())"
			DBCon.Execute(SQL)
			call DBclose(DBcon)

			Response.End
			Exit Function
		Else
			Response.redirect "/ErrorProc/Error.asp"
			Response.end
		End If
	End If

End function

'===========================================================================
'�Լ���		: DBClose
'INPUT 		: DBCon
'��ɼ���	: ���� ������ ���̽� ���� ��ü �Ҹ�
'===========================================================================
Function DBClose(DBCon)
	If IsObject(DBCon) = True Then
		DBCon.Close
		Set DBCon = Nothing
	end if
End Function

'===========================================================================
'�Լ���		: RSexec
'INPUT 		: rsName(RecordSet��ü������Instance �̸�),pSize(PageSize ����)
'		  cType : CursorType ����
'			0 : AdOpenForwardOnly(MoveNext�� ����)
'			1 : AdOpenKeyset(���� ����Ÿ�� �� �� ����)
'			2 : AdOpenDynamic(��� ����� Ŀ������)
'			3 : AdOpenStatic(����Ÿ �˻��̳� ����Ʈ �����ÿ� ���)
'		  sSQL(������ Query ����),DBTarget(�� ����Ÿ���̽� ����̽� ���� ����)
'��ɼ���	: ���ڵ�� ��ü ����/����
'===========================================================================
Function RSexec(rsName,pSize,cType,sSQL,DBTarget)  
    
  ''  rw ssql 

	Dim globalDBCon
	'On Error Resume Next

	If  LEN(sSQL) = 0 Then
		Response.Write "<br><font size=2>�������� 1 : ������ SQL���� �Է��ϼ���.</font><br>"
		response.end
		Exit function
	End If

	Select Case DBTarget
		Case "study"		:	DBTgt = DBConMegaMD		'���� DB
		Case "exam"		:	DBTgt = DBConMegaExam		'���� DB
		Case "rms"		:	DBTgt = DBConMegaRMS		'RMS

		Case Else
		  Response.Write "<br><font size=2>�������� 2 : ������ ����Ÿ���̽��� ��Ȯ�� ���ڿ��� �Է��Ͻÿ�!</font><br>"
			Response.End
	End Select



	If IsObject(globalDBCon) = False Then
		Set globalDBCon = Server.CreateObject("ADODB.Connection")
		globalDBCon.CursorLocation = 3
		globalDBCon.CommandTimeout = 0	'�ð� ���Ѹ��� ����
		globalDBCon.Open DBTgt

		if Err.number <> 0 Then
			IF TRIM(MEGA_IP) = "211.233.183" OR TRIM(MEGA_IP) = INNER_IP THEN

				response.write "<br><font size=2>�������� 3 : DB Open Error!! �����ͺ��̽��� ���������� �������� ���Ͽ����ϴ�.</font><br>"
				v_to = "bkstory@megacst.com"
				v_from = "sysadmin@megacst.com"
				v_subject = "�������� 3 : DB Open Error!! �����ͺ��̽��� ���������� �������� ���Ͽ����ϴ�."
				htmlstr = "�����߻������� : " & request.servervariables("LOCAL_ADDR") & "<br>"
				htmlstr = htmlstr & "�����߻��������� : " & request.servervariables("PATH_INFO") & "<br>"
				htmlstr = htmlstr & "�����߻������ͺ��̽������� : "& DBTarget
				call SendHtmlMail(v_to,v_from,v_subject,htmlstr)
				Response.End
				Exit Function
			Else
				Response.redirect "/ErrorProc/Error.asp"
				Response.end

			End If
		End If
	End If

	Set rsName = Server.CreateObject("ADODB.RecordSet")

	If Psize <> "0" Then		'Psize�� 0���� ���õǸ� Pagesize�� ���� ����.
		RSName.PageSize = Psize
	End If


   ' rw ssql 

	globalDBCon.CursorLocation = 3
	RSName.Open sSQL, globalDBCon, Ctype

	If Err.number <> 0 Then
		IF TRIM(MEGA_IP) = "211.233.183" OR TRIM(MEGA_IP) = INNER_IP THEN

			err_source = replace(Err.Source,"'","''")
			err_description = replace(Err.description,"'","''")
			err_number = replace(Err.Number,"'","''")
			err_page = replace(request.servervariables("URL"),"'","''")
			sErr = "<TABLE cellSpacing=1 cellPadding=1 width='80%' border=1 align=center>"
			sErr = sErr & "<TR><TD width='12%'><FONT SIZE=2>�������� 4</FONT></TD><TD><FONT SIZE=2>��ü���̳� �÷� Ȥ�� �μ����� �߸��Ǿ����ϴ�.</FONT></TD></TR>"
			sErr = sErr & "<TR><TD ><FONT SIZE=2>������ü��</FONT></TD><TD><FONT SIZE=2>"&Err.Source&"</FONT></TD></TR>"
			sErr = sErr & "<TR><TD><FONT SIZE=2>��������</FONT></TD><TD><FONT SIZE=2>"&Err.description&"</FONT></TD></TR>"
			sErr = sErr & "<TR><TD><FONT SIZE=2>������ȣ</FONT></TD><TD><FONT SIZE=2>"&Err.Number&"</FONT></TD></TR>"
			sErr = sErr & "<TR><TD><FONT SIZE=2>QUERY</FONT></TD><TD><FONT SIZE=2>"&sSQL&"</FONT></TD></TR>"
			sErr = sErr & "<TR><TD><FONT SIZE=2>����������</FONT></TD><TD><FONT SIZE=2>"&err_page&"</FONT></TD></TR>"
			sErr = sErr & "<TR><TD><FONT SIZE=2>����������</FONT></TD><TD><FONT SIZE=2>"&err_page&"</FONT></TD></TR>"
			sErr = sErr & "</TABLE>"
			Response.Write sErr
			call RSclose(rsName)

			Set DBCon=Server.CreateObject("ADODB.Connection") 'DB�� ����
			DBCon.CursorLocation = 3	'client cursor
			DBCon.Open DBConManager
			SQL = "INSERT ERROR_WEB VALUES ('"&err_source&"','"&err_description&"','"&err_number&"','"&sSQL&"','"&err_page&"',GETDATE())"
			DBCon.Execute(SQL)
			call DBclose(DBcon)

			Response.End
			Exit Function
		Else
			Response.redirect "/ErrorProc/Error.asp"
			Response.end
		End If
	End If

End Function



'===========================================================================
'�Լ���		: RSClose
'INPUT 		: rsName
'��ɼ���	: ���ڵ�� ��ü �Ҹ�
'===========================================================================
Function RSClose(rsName)
	if IsObject(rsName) = True Then
		rsName.Close
		Set rsName = Nothing
	end if
	If IsObject(globalDBCon) = True Then
		globalDBCon.Close
		Set globalDBCon = Nothing
	End If
End Function

On Error Goto 0

'===========================================================================
'�Լ���		: SendHtmlMail
'INPUT 		: v_to(�޴»�� �̸���),v_from(�����»�� �̸���),v_subject(���� ����),htmlstr(���� ����)
'��ɼ���	: html �̸��� ������ �Դϴ�.
'===========================================================================
Function SendHtmlMail(v_to,v_from,v_subject,htmlstr)
	Set objCDO = Server.CreateObject("CDO.Message")
	With objCDO
		.To			= v_to
		.From		= v_from
		.Subject	= v_subject
		.HtmlBody	= htmlstr
		.Send
	End With
	Set objCDO = Nothing
End Function

'===========================================================================
'�Լ���		: SendHtmlMailAtt
'INPUT 		: v_to(�޴»�� �̸���),v_from(�����»�� �̸���),v_subject(���� ����),htmlstr(���� ����),filename(÷�� ����)
'��ɼ���	: html �̸��� ������ �Դϴ�.
'===========================================================================
Function SendHtmlMailAtt(v_to,v_from,v_subject,htmlstr,filename)
	Set objCDO = Server.CreateObject("CDO.Message")
	With objCDO
		.To				= v_to
		.From			= v_from
		.Subject		= v_subject
		.AddAttachment	= filename
		.HtmlBody		= htmlstr
		.Send
	End With
	Set objCDO = Nothing
End Function





'===========================================================================
' SELECT �Լ�
' ���޹��� ������ ���ڵ� ���� �迭�� �����Ѵ�.
' Parameter	: strSQL, arrRS(Return)
' WRITER	: ������
'===========================================================================
Function SelectSQL(strSQL, arrRS)

	''ON Error Resume Next

	dim objRS
	dim objCmd
	dim sp_OutResult
	dim objERR
	Dim Mode


	' DB Connection Open
	objCon.Open DBConMegaMD

	SET objRS	=	Server.CreateObject("ADODB.RecordSet")
	SET objCmd	=	Server.CreateObject("ADODB.Command")

	With objCmd
		.ActiveConnection = objCon
		.CommandType = 4
		.CommandText = "usp_ExecuteQuery"
		.Parameters.Refresh
		.Parameters("@strSQL").Value = strSQL
		Set objRS = .Execute
		sp_OutResult = .Parameters("@OutResult").Value

	End With

	Set objCmd = nothing

	If Err.number <> 0 Then

		IF TRIM(MEGA_IP) = "211.233.183" OR TRIM(MEGA_IP) = INNER_IP THEN
			strSQL = strSQL & vbcrlf & "����:" & err.Description & "(" & err.number & ")"
			On Error Goto 0
			Call ErrTrap("SelectSQL",  strSQL, "SILENCE")
		Else
			Response.redirect "/ErrorProc/Error.asp"
			Response.end
		End If

	End if

	IF objRS.EOF then
		SelectSql = False

	else
		arrRS = objRS.GetRows(-1)
		SelectSql = True
	end if

	objRS.close
	Set objRS = nothing

	' DB Connection Close
	objCon.Close

End Function


'===========================================================================
' ������(INSERT, UPDATE) ���� �Լ�
' lngRows�� ������� ���ڵ���� ����
' Parameter	: strSQL, lngRows(Return)
' WRITER	: ������
'===========================================================================
Function ExecuteSQL(strSQL, lngRows)

	''ON Error Resume Next

	dim objCmd
	dim sp_OutResult
	dim objERR


	lngRows = null

	' DB Connection Open
	objCon.Open DBConMegaMD

	SET objCmd=Server.CreateObject("ADODB.Command")

	With objCmd
		.ActiveConnection = objCon
		.CommandType = 4
		.CommandText = "usp_ExecuteQuery"
		.Parameters.Refresh
		.Parameters("@strSQL").Value = strSQL
		.Execute lngRows , , adExecuteNoRecords
		sp_OutResult = .Parameters("@OutResult").Value
	End With

	' DB Connection Close
	objCon.Close

	Set objCmd = nothing

	IF err.number <> 0 then
		IF TRIM(MEGA_IP) = "211.233.183" OR TRIM(MEGA_IP) = INNER_IP THEN
			strSQL = strSQL & vbcrlf & "����:" & err.Description & "(" & err.number & ")"
			On Error Goto 0
			Call ErrTrap("ExecuteSql", strSQL, "SILENCE")
			ExecuteSQL = False
		Else
			Response.redirect "/ErrorProc/Error.asp"
			Response.end
		End If
	Else
		ExecuteSql = TRUE
	End if

End Function




'===========================================================================
' INSERT ���� �Լ�
' �μ�Ʈ �� ���̵�ƼƼ ���� �����Ѵ�. (INSERT��� ���̺��� Primary Key�� IDENTITYŸ���϶� ���)
' Parameter	: strSQL, Identity(Return)
' WRITER	: ������
'===========================================================================
Public Function InsertSQL(strSQL, Identity)

	''ON Error Resume Next

	dim objCmd
	dim objERR
	Dim lngRows


	Identity = null

	' DB Connection Open
	objCon.Open DBConMegaMD

	SET objCmd=Server.CreateObject("ADODB.Command")

	With objCmd
		.ActiveConnection = objCon
		.CommandType = 4
		.CommandText = "usp_ExecuteInsert"
		.Parameters.Refresh
		.Parameters("@strSQL").Value = strSQL
		.Execute lngRows , , adExecuteNoRecords
		Identity = .Parameters("@OutIdentity").Value
	End With

	' DB Connection Close
	objCon.Close

	Set objCmd = nothing

	IF err.number <> 0 then
		IF TRIM(MEGA_IP) = "211.233.183" OR TRIM(MEGA_IP) = INNER_IP THEN
			strSQL = strSQL & vbcrlf & "����:" & err.Description & "(" & err.number & ")"
			On Error Goto 0
			Call ErrTrap("InsertSQL", strSQL, "SILENCE")
			InsertSQL = FALSE
		Else
			Response.redirect "/ErrorProc/Error.asp"
			Response.end
		End If
	Else
		InsertSQL = TRUE
	End if

End Function

Public Function InsertSQLidt(strSQL)

	''ON Error Resume Next

	dim objCmd
	dim objERR
	Dim lngRows


	Dim Identity

	' DB Connection Open
	objCon.Open DBConMegaMD

	SET objCmd=Server.CreateObject("ADODB.Command")

	With objCmd
		.ActiveConnection = objCon
		.CommandType = 4
		.CommandText = "usp_ExecuteInsert"
		.Parameters.Refresh
		.Parameters("@strSQL").Value = strSQL
		.Execute lngRows , , adExecuteNoRecords
		Identity = .Parameters("@OutIdentity").Value
	End With

	' DB Connection Close
	objCon.Close

	Set objCmd = nothing

	IF err.number <> 0 then
		IF TRIM(MEGA_IP) = "211.233.183" OR TRIM(MEGA_IP) = INNER_IP THEN
			strSQL = strSQL & vbcrlf & "����:" & err.Description & "(" & err.number & ")"
			On Error Goto 0
			Call ErrTrap("InsertSQL", strSQL, "SILENCE")
			InsertSQL = FALSE
		Else
			Response.redirect "/ErrorProc/Error.asp"
			Response.end
		End If
	Else
		InsertSQLidt = Identity
	End if

End Function




'===========================================================================
' ���� ó�� �����Լ�
' �����޼����� �����ش�
' Parameter	: Module, strSQL, Mode
' WRITER	: ������ 2008-09-17
'===========================================================================
Sub ErrTrap(Module, strSQL, Mode)

	MsgContent = "RefererPage : " & Request.ServerVariables("http_referer") & vbcrlf _
				& "�ѱ������� " & Request.ServerVariables("SCRIPT_NAME") & " ���� ���� �߻�" & vbcrlf _
				& "�Լ��� : " & Module & vbcrlf _
				& "���ǹ� : " & strSQL & vbcrlf

	Err.Clear
	Dim MsgContent
	Response.Write Replace(MsgContent, vbcrlf , "<BR>" )
	Response.End

End Sub



'===========================================================================
' SelectBox ������ ���̺��, �÷��� ������ �����Ѵ�.
' Parameter	: tb, col, vcol, nm, val, onscript
' (���̺��, �÷���, ������÷���, selec name, ���õ� value ��, ��ũ��Ʈ ����)
' WRITER	: ������ 2008-09-17
'===========================================================================
Function SelectBox(tb, col, vcol, nm, val, where, onscript)

	Dim SelBox
	If (tb = "" Or col = "" Or vcol="") Then
		Call Msg("���̺���� �������� �ʾҽ��ϴ�.", "", "")
	End IF

	Dim selSQL, selRs
	selSQL = "Select "& col &",  "& vcol &" From "& tb &" "& where
	selSQL = selSQL & " Order by ( Case When  "& col &" = '��Ÿ' Then  '�K' else  "& col &" end ) "



	If SelectSQL(selSQL, selRs) =  True Then

		SelBox = "<Select name='"& nm &"'  class='select'  "& onscript &">"& vbcrlf
		SelBox = SelBox & "<option value=''>��ü</option>"& vbcrlf

		For ss=0 To UBound(selRs,2)
			If CStr(selRs(1,ss)) = CStr(Trim(val)) Then
				Selected = "selected"
			Else
				Selected = ""
			End IF
			SelBox = SelBox & "<option value='"& selRs(1,ss) &"'  "& Selected&">"& selRs(0,ss) &"</option>"& vbcrlf
		Next

		SelBox = SelBox & "</Select>"

		SelectBox = True
		Response.write SelBox
	Else
		SelectBox = false
	End IF

End Function

'===========================================================================
' SelectBoxSub ������ ���̺��, �÷��� ������ �����Ѵ�.
' Parameter	: tb, col, vcol, nm, val, onscript
' (���̺��, �÷���, ������÷���, selec name, ���õ� value ��, ��ü �з�ǥ��, ��ũ��Ʈ ����)
' WRITER	: �̿��� 2011-10-18
'===========================================================================
Function SelectBoxSub(tb, col, vcol, nm, val, where, optionNm, onscript)

	Dim SelBox
	If (tb = "" Or col = "" Or vcol="") Then
		Call Msg("���̺���� �������� �ʾҽ��ϴ�.", "", "")
	End If
	
	If optionNm = "�г⵵ ��ü" Or optionNm = "�г⵵ ����" Then 
		Orderby	= vcol &" DESC, "
	ElseIf optionNm = "ķ�۽� ����" Then
		Orderby	= vcol &" ASC, "
	Else
		Orderby	= ""
	End If

	Dim selSQL, selRs
	selSQL = "Select "& col &",  "& vcol &" From "& tb &" "& where
	selSQL = selSQL & " Order by "& Orderby &" ( Case When  "& col &" = '��Ÿ' Then  '�K' else  "& col &" end ) "

	If SelectSQL(selSQL, selRs) =  True Then

		SelBox = "<Select name='"& nm &"'  class='select'  "& onscript &">"& vbcrlf
		SelBox = SelBox & "<option value=''>"&optionNm&"</option>"& vbcrlf

		For ss=0 To UBound(selRs,2)
			If CStr(selRs(1,ss)) = CStr(Trim(val)) Then
				Selected = "selected"
			Else
				Selected = ""
			End IF
			SelBox = SelBox & "<option value='"& selRs(1,ss) &"'  "& Selected&">"& selRs(0,ss) &"</option>"& vbcrlf
		Next

		SelBox = SelBox & "</Select>"

		SelectBoxUni = True
		Response.write SelBox
	Else
		SelectBoxUni = false
	End IF

End Function

Sub DBOPEN()
	objCon.open DBConMegaMD
End Sub

Sub DBOUT()
	objCon.close
End Sub
%><Object RUNAT="Server" PROGID="ADODB.Connection" ID="objCon" ></Object>