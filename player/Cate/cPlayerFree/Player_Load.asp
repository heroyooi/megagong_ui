<%
'=======================================================================
'업 무 명 : 메가스터디-동영상 플레이어-고화질
'모듈기능 : 동영상 플레이어-고화질 플레이어 로드 부분
'파 일 명 : Player_Load.asp
'작성일자 : 2008/06/09
'작 성 자 :
'-----------------------------------------------------------------------
'변경일자   변경자  변동내역
'=======================================================================
'20120406	S.HAN		#001	SuperWide 대응
'=======================================================================
	Response.AddHeader "Pragma","no-cache"
	Response.AddHeader "cache-control", "no-store"
    Response.Expires    = -1
%>

<!-- 공통 인클루드 페이지 시작 -->
<!-- #include virtual = "/common/inc/RSexec.asp"-->
<!-- #include virtual = "/common/inc/VarDef.asp"-->
<!-- #include virtual = "/common/inc/FunDef.asp"-->
<!-- 공통 인클루드 페이지 마침 -->
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
// IE9 팝업창이 먼저 닫히는 버그수정
</script>
<script>
<!--
// 창이름 체크후 종료
if(window.name!="DNGPlayer") {
	try{
		window.opener.location.href='<%=url_main%>/logout_sql.asp';
	}catch(e){
		window.opener=self;
		self.close();
	}
}

// 창닫기
function fncClose() {
	window.opener=self;
	self.close();
}

function fncStdWindow() {
	parent.moveTo(0,0);
	<%If WIDE_KBN = "Y" Then%>
		parent.resizeTo(1050,575);	//WIDE
	<%Else%>
		parent.resizeTo(1050,740);	//비 WIDE
	<%End If%>
}

// 창크기 설정
function fncFullWindow() {
	parent.moveTo(0,0);
	parent.resizeTo(screen.width+7,screen.height+3);
}

fncStdWindow();

/////현재 시간값 구하기
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
