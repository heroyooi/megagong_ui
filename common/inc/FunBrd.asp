<%
'=======================================================================
'�� �� �� : �ް�����-�Խ����� ���� Function ���Ǹ���
'����� : �Խ����� ���� Function ���Ǹ���
'�� �� �� : /common/inc/FunBrd.asp
'�ۼ����� : 2011-03-24
'�� �� �� : ������
'-----------------------------------------------------------------------
'��������   ������  ��������
'=======================================================================
'
'=======================================================================
'Response.Expires = -1
%>
<% '�Խ����� ���� Function ���Ǹ��� START %>
<!-- #include virtual = "/common/inc/FunFile.asp"-->
<% '�Խ����� ���� Function ���Ǹ��� END %>
<%
	'// ȣ���ּ� üũ
	IF DRAG_NO = "Y" Then
		strReqURL = Request.ServerVariables("http_referer")
		If InStr(LCase(strReqURL),"ibky")=0 And Len(strReqURL) > 0 Then
'			Response.redirect "/"
'			Response.End
		End if
	End if

	'================================================================================
	' 2008-09-17
	' �Խ��� ���ȭ �۾��� ���� �Խ��� ���� Function
	'================================================================================

	Dim bCode
	bCode = LCase(Trim(fncRequest("bCode")))  ' ������ ���� ��ȣ


	If bCode = "" Then bCode = LCase(Trim(fncRequestCookie("PROID")))


'	Dim bTableName : bTableName = Null
'	Dim bColName : bColName = Null
'	Dim bTitle : bTitle = Null

	If bTableName = "" Then bTableName = Null
	If bColName = "" Then bColName = Null
	If bTitle = "" Then bTitle = Null

	'//--------------------------------------------------------------------------------------------
    '// �Խ����� �ҷ� ���δ�.
    '//--------------------------------------------------------------------------------------------

    Dim intPageSize
    Dim intNowShowNum
    Dim intNextPage
    Dim intThread
    Dim intDepth
    Dim intidx
    Dim RecordCount, PageCount
	Dim idx

	intNextpage   = "0"
    intThread     = "0"
    intDepth      = "0"

    intPagesize   = 10    ' �� ������ ����Ʈ ���� ���� / �Խù� ��ȣ ����
    intNowShowNum = 10    ' �ϴ� ��µ� ����Ʈ ���� ����
    intNextpage   = Trim(getparamint("Nextpage",""))
    if page <> "" Then
        intNextpage = page
    End if
    intThread     = Trim(fncRequest("Th"))
    intDepth      = Trim(fncRequest("TD"))
    idx			  = Trim(fncRequest("idx"))

	Dim searchkey, searchword
	searchkey	  = Trim(fncRequest("searchkey"))
	searchword	  = Trim(fncRequest("searchword"))

	'�Խ��� ����Ʈ ��� ����
	Dim bbsListCount(12)
	bbsListCount(0) = "ut_ofcus"
	bbsListCount(1) = "entrance_qna"
	bbsListCount(2) = "pass_epil"
	bbsListCount(3) = "intv_epil"
	bbsListCount(4) = "pass_rept"
	bbsListCount(5) = "cus_notice"
	bbsListCount(6) = "mqna"
	bbsListCount(7) = "sugang_qna"
	bbsListCount(8) = "recru_rate"
	bbsListCount(9) = "ut_faq"
	bbsListCount(10) = "aqna"
	bbsListCount(11) = "gichul"
	bbsListCount(12) = "succ_refund_app"


	Dim ListFlg : ListFlg = False

	If IsArray(bbsListCount) And BID <> "" Then
		For blc = 0 To UBound(bbsListCount)
			If bbsListCount(blc) = BID Then
				ListFlg = True
			End if
		Next
	End If

	If ListFlg Then
		intPagesize   = 15
	Else
	'	intPagesize   = 10
	End if

	If BID = "off_campus_life" Then
		intPagesize   = 9
	End if


    if intNextPage = "0" Or intNextPage = "" then intNextpage=1
	If intNextpage < 0 Then intNextpage=1


    Dim QueryPageCount		: QueryPageCount = intPageSize * intNextpage
   	Dim QuerySkipPageCount	: QuerySkipPageCount = intPageSize * (intNextpage - 1)

	 Function RecordAllCount(idxName, strTableName, SQLWhere)

			'//--------------------------------------------------------------------------------------------
			'// �ش� ���̺��� ���� �ϴ��� üũ�Ѵ�.
			'//--------------------------------------------------------------------------------------------

'
'			Dim DB_SQL, aRs
'			DB_SQL = "Select name from SysObjects where type='u' and name='"& strTableName &"'"
'
'			'�ش� �Խ��� ���̺��� �ִ��� üũ�Ѵ�.
'			IF SelectSQL(DB_SQL,aRs) = False Then
'			  'ufMailSend("False DB_Table Name")
'			  Response.Write "<script>alert('�ش� �Խ����� �����ϴ�.');history.back();</script>"
'			  Response.end
'			End if


			 '�ѰԽù� ���� ���ؿ´�.
			 Dim C_SQL
			 C_SQL = "select count("& idxName &") as recCount from "& strTableName &""
			 IF SQLWhere<>"" Then C_SQL = C_SQL & " Where "& SQLWhere &""
            
			 Call SelectSQL(C_SQL,aRs)

			 RecordCount = aRs(0,0)
			 Pagecount = int((RecordCount-1)/intPagesize) +1


			 SET aRs = Nothing

	 End Function


'=========================
' ������ ����
'=========================
Dim ptitle
Function PrevList(idx, bid, col, tname, page)
		
		Dim pSQL, pRs
		If bid = "cus_notice"  Then
			pSQL = "SELECT TOP 1 "& col &"S_IDX,  "& col &"S_SUBJECT FROM "& tname &" WHERE "& col &"S_RN='0' AND "& col &"S_IDX < "& idx &" AND "& col &"S_BID='"& bid &"' and (BCS_EXTRA4 is null or BCS_EXTRA4 <> '1') ORDER BY  "& col &"S_FN DESC "
		else
			pSQL = "SELECT TOP 1 "& col &"S_IDX,  "& col &"S_SUBJECT FROM "& tname &" WHERE "& col &"S_RN='0' AND "& col &"S_IDX < "& idx &" AND "& col &"S_BID='"& bid &"' ORDER BY  "& col &"S_FN DESC "
		End If
		
		If SelectSQL(pSQL, pRs) = True Then
			pidx = pRs(0,0)
			pTitle = "<a href='"& page &".asp?idx="&pidx&"'>"& db_to_str(pRs(1,0)) &"</a>"
		Else
			pidx = ""
			pTitle = "�������� �����ϴ�."
		End If

End Function

'=========================
' ������ ����
'=========================
Dim nTitle
Function NextList(idx, bid, col, tname, page)

		Dim nSQL, nRs

		If bid = "cus_notice" Then
			nSQL = "SELECT TOP 1 "& col &"S_IDX,  "& col &"S_SUBJECT FROM "& tname &" WHERE "& col &"S_RN='0' AND "& col &"S_IDX > "& IDX &" AND "& col &"S_BID='"& bid &"' and (BCS_EXTRA4 is null or BCS_EXTRA4 <> '1') ORDER BY  "& col &"S_FN ASC "
		else
			nSQL = "SELECT TOP 1 "& col &"S_IDX,  "& col &"S_SUBJECT FROM "& tname &" WHERE "& col &"S_RN='0' AND "& col &"S_IDX > "& IDX &" AND "& col &"S_BID='"& bid &"'  ORDER BY  "& col &"S_FN ASC "
		End if

		If SelectSQL(nSQL, nRs) = True Then
			nidx = nRs(0,0)
			nTitle = "<a href='"& page &".asp?idx="&nidx&"'>"& db_to_str(nRs(1,0)) &"</a>"
		Else
			nidx = ""
			nTitle = "�������� �����ϴ�."
		End IF

End Function

'=========================
' ������ ����(�˻� ����, ���Ǻ� �з�) - ������ ���� p -> n
'=========================
'Function PrevList_Search(idx, bid, col, tname, page, cate, subcate, searchkey, searchword, where)
			
'		Dim pSQL, pRs
'		Dim pSQLWhere

'		pSQLWhere = col &"S_RN='0' AND "& col &"S_BID='"& bid &"'"

'		If idx <> "" Then 
'			pSQLWhere = pSQLWhere & " AND "& col &"S_IDX < "& idx 
'		End If

'		If where <> "" THEN
'			pSQLWhere = pSQLWhere & " AND "& where 
'		End If
		
'		If cate <> "" THEN
'			If bid="cus_notice" Then
'				If subcate <> "" Then
'					pSQLWhere =  pSQLWhere & " AND "& col &"S_EXTRA3 ='"& cate &"'"
'				Else
'					pSQLWhere =  pSQLWhere & " AND "& col &"S_EXTRA3 IN('10','"& cate &"') "
'				End If
'			ElseIf bid="sugang_qna" THEN
'				pSQLWhere =  pSQLWhere & " AND "& col &"S_EXTRA2 ='"& cate &"'"
'			Else 
'				pSQLWhere =  pSQLWhere & " AND "& col &"S_CATE ='"& cate &"'"
'			End If
'		End If

'		If searchkey <> "" And searchword <> "" Then
'			pSQLWhere = pSQLWhere &  " AND "& searchkey &" like '%"& searchword &"%'"
'		End If

'		If bid="cus_notice" THEN
'			pSQLWhere =  pSQLWhere & " ORDER BY  "& col &"S_FN DESC"
'		Else
'			pSQLWhere =  pSQLWhere & " ORDER BY  "& col &"S_IDX DESC"
'		End If

'		pSQL = "SELECT TOP 1 "& col &"S_IDX,  "& col &"S_SUBJECT FROM "& tname &" WHERE "& pSQLWhere

'		If SelectSQL(pSQL, pRs) = True Then
'			pidx = pRs(0,0)
'			If bid="sugang_qna" THEN
'				pTitle = "<a href='"& page &".asp?idx="&pidx&"&extra2="&cate&"&camp="&subcate&"&searchkey="&searchkey&"&searchword="&searchword&"'>"& db_to_str(stripHTML(pRs(1,0))) &"</a>"
'			ElseIf bid="gichul" Or bid="exam_trend" THEN
'				pTitle = "<a href='"& page &".asp?idx="&pidx&"&cate="&cate&"&sub_cate="&subcate&"&searchkey="&searchkey&"&searchword="&searchword&"'>"& db_to_str(stripHTML(pRs(1,0))) &"</a>"
'			ElseIf bid="cus_notice" And subcate<>"" Then
'				pTitle = "<a href='"& page &".asp?idx="&pidx&"&camp="&cate&"&extra1="&extra1&"&searchkey="&searchkey&"&searchword="&searchword&"'>"& db_to_str(stripHTML(pRs(1,0))) &"</a>"
'			ElseIf (bid="cus_notice" And subcate="") Or bid="vod_pds" Then
'				pTitle = "<a href='"& page &".asp?idx="&pidx&"&camp="&cate&"&searchkey="&searchkey&"&searchword="&searchword&"'>"& db_to_str(stripHTML(pRs(1,0))) &"</a>"
'			Else
'				pTitle = "<a href='"& page &".asp?idx="&pidx&"&cate="&cate&"&searchkey="&searchkey&"&searchword="&searchword&"'>"& db_to_str(stripHTML(pRs(1,0))) &"</a>"
'			End If
'		Else
'			pidx = ""
'			pTitle = "�������� �����ϴ�."
'		End IF

'End Function

'=========================
' ������ ����(����)
'=========================
Function PrevList_Search(idx, col, tname, page, where, Orderby, titlelink)
			
		Dim pSQL, pRs
		Dim pSQLWhere

		pSQL = "SELECT TOP 1 "& col &"S_IDX,  "& col &"S_SUBJECT FROM "& tname &" WHERE "& where &" ORDER BY "& Orderby 

		If SelectSQL(pSQL, pRs) = True Then
			pidx = pRs(0,0)
			pTitle = "<a href='"& page &".asp?idx="&pidx&"&"&titlelink&"'>"& db_to_str(stripHTML(pRs(1,0))) &"</a>"
		Else
			pidx = ""
			pTitle = "�������� �����ϴ�."
		End IF
'rw pSQL
End Function

'=========================
' ������ ����(����)
'=========================
Function NextList_Search(idx, col, tname, page, where, Orderby, titlelink)
			
		Dim nSQL, pRs
		Dim nSQLWhere
		
		nSQL = "SELECT TOP 1 "& col &"S_IDX,  "& col &"S_SUBJECT FROM "& tname &" WHERE "& where &" ORDER BY "& Orderby 

		If SelectSQL(nSQL, nRs) = True Then
			nidx = nRs(0,0)
			nTitle = "<a href='"& page &".asp?idx="&nidx&"&"&titlelink&"'>"& db_to_str(stripHTML(nRs(1,0))) &"</a>"
		Else
			nidx = ""
			nTitle = "�������� �����ϴ�."
		End IF
'rw nSQL
End Function

'=========================
' ������ ����(BSS_CATE ���� �߰�)
'=========================
Function PrevCList(idx, bid, bcate, col, tname, page)

		Dim pSQL, pRs
		If bid = "cus_notice" Then
			pSQL = "SELECT TOP 1 "& col &"S_IDX,  "& col &"S_SUBJECT FROM "& tname &" WHERE "& col &"S_RN='0' AND "& col &"S_IDX < "& idx &" AND "& col &"S_BID='"& bid &"' And BSS_CATE = '"& bcate &"' and (BCS_EXTRA4 is null or BCS_EXTRA4 <> '1') ORDER BY  "& col &"S_FN DESC "
		else
			pSQL = "SELECT TOP 1 "& col &"S_IDX,  "& col &"S_SUBJECT FROM "& tname &" WHERE "& col &"S_RN='0' AND "& col &"S_IDX < "& idx &" AND "& col &"S_BID='"& bid &"' And BSS_CATE = '"& bcate &"' ORDER BY  "& col &"S_FN DESC "
		End if

		If SelectSQL(pSQL, pRs) = True Then
			pidx = pRs(0,0)
			pTitle = "<a href='"& page &".asp?idx="&pidx&"'>"& db_to_str(pRs(1,0)) &"</a>"
		Else
			pidx = ""
			pTitle = "�������� �����ϴ�."
		End If

End Function


'=========================
' ������ ����(BSS_CATE ���� �߰�)
'=========================
Function NextCList(idx, bid, bcate, col, tname, page)

		Dim nSQL, nRs

		If Len(bcate) > 0 Then
'			addSQL = "bcate"
		End if

		If bid = "cus_notice" Then
			nSQL = "SELECT TOP 1 "& col &"S_IDX,  "& col &"S_SUBJECT FROM "& tname &" WHERE "& col &"S_RN='0' AND "& col &"S_IDX > "& IDX &" AND "& col &"S_BID='"& bid &"' And BSS_CATE = '"& bcate &"' and (BCS_EXTRA4 is null or BCS_EXTRA4 <> '1') ORDER BY  "& col &"S_FN ASC "
		else
			nSQL = "SELECT TOP 1 "& col &"S_IDX,  "& col &"S_SUBJECT FROM "& tname &" WHERE "& col &"S_RN='0' AND "& col &"S_IDX > "& IDX &" AND "& col &"S_BID='"& bid &"' And BSS_CATE = '"& bcate &"' ORDER BY  "& col &"S_FN ASC "
		End if

		If SelectSQL(nSQL, nRs) = True Then
			nidx = nRs(0,0)
			nTitle = "<a href='"& page &".asp?idx="&nidx&"'>"& db_to_str(nRs(1,0)) &"</a>"
		Else
			nidx = ""
			nTitle = "�������� �����ϴ�."
		End IF

End Function

'==========================================
' ����¡ó��
'==========================================
Sub GoPage(page, Pagecount, pagename, Query, defaultcol, selectcol)
%>
<!-- pagenum���� -->
<%
	Dim blockpage, GoPageList

	IF RecordCount<>0 then
		blockpage=Int((page-1)/intNowShowNum)*intNowShowNum+1

		GoPageList = "<table width=100% border=0 cellpadding=0 cellspacing=0>"
		GoPageList = GoPageList & "<tr>"
		GoPageList = GoPageList & "<td height=10></td>"
		GoPageList = GoPageList & "</tr>"
		GoPageList = GoPageList & "<tr>"
		GoPageList = GoPageList & "<td height=28 class=12p_n1 align=center>"

'		if blockPage = 1 Then
'			GoPageList = GoPageList & "<img src='"& img_main &"/btn/left_aroow2.gif' alt='ó��' hspace='2' align='absmiddle' id='pnum_1'>"
'		Else
			GoPageList = GoPageList & "<a href='"& pagename &".asp?"&Query&"Nextpage=1'><img src='"& img_main &"/btn/left_aroow2.gif' alt='ó��' hspace='2' align='absmiddle' id='pnum_1'></a>"
'		End If

		GoPageList = GoPageList & "&nbsp;<a href='"& pagename &".asp?"& Query &"Nextpage="& blockPage-10 &"'><img src='"& img_main &"/btn/left_aroow1.gif' alt='����' hspace='2' align='absmiddle' id='pnum_2'>"

		Dim i
		i=1

		Do Until i > intNowShowNum or blockpage > Pagecount

			GoPageList = GoPageList & "&nbsp;"

			If blockpage=int(page) Then
				GoPageList = GoPageList & "<span class='12p_n2'><b>"& blockpage &"</b></span>"
			Else
				GoPageList = GoPageList & "<a href='"&pagename&".asp?"&Query&"Nextpage=" & blockpage & "'>" & blockpage & "</a>"
			End If

			blockpage=blockpage+1

			GoPageList = GoPageList &  "&nbsp;"

			i = i + 1
		Loop

		Dim PlusNextPage

		If int(Pagecount) > int(page) Then
			PlusNextPage = 	page+1
		ElseIf int(Pagecount) = int(page) Then
			PlusNextPage = 	page
		End If

		If blockpage > Pagecount Then blockpage = Pagecount

			GoPageList = GoPageList & "<a href='"&pagename&".asp?"&Query&"Nextpage=" & blockpage & "'><img src='"& img_main &"/btn/right_aroow1.gif' alt='����' hspace='2' align='absmiddle' id='pnum_3'></a>&nbsp;"

'			if blockpage > Pagecount Then
'				GoPageList = GoPageList & "<img src='"& img_main &"/btn/right_aroow2.gif' alt='�ǳ�' hspace='2' align='absmiddle' id='pnum_4'>"
'			Else
				GoPageList = GoPageList & "<a href='"&pagename&".asp?"&Query&"Nextpage=" & Pagecount & "'><img src='"& img_main &"/btn/right_aroow2.gif' alt='�ǳ�' hspace='2' align='absmiddle' id='pnum_4'></a>"
'			End If

			GoPageList = GoPageList & "</td></tr></table>"

			Response.Write GoPageList
		End If
%>
<!-- pagenum���� �� -->
<%
End Sub




'==========================================
' ����¡ó��
'==========================================
Sub GoPage_a(page, Pagecount, pagename, Query, defaultcol, selectcol,a_direct)  '''''''�ٷΰ��� ��ũ 
%>
<!-- pagenum���� -->
<%
	Dim blockpage, GoPageList

	IF RecordCount<>0 then
		blockpage=Int((page-1)/intNowShowNum)*intNowShowNum+1

		GoPageList = "<table width=100% border=0 cellpadding=0 cellspacing=0>"
		GoPageList = GoPageList & "<tr>"
		GoPageList = GoPageList & "<td height=10></td>"
		GoPageList = GoPageList & "</tr>"
		GoPageList = GoPageList & "<tr>"
		GoPageList = GoPageList & "<td height=28 class=12p_n1 align=center>"

'		if blockPage = 1 Then
'			GoPageList = GoPageList & "<img src='"& img_main &"/btn/left_aroow2.gif' alt='ó��' hspace='2' align='absmiddle' id='pnum_1'>"
'		Else
			GoPageList = GoPageList & "<a href='"& pagename &".asp?"&Query&"Nextpage=1"& a_direct &"'><img src='"& img_main &"/btn/left_aroow2.gif' alt='ó��' hspace='2' align='absmiddle' id='pnum_1'></a>"
'		End If

		GoPageList = GoPageList & "&nbsp;<a href='"& pagename &".asp?"& Query &"Nextpage="& blockPage-10 & a_direct &"'><img src='"& img_main &"/btn/left_aroow1.gif' alt='����' hspace='2' align='absmiddle' id='pnum_2'>"

		Dim i
		i=1

		Do Until i > intNowShowNum or blockpage > Pagecount

			GoPageList = GoPageList & "&nbsp;"

			If blockpage=int(page) Then
				GoPageList = GoPageList & "<span class='12p_n2'>"& blockpage &"</span>"
			Else
				GoPageList = GoPageList & "<a href='"&pagename&".asp?"&Query&"Nextpage=" & blockpage & a_direct & "'>" & blockpage & "</a>"
			End If

			blockpage=blockpage+1

			GoPageList = GoPageList &  "&nbsp;"

			i = i + 1
		Loop

		Dim PlusNextPage

		If int(Pagecount) > int(page) Then
			PlusNextPage = 	page+1
		ElseIf int(Pagecount) = int(page) Then
			PlusNextPage = 	page
		End If

		If blockpage > Pagecount Then blockpage = Pagecount

			GoPageList = GoPageList & "<a href='"&pagename&".asp?"&Query&"Nextpage=" & blockpage & a_direct & "'><img src='"& img_main &"/btn/right_aroow1.gif' alt='����' hspace='2' align='absmiddle' id='pnum_3'></a>&nbsp;"

'			if blockpage > Pagecount Then
'				GoPageList = GoPageList & "<img src='"& img_main &"/btn/right_aroow2.gif' alt='�ǳ�' hspace='2' align='absmiddle' id='pnum_4'>"
'			Else
				GoPageList = GoPageList & "<a href='"&pagename&".asp?"&Query&"Nextpage=" & Pagecount & a_direct & "'><img src='"& img_main &"/btn/right_aroow2.gif' alt='�ǳ�' hspace='2' align='absmiddle' id='pnum_4'></a>"
'			End If

			GoPageList = GoPageList & "</td></tr></table>"

			Response.Write GoPageList
		End If
%>
<!-- pagenum���� �� -->
<%
End Sub

'==========================================
' ����¡ó�� - �Ķ���� ���� ����
'==========================================
Sub GoPage_n(page, Pagecount, pagename, Query, defaultcol, selectcol)
%>
<!-- pagenum���� -->
<%
	Dim blockpage, GoPageList

	IF RecordCount<>0 then
		blockpage=Int((page-1)/intNowShowNum)*intNowShowNum+1

		GoPageList = "<table width=100% border=0 cellpadding=0 cellspacing=0>"
		GoPageList = GoPageList & "<tr>"
		GoPageList = GoPageList & "<td height=10></td>"
		GoPageList = GoPageList & "</tr>"
		GoPageList = GoPageList & "<tr>"
		GoPageList = GoPageList & "<td height=28 class=12p_n1 align=center>"

'		if blockPage = 1 Then
'			GoPageList = GoPageList & "<img src='"& img_main &"/btn/left_aroow2.gif' alt='ó��' hspace='2' align='absmiddle' id='pnum_1'>"
'		Else
			GoPageList = GoPageList & "<a href='"& pagename &".asp?"&Query&"&Nextpage=1'><img src='"& img_main &"/btn/left_aroow2.gif' alt='ó��' hspace='2' align='absmiddle' id='pnum_1'></a>"
'		End If

		GoPageList = GoPageList & "&nbsp;<a href='"& pagename &".asp?"& Query &"&Nextpage="& blockPage-10 &"'><img src='"& img_main &"/btn/left_aroow1.gif' alt='����' hspace='2' align='absmiddle' id='pnum_2'>"

		Dim i
		i=1

		Do Until i > intNowShowNum or blockpage > Pagecount

			GoPageList = GoPageList & "&nbsp;"

			If blockpage=int(page) Then
				GoPageList = GoPageList & "<span class='12p_n2'>"& blockpage &"</span>"
			Else
				GoPageList = GoPageList & "<a href='"&pagename&".asp?"&Query&"&Nextpage=" & blockpage & "'>" & blockpage & "</a>"
			End If

			blockpage=blockpage+1

			GoPageList = GoPageList &  "&nbsp;"

			i = i + 1
		Loop

		Dim PlusNextPage

		If int(Pagecount) > int(page) Then
			PlusNextPage = 	page+1
		ElseIf int(Pagecount) = int(page) Then
			PlusNextPage = 	page
		End If

		If blockpage > Pagecount Then blockpage = Pagecount

			GoPageList = GoPageList & "<a href='"&pagename&".asp?"&Query&"&Nextpage=" & blockpage & "'><img src='"& img_main &"/btn/right_aroow1.gif' alt='����' hspace='2' align='absmiddle' id='pnum_3'></a>&nbsp;"

'			if blockpage > Pagecount Then
'				GoPageList = GoPageList & "<img src='"& img_main &"/btn/right_aroow2.gif' alt='�ǳ�' hspace='2' align='absmiddle' id='pnum_4'>"
'			Else
				GoPageList = GoPageList & "<a href='"&pagename&".asp?"&Query&"&Nextpage=" & Pagecount & "'><img src='"& img_main &"/btn/right_aroow2.gif' alt='�ǳ�' hspace='2' align='absmiddle' id='pnum_4'></a>"
'			End If

			GoPageList = GoPageList & "</td></tr></table>"

			Response.Write GoPageList
		End If
%>
<!-- pagenum���� �� -->
<%
End Sub



subMenu = fncrequest("subMenu")
tMnuStr = fncrequest("tMnuStr")
cate	= fncrequest("cate")
cate = clearXSS(cate, "")

If tMnuStr = "" Then tMnuStr = ",,,,,_a,,"
If subMenu = "" Then subMenu = "true"

tMnuStrArr = Split(tMnuStr,",")

%>