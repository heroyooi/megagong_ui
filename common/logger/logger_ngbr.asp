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
<!-- Global site tag (gtag.js) - Google Ads: 474311437 -->
<script async src="https://www.googletagmanager.com/gtag/js?id=AW-474311437"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'AW-474311437');
</script>


<%'## 전환스크립트를 상단에, 공통스크립트를 하단에   %>
<%
' *****************************************************************************************************************************************************************
'''''회원 가입 완료
' *****************************************************************************************************************************************************************
if instr(1, lcase( fncRequestVariables("PATH_INFO") ) , "/member/join_end.asp" ) or instr(1, lcase( fncRequestVariables("PATH_INFO") ) , "/member/sns/join_end_kakao.asp" ) or instr(1, lcase( fncRequestVariables("PATH_INFO") ) , "/member/sns/join_end_naver.asp" ) or instr(1, lcase( fncRequestVariables("PATH_INFO") ) , "/member/sns/join_end_apple.asp" ) then
%>        
<!-- Event snippet for 가입 conversion page -->
<script>
  gtag('event', 'conversion', {'send_to': 'AW-474311437/DA4NCLP-tIoDEI3WleIB'});
</script>

<%
	prev_google="Y"
end if
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

</div>

