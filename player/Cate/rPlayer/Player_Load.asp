<%
'=======================================================================
'�� �� �� : �ް����͵�-������ �÷��̾�-��ȭ��
'����� : ������ �÷��̾�-��ȭ�� �÷��̾� �ε� �κ�
'�� �� �� : Player_Load.asp
'�ۼ����� : 2008/06/09
'�� �� �� :
'-----------------------------------------------------------------------
'��������   ������  ��������
'=======================================================================
'20100319	������	#001	����(����)�ε��� ����
'20120406	S.HAN	#002	SuperWide ����
'=======================================================================
	Response.AddHeader "Pragma","no-cache"
	Response.AddHeader "cache-control", "no-store"
    Response.Expires    = -1
%>
<%'���� ��Ŭ��� ������ ���� %>
<!-- #include virtual = "/common/inc/RSexec.asp"-->
<!-- #include virtual = "/common/inc/VarDef.asp"-->
<!-- #include virtual = "/common/inc/FunDef.asp"-->
<%'���� ��Ŭ��� ������ ��ħ %>
<%
	'TEC_NM = Trim(fncRequest("TEC_NM"))
	'CHR_CD 	= Trim(fncRequest("CHR_CD"))
	'APP_NO 	= Trim(fncRequest("APP_NO"))
	'LEC_SEQ	= Trim(fncRequest("LEC_SEQ"))
	'WIDE_KBN= fncRequest("WIDE_KBN")		'���̵� ���� Y:���̵�
	'DNG_KBN	= fncRequest("DNG_KBN")			'������ ���� 1:�߽� 2:�Ϲ�
	'Relay_yn = request("Relay_yn")
	sel_lec_cd = fncRequest("sel_lec_cd")
	relay = fncRequest("relay")
	'tmp_lec_cd = ""

	UseWidth = getParamInt( "UseWidth", 0)
	UseHeight = getParamInt( "UseHeight", 0)

'#################
'�Ķ���� Ȯ��
'LEC_CD ������ ó�� / �������� �ʿ� ����
'#################
	KBN = Trim(fncRequest("KBN"))					'���� 60�̸� �ܿ�
	LEC_CD 	= Trim(fncRequest("LEC_CD"))

'	Response.write KBN & "," & LEC_CD
'	Response.end
	If KBN = "" Or LEC_CD = "" Then
		Response.Write "<script>try{alert('�ش� ���¸� ������ ������ �����ϴ�.(1)');window.opener=self;self.close();}catch(e){window.close();}</script>"
		Response.End
	End If


'���� ���� ���� üũ
	Dim lo_mem_nm
	vSql = "exec USP_GET_LEC_ING '" & cook_id & "'," & LEC_CD & " "
	call RSExec(oRs, 0, 3, vSql, "study")
	If oRs.EOF Or oRs. BOF Then
		CHR_CD = ""
	Else
		CHR_CD = oRs(0)
		APP_NO = oRs(1)
		WIDE_KBN = oRs(4)
	End If
	Call RSClose(oRs)

	If CHR_CD = "" Then
		Response.Write "<script>try{alert('�ش� ���¸� ������ ������ �����ϴ�.(2)');window.opener=self;self.close();}catch(e){window.close();}</script>"
		Response.End
	End If

	new_tabsize = 270
	new_cutsize = 0
	If KBN = "S" Then '''��ȭ���� ���
		If UCase(WIDE_KBN) = "Y" Then	'���̵��� ��� ȭ�� ũ�� ũ���ϱ�
			If UseHeight > 0 And UseHeight > 0 Then
				If UseWidth > 1600 Then
					stype = 1 '��ȭ��1
					newGWidth = 1580 : newGHeight = 840 : new_cutsize = 80 : new_childsize = 225
				ElseIf UseWidth > 1200 Then
					If UseHeight <= 720 Then
						stype = 2 '��ȭ��2
						newGWidth = 1240 : newGHeight = 690 : new_cutsize = 90 : new_childsize = 200
					Else 
						stype = 3 '��ȭ��3
						newGWidth = 1240 : newGHeight = 690 : new_cutsize = 90 : new_childsize = 200
					End If
				Else 
					stype = 4 '��ȭ��4
					newGWidth = 900 + new_tabsize : newGHeight = 600 : new_cutsize = 0 : new_childsize = 275
				End If
			Else
				stype = 5
				newGWidth = 1240 : newGHeight = 690 : new_cutsize = 90 : new_childsize = 200
			End If
			newGWidth2X = UseWidth : newGHeight2X = UseHeight
		Else
			stype = 6
			newGWidth = 1065 : newGHeight = 725
			newGWidth2X = UseWidth : newGHeight2X = UseHeight
		End If
	Else '950,520 ''''�Ϲ�ȭ���� ���
			stype = 9
			newGWidth = 900 + new_tabsize : newGHeight = 600 : new_cutsize = 0
			newGWidth2X = UseWidth : newGHeight2X = UseHeight
	End If
	strUserAgent = UCase(cstr(request.ServerVariables("HTTP_USER_AGENT")))
	If InStr(strUserAgent,"MSIE") Or InStr(strUserAgent,"trident") Or InStr(strUserAgent,"edge") Then
'			new_childsize = new_childsize - 100
	End If


	'���÷��̾� ȯ�� ���
	'SET1 = "1":SET2 = "2":SET3 = "1":SET4 = "2":SET5 = "Y"

	if sel_lec_cd <> "" then
		Ary_Lec_cd = split(sel_lec_cd,",")

		For i = 0 To Ubound(Ary_Lec_cd)
			If i = 0 Then
				Lec_Cd = Ary_Lec_Cd(i)
			Else
				tmp_lec_cd = tmp_lec_cd & Ary_Lec_Cd(i)

				If i = Ubound(Ary_Lec_cd) then
					tmp_lec_cd = tmp_lec_cd & ","
				End If
			End If
		Next

		sel_lec_cd = tmp_lec_cd
	end If

	bIdx = false
	
	If chr_cd <> "" Then

		'������ �ε����� �ִ°�..
		strSql = "select top 1 lm_lec_cd from ms_lec_mas with(nolock) join md_lec_idx with(nolock) on lm_lec_cd=li_lec_cd and lm_chr_cd="& chr_cd &" and li_lec_cd="& LEC_CD &"order by lm_lec_cd"

		Set Rs = DbExec(strSql, "study")
		If not Rs.Eof Then
			bIdx = true
		End If
		Call Rsclose(Rs)
	End If
	
	If bIdx = false Then
		Tab_Url = "/player/Cate/md_tab/sPlayer_Tab1.asp"
		Idx_flg = "0"		
	Else
		Tab_Url = "/player/Cate/md_tab/sPlayer_Tab2.asp"
		Idx_flg = "1"
	End If

'<html lang="ko">
%>
<!DOCTYPE HTML>
<html lang="ko" style="border:none"> 
<head>
<title><%=BaseDocTitle%></title>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<link REL="SHORTCUT ICON" HREF="<%=img_admin%>/megastudy.ICO">
<link rel="stylesheet" type="text/css" href="<%=url_common%>/css/style.css">
<script src="https://code.jquery.com/jquery-1.11.3.js"></script>
<script  language=javascript >
window.onbeforeunload = function() {};
// IE9 �˾�â�� ���� ������ ���׼���
</script>
<script>
<!--
	var varAlpha_Play=0;        //���ĺ극��-�÷��� ����
	var varAlpha_Mode=0;        //���ĺ극��-��� ����
	var varAlpha_Volume=16;     //���ĺ극��-���� ����
	var varAlpha_Sound=5;       //���ĺ극��-���� ����
	var varAlpha_Mute=0;        //���ĺ극��-���Ұ�

	// â�̸� üũ�� ����
	if(window.name!="DNGPlayer") {
		try{
			window.opener.location.href='<%=url_main%>/logout_sql.asp';
		}catch(e){
			window.opener=self;
			self.close();
		}
	}

	// â�ݱ�
	function fncClose() {
		window.opener=self;
		self.close();
	}

	// â��ġ ����
	function fncStdWindow2() {
		//alert("fncStdWindow2");
		window.moveTo(0,0);
		<% If KBN = "S" Then %>
			<%If WIDE_KBN = "Y" Then%>
				window.resizeTo(1050,575);	//WIDE
			<%Else%>
				window.resizeTo(800,575);	//�� WIDE
			<%End If%>
		<% Else %>
				window.resizeTo(950,520);	//�� WIDE
		<% End If %>
	}
	function fncStdWindow() {
		window.moveTo(0,0);
		<% If KBN = "S" Then %>
			<%If WIDE_KBN = "Y" Then%>
				<% If stype = 4 Then %>
					window.resizeTo(<%= newGWidth - new_tabsize + 20 %>,<%= newGHeight + 90 %>);	//WIDE
				<% Else %>
					window.resizeTo(<%= newGWidth %>,<%= newGHeight %>);	//WIDE
				<% End If %>
			<%Else%>
				window.resizeTo(1050,740);	//�� WIDE
			<%End If%>
		<% Else %>
				window.resizeTo(<%= newGWidth - new_tabsize + 20 %>,<%= newGHeight + 90 %>);	//WIDE
		<% End If %>
	}

	// âũ�� ����
	function fncFullWindow() {
		//alert("fncFullWindow");
		parent.moveTo(0,0);
		parent.resizeTo(screen.width+7,screen.height+3);
	}

	fncStdWindow();
	//fncFullWindow();

	/////���� �ð��� ���ϱ�
	var current_time;
	current_time = "<%Response.Write cstr(date())+" "+ cstr(hour(now())) + +":"+ cstr(minute(now())) + ":" + cstr(second(now()))%>" ;

	function fncSelectPlay() {
		var str = document.getElementById("player_right").src;

		if (document.getElementById("player_right").contentWindow.lecform) {	// �������� ù��° �ǿ� �ִٸ� ���� 20120608 CHOIJH
			document.getElementById("player_right").contentWindow.SetSelectPlay();
		}
	}



	function fn_finish() {
		$.ajax({
			type: "POST",
			url: "Player_Proc.asp",
			dataType: "html",
			async: false,
			cache: false,
			data: "type=I&app_no=<%=APP_NO%>&lec_cd=<%=LEC_CD%>&chr_cd=<%=CHR_CD%>",
			success: function (success_code_str) {                                                                                                               
				if (success_code_str == "ok") {
				}
			}
		});    

		$("#player_txt").html("���ǰ� ����Ǿ����ϴ�.</br>5���̳��� �÷��̾ �����ϼ���.");
		$("#player_noti").show();
		$("#player_view").hide();
		$("#player_main").attr("src","");

		setTimeout(fn_timeover, 300000);
	}
	function fn_timeover() {
		$.ajax({
			type: "POST",
			url: "Player_Proc.asp",
			dataType: "html",
			async: false,
			cache: false,
			data: "type=D&app_no=<%=APP_NO%>&lec_cd=<%=LEC_CD%>&chr_cd=<%=CHR_CD%>",
			success: function (success_code_str) {                                                                                                               
				if (success_code_str == "ok") {
				}
			}
		});    

		$("#player_txt").html("5�оȿ� �÷��̾ ������� �ʾ�</br>�̼��� ó���Ǿ����ϴ�.");
		$("#player_noti").show();
		$("#player_view").hide();
		$("#player_main").attr("src","");
	}
	function fn_close() {
		this.close();
	}

//-->
</script>
</head>

<body style="background-color:#2d2d2f;margin:0;height:100%;">
	<table id="player_view" border="0" cellspacing="0" cellpadding="0" style="width:100%;height:100%;">
	<tr style="height:100%;">
		<td id="view_1" width="*">
			<iframe src="Player_Mega.asp?PLAYER_TYPE=<%=PLAYER_TYPE%>&KBN=<%=KBN%>&TEC_NM=<%=TEC_NM%>&CHR_CD=<%=CHR_CD%>&APP_NO=<%=APP_NO%>&LEC_CD=<%=LEC_CD%>&LEC_SEQ=<%=LEC_SEQ%>&UseWidth=<%=UseWidth%>&UseHeight=<%=UseHeight%>&SET2=<%=SET2%>&SET3=<%=SET3%>&SET5=<%=SET5%>&SET6=<%=SET6%>&SET7=<%=SET7%>&WIDE_KBN=<%=WIDE_KBN%>&DNG_KBN=<%=DNG_KBN%>&Relay_yn=<%=Relay_yn%>&relay=<%= relay %>" id="player_main" name="player_main" width="<%= newGWidth - new_tabsize %>" height="<%= newGHeight - new_cutsize %>" frameborder="0" scrolling="no" allowfullscreen webkitallowfullscreen mozallowfullscreen></iframe>
		</td>
	</tr>
	</table>
	
	<div id="player_noti" style="position:absolute ; left:50%; top:50%; margin-left:-200px ; margin-top:-90px; _width:-205px; _height:90px; z-index:1;display:none;">
	   <div style="border:5px solid #333; width:390px; height:170px; _width:400px; _height:180px;background:#fff;">
		   <div style="padding:30px;">
			   <div>
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
				   <tr>
					   <td style="vertical-align:middle; text-align:center; height:80px;">
						   <p id="player_txt" style="color:#333; line-height:160%; font-size:12px;"></p>
					   </td>
				   </tr>
				</table>
			   </div>
			   <div style="text-align:center;">
				   <a href="javascript:fn_close();" style="display:inline-block; height:30px; padding:0 20px;  background:#1e6dc9">
					   <p style="padding-top:8px; color:#fff; font-weight:bold; font-size:12px;">Ȯ��</p>
				   </a>
			   </div>
		   </div>
	   </div>
	</div>

</body>

</html>


