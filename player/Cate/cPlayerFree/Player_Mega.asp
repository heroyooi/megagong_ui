<%
'=======================================================================
'�� �� �� : �ް�CST-������ �÷��̾�
'����� : ������ �÷��̾�
'�� �� �� : Player_Mega.asp
'�ۼ����� : 2016/09/07
'�� �� �� : �� �� ȫ
'-----------------------------------------------------------------------
'��������   ������  ��������
'=======================================================================
' ������ ������ �ҽ��� �ٸ��� ���ǰ� �ʿ��մϴ�.
'=======================================================================
%>

<!-- ���� ��Ŭ��� ������ ���� -->
<!-- #include virtual = "/common/inc/RSexec.asp" -->
<!-- #include virtual = "/common/inc/VarDef.asp"-->
<!-- #include virtual = "/common/inc/FunDef.asp"-->
<!-- #include virtual = "/player/Cate/cate_inc.asp"-->

<!-- #include virtual="/player/Cate/JSON_2.0.4.asp" -->
<!-- #include virtual="/player/Cate/JSON_UTIL_0.1.1.asp" -->

<!-- ���� ��Ŭ��� ������ ��ħ -->
<%
	campusYN = getCampStuYN(2)
	If campusYN <> "Y" Then 
		Response.write "<script>alert('������ ���� �����Դϴ�.')</script>"
		Response.End 
	End If 
	
	If isRealServer() Then 
		If COMM_USER_IP <> "211.58.239.140" And COMM_USER_IP <> "211.58.239.150" And COMM_USER_IP <> "211.58.239.151" And COMM_USER_IP <> "106.255.241.90" And Left(COMM_USER_IP, 10) <> "172.15.13." And COMM_USER_IP <> "210.120.44.140" And COMM_USER_IP <> "121.65.27.166" Then 
			Response.write "<script>alert('������ ���� �������Դϴ�.-" & COMM_USER_IP & "')</script>"
			Response.End 
		End If 
	End If 

	'========================================================================================
	'�𷯽��� �����Ű���� �ٸ��Ƿ�, �ش� �������� ����
	security_key = "megacampus2"	'���� ���� Ű(CMS ���� ���������� Ȯ�� ����)
	awt_code = ""								'����� ���͸�ũ �ڵ�(API�� �������� ��)
	expire_time = 12000							'��ū ��ȿ�Ⱓ(������ �ð����� �ʴ���) 200��
	playlist_flag = FALSE						'���� ������� ����

	SERVICE_ACCOUNT_KEY = "megacampus2"
	CUSTOM_USER_KEY = "a12784a3d7368fb92ad1c416b97be22852cc911de46e19b04109eb1ea688430a"
	'========================================================================================

	uId = LCase(Request.cookies("userid"))			'ȸ�� ���̵� ���
	mem_type = LCase(request.cookies("mem_type"))	'ȸ�� Ÿ��

	cd = TRIM(REQUEST("cd"))
	


	UseWidth = "1764"
	UseHeight = "1080"
	'#005 20120409 S.HAN INS( END )


	CALL_TYPE = 1		'1: ȣ�����    2 : URL ȣ��
	CALL_URL  = ""
	CM_WMT9_SPL=""               '�������ϸ�

	SPL_STM = 0			'������ ���۽ð�
	SPL_ETM = 0			'������ ����ð�


' ������ ũ�� ����------------------------------------------
	'If UCase(WIDE_KBN) = "Y" Then	'���̵��� ��� ȭ�� ũ�� ũ���ϱ�
		'#005 20120409 S.HAN UPD(START)
		'intGWidth = 1050 : intGHeight = 720
		'intGWidth2X = 1660 : intGHeight2X = 1260
		If UseWidth > 1600 Then 
			intGWidth = 1583 : intGHeight = 830
		ElseIf UseWidth > 1200 Then 
			If UseHeight <= 690 Then					' �߰� : 1280 * 720 ���� 
				intGWidth = 1190 : intGHeight = 670
			Else 
				intGWidth = 1240 : intGHeight = 688
			End If 
		Else 
			intGWidth = 883 : intGHeight = 645
		End If 
		intGWidth2X = UseWidth : intGHeight2X = UseHeight
		'#005 20120409 S.HAN UPD( END )
	'Else
		'#005 20120409 S.HAN UPD(START)
		'intGWidth = 1050 : intGHeight = 760
		'intGWidth2X = 1660 : intGHeight2X = 1260
'		intGWidth = 1065 : intGHeight = 725
'		intGWidth2X = UseWidth : intGHeight2X = UseHeight
		'#005 20120409 S.HAN UPD( END )
'	End If


'�ƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢ�
'	ȸ�� �÷��� ����������� start
strSql = "select sp_speed, sp_size, sp_alwaysontop, sp_block, sp_audio, sp_audio_pop from md_set_play with(nolock) where sp_mem_id='"&Cook_Id&"' "

Set Rs = DbExec(strSql, "study")
If Not Rs.Eof Then
	sp_speed = Trim(Rs(0))
	sp_size = Trim(Rs(1))
	sp_alwaysontop = Trim(Rs(2))
	sp_block = Trim(Rs(3))
	sp_audio = Trim(Rs(4))
	sp_audio_pop = Trim(Rs(5))

	bPlaySave = "Y"
Else
	sp_speed = 1000
	sp_size = "iSizeStd"
	sp_alwaysontop = "0"
	sp_block = 30
	bPlaySave = "N"
End If
Call RsClose(Rs)
'	ȸ�� �÷��� ����������� end
'�ƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢ�


'�ƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢ�
'	ȸ�� ���� ����������� start
strSql = "select sm_brightness,sm_hue,sm_contrast,sm_saturation from md_set_movie with(nolock) where sm_mem_id='"&Cook_Id&"' "

Set Rs = DbExec(strSql, "study")
If Not Rs.Eof Then
	sm_brightness = Trim(Rs(0))
	sm_hue = Trim(Rs(1))
	sm_contrast = Trim(Rs(2))
	sm_saturation = Trim(Rs(3))
Else
	sm_brightness = 8
	sm_hue = 2
	sm_contrast = 128
	sm_saturation = 64
End If
Call RsClose(Rs)
'	ȸ�� ���� ����������� end
'�ƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢ�


'	ȸ�� ���� ����������� end
'�ƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢ�

	Dim loginid
	'//////////////////////////////////////////////////////////////////////////
	' �̵����� �Ķ���� ����
	'//////////////////////////////////////////////////////////////////////////
	Dim userId

	'��ȣȭ ���� �۾�
	Dim kollus
	Set kollus = Server.CreateObject("KollusCrypt.Encrypt")

	Dim media_token, security_key, media_content_key, media_profile_key, awt_code, client_user_id, expire_time, playlist_flag

	'media_content_key = Trim(CONTENT_KEY)		'ä�ο� �Ҵ�� �̵�� ������ Ű
	media_content_key = Trim(cd)		'ä�ο� �Ҵ�� �̵�� ������ Ű
	If IsNull(media_content_key) Or media_content_key = "" Then
		Response.Write "<script language='javascript'>alert('������ �����ϴ�.');parent.self.close();</script>"
		Response.End
	End If

	'media_profile_key = security_key&"-mobile1-normal"				'���ڵ� �������� Ű(ȭ�� ����) - ����� �Ϲ�ȭ��
	media_profile_key = security_key&"-pc1-hd"				'���ڵ� �������� Ű(ȭ�� ����) - ���ۿ��̵� ��ȭ��

	client_user_id = ""
	'media_token = kollus.kollus_media_link_by_userid(security_key, media_content_key, media_profile_key, awt_code, client_user_id, expire_time, playlist_flag)

	' media_token�� ��� ������ ������
	' http://v.kr.kollus.com/s?key=[$media_token] �� ���·� �̿��Ͻø� �˴ϴ�.
	Set kollus = Nothing

	if SPL_STM = "" or IsNull(SPL_STM) then
		SPL_STM = 0			'������ ���۽ð�
	end if
	if SPL_ETM = ""  or IsNull(SPL_ETM) then
		SPL_ETM = 0			'������ ����ð�
	end if


	'�ƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢ�
	' �÷��̾� JWTó��
	'�ƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢ�
	Dim Payload, mc, JWTHead, temp()
	Set JWTHead = jsObject()
	JWTHead("typ") = "JWT"
	JWTHead("alg") = "HS256"

	Set mc = jsObject()
	mc("intr") = False
	mc("mckey") = media_content_key

	'mc("mcpf") = security_key&"-mobile1-normal"				'���ڵ� �������� Ű(ȭ�� ����) - ����� �Ϲ�ȭ��
	mc("mcpf") = security_key&"-pc1-high"				'���ڵ� �������� Ű(ȭ�� ����) - ���ۿ��̵� ��ȭ��

	reDim temp(0)
	Set temp(0) = mc

	Set Payload = jsObject()
	Payload("cuid") = cook_id
	Payload("expt") = DateDiff("s", "01/01/1970 00:00:00", Now())
	Payload("mc") = temp

	tmp = Base64encode_cate(toJSON(JWTHead)) + "." + Base64encode_cate(toJSON(Payload))

	Dim sha256
	Set sha256 = GetObject( "script:" & Server.MapPath("/player/Cate/sha256.wsc") )
	sha256.hexcase = 0

	Dim result
	customKey=CUSTOM_USER_KEY
	result = sha256.b64_hmac_sha256(SERVICE_ACCOUNT_KEY, tmp)
	result = Server.URLEncode(result)

	'uservalues = "&uservalue0=&uservalue1=&uservalue2=&uservalue3=&uservalue4=P&uservalue5=0"
%>
<!DOCTYPE html PUBLIC "-/W3C/DTD XHTML 1.0 Transitional/EN" "http:/www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http:/www.w3.org/1999/xhtml">
<head>
<meta charset="euc-kr" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<link href="<%=img_main%>/common/css/201504/2013_style.css" rel="stylesheet" type="text/css">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet" integrity="sha256-MfvZlkHCEqatNoGiOXveE8FIwMzZg4W85qfrfIFBfYc= sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==" crossorigin="anonymous">
<script language="JavaScript" src="<%=img_main%>/common/js/common.js?vt=<%=t_server_time%>"></script>
<script src="https://code.jquery.com/jquery-1.11.3.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" integrity="sha256-Sk3nkD6mLTMOF0EOpNtsIry+s1CsaqQC1rVLTAy+0yc= sha512-K1qjQ+NcF2TYO/eI3M6v8EiNYZfA95pQumfvcVrTHtwQVDG+aHRqLi/ETn2uB+1JqwYqVG3LIvdm9lj6imS/pQ==" crossorigin="anonymous"></script>
<script src="<%'=img_main%>/common/js/kollus.videogateway-controller.min.js"></script>
<SCRIPT language=javascript>
	//#001 20120409 S.HAN INS(START)
	// ������ ���� Ȯ��
	var winPosition = navigator.appVersion.lastIndexOf('MSIE');
	var winVersion = navigator.appVersion.substr(winPosition + 10, 12);
	//#001 20120409 S.HAN INS( END )

	// ȭ��ũ�� �ʱ� ���� Ȯ���ϴ� flag
	var isInitSize = false;

	// ���� ȭ��ũ�� ����
	// 100% ũ���� ���� Width, Height
	var gWidth		= <%=intGWidth%>;
	var gHeight		= <%=intGHeight%>;

	// 200% ũ���� ���� Width, Height
	var gWidth2X	= <%=intGWidth2X%>;
	var gHeight2X	= <%=intGHeight2X%>;

	//#001 20120409 S.HAN INS(START)
	var cutWidth = 0;
	var cutHeight = 0;

	if (winVersion == "Windows NT 5")
	{
		cutHeight = 0;			// ����XP���
	}else{
		cutHeight = -12;
	}

    // 0 : Default ȭ��, 1 : Fullscreen
    var screenMode = 0;

    // ���� ������, iSizeFull:��ü, iSizeStd:ǥ��, iSizeBig:Ȯ��
	var strSize = "iSizeStd";

	var sBtnStatus = "pause";

	var vCompleteFlg = false;	// ���ϷῩ��(true:�Ϸ�, false:�̿Ϸ�)
	var vAllPlayTime;	//������ð�
	var vCurPlayTime=0;	//������ð�_��ġ

	var APT_Timer;
	var Final_Study_Point;
	var hGetPosition;

	function HandleClose() {

	}

	function initSize(){
		<% If SET3 = "1" Then 'ǥ�� %>
			strSize = "iSizeStd";
			fncBtnSize('iSizeStd');
		<% Else 'ūȭ�� %>
			strSize = "iSizeBig";
			fncBtnSize('iSizeBig');
		<% End If %>
	}

	function fncImgOn(t){
		$(t).src = $(t).src.replace("_off","_on");
	}
	function fncImgOut(t){
		$(t).src = $(t).src.replace("_on","_off");
	}
	function fncBtnSize(t){

		if (t == "iSizeFull"){
			strSize = "iSizeFull";
			AquaPlayer.SetSizeFull();
		}else if (t == "iSizeStd"){
			strSize = "iSizeStd";
			AquaPlayer.SetSize100();
		}else if (t == "iSizeBig"){
			strSize = "iSizeBig";
			parent.window.moveTo(0,0);
			parent.window.resizeTo(gWidth2X, gHeight2X);	//#001 20120409 S.HAN UPD
		}
	}

	function fncSetSize(e) {
		if (e == "iSizeStd") {
			movieform.iSize.value="iSizeStd";
		} else if (e == "iSizeBig") {
			movieform.iSize.value="iSizeBig";
		} else if (e == "iSizeFull") {
			movieform.iSize.value="iSizeFull";
		}
		fncBtnSize(e);
	}

	function MoveLec(cd) {
		if (cd != "") {
			top.location.href="/player/cate/sPlayer/Player_Load.asp?APP_NO=<%=APP_NO%>&CHR_CD=<%=CHR_CD%>&LEC_CD="+cd;
		}
	}

	function IsNum(f,val) {

		if (!isValidNumber(val)) {
			alert("���ڸ� �Է°��� �մϴ�.");
			f.value="";
			f.focus();
		}
		$("savechk").checked=false;
		return;
	}

	function fncSetRightTab(){
		//alert(right_tab);
		if (movieform.iSize.value == "iSizeStd"){
			if (right_tab == "Y"){
				//parent.window.resizeTo(gWidth-cutWidth+20, gHeight-cutHeight);		//#001 20120409 S.HAN UPD
				parent.window.resizeBy(251, 0);
				//parent.player_top.cols='*,251';
				//parent.document.getElementById("player_top").cols = "*,251";
				$("#view_2", parent.document).show();
				if (isIE()){
					//IE������
				} else {
					//$('#frame2').forceRedraw(true);
				}
				//$('#frame2').forceRedraw(true);
				document.getElementById("frameimg").src = "http://img.megagong.net/player/2015_newskin/arrow_close.gif";
				//$("frameimg").src = $("frameimg").src.replace("_open","_close");
			}else{
				//alert(gHeight);
				//parent.window.resizeTo(gWidth - cutWidth - 231, gHeight-cutHeight);		//#001 20120409 S.HAN UPD
				parent.window.resizeBy(-251, 0);
				//parent.parent.player_top.cols='*,0';
				//parent.document.getElementById("player_top").cols = "*,0";
				$("#view_2", parent.document).hide();
				if (isIE()){
					//IE������
				} else {
					//$('#frame2').forceRedraw(true);
				}
				//alert(document.getElementById("frameimg").src);
				document.getElementById("frameimg").src = "http://img.megagong.net/player/2015_newskin/arrow_open.gif";
				//$("frameimg").src = $("frameimg").src.replace("_close","_open");
			}
		}else if (movieform.iSize.value == "iSizeBig"){
			if (right_tab == "Y"){
				//parent.player_top.cols='*,251';
				$("#view_2", parent.document).show();
				$("frameimg").src = $("frameimg").src.replace("_open","_close");
			}else{
				//parent.player_top.cols='*,0';
				$("#view_2", parent.document).hide();
				$("frameimg").src = $("frameimg").src.replace("_close","_open");
			}
		}
	}

	function fncSetRightTab2(){
		if (movieform.iSize.value == "iSizeStd"){
			if (right_tab == "Y"){
				parent.window.resizeTo(gWidth-cutWidth+20, gHeight-cutHeight);		//#001 20120409 S.HAN UPD
				//parent.player_top.cols='*,251';
				$("#view_2", parent.document).show();
				$("frameimg").src = $("frameimg").src.replace("_open","_close");
			}else{
				parent.window.resizeTo(gWidth - cutWidth - 231, gHeight-cutHeight);		//#001 20120409 S.HAN UPD
				//parent.player_top.cols='*,0';
				$("#view_2", parent.document).hide();
				alert($("frameimg").src);
				$("frameimg").src = $("frameimg").src.replace("_close","_open");
			}
		}else if (movieform.iSize.value == "iSizeBig"){
			if (right_tab == "Y"){
				//parent.player_top.cols='*,251';
				$("#view_2", parent.document).show();
				$("frameimg").src = $("frameimg").src.replace("_open","_close");
			}else{
				//parent.player_top.cols='*,0';
				$("#view_2", parent.document).hide();
				$("frameimg").src = $("frameimg").src.replace("_close","_open");
			}
		}
	}

	function fncRightTab(t){
		//alert(right_tab);
		if (right_tab == "Y"){
			right_tab = "N";
		}else{
			right_tab = "Y";
		}    
		fncSetRightTab();
	}

	var s1 = null;
	var s2 = null;
	var s3 = null;
	var s4 = null;

    function createXMLHttpRequest(){
    	if(window.ActiveXObject){
    		return new ActiveXObject("Microsoft.XMLHTTP");
    	}else if(window.XMLHttpRequest){
    		return new XMLHttpRequest();
    	}
    }

	//#001 20120409 S.HAN INS(START)
	function correctWindowSize(){						// ���� ������ ���� 20120405 CHOIJH
		var ClientH = document.body.clientHeight
		if (gWidth == "1190" && gHeight == "650")									// ������̰� ���������� ���� ��� (1280 * 720)
		{
			if (ClientH > 640 && cutHeight == 0) {									// ���̰� �ּ�â ������ �ƴ϶�� âũ�⸦ �� �� �۰� XP�� ���
				cutHeight = cutHeight + 22;
			}else if (ClientH > 630 && cutHeight != 0)								// ���̰� �ּ�â ������ �ƴ϶�� âũ�⸦ �� �� �۰� (XP�̿�)
			{
				cutWidth = -80;				// �ش� �ػ󵵿����� ���� ����
			}
		}else{
			if (gWidth == "1583" && ClientH > 680 && cutHeight == 0) {				// �� 1�� ��� ���̵� ���̰� �ּ�â ������ �ƴ϶�� âũ�⸦ �� �� �۰� XP�� ���
				cutHeight = cutHeight + 22;
			}else if (gWidth == "1240" && ClientH > 680 && cutHeight == 0) {		// �� 2�� ��� ���̵� ���̰� �ּ�â ������ �ƴ϶�� âũ�⸦ �� �� �۰� XP�� ���
				cutHeight = cutHeight + 22;
			}else if (gWidth == "883" && ClientH > 680 && cutHeight == 0) {			// �� 3�� ��� ���̵� ���̰� �ּ�â ������ �ƴ϶�� âũ�⸦ �� �� �۰� XP�� ���
				cutHeight = cutHeight + 22;
			}else if (gWidth == "1065" && ClientH > 690 && cutHeight == 0) {		// �Ϲݿ��󿡼� ���̰� �ּ�â ������ �ƴ϶�� âũ�⸦ �� �� �۰� XP�� ���
				cutHeight = cutHeight + 22;
			}else if (gWidth == "1583" && ClientH > 670 && cutHeight != 0) {		// �� 1�� ��� ���̵� ���̰� �ּ�â ������ �ƴ϶�� âũ�⸦ �� �� �۰� XP��
				cutHeight = cutHeight + 37;
			}else if (gWidth == "1240" && ClientH > 670 && cutHeight != 0) {		// �� 2�� ��� ���̵� ���̰� �ּ�â ������ �ƴ϶�� âũ�⸦ �� �� �۰� XP��
				cutHeight = cutHeight + 37;
			}else if (gWidth == "883" && ClientH > 670 && cutHeight != 0) {			// �� 3�� ��� ���̵� ���̰� �ּ�â ������ �ƴ϶�� âũ�⸦ �� �� �۰� XP��
				cutHeight = cutHeight + 37;
			}else if (gWidth == "1065" && ClientH > 680 && cutHeight != 0) {		// �Ϲݿ��󿡼� ���̰� �ּ�â ������ �ƴ϶�� âũ�⸦ �� �� �۰� XP��
				cutHeight = cutHeight + 37;
			}else{
				//alert(1);
			}
		}
	}
	//#001 20120409 S.HAN INS( END )

	var controller;
	window.onload = function() {
		//correctWindowSize();		//#001 20120409 S.HAN INS
		parent.moveTo(0,0);

		var agent = navigator.userAgent.toLowerCase();
		if (agent.indexOf("msie") != -1 ) {
			$("#view_ontop").show();
		} 

			parent.resizeTo(gWidth-cutWidth-251, gHeight-cutHeight);

			document.getElementById('child').height = gHeight-cutHeight - 280;
			$("#player_main", parent.document).attr("height", gHeight-cutHeight-100);
			$("#player_right", parent.document).attr("height", gHeight-cutHeight-100);

		try {
			var bind_event = function(id, listener) {
					document.getElementById(id).onclick = listener;
				};

		var add_event_message = function(message) {

				};

			controller = new Kollus.VideogatewayController({
					target_window: document.getElementById('child').contentWindow
				});

			// video playback event binding
			controller
				.on('progress', function(percent, position, duration) {
					var progr = document.getElementById('progr');
					<% If SPL_ETM > 0 Then %>
					if (position >= <%= SPL_ETM %>){
						controller.pause();
					}
					<% End If %>
				})
				.on('play', function() {
					add_event_message('play');
				})
				.on('pause', function() {
					add_event_message('pause');
				})
				.on('done', function() {
					add_event_message('done');
				})
				.on('ready', function() {
					add_event_message('ready');
					//document.getElementById('speed').value = controller.get_speed();
				})
			// command event binding
		} catch(e) {
			if(e instanceof KollusPostMessageException && e.code === -99) {
				// browser does not support window.postMessage.
				// script won't work under this condition.
				alert('You can`t use video playback control.');
			} else {
				// some other errors
				console.log(e.message);
			}
		}

	}
	function fncAlwaysOnTop(){
		//alert(1);
		controller.set_topmost(controller.get_topmost() ? false : true);
		//alert(2);
	}

</script>
<script language="JavaScript" src="<%=url_common%>/js/common.js"></script>
<xscript language="JavaScript" src="<%=url_common%>/js/scriptaculous/prototype.js"></xscript>
<xscript language="JavaScript" src="<%=url_common%>/js/scriptaculous/scriptaculous.js"></xscript>
<script  language=javascript >
window.onbeforeunload = function() {};
// IE9 �˾�â�� ���� ������ ���׼���
</script>
</head>
<body style="height:100%; background-color:#2d2d2f;" topmargin="0" leftmargin="0">
<div class="player_l_wrap">
<table id="player_mainframe" width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
    <!-- �ΰ� ���� S -->
    <tr>
        <td style="height:40px; padding-left:22px;"><!--<img src="http://img.megagong.net/player/2015_newskin/etc/logo.png">--></td>
    </tr>
     <!-- //�ΰ� ���� E -->
    <tr>
        <td style="vertical-align:top; text-align:center; padding:0 22px 0 22px; position:relative;">
            <table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td colspan="3" style="height:3px; background-color:#000;"></td>
                </tr>
                <tr>
                    <td style="width:3px; background-color:#000;"></td>
                    <td style="text-align:center;background-color:#000;">
                        <!-- ���� ���� -->
                        <table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td style="background-color:#000;">
								<iframe id="child" width="100%" height="100%" src="http://v.kr.kollus.com/s?jwt=<%=tmp%>.<%=result%>&custom_key=<%=customKey%>&a&s=<%= SPL_STM %>" frameborder="0" allowFullScreen="true" webkitallowfullscreen="true" mozallowfullscreen="true" ></iframe>
                            </td>
                        </tr>
                        </table>
                        <!-- ���� ���� �� -->
                    </td>
                    <td style="width:3px; background-color:#000;"></td>
                </tr>
                <tr>
                    <td colspan="3" style="height:3px; background-color:#000;"></td>
                </tr> 
            </table>
        </td>    
    </tr>
    <tr>
        <td style="padding:0px 22px 0 22px ;">
            <!-- �ϴܿ��� S -->
             <div style="padding:11px 0 11px 0;">
             <table width="100%" border="0" cellpadding="0" cellspacing="0" >
                 <colgroup><col width="*" /><col width="60px" /></colgroup>
                 <tr>
                     <td style="text-align:left;"><img src="http://img.megagong.net/player/2015_newskin/etc/info_keboard_1.png" alt="����Ű�ȳ�"/></td>
                     <td style="text-align:rght; vertical-align:top;">
                         <div id="view_ontop" style="display:none; width:60px; height:21px; background:url(http://img.megagong.net/player/2015_newskin/bt_back01.gif) no-repeat left top;">
                             <!-- �׻��� üũ -->
                            <p style="padding:2px 0 0 5px;"><input type="checkbox" name="alwaysontop" onClick="fncAlwaysOnTop();" id="alwaysontop"></p>
                         </div>
                     </td>
                 </tr>
             </table>
             </div>
<%
	vSql = ""
	vSql = vSql & " SELECT top 1 vl_sub_cd, vl_tec_cd, vl_vod_nm, convert(varchar(10),vl_std_dt,120) vl_std_dt2, convert(varchar(10),vl_reg_dt,120) vl_reg_dt2, vl_std_tm, vl_contents_key, sm_sub_nm, tm_tec_nm "
	vSql = vSql & " FROM md_vod_lst with(nolock) "
	vSql = vSql & " inner join ms_sub_mas with(nolock) on vl_sub_cd = sm_sub_cd "
	vSql = vSql & " inner join ms_tec_mas with(nolock) on vl_tec_cd = tm_tec_cd "
	vSql = vSql & " where vl_camp_cd = '2' and vl_dom_cd = '1' and vl_open_yn = 'Y' and vl_contents_key = '"&cd&"' "
	Set Rs = DBEXEC(vSql, "study")
	If Not Rs.Eof Then
		vod_nm = Rs(2)
		sub_nm = Rs(7)
		tec_nm = Rs(8)
	End If


%>
			 <!-- ���¸�/����/�����Ը� ���� -->
             <table width="100%" border="0" cellspacing="0" cellpadding="0" class="player_l_lecinfo">
                 <colgroup>
                     <col width="60px" ><col width="*" ><col width="60px" ><col width="20%" >
                 </colgroup>
                <tr class="last">
                     <td><img src="http://img.megagong.net/player/2015_newskin/tx01.gif" alt="���¸�"></td>
                     <td><span class="lectitle">[<%=sub_nm%>] <%=vod_nm%></span><span id="progr"></span></td>
                     <td><img src="http://img.megagong.net/player/2015_newskin/tx03.gif"></td>
                     <td><%=tec_nm%> ������</td>
                 </tr>
             </table>
             <!-- //���¸�/����/�����Ը� ���� -->

        </td>
    <tr>
        <td style="height:15px;"></td>
    </tr>
</table>
<form name="movieform" method="post">
	<input type="hidden" name="brightness">
	<input type="hidden" name="hue">
	<input type="hidden" name="contrast">
	<input type="hidden" name="saturation">
	<input type="hidden" name="band1">
	<input type="hidden" name="band2">
	<input type="hidden" name="band3">
	<input type="hidden" name="band4">
	<input type="hidden" name="band5">
	<input type="hidden" name="band6">
	<input type="hidden" name="band7">
	<input type="hidden" name="band8">
	<input type="hidden" name="preset">

	<input type="hidden" name="iSize" value="iSizeStd">
</form>
</body>
</html>