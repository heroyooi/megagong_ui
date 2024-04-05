<% ' <head></head> 에 들어갈 로거파일 %>

<%'if inStr(hostnm, "dev") = 0 Then%>
    <% 'logger영역 %>
    <% if hcode = "gong" then %>
	<!-- #include virtual = "/common/logger/logger_gong_head.asp"-->
    <% elseif hcode = "sobang" then %>
    <!-- #include virtual = "/common/logger/logger_sobang_head.asp"-->
    <% elseif hcode = "sobangcampus" then %>
    <!-- #include virtual = "/common/logger/logger_sobangcampus_head.asp"-->
    <% elseif hcode = "ansung" then %>
    <!-- #include virtual = "/common/logger/logger_ansung_head.asp"-->
	<% elseif hcode = "gongssel" then %>
    <!-- #include virtual = "/common/logger/logger_gongssel_head.asp"-->
    <% elseif hcode = "ngbr" then %>
    <!-- #include virtual = "/common/logger/logger_ngbr_head.asp"-->
    <% elseif hcode = "army" then %>
    <!-- #include virtual = "/common/logger/logger_army_head.asp"-->
    <% end if %>
    <% 'logger영역 %>
<%'end if%>
