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
'
'=======================================================================
%>
<%' ���� ��Ŭ��� ������ ����%>
<!-- #include virtual = "/common/inc/RSexec.asp" -->
<!-- #include virtual = "/common/inc/VarDef.asp"-->
<!-- #include virtual = "/common/inc/FunDef.asp"-->
<!-- #include virtual = "/player/Cate/cate_inc.asp"-->
<!-- #include virtual="/player/Cate/JSON_2.0.4.asp" -->
<!-- #include virtual="/player/Cate/JSON_UTIL_0.1.1.asp" -->
<%' ���� ��Ŭ��� ������ ��ħ%>
<%
	uId = LCase(fncRequestCookie("userid"))			'ȸ�� ���̵� ���

	mem_type = LCase(fncRequestCookie("mem_type"))	'ȸ�� Ÿ��
	KBN     = TRIM(fncRequest("KBN"))          '60 �̸� �ܿ� �÷��̾�
	LEC_CD 	= TRIM(fncRequest("LEC_CD"))

	UseWidth = getParamInt( "UseWidth", 0)
	UseHeight = getParamInt( "UseHeight", 0)

	If KBN = "" Or LEC_CD = "" Then
		Response.Write "errer1"
		Response.End
	End If

	'�ƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢ�
	' 2�ڸ� ���� ����� 
	'�ƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢ�
	Function DblZero(e)
		str = ""
		If Len(e) = 2 Then
			str = e
		ElseIf Len(e) = 1 Then
			str = "0"&e
		Else
			str = "00"
		End If
		DblZero = str
	End Function

	'�ƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢ�
	' �ϸ�ũ �ð� ���� 
	'�ƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢ�
	Function fncMakeBookTime(e)
		str = ""

		If IsNumeric(e) = false Then e = 0

		h = Int(e / 3600)
		m = Int((e mod 3600)/60)
		s = e mod 60

		str = DblZero(h)&":"&DblZero(m)&":"&DblZero(s)

		fncMakeBookTime = str
	End Function


	'�ƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢ�
	'�������� ��������
	'�ƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢ�
	vSql = "exec USP_GET_LEC_ING '" & cook_id & "'," & LEC_CD & " "
	call RSExec(oRs, 0, 3, vSql, "study")
	If oRs.EOF Or oRs. BOF Then
		CHR_CD = ""
	Else
		CHR_CD = oRs(0)
		APP_NO = oRs(1)
		LEC_SEQ = oRs(2)
		CONTENT_KEY = oRs(3)		'�������ڵ�
		WIDE_KBN = oRs(4)
		CHR_NM = oRs(5)
		LEC_NM = oRs(6)
		TEC_CD = oRs(7)
		DOM_CD = oRs(8)
		tm_tec_nm = oRs(9)
		prev_lec_cd = oRs(11)
		next_lec_cd = oRs(12)
		TM_INTRO_KEY = oRs(13)
	End If
	Call RSClose(oRs)

	If IsNull(Trim(CONTENT_KEY)) Or Trim(CONTENT_KEY) = "" Then
		Response.Write "<script language='javascript'>alert('������ �����ϴ�.');parent.self.close();</script>"
		Response.End
	End If

	'�ƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢ�
	'���� ���� ���� üũ
	'�ƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢ�
	If CHR_CD = "" Then
		Response.Write "errer2"
		Response.End
	End If

	'�ƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢ�
	'���Ǽ����̷� ���̺� ���� ���� �̷��� ����
	'�ƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢ�
	IF ucase(uId) <> "ADMIN"   THEN
		strSQL = "EXEC Msp_Set_Std_His '" & uId & "'," & APP_NO & "," & LEC_CD
		call DBExec(strSQL,"study")
	END IF

	'�÷��̾� �⵿�ð� (����Ͻú���)
	START_TIME=cstr(date())+" "+ cstr(hour(now())) + +":"+ cstr(minute(now())) + ":" + cstr(second(now()))

	'�ƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢ�
	'MS_LEC_HIS �Է��ϰ� MS_LEC_HIS_SUM ��������, ������ ����
	'�ƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢ�
	strSql = "exec Msp_Set_MS_LEC_HIS_01 '" & uId & "', " & APP_NO & " , " & LEC_CD

	call RSexec(rs,0,3,strsql,"study")

	if not rs.EOF then
		'lh_lec_seq = rs(0)
		'lhs_lec_seq = rs(1)
	end if

	RSClose(rs)


	'DNGPATH = PATH
	'DNGPATH = "mmsext://PARETO/OPEN/H9GC16208SJ041_800k_1280.wmv"
	'�ƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢ�
	' ������ ũ�� ����
	'�ƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢ�

	If InStr("#lakemind7#lakemind8#lakemind1#","#" & cook_id & "#") Then
		new_size = "Y"
	Else
		new_size = "N"
	End If
	new_size = "Y"

	If new_size = "Y" Then
		new_tabsize = 270
		new_cutsize = 0
		new_childsize = 0
		If KBN = "S" Then '''��ȭ���� ���
			If UCase(WIDE_KBN) = "Y" Then	'���̵��� ��� ȭ�� ũ�� ũ���ϱ�
				If UseHeight > 0 And UseHeight > 0 Then
					If UseWidth > 1600 Then 
						stype = 1
						newGWidth = 1580 : newGHeight = 840 : new_cutsize = 80 : new_childsize = 225
					ElseIf UseWidth > 1200 Then
						If UseHeight <= 720 Then
							stype = 2
							newGWidth = 1240 : newGHeight = 690 : new_cutsize = 90 : new_childsize = 200
						Else 
							stype = 3
							newGWidth = 1240 : newGHeight = 690 : new_cutsize = 90 : new_childsize = 200
						End If
					Else 
						stype = 4
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
				newGWidth = 900 + new_tabsize : newGHeight = 600 : new_cutsize = 0 : new_childsize = 230
				newGWidth2X = UseWidth : newGHeight2X = UseHeight
		End If
		strUserAgent = UCase(cstr(request.ServerVariables("HTTP_USER_AGENT")))
'			IE_YN = strUserAgent
		If InStr(UCase(strUserAgent),"MSIE") Or InStr(UCase(strUserAgent),"TRIDENT") Or InStr(UCase(strUserAgent),"EDGE") Then
			IE_YN = "Y"
			If stype = 1 Then
				new_childsize = new_childsize - 30
			ElseIf stype = 3 Then
				new_childsize = new_childsize - 0
			Else
				new_childsize = new_childsize - 30
			End If
		Else
			IE_YN = "N"
			If stype = 4 Then
				new_childsize = new_childsize - 53
			Else
				new_childsize = new_childsize - 0
			End If
		End If
	End If

	If KBN = "S" Then '''��ȭ���� ���
		If UCase(WIDE_KBN) = "Y" Then	'���̵��� ��� ȭ�� ũ�� ũ���ϱ�
'			intGWidth = 1050 : intGHeight = 720
'			intGWidth2X = 1660 : intGHeight2X = 1260
			If UseHeight > 0 And UseHeight > 0 Then
				If UseWidth > 1600 Then 
					intGWidth = 1583 : intGHeight = 830
				ElseIf UseWidth > 1200 Then
					If UseHeight <= 690 Then
						intGWidth = 1190 : intGHeight = 670
					Else
						intGWidth = 1240 : intGHeight = 688
					End If
				Else 
					intGWidth = 883 : intGHeight = 645
				End If
			End If
			intGWidth2X = UseWidth : intGHeight2X = UseHeight
		Else
			'intGWidth = 1050 : intGHeight = 760
			'intGWidth2X = 1660 : intGHeight2X = 1260
			intGWidth = 1065 : intGHeight = 725
			intGWidth2X = UseWidth : intGHeight2X = UseHeight
		End If
	Else '950,520 ''''�Ϲ�ȭ���� ���
			intGWidth = 883 : intGHeight = 645
			intGWidth2X = UseWidth : intGHeight2X = UseHeight
	End If


	'�ƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢ�
	' �÷��̾� JWTó��
	'�ƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢ�
	Dim Payload, mc, JWTHead, temp()
	Set JWTHead = jsObject()
	JWTHead("typ") = "JWT"
	JWTHead("alg") = "HS256"

	Set mc_intro = jsObject()
	mc_intro("intr") = True
	mc_intro("mckey") = TM_INTRO_KEY
	mc_intro("seek") = False 
	mc_intro("mcpf") = security_key&"-pc1-high"

	Set mc = jsObject()
	mc("intr") = False
	mc("mckey") = CONTENT_KEY

	If KBN = "N" Then
		mc("mcpf") = security_key&"-mobile1-normal"				'���ڵ� �������� Ű(ȭ�� ����) - ����� �Ϲ�ȭ��
	Else
		mc("mcpf") = security_key&"-pc1-high"				'���ڵ� �������� Ű(ȭ�� ����) - ���ۿ��̵� ��ȭ��
	End If

	' ���԰��¿����� ��������Ʈ�ο����� �ȳ����� ó��
	TM_INTRO_KEY = ""
	If TM_INTRO_KEY <> "" Then 
		reDim temp(1)
		Set temp(0) = mc_intro
		Set temp(1) = mc
	Else
		reDim temp(0)
		Set temp(0) = mc
	End If 

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
	'Response.write tmp+"."+result+"<br>"
	result = Server.URLEncode(result)
	'response.write "<iframe width='800' height='600' src='http://v.kr.kollus.com/s?jwt="+tmp+"."+result+"&custom_key="+customKey+"'></iframe><br>"
	
	If isRealserver() Then
		l_LHF = "R"
	Else
		l_LHF = "D"
	End If
	uservalues = "&uservalue0=" & APP_NO & "&uservalue1=" & l_LHF & "&uservalue2=" & CHR_CD & "&uservalue3=" & LEC_CD & "&uservalue4=P&uservalue5=0"
%>
<!DOCTYPE html PUBLIC "-/W3C/DTD XHTML 1.0 Transitional/EN" "http:/www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http:/www.w3.org/1999/xhtml" style="height:100%;" >
<head>
<meta charset="euc-kr" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<link href="<%=img_main%>/common/css/201504/2013_style.css" rel="stylesheet" type="text/css">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet" integrity="sha256-MfvZlkHCEqatNoGiOXveE8FIwMzZg4W85qfrfIFBfYc= sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==" crossorigin="anonymous">
<script language="JavaScript" src="/common/js/common.js?vt=<%=t_server_time%>"></script>
<script src="https://code.jquery.com/jquery-1.11.3.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" integrity="sha256-Sk3nkD6mLTMOF0EOpNtsIry+s1CsaqQC1rVLTAy+0yc= sha512-K1qjQ+NcF2TYO/eI3M6v8EiNYZfA95pQumfvcVrTHtwQVDG+aHRqLi/ETn2uB+1JqwYqVG3LIvdm9lj6imS/pQ==" crossorigin="anonymous"></script>
<script src="/common/js/kollus.videogateway-controller.min.js"></script>
<script type="text/javascript">
<!--

	// ������ ���� Ȯ��
	var winPosition = navigator.appVersion.lastIndexOf('MSIE');
	var winVersion = navigator.appVersion.substr(winPosition + 10, 12);

	// ȭ��ũ�� �ʱ� ���� Ȯ���ϴ� flag
	var isInitSize = false;

	// ���� ȭ��ũ�� ����
	// 100% ũ���� ���� Width, Height
	var gWidth		= <%=intGWidth%>;
	var gHeight		= <%=intGHeight%>;

	// 200% ũ���� ���� Width, Height
	var gWidth2X	= <%=intGWidth2X%>;
	var gHeight2X	= <%=intGHeight2X%>;

	var cutWidth = 0;
	var cutHeight = 0;

	if (winVersion == "Windows NT 5")
	{
		cutHeight = 0;			// ����XP���
	}else{
		cutHeight = -12;
	}

	<%' �ػ� ���� %>
	<% If intGHeight >= 830 Then %>
		cutHeight = -40;
	<% ElseIf intGHeight >= 670 Then %>
		cutHeight = -35;
	<% Else %>
		cutHeight = -30;
	<% End If %>

	<% If KBN = "S" Then %>
	var right_tab = "Y"; // ������ �޴� ������		������ �Ʒ����� ����ø� 20120503 CHOIJH
	<% Else %>
	var right_tab = "N"; // ������ �޴� ������		������ �Ʒ����� ����ø� 20120503 CHOIJH
	<% End If %>

    // 0 : Default ȭ��, 1 : Fullscreen
    var screenMode = 0;

    // ���� ������, iSizeFull:��ü, iSizeStd:ǥ��, iSizeBig:Ȯ��
	var strSize = "iSizeStd";

    // 0 : �⺻ �ڸ�, 1: �ڸ� ������
    var subtitleMode = 0;

    // ȭ���̵� �� ����ϴ� inverval �� (�⺻��)
    var blockInterval = 30;

	function fncSetRightTab(){
		//alert("?");
		<% If new_size = "N" Then %>
			var frmimg = document.getElementById("frameimg");
			if (movieform.iSize.value == "iSizeStd"){
				if (right_tab == "Y"){
					parent.window.resizeTo(gWidth-cutWidth, gHeight-cutHeight);
					$("#view_2", parent.document).show();
					eval(frmimg).src = eval(frmimg).src.replace("_open","_close");
				}else{
					parent.window.resizeTo(gWidth - cutWidth - 251, gHeight-cutHeight);
					$("#view_2", parent.document).hide();
					eval(frmimg).src = eval(frmimg).src.replace("_close","_open");
				}
			}else if (movieform.iSize.value == "iSizeBig"){
				if (right_tab == "Y"){
					$("#view_2", parent.document).show();
					eval(frmimg).src = eval(frmimg).src.replace("_open","_close");
				}else{
					$("#view_2", parent.document).hide();
					eval(frmimg).src = eval(frmimg).src.replace("_close","_open");
				}
			}
		<% Else %>
			var frmimg = document.getElementById("frameimg");
			if (movieform.iSize.value == "iSizeStd"){
				if (right_tab == "Y"){
					//alert('����');
					parent.window.resizeTo(gWidth-cutWidth, <%= newGHeight %>);
					$("#view_2", parent.document).show();
					eval(frmimg).src = eval(frmimg).src.replace("_open","_close");
				}else{
					//alert('����');
					parent.window.resizeTo(gWidth - cutWidth - 251, <%= newGHeight %>);
					$("#view_2", parent.document).hide();
					eval(frmimg).src = eval(frmimg).src.replace("_close","_open");
				}
			}else if (movieform.iSize.value == "iSizeBig"){
				if (right_tab == "Y"){
					$("#view_2", parent.document).show();
					eval(frmimg).src = eval(frmimg).src.replace("_open","_close");
				}else{
					$("#view_2", parent.document).hide();
					eval(frmimg).src = eval(frmimg).src.replace("_close","_open");
				}
			}
		<% End If %>
	}

	function fncRightTab(t){
		if (right_tab == "Y"){
			right_tab = "N";
		}else{
			right_tab = "Y";
		}
		fncSetRightTab();
	}
	<%
		If UseWidth <= 1200 And WIDE_KBN = "Y" Then				' 1280�ػ󵵹̸��̰� ���̵� �����̶�� ������ �� �Ⱥ���
			response.write "$('#view_2', parent.document).hide();"
		end if
	%>

	var controller;
	window.onload = function() {
		//alert("gHeight : " + gHeight); //842

		parent.moveTo(0,0);

		var agent = navigator.userAgent.toLowerCase();
		if (agent.indexOf("msie") != -1 ) {
			$("#view_ontop").show();
		} 

	<% If new_size = "N" Then %>
		<% If KBN = "S" Then %>
			if (right_tab == "N")			//���� ������ �Ǿ��� �����ŭ ���̱�	20120503 CHOIJH
			{
				parent.resizeTo(gWidth-cutWidth-251, gHeight-cutHeight);
			}else{
				<% If UseWidth <= 1200 Then %>
					parent.resizeTo(gWidth-cutWidth, gHeight-cutHeight+50);
				<% Else %>
					parent.resizeTo(gWidth-cutWidth, gHeight-cutHeight);
				<% End If %>
			}
			
			document.getElementById('child').height = gHeight-cutHeight - 300;
			//alert("a" + $(parent).height());

			$("#player_main", parent.document).attr("height", gHeight + cutHeight);
			$("#player_right", parent.document).attr("height", gHeight + cutHeight);
			//alert($(parent.document).height()); //781
			//alert($("#player_main", parent.document).height()); //775
			//alert(gHeight-cutHeight); //842
		<% Else %>
				document.getElementById('child').height = gHeight-cutHeight - 190;
			//alert("b" + $(parent).height());
				$("#player_main", parent.document).attr("height", gHeight-cutHeight);
				$("#player_right", parent.document).attr("height", gHeight-cutHeight);
				//alert($(parent.document).height()); //679
				//alert($("#player_main", parent.document).height()); //673
				//alert(gHeight-cutHeight); //657
		<% End If %>
			//alert("c" + $(parent).height());
	<% Else %>
	<% End If %>
		try {
			var bind_event = function(id, listener) {
					document.getElementById(id).onclick = listener;
				};

			var add_event_message = function(message) {
				};

			controller = new Kollus.VideogatewayController({
					target_window: document.getElementById('child').contentWindow
				});
			controller
				.on('progress', function(percent, position, duration) {
				});
			controller
				.on('done', function() {
					//add_event_message('done');
					parent.fncSelectPlay();
				});

		} catch(e) {
			if(e instanceof KollusPostMessageException && e.code === -99) {
				alert('You can`t use video playback control.');
			} else {
				console.log(e.message);
			}
		}
	};

	function fncAlwaysOnTop(){
		controller.set_topmost(controller.get_topmost() ? false : true);
	}
//-->
</script>
<%' Response.end %>
</head>
<% If 1 = 1 Or new_size = "N" Then %>
<body style="height:100%; background-color:#2d2d2f" topmargin="0" leftmargin="0">
<% Else %>
<body style="background-color:#2d2d2f" topmargin="0" leftmargin="0">
<% End If %>
<%
	If InStr("#lakemind7#lakemind8#lakemind1#","#" & cook_id & "#") Then
		Response.write "<div style='position:absolute;'>KBN : " & KBN & ", WIDE_KBN : " & WIDE_KBN & ", UseWidth : " & UseWidth & ", UseHeight : " & UseHeight  & ", newGWidth : " & newGWidth & ", newGHeight : " & newGHeight & ", IE_YN : " & IE_YN & ", stype : " & stype & "</div>"
	End If
%>
<div class="player_l_wrap" style="min-width:650px; min-height:250px; ">
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
                    <td style="text-align:center;background-color:#000;">
                        <!-- ���� ���� -->
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td style="background-color:#000;">
								<iframe id="child" width="100%" height="<%= newGHeight - new_cutsize - new_childsize %>" style="margin
								:0;" src="http://v.kr.kollus.com/s?jwt=<%=tmp%>.<%=result%>&custom_key=<%=customKey%><%= uservalues %>&a" frameborder="0" allowfullscreen webkitallowfullscreen mozallowfullscreen></iframe>
                            </td>
                        </tr>
                        </table>
                        <!-- ���� ���� �� -->
                    </td>
                </tr>
            </table>
			<div style="position:absolute; right:11px; top:50%; margin-top:-15px"><%If (UseWidth > 1200 Or WIDE_KBN <> "Y") And KBN = "S" Then%><a href="javascript:fncRightTab();"><img id="frameimg" src="http://img.megagong.net/player/2015_newskin/arrow_close.gif" alt="�ݱ�" /></a><%End if%></div>  
		</td>
  </tr>
    <tr>
        <td style="padding:0px 22px 0 22px;vertical-align:bottom;">
            <!-- �ϴܿ��� S -->
             <div style="padding:11px 0 11px 0;">
             <table width="100%" border="0" cellpadding="0" cellspacing="0" >
                 <colgroup><col width="*" /><col width="60px" /></colgroup>
                 <tr>
                     <td style="text-align:left;"><img src="http://img.megagong.net/player/2015_newskin/etc/info_keboard_1.png" alt="����Ű�ȳ�"/></td>
					 <td style="text-align:rght; vertical-align:top;">
                         <div id="view_ontop" style="width:60px; height:21px; background:url(http://img.megagong.net/player/2015_newskin/bt_back01.gif) no-repeat left top;">
                             <!-- �׻��� üũ -->
                            <p style="padding:2px 0 0 5px;"><input type="checkbox" name="alwaysontop" onClick="fncAlwaysOnTop();" id="alwaysontop"></p>
                         </div>
                     </td>
                 </tr>
             </table>
             </div>

             <!-- ���¸�/����/�����Ը� ���� -->
             <table width="100%" border="0" cellspacing="0" cellpadding="0" class="player_l_lecinfo">
                 <colgroup>
                     <col width="60px" ><col width="*" ><col width="60px" ><col width="20%" >
                 </colgroup>
                <tr>
                     <td><img src="http://img.megagong.net/player/2015_newskin/tx01.gif" alt="���¸�"></td>
                     <td><span class="lectitle"><%=DB_TO_STR(CHR_NM)%></span></td>
                     <td><img src="http://img.megagong.net/player/2015_newskin/tx03.gif"></td>
                     <td><%=tm_tec_nm%> ������</td>
                 </tr>
                 <tr class="last">
                     <td><img src="http://img.megagong.net/player/2015_newskin/tx02.gif"></td>
                     <td colspan="3"><%=LEC_SEQ%> : <%=DB_TO_STR(LEC_NM)%></td>
                 </tr>           
             </table>
             <!-- //���¸�/����/�����Ը� ���� -->
             <!-- �ϴܿ��� E -->
        </td>
    <tr>
        <td style="height:15px;"></td>
    </tr>

</table>
</div>
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
	<input type="hidden" name="iSize" id="iSize" value="iSizeStd">
</form>
</body>
</html>