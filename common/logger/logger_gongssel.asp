<div style="display:none;" > 

<%
' �ʿ� ����
cook_id_enc = ""
If COOK_ID <> "" Then 
	cook_id_enc = Encrypt(COOK_ID)
End If 

device_type = "mobile"
If fncChkMobile = "N" Then 
	device_type = "web"
End If 
%>

<%'## ���뽺ũ��Ʈ�� ��ȯ��ũ��Ʈ ��ܿ� �־���ϴ°�� ���뽺ũ��Ʈ ��ܿ� %>
<!-- Global site tag (gtag.js) - Google Analytics -->
<%
'<script async src="https://www.googletagmanager.com/gtag/js?id=UA-124063414-7"></script>
'<script>
'  window.dataLayer = window.dataLayer || [];
'  function gtag(){dataLayer.push(arguments);}
'  gtag('js', new Date());
'
'  gtag('config', 'UA-124063414-7');
'</script>
'<script>
'	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
'	(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
'	m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
'	})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
'
'	ga('create', ' UA-124063414-7', 'auto');
'	ga('require', 'linkid', 'linkid.js');  
'	ga('require', 'displayfeatures');
'	ga('send', 'pageview');
'</script>
%>
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
 fbq('init', '321208182048738');
 fbq('track', 'PageView');
</script>
<noscript><img height='1' width='1' style='display:none' src='https://www.facebook.com/tr?id=321208182048738&ev=PageView&noscript=1' /></noscript>
<!-- End Facebook Pixel Code -->

<%'## ��ȯ��ũ��Ʈ�� ��ܿ�, ���뽺ũ��Ʈ�� �ϴܿ�   %>

<%
' *****************************************************************************************************************************************************************
'''''ȸ�� ���� �Ϸ�
' *****************************************************************************************************************************************************************
if instr(1, lcase( fncRequestVariables("PATH_INFO") ) , "/member/join_end.asp" ) or instr(1, lcase( fncRequestVariables("PATH_INFO") ) , "/member/sns/join_end_kakao.asp" ) or instr(1, lcase( fncRequestVariables("PATH_INFO") ) , "/member/sns/join_end_naver.asp" ) or instr(1, lcase( fncRequestVariables("PATH_INFO") ) , "/member/sns/join_end_apple.asp" ) then
%>        
<script>fbq('track', 'CompleteRegistration');</script>

<!-- Event snippet for ���� conversion page -->
<script>
  gtag('event', 'conversion', {'send_to': 'AW-474311437/DA4NCLP-tIoDEI3WleIB'});
</script>

<%
end if
%>


<%
' *****************************************************************************************************************************************************************
'''''''''''���� �Ϸ� ������  (�п�)
' *****************************************************************************************************************************************************************
if instr(1, lcase( fncRequestVariables("PATH_INFO") ) , "/my_pay_done_off.asp" ) Then
	' // �ΰſ� �⺻ ������ �۾� ----------------------------------------------
	strSql = " EXEC Msp_Get_Pay_List '"&cook_id&"', '"&pay_no&"'  "
	Set rs = DBExec(strSql, "study")
	gr_list = Null
	If Not rs.EOF Then
		gr_list = rs.GetRows()
	End If
	Call DBClose(rs)

	'�Ѽ��� : �Ѱ���
	rTotQty = 0 : rTotPrc = 0 : rShipping = ""
	strFacebookItems = ""
	strKakaoItems = ""
	strGa = ""
	If IsArray(gr_list) Then
		strGaPurchase = "["
		t = UBound(gr_list,2)
		For i=0 To t
			If i > 0 Then 
				strFacebookItems = strFacebookItems & ","
				strKakaoItems = strKakaoItems & ","
			End If 

			rCD = Trim(gr_list(0, i))
			rNM = Replace(Trim(gr_list(1, i)),"""","")
			rQTY = Trim(gr_list(2, i))
			rPRC = Trim(gr_list(3, i))
			rTYP = Trim(gr_list(4, i))

			strFacebookItems = strFacebookItems & " { "
            strFacebookItems = strFacebookItems & " id:"""&rCD&""", quantity:"""&rQTY&""", item_price:"""&rPRC&""" "	'{ id: "��ǰ��ȣ (������)", quantity: "��ǰ���� (������)", price: "��ǰ 1���� ����(������)"}
            strFacebookItems = strFacebookItems & " } "

			strKakaoItems = strKakaoItems & " { "
            strKakaoItems = strKakaoItems & " name:"""&rNM&""", quantity:"""&rQTY&""", price:"""&rPRC&""" "	'{ name: "snack1", quantity: "1", price: "200"}
            strKakaoItems = strKakaoItems & " } "

			tmpGaCate = "�ҹ��п�����"
			If rTYP = "B" Then
				tmpGaCate = "�ҹ��п�����"
				If rCD = "1" Then 
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
	
	'������ ������ ��� (�������� ��� �Ǳ��԰��� 0 �̹Ƿ� ������ ���Ű��� ����)
	tmpPayNo = pay_no
    If tmpPayNo = "" or isnumeric(tmpPayNo) = false Then   ' �������� pay_no ����
        ' ������� �ӽð�����ȣ ���� , b+��¥+�������������(6�ڸ�)_���� b181101000001 -> 11/1 ������ ���� 1�� 
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

	If rTotPrc = 0 Then
		If IsNumeric(amount) Then 
			rTotPrc = Replace(amount,",","")
		End If
	End If
	' �ΰſ� �⺻ ������ �۾� ----------------------------------------------//
	%>
<script>
    fbq('track', 'Purchase', {
    value: '<%=rTotPrc%>',
  	currency: 'KRW',
  	content_type : "product",
  	contents : [<%=strFacebookItems%>]
    });
</script>

<!-- Event snippet for ���� conversion page -->
<script>
  gtag('event', 'conversion', {
      'send_to': 'AW-474311437/fNPwCJXHhYoDEI3WleIB',
      'value': '<%=rTotPrc%>',
      'currency': 'KRW',
      'transaction_id': '<%=pay_no%>'
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

    <%
end If
%>


<%
' *****************************************************************************************************************************************************************
' '''''''''' ȸ������ ����������
' *****************************************************************************************************************************************************************
If Instr(1, LCase( fncRequestVariables("PATH_INFO") ) , "/member/agree.asp" ) Then
%>

<%
End If
%>

<%
' *****************************************************************************************************************************************************************
' '''''''''' ����������
' *****************************************************************************************************************************************************************
If Instr(1, LCase( Request.ServerVariables("PATH_INFO") ) , "/mypage/pay/my_pay_n.asp" ) Then
%>
	
<%
End If
%>

<%
' *****************************************************************************************************************************************************************
' '''''''''' �α���
' *****************************************************************************************************************************************************************
If Instr(1, LCase( Request.ServerVariables("PATH_INFO") ) , "/member/login.asp" ) Then
%>

<%
End If
%>

<% 
' *****************************************************************************************************************************************************************
' ���� ��ũ��Ʈ 
' *****************************************************************************************************************************************************************
%>
<!-- Global site tag (gtag.js) - Google Ads: 474311437 -->
<script async src="https://www.googletagmanager.com/gtag/js?id=AW-474311437"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'AW-474311437');
</script>


</div>
