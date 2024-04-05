<table width="240px" border="0" cellspacing="0" cellpadding="0" class="daumsearch_wrap">
<tr>
  <td height="60" style="padding:0 10px 0 10px;">
	  <table width="100%" border="0" cellspacing="0" cellpadding="0">
	  <tr align="right">
		  <td colspan="3" class="aL" style="padding-bottom:3px;"><img src="http://img.megagong.net/player/2015_newskin/etc/daum_logo.png"></td>
	  </tr>
	  <tr>
		<td style="width:55px; padding-right:2px;">
			  <select name="DaumDic" class="select" id="DaumDic">
				  <option value="1" selected>영어</option>
				  <option value="2">국어</option>
				  <option value="3">한자</option>
				  <option value="4">일어</option>
				  <option value="5">중국어</option>
			  </select>
		  </td>
		  <td><input name="DaumDicWord" type="text" class="s_input" id="DaumDicWord" size="18" onKeyDown="javascript:if(event.keyCode==13){fncSearchDaumDic();return false;}"></td>
		  <td style="width:41px;"><a href="#_blank" onClick="fncSearchDaumDic();"><img src="http://img.megagong.net/player/2015_newskin/etc/btn_search.gif" alt="검색" width="41" height="19"></a></td>
	  </tr>
	  </table>
	  
  </td>
</tr>
</table>
<script language="javascript"> 
  function doParamEncodeURI(paramValue) {
	return encodeURIComponent(paramValue);
  }
  function fncSearchDaumDic(){
	var optVal = document.getElementById("DaumDic").value;
	var txtVal = document.getElementById("DaumDicWord").value;
 
	  if (txtVal == "")
	  {
		  alert("검색어를 입력해 주세요!");
	  }
	  else{
		  if (optVal == 1) {
			var url = "http://engdic.daum.net/dicen/small_search.do?nil_profile=megastudyTop&nil_menu=endic&q=" + doParamEncodeURI(txtVal);
		  } else if (optVal == 2) {
			var url = "http://krdic.daum.net/dickr/small_search.do?nil_profile=megastudyTop&nil_menu=krdic&q=" + doParamEncodeURI(txtVal);
		  } else if (optVal == 3) {
			var url = "http://handic.daum.net/dicha/small_top.do?nil_profile=megastudyTop&nil_menu=hadic&q=" + txtVal;
		  } else if (optVal == 4) {
			var url = "http://jpdic.daum.net/dicjp/small_search_total.do?q=" + txtVal;
		  } else if (optVal == 5) {
			var url = "http://cndic.daum.net/sm_index.html?search=yes&q=" + encodeURIComponent(txtVal);
		  }
		  var h=0;
		  if (navigator.userAgent.indexOf("SV1") > 0){  h=14; }
		  else if(navigator.userAgent.indexOf("MSIE 7")>0) { h=45; }
		  else if(navigator.userAgent.indexOf("Gecko")>0 && navigator.userAgent.indexOf("Firefox") <= 0 && navigator.userAgent.indexOf("Netscape") <= 0 ){ h=22; }
		  else if(navigator.userAgent.indexOf("Firefox") >0 ){  h=18; }
		  else if(navigator.userAgent.indexOf("Netscape") >0 ){ h=-2; }
		  else { h=0;}
		  var width = 410;
		  var height = 500+h;
 
		  openWindow=window.open(url,"_daum",'width='+ width +',height='+ height +',resizable=no,scrollbars=yes');
		  openWindow.focus();
	  }
	  return;
  }
 </script>