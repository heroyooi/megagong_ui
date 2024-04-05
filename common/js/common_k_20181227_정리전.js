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
	function MM_openBrWindow(theURL,winName,features) { //v2.0
	  window.open(theURL,winName,features);
	}
	function MM_swapImgRestore() { //v3.0
	  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
	}
	function MM_preloadImages() { //v3.0
	  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
		var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
		if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
	}

	function MM_findObj(n, d) { //v4.01
	  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
		d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
	  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
	  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
	  if(!x && d.getElementById) x=d.getElementById(n); return x;
	}

	function MM_swapImage() { //v3.0
	  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
	   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
	}

	function expandLayer(method,basisImg,hostLayer,leftPosition,topPosition){

		var hostObj	= document.getElementById(hostLayer);
		var basisObj	= document.getElementById(basisImg);

		hostObj.style.left = getAbsuluteLeftObj( basisObj ) + leftPosition ;
		hostObj.style.top = getAbsuluteTopObj( basisObj ) + topPosition;

		hostObj.style.display = method;


	}

	function getAbsuluteTopObj( obj ){

		var par = null;
		par = obj;
		var dy = 0;

		while( par.offsetParent ){
			dy+= par.offsetParent.offsetTop;
			par = par.offsetParent;
		}

		return dy;

	}

	function getAbsuluteLeftObj( obj ){

		var par = null;
		par = obj;
		var dx = 0;

		while( par.offsetParent ){
			dx+= par.offsetParent.offsetLeft;
			par = par.offsetParent;
		}

		return dx;

	}

function pagetype(){

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

pagetype.prototype.paging = function( totalpage , pagesize , pgsize , cpage ){

	if( totalpage == "" || totalpage == "0" || isNaN(totalpage) ) return;
	if( pagesize == "" || pagesize == "0" || isNaN(pagesize) ) return;
	if( pgsize == "" || pgsize == "0" || isNaN(pgsize) ) return;
	if( cpage == "" ) cpage = 1;

	var _url = location.href;
	var _search = location.search.substr(1);
	_url = _url.replace( "&&" , "&" );
	_search = _search.replace( "&&" , "&" );
	var _path = _url.replace( _search , "" );
	var str_get = "?";


	if( this.paramname == "" ){
		this.paramname = "page";
	}

	if( this.page_name == "" ){
		this.page_name = _path;
	}

	if( _search == "" ){

	}else{
		var array_param = _search.split("&");
		for( var i = 0 ; i < array_param.length ; i++ ){
			if( array_param[i].split("=")[0] != this.paramname ){
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
	var obj_locate = document.getElementById( this.id_locate );

	var cpg = Math.ceil( cpage / pgsize );
	var tpg = Math.ceil( totalpage / pgsize );

	if( cpg > 1 ){
		isprev = true;
		n_prev = ( cpg - 1 ) * pgsize;
	}
	if( cpg < tpg ){
		isnext = true;
		n_next = ( cpg * pgsize ) + 1;
	}
	n_start =  ( cpg - 1 ) * pgsize + 1;
	n_end =  ( cpg * pgsize );

	if( n_end > totalpage ){
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

	str_get = str_get.replace("&&","&")


	obj_first.onclick = function(){
		location.href = str_get + "1";
	}
	obj_last.onclick = function(){
		location.href = str_get + totalpage;
	}

	if( isprev ){
		obj_prev.onclick = function(){
			location.href = str_get + n_prev;
		}
	}
	if( isnext ){
		obj_next.onclick = function(){
			location.href = str_get + n_next;
		}
	}

	var array_btn_page = new Array( ( n_end - n_start + 1 ) );

	for( var i = n_start ; i <= n_end ; i++ ){

		array_btn_page[i] = document.createElement("SPAN");
		if( i == cpage ){
			array_btn_page[i].className = this.class_on;
		}else{
			array_btn_page[i].className = this.class_off;
		}
		array_btn_page[i].style.cursor = "pointer";
		array_btn_page[i].data = i;
		array_btn_page[i].innerHTML = i;
		array_btn_page[i].onclick = function(){
			location.href = str_get + this.data;
		}

	}

	obj_locate.appendChild( obj_first );
	obj_locate.appendChild( document.createTextNode(" ") );
	obj_locate.appendChild( obj_prev );
	obj_locate.appendChild( document.createTextNode(" ") );

	for( var i = n_start ; i <= n_end ; i++ ){
		obj_locate.appendChild( array_btn_page[i] );
		obj_locate.appendChild( document.createTextNode(" ") );
	}

	obj_locate.appendChild( obj_next );
	obj_locate.appendChild( document.createTextNode(" ") );
	obj_locate.appendChild( obj_last );

}

function bannerAction( n ){

		var peetLnk = new Array("jomas","yhokim","kwnam");
		var peetLnkUrl = peetLnk[Math.floor(Math.random()*3)];

	switch (n)
	{
		case 0 :
			location.href="/data2/data2_guide.asp";
			break;
		case 1 :
			location.href="/peet/peet_ad_jomas_step1.asp?page_flg=ad";
			break;
		case 2 :
			location.href="/peet/peet_ad_kwnam_step1.asp?page_flg=ad";
			break;
		case 3 :
			break;
		case 4 :
			location.href="/peet/peet_ad_yhokim_step1.asp?page_flg=ad";
			break;
		case 5 :
			location.href="/peet/peet_ad_" + peetLnkUrl + "_list.asp?page_flg=ad";
			break;
		case 6 :
			location.href="/data2/data2_sub5.asp";
			break;
		}

}

// ÇÔ¼öÀÌ¸§ : GnxFlashActivate
// ÇÔ¼ö¼³¸í : FLash Object Generating
// ÀÔ ·Â °ª : ±¸ºÐÀÚ, ¼Ó¼º
// ¹Ý È¯ °ª :

function GnxFlashActivate( strFlashUrl , n4Witdh , n4Height , strWmode , strId , strClassName , strFlashvar ) {

	if (n4Witdh != 0) {
		objSize_attribute = " width='"+ n4Witdh +"' height='"+ n4Height +"'";
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

	document.writeln( "<object classid='clsid:d27cdb6e-ae6d-11cf-96b8-444553540000' codebase='http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=10,0,0,0' " + objSize_attribute + objId_IE_attribute + className_attribute + ">" );
	document.writeln( "<param name='movie' value='"+ strFlashUrl +"' />" );
	document.writeln( "<param name='quality' value='high' />" );
	document.writeln( "<param name='allowScriptAccess' value='always' />" );
	document.writeln( wmode_param );
	document.writeln( Flashvar_param );
	document.writeln( "<!-- Hixie method -->" );
	document.writeln( "<!--[if !IE]> <-->" );
	document.writeln( "<object type='application/x-shockwave-flash' data='"+ strFlashUrl +"'" + Flashvar_attribute + objSize_attribute + objId_attribute + wmode_attribute + className_attribute + "></object>" );
	document.writeln( "<!--> <![endif]-->" );
	document.writeln( "</object>" );
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
	if(u==null) {
		return;
	}

	var p = a[1];
	if(p==null || p.length==0) {
		var q = u.lastIndexOf('/');
		p = (q<0)? u.substring(0, u.lastIndexOf('.')) : u.substring(q+1, u.lastIndexOf('.'));
	}
	//	alert(p);

	var o = (a[6]==null)? 'menubar=0, scrollbars=0, resizable=0' : a[6];
	if(a[2]!=null) o +=', width='+a[2];
	if(a[3]!=null) o +=', height='+a[3];

	if (screen.width < 1025){
		LeftPosition = 0;
		TopPosition  = 0;
	}
	else{
		LeftPosition = (screen.width)?(screen.width-a[2])/2:100;
		TopPosition  = (screen.height)?(screen.height-a[3])/2:100;
	}

	 o +=', left='+ LeftPosition; //a[4];
	 o +=', top='+ TopPosition; //a[5];

	//if(a[4]!=null) o +=', left='+ LeftPosition; //a[4];
	//if(a[5]!=null) o +=', top='+ TopPosition; //a[5];

	var win = window.open(u, p, o);
	win.focus();

	return win;

}

// ÇÔ¼öÀÌ¸§ : player_free()
// ÇÔ¼ö¼³¸í : ÇÃ·¹ÀÌ¾î - FREE
// ÀÔ ·Â °ª : ±¸ºÐÀÚ, ¼Ó¼º
// ¹Ý È¯ °ª :
function fnFlashObject(byPath,byWidth,byHeight,byWMode){

	document.write('<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0"');
	document.write('width='+byWidth+' height='+byHeight+' id="main" align="middle">');
	document.write('<param name="allowScriptAccess" value="sameDomain">');
	document.write('<param name="movie" value='+byPath+'>');
	document.write('<param name="quality" value="high">');
	document.write('<param name="menu" value="false">');
	document.write('<param name="wmode" value='+byWMode+'>');
	document.write('<embed src='+byPath+' quality="high" width='+byWidth+' height='+byWidth+' name="main" align="middle" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer">');
	document.write('</object>');
}

//»ç¿ëÀÚ ÇØ»óµµ, ºê¶ó¿ìÀú ¹öÀüÈ®ÀÎ
//var UseWidth = window.screen.availWidth;
//var UseHeight = window.screen.availHeight;
//var appPosition = navigator.appVersion.lastIndexOf('MSIE');
//var appVersion = navigator.appVersion.substr(appPosition + 5, 1);
//var osVersion = navigator.appVersion.substr(appPosition + 10, 14);

var MegastudyPlayer
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

//ÆÄÀÏ¸í Á÷Á¢³Ñ±æ°æ¿ì Æú´õ Æ÷ÇÔ°æ·Î ex) player_free('40','open/2009/aaaaa.wmv')
function player_free(kbn, para)
{
	player_time3_k(kbn, para,0, 0, 0);
	return;

   
   var vPlayerUrl;
   var vPlayerParam, vPlayerNm, vPlayerOption;
   vPlayerParam = "?dng_kbn=" + kbn + "&CHR_CD=" + para;
   vPlayerParam = vPlayerParam + "&UseWidth=" + UseWidth + "&UseHeight=" + UseHeight;
   vPlayerNm = "DNGPlayer";
   vPlayerOption = "resizable=yes, width=1024, height=645, top=0, left=0";

    // ´Ü¿ø °­ÀÇÀÏ °æ¿ì

	if( kbn == "evt" ){
		vPlayerUrl = "/Player/Mega/sPlayerFree/Player_Load.asp";
 		vPlayerOption = "width=960,height=740,top=0,left=0";
 		window.open(vPlayerUrl + vPlayerParam, vPlayerNm, vPlayerOption);

	}

	if ( kbn == "10" || kbn == "60" || kbn == "62") {		//ÀÏ¹Ý µ¿¿µ»ó ¸Àº¸±â(free)
		vPlayerUrl = "/Player/Mega/nPlayerFree/Player_Free_Normal.asp";
 		vPlayerOption = "resizable=yes,scrollbars=no,width=370,height=585,top=0,left=0, status=yes";
 		window.open(vPlayerUrl + vPlayerParam, vPlayerNm, vPlayerOption);
	}

	if ( kbn == "11") {		//ÀÏ¹Ý µ¿¿µ»ó ÀÌº¥Æ®(free)
		vPlayerUrl = "/Player/Mega/nPlayerFree/Player_Event_Normal.asp";
 		vPlayerOption = "resizable=yes,scrollbars=no,width=370,height=585,top=0,left=0, status=yes";
 		window.open(vPlayerUrl + vPlayerParam, vPlayerNm, vPlayerOption);
	}

	if ( kbn == "20" || kbn == "40") {		//°íÈ­Áú µ¿¿µ»ó ¸Àº¸±â (free)
		vPlayerUrl = "/Player/Mega/sPlayerFree/Player_Load.asp";
 		vPlayerOption = "resizable=yes,width=960,height=740,top=0,left=0";
 		window.open(vPlayerUrl + vPlayerParam, vPlayerNm, vPlayerOption);
	}

    if ( kbn == "30" ) {		//¿µ¾î µ¿¿µ»ó ¸Àº¸±â (free)
		vPlayerUrl = "";
		vPlayerNm = "ENGPlayer";
		vPlayerOption = "width=1024,height=645,top=0,left=0";
		vPlayerOption = "resizable=no, width=1024, height=645, top=0, left=0";
		window.open(vPlayerUrl + vPlayerParam, vPlayerNm, vPlayerOption);

		engfrm.target = vPlayerNm;
		engfrm.pchr_cd.value = para;
		engfrm.action = "http://www.megastudy.net/language/player_link/link_Main.asp";
		engfrm.submit();

		return;
	}

	//ÀÌº¥Æ® µ¿¿µ»ó °íÈ­Áú MD sPlayerEvent 40,50,51,61,63
	if ( kbn == "50" || kbn == "51" || kbn == "61" || kbn == "63") {
		vPlayerUrl = "/Player/Mega/sPlayerEvent/Player_Load.asp";
 		vPlayerOption = "resizable=yes,width=960,height=740,top=0,left=0";
 		window.open(vPlayerUrl + vPlayerParam + "&player=md", vPlayerNm, vPlayerOption);
	}

	//ÀÌº¥Æ® µ¿¿µ»ó °íÈ­Áú PEET sPlayerEvent 100
	if ( kbn == "100") {
		vPlayerUrl = "/Player/Mega/sPlayerEvent/Player_Load.asp";
 		vPlayerOption = "resizable=yes,width=960,height=740,top=0,left=0";
 		window.open(vPlayerUrl + vPlayerParam + "&player=peet", vPlayerNm, vPlayerOption);
    }

    //ÀÌº¥Æ® µ¿¿µ»ó °­ÁÂ·Î Ã³¸® ÇÑ°Í....
    if (kbn == "101" || kbn == "12143" || kbn == "12767" || kbn == "12907" || kbn == "13109" || kbn == "13092" || kbn == "13417" || kbn == "13762" || kbn == "13889" || kbn == "13890") {
        vPlayerUrl = "/Player/Mega/sPlayerFree/Player_Load.asp";
        vPlayerOption = "resizable=yes,width=1060,height=740,top=0,left=0";
        window.open(vPlayerUrl + vPlayerParam, vPlayerNm, vPlayerOption);
    }


	//HD ¼­ºñ½º »çÀü¼³¹®Á¶»ç
	if ( kbn == "110") {
		vPlayerUrl = "/Player/Mega/sPlayerEvent/Player_Load.asp";
 		vPlayerOption = "resizable=yes,width=960,height=740,top=0,left=0";
 		window.open(vPlayerUrl + vPlayerParam + "&player=md", vPlayerNm, vPlayerOption);
	}

	if ( kbn == "9999") {		//¼³Á¤ÆÄÀÏ °ü·Ã Å×½ºÆ® ÇÃ·¹ÀÌ¾î(Å×½ºÆ®ÈÄ »èÁ¦)
		vPlayerUrl = "/Player/Mega/testPlayer/Player_Load.asp";
 		vPlayerOption = "resizable=yes,width=960,height=740,top=0,left=0";
 		window.open(vPlayerUrl + vPlayerParam, vPlayerNm, vPlayerOption);
	}

/*
	if ( kbn == "40" ) {		//½ß½ß ÇÃ·¯½º µ¿¿µ»ó ¸Àº¸±â (free)
		vPlayerUrl = "/Player/Mega/oPlayerFree/Player_Load.asp";
 		vPlayerOption = "width=960,height=740,top=0,left=0";
 		window.open(vPlayerUrl + vPlayerParam, vPlayerNm, vPlayerOption);
	}

	if ( kbn == "50" ) {		//½ß½ß ÇÃ·¯½º µ¿¿µ»ó ¸Àº¸±â (free)
		vPlayerUrl = "/Player/Mega/oPlayerFree/Player_Load.asp";
 		vPlayerOption = "width=960,height=740,top=0,left=0";
 		window.open(vPlayerUrl + "?dng_kbn="+kbn+"&REPATH="+para, vPlayerNm, vPlayerOption);
	}
	if ( kbn == "51" ) {		//½ß½ß ÇÃ·¯½º µ¿¿µ»ó ¸Àº¸±â (free)
		vPlayerUrl = "/Player/Mega/oPlayerFree/Player_Load_Normal.asp";
 		vPlayerOption = "width=960,height=740,top=0,left=0";
 		window.open(vPlayerUrl + "?dng_kbn="+kbn+"&REPATH="+para, vPlayerNm, vPlayerOption);
	}

	if ( kbn == "60" ) {		//½ß½ß ÇÃ·¯½º µ¿¿µ»ó ¸Àº¸±â (free)
		vPlayerUrl = "/Player/Mega/nPlayerFree/Player_Free_Normal.asp";
 		vPlayerOption = "scrollbars=yes,width=370,height=585,top=0,left=0, status=yes";
 		window.open(vPlayerUrl + "?dng_kbn="+kbn+"&REPATH="+para, vPlayerNm, vPlayerOption);
	}

	if ( kbn == "61" ) {		//ÆÄÀÏ°æ·Î¿Í ÆÄÀÏ¸í ÇÔ²² ³Ñ°ÜÁÜ (°íÈ­Áú)
		vPlayerUrl = "/Player/Mega/oPlayerFree/Player_Load_new.asp";
 		vPlayerOption = "width=960,height=740,top=0,left=0";
 		window.open(vPlayerUrl + "?dng_kbn="+kbn+"&REPATH="+para, vPlayerNm, vPlayerOption);
	}

	if ( kbn == "62" ) {		//ÆÄÀÏ°æ·Î¿Í ÆÄÀÏ¸í ÇÔ²² ³Ñ°ÜÁÜ (ÀÏ¹ÝÈ­Áú)
		vPlayerUrl = "/Player/Mega/nPlayerFree/Player_Free_Normal_new.asp";
 		vPlayerOption = "scrollbars=yes,width=370,height=585,top=0,left=0, status=yes";
 		window.open(vPlayerUrl + "?dng_kbn="+kbn+"&REPATH="+para, vPlayerNm, vPlayerOption);
	}

	if ( kbn == "63" ) {		//ÆÄÀÏ°æ·Î¿Í ÆÄÀÏ¸í ÇÔ²² ³Ñ°ÜÁÜ (1024 * 576)
		vPlayerUrl = "/Player/Mega/oPlayerFree/Player_Load_new.asp";
 		vPlayerOption = "width=1264,height=916,top=0,left=0";
 		window.open(vPlayerUrl + "?dng_kbn="+kbn+"&REPATH="+para, vPlayerNm, vPlayerOption);
	}
*/
	return;
}

function player_time(kbn, para, tm)
{
    fncUserInfoGet('player_time', kbn, para);

   var vPlayerUrl;
   var vPlayerParam, vPlayerNm, vPlayerOption;
   vPlayerParam = "?dng_kbn=" + kbn + "&REPATH=" + para + "&START_TM=" + tm;
   vPlayerParam = vPlayerParam + "&UseWidth=" + UseWidth + "&UseHeight=" + UseHeight;
   vPlayerNm = "DNGPlayer";
   vPlayerOption = "resizable=no, width=1024, height=645, top=0, left=0";

    // ´Ü¿ø °­ÀÇÀÏ °æ¿ì
	if ( kbn == "10" ) {		//½ß½ß ÇÃ·¯½º µ¿¿µ»ó ¸Àº¸±â (free)
		vPlayerUrl = "/Player/Mega/oPlayerFree/Player_Load_new.asp";
 		vPlayerOption = "width=960,height=740,top=0,left=0";
 		window.open(vPlayerUrl + vPlayerParam, vPlayerNm, vPlayerOption);
	}

	if ( kbn == "20" ) {		//ÀÏ¹Ý µ¿¿µ»ó ¸Àº¸±â (free)
		vPlayerUrl = "/Player/Mega/nPlayerFree/Player_Free_Normal_new.asp";
 		vPlayerOption = "scrollbars=yes,width=370,height=585,top=0,left=0, status=yes";
 		window.open(vPlayerUrl + vPlayerParam, vPlayerNm, vPlayerOption);
	}

	return;
}

// 20100311 INS W.H.JANG #001
function player_time3(kbn, para,lec_cd, stm, etm)
{
	player_time3_k(kbn, para,lec_cd, stm, etm);
	return;

   var vPlayerUrl;
   var vPlayerParam, vPlayerNm, vPlayerOption;
   vPlayerParam = "?dng_kbn=" + kbn + "&CHR_CD=" + para + "&LEC_CD=" + lec_cd + "&SPL_STM=" + stm + "&SPL_ETM=" + etm;
   vPlayerParam = vPlayerParam + "&UseWidth=" + UseWidth + "&UseHeight=" + UseHeight;
   vPlayerNm = "DNGPlayer";
   vPlayerOption = "resizable=no, width=1024, height=645, top=0, left=0";

    // ´Ü¿ø °­ÀÇÀÏ °æ¿ì
	if ( kbn == "45" ) {		//ÀÏ¹Ý µ¿¿µ»ó ¸Àº¸±â(free)
		vPlayerUrl = "/Player/Mega/nPlayerFree/Player_Free_Normal.asp";
 		vPlayerOption = "scrollbars=no,width=370,height=585,top=0,left=0, status=yes";

 		window.open(vPlayerUrl + vPlayerParam, vPlayerNm, vPlayerOption);
	}

	if ( kbn == "55" ) {		//½ß½ß ÇÃ·¯½º µ¿¿µ»ó ¸Àº¸±â (free) // HD µ¿¿µ»ó ¸Àº¸±â(free)
		vPlayerUrl = "/Player/Mega/sPlayerFree/Player_Load.asp";
 		vPlayerOption = "width=960,height=740,top=0,left=0";
 		window.open(vPlayerUrl + vPlayerParam, vPlayerNm, vPlayerOption);
	}

	return;
}

function player_time3_k(kbn, para,lec_cd, stm, etm)
{

    fncUserInfoGet('player_time3_k', kbn, para);
    
	//alert('player_time3_k');
	//alert(1);
	//alert(Date.now());
	//var lo_timeStamp = Math.floor(Date.now() / 1000);
	var lo_timeStamp = Math.random();
	//alert(2);
   var vPlayerUrl;
   var vPlayerParam, vPlayerNm, vPlayerOption;
   vPlayerParam = "?dng_kbn=" + kbn + "&CHR_CD=" + para + "&LEC_CD=" + lec_cd + "&SPL_STM=" + stm + "&SPL_ETM=" + etm;
   vPlayerParam = vPlayerParam + "&UseWidth=" + UseWidth + "&UseHeight=" + UseHeight + "&vt=" + lo_timeStamp;
   vPlayerNm = "DNGPlayer";
   vPlayerOption = "resizable=no, width=1024, height=645, top=0, left=0";

    // ´Ü¿ø °­ÀÇÀÏ °æ¿ì
	if ( kbn == "45" ) {		//ÀÏ¹Ý µ¿¿µ»ó ¸Àº¸±â(free)
		//vPlayerUrl = "/Player/Mega/nPlayerFree/Player_Free_Normal.asp";
		vPlayerUrl = "/Player/Cate/sPlayerFree/Player_Load.asp";
 		vPlayerOption = "resizable=no,scrollbars=no,width=370,height=585,top=0,left=0, status=no";

 		window.open(vPlayerUrl + vPlayerParam, vPlayerNm, vPlayerOption);
	}

	if ( kbn == "55" ) {		//½ß½ß ÇÃ·¯½º µ¿¿µ»ó ¸Àº¸±â (free) // HD µ¿¿µ»ó ¸Àº¸±â(free)
		vPlayerUrl = "/Player/Cate/sPlayerFree/Player_Load.asp";
 		vPlayerOption = "resizable=yes,scrollbars=no,width=960,height=740,top=0,left=0";
 		window.open(vPlayerUrl + vPlayerParam, vPlayerNm, vPlayerOption);
	}

	if ( kbn == "40" ) {		//ÀÏ¹Ý µ¿¿µ»ó ¸Àº¸±â(free)
		//vPlayerUrl = "/Player/Mega/nPlayerFree/Player_Free_Normal.asp";
		vPlayerUrl = "/Player/Cate/sPlayerFree/Player_Load.asp";
 		vPlayerOption = "resizable=no,scrollbars=no,width=370,height=585,top=0,left=0, status=no";

 		window.open(vPlayerUrl + vPlayerParam, vPlayerNm, vPlayerOption);
	}
	 //ÀÌº¥Æ® µ¿¿µ»ó °­ÁÂ·Î Ã³¸® ÇÑ°Í....
    if (kbn == "101" || kbn == "12143" || kbn == "12767" || kbn == "12907" || kbn == "13109" || kbn == "13092" || kbn == "13417" || kbn == "13762" || kbn == "13889" || kbn =="13890") {
        vPlayerUrl = "/Player/Cate/sPlayerFree/Player_Load.asp";
        vPlayerOption = "resizable=yes,width=1060,height=740,top=0,left=0";
        window.open(vPlayerUrl + vPlayerParam, vPlayerNm, vPlayerOption);
    }

	return;
}

// ÇÔ¼öÀÌ¸§ : fn_player_c()
// ÇÔ¼ö¼³¸í : ÇÃ·¹ÀÌ¾î - FREE
// ÀÔ ·Â °ª : ±¸ºÐÀÚ, ¼Ó¼º
// ¹Ý È¯ °ª :
function fn_player_c(cd) {
    fncUserInfoGet('fn_player_c', '', cd);

	vPlayerUrl = "/Player/Cate/cPlayerFree/Player_Load.asp?cd="+cd;
	vPlayerOption = "resizable=yes,scrollbars=no,width=960,height=740,top=0,left=0";
	window.open(vPlayerUrl, "DNGPlayer", vPlayerOption);
}

// ÇÔ¼öÀÌ¸§ : player_mega()
// ÇÔ¼ö¼³¸í : ÇÃ·¹ÀÌ¾î - FREE
// ÀÔ ·Â °ª : ±¸ºÐÀÚ, ¼Ó¼º
// ¹Ý È¯ °ª :
function player_mega(kbn,APP_NO,CHR_CD,LEC_CD,TEC_NM)
{
	if (kbn=="10"){
		player_mega_k("N",LEC_CD);
	} else {
		if (kbn=="20"){
			player_mega_k("S",LEC_CD);
		} else if (kbn=="88"){
			player_mega_k("R",LEC_CD);
		} else {
			alert("ÆäÀÌÁö ¿¡·¯ ¹ß»ý! °ü¸®ÀÚ¿¡°Ô ¹®ÀÇ ¹Ù¶ø´Ï´Ù.");
		}
	}
	return;

	var vPlayerUrl;
	var vPlayerParam, vPlayerNm, vPlayerOption;
	vPlayerParam = "?APP_NO=" + APP_NO + "&CHR_CD=" + CHR_CD + "&LEC_CD=" + LEC_CD + "&TEC_NM=" + TEC_NM + "&kbn=" + kbn;
	vPlayerParam = vPlayerParam + "&UseWidth=" + UseWidth + "&UseHeight=" + UseHeight;
	vPlayerNm = "DNGPlayer";
	vPlayerOption = "resizable=no, width=1024, height=645, top=0, left=0";

	if(kbn=="10")	//ÀÏ¹Ý µ¿¿µ»ó °­ÀÇ
	{
		vPlayerUrl = "/Player/Mega/nPlayer/Player_Normal.asp";
//		vPlayerOption = "scrollbars=no,width=370,height=610,top=0,left=0";
 		vPlayerOption = "resizable=yes,scrollbars=no,width=370,height=585,top=0,left=0, status=yes";
		window.open(vPlayerUrl + vPlayerParam, vPlayerNm, vPlayerOption);
	}

	if(kbn=="20")	//½ß½ßÇÃ·¯½º µ¿¿µ»ó °­ÀÇ
	{
		vPlayerUrl = "/Player/Mega/sPlayer/Player_Load.asp";
		vPlayerOption = "width=1024,height=645,top=0,left=0,resizable=1";
		window.open(vPlayerUrl + vPlayerParam, vPlayerNm, vPlayerOption);
	}

	if ( kbn == "30" ) {		//½ß½ß ÇÃ·¯½º µ¿¿µ»ó ¸Àº¸±â (free)
		vPlayerUrl = "";
		vPlayerNm = "ENGPlayer";
		vPlayerOption = "width=1024,height=645,top=0,left=0";
		vPlayerOption = "resizable=no, width=1024, height=645, top=0, left=0";
		window.open(vPlayerUrl + vPlayerParam, vPlayerNm, vPlayerOption);

		engfrm.target = vPlayerNm;
		engfrm.pchr_cd.value = para;
		engfrm.action = "http://www.megastudy.net/language/player_link/link_Main.asp";
		engfrm.submit();

		return;

	}

	if(kbn=="99")	//PEETº¸°­µ¿¿µ»ó
	{
		vPlayerUrl = "/Player/Mega/sPlayerPeet/Player_Load.asp";
		vPlayerOption = "width=960,height=740,top=0,left=0,resizable=1";
		window.open(vPlayerUrl + vPlayerParam, vPlayerNm, vPlayerOption);
	}
}

function player_mega_k(kbn,LEC_CD)
{

    fncUserInfoGet('player_mega_k', kbn, LEC_CD);
    
//    if (m_mobileCheck > 0) {

//        if (kbn == 88 || kbn == 89) {
//            var view = 1;
//            var mode = 'F';
//            var mappno = APP_NO;
//            var mchrcd = CHR_CD;
//            var mleccd = LEC_CD;
//
//            //¿µ»ó È­Áú ¼³Á¤
//            if (kbn == 89) {
//                view = 2;
//            }
//
//            player_mega_mobile(view, mode, mappno, mchrcd, mleccd, relay);
//        } else {
//            var view = 1;
//            var mode = 'L';
//            var mappno = APP_NO;
//            var mchrcd = CHR_CD;
//            var mleccd = LEC_CD;
//
//            //¿µ»ó È­Áú ¼³Á¤
//            if (kbn == 20) {
//                view = 2;
//            }
//
//            player_mega_mobile(view, mode, mappno, mchrcd, mleccd, relay);
//        }
//    } else {
		var vPlayerUrl;
		var vPlayerParam, vPlayerNm, vPlayerOption;
		vPlayerParam = "?LEC_CD=" + LEC_CD + "&kbn=" + kbn;
		vPlayerParam = vPlayerParam + "&UseWidth=" + UseWidth + "&UseHeight=" + UseHeight;
		vPlayerNm = "DNGPlayer";
		vPlayerOption = "resizable=no, width=1024, height=645, top=0, left=0";

		if (kbn == "S")   //Ä«Å×³ëÀÌµå ÇÃ·¹ÀÌ¾î ¿ÀºêÁ§Æ®Çü ADD 20141029 CHOIJH
		{
			//vPlayerUrl = "/Player/Kollus/sPlayer/Player_Load.asp";
			vPlayerUrl = "/Player/Cate/sPlayer/Player_Load.asp";
			if (UseWidth > 0 && UseHeight > 0){
				if (UseWidth > 1600){
					vPlayerOption = "resizable=no, scrollbars=no,width=1580,height=775,top=0,left=0";
				} else {
					if (UseWidth > 1200){
						if (UseHeight <= 720){
							vPlayerOption = "resizable=no, scrollbars=no,width=1240,height=629,top=0,left=0";
						} else {
							vPlayerOption = "resizable=no, scrollbars=no,width=1240,height=629,top=0,left=0";
						}
					} else {
						vPlayerOption = "resizable=no, scrollbars=no,width=900,height=610,top=0,left=0";
					}
				}
			} else {
				vPlayerOption = "resizable=no, scrollbars=no,width=900,height=610,top=0,left=0";
			}
			//alert(vPlayerOption);
			window.open(vPlayerUrl + vPlayerParam, vPlayerNm, vPlayerOption);
		}

		if (kbn == "N")   //Ä«Å×³ëÀÌµå ÇÃ·¹ÀÌ¾î ¿ÀºêÁ§Æ®Çü ADD 20141029 CHOIJH
		{
			//vPlayerUrl = "/Player/Kollus/sPlayer/Player_Load.asp";
			vPlayerUrl = "/Player/Cate/sPlayer/Player_Load.asp";
			vPlayerOption = "resizable=no, scrollbars=no,width=900,height=610,top=0,left=0";
			window.open(vPlayerUrl + vPlayerParam, vPlayerNm, vPlayerOption);
		}

		if (kbn == "R")   //Ä«Å×³ëÀÌµå ÇÃ·¹ÀÌ¾î ¿ÀºêÁ§Æ®Çü ADD 20141029 CHOIJH
		{
			//vPlayerUrl = "/Player/Kollus/sPlayer/Player_Load.asp";
			vPlayerUrl = "/Player/Cate/rPlayer/Player_Load.asp";
			vPlayerOption = "resizable=no, scrollbars=no,width=900,height=610,top=0,left=0";
			window.open(vPlayerUrl + vPlayerParam, vPlayerNm, vPlayerOption);
		}

//	}
}


function player_eng(kbn,LEC_ESQ,LAST_TM)
{
    fncUserInfoGet('player_eng', kbn, LEC_ESQ);

	if(kbn=="30")	//ÀÏ¹Ý µ¿¿µ»ó °­ÀÇ
	{
		vPlayerUrl = "";
		vPlayerNm = "ENGPlayer";
		vPlayerOption = "width=1024,height=645,top=0,left=0";
		vPlayerOption = "resizable=no, width=1024, height=645, top=0, left=0";
		window.open(vPlayerUrl, vPlayerNm, vPlayerOption);

		engfrm.target = vPlayerNm;
		engfrm.plec_seq.value = LEC_ESQ;
		engfrm.plast_tm1.value = LAST_TM;
		engfrm.action = "http://www.megastudy.net/language/player_link/link_Main.asp";
		engfrm.submit();
	}
}

// ÇÔ¼öÀÌ¸§ : nplayer_mega()
// ÇÔ¼ö¼³¸í : ´ºÇÃ·¹ÀÌ¾î - ÀÏ¹Ý
// ÀÔ ·Â °ª : ±¸ºÐÀÚ, ¼Ó¼º
// ¹Ý È¯ °ª :
function nplayer_mega(kbn, APP_NO, CHR_CD, LEC_CD, TEC_NM)
{
    fncUserInfoGet('nplayer_mega', kbn, CHR_CD);

	var vPlayerUrl;
   var vPlayerParam, vPlayerNm, vPlayerOption;
   vPlayerParam = "?APP_NO=" + APP_NO + "&CHR_CD=" + CHR_CD + "&LEC_CD=" + LEC_CD + "&TEC_NM=" + TEC_NM + "&kbn=" + kbn;
   vPlayerNm = "DNGPlayer";
   vPlayerOption = "resizable=no, width=1024, height=645, top=0, left=0";

    // ´Ü¿ø °­ÀÇÀÏ °æ¿ì
    if ( kbn=="50" || kbn=="60") {
	    if (kbn=="10" || kbn=="50" )	//ÀÏ¹Ý µ¿¿µ»ó °­ÀÇ
	    {
		    vPlayerUrl = "/Player/nPlayer_Nor/Player_Normal.asp";
		    vPlayerOption = "scrollbars=yes,width=370,height=610,top=0,left=0";
	    }

	    if (kbn=="20" || kbn=="60" )	//½ß½ßÇÃ·¯½º µ¿¿µ»ó °­ÀÇ
	    {
		    vPlayerUrl = "/Player/sPlayer_Mega/Player_Load.asp";
		    vPlayerOption = "width=960,height=740,top=0,left=0,resizable=1";
	    }
    }
    else {

	    switch (CHR_CD) {
	    //ÅäÀÍÇÃ·¹ÀÌ¾î
		    case "5531"	:
		    case "5532"	:
		    case "5533"	:
		    case "5534"	:
		    case "5535"	:
		    case "5536"	:				vPlayerUrl = "/Language/player/new_toeic/PLAYER_INTRO.asp";	break;
	    //¿ÀÀº°æ¼±»ý´Ô »À´ë°­ÁÂ
	        case "11485":
	        case "11609":
	        case "11067":
		    case "10940":
		    case "6969"	:
		    case "9438"	:	 		    vPlayerUrl = "/language/player/chr_"+ CHR_CD +"/main.asp";	break;
	    //ÅÜ½ºÇÃ·¹ÀÌ¾î
		    case "5653"	:				vPlayerUrl = "/language/player/teps_step/player_frame.asp";	break;
	    //´º±âÃÊÅºÅº, ´ºÅäÀÍBlendedCourse(6999, 7000)
		    case "6168"	:
		    case "6999"	:
		    case "7000"	:				vPlayerUrl = "/language/player/new_toeic_btt/main.asp";	break;
	    //Á¤¸»·Î ¼ú¼ú
		    case "6857"	:				vPlayerUrl = "/language/player/real_basic/main.asp";	vPlayerOption = "resizable=no, width=510, height=578, top=50, left=100";		break;
	    //¾îÈÖ
		    case "5370"	:				vPlayerUrl = "/language/player/chr_" + CHR_CD + "/main.asp";	break;
	    //ÅäÇÃ ÇÃ·¹ÀÌ¾î
		    case "7279"	:
		    case "7280"	:
		    case "7281"	:				vPlayerUrl = "/language/player/chr_og_toefl/main.asp";	break;
	    //ºñ±â´×.. ÅäÇÃ ÇÃ·¹ÀÌ¾î
		    case "7776"	:
		    case "7781"	:
		    case "7782"	:
		    case "7783"	:				vPlayerUrl = "/language/player/chr_bg_toefl/main.asp";	break;
	    //À©±Û¸®½¬ ÇÃ·¹ÀÌ¾î
		    case "7989"	:
		    case "7990"	:
		    case "7991"	:
		    case "7992"	:
		    case "7993"	:
		    case "7994"	:
		    case "7995"	:
		    case "7996"	:				vPlayerUrl = "/language/player/winglish/main.asp";		break;
	    //½ÇÀüÅÜ½º
		    case "8165"	:
		    case "8324"	:				vPlayerUrl = "/language/player/chr_8165/main.asp";	break;
	    //ÇÑ³¡ÅÜ½º »À´ë°­ÁÂ
		    case "8727"	:
		    case "8728"	:	 		    vPlayerUrl = "/language/player/chr_8728/main.asp";	break;
	    //ibt intermidiate °­ÁÂÃ¢ ¿ÀÇÂ
		    case "8227"	:
		    case "8228"	:
		    case "8229"	:
		    case "8230"	:				vPlayerUrl = "/language/player/chr_it_toefl/chr_"+ CHR_CD +"/main.asp";		break;
	    // º£ÀÌÁ÷ÄÚ½º °­ÁÂÃ¢ ¿ÀÇÂ
		    case "5886"	:				vPlayerUrl = "/language/player/chr_5886/main.asp";		vPlayerOption = "resizable=no, width=700, height=675, top=0, left=0";		break;
		    case "5896"	:				vPlayerUrl = "/language/player/chr_5896/main.asp";		vPlayerOption = "resizable=no, width=700, height=675, top=0, left=0";		break;
		    case "5887"	:				vPlayerUrl = "/language/player/chr_5887/main.asp";		vPlayerOption = "resizable=no, width=700, height=675, top=0, left=0";		break;
		    case "5892"	:				vPlayerUrl = "/language/player/basic_course/player_Default.asp";		vPlayerOption = "resizable=no, width=700, height=675, top=0, left=0";		break;
	    // ½ºÆ¼ºêÁ¤ Á÷Ã»Á÷ÇØ °­ÁÂÃ¢ ¿ÀÇÂ
		    case "5930"	:				vPlayerUrl = "/language/player/chr_5930/main.asp";		break;
	    // ¾ÆÀÌÀÛ ½Å¿µ¾îÈ¸È­ÀÔ¹® °­ÁÂÃ¢(¸ÖÆ¼¹Ìµð¾îÇü) ¿ÀÇÂ
		    case "6012"	:				vPlayerUrl = "/language/player/chr_6012/main.asp";	break;
	    // ¾ÆÀÌÀÛ ½Å¿µ¾îÈ¸È­ÀÔ¹® °­ÁÂÃ¢(µ¿¿µ»óÇü) ¿ÀÇÂ
		    case "6632"	:				vPlayerUrl = "/language/player/chr_6632/main.asp";		break;
	    // ½ºÆ¼ºêÁ¤ ±âº»µ¿»ç·Î ¸»ÇÏ±â °­ÁÂÃ¢ ¿ÀÇÂ
		    case "7541"	:				vPlayerUrl = "/language/player/chr_7541/main.asp";		break;
	    // À¯Àç¿õ Practical English Grammar °­ÁÂÃ¢ ¿ÀÇÂ
		    case "7887"	:				vPlayerUrl = "/language/player/chr_7887/main.asp";		break;
	    // ´ºÅäÀÍ ´ÞÀÎµÇ±â R/C °­ÁÂÃ¢ ¿ÀÇÂ
		    case "8983"	:				vPlayerUrl = "/language/player/chr_8983/main.asp";		break;
	    // ´ºÅäÀÍ ´ÞÀÎµÇ±â L/C °­ÁÂÃ¢ ¿ÀÇÂ
		    case "8984"	:				vPlayerUrl = "/language/player/chr_8984/main.asp";		break;
	    // ÁÖÁ¦º° TOEFL iBT ¾îÈÖ1/2Åº °­ÁÂÃ¢ ¿ÀÇÂ
		    case "9773"	:				vPlayerUrl = "/language/player/chr_9773/main.asp";		break;
		    case "9894"	:				vPlayerUrl = "/language/player/chr_9894/main.asp";		break;
	    // TEPS Master ¹®¹ý/µ¶ÇØ/¾îÈÖ/Ã»ÇØ °­ÁÂÃ¢ ¿ÀÇÂ
		    case "9925"	:
		    case "9926" :
		    case "11206" :
		    case "11207" :				vPlayerUrl = "/language/player/chr_" + CHR_CD + "/main.asp";		break;
		//[¿ÜºÎ°­ÁÂ-¿¡µà¹Ú½º]Æ÷ÆÃ¿ë ¿ÀÇÂ
			case "13485" :
			case "12078" :
			case "13484" :
			case "12059" :
			case "12058" :
			case "12057" :
			case "12056" :
			case "12055" :
			case "12053" :
			case "12054" :				vPlayerUrl = "/language/player/chr_" + CHR_CD + "/main.asp";		break;
		//[¿ÜºÎ°­ÁÂ-´É·ü±³À°]¸µÅ©¿ë ¿ÀÇÂ
			case "13650" :				vPlayerUrl = "/language/player/chr_" + CHR_CD + "/main.asp";		break;
	    // ³»½Å/¼ö´É °­ÁÂÃ¢ ¿ÀÇÂ
		    default		:
			    if (kbn=="10" || kbn=="50" )	//ÀÏ¹Ý µ¿¿µ»ó °­ÀÇ
			    {
				    vPlayerUrl = "/Player/nPlayer_Nor/Player_Normal.asp";
				    vPlayerOption = "scrollbars=yes,width=370,height=610,top=0,left=0";
			    }

			    if (kbn=="20" || kbn=="60" )	//½ß½ßÇÃ·¯½º µ¿¿µ»ó °­ÀÇ
			    {
				    vPlayerUrl = "/Player/sPlayer_Mega/Player_Load.asp";
				    vPlayerOption = "width=960,height=740,top=0,left=0,resizable=1";
			    }

			    break;
	    }
    }

	window.open(vPlayerUrl + vPlayerParam, vPlayerNm, vPlayerOption);
	return;
}

/////// 365À×±Û¸®½¬ µ¿¿µ»ó »b¾÷
function goStudy(kbn,APP_NO,CHR_CD,LEC_CD,TEC_NM,CUR_DATE)
{
    fncUserInfoGet('goStudy', kbn, CHR_CD);

    var popwin = window.open ('/player/player365/'+ CUR_DATE.substring(0,2) +'/Player365.asp?APP_NO='+APP_NO+'&CHR_CD='+CHR_CD+'&LEC_CD='+LEC_CD+'&TEC_NM='+TEC_NM+'&kbn='+kbn+'&CUR_DATE='+CUR_DATE,'DNGPlayer','width=788,height=352, scrollbars=no');
    popwin.moveTo((screen.width-800)/2, (screen.height-630)/2);
}


/////// 365À×±Û¸®½¬ µ¿¿µ»ó »b¾÷ free
function goStudy_free(cur_mon,para)
{
    fncUserInfoGet('goStudy_free', cur_mon, para);

    var popwin = window.open ('/player/player365/'+ cur_mon +'/Player365_free.asp?CUR_MON='+ cur_mon +'&CHR_CD='+para,'DNGPlayer','width=788,height=352, scrollbars=no');
    popwin.moveTo((screen.width-800)/2, (screen.height-630)/2);
}

// ÇÔ¼öÀÌ¸§ : splayer_mega()
// ÇÔ¼ö¼³¸í : ´ºÇÃ·¹ÀÌ¾î - ½ß½ß
// ÀÔ ·Â °ª : ±¸ºÐÀÚ, ¼Ó¼º
// ¹Ý È¯ °ª :
function splayer_mega(kbn, APP_NO, CHR_CD, LEC_CD, TEC_NM)
{
    fncUserInfoGet('splayer_mega', kbn, CHR_CD);

   var vPlayerUrl;
   var vPlayerParam, vPlayerNm, vPlayerOption;
   vPlayerParam = "?APP_NO=" + APP_NO + "&CHR_CD=" + CHR_CD + "&LEC_CD=" + LEC_CD + "&TEC_NM=" + TEC_NM + "&kbn=" + kbn;
   vPlayerNm = "DNGPlayer";
   vPlayerOption = "resizable=no, width=1024, height=645, top=0, left=0";

    // ´Ü¿ø °­ÀÇÀÏ °æ¿ì
    if ( kbn=="50" || kbn=="60") {
	    if (kbn=="20" || kbn=="60") {	//½ß½ßÇÃ·¯½º µ¿¿µ»ó °­ÀÇ
		    vPlayerUrl = "/Player/sPlayer_Mega/Player_Load.asp";
		    vPlayerParam = "?PLAYER_TYPE=S&APP_NO=" + APP_NO + "&CHR_CD=" + CHR_CD + "&LEC_CD=" + LEC_CD + "&TEC_NM=" + TEC_NM + "&kbn=" + kbn;
		    vPlayerOption = "width=960,height=740,top=0,left=0";
	    }
    }
    else {

	    switch (CHR_CD) {
	    //ÅäÀÍÇÃ·¹ÀÌ¾î
		    case "5531"	:
		    case "5532"	:
		    case "5533"	:
		    case "5534"	:
		    case "5535"	:
		    case "5536"	:				vPlayerUrl = "/Language/player/new_toeic/PLAYER_INTRO.asp";	break;
	    //¿ÀÀº°æ¼±»ý´Ô »À´ë°­ÁÂ
		    case "11485":
		    case "11609":
		    case "11067":
		    case "10940":
		    case "6969"	:
		    case "9438"	:	 		    vPlayerUrl = "/language/player/chr_"+ CHR_CD +"/main.asp";	break;
	    //ÅÜ½ºÇÃ·¹ÀÌ¾î
		    case "5653"	:				vPlayerUrl = "/language/player/teps_step/player_frame.asp";	break;
	    //´º±âÃÊÅºÅº, ´ºÅäÀÍBlendedCourse(6999, 7000)
		    case "6168"	:
		    case "6999"	:
		    case "7000"	:				vPlayerUrl = "/language/player/new_toeic_btt/main.asp";	break;
	    //Á¤¸»·Î ¼ú¼ú
		    case "6857"	:				vPlayerUrl = "/language/player/real_basic/main.asp";	vPlayerOption = "resizable=no, width=510, height=578, top=50, left=100";		break;
	    //¾îÈÖ
		    case "5370"	:				vPlayerUrl = "/language/player/chr_" + CHR_CD + "/main.asp";	break;
	    //ÅäÇÃ ÇÃ·¹ÀÌ¾î
		    case "7279"	:
		    case "7280"	:
		    case "7281"	:				vPlayerUrl = "/language/player/chr_og_toefl/main.asp";	break;
	    //ºñ±â´×.. ÅäÇÃ ÇÃ·¹ÀÌ¾î
		    case "7776"	:
		    case "7781"	:
		    case "7782"	:
		    case "7783"	:				vPlayerUrl = "/language/player/chr_bg_toefl/main.asp";	break;
	    //À©±Û¸®½¬ ÇÃ·¹ÀÌ¾î
		    case "7989"	:
		    case "7990"	:
		    case "7991"	:
		    case "7992"	:
		    case "7993"	:
		    case "7994"	:
		    case "7995"	:
		    case "7996"	:				vPlayerUrl = "/language/player/winglish/main.asp";		break;
	    //½ÇÀüÅÜ½º
		    case "8165"	:
		    case "8324"	:				vPlayerUrl = "/language/player/chr_8165/main.asp";	break;
	    //ÇÑ³¡ÅÜ½º »À´ë°­ÁÂ
		    case "8727"	:
		    case "8728"	:	 		    vPlayerUrl = "/language/player/chr_8728/main.asp";	break;
	    //ibt intermidiate °­ÁÂÃ¢ ¿ÀÇÂ
		    case "8227"	:
		    case "8228"	:
		    case "8229"	:
		    case "8230"	:				vPlayerUrl = "/language/player/chr_it_toefl/chr_"+ CHR_CD +"/main.asp";		break;
	    // º£ÀÌÁ÷ÄÚ½º °­ÁÂÃ¢ ¿ÀÇÂ
		    case "5886"	:				vPlayerUrl = "/language/player/chr_5886/main.asp";		vPlayerOption = "resizable=no, width=700, height=675, top=0, left=0";		break;
		    case "5896"	:				vPlayerUrl = "/language/player/chr_5896/main.asp";		vPlayerOption = "resizable=no, width=700, height=675, top=0, left=0";		break;
		    case "5887"	:				vPlayerUrl = "/language/player/chr_5887/main.asp";		vPlayerOption = "resizable=no, width=700, height=675, top=0, left=0";		break;
		    case "5892"	:				vPlayerUrl = "/language/player/basic_course/player_Default.asp";		vPlayerOption = "resizable=no, width=700, height=675, top=0, left=0";		break;
	    // ½ºÆ¼ºêÁ¤ Á÷Ã»Á÷ÇØ °­ÁÂÃ¢ ¿ÀÇÂ
		    case "5930"	:				vPlayerUrl = "/language/player/chr_5930/main.asp";		break;
	    // ¾ÆÀÌÀÛ ½Å¿µ¾îÈ¸È­ÀÔ¹® °­ÁÂÃ¢(¸ÖÆ¼¹Ìµð¾îÇü) ¿ÀÇÂ
		    case "6012"	:				vPlayerUrl = "/language/player/chr_6012/main.asp";	break;
	    // ¾ÆÀÌÀÛ ½Å¿µ¾îÈ¸È­ÀÔ¹® °­ÁÂÃ¢(µ¿¿µ»óÇü) ¿ÀÇÂ
		    case "6632"	:				vPlayerUrl = "/language/player/chr_6632/main.asp";		break;
	    // ½ºÆ¼ºêÁ¤ ±âº»µ¿»ç·Î ¸»ÇÏ±â °­ÁÂÃ¢ ¿ÀÇÂ
		    case "7541"	:				vPlayerUrl = "/language/player/chr_7541/main.asp";		break;
	    // À¯Àç¿õ Practical English Grammar °­ÁÂÃ¢ ¿ÀÇÂ
		    case "7887"	:				vPlayerUrl = "/language/player/chr_7887/main.asp";		break;
	    // ´ºÅäÀÍ ´ÞÀÎµÇ±â R/C °­ÁÂÃ¢(¸Àº¸±â) ¿ÀÇÂ
		    case "8983"	:				vPlayerUrl = "/language/player/chr_8983/main.asp";		break;
	    // ´ºÅäÀÍ ´ÞÀÎµÇ±â L/C °­ÁÂÃ¢ ¿ÀÇÂ
		    case "8984"	:				vPlayerUrl = "/language/player/chr_8984/main.asp";		break;
	    // ÁÖÁ¦º° TOEFL iBT ¾îÈÖ1/2Åº °­ÁÂÃ¢ ¿ÀÇÂ
		    case "9773"	:				vPlayerUrl = "/language/player/chr_9773/main.asp";		break;
		    case "9894"	:				vPlayerUrl = "/language/player/chr_9894/main.asp";		break;
	    // TEPS Master ¹®¹ý/µ¶ÇØ/¾îÈÖ °­ÁÂÃ¢ ¿ÀÇÂ
		    case "9925"	:
		    case "9926"	:
		    case "11206" :
		    case "11207" :				vPlayerUrl = "/language/player/chr_" + CHR_CD + "/main.asp";		break;
		//[¿ÜºÎ°­ÁÂ-¿¡µà¹Ú½º]Æ÷ÆÃ¿ë ¿ÀÇÂ
			case "13485" :
			case "12078" :
			case "13484" :
			case "12059" :
			case "12058" :
			case "12057" :
			case "12056" :
			case "12055" :
			case "12053" :
			case "12054" :				vPlayerUrl = "/language/player/chr_" + CHR_CD + "/main.asp";		break;
		//[¿ÜºÎ°­ÁÂ-´É·ü±³À°]¸µÅ©¿ë ¿ÀÇÂ
			case "13650" :				vPlayerUrl = "/language/player/chr_" + CHR_CD + "/main.asp";		break;
	    // ³»½Å/¼ö´É °­ÁÂÃ¢ ¿ÀÇÂ
		    default		:
			    if (kbn=="20" || kbn=="60") {	//½ß½ßÇÃ·¯½º µ¿¿µ»ó °­ÀÇ
				    vPlayerUrl = "/Player/sPlayer_Mega/Player_Load.asp";
				    vPlayerParam = "?PLAYER_TYPE=S&APP_NO=" + APP_NO + "&CHR_CD=" + CHR_CD + "&LEC_CD=" + LEC_CD + "&TEC_NM=" + TEC_NM + "&kbn=" + kbn;
				    vPlayerOption = "width=960,height=740,top=0,left=0";
			    }
			    break;
	    }
    }

	window.open(vPlayerUrl + vPlayerParam, vPlayerNm, vPlayerOption);
	return;
}

// ÇÔ¼öÀÌ¸§ : splayer_mega_freepass()
// ÇÔ¼ö¼³¸í : ´ºÇÃ·¹ÀÌ¾î - ½ß½ß ÇÁ¸®ÆÐ½º Ã¼Çè
// ÀÔ ·Â °ª : ±¸ºÐÀÚ, ¼Ó¼º
// ¹Ý È¯ °ª :
function splayer_mega_freepass(kbn,APP_NO,CHR_CD,LEC_CD,TEC_NM)
{
    fncUserInfoGet('splayer_mega_freepass', kbn, CHR_CD);

   	//============================================================================
	// ³»½Å/¼ö´É °­ÁÂÃ¢ ¿ÀÇÂ
	//============================================================================
    if(kbn=="20" || kbn=="60" )	//½ß½ßÇÃ·¯½º µ¿¿µ»ó °­ÀÇ
	{
		window.open ('/Player/sPlayer_Mega_Freepass/Player_Load.asp?PLAYER_TYPE=S&APP_NO='+APP_NO+'&CHR_CD='+CHR_CD+'&LEC_CD='+LEC_CD+'&TEC_NM='+TEC_NM + '&KBN='+kbn,'DNGPlayer','width=960,height=740,top=0,left=0');
	}
}
// ÇÔ¼öÀÌ¸§ : nplayer_mega()
// ÇÔ¼ö¼³¸í : ´ºÇÃ·¹ÀÌ¾î - ÀÏ¹Ý
// ÀÔ ·Â °ª : ±¸ºÐÀÚ, ¼Ó¼º
// ¹Ý È¯ °ª :
function nplayer_mega_freepass(kbn,APP_NO,CHR_CD,LEC_CD,TEC_NM)
{
    fncUserInfoGet('nplayer_mega_freepass', kbn, CHR_CD);

	//============================================================================
	// ³»½Å/¼ö´É °­ÁÂÃ¢ ¿ÀÇÂ
	//============================================================================
    if(kbn=="10" || kbn=="50" )	//ÀÏ¹Ý µ¿¿µ»ó °­ÀÇ
	{
		window.open ('/Player/nPlayer_Nor/Player_Normal_Freepass.asp?APP_NO='+APP_NO+'&CHR_CD='+CHR_CD+'&LEC_CD='+LEC_CD+'&TEC_NM='+TEC_NM+'&kbn='+kbn,'DNGPlayer','scrollbars=yes,width=370,height=610,top=0,left=0');
	}

	if(kbn=="20" || kbn=="60" )	//½ß½ßÇÃ·¯½º µ¿¿µ»ó °­ÀÇ
	{
		window.open ('/Player/sPlayer_Mega_Freepass/Player_Load.asp?PLAYER_TYPE=N&APP_NO='+APP_NO+'&CHR_CD='+CHR_CD+'&LEC_CD='+LEC_CD+'&TEC_NM='+TEC_NM+'&kbn='+kbn,'DNGPlayer','width=960,height=740,top=0,left=0,resizable=1');
	}
}

// ÇÔ¼öÀÌ¸§ : player_exam
// ÇÔ¼ö¼³¸í : ÇÃ·¹ÀÌ¾î - FREE
// ÀÔ ·Â °ª : ±¸ºÐÀÚ, ¼Ó¼º
// ¹Ý È¯ °ª :
function player_exam(kbn,dngkbn,para)
{
    fncUserInfoGet('player_exam', kbn, para);

	if(kbn=="10")	//ÀÏ¹Ý µ¿¿µ»ó °­ÀÇ
	{
		window.open ('/Player/nPlayer_Nor/Player_Free_Normal.asp?dng_kbn='+dngkbn+'&CHR_CD='+para,'DNGPlayer','scrollbars=yes,width=370,height=585,top=0,left=0');
	}

	if(kbn=="20")	//½ß½ßÇÃ·¯½º µ¿¿µ»ó °­ÀÇ
	{
		window.open ('/Player/nPlayer_Mega_Free/Player_Load_Free.asp?dng_kbn='+dngkbn+'&CHR_CD='+para,'DNGPlayer','width=960,height=740,top=0,left=0');
	}

    if(kbn=="11")	//ÀÏ¹Ý µ¿¿µ»ó °­ÀÇ
	{
		window.open ('/Player/nPlayer_Nor/Player_Free_Normal20080919.asp?dng_kbn='+dngkbn+'&CHR_CD='+para,'DNGPlayer','scrollbars=yes,width=370,height=585,top=0,left=0');
	}
}

// ÇÔ¼öÀÌ¸§ : player_mega_sim()
// ÇÔ¼ö¼³¸í : ¹«·á°­ÁÂÇÃ·¹ÀÌ¾î - FREE
// ÀÔ ·Â °ª : ±¸ºÐÀÚ, ¼Ó¼º
// ¹Ý È¯ °ª :
function player_mega_sim(kbn,APP_NO,CHR_CD,LEC_CD,TEC_NM)
{
    fncUserInfoGet('player_mega_sim', kbn, CHR_CD);

	if(kbn=="10")	//ÀÏ¹Ý µ¿¿µ»ó °­ÀÇ
	{
		window.open ('/Player/nPlayer_Nor_Sim/Player_Normal.asp?APP_NO='+APP_NO+'&CHR_CD='+CHR_CD+'&LEC_CD='+LEC_CD+'&TEC_NM='+TEC_NM,'DNGPlayer','scrollbars=yes,width=370,height=585,top=0,left=0');
	}

	if(kbn=="20")	//½ß½ßÇÃ·¯½º µ¿¿µ»ó °­ÀÇ
	{
		window.open ('/Player/sPlayer_Mega_Sim/Player_Load.asp?APP_NO='+APP_NO+'&CHR_CD='+CHR_CD+'&LEC_CD='+LEC_CD+'&TEC_NM='+TEC_NM,'DNGPlayer','width=960,height=740,top=0,left=0,resizable=1');
	}
}


function playerencode(input) {
    var ttb = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
    var len_1 = input.length;
    var len_res = input.length % 3;
    var len_div = len_1 - len_res;
    var ra = new makeArray(4);
    var i = 0;
    var Stat = "";
    var str = "";
    while (1) {
        if (i >= len_1)
            break;

        if (i >= len_div)
            Stat = "End";
        A = eval(input.charCodeAt(i++));
        B = eval(input.charCodeAt(i++));
        C = eval(input.charCodeAt(i++));
        if (i > len_div) {
            Stat = "End";
            if (len_res >= 1)
                C = 0;
            if (len_res == 1)
                B = 0;
        }
        ra[1] = A >> 2;
        ra[2] = ((A & 3) << 4) + (B >> 4);
        ra[3] = ((B & 15) << 2) + (C >> 6);
        ra[4] = C & 63;
        if (Stat == "End" && len_res >= 1)
            ra[4] = 64;
        if (Stat == "End" && len_res == 1)
            ra[3] = 64;
        for (k = 1; k <= 4; k++)
            str = str + ttb.substr(ra[k], 1);
    }
    return str;
}

function makeArray(n) {
    this.length = n
    for (var i = 1; i <= n; i++) {
        this[i] = null;
    }
    return this
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

function fncUserInfoGet(fnm, kbn, para) {
    msAjax({
        url: '/common/gather/play_getinfo.asp?fnm=' + fnm + '&UseWidth=' + UseWidth + '&UseHeight=' + UseHeight + '&userBrowser=' + userBrowser + '&BrowserVersion=' + BrowserVersion + '&kbn=' + kbn + '&page=' + playerencode(document.location.href) + "&" + para,
        type: "GET",
        onSuccess: function (rss) {}
    });
}




// ÇÔ¼öÀÌ¸§ : openWin()
// ÇÔ¼ö¼³¸í : »õÃ¢ ¿­±â
// ÀÔ ·Â °ª : url, »õÃ¢ ÀÌ¸§, ¼Ó¼º
// ¹Ý È¯ °ª :
function openWin(theURL,winName,features) {
	window.open(theURL,winName,features);
}

// ÇÔ¼öÀÌ¸§ : getCookie()
// ÇÔ¼ö¼³¸í : ÄíÅ°¼³Á¤ÇÏ±â
// ÀÔ ·Â °ª : ÄíÅ°¸í, ÄíÅ°°ª, ¸¸·áÀÏ
// ¹Ý È¯ °ª : ¾øÀ½/ÄíÅ°°ª
function setCookie( name, value, expiredays ) {
	var todayDate = new Date();
	todayDate.setDate( todayDate.getDate() + expiredays );
	document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";"
}

// ÇÔ¼öÀÌ¸§ : getCookie()
// ÇÔ¼ö¼³¸í : ÄíÅ°°¡Á®¿À±â
// ÀÔ ·Â °ª : ÄíÅ°¸í
// ¹Ý È¯ °ª : ¾øÀ½/ÄíÅ°°ª
function getCookie(name) {
	var nameOfCookie = name + "=";
	var x = 0;
	while ( x <= document.cookie.length )
	{
		var y = (x+nameOfCookie.length);
		if ( document.cookie.substring( x, y ) == nameOfCookie )
		{
			if ( (endOfCookie=document.cookie.indexOf( ";", y )) == -1 )
				endOfCookie = document.cookie.length;
			return unescape( document.cookie.substring( y, endOfCookie ) );
		}
		x = document.cookie.indexOf( " ", x ) + 1;
		if ( x == 0 )
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
	todayDate.setDate( todayDate.getDate() + expiredays );

	var multiCookie, arr_Cookies, arr_sval;
	var val_1=""; val_2="";
	multiCookie = getCookie(name);
	if(multiCookie == "") multiCookie="Chr_Poll"
	arr_Cookies = multiCookie.split("&");
	for( var i=0; i<arr_Cookies.length; ++i ) {
		if(arr_Cookies[i].indexOf(sval) >= 0) {
			arr_sval = arr_Cookies[i].split("=");
			val_1 = arr_sval[0];
			val_2 = arr_sval[1];
			break;
		}
	}
	if( val_1 == "" )
		multiCookie = multiCookie + "&" + sval + "=" + value;
	else
		multiCookie = multiCookie.replace(val_1+"="+val_2, val_1+"="+value);

	document.cookie = name + "=" + escape( multiCookie ) + ";domain=megastudy.net;path=/;expires=" + todayDate.toGMTString() + ";"
}

// ÇÔ¼öÀÌ¸§ : getCookie_multi()
// ÇÔ¼ö¼³¸í : ÄíÅ°°¡Á®¿À±â
// ÀÔ ·Â °ª : ÄíÅ°¸í
// ¹Ý È¯ °ª : ¾øÀ½/ÄíÅ°°ª
function getCookie_multi(name,sval) {
	var multiCookie, arr_Cookies, arr_sval;
	var nameOfCookie = name + "=";
	var x = 0;
	var y;
	while ( x <= document.cookie.length )
	{
		y = (x+nameOfCookie.length);
		if ( document.cookie.substring( x, y ) == nameOfCookie )
		{
			if ( (endOfCookie=document.cookie.indexOf( ";", y )) == -1 )
				endOfCookie = document.cookie.length;
			multiCookie = unescape( document.cookie.substring( y, endOfCookie ) );
			arr_Cookies = multiCookie.split("&");
			for( var i=0; i<arr_Cookies.length; ++i ) {
				if(arr_Cookies[i].indexOf(sval) >= 0) {
					arr_sval = arr_Cookies[i].split("=");
					return arr_sval[1];
				}
			}
		}
		x = document.cookie.indexOf( " ", x ) + 1;
		if ( x == 0 )
			break;
	}
	return "";
}

// ÇÔ¼öÀÌ¸§ : strTrim
// ÇÔ¼ö¼³¸í : ºó ¹®ÀÚ¿­Á¤¸®
// ÀÔ ·Â °ª :
// ¹Ý È¯ °ª :
function strTrim(str){
	return str.replace(/(^\s*)|(\s*$)/g, "");
}

// ÇÔ¼öÀÌ¸§ : CutHanStr
// ÇÔ¼ö¼³¸í : ÇÑ±Û¹®ÀÚ¿­ Àß¶ó¿À±â
// ÀÔ ·Â °ª :
// ¹Ý È¯ °ª :
function CutHanStr(str,len) {
	var l = 0;
	for (var i=0; i<str.length; i++) {
		l += (str.charCodeAt(i) > 128) ? 2 : 1;
		if (l > len) return str.substring(0,i) + "...";
	}
	return str;
}

// ÇÔ¼öÀÌ¸§ : CutHanStr
// ÇÔ¼ö¼³¸í : ÇÑ±Û¹®ÀÚ¿­ Àß¶ó¿À±â
// ÀÔ ·Â °ª :
// ¹Ý È¯ °ª :
function GetHanStrLen(str) {
	var l = 0;
	for (var i=0; i<str.length; i++) l += (str.charCodeAt(i) > 128) ? 2 : 1;
	return l;
}

// s: source url
// d: flash id
// w: source width
// h: source height
// t: wmode ("" for none, transparent, opaque ...)
function mf(s,d,w,h,t){
	return "<object classid=\"clsid:d27cdb6e-ae6d-11cf-96b8-444553540000\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0\" width="+w+" height="+h+" id="+d+"><param name=wmode value="+t+" /><param name=movie value="+s+" /><param name=quality value=high /><embed src="+s+" quality=high wmode="+t+" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/shockwave/download/index.cgi?p1_prod_version=shockwaveflash\" width="+w+" height="+h+"></embed></object>";
}

// write document contents
function documentwrite(src){
	document.write(src);
}
function tag_flash(){
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
function isNull (f,msg) {
	if (f.value == "")
	{
		alert(msg+" ÀÔ·ÂÇÏ¼¼¿ä");
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
function getNextFocus(obj1, obj2, len)
{
	if(obj1.value.length==len) {
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
	str += ",scrollbars="+scroll;
	return window.open(url, name, str);
}




function BookMark(url, title){
	window.external.AddFavorite(url, title);
}


function goCart(user_id)
{
	var frm = document.mainfrm;
	var bPass = false;

	var veri = frm.chrChk;

	if(typeof (veri) == "object")
	{
		veri = frm.chrChk[0];
		if(typeof (veri) == "object")
		{
			for(i=0; i<frm.chrChk.length; i++)
			{
				if(frm.chrChk[i].checked)
					bPass = true;
			}
		}
		else
		{
			if(frm.chrChk.checked)
				bPass = true;
		}
	}

	veri = frm.bookChk;
	if(typeof (veri) == "object")
	{
		veri = frm.bookChk[0];
		if(typeof (veri) == "object")
		{
			for(i=0; i<frm.bookChk.length; i++)
			{
				if(frm.bookChk[i].checked)
					bPass = true;
			}
		}
		else
		{
			if(frm.bookChk.checked)
				bPass = true;
		}
	}

	veri = frm.pkgChk;

	if(typeof (veri) == "object")
	{
		veri = frm.pkgChk[0];

		if(typeof (veri) == "object")
		{
			for(i=0; i<frm.pkgChk.length; i++)
			{
				if(frm.pkgChk[i].checked)
					bPass = true;
			}
		}
		else
		{
			if(frm.pkgChk.checked)
				bPass = true;
		}
	}


	if(!bPass)
	{
		alert("½ÅÃ»ÇÏ½Ç °­ÁÂ ¶Ç´Â ±³Àç¸¦ ¼±ÅÃÇÏ¿© ÁÖ½Ê½Ã¿ä");
		return;
	}

	frm.action = '/mypage/pay/my_cart_pre.asp';

	frm.submit();
}

function goCartParent(user_id)
{
	var frm = document.mainfrm;
	var bPass = false;

	var veri = frm.chrChk;

	if(typeof (veri) == "object")
	{
		veri = frm.chrChk[0];
		if(typeof (veri) == "object")
		{
			for(i=0; i<frm.chrChk.length; i++)
			{
				if(frm.chrChk[i].checked)
					bPass = true;
			}
		}
		else
		{
			if(frm.chrChk.checked)
				bPass = true;
		}
	}

	veri = frm.bookChk;
	if(typeof (veri) == "object")
	{
		veri = frm.bookChk[0];
		if(typeof (veri) == "object")
		{
			for(i=0; i<frm.bookChk.length; i++)
			{
				if(frm.bookChk[i].checked)
					bPass = true;
			}
		}
		else
		{
			if(frm.bookChk.checked)
				bPass = true;
		}
	}

	veri = frm.pkgChk;

	if(typeof (veri) == "object")
	{
		veri = frm.pkgChk[0];

		if(typeof (veri) == "object")
		{
			for(i=0; i<frm.pkgChk.length; i++)
			{
				if(frm.pkgChk[i].checked)
					bPass = true;
			}
		}
		else
		{
			if(frm.pkgChk.checked)
				bPass = true;
		}
	}


	if(!bPass)
	{
		alert("½ÅÃ»ÇÏ½Ç °­ÁÂ ¶Ç´Â ±³Àç¸¦ ¼±ÅÃÇÏ¿© ÁÖ½Ê½Ã¿ä");
		return;
	}

	frm.action = '/mypage/pay/my_cart_pre.asp';
	frm.target='_parent';
	frm.submit();
}

function goOffCart(user_id)
{
	var frm = document.mainfrm_off;
	var bPass = false;

	var veri = frm.chrChk;
	if(typeof (veri) == "object")
	{
		veri = frm.chrChk[0];
		if(typeof (veri) == "object")
		{
			for(i=0; i<frm.chrChk.length; i++)
			{
				if(frm.chrChk[i].checked)
					bPass = true;
			}
		}
		else
		{
			if(frm.chrChk.checked)
				bPass = true;
		}
	}

	if(!bPass)
	{
		alert("½ÅÃ»ÇÏ½Ç °­ÁÂ¸¦ ¼±ÅÃÇÏ¿© ÁÖ½Ê½Ã¿ä");
		return;
	}

	frm.action = '/mypage/pay/my_cart_pre_off.asp';

	frm.submit();
}

function goOffCart1(user_id)
{
	var frm = document.offform;
	var bPass = false;

	var veri = frm.chrChk;
	if(typeof (veri) == "object")
	{
		veri = frm.chrChk[0];
		if(typeof (veri) == "object")
		{
			for(i=0; i<frm.chrChk.length; i++)
			{
				if(frm.chrChk[i].checked)
					bPass = true;
			}
		}
		else
		{
			if(frm.chrChk.checked)
				bPass = true;
		}
	}

	if(!bPass)
	{
		alert("½ÅÃ»ÇÏ½Ç °­ÁÂ¸¦ ¼±ÅÃÇÏ¿© ÁÖ½Ê½Ã¿ä");
		return;
	}

	frm.action = '/mypage/pay/my_cart_pre_off.asp';

	frm.submit();
}


function goCartBook(user_id)
{
	var frm = document.mainfrm;
	frm.action = '/mypage/pay/my_cart_pre.asp';
	frm.submit();
}

function goDirectPay(user_id)
{
	var frm = document.mainfrm;
	var bPass = false;

	var veri = frm.chrChk;
	if(typeof (veri) == "object")
	{
		veri = frm.chrChk[0];
		if(typeof (veri) == "object")
		{
			for(i=0; i<frm.chrChk.length; i++)
			{
				if(frm.chrChk[i].checked)
					bPass = true;
			}
		}
		else
		{
			if(frm.chrChk.checked)
				bPass = true;
		}
	}

	veri = frm.bookChk;
	if(typeof (veri) == "object")
	{
		veri = frm.bookChk[0];
		if(typeof (veri) == "object")
		{
			for(i=0; i<frm.bookChk.length; i++)
			{
				if(frm.bookChk[i].checked)
					bPass = true;
			}
		}
		else
		{
			if(frm.bookChk.checked)
				bPass = true;
		}
	}

	veri = frm.pkgChk;
	if(typeof (veri) == "object")
	{
		veri = frm.pkgChk[0];
		if(typeof (veri) == "object")
		{
			for(i=0; i<frm.pkgChk.length; i++)
			{
				if(frm.pkgChk[i].checked)
					bPass = true;
			}
		}
		else
		{
			if(frm.pkgChk.checked)
				bPass = true;
		}
	}

	if(!bPass)
	{
		alert("°áÁ¦ÇÏ½Ç °­ÁÂ ¶Ç´Â ±³Àç¸¦ ¼±ÅÃÇÏ¿© ÁÖ½Ê½Ã¿ä");
		return;
	}

	frm.action = '/mypage/pay/my_direct_pay_pre.asp';

	frm.submit();
}


function goDirectPayParent(user_id)
{
	var frm = document.mainfrm;
	var bPass = false;

	var veri = frm.chrChk;
	if(typeof (veri) == "object")
	{
		veri = frm.chrChk[0];
		if(typeof (veri) == "object")
		{
			for(i=0; i<frm.chrChk.length; i++)
			{
				if(frm.chrChk[i].checked)
					bPass = true;
			}
		}
		else
		{
			if(frm.chrChk.checked)
				bPass = true;
		}
	}

	veri = frm.bookChk;
	if(typeof (veri) == "object")
	{
		veri = frm.bookChk[0];
		if(typeof (veri) == "object")
		{
			for(i=0; i<frm.bookChk.length; i++)
			{
				if(frm.bookChk[i].checked)
					bPass = true;
			}
		}
		else
		{
			if(frm.bookChk.checked)
				bPass = true;
		}
	}

	veri = frm.pkgChk;
	if(typeof (veri) == "object")
	{
		veri = frm.pkgChk[0];
		if(typeof (veri) == "object")
		{
			for(i=0; i<frm.pkgChk.length; i++)
			{
				if(frm.pkgChk[i].checked)
					bPass = true;
			}
		}
		else
		{
			if(frm.pkgChk.checked)
				bPass = true;
		}
	}

	if(!bPass)
	{
		alert("°áÁ¦ÇÏ½Ç °­ÁÂ ¶Ç´Â ±³Àç¸¦ ¼±ÅÃÇÏ¿© ÁÖ½Ê½Ã¿ä");
		return;
	}

	frm.action = '/mypage/pay/my_direct_pay_pre.asp';
	frm.target='_parent';
	frm.submit();
}

function goOffDirectPay(user_id)
{
	var frm = document.mainfrm_off;
	var bPass = false;

	var veri = frm.chrChk;
	if(typeof (veri) == "object")
	{
		veri = frm.chrChk[0];
		if(typeof (veri) == "object")
		{
			for(i=0; i<frm.chrChk.length; i++)
			{
				if(frm.chrChk[i].checked)
					bPass = true;
			}
		}
		else
		{
			if(frm.chrChk.checked)
				bPass = true;
		}
	}

	veri = frm.bookChk;
	if(typeof (veri) == "object")
	{
		veri = frm.bookChk[0];
		if(typeof (veri) == "object")
		{
			for(i=0; i<frm.bookChk.length; i++)
			{
				if(frm.bookChk[i].checked)
					bPass = true;
			}
		}
		else
		{
			if(frm.bookChk.checked)
				bPass = true;
		}
	}

	veri = frm.pkgChk;
	if(typeof (veri) == "object")
	{
		veri = frm.pkgChk[0];
		if(typeof (veri) == "object")
		{
			for(i=0; i<frm.pkgChk.length; i++)
			{
				if(frm.pkgChk[i].checked)
					bPass = true;
			}
		}
		else
		{
			if(frm.pkgChk.checked)
				bPass = true;
		}
	}

	if(!bPass)
	{
		alert("°áÁ¦ÇÏ½Ç °­ÁÂ ¶Ç´Â ±³Àç¸¦ ¼±ÅÃÇÏ¿© ÁÖ½Ê½Ã¿ä");
		return;
	}

	frm.action = '/mypage/pay/my_direct_pay_pre_off.asp';

	frm.submit();
}

function goOffDirectPay1(user_id)
{
	var frm = document.offform;
	var bPass = false;

	var veri = frm.chrChk;
	if(typeof (veri) == "object")
	{
		veri = frm.chrChk[0];
		if(typeof (veri) == "object")
		{
			for(i=0; i<frm.chrChk.length; i++)
			{
				if(frm.chrChk[i].checked)
					bPass = true;
			}
		}
		else
		{
			if(frm.chrChk.checked)
				bPass = true;
		}
	}

	veri = frm.bookChk;
	if(typeof (veri) == "object")
	{
		veri = frm.bookChk[0];
		if(typeof (veri) == "object")
		{
			for(i=0; i<frm.bookChk.length; i++)
			{
				if(frm.bookChk[i].checked)
					bPass = true;
			}
		}
		else
		{
			if(frm.bookChk.checked)
				bPass = true;
		}
	}

	veri = frm.pkgChk;
	if(typeof (veri) == "object")
	{
		veri = frm.pkgChk[0];
		if(typeof (veri) == "object")
		{
			for(i=0; i<frm.pkgChk.length; i++)
			{
				if(frm.pkgChk[i].checked)
					bPass = true;
			}
		}
		else
		{
			if(frm.pkgChk.checked)
				bPass = true;
		}
	}

	if(!bPass)
	{
		alert("°áÁ¦ÇÏ½Ç °­ÁÂ ¶Ç´Â ±³Àç¸¦ ¼±ÅÃÇÏ¿© ÁÖ½Ê½Ã¿ä");
		return;
	}


	frm.action = '/mypage/pay/my_direct_pay_pre_off.asp';

	frm.submit();
}

function goCartFree(user_id)
{
	var frm = document.mainfrm;
	frm.action = '/mypage/pay/my_cart_free.asp';
	frm.submit();
}

function goDirectPayBook(user_id)
{
	var frm = document.mainfrm;
	frm.action = '/mypage/pay/my_direct_pay_pre.asp';
	frm.submit();
}


// ½ºÅ©·¦ 2008-10-07 ±èÀº¼º
function ListScrap(tname, idx){

	var obj = document.frmScrap;
	if(confirm(" ÇØ´ç °Ô½Ã¹°À» ½ºÅ©·¦ ÇÏ½Ã°Ú½À´Ï±î?  ")){

		if(tname) obj.ScTb.value = tname;
		if(idx) obj.Scidx.value = idx;
		obj.target = "ExeFrm";
		obj.action = "/common/inc/Scrap.asp";
		obj.submit();
	}

}


function ChkLogin(){
	alert("·Î±×ÀÎ ÈÄ ÀÌ¿ëÇØ ÁÖ¼¼¿ä ");
	location.href = "/member/memb_login.asp";
}

function ChkLoginParent(){
	alert("·Î±×ÀÎ ÈÄ ÀÌ¿ëÇØ ÁÖ¼¼¿ä ");
	parent.location.href = "/member/memb_login.asp";
}



// ´ä±Û ¸¸Á·µµ 2008-10-07 ±èÀº¼º
function Feel(){
	var obj = document.frmFeel;
	if(confirm("´äº¯¿¡ ´ëÇÑ ¸¸Á·µµ¸¦ µî·ÏÇÏ½Ã°Ú½À´Ï±î?  ")){
		obj.target = "ExeFrm";
		obj.action = "/common/inc/starFeel.asp";
		obj.submit();
	}
}


// ½ºÅ©·¦ 2008-10-07 ±èÀº¼º
function ViewPrintp(tname, idx){

	var obj = document.frmPrint;
	var WinPrint = launchCenter('about:blank', 'WinPrint', '700', '1000', 'auto');
	obj.target = "WinPrint";
	obj.action = "/common/inc/ViewPrint.asp";
	obj.submit();
}

function ViewPrintp1(idx){

	var obj = document.frmPrint;
	var WinPrint = launchCenter('about:blank', 'WinPrint', '700', '1000', 'auto');
	obj.target = "WinPrint";
	obj.action = "/acad/sch_print.asp?SM_SCH_CD="+idx;
	obj.submit();
}

// ÇÔ¼öÀÌ¸§ : onlyNumber()
// ÇÔ¼ö¼³¸í : ¿ÀÁ÷ ¼ýÀÚ¸¸ ÀÔ·ÂµÇ°Ô ÇÔ
// ÀÔ ·Â °ª : ¾øÀ½
// ¹Ý È¯ °ª : ¾øÀ½
// »ç¿ë¹ý : <input type="text" onKeyPress="onlyNumber()">
function onlyNumber()
{
    if( window.event.keyCode < 48 || window.event.keyCode > 57 ) {
        window.event.keyCode = 0;
    }
}

// ÀÌ¹ÌÁö Å¬¸¯ Á¡¼± ¾ø¾Ö±â 2008-10-07 ±èÀº¼º
function autoBlur(){
 // if(event.srcElement.tagName=="A"||event.srcElement.tagName=="IMG")
 // document.body.focus();
}
  document.onfocusin=autoBlur;


function goMenu(v) {
	switch (v)
	{
	case "a1" :
		location.href="/mypage/";
		break;
	case "a2" :
		location.href="/prof/";
		break;
	case "a3" :
		location.href="/vod/";
		break;
	case "a4" :
		location.href="/peet/";
		break;
	case "a5" :
		location.href="/eng/";
		break;
	case "a6" :
		location.href="/data1/";
		break;
	case "a7" :
		location.href="/data2/";
		break;
	case "a8" :
		location.href="/cust/";
		break;
	case "a9" :
		location.href="/acad/";
		break;
	case "a1_1" :
		location.href="/acad/";
		break;
	case "a1_2" :
		location.href="/acad/gangnam.asp";
		break;
	case "a1_3" :
		location.href="/acad/shinchon.asp";
		break;
	case "a1_4" :
		location.href="/acad_peet/sc_index.asp";
		break;
	case "a1_5" :
		location.href="/acad/peet_index.asp";
		break;
	case "a1_6" :
		location.href="/acad_md/gn_index.asp";
		break;
	}
}


/**
* 2008-10-27 ±èÀº¼º
* ½ÃÀÛÆäÀÌÁö ¼³Á¤
*/
function BstartPage(Obj, urlStr){
    if (document.all && window.external){
        Obj.style.behavior='url(#default#homepage)';
		if (urlStr)
		{
			Obj.setHomePage(urlStr);
		}else{
			Obj.setHomePage("http://www.megaut.co.kr");
		}
    } else {

    }
}

function go_main_banner (v){

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

function MovieView1(id,murl,w,h,pv,as1,pv2)
{
	document.write("\
	<embed id='"+id+"' src='"+murl+"' width='"+w+"' height='"+h+"' autostart='"+as1+"' loop='false' \
	showstatusbar='false' showcontrols='true' ShowAudioControls='false'>\
	");
}


/*
±³Àç ¹Ì¸®º¸±â
*/
function ebook_show(url){
    window.open(url,'','width=1024,height=768,left=0,top=0 scrollbars=no');
}

/*
¾Æ·¡ ÇÔ¼ö 3°³´Â ¿µ¾î Å×½ºÆ® ¿ë
*/
function open_result_popup(a)
{
	str = window.open('./pop_result.asp?t_idx='+a,'report','top=0 left=0 width=720 height=700 scrollbars=yes');
	str.focus();
}

function open_feedback_popup(a)
{
	str2 = window.open('./pop_feedback.asp?t_idx='+a,'feed','top=0 left=500 width=720 height=700 scrollbars=yes');
	str2.focus();
}

function player_test_preview(chr_cd, ord)
{
	str=window.open("/player/mega/entertest/sample_player_engtest.asp?chr_cd="+chr_cd+"&ord="+ord,"sampleLecture","width=1020 height=720 scrollbars=no");
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
	obj.width=obj.height=1;
	obj.className=obj.className.replace(/\bpng24\b/i,'');
	obj.style.filter =
	"progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"+ obj.src +"',sizingMethod='image');"
	obj.src='';
	return '';
}


/*********************************************************
* ÇÔ¼öÀÌ¸§  : pop_intro
* ÇÔ¼ö¼³¸í  : obj - Object
* ÀÔ ·Â °ª  : ÀÌº¥Æ®ÄÚµå
* ¹Ý È¯ °ª  : ¾øÀ½
* »ç ¿ë ¹ý  : javascript:pop_intro(20110209)
**********************************************************/
function pop_intro(evt_code)
{
	 window.open("/event/event_join_pop.asp?evt_code=event"+evt_code ,"calendar","resizable=no,width=480,height=100,top=0,left=0,scrollbars=yes,location=no,status=no");
}

/*********************************************************
* ÀÌ¸§ : MM_openBrWindow_Center
* INPUT : theURL - ÆË¾÷ URL, winName - ÆË¾÷ Å¸ÀÌÆ², features - ÆË¾÷ ¼Ó¼º
* ¼³¸í : °¡¿îµ¥ »õÃ¢ ¿­±â
**********************************************************/
function MM_openBrWindow_Center(theURL,winName,features) { //v2.0
	var strTemp = features.split(", ");
	var strTemp2 = "";
	var strTempCount = strTemp.length;
	var chekStr = "";
	var findStr1 = "width";
	var findStr2 = "height";
	var features2 = "";
	var x = "";
	var u = "";

	for (i=0;i<strTempCount;i++) {
		chekStr = strTemp[i].replace(/\s/g, "");

		strTemp2 = chekStr.split("=")

		if (chekStr.indexOf(findStr1) != -1) {
			x = (screen.availWidth - strTemp2[1]) / 2;
			features2 = features2 + ", left="+ x;
		}

		if (chekStr.indexOf(findStr2) != -1) {
			y = (screen.availHeight - strTemp2[1]) / 2;
			features2 = features2 + ", top="+ y;
		}
	}
	window.open(theURL,winName,features+features2);
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

function isIE(){
	var agent = navigator.userAgent.toLowerCase();
	 
	if ( (navigator.appName == 'Netscape' && navigator.userAgent.search('Trident') != -1) || (agent.indexOf("msie") != -1) ) {
		return true;
	}
	else {
		return false;
	}
}
function isIE10(){
	var agent = navigator.userAgent.toLowerCase();
	//alert(agent);
	if ( agent.indexOf("msie 7") > 0 ) {
		return false;
	} else {
		if ( agent.indexOf("msie 8") > 0 ) {
			return false;
		} else {
			if ( agent.indexOf("msie 9") > 0 ) {
				return false;
			} else {
				return true;
			}
		}
	}
}

	function checkEmail(email){
		//email = 'aaa@naver.com';
		//ÀÌ¸ÞÀÏ Ã¼Å©
		var regex=/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;   
		  
		if(regex.test(email) === false) {  
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
	elem.value=elem.value.replace(/[^0-9]/g,'');
}

function fncOnlyHangul(elem) {
	var pattern = /^[¤¡-¤¾|°¡-ÆR|\*]+$/g
	elem.value=elem.value.replace(pattern,'');
}

function chkOnlyHangul(val) {
	var tmp = /^[¤¡-¤¾|°¡-ÆR|\*]+$/

	if(tmp.test(val)) return true;
	return false;
}

function chkHpNo(val) {
	if(val == '') return false;

	// ±âÁ¸ ¹øÈ£¿¡¼­ - ¸¦ »èÁ¦ÇÕ´Ï´Ù.
	var trans_num = val.replace(/-/gi,'');

	// ÀÔ·Â°ªÀÌ ÀÖÀ»¶§¸¸ ½ÇÇàÇÕ´Ï´Ù.
	if(trans_num != null && trans_num != '')
	{
		// ÃÑ ÇÚµåÆù ÀÚ¸®¼ö´Â 11±ÛÀÚÀÌ°Å³ª, 10ÀÚ¿©¾ß ÇÕ´Ï´Ù.
		if(trans_num.length==11 || trans_num.length==10)
		{
			// À¯È¿¼º Ã¼Å©
			var regExp_ctn = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})([0-9]{3,4})([0-9]{4})$/;
			if(regExp_ctn.test(trans_num))
			{
				// À¯È¿¼º Ã¼Å©¿¡ ¼º°øÇÏ¸é ÇÏÀÌÇÂÀ» ³Ö°í °ªÀ» ¹Ù²ãÁÝ´Ï´Ù.
				trans_num = trans_num.replace(/^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?([0-9]{3,4})-?([0-9]{4})$/, "$1-$2-$3");
				return true;
			}
			else
			{
				return false;
			}
		}
		else
		{
			return false;
		}
	}
}
function chk_email(email) {
	var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
	if(exptext.test(email)==false){
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
