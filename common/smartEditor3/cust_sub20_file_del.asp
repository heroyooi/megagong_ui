<%
'=======================================================================
'업 무 명 	: 메가CST-고객센터
'모듈기능 	: 고객센터 - 1:1친절상담 글삭제 sql
'파 일 명 	: /cust/cust_sub20_write_exe.asp
'작성일자 	: 2013/01/14
'작 성 자 	: 이영태
'-----------------------------------------------------------------------
'변경일자   변경자  변동내역
'=======================================================================
'
'=======================================================================
'Response.Expires = -1
%>

<% '공통 인클루드 페이지 시작 %>
<!-- #include virtual = "/common/inc/RSexec.asp" -->
<!-- #include virtual = "/common/inc/VarDef.asp"-->
<!-- #include virtual = "/common/inc/FunDef.asp"-->
<% '공통 인클루드 페이지 종료 %>


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
    alert("첨부파일이 삭제 되었습니다. ");
    window.location.href = "write.asp?cook_id=<%=cook_id%>&username=<%=username%>&idx=<%=idx%>&menu_gubun=<%=menu_gubun%> "; 
</script>