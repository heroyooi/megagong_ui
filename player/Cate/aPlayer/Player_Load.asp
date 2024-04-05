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
	l_user_type = fncRequestCookie("user_type")
	If l_user_type <> "E" And l_user_type <> "T" Then
		Response.Write "<script>try{alert('관리자 권한이 필요합니다.(1)');window.opener=self;self.close();}catch(e){window.close();}</script>"
		Response.End
	End IF


    PLAYER_TYPE = TRIM(fncRequest("PLAYER_TYPE"))            'N중간종료 없음 , S 중간종료
    PLAYER_TYPE="N"   '중간종료 없음, 인트로 없음

	TEC_NM = TRIM(fncRequest("TEC_NM"))
	CHR_CD 	= TRIM(fncRequest("CHR_CD"))
	APP_NO 	= TRIM(fncRequest("APP_NO"))
	LEC_CD 	= TRIM(fncRequest("LEC_CD"))
	LEC_SEQ	= TRIM(fncRequest("LEC_SEQ"))
	KBN    =  TRIM(fncRequest("dng_kbn"))
	DNG_KBN    =  TRIM(fncRequest("dng_kbn"))
	CHR_NM 	= TRIM(fncRequest("CHR_NM"))
	DNG_FLG = TRIM(fncRequest("DNG_FLG"))		'동영상 FLAG
	DNG_CD = TRIM(fncRequest("DNG_CD"))
	WIDE_KBN= ucase(fncRequest("WIDE_KBN"))	'와이드 구분 Y:와이드
	TEC_CD 	= TRIM(fncRequest("TEC_CD"))
	NO	= TRIM(fncRequest("NO"))
	ST_FILENAME = TRIM(fncRequest("ST_FILENAME"))
	TAB_DOM = TRIM(fncRequest("TAB_DOM"))      '강제 지정 강좌소개 영역

	'S20100312	INS	W.J.JANG	#001
	SPL_STM = TRIM(fncRequest("SPL_STM"))				'맛보기 시작시간(초)
	SPL_ETM = TRIM(fncRequest("SPL_ETM"))      		'맛보기 종료시간(초)

	'#001 INS(START)
	UseWidth = Trim(request("UseWidth"))
	UseHeight = Trim(request("UseHeight"))
	'#001 INS( END )

	'뉴플레이어 환경 취득
	SET1 = "1":SET2 = "2":SET3 = "1":SET4 = "2":SET5 = "Y"

	'고화질 인경우 10을 뺀다

	if DNG_KBN <> "" And DNG_KBN <> "evt" then
'		if cLng(DNG_KBN) < 100 then
'			DNG_KBN = cLng(DNG_KBN) - 10
'		end if
		IF CHR_CD = "" THEN SET4 = "5"
	end if

bIdx = false

'맛보기강좌의 인덱스가 있는가..
'strSql = "select top 1 lm_lec_cd from ms_lec_mas with(nolock) join md_lec_idx with(nolock) on lm_lec_cd=li_lec_cd and lm_chr_cd="&chr_cd&" order by lm_lec_cd"

if LEC_CD <> "" Then
	strSql = "select top 1 lm_lec_cd from ms_lec_mas with(nolock) join md_lec_idx with(nolock) on lm_lec_cd=li_lec_cd and lm_chr_cd="& chr_cd &" and li_lec_cd="& LEC_CD &"order by lm_lec_cd"
	Set Rs = DbExec(strSql, "study")
	If not Rs.Eof Then
		bIdx = true
	End If
	Call Rsclose(Rs)
end if

If bIdx OR  INSTR(1,"/101/12143/12907/",DNG_KBN)>0  Then
	tab_url = "sPlayerFree_Tab3"
Else
	tab_url = "sPlayerFree_Tab1"
End If

	vSql = "insert into ms_vod_free_log (chr_cd,lec_cd,mem_id, play_gbn) select '" & CHR_CD & "', '" & LEC_CD & "','" & GETUID() & "','sPlayerFree' "
	Call ExecuteSQL(vSql, oRs)
	Call RSClose(oRs)
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
<%
If SET3 = "1" Then
	Response.Write "fncStdWindow();"
Else
	Response.Write "fncFullWindow();"
End If
%>

/////현재 시간값 구하기
var current_time;
current_time = "<%Response.Write cstr(date())+" "+ cstr(hour(now())) + +":"+ cstr(minute(now())) + ":" + cstr(second(now()))%>" ;

//-->
</script>

<script language="vbscript">
	'sub document_onkeydown
	'	msgbox "마우스 오른쪽 버튼은 사용할수 없습니다.", 48, "알림"
	'end sub

	'sub document_onmousedown
	'	if window.event.button = 2 or window.event.button = 3 then
	'		msgbox "마우스 오른쪽 버튼은 사용할수 없습니다.", 48, "알림"
	'	end if
	'end sub
</script>

</head>

<frameset name="player_top" id="player_top" cols="*,<% If KBN = "55" Or KBN = "40" Then %>251<% Else %>0<% End If %>" frameborder="no" border="0" framespacing="0">
    <frame id="frame1" src="Player_Mega.asp?PLAYER_TYPE=<%=PLAYER_TYPE%>&KBN=<%=KBN%>&TEC_NM=<%=TEC_NM%>&CHR_CD=<%=CHR_CD%>&APP_NO=<%=APP_NO%>&LEC_CD=<%=LEC_CD%>&LEC_SEQ=<%=LEC_SEQ%>&UseWidth=<%=UseWidth%>&UseHeight=<%=UseHeight%>&SET2=<%=SET2%>&SET3=<%=SET3%>&SET5=<%=SET5%>&SET6=<%=SET6%>&SET7=<%=SET7%>&WIDE_KBN=<%=WIDE_KBN%>&DNG_KBN=<%=DNG_KBN%>&Relay_yn=<%=Relay_yn%>&SPL_STM=<%=SPL_STM%>&SPL_ETM=<%=SPL_ETM%>&vt=<%= t_timestamp %>" id="player_main" name="player_main" scrolling="No" noresize="noresize"><%'#001 UPD%>
    <frame id="frame2" src="/player/Cate/md_tab/<%=tab_url%>.asp?CHR_CD=<%=CHR_CD%>&DNG_KBN=<%=DNG_KBN%>&WIDE_KBN=<%=WIDE_KBN%>&lec_cd=<%=LEC_CD%>&UseWidth=<%=UseWidth%>&UseHeight=<%=UseHeight%>&SPL_STM=<%=SPL_STM%>&SPL_ETM=<%=SPL_ETM%>&vt=<%= t_timestamp %>" id="player_right" name="player_right" scrolling="No" noresize="noresize"><%'#001 UPD%>
</frameset>
</html>
