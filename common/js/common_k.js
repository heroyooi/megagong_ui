/*
'=======================================================================
'¾÷ ¹« ¸í : ¸Þ°¡CST-°øÅë½ºÅ©¸³Æ®
'¸ðµâ±â´É : °øÅë JS
'ÆÄ ÀÏ ¸í : /common/js/common.js
'ÀÛ¼ºÀÏÀÚ : 2013/01/03
'ÀÛ ¼º ÀÚ : ¹Ú¿ë¼ö
'-----------------------------------------------------------------------
'º¯°æÀÏÀÚ   º¯°æÀÚ  º¯µ¿³»¿ª
'=======================================================================

'=======================================================================
*/

//ÇÃ·¹ÀÌ¾î////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
var GongcampusPlayer
//»ç¿ëÀÚ ÇØ»óµµ, ºê¶ó¿ìÀú ¹öÀüÈ®ÀÎ
var UseWidth = window.screen.availWidth;
var UseHeight = window.screen.availHeight;

var userBrowser = "";
var BrowserVersion = "";

if (navigator.userAgent.lastIndexOf('MSIE') > 0 || navigator.userAgent.lastIndexOf('Trident') > 0) {
	var userBrowser = "IE";

	try {

		if (!document.all) {
			BrowserVersion = "11";
		} else {
			var ieTempVer = navigator.userAgent.match(/Trident\/(\d.\d)/i)[1];

			if (ieTempVer == '7.0') {
				BrowserVersion = "11";
			} else if (ieTempVer == '6.0') {
				BrowserVersion = "10";
			} else if (ieTempVer == '5.0') {
				BrowserVersion = "9";
			} else if (ieTempVer == '4.0') {
				BrowserVersion = "8";
			}
		}

	} catch (e) {
		var appPosition = navigator.userAgent.lastIndexOf('MSIE');
		BrowserVersion = navigator.userAgent.substr(appPosition + 5, 1);
	}
} else if (navigator.userAgent.lastIndexOf('Whale') > 0) {
	var userBrowser = "Whale";
	var appPosition = navigator.userAgent.lastIndexOf('Whale');
	if (appPosition > 0) {
		BrowserVersion = navigator.userAgent.substr(appPosition + 7, 4);
	}
} else if (navigator.userAgent.lastIndexOf('Chrome') > 0) {
	var userBrowser = "Chrome";
	var appPosition = navigator.userAgent.lastIndexOf('Chrome');
	if (appPosition > 0) {
		BrowserVersion = navigator.userAgent.substr(appPosition + 7, 4);
	}
} else if (navigator.userAgent.lastIndexOf('Safari') > 0) {
	var userBrowser = "Safari";
	var appPosition = navigator.userAgent.lastIndexOf('Version');
	if (appPosition > 0) {
		BrowserVersion = navigator.userAgent.substr(appPosition + 8, 5);
	}
} else if (navigator.userAgent.lastIndexOf('Firefox') > 0) {
	var userBrowser = "Firefox";
	var appPosition = navigator.userAgent.lastIndexOf('Firefox');
	if (appPosition > 0) {
		BrowserVersion = navigator.userAgent.substr(appPosition + 8, 5);
	}
}

var userOS = "Win";
var userDevice = "PC";
var iPad_chg = false;
if (navigator.userAgent.lastIndexOf('Android') > 0 || navigator.userAgent.lastIndexOf('iPhone') > 0 || navigator.userAgent.lastIndexOf('iPad') > 0) {
	userDevice = "Mobile";
	if (navigator.userAgent.lastIndexOf('Android') > 0) {
		userOS = "Android";
	} else if (navigator.userAgent.lastIndexOf('iPhone') > 0 || navigator.userAgent.lastIndexOf('iPad') > 0) {
		userOS = "iOS";
	} else {
		userOS = "Unknown";
    }
}

/*
if ( userDevice == "PC") {
	if (navigator.platform === 'MacIntel' && navigator.maxTouchPoints > 1) {
		userOS = "iOS"
		userDevice = "Mobile"
		iPad_chg = true;
	} 
}
*/

// Check SmartLearing in-app -------------------------------------------------------
var is_smartlearing_in_app = false;
if (navigator.userAgent.lastIndexOf('net.megagong.smartlearning.android') > 0) {
	is_smartlearing_in_app = true;
} else if (navigator.userAgent.lastIndexOf('net.megagong.smartlearning.ios') > 0) {
	is_smartlearing_in_app = true;
} else {

}
//-----------------------------------------------------------------------------------


//ÇÃ·¹ÀÌ¾î È£ÃâÇÔ¼öÀÇ ÆÄ¶ó¹ÌÅÍ
var vPlayerLnk, vPlayerParam, vPlayerOption;
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// ÇÔ¼ö¼³¸í : ÇÃ·¹ÀÌ¾î °øÅë ½ÇÇàÇÔ¼ö (PC/¸ð¹ÙÀÏ ÅëÇÕ)
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function player_div(lnk, kbn, app) {
	var pPlayerUrl, pSetParam, pOpt, pPlayerNm;

	if (lnk == "H") {
		if (UseWidth >= 1333) {
			var eWidth = "1320";
			var eHeight = "726";
		} else {
			var eWidth = "1024";
			var eHeight = "560";
		}
	} else if (lnk == "L") {
		var eWidth = "740";
		var eHeight = "540";
	}

	if (kbn == "E") {
		eWidth = eWidth - 276;
	}

	$("<input></input>").attr({ type: "hidden", name: "PlayerKbn", value: kbn }).appendTo(playform);
	$("<input></input>").attr({ type: "hidden", name: "PlayerApp", value: app }).appendTo(playform);
	$("<input></input>").attr({ type: "hidden", name: "UseWidth", value: UseWidth }).appendTo(playform);
	$("<input></input>").attr({ type: "hidden", name: "UseHeight", value: UseHeight }).appendTo(playform);
	$("<input></input>").attr({ type: "hidden", name: "PlayerLoc", value: lnk }).appendTo(playform);
	$("<input></input>").attr({ type: "hidden", name: "userBrowser", value: userBrowser }).appendTo(playform);
	$("<input></input>").attr({ type: "hidden", name: "BrowserVersion", value: BrowserVersion }).appendTo(playform);

	if (userDevice == "Mobile") {
		if (confirm("3G/4G È¯°æ¿¡¼­´Â µ¥ÀÌÅÍ ÆÐÅ¶¿ä±ÝÀÌ ¹ß»ýÇÒ ¼ö ÀÖ½À´Ï´Ù.")) {

			pPlayerUrl = "/player/kollus/path/api_path.asp";
			// <<< ################################################
			try {
				$.ajax({
					url: pPlayerUrl,
					type: 'post',
					dataType: 'json',
					data: $('#playform').serializeArray(),
					success: function (data) {
						if (data.result == "0000") {
							if (is_smartlearing_in_app == true) {
								if (userOS == "iOS") {
									var parameters = new Array(data.aData[0].i_path);

									window.webkit.messageHandlers.toApp.postMessage({
										function: "fncPlayUrl",
										parameters: parameters
									});
								} else {
									window.toApp.fncPlayUrl(data.aData[0].i_path);
								}
							} else {
								kollus_custom_scheme_call('path?url=' + data.aData[0].i_path);
                            }
						}
					}
				});
			} catch (e) { }
			// <<< ################################################
			return;

		}
	} else {
		pPlayerUrl = "/Player/kollus/player.asp";
		pOpt = "width=" + eWidth + ",height=" + eHeight + ",top=0,left=0,resizable=1,status=no,scrollbars=no";

		try {
			if (GongcampusPlayer == "[object]") GongcampusPlayer.close();
		} catch (e) { }

		pPlayerNm = "GongcampusPlayer";

		GongcampusPlayer = window.open('', "GongcampusPlayer", pOpt);
		document.playform.action = pPlayerUrl;
		document.playform.target = "GongcampusPlayer";
		document.playform.submit();
		GongcampusPlayer.focus();
	}
}

function kollus_custom_scheme_call(scheme_param) {
	var AppLoader = tui.AppLoader;
	var loader = new AppLoader();
	var osName = new UAParser().getResult().os.name;

	/*
	if ( iPad_chg ) {
		if (navigator.platform === 'MacIntel' && navigator.maxTouchPoints > 1) {
			osName = "iOS"
		} 
	}
	*/

	loader.exec({
		ios: {
			scheme: 'kollus://' + scheme_param,
			url: "https://itunes.apple.com/app/id760006888"
		},
		android: {
			intentURI: 'kollus://' + scheme_param
		},
		timerSet: {
			ios: 4000,
			android: 6000
		},
		etcCallback: function () {
			if (osName !== 'iOS' && osName !== 'Android') {
				alert('¸ð¹ÙÀÏ ´Ü¸»¿¡¼­ ½ÇÇàÇÏ¼Å¾ß ÇÕ´Ï´Ù.');
			}
		},
		notFoundCallback: function () {
			if (osName === 'iOS') {
				window.location.href = 'https://itunes.apple.com/app/id760006888';
			}
			else if (osName == 'Android') {
				window.location.href = 'market://details?id=com.kollus.media';
			}
		}
	});
}

function GongcampusForm() {
	var playform = $("#playform");
	if (playform.length > 0) {
		playform.remove();
	}
	playform = $("<form/>").attr({ name: "playform", id: "playform", method: 'post' });
	$(document.body).append(playform);
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// ÇÔ¼ö¼³¸í : ÇÃ·¹ÀÌ¾î - °íÈ­Áú
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function GongcampusPlay(v_kbn, APP_NO, APP_SEQ, CHR_CD, LEC_CD, S_SEC) {

	GongcampusForm();

	$("<input></input>").attr({ type: "hidden", name: "APP_NO", value: APP_NO }).appendTo(playform);
	$("<input></input>").attr({ type: "hidden", name: "APP_SEQ", value: APP_SEQ }).appendTo(playform);
	$("<input></input>").attr({ type: "hidden", name: "CHR_CD", value: CHR_CD }).appendTo(playform);
	$("<input></input>").attr({ type: "hidden", name: "LEC_CD", value: LEC_CD }).appendTo(playform);
	$("<input></input>").attr({ type: "hidden", name: "VOD_KBN", value: v_kbn }).appendTo(playform);
	$("<input></input>").attr({ type: "hidden", name: "START_SEC", value: S_SEC }).appendTo(playform);

	vPlayerLnk = "H";

	player_div(vPlayerLnk, 'A', 'Y');
	return;
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// ÇÔ¼ö¼³¸í : ÇÃ·¹ÀÌ¾î - °íÈ­Áú
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function GongcampusFreePlay(v_kbn, CHR_CD, LEC_CD, S_SEC) {

	GongcampusForm();

	$("<input></input>").attr({ type: "hidden", name: "VOD_KBN", value: v_kbn }).appendTo(playform);
	$("<input></input>").attr({ type: "hidden", name: "EVT_NO", value: CHR_CD }).appendTo(playform);
	$("<input></input>").attr({ type: "hidden", name: "CHR_CD", value: CHR_CD }).appendTo(playform);
	$("<input></input>").attr({ type: "hidden", name: "LEC_CD", value: LEC_CD }).appendTo(playform);
	$("<input></input>").attr({ type: "hidden", name: "START_SEC", value: S_SEC }).appendTo(playform);

	vPlayerLnk = "H";
	player_div(vPlayerLnk, 'P', 'N');
	return;
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// ÇÔ¼ö¼³¸í : ÇÃ·¹ÀÌ¾î - °íÈ­Áú
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function MegaDirectPlay(mckey) {

	GongcampusForm();

	$("<input></input>").attr({ type: "hidden", name: "mckey", value: mckey }).appendTo(playform);

	vPlayerLnk = "H";
	player_div(vPlayerLnk, 'D', 'N');
	return;
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// ÇÔ¼ö¼³¸í : ÆäÀÌÁö »ðÀÔ ÇÃ·¹ÀÌ¾î È£Ãâ/ÄÁÆ®·Ñ
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function fncPlayerPageAx(acd, ppr) {
	try {
		$(".play_area").each(function () {
			var inm = $(this).attr("inm");
			if (inm != "") {
				$(this).html("<img src=\"" + inm + "\" />");
			}
		});
	} catch (e) { }

	$("#" + acd).load("/Player/kollus/play/play_ax.asp?" + unescape(ppr));
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// ÇÔ¼ö¼³¸í : ¿µ»ó´Ù¿î·Îµå
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function fncVideoDownload(acd, ppr) {

	pPlayerUrl = "/player/kollus/play/play_download.asp";
	vPlayerParam = "?" + ppr;
	// <<< ################################################
	try {
		$.getJSON(pPlayerUrl + vPlayerParam, function (data) {
			if (data.result == "0000") {
				window.open(data.aData[0].i_path.replace("/si?", "/sr?"), '', '');
			} else {
				alert(data.result);
			}
		});
	} catch (e) { }
	// <<< ################################################
	return;
}
////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// ÇÔ¼ö¼³¸í : PC/APP °ø¿ë ´Ü¼ø ¸µÅ© ÇÔ¼ö
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function fncMegaGoLink(lnk, fnm, par) {
	if (is_smartlearing_in_app == true) {
		if (userOS == "iOS") {
			var parameters = new Array(par);
			window.webkit.messageHandlers.toApp.postMessage({
				function: fnm,
				parameters: parameters
			});
		} else {
			if (par != "") {
				eval("window.toApp." + fnm + "('" + par + "')");
			} else {
				eval("window.toApp." + fnm + "()");
            }
		}
	} else {
		document.location.href = lnk;
    }
}
////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// ÇÔ¼ö¼³¸í : PC/APP °ø¿ë ´Ù¿î·Îµå ÇÔ¼ö
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function fncMegaDownload(path, name) {
	if (is_smartlearing_in_app == true) {
		var flink = "https://file.megagong.net/file/file_downloader.asp?path=" + path + "&name=" + name;
		if (userOS == "iOS") {
			var parameters = new Array(flink, name);
			window.webkit.messageHandlers.toApp.postMessage({
				function: "funFileDownload",
				parameters: parameters
			});
		} else {
			window.toApp.funFileDownload(flink);
		}
	} else {
		fncDownload(path, name);
	}
}
////////////////////////////////////////

////////////////////////////////////////

function MM_openBrWindow(theURL, winName, features) { //v2.0
	window.open(theURL, winName, features);
}
function MM_swapImgRestore() { //v3.0
	var i, x, a = document.MM_sr; for (i = 0; a && i < a.length && (x = a[i]) && x.oSrc; i++) x.src = x.oSrc;
}
function MM_preloadImages() { //v3.0
	var d = document; if (d.images) {
		if (!d.MM_p) d.MM_p = new Array();
		var i, j = d.MM_p.length, a = MM_preloadImages.arguments; for (i = 0; i < a.length; i++)
			if (a[i].indexOf("#") != 0) { d.MM_p[j] = new Image; d.MM_p[j++].src = a[i]; }
	}
}

function MM_findObj(n, d) { //v4.01
	var p, i, x; if (!d) d = document; if ((p = n.indexOf("?")) > 0 && parent.frames.length) {
		d = parent.frames[n.substring(p + 1)].document; n = n.substring(0, p);
	}
	if (!(x = d[n]) && d.all) x = d.all[n]; for (i = 0; !x && i < d.forms.length; i++) x = d.forms[i][n];
	for (i = 0; !x && d.layers && i < d.layers.length; i++) x = MM_findObj(n, d.layers[i].document);
	if (!x && d.getElementById) x = d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
	var i, j = 0, x, a = MM_swapImage.arguments; document.MM_sr = new Array; for (i = 0; i < (a.length - 2); i += 3)
		if ((x = MM_findObj(a[i])) != null) { document.MM_sr[j++] = x; if (!x.oSrc) x.oSrc = x.src; x.src = a[i + 2]; }
}

function expandLayer(method, basisImg, hostLayer, leftPosition, topPosition) {

	var hostObj = document.getElementById(hostLayer);
	var basisObj = document.getElementById(basisImg);

	hostObj.style.left = getAbsuluteLeftObj(basisObj) + leftPosition;
	hostObj.style.top = getAbsuluteTopObj(basisObj) + topPosition;

	hostObj.style.display = method;


}

function getAbsuluteTopObj(obj) {

	var par = null;
	par = obj;
	var dy = 0;

	while (par.offsetParent) {
		dy += par.offsetParent.offsetTop;
		par = par.offsetParent;
	}

	return dy;

}

function getAbsuluteLeftObj(obj) {

	var par = null;
	par = obj;
	var dx = 0;

	while (par.offsetParent) {
		dx += par.offsetParent.offsetLeft;
		par = par.offsetParent;
	}

	return dx;

}

function pagetype() {

	this.paramname = "";
	this.class_on = "";
	this.class_off = "";
	this.btn_first = "";
	this.btn_prev = "";
	this.btn_next = "";
	this.btn_last = "";
	this.page_name = "";
	this.id_locate = ""

}

pagetype.prototype.paging = function (totalpage, pagesize, pgsize, cpage) {

	if (totalpage == "" || totalpage == "0" || isNaN(totalpage)) return;
	if (pagesize == "" || pagesize == "0" || isNaN(pagesize)) return;
	if (pgsize == "" || pgsize == "0" || isNaN(pgsize)) return;
	if (cpage == "") cpage = 1;

	var _url = location.href;
	var _search = location.search.substr(1);
	_url = _url.replace("&&", "&");
	_search = _search.replace("&&", "&");
	var _path = _url.replace(_search, "");
	var str_get = "?";


	if (this.paramname == "") {
		this.paramname = "page";
	}

	if (this.page_name == "") {
		this.page_name = _path;
	}

	if (_search == "") {

	} else {
		var array_param = _search.split("&");
		for (var i = 0; i < array_param.length; i++) {
			if (array_param[i].split("=")[0] != this.paramname) {
				str_get = str_get + array_param[i] + "&";
			}
		}
	}

	str_get = str_get + this.paramname + "=";

	totalpage = totalpage * 1;
	pagesize = pagesize * 1;
	pgsize = pgsize * 1;
	cpage = cpage * 1;

	var isprev = false;
	var isnext = false;
	var n_start = 0;
	var n_end = 0;
	var n_prev = 0;
	var n_next = 0;
	var obj_locate = document.getElementById(this.id_locate);

	var cpg = Math.ceil(cpage / pgsize);
	var tpg = Math.ceil(totalpage / pgsize);

	if (cpg > 1) {
		isprev = true;
		n_prev = (cpg - 1) * pgsize;
	}
	if (cpg < tpg) {
		isnext = true;
		n_next = (cpg * pgsize) + 1;
	}
	n_start = (cpg - 1) * pgsize + 1;
	n_end = (cpg * pgsize);

	if (n_end > totalpage) {
		n_end = totalpage;
	}

	var obj_first = document.createElement("IMG");
	var obj_last = document.createElement("IMG");
	var obj_prev = document.createElement("IMG");
	var obj_next = document.createElement("IMG");

	obj_first.style.cursor = "pointer";
	obj_last.style.cursor = "pointer";
	obj_prev.style.cursor = "pointer";
	obj_next.style.cursor = "pointer";

	obj_first.align = "absmiddle";
	obj_last.align = "absmiddle";
	obj_prev.align = "absmiddle";
	obj_next.align = "absmiddle";

	obj_first.src = this.btn_first;
	obj_last.src = this.btn_last;
	obj_prev.src = this.btn_prev;
	obj_next.src = this.btn_next;

	str_get = str_get.replace("&&", "&")


	obj_first.onclick = function () {
		location.href = str_get + "1";
	}
	obj_last.onclick = function () {
		location.href = str_get + totalpage;
	}

	if (isprev) {
		obj_prev.onclick = function () {
			location.href = str_get + n_prev;
		}
	}
	if (isnext) {
		obj_next.onclick = function () {
			location.href = str_get + n_next;
		}
	}

	var array_btn_page = new Array((n_end - n_start + 1));

	for (var i = n_start; i <= n_end; i++) {

		array_btn_page[i] = document.createElement("SPAN");
		if (i == cpage) {
			array_btn_page[i].className = this.class_on;
		} else {
			array_btn_page[i].className = this.class_off;
		}
		array_btn_page[i].style.cursor = "pointer";
		array_btn_page[i].data = i;
		array_btn_page[i].innerHTML = i;
		array_btn_page[i].onclick = function () {
			location.href = str_get + this.data;
		}

	}

	obj_locate.appendChild(obj_first);
	obj_locate.appendChild(document.createTextNode(" "));
	obj_locate.appendChild(obj_prev);
	obj_locate.appendChild(document.createTextNode(" "));

	for (var i = n_start; i <= n_end; i++) {
		obj_locate.appendChild(array_btn_page[i]);
		obj_locate.appendChild(document.createTextNode(" "));
	}

	obj_locate.appendChild(obj_next);
	obj_locate.appendChild(document.createTextNode(" "));
	obj_locate.appendChild(obj_last);

}

function bannerAction(n) {

	var peetLnk = new Array("jomas", "yhokim", "kwnam");
	var peetLnkUrl = peetLnk[Math.floor(Math.random() * 3)];

	switch (n) {
		case 0:
			location.href = "/data2/data2_guide.asp";
			break;
		case 1:
			location.href = "/peet/peet_ad_jomas_step1.asp?page_flg=ad";
			break;
		case 2:
			location.href = "/peet/peet_ad_kwnam_step1.asp?page_flg=ad";
			break;
		case 3:
			break;
		case 4:
			location.href = "/peet/peet_ad_yhokim_step1.asp?page_flg=ad";
			break;
		case 5:
			location.href = "/peet/peet_ad_" + peetLnkUrl + "_list.asp?page_flg=ad";
			break;
		case 6:
			location.href = "/data2/data2_sub5.asp";
			break;
	}

}

// ÇÔ¼öÀÌ¸§ : GnxFlashActivate
// ÇÔ¼ö¼³¸í : FLash Object Generating
// ÀÔ ·Â °ª : ±¸ºÐÀÚ, ¼Ó¼º
// ¹Ý È¯ °ª :

function GnxFlashActivate(strFlashUrl, n4Witdh, n4Height, strWmode, strId, strClassName, strFlashvar) {

	if (n4Witdh != 0) {
		objSize_attribute = " width='" + n4Witdh + "' height='" + n4Height + "'";
	} else {
		objSize_attribute = "";
	}

	if (strId != 0) {
		objId_attribute = " id='" + strId + "'";
		objId_IE_attribute = " id='" + strId + "'";
	} else {
		objId_attribute = "";
		objId_IE_attribute = "";
	}

	if (strClassName != 0) {
		className_attribute = " class='" + strClassName + "'";
	} else {
		className_attribute = "";
	}

	if (strWmode != 0) {
		wmode_param = "<param name='wmode' value='" + strWmode + "' />";
		wmode_attribute = " wmode='" + strWmode + "'";
	} else {
		wmode_param = "";
		wmode_attribute = "";
	}

	if (strFlashvar != 0) {
		Flashvar_param = "<param name='flashvars' value='" + strFlashvar + "' />";
		Flashvar_attribute = " Flashvars='" + strFlashvar + "'";
	} else {
		Flashvar_param = "";
		Flashvar_attribute = "";
	}

	document.writeln("<object classid='clsid:d27cdb6e-ae6d-11cf-96b8-444553540000' codebase='http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=10,0,0,0' " + objSize_attribute + objId_IE_attribute + className_attribute + ">");
	document.writeln("<param name='movie' value='" + strFlashUrl + "' />");
	document.writeln("<param name='quality' value='high' />");
	document.writeln("<param name='allowScriptAccess' value='always' />");
	document.writeln(wmode_param);
	document.writeln(Flashvar_param);
	document.writeln("<!-- Hixie method -->");
	document.writeln("<!--[if !IE]> <-->");
	document.writeln("<object type='application/x-shockwave-flash' data='" + strFlashUrl + "'" + Flashvar_attribute + objSize_attribute + objId_attribute + wmode_attribute + className_attribute + "></object>");
	document.writeln("<!--> <![endif]-->");
	document.writeln("</object>");
}


// ÇÔ¼öÀÌ¸§ : openWindow()
// ÇÔ¼ö¼³¸í : ÆË¾÷ screen Áß¾Ó À§Ä¡
// ÀÔ ·Â °ª : ±¸ºÐÀÚ, ¼Ó¼º
// ¹Ý È¯ °ª :

function openWindow() {

	var LeftPosition = 0;
	var TopPosition = 0;

	var a = openWindow.arguments;
	var u = a[0];
	if (u == null) {
		return;
	}

	var p = a[1];
	if (p == null || p.length == 0) {
		var q = u.lastIndexOf('/');
		p = (q < 0) ? u.substring(0, u.lastIndexOf('.')) : u.substring(q + 1, u.lastIndexOf('.'));
	}
	//	alert(p);

	var o = (a[6] == null) ? 'menubar=0, scrollbars=0, resizable=0' : a[6];
	if (a[2] != null) o += ', width=' + a[2];
	if (a[3] != null) o += ', height=' + a[3];

	if (screen.width < 1025) {
		LeftPosition = 0;
		TopPosition = 0;
	}
	else {
		LeftPosition = (screen.width) ? (screen.width - a[2]) / 2 : 100;
		TopPosition = (screen.height) ? (screen.height - a[3]) / 2 : 100;
	}

	o += ', left=' + LeftPosition; //a[4];
	o += ', top=' + TopPosition; //a[5];

	//if(a[4]!=null) o +=', left='+ LeftPosition; //a[4];
	//if(a[5]!=null) o +=', top='+ TopPosition; //a[5];

	var win = window.open(u, p, o);
	win.focus();

	return win;

}

function msAjax(o) {
	o = { type: o.type || "POST", url: o.url || "", info: o.info || null, timeout: o.timeout || 10000, onLoading: o.onLoading || function () { }, onComplete: o.onComplete || function () { }, onError: o.onError || function () { }, onSuccess: o.onSuccess || function () { }, onTimeOut: o.onTimeOut || function () { }, data: o.data || "" };
	o.onLoading();
	if (typeof XMLHttpRequest == "undefined") { XMLHttpRequest = function () { return new ActiveXObject(navigator.userAgent.indexOf("MSIE 5") >= 0 ? "Microsoft.XMLHTTP" : "Msxml2.XMLHTTP"); } }
	var xml = new XMLHttpRequest();
	xml.open(o.type, o.url, true);
	if (o.type == "POST") xml.setRequestHeader("Content-Type", "application/x-www-form-urlencoded; charset=UTF-8");
	var tOut = o.timeout; var reqDone = false;
	setTimeout(function () { reqDone = true; }, tOut);
	xml.onreadystatechange = function () { if (xml.readyState == 4 && !reqDone) { if (hSuc(xml)) { o.onSuccess(hData(xml, o.type)); } else { o.onError(); } o.onComplete(); xml = null; } else { o.onTimeOut(); } };
	xml.send(o.info);
	function hSuc(r) { try { return !r.status && location.protocol == "file:" || (r.status >= 200 && r.status < 300) || r.status == 304 || navigator.userAgent.indexOf("Safari") >= 0 && typeof r.status == "undefined"; } catch (e) { } return false; }
	function hData(r, type) { var ct = r.getResponseHeader("content-type"); var data = !type && ct && ct.indexOf("xml") >= 0; data = type == "xml" || data ? r.responseXML : r.responseText; if (type == "script") eval.call(window, data); return data; }
}

// ÇÔ¼öÀÌ¸§ : openWin()
// ÇÔ¼ö¼³¸í : »õÃ¢ ¿­±â
// ÀÔ ·Â °ª : url, »õÃ¢ ÀÌ¸§, ¼Ó¼º
// ¹Ý È¯ °ª :
function openWin(theURL, winName, features) {
	window.open(theURL, winName, features);
}

// ÇÔ¼öÀÌ¸§ : getCookie()
// ÇÔ¼ö¼³¸í : ÄíÅ°¼³Á¤ÇÏ±â
// ÀÔ ·Â °ª : ÄíÅ°¸í, ÄíÅ°°ª, ¸¸·áÀÏ
// ¹Ý È¯ °ª : ¾øÀ½/ÄíÅ°°ª
function setCookie(name, value, expiredays) {
	var todayDate = new Date();
	todayDate.setDate(todayDate.getDate() + expiredays);
	document.cookie = name + "=" + escape(value) + "; path=/; expires=" + todayDate.toGMTString() + ";"
}

// ÇÔ¼öÀÌ¸§ : getCookie()
// ÇÔ¼ö¼³¸í : ÄíÅ°°¡Á®¿À±â
// ÀÔ ·Â °ª : ÄíÅ°¸í
// ¹Ý È¯ °ª : ¾øÀ½/ÄíÅ°°ª
function getCookie(name) {
	var nameOfCookie = name + "=";
	var x = 0;
	while (x <= document.cookie.length) {
		var y = (x + nameOfCookie.length);
		if (document.cookie.substring(x, y) == nameOfCookie) {
			if ((endOfCookie = document.cookie.indexOf(";", y)) == -1)
				endOfCookie = document.cookie.length;
			return unescape(document.cookie.substring(y, endOfCookie));
		}
		x = document.cookie.indexOf(" ", x) + 1;
		if (x == 0)
			break;
	}
	return "";
}

// ÇÔ¼öÀÌ¸§ : setCookie_multi(name, value, expiredays)
// ÇÔ¼ö¼³¸í : ÄíÅ°°¡Á®¿À±â
// ÀÔ ·Â °ª : ÄíÅ°¸í
// ¹Ý È¯ °ª : ¾øÀ½/ÄíÅ°°ª
function setCookie_multi(name, sval, value, expiredays) {
	var todayDate = new Date();
	todayDate.setDate(todayDate.getDate() + expiredays);

	var multiCookie, arr_Cookies, arr_sval;
	var val_1 = ""; val_2 = "";
	multiCookie = getCookie(name);
	if (multiCookie == "") multiCookie = "Chr_Poll"
	arr_Cookies = multiCookie.split("&");
	for (var i = 0; i < arr_Cookies.length; ++i) {
		if (arr_Cookies[i].indexOf(sval) >= 0) {
			arr_sval = arr_Cookies[i].split("=");
			val_1 = arr_sval[0];
			val_2 = arr_sval[1];
			break;
		}
	}
	if (val_1 == "")
		multiCookie = multiCookie + "&" + sval + "=" + value;
	else
		multiCookie = multiCookie.replace(val_1 + "=" + val_2, val_1 + "=" + value);

	document.cookie = name + "=" + escape(multiCookie) + ";domain=megastudy.net;path=/;expires=" + todayDate.toGMTString() + ";"
}

// ÇÔ¼öÀÌ¸§ : getCookie_multi()
// ÇÔ¼ö¼³¸í : ÄíÅ°°¡Á®¿À±â
// ÀÔ ·Â °ª : ÄíÅ°¸í
// ¹Ý È¯ °ª : ¾øÀ½/ÄíÅ°°ª
function getCookie_multi(name, sval) {
	var multiCookie, arr_Cookies, arr_sval;
	var nameOfCookie = name + "=";
	var x = 0;
	var y;
	while (x <= document.cookie.length) {
		y = (x + nameOfCookie.length);
		if (document.cookie.substring(x, y) == nameOfCookie) {
			if ((endOfCookie = document.cookie.indexOf(";", y)) == -1)
				endOfCookie = document.cookie.length;
			multiCookie = unescape(document.cookie.substring(y, endOfCookie));
			arr_Cookies = multiCookie.split("&");
			for (var i = 0; i < arr_Cookies.length; ++i) {
				if (arr_Cookies[i].indexOf(sval) >= 0) {
					arr_sval = arr_Cookies[i].split("=");
					return arr_sval[1];
				}
			}
		}
		x = document.cookie.indexOf(" ", x) + 1;
		if (x == 0)
			break;
	}
	return "";
}

// ÇÔ¼öÀÌ¸§ : strTrim
// ÇÔ¼ö¼³¸í : ºó ¹®ÀÚ¿­Á¤¸®
// ÀÔ ·Â °ª :
// ¹Ý È¯ °ª :
function strTrim(str) {
	return str.replace(/(^\s*)|(\s*$)/g, "");
}

// ÇÔ¼öÀÌ¸§ : CutHanStr
// ÇÔ¼ö¼³¸í : ÇÑ±Û¹®ÀÚ¿­ Àß¶ó¿À±â
// ÀÔ ·Â °ª :
// ¹Ý È¯ °ª :
function CutHanStr(str, len) {
	var l = 0;
	for (var i = 0; i < str.length; i++) {
		l += (str.charCodeAt(i) > 128) ? 2 : 1;
		if (l > len) return str.substring(0, i) + "...";
	}
	return str;
}

// ÇÔ¼öÀÌ¸§ : CutHanStr
// ÇÔ¼ö¼³¸í : ÇÑ±Û¹®ÀÚ¿­ Àß¶ó¿À±â
// ÀÔ ·Â °ª :
// ¹Ý È¯ °ª :
function GetHanStrLen(str) {
	var l = 0;
	for (var i = 0; i < str.length; i++) l += (str.charCodeAt(i) > 128) ? 2 : 1;
	return l;
}

// s: source url
// d: flash id
// w: source width
// h: source height
// t: wmode ("" for none, transparent, opaque ...)
function mf(s, d, w, h, t) {
	return "<object classid=\"clsid:d27cdb6e-ae6d-11cf-96b8-444553540000\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0\" width=" + w + " height=" + h + " id=" + d + "><param name=wmode value=" + t + " /><param name=movie value=" + s + " /><param name=quality value=high /><embed src=" + s + " quality=high wmode=" + t + " type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/shockwave/download/index.cgi?p1_prod_version=shockwaveflash\" width=" + w + " height=" + h + "></embed></object>";
}

// write document contents
function documentwrite(src) {
	document.write(src);
}
function tag_flash() {
	document.write('<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,0,0" width="200" height="90" id="tag" align="middle">');
	document.write('<param name="allowScriptAccess" value="sameDomain"/>');
	document.write('<param name="movie" value="/common/menu/tag.swf"/>');
	document.write('<param name="quality" value="high"/>');
	document.write('<param name="bgcolor" value="#ffffff"/>');
	//XML À§Ä¡
	document.write('<param name="flashvars" value="hfile=http://www.megastudy.net/common/menu/tagData.asp" />');
	//XML À§Ä¡
	document.write('<embed src="tag.swf" quality="high" bgcolor="#ffffff" width="200" height="90" name="tag" align="middle" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer"></embed/>');
	document.write('</object>');
}

/*********************************************************
* ÀÌ¸§ : isNull
* INPUT : f - ÀÔ·ÂÆûÀÌ¸§, msg - °æ°íÃ¢¹®±¸
* ¼³¸í : Æû ÇÊ¼öÀÔ·Â°ª Ã¼Å©½Ã »ç¿ë
* »ç¿ë¹ý : if (isNull(form.textbox,'ÅØ½ºÆ®¸¦'))
**********************************************************/
function isNull(f, msg) {
	if (f.value == "") {
		alert(msg + " ÀÔ·ÂÇÏ¼¼¿ä");
		f.focus();
		return true;
	}
	return false;
}
/*********************************************************
* ÀÌ¸§ : getNextFocus
* INPUT :
* ¼³¸í : ¿ÀÅäÆ÷Ä¿½ºÀÌµ¿
* »ç¿ë¹ý : onKeyUp="javascript:getNextFocus(this, form.name, 4);"
**********************************************************/
//# ¿ÀÅäÆ÷Ä¿½ºÀÌµ¿ (»ç¿ë¹ý : onKeyUp="javascript:getNextFocus(this, form.name, 4);" )
function getNextFocus(obj1, obj2, len) {
	if (obj1.value.length == len) {
		obj2.focus();
	}
}

/*********************************************************
* ÀÌ¸§ : isValidNumber
* INPUT :
* ¼³¸í : ¼ýÀÚÃ¼Å©
* »ç¿ë¹ý :
		if (!isValidNumber(val)) {
			alert("¼ýÀÚ¸¸ ÀÔ·ÂÇÏ¼¼¿ä");
			f.value="";
			f.focus();
		}
**********************************************************/
function isValidNumber(txt) {
	// var val = parseInt(txt);
	if (isNaN(txt) || txt < 0) { return false; }
	return true;
}


function launchCenter(url, name, height, width, scroll) {
	var str = "resizable=1,height=" + height + ",innerHeight=" + height;
	str += ",width=" + width + ",innerWidth=" + width;

	if (window.screen) {
		var ah = screen.availHeight - 30;
		var aw = screen.availWidth - 10;

		var xc = (aw - width) / 2;
		var yc = (ah - height) / 2;

		str += ",left=" + xc + ",screenX=" + xc;
		str += ",top=" + yc + ",screenY=" + yc;
	}
	str += ",scrollbars=" + scroll;
	return window.open(url, name, str);
}




function BookMark(url, title) {
	window.external.AddFavorite(url, title);
}


function goCart(user_id) {
	var frm = document.mainfrm;
	var bPass = false;

	var veri = frm.chrChk;

	if (typeof (veri) == "object") {
		veri = frm.chrChk[0];
		if (typeof (veri) == "object") {
			for (i = 0; i < frm.chrChk.length; i++) {
				if (frm.chrChk[i].checked)
					bPass = true;
			}
		}
		else {
			if (frm.chrChk.checked)
				bPass = true;
		}
	}

	veri = frm.bookChk;
	if (typeof (veri) == "object") {
		veri = frm.bookChk[0];
		if (typeof (veri) == "object") {
			for (i = 0; i < frm.bookChk.length; i++) {
				if (frm.bookChk[i].checked)
					bPass = true;
			}
		}
		else {
			if (frm.bookChk.checked)
				bPass = true;
		}
	}

	veri = frm.pkgChk;

	if (typeof (veri) == "object") {
		veri = frm.pkgChk[0];

		if (typeof (veri) == "object") {
			for (i = 0; i < frm.pkgChk.length; i++) {
				if (frm.pkgChk[i].checked)
					bPass = true;
			}
		}
		else {
			if (frm.pkgChk.checked)
				bPass = true;
		}
	}


	if (!bPass) {
		alert("½ÅÃ»ÇÏ½Ç °­ÁÂ ¶Ç´Â ±³Àç¸¦ ¼±ÅÃÇÏ¿© ÁÖ½Ê½Ã¿ä");
		return;
	}

	frm.action = '/mypage/pay/my_cart_pre.asp';

	frm.submit();
}

function goCartParent(user_id) {
	var frm = document.mainfrm;
	var bPass = false;

	var veri = frm.chrChk;

	if (typeof (veri) == "object") {
		veri = frm.chrChk[0];
		if (typeof (veri) == "object") {
			for (i = 0; i < frm.chrChk.length; i++) {
				if (frm.chrChk[i].checked)
					bPass = true;
			}
		}
		else {
			if (frm.chrChk.checked)
				bPass = true;
		}
	}

	veri = frm.bookChk;
	if (typeof (veri) == "object") {
		veri = frm.bookChk[0];
		if (typeof (veri) == "object") {
			for (i = 0; i < frm.bookChk.length; i++) {
				if (frm.bookChk[i].checked)
					bPass = true;
			}
		}
		else {
			if (frm.bookChk.checked)
				bPass = true;
		}
	}

	veri = frm.pkgChk;

	if (typeof (veri) == "object") {
		veri = frm.pkgChk[0];

		if (typeof (veri) == "object") {
			for (i = 0; i < frm.pkgChk.length; i++) {
				if (frm.pkgChk[i].checked)
					bPass = true;
			}
		}
		else {
			if (frm.pkgChk.checked)
				bPass = true;
		}
	}


	if (!bPass) {
		alert("½ÅÃ»ÇÏ½Ç °­ÁÂ ¶Ç´Â ±³Àç¸¦ ¼±ÅÃÇÏ¿© ÁÖ½Ê½Ã¿ä");
		return;
	}

	frm.action = '/mypage/pay/my_cart_pre.asp';
	frm.target = '_parent';
	frm.submit();
}

function goOffCart(user_id) {
	var frm = document.mainfrm_off;
	var bPass = false;

	var veri = frm.chrChk;
	if (typeof (veri) == "object") {
		veri = frm.chrChk[0];
		if (typeof (veri) == "object") {
			for (i = 0; i < frm.chrChk.length; i++) {
				if (frm.chrChk[i].checked)
					bPass = true;
			}
		}
		else {
			if (frm.chrChk.checked)
				bPass = true;
		}
	}

	if (!bPass) {
		alert("½ÅÃ»ÇÏ½Ç °­ÁÂ¸¦ ¼±ÅÃÇÏ¿© ÁÖ½Ê½Ã¿ä");
		return;
	}

	frm.action = '/mypage/pay/my_cart_pre_off.asp';

	frm.submit();
}

function goOffCart1(user_id) {
	var frm = document.offform;
	var bPass = false;

	var veri = frm.chrChk;
	if (typeof (veri) == "object") {
		veri = frm.chrChk[0];
		if (typeof (veri) == "object") {
			for (i = 0; i < frm.chrChk.length; i++) {
				if (frm.chrChk[i].checked)
					bPass = true;
			}
		}
		else {
			if (frm.chrChk.checked)
				bPass = true;
		}
	}

	if (!bPass) {
		alert("½ÅÃ»ÇÏ½Ç °­ÁÂ¸¦ ¼±ÅÃÇÏ¿© ÁÖ½Ê½Ã¿ä");
		return;
	}

	frm.action = '/mypage/pay/my_cart_pre_off.asp';

	frm.submit();
}


function goCartBook(user_id) {
	var frm = document.mainfrm;
	frm.action = '/mypage/pay/my_cart_pre.asp';
	frm.submit();
}

function goDirectPay(user_id) {
	var frm = document.mainfrm;
	var bPass = false;

	var veri = frm.chrChk;
	if (typeof (veri) == "object") {
		veri = frm.chrChk[0];
		if (typeof (veri) == "object") {
			for (i = 0; i < frm.chrChk.length; i++) {
				if (frm.chrChk[i].checked)
					bPass = true;
			}
		}
		else {
			if (frm.chrChk.checked)
				bPass = true;
		}
	}

	veri = frm.bookChk;
	if (typeof (veri) == "object") {
		veri = frm.bookChk[0];
		if (typeof (veri) == "object") {
			for (i = 0; i < frm.bookChk.length; i++) {
				if (frm.bookChk[i].checked)
					bPass = true;
			}
		}
		else {
			if (frm.bookChk.checked)
				bPass = true;
		}
	}

	veri = frm.pkgChk;
	if (typeof (veri) == "object") {
		veri = frm.pkgChk[0];
		if (typeof (veri) == "object") {
			for (i = 0; i < frm.pkgChk.length; i++) {
				if (frm.pkgChk[i].checked)
					bPass = true;
			}
		}
		else {
			if (frm.pkgChk.checked)
				bPass = true;
		}
	}

	if (!bPass) {
		alert("°áÁ¦ÇÏ½Ç °­ÁÂ ¶Ç´Â ±³Àç¸¦ ¼±ÅÃÇÏ¿© ÁÖ½Ê½Ã¿ä");
		return;
	}

	frm.action = '/mypage/pay/my_direct_pay_pre.asp';

	frm.submit();
}


function goDirectPayParent(user_id) {
	var frm = document.mainfrm;
	var bPass = false;

	var veri = frm.chrChk;
	if (typeof (veri) == "object") {
		veri = frm.chrChk[0];
		if (typeof (veri) == "object") {
			for (i = 0; i < frm.chrChk.length; i++) {
				if (frm.chrChk[i].checked)
					bPass = true;
			}
		}
		else {
			if (frm.chrChk.checked)
				bPass = true;
		}
	}

	veri = frm.bookChk;
	if (typeof (veri) == "object") {
		veri = frm.bookChk[0];
		if (typeof (veri) == "object") {
			for (i = 0; i < frm.bookChk.length; i++) {
				if (frm.bookChk[i].checked)
					bPass = true;
			}
		}
		else {
			if (frm.bookChk.checked)
				bPass = true;
		}
	}

	veri = frm.pkgChk;
	if (typeof (veri) == "object") {
		veri = frm.pkgChk[0];
		if (typeof (veri) == "object") {
			for (i = 0; i < frm.pkgChk.length; i++) {
				if (frm.pkgChk[i].checked)
					bPass = true;
			}
		}
		else {
			if (frm.pkgChk.checked)
				bPass = true;
		}
	}

	if (!bPass) {
		alert("°áÁ¦ÇÏ½Ç °­ÁÂ ¶Ç´Â ±³Àç¸¦ ¼±ÅÃÇÏ¿© ÁÖ½Ê½Ã¿ä");
		return;
	}

	frm.action = '/mypage/pay/my_direct_pay_pre.asp';
	frm.target = '_parent';
	frm.submit();
}

function goOffDirectPay(user_id) {
	var frm = document.mainfrm_off;
	var bPass = false;

	var veri = frm.chrChk;
	if (typeof (veri) == "object") {
		veri = frm.chrChk[0];
		if (typeof (veri) == "object") {
			for (i = 0; i < frm.chrChk.length; i++) {
				if (frm.chrChk[i].checked)
					bPass = true;
			}
		}
		else {
			if (frm.chrChk.checked)
				bPass = true;
		}
	}

	veri = frm.bookChk;
	if (typeof (veri) == "object") {
		veri = frm.bookChk[0];
		if (typeof (veri) == "object") {
			for (i = 0; i < frm.bookChk.length; i++) {
				if (frm.bookChk[i].checked)
					bPass = true;
			}
		}
		else {
			if (frm.bookChk.checked)
				bPass = true;
		}
	}

	veri = frm.pkgChk;
	if (typeof (veri) == "object") {
		veri = frm.pkgChk[0];
		if (typeof (veri) == "object") {
			for (i = 0; i < frm.pkgChk.length; i++) {
				if (frm.pkgChk[i].checked)
					bPass = true;
			}
		}
		else {
			if (frm.pkgChk.checked)
				bPass = true;
		}
	}

	if (!bPass) {
		alert("°áÁ¦ÇÏ½Ç °­ÁÂ ¶Ç´Â ±³Àç¸¦ ¼±ÅÃÇÏ¿© ÁÖ½Ê½Ã¿ä");
		return;
	}

	frm.action = '/mypage/pay/my_direct_pay_pre_off.asp';

	frm.submit();
}

function goOffDirectPay1(user_id) {
	var frm = document.offform;
	var bPass = false;

	var veri = frm.chrChk;
	if (typeof (veri) == "object") {
		veri = frm.chrChk[0];
		if (typeof (veri) == "object") {
			for (i = 0; i < frm.chrChk.length; i++) {
				if (frm.chrChk[i].checked)
					bPass = true;
			}
		}
		else {
			if (frm.chrChk.checked)
				bPass = true;
		}
	}

	veri = frm.bookChk;
	if (typeof (veri) == "object") {
		veri = frm.bookChk[0];
		if (typeof (veri) == "object") {
			for (i = 0; i < frm.bookChk.length; i++) {
				if (frm.bookChk[i].checked)
					bPass = true;
			}
		}
		else {
			if (frm.bookChk.checked)
				bPass = true;
		}
	}

	veri = frm.pkgChk;
	if (typeof (veri) == "object") {
		veri = frm.pkgChk[0];
		if (typeof (veri) == "object") {
			for (i = 0; i < frm.pkgChk.length; i++) {
				if (frm.pkgChk[i].checked)
					bPass = true;
			}
		}
		else {
			if (frm.pkgChk.checked)
				bPass = true;
		}
	}

	if (!bPass) {
		alert("°áÁ¦ÇÏ½Ç °­ÁÂ ¶Ç´Â ±³Àç¸¦ ¼±ÅÃÇÏ¿© ÁÖ½Ê½Ã¿ä");
		return;
	}


	frm.action = '/mypage/pay/my_direct_pay_pre_off.asp';

	frm.submit();
}

function goCartFree(user_id) {
	var frm = document.mainfrm;
	frm.action = '/mypage/pay/my_cart_free.asp';
	frm.submit();
}

function goDirectPayBook(user_id) {
	var frm = document.mainfrm;
	frm.action = '/mypage/pay/my_direct_pay_pre.asp';
	frm.submit();
}


// ½ºÅ©·¦ 2008-10-07 ±èÀº¼º
function ListScrap(tname, idx) {

	var obj = document.frmScrap;
	if (confirm(" ÇØ´ç °Ô½Ã¹°À» ½ºÅ©·¦ ÇÏ½Ã°Ú½À´Ï±î?  ")) {

		if (tname) obj.ScTb.value = tname;
		if (idx) obj.Scidx.value = idx;
		obj.target = "ExeFrm";
		obj.action = "/common/inc/Scrap.asp";
		obj.submit();
	}

}

function ChkLogin() {
	alert("·Î±×ÀÎ ÈÄ ÀÌ¿ëÇØ ÁÖ¼¼¿ä ");
	location.href = "/member/memb_login.asp";
}

function ChkLoginParent() {
	alert("·Î±×ÀÎ ÈÄ ÀÌ¿ëÇØ ÁÖ¼¼¿ä ");
	parent.location.href = "/member/memb_login.asp";
}



// ´ä±Û ¸¸Á·µµ 2008-10-07 ±èÀº¼º
function Feel() {
	var obj = document.frmFeel;
	if (confirm("´äº¯¿¡ ´ëÇÑ ¸¸Á·µµ¸¦ µî·ÏÇÏ½Ã°Ú½À´Ï±î?  ")) {
		obj.target = "ExeFrm";
		obj.action = "/common/inc/starFeel.asp";
		obj.submit();
	}
}


// ½ºÅ©·¦ 2008-10-07 ±èÀº¼º
function ViewPrintp(tname, idx) {

	var obj = document.frmPrint;
	var WinPrint = launchCenter('about:blank', 'WinPrint', '700', '1000', 'auto');
	obj.target = "WinPrint";
	obj.action = "/common/inc/ViewPrint.asp";
	obj.submit();
}

function ViewPrintp1(idx) {

	var obj = document.frmPrint;
	var WinPrint = launchCenter('about:blank', 'WinPrint', '700', '1000', 'auto');
	obj.target = "WinPrint";
	obj.action = "/acad/sch_print.asp?SM_SCH_CD=" + idx;
	obj.submit();
}

// ÇÔ¼öÀÌ¸§ : onlyNumber()
// ÇÔ¼ö¼³¸í : ¿ÀÁ÷ ¼ýÀÚ¸¸ ÀÔ·ÂµÇ°Ô ÇÔ
// ÀÔ ·Â °ª : ¾øÀ½
// ¹Ý È¯ °ª : ¾øÀ½
// »ç¿ë¹ý : <input type="text" onKeyPress="onlyNumber()">
function onlyNumber() {
	if (window.event.keyCode < 48 || window.event.keyCode > 57) {
		window.event.keyCode = 0;
	}
}

// ÀÌ¹ÌÁö Å¬¸¯ Á¡¼± ¾ø¾Ö±â 2008-10-07 ±èÀº¼º
function autoBlur() {
	// if(event.srcElement.tagName=="A"||event.srcElement.tagName=="IMG")
	// document.body.focus();
}
document.onfocusin = autoBlur;


function goMenu(v) {
	switch (v) {
		case "a1":
			location.href = "/mypage/";
			break;
		case "a2":
			location.href = "/prof/";
			break;
		case "a3":
			location.href = "/vod/";
			break;
		case "a4":
			location.href = "/peet/";
			break;
		case "a5":
			location.href = "/eng/";
			break;
		case "a6":
			location.href = "/data1/";
			break;
		case "a7":
			location.href = "/data2/";
			break;
		case "a8":
			location.href = "/cust/";
			break;
		case "a9":
			location.href = "/acad/";
			break;
		case "a1_1":
			location.href = "/acad/";
			break;
		case "a1_2":
			location.href = "/acad/gangnam.asp";
			break;
		case "a1_3":
			location.href = "/acad/shinchon.asp";
			break;
		case "a1_4":
			location.href = "/acad_peet/sc_index.asp";
			break;
		case "a1_5":
			location.href = "/acad/peet_index.asp";
			break;
		case "a1_6":
			location.href = "/acad_md/gn_index.asp";
			break;
	}
}


/**
* 2008-10-27 ±èÀº¼º
* ½ÃÀÛÆäÀÌÁö ¼³Á¤
*/
function BstartPage(Obj, urlStr) {
	if (document.all && window.external) {
		Obj.style.behavior = 'url(#default#homepage)';
		if (urlStr) {
			Obj.setHomePage(urlStr);
		} else {
			Obj.setHomePage("http://www.megaut.co.kr");
		}
	} else {

	}
}

function go_main_banner(v) {

	var bannerLnk = new Array(14);

	bannerLnk[1] = "/acad/peet_sch_lst.asp";
	bannerLnk[2] = "/vod/vod_chr_focus.asp?menuid=1";
	bannerLnk[3] = "/peet/peet_chr_focus.asp?menuid=1";

	bannerLnk[11] = "/acad/acad_sch_gangnam_lst.asp?camp_cd=1&SM_KBN=TT";
	bannerLnk[12] = "/acad/acad_sch_shinchon_lst.asp?camp_cd=5&SM_KBN=TT";
	//bannerLnk[13] = "/acad/acad_sch_gangnam_lst.asp?camp_cd=1&SM_KBN=P";
	//bannerLnk[14] = "/acad/acad_sch_shinchon_lst.asp?camp_cd=5&SM_KBN=P";

	document.location.href = bannerLnk[v];

}

function MovieView1(id, murl, w, h, pv, as1, pv2) {
	document.write("\
	<embed id='"+ id + "' src='" + murl + "' width='" + w + "' height='" + h + "' autostart='" + as1 + "' loop='false' \
	showstatusbar='false' showcontrols='true' ShowAudioControls='false'>\
	");
}


/*
±³Àç ¹Ì¸®º¸±â
*/
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// ÇÔ¼ö¼³¸í : ebook°øÅëÃ³¸® ÇÔ¼ö
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function fncEBookView(dcd, bcd) {

	if (isNaN(bcd)) {
		if (bcd.indexOf("-") > 0) {
			var intBookCd = bcd.substring(0, bcd.indexOf("-"));
		} else if (bcd.indexOf("_") > 0) {
			var intBookCd = bcd.substring(0, bcd.indexOf("_"));
		} else {
			var intBookCd = bcd;
		}
	} else {
		var intBookCd = bcd;
	}

	window.open("https://file.megagong.net/ebook/preview.asp?dcd=" + dcd + "&bcd=" + bcd, "e_Book_View", "top=0, left=0, width=1280, height=1034, toolbar=0, directories=0, status=0, menubar=0, scrollbars=no, resizable=no");
}

/*
¾Æ·¡ ÇÔ¼ö 3°³´Â ¿µ¾î Å×½ºÆ® ¿ë
*/
function open_result_popup(a) {
	str = window.open('./pop_result.asp?t_idx=' + a, 'report', 'top=0 left=0 width=720 height=700 scrollbars=yes');
	str.focus();
}

function open_feedback_popup(a) {
	str2 = window.open('./pop_feedback.asp?t_idx=' + a, 'feed', 'top=0 left=500 width=720 height=700 scrollbars=yes');
	str2.focus();
}

function player_test_preview(chr_cd, ord) {
	str = window.open("/player/mega/entertest/sample_player_engtest.asp?chr_cd=" + chr_cd + "&ord=" + ord, "sampleLecture", "width=1020 height=720 scrollbars=no");
	str.focus();
}

/*********************************************************
* ÀÌ¸§ : getCalPnt
* INPUT : totPnt - ÃÑ Æ÷ÀÎÆ®, pntRate - Àû¿ë Æ÷ÀÎÆ®À²
* ¼³¸í : ¿ÀÅäÆ÷Ä¿½ºÀÌµ¿
**********************************************************/
function getCalPnt(totPnt, pntRate) {
	return parseInt(totPnt * (pntRate / 100));
}


/*********************************************************
* ÀÌ¸§  : setPng24
* INPUT : obj - Object
* ¼³¸í  : IE6 ¿¡¼­ PNG Åõ¸í Ã³¸®
**********************************************************/
function setPng24(obj) {
	obj.width = obj.height = 1;
	obj.className = obj.className.replace(/\bpng24\b/i, '');
	obj.style.filter =
		"progid:DXImageTransform.Microsoft.AlphaImageLoader(src='" + obj.src + "',sizingMethod='image');"
	obj.src = '';
	return '';
}


/*********************************************************
* ÇÔ¼öÀÌ¸§  : pop_intro
* ÇÔ¼ö¼³¸í  : obj - Object
* ÀÔ ·Â °ª  : ÀÌº¥Æ®ÄÚµå
* ¹Ý È¯ °ª  : ¾øÀ½
* »ç ¿ë ¹ý  : javascript:pop_intro(20110209)
**********************************************************/
function pop_intro(evt_code) {
	window.open("/event/event_join_pop.asp?evt_code=event" + evt_code, "calendar", "resizable=no,width=480,height=100,top=0,left=0,scrollbars=yes,location=no,status=no");
}

/*********************************************************
* ÀÌ¸§ : MM_openBrWindow_Center
* INPUT : theURL - ÆË¾÷ URL, winName - ÆË¾÷ Å¸ÀÌÆ², features - ÆË¾÷ ¼Ó¼º
* ¼³¸í : °¡¿îµ¥ »õÃ¢ ¿­±â
**********************************************************/
function MM_openBrWindow_Center(theURL, winName, features) { //v2.0
	var strTemp = features.split(", ");
	var strTemp2 = "";
	var strTempCount = strTemp.length;
	var chekStr = "";
	var findStr1 = "width";
	var findStr2 = "height";
	var features2 = "";
	var x = "";
	var u = "";

	for (i = 0; i < strTempCount; i++) {
		chekStr = strTemp[i].replace(/\s/g, "");

		strTemp2 = chekStr.split("=")

		if (chekStr.indexOf(findStr1) != -1) {
			x = (screen.availWidth - strTemp2[1]) / 2;
			features2 = features2 + ", left=" + x;
		}

		if (chekStr.indexOf(findStr2) != -1) {
			y = (screen.availHeight - strTemp2[1]) / 2;
			features2 = features2 + ", top=" + y;
		}
	}
	window.open(theURL, winName, features + features2);
}



///////////// ÀÌ¹ÌÁö ¼Ò½º ¹Ù²Ù±â 
function change_img(obj, tmp_a, tmp_b) {
	obj.src = obj.src.replace(tmp_a, tmp_b);
}



function Left(Str, Num) {
	if (Num <= 0)
		return "";
	else if (Num > String(Str).length)
		return Str;
	else
		return String(Str).substring(0, Num);
}


function Right(Str, Num) {
	if (Num <= 0)
		return "";
	else if (Num > String(Str).length)
		return Str;
	else {
		var iLen = String(Str).length;
		return String(Str).substring(iLen, iLen - Num);
	}
}

function isIE() {
	var agent = navigator.userAgent.toLowerCase();

	if ((navigator.appName == 'Netscape' && navigator.userAgent.search('Trident') != -1) || (agent.indexOf("msie") != -1)) {
		return true;
	}
	else {
		return false;
	}
}
function isIE10() {
	var agent = navigator.userAgent.toLowerCase();
	//alert(agent);
	if (agent.indexOf("msie 7") > 0) {
		return false;
	} else {
		if (agent.indexOf("msie 8") > 0) {
			return false;
		} else {
			if (agent.indexOf("msie 9") > 0) {
				return false;
			} else {
				return true;
			}
		}
	}
}

function checkEmail(email) {
	//email = 'aaa@naver.com';
	//ÀÌ¸ÞÀÏ Ã¼Å©
	var regex = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;

	if (regex.test(email) === false) {
		//alert("Àß¸øµÈ ÀÌ¸ÞÀÏ Çü½ÄÀÔ´Ï´Ù.");  
		return false;
	} else {
		return true;
	}
}


////////////////////////////////////////////////////////////////
//ÇÔ¼ö¸í	: fncNumChk2
//¼³¸í	: ¼ýÀÚ¸¸ ÀÔ·Â°¡´É
//»ç¿ë : <input type="text" name="txtTelNo2" id="txtTelNo2" onkeyup="fncNumChk2(this);" />
// fncNumChk() »ç¿ë½Ã Å©·Ò¿¡¼­ ÇÑ±ÛÀÔ·Â½Ã keypress ÀÌº¥Æ®°¡ ¹ß»ýÀ» ¾ÈÇØ¼­ keyup À¸·Î ÀÌº¥Æ® ¼³Á¤½Ã ¼ýÀÚ°¡ ¾Æ´Ñ°ÍÀ» Áö¿ì´Â½ÄÀ¸·Î Àû¿ë
// Âü°í : http://kanetami.tistory.com/entry/Input-%EC%B0%BD-%EC%88%AB%EC%9E%90%EB%A7%8C-%EC%9E%85%EB%A0%A5-%EC%A0%95%EA%B7%9C%EC%8B%9D-%EC%9D%B5%EC%8A%A4-%ED%81%AC%EB%A1%AC-%ED%8C%8C%ED%8F%AD-%EB%8B%A4%EB%90%A8
////////////////////////////////////////////////////////////////
function fncNumChk2(elem) {
	elem.value = elem.value.replace(/[^0-9]/g, '');
}

function fncOnlyHangul(elem) {
	var pattern = /[a-z0-9]|[ \[\]{}()<>?|`~!@#$%^&*-_+=,.;:\"'\\]/g;
	elem.value = elem.value.replace(pattern, '');
}

function chkOnlyHangul(val) {
	var tmp = /^[¤¡-¤¾|°¡-ÆR|\*]+$/

	if (tmp.test(val)) return true;
	return false;
}

function chkHpNo(val) {
	if (val == '') return false;

	// ±âÁ¸ ¹øÈ£¿¡¼­ - ¸¦ »èÁ¦ÇÕ´Ï´Ù.
	var trans_num = val.replace(/-/gi, '');

	// ÀÔ·Â°ªÀÌ ÀÖÀ»¶§¸¸ ½ÇÇàÇÕ´Ï´Ù.
	if (trans_num != null && trans_num != '') {
		// ÃÑ ÇÚµåÆù ÀÚ¸®¼ö´Â 11±ÛÀÚÀÌ°Å³ª, 10ÀÚ¿©¾ß ÇÕ´Ï´Ù.
		if (trans_num.length == 11 || trans_num.length == 10) {
			// À¯È¿¼º Ã¼Å©
			var regExp_ctn = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})([0-9]{3,4})([0-9]{4})$/;
			if (regExp_ctn.test(trans_num)) {
				// À¯È¿¼º Ã¼Å©¿¡ ¼º°øÇÏ¸é ÇÏÀÌÇÂÀ» ³Ö°í °ªÀ» ¹Ù²ãÁÝ´Ï´Ù.
				trans_num = trans_num.replace(/^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?([0-9]{3,4})-?([0-9]{4})$/, "$1-$2-$3");
				return true;
			}
			else {
				return false;
			}
		}
		else {
			return false;
		}
	}
}
function chk_email(email) {
	var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
	if (exptext.test(email) == false) {
		return false;
	}
	return true;
}

function getStrByte(strValue) {
	var totalByte = 0;

	for (var i = 0; i < strValue.length; i++) {
		oneChar = strValue.charAt(i);
		if (escape(oneChar).length > 4) {
			totalByte += 2;
		} else {
			totalByte++;
		}
	}

	return totalByte;
}

function inputPhoneNumber(obj) {


	var number = obj.value.replace(/[^0-9]/g, "");
	var phone = "";


	if (number.length < 4) {
		return number;
	} else if (number.length < 7) {
		phone += number.substr(0, 3);
		phone += "-";
		phone += number.substr(3);
	} else if (number.length < 11) {
		phone += number.substr(0, 3);
		phone += "-";
		phone += number.substr(3, 3);
		phone += "-";
		phone += number.substr(6);
	} else {
		phone += number.substr(0, 3);
		phone += "-";
		phone += number.substr(3, 4);
		phone += "-";
		phone += number.substr(7);
	}
	obj.value = phone;
}

/* 
ÆÄÀÏ ´Ù¿î·Îµå 
path °æ·Î(ÇÊ¼ö)
name ÆÄÀÏ¸í(¾øÀ¸¸é °ø¹é)
*/
function fncDownload(path, name) {
	var file_main = window.location.hostname.indexOf('dev') < 0 ? 'https://file.megagong.net' : 'https://filedev.megagong.net';
	var form = document.createElement("form");
	form.setAttribute("accept-charset", "utf-8");
	form.setAttribute("method", "Post");  //Post ¹æ½Ä
	form.setAttribute("action", file_main + "/file/file_downloader.asp"); //¿äÃ» º¸³¾ ÁÖ¼Ò

	var hiddenField = document.createElement("input");
	hiddenField.setAttribute("type", "hidden");
	hiddenField.setAttribute("name", "path");
	hiddenField.setAttribute("value", path);
	form.appendChild(hiddenField);

	hiddenField = document.createElement("input");
	hiddenField.setAttribute("type", "hidden");
	hiddenField.setAttribute("name", "name");
	hiddenField.setAttribute("value", name);
	form.appendChild(hiddenField);

	document.body.appendChild(form);
	form.submit();
	//form.remove();
	document.body.removeChild(form)
}


/*
ÆÄÀÏ ¾÷·Îµå
form_id = submit ÇÒ form id
board_name = ÀúÀåÀ§Ä¡ ±¸ºÐ
sub_board_name = ÀúÀåÀ§Ä¡ ±¸ºÐ2
id_str = ¿©·¯ÆÄÀÏÀÏ¶§ id  , ex) "ATC_FILE1/ATC_FILE2"
delim = id_str ±¸ºÐÇÒ °ª , ex) "/"
*/
function fncFileUPload(form_id, board_name, sub_board_name, id_str, delim) {
	if ((id_str == "" || id_str == undefined) || (delim == "" || delim == undefined)) {
		return false;
	}

	var target_tot = id_str.split(delim).length;

	var proc_chk_tot = 0;
	id_str.split(delim).forEach(function (i) {

		//console.log(i);
		///*
		var formData = new FormData();

		formData.append("board", board_name);
		formData.append("sub_dir", sub_board_name);
		formData.append("attfile", jQuery("#" + i)[0].files[0]);

		var tmp_file_name = $("#" + i).val();
		var file_name = tmp_file_name.substring(tmp_file_name.lastIndexOf("\\") + 1);

		var file_main = document.domain.indexOf('dev') < 0 ? 'https://file.megagong.net' : 'https://filedev.megagong.net';

		jQuery.ajax({
			url: file_main + "/file/file_upload_j.asp"
			, type: "POST"
			, processData: false
			, contentType: false
			, xhrFields: {
				withCredentials: true
			}
			//, contentType: 'application/x-www-form-urlencoded; charset=euc-kr'
			, data: formData
		})
			.done(function (json) {
				var obj = JSON.parse(json);
				//console.log (obj)
				a = obj;
				if (obj["err_code"] < 0) {
					if(obj["upload_msg"] != "") {
						alert(obj["upload_msg"]);
					}
					return false;
				} else {
					$("#" + i + "_NAME").val(obj["file_info"]["file_name"]);
					$("#" + i + "_SIZE").val(obj["file_info"]["file_size"]);
					$("#" + i + "_MIME").val(obj["file_info"]["file_mime"]);
					$("#" + i + "_URL").val(obj["file_info"]["file_url"]);

					$("#" + i + "_ORI_NAME").val(file_name);
				}
			})
			.fail(function () {
				proc_chk_tot++;

				if (proc_chk_tot == target_tot) {
					//document.myform.submit();
					if (form_id != "") {
						document.getElementById(form_id).submit();
					}
				}
			})
			.always(function () {
				proc_chk_tot++;

				if (proc_chk_tot == target_tot) {
					//document.myform.submit();
					if (form_id != "") {
						document.getElementById(form_id).submit();
					}

				}
			});

		//*/
	});
}

// IE °¡ assign Áö¿øÇÏÁö ¾Ê¾Æ¼­ »ý±â´Â ¿À·ù ¹æÁö
if (typeof Object.assign != 'function') {
	Object.assign = function (target) {
		'use strict';
		if (target == null) {
			throw new TypeError('Cannot convert undefined or null to object');
		}

		target = Object(target);

		for (var index = 1; index < arguments.length; index++) {
			var source = arguments[index];
			if (source != null) {
				for (var key in source) {
					if (Object.prototype.hasOwnProperty.call(source, key)) {
						target[key] = source[key];
					}
				}
			}
		}
		return target;
	};
}

// IE °¡ assign Áö¿øÇÏÁö ¾Ê¾Æ¼­ »ý±â´Â ¿À·ù ¹æÁö
if (typeof Object.assign != 'function') {
	Object.assign = function (target) {
		'use strict';
		if (target == null) {
			throw new TypeError('Cannot convert undefined or null to object');
		}

		target = Object(target);

		for (var index = 1; index < arguments.length; index++) {
			var source = arguments[index];
			if (source != null) {
				for (var key in source) {
					if (Object.prototype.hasOwnProperty.call(source, key)) {
						target[key] = source[key];
					}
				}
			}
		}
		return target;
	};
}



//2022.01.26~02.06º¹ÁÖ¸Ó´Ï ÀÌº¥Æ®
function newyear_pnt(evt_hcd,evt_bcd){
	var newyear_proc = "/s/gong/event/2022/01260010/proc.asp";
	var newyear_url = "/s/gong/event/2022/01260010/index.asp#eventWrap";

	if(evt_hcd=="3"){
		newyear_proc = "/s/sobang/event/2022/01260009/proc.asp";
		newyear_url = "/s/sobang/event/2022/01260009/index.asp#eventWrap";
	}else if (evt_hcd=="5"){
		newyear_proc = "/s/army/event/2022/01260005/proc.asp";
		newyear_url = "/s/army/event/2022/01260005/index.asp#eventWrap";
	}	
	var params = {
		mode: "tec_point"  
		,evt_hcd : evt_hcd    
		,evt_bcd : evt_bcd  
	}
	$.ajax({
		url:newyear_proc //°ø¹«¿ø,¼Ò¹æ,±º¹«¿ø¿¡ µû¶ó ´Þ¶ó¾ßÇÔ.
		,datatype:"json"
		,traditional : true
		,data:params
		,type:"post"
		,success : function(data){
			d = JSON.parse(data);
			if(d.result=="succ"){   
				if(confirm(d.msg)){
					location.href=newyear_url;//°ø¹«¿ø,¼Ò¹æ,±º¹«¿ø¿¡ µû¶ó ´Þ¶ó¾ßÇÔ.
				}				
			}else{
				if(d.msg!=""){
					alert(d.msg);
					if(d.move == "login"){
						location.href="/member/login.asp";
					}
				}
			}
		}
	});
}