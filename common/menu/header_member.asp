<%
    if SmartLearingFlg = "Y" Then
%>
<%
    Else '스마트러닝 조건 : N
%>
<div id="header" class="member_header">
    <h1>
        <a href="https://<%=hostnm%>"><img src="<%=h_headlogo%>" alt="logo"></a>
    </h1>
</div>
<%
    End if '스마트러닝 조건 : N
%>