<%
Response.AddHeader "Cache-Control", "no-cache"
Response.AddHeader "Expires", "0"
Response.AddHeader "Pragma", "no-cache"
Response.ContentType = "text/html; charset=euc-kr"
%>
<% '���� ��Ŭ��� ������ ���� %>
<!-- #include virtual = "/common/inc/FunDef.asp"-->
<% '���� ��Ŭ��� ������ ���� %>
<%
err_code = fncrequest("err_code")
upload_msg = fncrequest("upload_msg")
filename = fncrequest("filename")
savename = fncrequest("savename")
size = fncrequest("size")
mimetype = fncrequest("mimetype")
Response.Write "{""err_code"":"&err_code&", ""upload_msg"":"""&upload_msg&""", ""filename"":"""&filename&""", ""savename"":"""&savename&""", ""size"":"&size&", ""mimetype"":"""&mimetype&"""}"
Response.end
%>