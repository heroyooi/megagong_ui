<div style="display:none;" > 
<%'## 전환스크립트를 상단에, 공통스크립트를 하단에   %>
<%
' *****************************************************************************************************************************************************************
'''''회원 가입 완료
' *****************************************************************************************************************************************************************
if instr(1, lcase( fncRequestVariables("PATH_INFO") ) , "/member_v2/join_end.asp" ) then
%>
        <!-- Google Code 전환  -->
        <script type="text/javascript">
        /* <![CDATA[ */
        var google_conversion_id = 995566040;
        var google_conversion_language = "en";
        var google_conversion_format = "1";
        var google_conversion_color = "ffffff";
        var google_conversion_label = "qVntCNDt7gQQ2MPc2gM";
        var google_conversion_value = 50000;
        var google_remarketing_only = false;
        /* ]]> */
        </script>
        <script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
        </script>
        <noscript>
        <div style="display:inline;">
        <img height="1" width="1" style="border-style:none;" alt="" src="//www.googleadservices.com/pagead/conversion/995566040/?value=50000&amp;label=qVntCNDt7gQQ2MPc2gM&amp;guid=ON&amp;script=0"/>
        </div>
        </noscript>
        

        <!-- naver 전환페이지 설정 -->
         <script type="text/javascript" src="http://wcs.naver.net/wcslog.js"> </script> 
         <script type="text/javascript">
             var _nasa = {};
             _nasa["cnv"] = wcs.cnv("2", "10"); // 전환유형, 전환가치 설정해야함. 설치매뉴얼 참고
        </script> 

	<!-- WIDERPLANET PURCHASE SCRIPT START 2014.6.23 -->
	<div id="Div1" style="display:none;"></div>
	<script type="text/javascript">
		var wp_conf = 'ti=20470&v=1&device=web&r=1';
		if (typeof (wp_pars) == 'undefined') { var wp_pars = []; } 
		wp_pars["i1"] = "1"; /* 첫번째 상품의 식별번호 (Feed로 제공되는 식별번호와 일치) */
		wp_pars["p1"] = "<%=cook_id%>"; /* 첫번째 상품의 단가 */wp_pars["q1"] = "1"; /* 첫번째 상품의 갯수 */
		wp_pars["t1"] = "회원가입"; /* 첫번째 상품의 이름 */
	</script><script type="text/javascript" async defer src="//astg.widerplanet.com/js/wp_astg_2.2_common_purchase.js"></script>
	<!-- // WIDERPLANET PURCHASE SCRIPT END 2014.6.23-->

	<!-- Withpang Tracker v3.0 [결제] start -->
	<script src="http://cdn.megadata.co.kr/js/enliple_min2.js"></script>
	  <script type="text/javascript">
	  <!--
	   var cn = new EN();
	   cn.setData("uid",  "megacst4ad");
	   cn.setData("ordcode",  "");
	 cn.setData("qty", "1"); 
	 cn.setData("price", "1"); 
	 cn.setData("pnm", encodeURIComponent(encodeURIComponent("counsel")));
	 cn.sendConv();
	  //-->
	  </script>
	<!-- Withpang Tracker v3.0 [결제] end -->


	<!-- WIDERPLANET  SCRIPT START 2017.4.6 -->
	<div id="wp_tg_cts" style="display:none;"></div>
	<script type="text/javascript">
	var wptg_tagscript_vars = wptg_tagscript_vars || [];
	wptg_tagscript_vars.push(
	(function() {
	return {
		wp_hcuid:"",  /*Cross device targeting을 원하는 광고주는 로그인한 사용자의 Unique ID (ex. 로그인 ID, 고객넘버 등)를 암호화하여 대입.
					 *주의: 로그인 하지 않은 사용자는 어떠한 값도 대입하지 않습니다.*/
		ti:"20470",
		ty:"Join",                        /*트래킹태그 타입*/
		device:"web",                  /*디바이스 종류 (web 또는 mobile)*/
		items:[{
			i:"회원가입",          /*전환 식별 코드 (한글, 영문, 숫자, 공백 허용)*/
			t:"회원가입",          /*전환명 (한글, 영문, 숫자, 공백 허용)*/
			p:"1",                   /*전환가격 (전환 가격이 없을 경우 1로 설정)*/
			q:"1"                   /*전환수량 (전환 수량이 고정적으로 1개 이하일 경우 1로 설정)*/
		}]
	};
	}));
	</script>
	<script type="text/javascript" async src="//cdn-aitg.widerplanet.com/js/wp_astg_4.0.js"></script>
	<!-- // WIDERPLANET  SCRIPT END 2017.4.6 -->


	<% ' // 2018.03.09 추가 Appier ------------------------------ %>
		<script>
		(function(){
		if (typeof(window.APPIER_RETARGET)  == 'undefined') {
			(function(w, d, s, m) {
				var f = d.getElementsByTagName('script')[0],
					j = d.createElement('script'),
					ns = 'APPIER_RETARGET';
				w._appierSendQueue = w._appierSendQueue || [];
				w['appierRetargetJson'] = { id: s, site: m};
				j.async = true;
				j.src = '//jscdn.appier.net/aa.js?id='+m;
				f.parentNode.insertBefore(j, f);
				!w[ns] && (w[ns] = {});
				(!w[ns].send) && (w[ns].send = function(j){
					w._appierSendQueue.push(j);
				});
			 })(window, document, "FHfB", "megacst.com");
		 }

		window.APPIER_RETARGET.send({
			"t": "type_conversion",
			"content": "register",
			"action_id": "mWFw5QgUHiqQwWY",
			"track_id": "uEoMdUiXuKraEH3",
			"opts": {unique_key: 'true'}
		});

		})();
		</script>
	<% ' 2018.03.09 추가 Appier ------------------------------ // %>

	<% ' // 2018.05.31 추가 DDN ------------------------------ %>
	<script type="text/javascript" charset="UTF-8" src="//t1.daumcdn.net/adfit/static/kp.js"></script>
	<script type="text/javascript">
		  kakaoPixel('8676317250609395314').pageView();
		  kakaoPixel('8676317250609395314').completeRegistration();
	</script>
	<% ' 2018.05.31 추가 DDN ------------------------------ // %>

	<% ' // 2018.05.31 추가 realclick ------------------------------ %>
	<!-- Tracking Script Start 2.0 -->
	<script type="text/javascript" async="true">
	var dspu = "JH9bWVnYWNzdA";      // === (필수)광고주key (변경하지마세요) ===

	var dspt = "2";         // === (필수)전환구분( 2:기타구분 ) (변경하지마세요)  === 
	var dspo = "";          // === (선택)구문번호( 미입력시 - 중복체크 안함. ) ===

	var dspu,dspt,dspo,dspom; 
	function loadanalJS_dsp(b,c){var d=document.getElementsByTagName("head")[0],a=document.createElement("sc"+"ript");a.type="text/javasc"+"ript";null!=c&&(a.charset="UTF-8");
	a.src=b;a.async="true";d.appendChild(a)}function loadanal_dsp(b){loadanalJS_dsp(("https:"==document.location.protocol?"https://":"http://")+b,"UTF-8");document.write("<span id=dsp_spn style=display:none;></span>");}
	loadanal_dsp("tk.realclick.co.kr/tk_comm.js?dspu="+dspu+"&dspt="+dspt+"&dspo="+dspo+"&dspom="+dspom);
	</script>
	<!-- Tracking Script End 2.0 -->
	<% ' 2018.05.31 추가 realclick ------------------------------ // %>
<%
	prev_google="Y"

end if
%>

<%
' *****************************************************************************************************************************************************************
'''''''''''결재 완료 페이지  
' *****************************************************************************************************************************************************************
if lcase(fncRequestVariables("PATH_INFO"))="/mypage_v2/pay/my_pay_done.asp" then  
		  LGD_OID = request("LGD_OID")      
		  
		 if cook_id <> "" and  LGD_OID <> "" then
		   
		   ssql =        " select  top 1  PL_PAY_NO , pl_pay_amt "
		   ssql = ssql + " from ms_pay_lnk with(nolock)	"		
		   ssql = ssql + " left join ms_card_pay d  with(nolock) on pl_pay_no = d.cp_pay_no and d.cp_cnc_flg='1' "
		   ssql = ssql + " left join ms_town_pay with(nolock) on pl_pay_no = tp_pay_no and len(tp_tid)>10	"
		   ssql = ssql + " left join ms_bank_pay with(nolock) on pl_pay_no = bp_pay_no and len(bp_tid)>10	"	
		   ssql = ssql + " left JOIN MS_VST_PAY WITH(NOLOCK)  ON PL_PAY_NO = VP_PAY_NO and VP_CNC_FLG = '1'	"
		   ssql = ssql + " where 1=1 and isnull(d.cp_pay_amt,0) + isnull(tp_pay_amt,0) + isnull(bp_in_amt,0) + isnull(vp_pay_amt,0) +isnull( ( select sum(cp_pay_amt) from ms_cash_pay with(nolock) where cp_pay_no=pl_pay_no and cp_cash_flg='2') , 0)  > 0  "
		   ssql = ssql + " and ( CP_MEM_ID='bkstory' or TP_MEM_ID='"& cook_id &"' or bp_mem_id='"& cook_id &"' or vp_mem_id='"& cook_id &"'  ) 	"
		   ssql = ssql + " and ( CP_tid='"& LGD_OID &"' or TP_tid='"& LGD_OID &"' or bp_tid='"& LGD_OID &"' )  	"
		   ssql = ssql + " order by pl_pay_no ASC  "

		   call RSexec (rs,0,0,ssql,"study")
		   
			  if not RS.eof then
				 log_pay_no  = RS(0)
				 log_pay_amt = RS(1)
			  %>
				<!-- adinsight 주문 총금액 받아옴. start -->
				<script language='javascript'>
					var TRS_AMT = '<%=log_pay_amt%>';
					var TRS_ORDER_ID = '<%=log_pay_no%>'; 
				</script>
				<!-- adinsight 주문 총금액 받아옴. end -->
			  <%
			  end if
		   call RSclose(RS)
		 
		 end if
%>

       <!-- Google Code 전환 -->
        <script type="text/javascript">
        /* <![CDATA[ */
        var google_conversion_id = 995566040;
        var google_conversion_language = "en";
        var google_conversion_format = "2";
        var google_conversion_color = "ffffff";
        var google_conversion_label = "T5Q6CIjlvQUQ2MPc2gM";
        var google_conversion_value = 0;
        /* ]]> */
        </script>
        <script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
        </script>
        <noscript>
        <div style="display:inline;">
        <img height="1" width="1" style="border-style:none;" alt="" src="//www.googleadservices.com/pagead/conversion/995566040/?value=0&amp;label=T5Q6CIjlvQUQ2MPc2gM&amp;guid=ON&amp;script=0"/>
        </div>
        </noscript>

        <!-- naver 전환페이지 설정 -->
         <script type="text/javascript" src="http://wcs.naver.net/wcslog.js"> </script> 
         <script type="text/javascript">
             var _nasa = {};
             _nasa["cnv"] = wcs.cnv("1", "<%=tot_pay_money%>"); // 전환유형, 전환가치 설정해야함. 설치매뉴얼 참고
        </script> 

	<!-- WIDERPLANET PURCHASE SCRIPT START 2014.6.23 -->
	<div id="wp_tg_cts" style="display:none;"></div>
	<script type="text/javascript">
	var wp_conf = 'ti=20470&v=1&device=web&r=1'; if (typeof (wp_pars) == 'undefined') { var wp_pars = []; }
	wp_pars["i1"] = "<%=tot_pay_money%>"; /* 전환상품의 식별코드 */wp_pars["p1"] = "1"; /* 전환상품의 단가 */
	wp_pars["q1"] = "1"; /* 전환상품의 갯수 */
	wp_pars["t1"] = "강좌결제"; /* 전환상품의 이름 */
	</script>
	<script type="text/javascript" src="//astg.widerplanet.com/js/wp_astg_2.2_common_purchase.js"></script>
	<!-- // WIDERPLANET PURCHASE SCRIPT END 2014.6.23-->

	<!-- Withpang Tracker v3.0 [결제] start -->
	<script src="http://cdn.megadata.co.kr/js/enliple_min2.js"></script>
	  <script type="text/javascript">
	  <!--
	   var cn = new EN();
	   cn.setData("uid",  "megacst4ad");
	   cn.setData("ordcode",  "<%= pay_no %>");
	 cn.setData("pcode", "");  //옵션 - 없는경우 안넣어도됨
	 cn.setData("qty", "1"); 
	 cn.setData("price", "<%=tot_pay_money%>"); 
	 cn.setData("pnm", encodeURIComponent(encodeURIComponent("제품명")));  //옵션 - 없는 경우 안넣어도됨
	  cn.sendConv();
	  //-->
	  </script>
	  <!-- Withpang Tracker v3.0 [결제] end -->

	  
	<!-- adinsight 주문 상품별 아이디 받아옴. start-->
	<script type="text/javascript"> 
	 if(typeof TRS_PRODUCT == 'undefined'){
		var TRS_PRODUCT = '' + '상품별아이디 변수';
	} else {
		TRS_PRODUCT = TRS_PRODUCT + ' $ '+ '상품별아이디 변수';
	}
	</script>
	<!-- adinsight 주문 상품별 아이디 받아옴. end-->

	<!-- adinsight 주문 총금액 받아옴. start -->
	<script language='javascript'> 
	 var TRS_AMT='<%=tot_pay_money%>'; 
	 var TRS_ORDER_ID='<%= pay_no %>'; 
	</script>
	<!-- adinsight 주문 총금액 받아옴. end -->


	<%
	' // 로거용 기본 데이터 작업 ----------------------------------------------
	strSql = " EXEC Msp_Get_Pay_List '"&cook_id&"', '"&pay_no&"'  "
	Set rs = DBExec(strSql, "study")
	gr_list = Null
	If Not rs.EOF Then
		gr_list = rs.GetRows()
	End If
	Call DBClose(rs)

	'총수량 : 총가격
	rTotQty = 0 : rTotPrc = 0
	strPayList = ""
	If IsArray(gr_list) Then
		t = UBound(gr_list,2)
		For i=0 To t
			If i > 0 Then strPayList = strPayList & ","

			rCD = Trim(gr_list(0, i))
			rNM = Replace(Trim(gr_list(1, i)),"""","")
			rQTY = Trim(gr_list(2, i))
			rPRC = Trim(gr_list(3, i))

			strPayList = strPayList & " { "
			strPayList = strPayList & "	""name"":"""&rNM&""", "
			strPayList = strPayList & "	""quantity"":"""&rQTY&""", "
			strPayList = strPayList & "	""price"":"""&rPRC&""" "
			strPayList = strPayList & " } "

			If IsNumeric(rQTY) Then rTotQty = rTotQty + rQTY 
			If IsNumeric(rPRC) Then rTotPrc = rTotPrc + rPRC

		Next
	End If
	'무통장 포함일 경우 (무통장일 경우 실구입가는 0 이므로 무통장 구매가로 변경)
	If rTotPrc = 0 Then
		If IsNumeric(amount) Then 
			rTotPrc = amount
		End If
	End If
	' 로거용 기본 데이터 작업 ----------------------------------------------//
	%>

	<% ' // 2018.03.09 추가 Appier ------------------------------ %>
		<script>
		(function(){

		var appierRtorderId = "<%= pay_no %>";
		var appierRtPrice = "<%=tot_pay_money%>";
		var appierRtCurrency = "KRW"; 

		//========= PLEASE DO NOT CHANGE BELOW =========
		if (typeof(window.APPIER_RETARGET)  == 'undefined') {
			(function(w, d, s, m) {
				var f = d.getElementsByTagName('script')[0],
					j = d.createElement('script'),
					ns = 'APPIER_RETARGET';
				w._appierSendQueue = w._appierSendQueue || [];
				w['appierRetargetJson'] = { id: s, site: m};
				j.async = true;
				j.src = '//jscdn.appier.net/aa.js?id='+m;
				f.parentNode.insertBefore(j, f);
				!w[ns] && (w[ns] = {});
				(!w[ns].send) && (w[ns].send = function(j){
					w._appierSendQueue.push(j);
				});
			})(window, document, "FHfB", "megacst.com");
		}
		window.APPIER_RETARGET.send({
			"t":"type_purchase", 
			"totalvalue":appierRtPrice, 
			"currency":appierRtCurrency, 
			"action_id": "cpkcwmMo19Ae8EQ",
			"track_id":"uEoMdUiXuKraEH3",
			"opts":{"uu":appierRtorderId, "total_revenue" : appierRtPrice, "currency" : appierRtCurrency}});
		})();
		</script>
	<% ' 2018.03.09 추가 Appier ------------------------------ // %>

	<% ' // 2018.05.31 추가 DDN ------------------------------ %>
	<script type="text/javascript" charset="UTF-8" src="//t1.daumcdn.net/adfit/static/kp.js"></script>
	<script type="text/javascript">
		  kakaoPixel('8676317250609395314').pageView();
		  kakaoPixel('8676317250609395314').purchase({
			total_quantity: "<%=rTotQty%>",
			total_price: "<%=rTotPrc%>",
			currency: "KRW",
			products: [<%=strPayList%>]
		});
	</script>
	<% ' 2018.05.31 추가 DDN ------------------------------ // %>

	<% ' // 2018.05.31 추가 realclick ------------------------------ %>
	<!-- Tracking Script Start 2.0 -->
	<script type="text/javascript" async="true">
	var dspu = "JH9bWVnYWNzdA";      // === (필수)광고주key (변경하지마세요) ===

	var dspt = "1";         // === (필수)전환구분( 1:구매 ) (변경하지마세요) === 
	var dspo = "<%= pay_no %>";          // === (선택)주문번호( 미입력시 - 중복체크 안함. ) ===
	var dspom = "<%=rTotPrc%>";        // === (선택)구매금액( 구매전환시 사용 ) ===

	var dspu,dspt,dspo,dspom; 
	function loadanalJS_dsp(b,c){var d=document.getElementsByTagName("head")[0],a=document.createElement("sc"+"ript");a.type="text/javasc"+"ript";null!=c&&(a.charset="UTF-8");
	a.src=b;a.async="true";d.appendChild(a)}function loadanal_dsp(b){loadanalJS_dsp(("https:"==document.location.protocol?"https://":"http://")+b,"UTF-8");document.write("<span id=dsp_spn style=display:none;></span>");}
	loadanal_dsp("tk.realclick.co.kr/tk_comm.js?dspu="+dspu+"&dspt="+dspt+"&dspo="+dspo+"&dspom="+dspom);
	</script>
	<!-- Tracking Script End 2.0 -->
	<% ' 2018.05.31 추가 realclick ------------------------------ // %>

<%
	prev_google="Y"
end if 
%>

<%
' *****************************************************************************************************************************************************************
'''''''''''결재 완료 페이지  (학원)
' *****************************************************************************************************************************************************************
	if instr(1, lcase( fncRequestVariables("PATH_INFO") ) , "/my_pay_done_off.asp" ) Then
%>
	<!-- WIDERPLANET PURCHASE SCRIPT START 2017.1.12 -->
	<div id="wp_tg_cts" style="display:none;"></div>
	<script type="text/javascript">
	var wptg_tagscript_vars = wptg_tagscript_vars || [];
	wptg_tagscript_vars.push(
	(function() {
		return {
			wp_hcuid:"",  		     /*Cross device targeting을 원하는 광고주는 로그인한 사용자의 Unique ID (ex. 로그인 ID, 고객넘버 등)를 암호화하여 대입.
							  *주의: 로그인 하지 않은 사용자는 어떠한 값도 대입하지 않습니다.*/
			ti:"20470",            	     /*광고주 코드*/
			ty:"PurchaseComplete",       /*트래킹태그 타입*/
			device:"web",                /*디바이스 종류 (web 또는 mobile)*/
			items:[{i:"강좌결제_실강",	     /*전환 식별코드 (한글, 영문, 숫자, 공백 허용)*/
				t:"강좌결제_실강",         /*전환명 (한글, 영문, 숫자, 공백 허용)*/
				p:"1",		     /*전환가격 (전환 가격이 없을경우 1로 설정)*/
				q:"1"		     /*전환수량 (전환 수량이 고정적으로 1개 이하일 경우 1로 설정)*/
			}]
		};
	}));
	</script>
	<script type="text/javascript" src="//cdn-aitg.widerplanet.com/js/wp_astg_4.0.js"></script>
	<!-- // WIDERPLANET PURCHASE SCRIPT END 2017.1.12 -->

	<!-- Google Code for &#44396;&#47588;&#50756;&#47308;_&#49892;&#44053; Conversion Page -->
	<script type="text/javascript">
	/* <![CDATA[ */
	var google_conversion_id = 995566040;
	var google_conversion_language = "en";
	var google_conversion_format = "3";
	var google_conversion_color = "ffffff";
	var google_conversion_label = "wTFICOS3kW0Q2MPc2gM";
	var google_conversion_value = 1.00;
	var google_conversion_currency = "KRW";
	var google_remarketing_only = false;
	/* ]]> */
	</script>
	<script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
	</script>
	<noscript>
	<div style="display:inline;">
	<img height="1" width="1" style="border-style:none;" alt="" src="//www.googleadservices.com/pagead/conversion/995566040/?value=1.00&amp;currency_code=KRW&amp;label=wTFICOS3kW0Q2MPc2gM&amp;guid=ON&amp;script=0"/>
	</div>
	</noscript>

	<!-- 네이버 전환페이지 설정 -->
	<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script> 
	<script type="text/javascript"> 
	var _nasa={};
	_nasa["cnv"] = wcs.cnv("5","10"); // 전환가치 설정해야함. 설치매뉴얼 참고
	</script> 

	<!-- 다음 전환스크립트 -->
	 <script type="text/javascript"> 
	 //<![CDATA[ 
	 var DaumConversionDctSv="type=W,orderID=,amount="; 
	 var DaumConversionAccountID="lgmToYdyocg_TJ9L8XpGLQ00"; 
	 if(typeof DaumConversionScriptLoaded=="undefined"&&location.protocol!="file:"){ 
		var DaumConversionScriptLoaded=true; 
		document.write(unescape("%3Cscript%20type%3D%22text/javas"+"cript%22%20src%3D%22"+(location.protocol=="https:"?"https":"http")+"%3A//t1.daumcdn.net/cssjs/common/cts/vr200/dcts.js%22%3E%3C/script%3E")); 
	 } 
	 //]]> 
	 </script> 

	<!-- adinsight 주문 상품별 아이디 받아옴. start-->
	<script type="text/javascript"> 
	 if(typeof TRS_PRODUCT == 'undefined'){
		var TRS_PRODUCT = '' + '상품별아이디 변수';
	} else {
		TRS_PRODUCT = TRS_PRODUCT + ' $ '+ '상품별아이디 변수';
	}
	</script>
	<!-- adinsight 주문 상품별 아이디 받아옴. end-->

	<!-- adinsight 주문 총금액 받아옴. start -->
	<script language='javascript'> 
	 var TRS_AMT='<%=total_prc%>'; 
	 var TRS_ORDER_ID='<%= pay_no %>'; 
	</script>
	<!-- adinsight 주문 총금액 받아옴. end -->


	<%
	' // 로거용 기본 데이터 작업 ----------------------------------------------
	strSql = " EXEC Msp_Get_Pay_List '"&cook_id&"', '"&pay_no&"'  "
	Set rs = DBExec(strSql, "study")
	gr_list = Null
	If Not rs.EOF Then
		gr_list = rs.GetRows()
	End If
	Call DBClose(rs)

	'총수량 : 총가격
	rTotQty = 0 : rTotPrc = 0
	strPayList = ""
	If IsArray(gr_list) Then
		t = UBound(gr_list,2)
		For i=0 To t
			If i > 0 Then strPayList = strPayList & ","

			rCD = Trim(gr_list(0, i))
			rNM = Replace(Trim(gr_list(1, i)),"""","")
			rQTY = Trim(gr_list(2, i))
			rPRC = Trim(gr_list(3, i))

			strPayList = strPayList & " { "
			strPayList = strPayList & "	""name"":"""&rNM&""", "
			strPayList = strPayList & "	""quantity"":"""&rQTY&""", "
			strPayList = strPayList & "	""price"":"""&rPRC&""" "
			strPayList = strPayList & " } "

			If IsNumeric(rQTY) Then rTotQty = rTotQty + rQTY 
			If IsNumeric(rPRC) Then rTotPrc = rTotPrc + rPRC

		Next
	End If
	'무통장 포함일 경우 (무통장일 경우 실구입가는 0 이므로 무통장 구매가로 변경)
	If rTotPrc = 0 Then
		If IsNumeric(amount) Then 
			rTotPrc = amount
		End If
	End If
	' 로거용 기본 데이터 작업 ----------------------------------------------//
	%>

	<% ' // 2018.03.09 추가 Appier ------------------------------ %>
		<script>
		(function(){

		var appierRtorderId = "<%= pay_no %>";
		var appierRtPrice = "<%= pay_no %>";
		var appierRtCurrency = "KRW"; 

		//========= PLEASE DO NOT CHANGE BELOW =========
		if (typeof(window.APPIER_RETARGET)  == 'undefined') {
			(function(w, d, s, m) {
				var f = d.getElementsByTagName('script')[0],
					j = d.createElement('script'),
					ns = 'APPIER_RETARGET';
				w._appierSendQueue = w._appierSendQueue || [];
				w['appierRetargetJson'] = { id: s, site: m};
				j.async = true;
				j.src = '//jscdn.appier.net/aa.js?id='+m;
				f.parentNode.insertBefore(j, f);
				!w[ns] && (w[ns] = {});
				(!w[ns].send) && (w[ns].send = function(j){
					w._appierSendQueue.push(j);
				});
			})(window, document, "8Tca", "megacst.com");
		}
		window.APPIER_RETARGET.send({
			"t":"type_purchase", 
			"totalvalue":appierRtPrice, 
			"currency":appierRtCurrency, 
			"action_id": "cpkcwmMo19Ae8EQ",
			"track_id":"uEoMdUiXuKraEH3",
			"opts":{"uu":appierRtorderId, "total_revenue" : appierRtPrice, "currency" : appierRtCurrency}});
		})();
		</script>
	<% ' 2018.03.09 추가 Appier ------------------------------ // %>

	<% ' // 2018.05.31 추가 DDN ------------------------------ %>
	<script type="text/javascript" charset="UTF-8" src="//t1.daumcdn.net/adfit/static/kp.js"></script>
	<script type="text/javascript">
		  kakaoPixel('8676317250609395314').pageView();
		  kakaoPixel('8676317250609395314').purchase({
			total_quantity: "<%=rTotQty%>",
			total_price: "<%=rTotPrc%>",
			currency: "KRW",
			products: [<%=strPayList%>]
		});
	</script>
	<% ' 2018.05.31 추가 DDN ------------------------------ // %>

	<% ' // 2018.05.31 추가 realclick ------------------------------ %>
	<!-- Tracking Script Start 2.0 -->
	<script type="text/javascript" async="true">
	var dspu = "JH9bWVnYWNzdA";      // === (필수)광고주key (변경하지마세요) ===

	var dspt = "1";         // === (필수)전환구분( 1:구매 ) (변경하지마세요) === 
	var dspo = "<%= pay_no %>";          // === (선택)주문번호( 미입력시 - 중복체크 안함. ) ===
	var dspom = "<%=rTotPrc%>";        // === (선택)구매금액( 구매전환시 사용 ) ===

	var dspu,dspt,dspo,dspom; 
	function loadanalJS_dsp(b,c){var d=document.getElementsByTagName("head")[0],a=document.createElement("sc"+"ript");a.type="text/javasc"+"ript";null!=c&&(a.charset="UTF-8");
	a.src=b;a.async="true";d.appendChild(a)}function loadanal_dsp(b){loadanalJS_dsp(("https:"==document.location.protocol?"https://":"http://")+b,"UTF-8");document.write("<span id=dsp_spn style=display:none;></span>");}
	loadanal_dsp("tk.realclick.co.kr/tk_comm.js?dspu="+dspu+"&dspt="+dspt+"&dspo="+dspo+"&dspom="+dspom);
	</script>
	<!-- Tracking Script End 2.0 -->
	<% ' 2018.05.31 추가 realclick ------------------------------ // %>
<%
	end If
%>


<%
' *****************************************************************************************************************************************************************
' '''''''''' 메가경찰패스 Landing 페이지
' *****************************************************************************************************************************************************************
	If Instr(1, LCase( fncRequestVariables("PATH_INFO") ) , "/allpass3/sale.asp" ) Then
%>
	<% ' // 2018.03.09 추가 Appier ------------------------------ %>
		<script>
		(function(){
		if (typeof(window.APPIER_RETARGET)  == 'undefined') {
			(function(w, d, s, m) {
				var f = d.getElementsByTagName('script')[0],
					j = d.createElement('script'),
					ns = 'APPIER_RETARGET';
				w._appierSendQueue = w._appierSendQueue || [];
				w['appierRetargetJson'] = { id: s, site: m};
				j.async = true;
				j.src = '//jscdn.appier.net/aa.js?id='+m;
				f.parentNode.insertBefore(j, f);
				!w[ns] && (w[ns] = {});
				(!w[ns].send) && (w[ns].send = function(j){
					w._appierSendQueue.push(j);
				});
			 })(window, document, "FHfB", "megacst.com");
		 }

		window.APPIER_RETARGET.send({
			"action_id": "CEJQwB9aWQ1JO8m",
			"track_id": "uEoMdUiXuKraEH3",
			"opts": {unique_key: 'true'}
		});

		})();
		</script>
	<% ' 2018.03.09 추가 Appier ------------------------------ // %>
<%
	End If
%>

<%
' *****************************************************************************************************************************************************************
' '''''''''' 회원가입 signup 
' *****************************************************************************************************************************************************************
	If Instr(1, LCase( fncRequestVariables("PATH_INFO") ) , "/member_v2/agree.asp" ) Then
%>
	<% ' // 2018.03.09 추가 Appier ------------------------------ %>
		<script>
		(function(){
		if (typeof(window.APPIER_RETARGET)  == 'undefined') {
			(function(w, d, s, m) {
				var f = d.getElementsByTagName('script')[0],
					j = d.createElement('script'),
					ns = 'APPIER_RETARGET';
				w._appierSendQueue = w._appierSendQueue || [];
				w['appierRetargetJson'] = { id: s, site: m};
				j.async = true;
				j.src = '//jscdn.appier.net/aa.js?id='+m;
				f.parentNode.insertBefore(j, f);
				!w[ns] && (w[ns] = {});
				(!w[ns].send) && (w[ns].send = function(j){
					w._appierSendQueue.push(j);
				});
			 })(window, document, "FHfB", "megacst.com");
		 }

		window.APPIER_RETARGET.send({
			"t": "type_process",
			"content": "form",
			"action_id": "Pg1MN1HQg8vmTnG",
			"track_id": "uEoMdUiXuKraEH3",
			"opts": {unique_key: 'true'}
		});

		})();
		</script>
	<% ' 2018.03.09 추가 Appier ------------------------------ // %>
<%
	End If
%>

<%
' *****************************************************************************************************************************************************************
' '''''''''' 장바구니 (프리패스는 결제 페이지가 장바구니) 
' *****************************************************************************************************************************************************************
	If Instr(1, LCase( Request.ServerVariables("PATH_INFO") ) , "/mypage_v2/pay/my_pay_n.asp" ) Then
%>
		<script>
		(function(){
		if (typeof(window.APPIER_RETARGET)  == 'undefined') {
			(function(w, d, s, m) {
				var f = d.getElementsByTagName('script')[0],
					j = d.createElement('script'),
					ns = 'APPIER_RETARGET';
				w._appierSendQueue = w._appierSendQueue || [];
				w['appierRetargetJson'] = { id: s, site: m};
				j.async = true;
				j.src = '//jscdn.appier.net/aa.js?id='+m;
				f.parentNode.insertBefore(j, f);
				!w[ns] && (w[ns] = {});
				(!w[ns].send) && (w[ns].send = function(j){
					w._appierSendQueue.push(j);
				});
			 })(window, document, "FHfB", "megacst.com");
		 }

		window.APPIER_RETARGET.send({
			"t": "type_cart",
			"content": "visit",
			"action_id": "JTLAqANTA4ZcP75",
			"track_id": "uEoMdUiXuKraEH3",
			"opts": {unique_key: 'true'}
		});

		})();
		</script>
<%
	End If
%>

<% 
' *****************************************************************************************************************************************************************
' 공통 스크립트 
' *****************************************************************************************************************************************************************
%>

	<!-- 이엠넷 adinsight 공통스크립트 start -->
	<script type="text/javascript">
		var TRS_AIDX = 7440;
		var TRS_PROTOCOL = document.location.protocol;
		document.writeln();
		var TRS_URL = TRS_PROTOCOL + '//' + ((TRS_PROTOCOL == 'https:') ? 'analysis.adinsight.co.kr' : 'adlog.adinsight.co.kr') + '/emnet/trs_esc.js';
		document.writeln("<scr" + "ipt language='javascript' src='" + TRS_URL + "'></scr" + "ipt>");
	</script>
	<!-- adinsight 공통스크립트 end -->




	<!-- Google Code for &#47532;&#47560;&#52992;&#54021; &#53468;&#44536; -->
	<!-- Remarketing tags may not be associated with personally identifiable information or placed on pages related to sensitive categories. For instructions on adding this tag and more information on the above requirements, read the setup guide: google.com/ads/remarketingsetup -->
	<script type="text/javascript">
	/* <![CDATA[ */
	var google_conversion_id = 995566040;
	var google_conversion_label = "G_uJCID8igQQ2MPc2gM";
	var google_custom_params = window.google_tag_params;
	var google_remarketing_only = true;
	/* ]]> */
	</script>
	<script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
	</script>
	<noscript>
	<div style="display:inline;">
	<img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/995566040/?value=0&amp;label=G_uJCID8igQQ2MPc2gM&amp;guid=ON&amp;script=0"/>
	</div>
	</noscript>


	<!-- 드림서치 Withpang Tracker v3.0 [공용] start -->
	  <script src="http://cdn.megadata.co.kr/js/enliple_min2.js"></script>
	  <script type="text/javascript">
	  <!--
	   var rf = new EN();
	   rf.setData("sc", encodeURIComponent(""));
	   rf.sendRf();
	  //-->
	  </script>
	<!-- Withpang Tracker v3.0 [공용] end -->

	<!-- 공통 적용 스크립트 , 모든 페이지에 노출되도록 설치. 단 전환페이지 설정값보다 항상 하단에 위치해야함 --> 
	<script type="text/javascript" src="//wcs.naver.net/wcslog.js"> </script> 
	<script type="text/javascript"> 
	if (!wcs_add) var wcs_add={};
	wcs_add["wa"] = "s_85232fa3784";
	if (!_nasa) var _nasa={};
	wcs.inflow("megacst.com");
	wcs_do(_nasa);
	</script>

	<script>
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

        ga('create', 'UA-124063414-1', 'auto');
        ga('require', 'linkid', 'linkid.js');  
        ga('require', 'displayfeatures');
        ga('send', 'pageview');
	</script>


	<!-- WIDERPLANET  SCRIPT START 2017.9.11 -->
	<div id="wp_tg_cts" style="display:none;"></div>
	<script type="text/javascript">
	var wptg_tagscript_vars = wptg_tagscript_vars || [];
	wptg_tagscript_vars.push(
	(function() {
	return {
	wp_hcuid:"",   /*Cross device targeting을 원하는 광고주는 로그인한 사용자의 Unique ID (ex. 로그인 ID, 고객넘버 등)를 암호화하여 대입.
	*주의: 로그인 하지 않은 사용자는 어떠한 값도 대입하지 않습니다.*/
	ti:"20470", /*광고주 코드*/
	ty:"Home", /*트래킹태그 타입*/
	device:"web" /*디바이스 종류 (web 또는 mobile)*/

	};
	}));
	</script>
	<script type="text/javascript" async src="//cdn-aitg.widerplanet.com/js/wp_astg_4.0.js"></script>
	<!-- // WIDERPLANET  SCRIPT END 2017.9.11 -->


	<!-- 다음 광고 -->
	<script type="text/javascript">
		var roosevelt_params = {
			retargeting_id:'lgmToYdyocg_TJ9L8XpGLQ00',
			tag_label:'Gj8f321gSkGsErQIgQqHAw'
		};
	</script>
	<script type="text/javascript" src="//adimg.daumcdn.net/rt/roosevelt.js" async></script>


	<% ' // 2018.03.09 추가 Appier ------------------------------ %>
	<script>
	if (typeof(window.APPIER_RETARGET)  == 'undefined') {
		(function(w, d, s, m) {
			var f = d.getElementsByTagName('script')[0],
				j = d.createElement('script'),
				ns = 'APPIER_RETARGET';
			w._appierSendQueue = w._appierSendQueue || [];
			w['appierRetargetJson'] = { id: s, site: m};
			j.async = true;
			j.src = '//jscdn.appier.net/aa.js?id='+m;
			f.parentNode.insertBefore(j, f);
			!w[ns] && (w[ns] = {});
			(!w[ns].send) && (w[ns].send = function(j){
				w._appierSendQueue.push(j);
			});
		})(window, document, "FHfB", "megacst.com");
	}
	window.APPIER_RETARGET.send({"t":"pv_track","action_id": "x2N4Gf5WecdIEKV","track_id":"uEoMdUiXuKraEH3","isCountReload": true,"counter": 0});
	window.APPIER_RETARGET.send({"t":"pv_track","action_id": "na9LUrkfKahYmHA","track_id":"uEoMdUiXuKraEH3","isCountReload": false,"counter": 1});
	</script>
	<% ' 2018.03.09 추가 Appier ------------------------------ // %>


	<% ' // 2018.05.31 추가 DDN ------------------------------ %>
	<script type="text/javascript" charset="UTF-8" src="//t1.daumcdn.net/adfit/static/kp.js"></script>
	<script type="text/javascript">
		  kakaoPixel('8676317250609395314').pageView();
	</script>
	<% ' 2018.05.31 추가 DDN ------------------------------ // %>

	<% ' // 2018.05.31 추가 realclick ------------------------------ %>
	<!-- Tracking Script Start 2.0 -->
	<script type="text/javascript" async="true">
	var dspu = "JH9bWVnYWNzdA";      // === (필수)광고주key (변경하지마세요) ===
	var dspu,dspt,dspo,dspom;
	function loadanalJS_dsp(b,c){var d=document.getElementsByTagName("head")[0],a=document.createElement("sc"+"ript");a.type="text/javasc"+"ript";null!=c&&(a.charset="UTF-8");
	a.src=b;a.async="true";d.appendChild(a)}function loadanal_dsp(b){loadanalJS_dsp(("https:"==document.location.protocol?"https://":"http://")+b,"UTF-8");document.write("<span id=dsp_spn style=display:none;></span>");}
	loadanal_dsp("tk.realclick.co.kr/tk_comm.js?dspu="+dspu+"&dspt="+dspt+"&dspo="+dspo+"&dspom="+dspom);
	</script>
	<!-- Tracking Script End 2.0 -->
	<% ' 2018.05.31 추가 realclick ------------------------------ // %>

</div>