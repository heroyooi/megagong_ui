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
<!-- Global site tag (gtag.js) - Google Ads: 474311437 -->
<script async src="https://www.googletagmanager.com/gtag/js?id=AW-474311437"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'AW-474311437');
</script>


<%'## ��ȯ��ũ��Ʈ�� ��ܿ�, ���뽺ũ��Ʈ�� �ϴܿ�   %>
<%
' *****************************************************************************************************************************************************************
'''''ȸ�� ���� �Ϸ�
' *****************************************************************************************************************************************************************
if instr(1, lcase( fncRequestVariables("PATH_INFO") ) , "/member/join_end.asp" ) or instr(1, lcase( fncRequestVariables("PATH_INFO") ) , "/member/sns/join_end_kakao.asp" ) or instr(1, lcase( fncRequestVariables("PATH_INFO") ) , "/member/sns/join_end_naver.asp" ) or instr(1, lcase( fncRequestVariables("PATH_INFO") ) , "/member/sns/join_end_apple.asp" ) then
%>        
<!-- Event snippet for ���� conversion page -->
<script>
  gtag('event', 'conversion', {'send_to': 'AW-474311437/DA4NCLP-tIoDEI3WleIB'});
</script>

<%
	prev_google="Y"
end if
%>


<%
' *****************************************************************************************************************************************************************
' '''''''''' ��ٱ��� (�����н��� ���� �������� ��ٱ���) 
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

</div>

