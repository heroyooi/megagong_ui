<div style="display:none;" > 

<%
' 필요 변수
cook_id_enc = ""
If COOK_ID <> "" Then 
	cook_id_enc = Encrypt(COOK_ID)
End If 

device_type = "mobile"
If fncChkMobile = "N" Then 
	device_type = "web"
End If 
%>

<%'## 공통스크립트가 전환스크립트 상단에 있어야하는경우 공통스크립트 상단에 %>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-124063414-4"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'UA-124063414-4');
</script>

<!-- Global site tag (gtag.js) - Google Ads: 713077261 -->
<script async src="https://www.googletagmanager.com/gtag/js?id=AW-713077261"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'AW-713077261');
</script>

<!-- Global site tag (gtag.js) - Google Ads: 791183324 -->
<script async src="https://www.googletagmanager.com/gtag/js?id=AW-791183324"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'AW-791183324');
</script>

<!-- Facebook Pixel Code -->
<script>
 !function(f,b,e,v,n,t,s)
 {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
 n.callMethod.apply(n,arguments):n.queue.push(arguments)};
 if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
 n.queue=[];t=b.createElement(e);t.async=!0;
 t.src=v;s=b.getElementsByTagName(e)[0];
 s.parentNode.insertBefore(t,s)}(window, document,'script',
 'https://connect.facebook.net/en_US/fbevents.js');
 fbq('init', '775071053423900');
 fbq('track', 'PageView');
</script>
<noscript><img height='1' width='1' style='display:none' src='https://www.facebook.com/tr?id=775071053423900&ev=PageView&noscript=1' /></noscript>
<!-- End Facebook Pixel Code -->


<%'## 전환스크립트를 상단에, 공통스크립트를 하단에   %>

<%
' *****************************************************************************************************************************************************************
'''''메인 페이지
' *****************************************************************************************************************************************************************
if instr(1, lcase( fncRequestVariables("PATH_INFO") ) , "/megagong.asp" ) then
%>
<!-- Enliple Insite naver Quick  start -->
<script type="text/javascript">(function(m,b,r,i,s){m.mbris=m.mbris||function(){(m.mbris.q=m.mbris.q||[]).push(arguments)};i=b.createElement(r);i.async=!0;i.defer=!0;i.src="https://cdn.megadata.co.kr/dist/prod/enp_mbris.min.js";0<b.querySelectorAll("script[src*=enp_mbris]").length&&m.ENP_MBRIS_INVOKE?m.ENP_MBRIS_INVOKE():(s=b.getElementsByTagName(r)[0],s.parentNode.insertBefore(i,s))})(window,document,"script");mbris("202012336140253652_megacst4ad1_6_01,202012336140253654_megacst4ad1_6_02");
</script>
<!-- Enliple Insite naver Quick end -->
<% 
end if 
%>

<%
' *****************************************************************************************************************************************************************
'''''회원 가입 완료
' *****************************************************************************************************************************************************************
if instr(1, lcase( fncRequestVariables("PATH_INFO") ) , "/member/join_end.asp" ) or instr(1, lcase( fncRequestVariables("PATH_INFO") ) , "/member/sns/join_end_kakao.asp" ) or instr(1, lcase( fncRequestVariables("PATH_INFO") ) , "/member/sns/join_end_naver.asp" ) or instr(1, lcase( fncRequestVariables("PATH_INFO") ) , "/member/sns/join_end_apple.asp" ) then
%>

<!-- Event snippet for 가입 conversion page -->
<script>
  gtag('event', 'conversion', {'send_to': 'AW-713077261/vax0CLPBhYoDEI3kgtQC'});
</script>

<!-- Event snippet for 가입 conversion page -->
<script>
  gtag('event', 'conversion', {'send_to': 'AW-791183324/CCuiCKnShYoDENz_ofkC'});
</script>

<script>fbq('track', 'CompleteRegistration');</script>



<%
	prev_google="Y"
end if
%>

<%
' *****************************************************************************************************************************************************************
'''''''''''결재 완료 페이지  
' *****************************************************************************************************************************************************************
if lcase(fncRequestVariables("PATH_INFO"))="/mypage/pay/my_pay_done.asp" then  
	LGD_OID = fncrequest("LGD_OID")      
	  

		' // 로거용 기본 데이터 작업 ----------------------------------------------
		strSql = " EXEC Msp_Get_Pay_List '"&cook_id&"', '"&pay_no&"'  "
		Set rs = DBExec(strSql, "study")
		gr_list = Null
		If Not rs.EOF Then
			gr_list = rs.GetRows()
		End If
		Call DBClose(rs)

		'총수량 : 총가격
		rTotQty = 0 : rTotPrc = 0 : rShipping = ""
		strKakaoItems = ""
		strFacebookItems = ""
		strEnpMobonItems = ""
		strGa = ""
		If IsArray(gr_list) Then
			strGaPurchase = "["
			t = UBound(gr_list,2)
			For i=0 To t
				If i > 0 Then 
					strWiderItems = strWiderItems & ","
					strKakaoItems = strKakaoItems & ","
					strCriteoItems = strCriteoItems & ","
					strFacebookItems = strFacebookItems & ","
					strEnpMobonItems = strEnpMobonItems & ","
				End If 

				rCD = Trim(gr_list(0, i))
				rNM = Replace(Trim(gr_list(1, i)),"""","")
				rQTY = Trim(gr_list(2, i))
				rPRC = Trim(gr_list(3, i))
				rTYP = Trim(gr_list(4, i))

				strWiderItems = strWiderItems & " { "
				strWiderItems = strWiderItems & " i:"""&rCD&""", t:"""&rNM&""", p:"""&rPRC&""", q:"""&rQTY&""" "	'i:상품 식별번호 (Feed로 제공되는 식별번호와 일치 ) t:상품명  p:단가  q:수량
				strWiderItems = strWiderItems & " } "

				strKakaoItems = strKakaoItems & " { "
				strKakaoItems = strKakaoItems & " name:"""&rNM&""", quantity:"""&rQTY&""", price:"""&rPRC&""" "	'{ name: "snack1", quantity: "1", price: "200"}
				strKakaoItems = strKakaoItems & " } "

				strCriteoItems = strCriteoItems & " { "
				strCriteoItems = strCriteoItems & " id:"""&rCD&""", price:"""&rPRC&""", quantity:"""&rQTY&""" "
				strCriteoItems = strCriteoItems & " } "

				strFacebookItems = strFacebookItems & " { "
				strFacebookItems = strFacebookItems & " id:"""&rCD&""", item_price:"""&rPRC&""", quantity:"""&rQTY&""" "
				strFacebookItems = strFacebookItems & " } "

				strEnpMobonItems = strEnpMobonItems & " { "
				strEnpMobonItems = strEnpMobonItems & " productCode:"""&rCD&""",productName : """&rNM&""", price:"""&rPRC&""",dcPrice:"""&rPRC&""", qty:"""&rQTY&""" "	'{ productCode: "제품 코드", productName: "제품명", price: "제품가격",dcPrice :"제품할인가격",qty:"제품수량"}
				strEnpMobonItems = strEnpMobonItems & " } "	

				tmpGaCate = "소방인강"
				If rTYP = "B" Then
					tmpGaCate = "소방인강교재"
					If rCD = "1" Then 
						tmpGaCate = "소방교재배송비"
						rShipping = rPRC
					End If 
				End If 
				strGa = strGa & " ga('ecommerce:addItem', {'id': '"&pay_no&"','name': '"&rNM&"','sku': '"&rCD&"','category': '"&tmpGaCate&"','price': '"&rPRC&"','quantity': '1'}); "
				strGaPurchase = strGaPurchase & " { 'id':'"&pay_no&"','name':'"&rNM&"','category': '"&tmpGaCate&"','price': '"&rPRC&"','quantity': '"&rQTY&"' },"

				If IsNumeric(rQTY) Then rTotQty = rTotQty + rQTY 
				If IsNumeric(rPRC) Then rTotPrc = rTotPrc + rPRC
			Next
			If strGaPurchase <> "" Then 
				strGaPurchase = Left(strGaPurchase,Len(strGaPurchase)-1)
			End If 
			strGaPurchase = strGaPurchase & "]"
		End If
		tmpPayNo = pay_no
		'무통장 포함일 경우 (무통장일 경우 실구입가는 0 이므로 무통장 구매가로 변경)
		If rTotPrc = 0 Then
			If IsNumeric(amount) Then 
				rTotPrc = Replace(amount,",","")				
			End If

			' 무통장용 임시결제번호 생성 , b+날짜+무통장결제순서(6자리)_예시 b181101000001 -> 11/1 무통장 결제 1번 
			wait_no = ""
			strSql = ""
			strsql = strsql & " SELECT TOP 1 BW_WAIT_NO "
			strsql = strsql & " FROM MS_BANK_WAIT WITH(NOLOCK) "
			strsql = strsql & " WHERE BW_MEM_ID = '"&cook_id&"' "
			strsql = strsql & " ORDER BY BW_WAIT_NO DESC "
			set objrs = DBExec(strsql, "study")
			if not (objrs.Eof and objrs.bof) then 
				wait_no = objrs(0)
			end if 
			call dbclose(objrs)

			tmpPayNo = "b"&right(Replace(date,"-",""),6)&right("000000"&wait_no,6)
		End If
		' 로거용 기본 데이터 작업 ----------------------------------------------//
		%>
<!-- 카카오 모먼트 Start -->
<script type="text/javascript">
      kakaoPixel('4657671119856420700').purchase({
        total_price: "<%=rTotPrc%>",  // 주문 총 가격(optional)
        currency: "KRW"     // 주문 가격의 화폐 단위(optional, 기본 값은 KRW)
        <%if strKakaoItems <> "" Then%>
        ,total_quantity: "<%=rTotQty%>" // 주문 내 상품 개수(optional)
        ,products: [<%=strKakaoItems%>]          // 주문 내 상품 정보(optional)
        <%end if%>
    });
</script>
<!-- 카카오 모먼트 End -->

<!-- Event snippet for 구매 conversion page -->
<script>
  gtag('event', 'conversion', {
      'send_to': 'AW-713077261/_Fa5CPPwtIoDEI3kgtQC',
      'value': '<%=rTotPrc%>',
      'currency': 'KRW',
      'transaction_id': '<%=tmpPayNo%>'
  });
</script>

<!-- Event snippet for 구매완료 conversion page -->
<script>
  gtag('event', 'conversion', {
      'send_to': 'AW-791183324/JLO5CPCwlIgBENz_ofkC',
      'value': '<%=rTotPrc%>',
      'currency': 'KRW',
      'transaction_id': '<%=tmpPayNo%>'
  });
</script>

<script>
    fbq('track', 'Purchase', {
     value: '<%=rTotPrc%>',
  	currency: 'KRW',
  	content_type : "product",
  	contents : [<%=strFacebookItems%>]
    });
</script>

<script>
gtag('event', 'purchase', {
	'transaction_id':'<%=tmpPayNo%>',
	'affiliation':'megagong',
	'value' : '<%=rTotPrc%>',
	'currency': 'KRW',
	'shipping':'<%=rShipping%>'
	<% If strGaPurchase <> "" Then %>
	, 'items':<%=strGaPurchase%>
	<% End If %>	
});
</script>

<!-- Enliple Tracker Start -->
<script type="text/javascript">
var ENP_VAR = { conversion: { product: [<%=strEnpMobonItems%>] } };
	ENP_VAR.conversion.ordCode= '<%=pay_no%>';
	ENP_VAR.conversion.totalPrice = '<%=rTotPrc%>';
	ENP_VAR.conversion.totalQty = '<%=rTotQty%>';

	(function(a,g,e,n,t){a.enp=a.enp||function(){(a.enp.q=a.enp.q||[]).push(arguments)};n=g.createElement(e);n.async=!0;n.defer=!0;n.src="https://cdn.megadata.co.kr/dist/prod/enp_tracker_self_hosted.min.js";t=g.getElementsByTagName(e)[0];t.parentNode.insertBefore(n,t)})(window,document,"script");
	enp('create', 'conversion', 'megacst4ad1', { device: 'B' }); // W:웹, M: 모바일, B: 반응형
	enp('send', 'conversion', 'megacst4ad1');
</script>
<!-- Enliple Tracker End -->

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
<%
end If
%>


<%
' *****************************************************************************************************************************************************************
' '''''''''' 회원가입 signup 
' *****************************************************************************************************************************************************************
If Instr(1, LCase( fncRequestVariables("PATH_INFO") ) , "/member/agree.asp" ) Then
%>
<%
End If
%>

<%
' *****************************************************************************************************************************************************************
' '''''''''' 장바구니 (프리패스는 결제 페이지가 장바구니) 
' *****************************************************************************************************************************************************************
If Instr(1, LCase( Request.ServerVariables("PATH_INFO") ) , "/mypage/pay/my_pay_n.asp" ) Then
%>
	
<%
End If
%>

<%
' *****************************************************************************************************************************************************************
' '''''''''' 로그인
' *****************************************************************************************************************************************************************
If Instr(1, LCase( Request.ServerVariables("PATH_INFO") ) , "/member/login.asp" ) Then
%>

<%
End If
%>

<% 
' *****************************************************************************************************************************************************************
' 공통 스크립트 
' *****************************************************************************************************************************************************************
%>



<!-- Enliple Tracker Start -->
<script type="text/javascript">
(function(a,g,e,n,t){a.enp=a.enp||function(){(a.enp.q=a.enp.q||[]).push(arguments)};n=g.createElement(e);n.async=!0;n.defer=!0;n.src="https://cdn.megadata.co.kr/dist/prod/enp_tracker_self_hosted.min.js";t=g.getElementsByTagName(e)[0];t.parentNode.insertBefore(n,t)})(window,document,"script");
enp('create', 'common', 'megacst4ad1', { device: 'B' }); // W:웹, M: 모바일, B: 반응형
enp('send', 'common', 'megacst4ad1');
</script>
<!-- Enliple Tracker End -->

</div>
