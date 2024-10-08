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
'20100319	김정권	#001	강좌(강의)인덱스 대응
'20120406	S.HAN	#002	SuperWide 대응
'=======================================================================
	Response.AddHeader "Pragma","no-cache"
	Response.AddHeader "cache-control", "no-store"
    Response.Expires    = -1
%>
<%'공통 인클루드 페이지 시작 %>
<!-- #include virtual = "/common/inc/RSexec.asp"-->
<!-- #include virtual = "/common/inc/VarDef.asp"-->
<!-- #include virtual = "/common/inc/FunDef.asp"-->
<%'공통 인클루드 페이지 마침 %>
<%
	'TEC_NM = Trim(fncRequest("TEC_NM"))
	'CHR_CD 	= Trim(fncRequest("CHR_CD"))
	'APP_NO 	= Trim(fncRequest("APP_NO"))
	'LEC_SEQ	= Trim(fncRequest("LEC_SEQ"))
	'WIDE_KBN= fncRequest("WIDE_KBN")		'와이드 구분 Y:와이드
	'DNG_KBN	= fncRequest("DNG_KBN")			'동영상 구분 1:쌩쌩 2:일반
	'Relay_yn = request("Relay_yn")
	sel_lec_cd = fncRequest("sel_lec_cd")
	relay = fncRequest("relay")
	'tmp_lec_cd = ""

	UseWidth = getParamInt( "UseWidth", 0)
	UseHeight = getParamInt( "UseHeight", 0)

'#################
'파라미터 확인
'LEC_CD 만으로 처리 / 나머지는 필요 없음
'#################
	KBN = Trim(fncRequest("KBN"))					'구분 60이면 단원
	LEC_CD 	= Trim(fncRequest("LEC_CD"))

'	Response.write KBN & "," & LEC_CD
'	Response.end
	If KBN = "" Or LEC_CD = "" Then
		Response.Write "<script>try{alert('해당 강좌를 수강할 권한이 없습니다.(1)');window.opener=self;self.close();}catch(e){window.close();}</script>"
		Response.End
	End If


'강의 수강 권한 체크
	Dim lo_mem_nm
'	vSql = "select lm_chr_cd " & _
'			"from dbo.ms_lec_mas with (nolock) " & _
'			"inner join dbo.ms_app_dtl with (nolock) on lm_chr_cd = ad_chr_cd " & _
'			"inner join dbo.ms_std_app with (nolock) on ad_app_no = sa_app_no " & _
'			"inner join dbo.ms_chr_mas with (nolock) on lm_chr_cd = cm_chr_cd " & _
'			"where lm_lec_cd = " & LEC_CD & " " & _
'			"and ad_app_type = '1' " & _
'			"and ad_std_stat = '2' " & _
'			"and ad_std_sdt <= getdate() " & _
'			"and ad_std_edt >= getdate() " & _
'			"and cm_make_type <> '62' " & _
'			"and sa_pay_flg <> '51' " & _
'			"and sa_mem_id = '" & cook_id & "' "
	vSql = "exec USP_GET_LEC_ING '" & cook_id & "'," & LEC_CD & " "
'	Response.write vSql
'	Response.end
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
		Response.Write "<script>try{alert('해당 강좌를 수강할 권한이 없습니다.(2)');window.opener=self;self.close();}catch(e){window.close();}</script>"
		Response.End
	End If

	'Response.write "OK"
	'Response.end

	'사이즈 체크
	If InStr("#lakemind7#lakemind8#lakemind1#","#" & cook_id & "#") Then
		new_size = "Y"
	Else
		new_size = "N"
	End If
	new_size = "Y"

	If new_size = "Y" Then
		new_tabsize = 270
		new_cutsize = 0
		If KBN = "S" Then '''고화질의 경우
			If UCase(WIDE_KBN) = "Y" Then	'와이드인 경우 화면 크기 크게하기
				If UseHeight > 0 And UseHeight > 0 Then
					If UseWidth > 1600 Then
						stype = 1 '고화질1
						newGWidth = 1580 : newGHeight = 840 : new_cutsize = 80 : new_childsize = 225
					ElseIf UseWidth > 1200 Then
						If UseHeight <= 720 Then
							stype = 2 '고화질2
							newGWidth = 1240 : newGHeight = 690 : new_cutsize = 90 : new_childsize = 200
						Else 
							stype = 3 '고화질3
							newGWidth = 1240 : newGHeight = 690 : new_cutsize = 90 : new_childsize = 200
						End If
					Else 
						stype = 4 '고화질4
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
		Else '950,520 ''''일반화질의 경우
				stype = 9
				newGWidth = 900 + new_tabsize : newGHeight = 600 : new_cutsize = 0
				intGWidth2X = UseWidth : intGHeight2X = UseHeight
		End If
		strUserAgent = UCase(cstr(request.ServerVariables("HTTP_USER_AGENT")))
		If InStr(strUserAgent,"MSIE") Or InStr(strUserAgent,"trident") Or InStr(strUserAgent,"edge") Then
'			new_childsize = new_childsize - 100
		End If
	End If

	'뉴플레이어 환경 취득
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

		'강좌의 인덱스가 있는가..
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
<script  language=javascript >
window.onbeforeunload = function() {};
// IE9 팝업창이 먼저 닫히는 버그수정
</script>
<script>
<!--
	<% If new_size = "Y" Then %>
		//var a = prompt("test","KBN : <%= KBN %>, WIDE_KBN : <%=WIDE_KBN  %>, newGWidth : <%= newGWidth %>, newGHeight : <%= newGHeight %>, new_cutsize : <%= new_cutsize %>");
	<% End If %>
	var varAlpha_Play=0;        //알파브레인-플레이 구분
	var varAlpha_Mode=0;        //알파브레인-모드 구분
	var varAlpha_Volume=16;     //알파브레인-음략 구분
	var varAlpha_Sound=5;       //알파브레인-음색 구분
	var varAlpha_Mute=0;        //알파브레인-음소거

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

	// 창위치 설정
	function fncStdWindow2() {
		//alert("fncStdWindow2");
		window.moveTo(0,0);
		<% If KBN = "S" Then %>
			<%If WIDE_KBN = "Y" Then%>
				window.resizeTo(1050,575);	//WIDE
			<%Else%>
				window.resizeTo(800,575);	//비 WIDE
			<%End If%>
		<% Else %>
				window.resizeTo(950,520);	//비 WIDE
		<% End If %>
	}
	function fncStdWindow() {
		<% If new_size = "Y" Then %>
			//alert("fncStdWindow");
			window.moveTo(0,0);
			<%If WIDE_KBN = "Y" Then%>
				//window.resizeTo(<%= newGWidth %>,<%= newGHeight %>);	//WIDE
			<%Else%>
				window.resizeTo(1050,740);	//비 WIDE
			<%End If%>
		<% Else %>
			parent.moveTo(0,0);
			<%If WIDE_KBN = "Y" Then%>
				parent.resizeTo(1050,575);	//WIDE
			<%Else%>
				parent.resizeTo(1050,740);	//비 WIDE
			<%End If%>
		<% End If %>
	}

	// 창크기 설정
	function fncFullWindow() {
		//alert("fncFullWindow");
		parent.moveTo(0,0);
		parent.resizeTo(screen.width+7,screen.height+3);
	}

	fncStdWindow();
	//fncFullWindow();

	/////현재 시간값 구하기
	var current_time;
	current_time = "<%Response.Write cstr(date())+" "+ cstr(hour(now())) + +":"+ cstr(minute(now())) + ":" + cstr(second(now()))%>" ;

	function fncSelectPlay() {
		var str = document.getElementById("player_right").src;

		if (document.getElementById("player_right").contentWindow.lecform) {	// 강의폼이 첫번째 탭에 있다면 실행 20120608 CHOIJH
			document.getElementById("player_right").contentWindow.SetSelectPlay();
		}
	}


//-->
</script>
</head>

<body style="background-color:#2d2d2f;margin:0;height:100%;">
	<table border="0" cellspacing="0" cellpadding="0" style="width:100%;height:100%;">
	<tr style="height:100%;">
		<td id="view_1" width="*">
		<% If new_size = "N" Then %>
			<iframe src="Player_Mega.asp?PLAYER_TYPE=<%=PLAYER_TYPE%>&KBN=<%=KBN%>&TEC_NM=<%=TEC_NM%>&CHR_CD=<%=CHR_CD%>&APP_NO=<%=APP_NO%>&LEC_CD=<%=LEC_CD%>&LEC_SEQ=<%=LEC_SEQ%>&UseWidth=<%=UseWidth%>&UseHeight=<%=UseHeight%>&SET2=<%=SET2%>&SET3=<%=SET3%>&SET5=<%=SET5%>&SET6=<%=SET6%>&SET7=<%=SET7%>&WIDE_KBN=<%=WIDE_KBN%>&DNG_KBN=<%=DNG_KBN%>&Relay_yn=<%=Relay_yn%>&relay=<%= relay %>" id="player_main" name="player_main" width="100%" height="100%" frameborder="0" scrolling="no" allowfullscreen webkitallowfullscreen mozallowfullscreen></iframe>
		<% Else %>
			<iframe src="Player_Mega.asp?PLAYER_TYPE=<%=PLAYER_TYPE%>&KBN=<%=KBN%>&TEC_NM=<%=TEC_NM%>&CHR_CD=<%=CHR_CD%>&APP_NO=<%=APP_NO%>&LEC_CD=<%=LEC_CD%>&LEC_SEQ=<%=LEC_SEQ%>&UseWidth=<%=UseWidth%>&UseHeight=<%=UseHeight%>&SET2=<%=SET2%>&SET3=<%=SET3%>&SET5=<%=SET5%>&SET6=<%=SET6%>&SET7=<%=SET7%>&WIDE_KBN=<%=WIDE_KBN%>&DNG_KBN=<%=DNG_KBN%>&Relay_yn=<%=Relay_yn%>&relay=<%= relay %>" id="player_main" name="player_main" width="<%= newGWidth - new_tabsize %>" height="<%= newGHeight - new_cutsize %>" frameborder="0" scrolling="no" allowfullscreen webkitallowfullscreen mozallowfullscreen></iframe>
		<% End If %>
		</td>
<% If KBN = "S" Then %>
		<td id="view_2" width="251">
		<% If new_size = "N" Then %>
			<iframe src="<%=Tab_Url%>?PLAYER_TYPE=<%=PLAYER_TYPE%>&KBN=<%=KBN%>&CHR_CD=<%=CHR_CD%>&APP_NO=<%=APP_NO%>&LEC_CD=<%=LEC_CD%>&LEC_SEQ=<%=LEC_SEQ%>&UseWidth=<%=UseWidth%>&UseHeight=<%=UseHeight%>&WIDE_KBN=<%=WIDE_KBN%>&sel_lec_cd=<%=sel_lec_cd%>&Idx_flg=<%=Idx_flg%>" id="player_right" name="player_right" width="100%" height="100%" frameborder="0" scrolling="no"></iframe>
		<% Else %>
			<iframe src="<%=Tab_Url%>?PLAYER_TYPE=<%=PLAYER_TYPE%>&KBN=<%=KBN%>&CHR_CD=<%=CHR_CD%>&APP_NO=<%=APP_NO%>&LEC_CD=<%=LEC_CD%>&LEC_SEQ=<%=LEC_SEQ%>&UseWidth=<%=UseWidth%>&UseHeight=<%=UseHeight%>&WIDE_KBN=<%=WIDE_KBN%>&sel_lec_cd=<%=sel_lec_cd%>&Idx_flg=<%=Idx_flg%>" id="player_right" name="player_right" width="100%" height="<%= newGHeight - new_cutsize %>" frameborder="0" scrolling="no"></iframe>
		<% End If %>
		</td>
<% End If %>		
	</tr>
	</table>
</body>

<!--frameset name="player_top" cols="*,<% If KBN = "S" Then %>251<% Else %>0<% End If %>" frameborder="no" border="0" framespacing="0">
    <frame src="Player_Mega.asp?PLAYER_TYPE=<%=PLAYER_TYPE%>&KBN=<%=KBN%>&TEC_NM=<%=TEC_NM%>&CHR_CD=<%=CHR_CD%>&APP_NO=<%=APP_NO%>&LEC_CD=<%=LEC_CD%>&LEC_SEQ=<%=LEC_SEQ%>&UseWidth=<%=UseWidth%>&UseHeight=<%=UseHeight%>&SET2=<%=SET2%>&SET3=<%=SET3%>&SET5=<%=SET5%>&SET6=<%=SET6%>&SET7=<%=SET7%>&WIDE_KBN=<%=WIDE_KBN%>&DNG_KBN=<%=DNG_KBN%>&Relay_yn=<%=Relay_yn%>&relay=<%= relay %>" id="player_main" name="player_main" scrolling="No">
    <frame src="<%=Tab_Url%>?PLAYER_TYPE=<%=PLAYER_TYPE%>&KBN=<%=KBN%>&CHR_CD=<%=CHR_CD%>&APP_NO=<%=APP_NO%>&LEC_CD=<%=LEC_CD%>&LEC_SEQ=<%=LEC_SEQ%>&UseWidth=<%=UseWidth%>&UseHeight=<%=UseHeight%>&WIDE_KBN=<%=WIDE_KBN%>&sel_lec_cd=<%=sel_lec_cd%>&Idx_flg=<%=Idx_flg%>" id="player_right" name="player_right" scrolling="No" noresize>
</frameset-->

</html>


