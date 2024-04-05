<%
'=======================================================================
'업 무 명 : 메가스터디-common
'모듈기능 : 서버 디비 연결자 설정
'파 일 명 : Create RecordSet object
'			사용할 페이지 에서 call
'			사용이 끝나면 객체 반환 call RSClose(RecordSet이름)
'작성일자 : 2004/10/09
'작 성 자 : 김영무
'-----------------------------------------------------------------------
'변경일자   변경자  변동내역
'=======================================================================
'
'=======================================================================
'Response.Expires = -1
%>
<!-- #include file="DBSrv.asp" -->
<%
'===========================================================================
'함수명		: DBexec
'INPUT 		: sSQL(실행할 Query 문장), DBTarget(각 데이타베이스 디바이스 접근 설정)
'기능설명	: 단일 데이터 베이스 연결 객체 생성/실행
'===========================================================================
Function DBexec(sSQL,DBTarget)

'response.Write ssql 

	Dim DBCon, DBTgt
	''On Error Resume Next

	If  LEN(sSQL) = 0 Then
		Response.Write "<br><font size=2>에러스텝 1 : 실행할 SQL문을 입력하세요.</font><br>"
		response.end
		Exit function
	End If

	Select Case DBTarget

		Case "study"		:	DBTgt = DBConMegaMD		'메인 DB
		Case "exam"		:	DBTgt = DBConMegaExam		'메인 DB
		Case "rms"		:	DBTgt = DBConMegaRMS		'RMS

		Case Else
			Response.Write "<br><font size=2>에러스텝 2 : 연결할 데이타베이스의 정확한 문자열을 입력하시오!</font><br>"
			Response.End
	End Select

	Set DBCon=Server.CreateObject("ADODB.Connection") 'DB에 연결
	DBCon.CursorLocation = 3	'client cursor
	DBCon.CommandTimeout = 0	'시간 제한만료 대응
	DBCon.Open DBTgt

	if Err.number <> 0 Then
		IF TRIM(MEGA_IP) = "211.233.183" OR TRIM(MEGA_IP) = INNER_IP THEN

			response.write "<br><font size=2>에러스텝 3 : DB Open Error!! 데이터베이스를 정상적으로 연결하지 못하였습니다.</font><br>"
			v_to = "bkstory@megacst.com"
			v_from = "sysadmin@megacst.com"
			v_subject = "에러스텝 3 : DB Open Error!! 데이터베이스를 정상적으로 연결하지 못하였습니다."
			htmlstr = "에러발생웹서버 : " & request.servervariables("LOCAL_ADDR") & "<br>"
			htmlstr = htmlstr & "에러발생웹페이지 : " & request.servervariables("PATH_INFO") & "<br>"
			htmlstr = htmlstr & "에러발생데이터베이스연결자 : "& DBTarget
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
			sErr = sErr & "<TR><TD width='12%'><FONT SIZE=2>에러스텝 4</FONT></TD><TD><FONT SIZE=2>개체명이나 컬럼 혹은 인수값이 잘못되었습니다.</FONT></TD></TR>"
			sErr = sErr & "<TR><TD ><FONT SIZE=2>오류객체명</FONT></TD><TD><FONT SIZE=2>"&Err.Source&"</FONT></TD></TR>"
			sErr = sErr & "<TR><TD><FONT SIZE=2>오류설명</FONT></TD><TD><FONT SIZE=2>"&Err.description&"</FONT></TD></TR>"
			sErr = sErr & "<TR><TD><FONT SIZE=2>오류번호</FONT></TD><TD><FONT SIZE=2>"&Err.Number&"</FONT></TD></TR>"
			sErr = sErr & "<TR><TD><FONT SIZE=2>QUERY</FONT></TD><TD><FONT SIZE=2>"&sSQL&"</FONT></TD></TR>"
			sErr = sErr & "<TR><TD><FONT SIZE=2>에러페이지</FONT></TD><TD><FONT SIZE=2>"&err_page&"</FONT></TD></TR>"
			sErr = sErr & "</TABLE>"
			Response.Write sErr

			call DBclose(DBcon)

			Set DBCon=Server.CreateObject("ADODB.Connection") 'DB에 연결
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
'함수명		: DBClose
'INPUT 		: DBCon
'기능설명	: 단일 데이터 베이스 연결 객체 소멸
'===========================================================================
Function DBClose(DBCon)
	If IsObject(DBCon) = True Then
		DBCon.Close
		Set DBCon = Nothing
	end if
End Function

'===========================================================================
'함수명		: RSexec
'INPUT 		: rsName(RecordSet객체를위한Instance 이름),pSize(PageSize 선택)
'		  cType : CursorType 설정
'			0 : AdOpenForwardOnly(MoveNext만 지원)
'			1 : AdOpenKeyset(변경 데이타는 볼 수 없음)
'			2 : AdOpenDynamic(모든 방식의 커서지원)
'			3 : AdOpenStatic(데이타 검색이나 레포트 생성시에 사용)
'		  sSQL(실행할 Query 문장),DBTarget(각 데이타베이스 디바이스 접근 설정)
'기능설명	: 레코드셋 객체 생성/실행
'===========================================================================
Function RSexec(rsName,pSize,cType,sSQL,DBTarget)  
    
  ''  rw ssql 

	Dim globalDBCon
	'On Error Resume Next

	If  LEN(sSQL) = 0 Then
		Response.Write "<br><font size=2>에러스텝 1 : 실행할 SQL문을 입력하세요.</font><br>"
		response.end
		Exit function
	End If

	Select Case DBTarget
		Case "study"		:	DBTgt = DBConMegaMD		'메인 DB
		Case "exam"		:	DBTgt = DBConMegaExam		'메인 DB
		Case "rms"		:	DBTgt = DBConMegaRMS		'RMS

		Case Else
		  Response.Write "<br><font size=2>에러스텝 2 : 연결할 데이타베이스의 정확한 문자열을 입력하시오!</font><br>"
			Response.End
	End Select



	If IsObject(globalDBCon) = False Then
		Set globalDBCon = Server.CreateObject("ADODB.Connection")
		globalDBCon.CursorLocation = 3
		globalDBCon.CommandTimeout = 0	'시간 제한만료 대응
		globalDBCon.Open DBTgt

		if Err.number <> 0 Then
			IF TRIM(MEGA_IP) = "211.233.183" OR TRIM(MEGA_IP) = INNER_IP THEN

				response.write "<br><font size=2>에러스텝 3 : DB Open Error!! 데이터베이스를 정상적으로 연결하지 못하였습니다.</font><br>"
				v_to = "bkstory@megacst.com"
				v_from = "sysadmin@megacst.com"
				v_subject = "에러스텝 3 : DB Open Error!! 데이터베이스를 정상적으로 연결하지 못하였습니다."
				htmlstr = "에러발생웹서버 : " & request.servervariables("LOCAL_ADDR") & "<br>"
				htmlstr = htmlstr & "에러발생웹페이지 : " & request.servervariables("PATH_INFO") & "<br>"
				htmlstr = htmlstr & "에러발생데이터베이스연결자 : "& DBTarget
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

	If Psize <> "0" Then		'Psize가 0으로 셋팅되면 Pagesize를 잡지 않음.
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
			sErr = sErr & "<TR><TD width='12%'><FONT SIZE=2>에러스텝 4</FONT></TD><TD><FONT SIZE=2>개체명이나 컬럼 혹은 인수값이 잘못되었습니다.</FONT></TD></TR>"
			sErr = sErr & "<TR><TD ><FONT SIZE=2>오류객체명</FONT></TD><TD><FONT SIZE=2>"&Err.Source&"</FONT></TD></TR>"
			sErr = sErr & "<TR><TD><FONT SIZE=2>오류설명</FONT></TD><TD><FONT SIZE=2>"&Err.description&"</FONT></TD></TR>"
			sErr = sErr & "<TR><TD><FONT SIZE=2>오류번호</FONT></TD><TD><FONT SIZE=2>"&Err.Number&"</FONT></TD></TR>"
			sErr = sErr & "<TR><TD><FONT SIZE=2>QUERY</FONT></TD><TD><FONT SIZE=2>"&sSQL&"</FONT></TD></TR>"
			sErr = sErr & "<TR><TD><FONT SIZE=2>에러페이지</FONT></TD><TD><FONT SIZE=2>"&err_page&"</FONT></TD></TR>"
			sErr = sErr & "<TR><TD><FONT SIZE=2>에러페이지</FONT></TD><TD><FONT SIZE=2>"&err_page&"</FONT></TD></TR>"
			sErr = sErr & "</TABLE>"
			Response.Write sErr
			call RSclose(rsName)

			Set DBCon=Server.CreateObject("ADODB.Connection") 'DB에 연결
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
'함수명		: RSClose
'INPUT 		: rsName
'기능설명	: 레코드셋 객체 소멸
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
'함수명		: SendHtmlMail
'INPUT 		: v_to(받는사람 이메일),v_from(보내는사람 이메일),v_subject(메일 제목),htmlstr(메일 내용)
'기능설명	: html 이메일 보내기 입니다.
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
'함수명		: SendHtmlMailAtt
'INPUT 		: v_to(받는사람 이메일),v_from(보내는사람 이메일),v_subject(메일 제목),htmlstr(메일 내용),filename(첨부 파일)
'기능설명	: html 이메일 보내기 입니다.
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
' SELECT 함수
' 전달받은 쿼리로 레코드 셋을 배열로 리턴한다.
' Parameter	: strSQL, arrRS(Return)
' WRITER	: 김은성
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
			strSQL = strSQL & vbcrlf & "원인:" & err.Description & "(" & err.number & ")"
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
' 쿼리문(INSERT, UPDATE) 실행 함수
' lngRows는 적용받은 레코드셋의 갯수
' Parameter	: strSQL, lngRows(Return)
' WRITER	: 김은성
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
			strSQL = strSQL & vbcrlf & "원인:" & err.Description & "(" & err.number & ")"
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
' INSERT 실행 함수
' 인서트 후 아이덴티티 값을 리턴한다. (INSERT대상 테이블의 Primary Key가 IDENTITY타입일때 사용)
' Parameter	: strSQL, Identity(Return)
' WRITER	: 김은성
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
			strSQL = strSQL & vbcrlf & "원인:" & err.Description & "(" & err.number & ")"
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
			strSQL = strSQL & vbcrlf & "원인:" & err.Description & "(" & err.number & ")"
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
' 에러 처리 서브함수
' 에러메세지를 보여준다
' Parameter	: Module, strSQL, Mode
' WRITER	: 김은성 2008-09-17
'===========================================================================
Sub ErrTrap(Module, strSQL, Mode)

	MsgContent = "RefererPage : " & Request.ServerVariables("http_referer") & vbcrlf _
				& "한글페이지 " & Request.ServerVariables("SCRIPT_NAME") & " 에서 에러 발생" & vbcrlf _
				& "함수명 : " & Module & vbcrlf _
				& "질의문 : " & strSQL & vbcrlf

	Err.Clear
	Dim MsgContent
	Response.Write Replace(MsgContent, vbcrlf , "<BR>" )
	Response.End

End Sub



'===========================================================================
' SelectBox 생성시 테이블명, 컬럼을 던지면 생성한다.
' Parameter	: tb, col, vcol, nm, val, onscript
' (테이블명, 컬럼명, 밸류값컬럼명, selec name, 선택될 value 값, 스크립트 구문)
' WRITER	: 김은성 2008-09-17
'===========================================================================
Function SelectBox(tb, col, vcol, nm, val, where, onscript)

	Dim SelBox
	If (tb = "" Or col = "" Or vcol="") Then
		Call Msg("테이블명이 지정되지 않았습니다.", "", "")
	End IF

	Dim selSQL, selRs
	selSQL = "Select "& col &",  "& vcol &" From "& tb &" "& where
	selSQL = selSQL & " Order by ( Case When  "& col &" = '기타' Then  '핳' else  "& col &" end ) "



	If SelectSQL(selSQL, selRs) =  True Then

		SelBox = "<Select name='"& nm &"'  class='select'  "& onscript &">"& vbcrlf
		SelBox = SelBox & "<option value=''>전체</option>"& vbcrlf

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
' SelectBoxSub 생성시 테이블명, 컬럼을 던지면 생성한다.
' Parameter	: tb, col, vcol, nm, val, onscript
' (테이블명, 컬럼명, 밸류값컬럼명, selec name, 선택될 value 값, 전체 분류표시, 스크립트 구문)
' WRITER	: 이영태 2011-10-18
'===========================================================================
Function SelectBoxSub(tb, col, vcol, nm, val, where, optionNm, onscript)

	Dim SelBox
	If (tb = "" Or col = "" Or vcol="") Then
		Call Msg("테이블명이 지정되지 않았습니다.", "", "")
	End If
	
	If optionNm = "학년도 전체" Or optionNm = "학년도 선택" Then 
		Orderby	= vcol &" DESC, "
	ElseIf optionNm = "캠퍼스 선택" Then
		Orderby	= vcol &" ASC, "
	Else
		Orderby	= ""
	End If

	Dim selSQL, selRs
	selSQL = "Select "& col &",  "& vcol &" From "& tb &" "& where
	selSQL = selSQL & " Order by "& Orderby &" ( Case When  "& col &" = '기타' Then  '핳' else  "& col &" end ) "

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