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
'20120406	S.HAN		#001	SuperWide ����
'=======================================================================
	Response.AddHeader "Pragma","no-cache"
	Response.AddHeader "cache-control", "no-store"
    Response.Expires    = -1
%>

<!-- ���� ��Ŭ��� ������ ���� -->
<!-- #include virtual = "/common/inc/RSexec.asp"-->
<!-- #include virtual = "/common/inc/VarDef.asp"-->
<!-- #include virtual = "/common/inc/FunDef.asp"-->
<!-- ���� ��Ŭ��� ������ ��ħ -->
<%
	cd = TRIM(fncRequest("cd"))
%>
<html lang="ko">
<head>
<title><%=BaseDocTitle%></title>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<link REL="SHORTCUT ICON" HREF="<%=img_admin%>/megastudy.ICO">
<link rel="stylesheet" type="text/css" href="<%=url_common%>/css/style.css">
<script  language=javascript >
window.onbeforeunload = function() {};
// IE9 �˾�â�� ���� ������ ���׼���
</script>
<script>
<!--
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

function fncStdWindow() {
	parent.moveTo(0,0);
	<%If WIDE_KBN = "Y" Then%>
		parent.resizeTo(1050,575);	//WIDE
	<%Else%>
		parent.resizeTo(1050,740);	//�� WIDE
	<%End If%>
}

// âũ�� ����
function fncFullWindow() {
	parent.moveTo(0,0);
	parent.resizeTo(screen.width+7,screen.height+3);
}

fncStdWindow();

/////���� �ð��� ���ϱ�
var current_time;
current_time = "<%Response.Write cstr(date())+" "+ cstr(hour(now())) + +":"+ cstr(minute(now())) + ":" + cstr(second(now()))%>" ;

//-->
</script>

</head>
<body style="background-color:#2d2d2f;margin:0;height:100%;">
	<table border="0" cellspacing="0" cellpadding="0" style="width:100%;height:100%;">
	<tr style="height:100%;">
		<td id="view_1" width="100%">
			<iframe src="Player_Mega.asp?cd=<%=cd%>" id="player_main" name="player_main" width="100%" height="100%" frameborder="0" scrolling="no" allowfullscreen webkitallowfullscreen mozallowfullscreen></iframe>
		</td>
	</tr>
	</table>
</body>
</html>
