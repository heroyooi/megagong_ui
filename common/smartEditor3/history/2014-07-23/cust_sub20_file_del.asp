<%
'=======================================================================
'�� �� �� 	: �ް�CST-������
'����� 	: ������ - 1:1ģ����� �ۻ��� sql
'�� �� �� 	: /cust/cust_sub20_write_exe.asp
'�ۼ����� 	: 2013/01/14
'�� �� �� 	: �̿���
'-----------------------------------------------------------------------
'��������   ������  ��������
'=======================================================================
'
'=======================================================================
'Response.Expires = -1
%>

<% '���� ��Ŭ��� ������ ���� %>
<!-- #include virtual = "/common/inc/RSexec.asp" -->
<!-- #include virtual = "/common/inc/VarDef.asp"-->
<!-- #include virtual = "/common/inc/FunDef.asp"-->
<% '���� ��Ŭ��� ������ ���� %>


<%

    cook_id= request("cook_id")
    username= request("username")

    idx = request("idx")
    menu_gubun = request("menu_gubun")    

    bof_idx = request("bof_idx")

    ssql = " delete ms_brd_on_fi where bof_idx='"& bof_idx &"' and bos_idx='"& idx &"' "

    call dbexec(ssql,"study") 
%>

<script>
    alert("÷�������� ���� �Ǿ����ϴ�. ");
    window.location.href = "write.asp?cook_id=<%=cook_id%>&username=<%=username%>&idx=<%=idx%>&menu_gubun=<%=menu_gubun%> "; 
</script>