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
    cook_id = fncRequest("cook_id")

    PLAYER_TYPE = TRIM(fncRequest("PLAYER_TYPE"))            'N�߰����� ���� , S �߰�����
    PLAYER_TYPE="N"   '�߰����� ����, ��Ʈ�� ����

	TEC_NM = TRIM(fncRequest("TEC_NM"))
	CHR_CD 	= TRIM(fncRequest("CHR_CD"))
	APP_NO 	= TRIM(fncRequest("APP_NO"))
	LEC_CD 	= TRIM(fncRequest("LEC_CD"))
	LEC_SEQ	= TRIM(fncRequest("LEC_SEQ"))
	KBN    =  TRIM(fncRequest("dng_kbn"))
	DNG_KBN    =  TRIM(fncRequest("dng_kbn"))
	CHR_NM 	= TRIM(fncRequest("CHR_NM"))
	DNG_FLG = TRIM(fncRequest("DNG_FLG"))		'������ FLAG
	DNG_CD = TRIM(fncRequest("DNG_CD"))
	WIDE_KBN= ucase(fncRequest("WIDE_KBN"))	'���̵� ���� Y:���̵�
	TEC_CD 	= TRIM(fncRequest("TEC_CD"))
	NO	= TRIM(fncRequest("NO"))
	ST_FILENAME = TRIM(fncRequest("ST_FILENAME"))
	TAB_DOM = TRIM(fncRequest("TAB_DOM"))      '���� ���� ���¼Ұ� ����

	'S20100312	INS	W.J.JANG	#001
	SPL_STM = TRIM(fncRequest("SPL_STM"))				'������ ���۽ð�(��)
	SPL_ETM = TRIM(fncRequest("SPL_ETM"))      		'������ ����ð�(��)

	'#001 INS(START)
	UseWidth = Trim(request("UseWidth"))
	UseHeight = Trim(request("UseHeight"))
	'#001 INS( END )

	'���÷��̾� ȯ�� ���
	SET1 = "1":SET2 = "2":SET3 = "1":SET4 = "2":SET5 = "Y"

	'��ȭ�� �ΰ�� 10�� ����

	if DNG_KBN <> "" And DNG_KBN <> "evt" then
'		if cLng(DNG_KBN) < 100 then
'			DNG_KBN = cLng(DNG_KBN) - 10
'		end if
		IF CHR_CD = "" THEN SET4 = "5"
	end if

bIdx = false

'�����Ⱝ���� �ε����� �ִ°�..
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

'If cook_id = "lakemind9" Then
'	Response.write DNG_KBN & "<br>"
		If DNG_KBN = "45" Or DNG_KBN = "55" Then
'	Response.write CHR_CD & "<br>"
			IF CHR_CD <> "" And CHR_CD <> "101" And CHR_CD <> "13482" And CHR_CD <> "13190" And CHR_CD <> "13646" And CHR_CD <> "14310" And CHR_CD <> "14665" And CHR_CD <> "14666" And CHR_CD <> "14667" And CHR_CD <> "14672" And CHR_CD <> "14668" And CHR_CD <> "14669" And CHR_CD <> "14670" And CHR_CD <> "14671" And CHR_CD <> "14675" And CHR_CD <> "14674" And Instr(lcase(Chr_cd),"open") = 0 THEN
				err_yn = "N"
				strSql = "select top 1 * from md_spl_list with (nolock) where sl_chr_cd = " & CHR_CD & " and sl_lec_cd = " & LEC_CD & " and sl_del_flg = '0' "
'	Response.write strSql & "<br>"
				SET RS = DBexec(strSql,"study")
				If RS.EOF Then
					err_yn = "Y"
				End If
				Call DBClose(RS)
'	Response.write err_yn & "<br>"

				If err_yn = "Y" Then
					Response.Write "<script>try{alert('�ش� ���� ���� ������ �����ϴ�.(err1004)');window.opener=self;self.close();}catch(e){window.close();}</script>"
					Response.End
				End If
			End If
		End If
'	Response.end
'End If
	vSql = "insert into ms_vod_free_log (chr_cd,lec_cd,mem_id, play_gbn) select '" & CHR_CD & "', '" & LEC_CD & "','" & cook_id & "','sPlayerFree' "
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
<%
If SET3 = "1" Then
	Response.Write "fncStdWindow();"
Else
	Response.Write "fncFullWindow();"
End If
%>

/////���� �ð��� ���ϱ�
var current_time;
current_time = "<%Response.Write cstr(date())+" "+ cstr(hour(now())) + +":"+ cstr(minute(now())) + ":" + cstr(second(now()))%>" ;

//-->
</script>

<script language="vbscript">
	'sub document_onkeydown
	'	msgbox "���콺 ������ ��ư�� ����Ҽ� �����ϴ�.", 48, "�˸�"
	'end sub

	'sub document_onmousedown
	'	if window.event.button = 2 or window.event.button = 3 then
	'		msgbox "���콺 ������ ��ư�� ����Ҽ� �����ϴ�.", 48, "�˸�"
	'	end if
	'end sub
</script>

</head>

<body style="background-color:#2d2d2f;margin:0;height:100%;">
	<table border="0" cellspacing="0" cellpadding="0" style="width:100%;height:100%;">
	<tr style="height:100%;">
		<td id="view_1" width="*">
			<iframe src="Player_Mega.asp?PLAYER_TYPE=<%=PLAYER_TYPE%>&KBN=<%=KBN%>&TEC_NM=<%=TEC_NM%>&CHR_CD=<%=CHR_CD%>&APP_NO=<%=APP_NO%>&LEC_CD=<%=LEC_CD%>&LEC_SEQ=<%=LEC_SEQ%>&UseWidth=<%=UseWidth%>&UseHeight=<%=UseHeight%>&SET2=<%=SET2%>&SET3=<%=SET3%>&SET5=<%=SET5%>&SET6=<%=SET6%>&SET7=<%=SET7%>&WIDE_KBN=<%=WIDE_KBN%>&DNG_KBN=<%=DNG_KBN%>&Relay_yn=<%=Relay_yn%>&SPL_STM=<%=SPL_STM%>&SPL_ETM=<%=SPL_ETM%>&vt=<%= t_timestamp %>" id="player_main" name="player_main" width="100%" height="100%" frameborder="0" scrolling="no" allowfullscreen webkitallowfullscreen mozallowfullscreen></iframe>
		</td>
		<td id="view_2" width="251">
			<iframe src="/player/Cate/md_tab/<%=tab_url%>.asp?CHR_CD=<%=CHR_CD%>&DNG_KBN=<%=DNG_KBN%>&WIDE_KBN=<%=WIDE_KBN%>&lec_cd=<%=LEC_CD%>&UseWidth=<%=UseWidth%>&UseHeight=<%=UseHeight%>&SPL_STM=<%=SPL_STM%>&SPL_ETM=<%=SPL_ETM%>&vt=<%= t_timestamp %>" id="player_right" name="player_right" width="100%" height="100%" frameborder="0" scrolling="no"></iframe>
		</td>
	</tr>
	</table>
</body>

<!--frameset name="player_top" id="player_top" cols="*,<% If KBN = "55" Or KBN = "40" Then %>251<% Else %>0<% End If %>" frameborder="no" border="0" framespacing="0">
    <frame id="frame1" src="Player_Mega.asp?PLAYER_TYPE=<%=PLAYER_TYPE%>&KBN=<%=KBN%>&TEC_NM=<%=TEC_NM%>&CHR_CD=<%=CHR_CD%>&APP_NO=<%=APP_NO%>&LEC_CD=<%=LEC_CD%>&LEC_SEQ=<%=LEC_SEQ%>&UseWidth=<%=UseWidth%>&UseHeight=<%=UseHeight%>&SET2=<%=SET2%>&SET3=<%=SET3%>&SET5=<%=SET5%>&SET6=<%=SET6%>&SET7=<%=SET7%>&WIDE_KBN=<%=WIDE_KBN%>&DNG_KBN=<%=DNG_KBN%>&Relay_yn=<%=Relay_yn%>&SPL_STM=<%=SPL_STM%>&SPL_ETM=<%=SPL_ETM%>&vt=<%= t_timestamp %>" id="player_main" name="player_main" scrolling="No" noresize="noresize"><%'#001 UPD%>
    <frame id="frame2" src="/player/Cate/md_tab/<%=tab_url%>.asp?CHR_CD=<%=CHR_CD%>&DNG_KBN=<%=DNG_KBN%>&WIDE_KBN=<%=WIDE_KBN%>&lec_cd=<%=LEC_CD%>&UseWidth=<%=UseWidth%>&UseHeight=<%=UseHeight%>&SPL_STM=<%=SPL_STM%>&SPL_ETM=<%=SPL_ETM%>&vt=<%= t_timestamp %>" id="player_right" name="player_right" scrolling="No" noresize="noresize"><%'#001 UPD%>
</frameset-->
</html>
