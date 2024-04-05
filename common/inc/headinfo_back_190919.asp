<!DOCTYPE HTML>
<html lang="ko">
<head>
    <meta charset="euc-kr">
    <link rel="shortcut icon" type="image/x-icon" href="<%=img_main %>/m/common/logo/megagong.ico" >
	<!--<link rel="apple-touch-icon" sizes="57x57" href="<%=img_main %>/common/megagong_57.png" />
	<link rel="apple-touch-icon" sizes="72x72" href="<%=img_main %>/common/megagong_72.png" />
	<link rel="apple-touch-icon" sizes="114x114" href="<%=img_main %>/common/megagong_114.png" />-->

    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <% if instr(request.servervariables("path_info"),"/member/")>0 then %>
        <meta name="viewport" content="width=device-width">
    <% else %>
        <% if set_view = "R" Then %>
            <!-- 반응형 뷰포트-->
            <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
        <% Else %>
            <meta name="viewport" content="width=1400">
        <% End if %>
    <% end if %>
	<meta name="author" content="" />
	<meta name="description" content="<%=h_des %>">
	<meta name="keywords" content="<%=h_key %>">
	<title><%=h_tit %></title>
    <meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
    <meta http-equiv="page-exit"  content="blendtrans(duration=0.1)">
    <meta http-equiv="page-enter" content="blendtrans(duration=0.2)">

    <meta name="naver-site-verification" content="0d4a4387cd11adbc61878b86868446ad0a56e266"/>
    <meta name="google-site-verification" content="T1GiSqVOO5N28LUVQwECScXn0cNZ4lAzH9dFBOucJ7Y" />

    <link type="text/css" rel="stylesheet" href="/common/css/megagong_common.css?now=<%=now%>" />
    <!-- <link rel="stylesheet" type="text/css" href="/common/js/jQuery/plug-in/swiper.min.css?ndt=2018-06-28" /> -->
    <link rel="stylesheet" type="text/css" href="/common/js/jQuery/plug-in/slick.css" />

    <% if instr(1, NowUrl, "/mypage/") > 0 Then %><link rel="stylesheet" type="text/css" href="/common/css/mypage.css?now=<%=now%>"><% End if %>
    <% if instr(1, NowUrl, "/mypage/") > 0 Then %><link rel="stylesheet" type="text/css" href="/common/css/jquery-ui.css?now=<%=now%>"><% End if %>
    <% if instr(1, NowUrl, "/teacher/") > 0 Then %><link type="text/css" rel="stylesheet" href="/common/css/tech.css?now=<%=now%>" /><% End if %>
    <% if instr(1, NowUrl, "/vod/") > 0 Then %><link type="text/css" rel="stylesheet" href="/common/css/lecture.css?now=<%=now%>" /><% End if %>
    <% if instr(1, NowUrl, "/book/") > 0 Then %><link type="text/css" rel="stylesheet" href="/common/css/ebook.css?now=<%=now%>" /><% End if %>
    <% if instr(1, NowUrl, "/full/") > 0 Then %><link rel="stylesheet" type="text/css" href="/common/css/fullsvc.css?now=<%=now%>"><% End if %>

    <!-- 신규통합 CSS-->
    <% if instr(1, NowUrl, "/megagong.asp") > 0 Then %><link type="text/css" rel="stylesheet" href="/common/css/megagong_main.css?now=<%=now%>"><% End if %>
    <link type="text/css" rel="stylesheet" href="/common/css/megagong_respons.css?now=<%=now%>" />

    <% if hcode = "sobang" then %>
    <span itemscope="" itemtype="http://schema.org/Organization">
        <link itemprop="url" href="<%=sobang_main%>">
        <a itemprop="sameAs" href="https://www.instagram.com/megagong"></a>
        <a itemprop="sameAs" href="https://www.facebook.com/megagong"></a>
        <a itemprop="sameAs" href="https://blog.naver.com/gongcamp"></a>
        <a itemprop="sameAs" href="https://www.youtube.com/channel/UCkY2Tq32Mpy8Qq-QljPFLag"></a>
        <a itemprop="sameAs" href="https://tv.naver.com/gongcampus"></a>
    </span>
    <% end if %>


    <!--#include virtual="/common/logger/logger_head.asp" -->
</head>

<script type="text/javascript" src="/common/js/common_k.js?now=<%=now%>"></script>

<!--[if lt IE 9]>
<script type="text/javascript" src="/common/js/jQuery/jquery-1.12.1.min.js"></script>
<![endif]-->
<!--[if gte IE 9]><!-->
<script type="text/javascript" src="/common/js/jQuery/jquery-3.3.1.min.js"></script>
<!--<![endif]-->
<script src="/common/js/jQuery/jquery-migrate-1.4.1.min.js"></script>

<!-- <script type="text/javascript" src="/common/js/jQuery/plug-in/swiper.min.js"></script> -->
<script type="text/javascript" src="/common/js/jQuery/plug-in/slick.js"></script>
<script type="text/javascript" src="/common/js/jQuery/plug-in/respond.min.js"></script>
<script type="text/javascript" src="/common/js/jQuery/plug-in/jquery.rwdImageMaps.min.js"></script>
<% if instr(1, NowUrl, "/full/") > 0 Then %><script type="text/javascript" src="/common/js/jQuery/plug-in/sine-waves.min.js"></script><% End if %>
<script type="text/javascript" src="/common/js/common.js?now=<%=now%>"></script>
