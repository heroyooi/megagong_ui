<%
    Select Case PlayerKbn
        Case "A" :
%>
        <!--#include virtual="/Player/kollus/path/app_path.asp"-->
<%
        Case "F","P","U","W" : '�̺�Ʈ,������,OT,�ܺ�,������
%>
        <!--#include virtual="/Player/kollus/path/free_path.asp"-->
<%
        Case "I","D","C" : '�ε����÷��̾�
%>
        <!--include virtual="/Player/kollus/path/index_path.asp"-->
<%
        Case "H" : '�ؼ������÷��̾�
%>
        <!--include virtual="/Player/kollus/path/ipsi_path.asp"-->
<%
        Case "L" : '���ᰭ�� �÷��̾�
%>
        <!--include virtual="/Player/kollus/path/freelec_path.asp"-->
<%
        Case "R" : '������÷��̾�
%>
        <!--include virtual="/Player/kollus/path/audio_path.asp"-->
<%
        Case "M", "T", "S" : '������
%>
        <!--include virtual="/Player/kollus/admin/admin_path.asp"-->
<%
    End Select
%>