<%
    Select Case PlayerKbn
        Case "A" :
%>
        <!--#include virtual="/Player/kollus/path/app_path.asp"-->
<%
        Case "F","P","U","W" : '이벤트,맛보기,OT,외부,페이지
%>
        <!--#include virtual="/Player/kollus/path/free_path.asp"-->
<%
        Case "I","D","C" : '인덱스플레이어
%>
        <!--include virtual="/Player/kollus/path/index_path.asp"-->
<%
        Case "H" : '해설강의플레이어
%>
        <!--include virtual="/Player/kollus/path/ipsi_path.asp"-->
<%
        Case "L" : '무료강의 플레이어
%>
        <!--include virtual="/Player/kollus/path/freelec_path.asp"-->
<%
        Case "R" : '오디오플레이어
%>
        <!--include virtual="/Player/kollus/path/audio_path.asp"-->
<%
        Case "M", "T", "S" : '관리자
%>
        <!--include virtual="/Player/kollus/admin/admin_path.asp"-->
<%
    End Select
%>