<%
val4css = Year(lo_now_date)&Right("0"&Month(lo_now_date),2)&Right("0"&day(lo_now_date),2)& Right("0"&hour(lo_now_date),2)& Right("0"&minute(lo_now_date),2)
%>


<!DOCTYPE HTML>
<html lang="ko">
<head>
    <meta charset="euc-kr">
    <link rel="shortcut icon" type="image/x-icon" href="<%=img_main %>/m/common/logo/megagong.ico" >
	<!--<link rel="apple-touch-icon" sizes="57x57" href="<%=img_main %>/common/megagong_57.png" />
	<link rel="apple-touch-icon" sizes="72x72" href="<%=img_main %>/common/megagong_72.png" />
	<link rel="apple-touch-icon" sizes="114x114" href="<%=img_main %>/common/megagong_114.png" />-->

    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <% if instr(fncRequestVariables("path_info"),"/member/")>0 then %>
        <meta name="viewport" content="width=device-width">
    <% else %>
        <% if set_view = "R" Then %>
            <!-- ������ ����Ʈ-->
            <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
        <% Else %>
            <meta name="viewport" content="width=1400">
        <% End if %>
    <% end if %>
	<meta name="author" content="" />
	<meta name="description" content="<%=h_des %>">
	<meta name="keywords" content="<%=h_key %>">

    <meta property="og:image" content="<%=h_img %>"/>
    <meta property="og:url" content="<%=hostnm %>"/>
    <meta property="og:description" content="<%=h_des %>"/>
    <meta property="og:title" content="<%=h_tit %>"/>

	<title><%=h_tit %></title>
    <meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
    <meta http-equiv="page-exit"  content="blendtrans(duration=0.1)">
    <meta http-equiv="page-enter" content="blendtrans(duration=0.2)">

    <meta name="naver-site-verification" content="0d4a4387cd11adbc61878b86868446ad0a56e266"/>
    <%
        google_verification = "Av2Othai1hzIGdjZV9PQL9JfyBDDKrtP20t-I6eLkzU"
        Select Case hcode
            Case "gong" : google_verification = "Av2Othai1hzIGdjZV9PQL9JfyBDDKrtP20t-I6eLkzU"
            Case "sobang" : google_verification = "3un5gJczE8ATZ9_x7lckKTWq1e_7uOneVspET4owDWs"
            Case "army" : google_verification = "tDFJP3DxYBRdPETZRwcRZcfNP8MnlKZ1Kv1FC5sFCFc"
            Case "gongssel" : google_verification = "yPv-W9_AG_g6_SZpdnIIsY2unETnOBYDkaCRqw4t7XU"
            Case "sobangcampus" : google_verification = "9Dol3mBrzyLNHH8r94iv0J4PxibL0q6UnRCrmqMN8CM"
            Case "ansung" : google_verification = "3BErCeeI445AkNSPnTDGd15_k87CH06HN32alDp38eM"
            Case "ngbr" : google_verification = "SKKpBDAlw_NxZLs_SYVuG3gTxrBL1oQaScD16XBPOpU"
            Case Else : google_verification = "Av2Othai1hzIGdjZV9PQL9JfyBDDKrtP20t-I6eLkzU"
        End Select
    %>
    <meta name="google-site-verification" content="<%=google_verification%>" />
    
    <meta name="facebook-domain-verification" content="8z9bfde8i5pw17liwz3zs46mfuzysy" />
    <meta name="facebook-domain-verification" content="big40uofhhxhketu9uujy8vi2zebza" />
    <% if hcode = "sobang" then %>
    <meta name="facebook-domain-verification" content="we6a45x8fs8m9zw80h9f0b0mbbcexz" />
    <% elseif hcode = "army" then %>
    <meta name="facebook-domain-verification" content="67jr0m3l0xxnyymwbdllapi6cpusjd" />
    <% end if %>


    <% if instr(1, NowUrl, "/recruit/") > 0 Then %>
    <meta name="format-detection" content="telephone=no" />
    <% End if %>
    <link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/font_NotoSans_kr.css">
    

    <link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/megagong_common.css?now=<%=val4css%>" />
    <link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/megagong_component.css?now=<%=val4css%>" />
    <!-- <link rel="stylesheet" type="text/css" href="/common/js/jQuery/plug-in/swiper.min.css?ndt=2018-06-28" /> -->
    <link rel="stylesheet" type="text/css" href="/common/js/jQuery/plug-in/slick.css" />
    <link rel="stylesheet" type="text/css" href="/common/js/jQuery/plug-in/magnific-popup.min.css" />

    <% if hcode = "lab" Then %>
    <link rel="stylesheet" type="text/css" href="/common/js/jQuery/plug-in/swiper.css" />
    <link type="text/css" rel="stylesheet" href="/common/css/megagong_common_lab.css?now=<%=val4css%>" />
    <link type="text/css" rel="stylesheet" href="/common/css/main/megagong_main_lab.css?now=<%=val4css%>" />
    <% end if %>

    <% if instr(1, NowUrl, "/mypage/") > 0 Then %><link rel="stylesheet" type="text/css" href="/common/css/mypage.css?now=<%=val4css%>"><% End if %>

    <% if instr(1, NowUrl, "/mypage/") > 0 Then %><link rel="stylesheet" type="text/css" href="/common/css/jquery-ui.css?now=<%=val4css%>"><% End if %>
    <!-- <% if instr(1, NowUrl, "/teacher/") > 0 Then %><link type="text/css" rel="stylesheet" href="/common/css/tech.css?now=<%=val4css%>" /><% End if %> -->
    <% if instr(1, NowUrl, "/teacher/") > 0 Then %><link type="text/css" rel="stylesheet" href="/common/css/tech.css?now=<%=val4css%>" /><% End if %>
    <% if instr(1, NowUrl, "/vod/") > 0 Then %><link type="text/css" rel="stylesheet" href="/common/css/lecture.css?now=<%=val4css%>" /><% End if %>
    <% if instr(1, NowUrl, "/book/") > 0 Then %><link type="text/css" rel="stylesheet" href="/common/css/ebook.css?now=<%=val4css%>" /><% End if %>
    <% if instr(1, NowUrl, "/full/") > 0 Then %><link rel="stylesheet" type="text/css" href="/common/css/fullsvc.css?now=<%=val4css%>"><% End if %>
    <% if instr(1, NowUrl, "/seatrsv/") > 0 Then %><link rel="stylesheet" type="text/css" href="/common/css/seatrsv.css?now=<%=val4css%>"><% End if %>
    
    <% if hcode = "sobang" then %>
    <span itemscope="" itemtype="https://schema.org/Organization">
        <link itemprop="url" href="<%=sobang_main%>">
        <a itemprop="sameAs" href="https://www.instagram.com/megagong"></a>
        <a itemprop="sameAs" href="https://www.facebook.com/megagong"></a>
        <a itemprop="sameAs" href="https://blog.naver.com/gongcamp"></a>
        <a itemprop="sameAs" href="https://www.youtube.com/channel/UCkY2Tq32Mpy8Qq-QljPFLag"></a>
        <a itemprop="sameAs" href="https://tv.naver.com/gongcampus"></a>
    </span>
    <% Elseif hcode = "gong" Then %>
    <span itemscope="" itemtype="https://schema.org/Organization">
        <link itemprop="url" href="<%=url_main%>">
        <a itemprop="sameAs" href="https://www.instagram.com/megagong"></a>
        <a itemprop="sameAs" href="https://www.facebook.com/megagong"></a>
        <a itemprop="sameAs" href="https://blog.naver.com/gongcamp"></a>
        <a itemprop="sameAs" href="https://www.youtube.com/channel/UCkY2Tq32Mpy8Qq-QljPFLag"></a>
        <a itemprop="sameAs" href="https://tv.naver.com/gongcampus"></a>
    </span>
    <% end if %>

    <!--#include virtual="/common/logger/logger_head.asp" -->
</head>

<script src="https://uicdn.toast.com/tui.code-snippet/latest/tui-code-snippet.js"></script>
<script src="https://cdn.jsdelivr.net/npm/ua-parser-js@0/dist/ua-parser.min.js"></script>
<script src="https://uicdn.toast.com/tui-app-loader/latest/tui-app-loader.js"></script>
<script type="text/javascript" src="/common/js/common_k.js?now=<%=val4css%>"></script>


<!--[if lt IE 9]>
<script type="text/javascript" src="/common/js/jQuery/jquery-1.12.1.min.js"></script>
<![endif]-->
<!--[if gte IE 9]><!-->
<script type="text/javascript" src="/common/js/jQuery/jquery-3.3.1.min.js"></script>
<!--<![endif]-->
<!--<script src="/common/js/jQuery/jquery-migrate-1.4.1.min.js"></script>-->

<!-- <script type="text/javascript" src="/common/js/jQuery/plug-in/swiper.min.js"></script> -->
<script type="text/javascript" src="/common/js/jQuery/plug-in/slick.js"></script>
<script type="text/javascript" src="/common/js/jQuery/plug-in/respond.min.js"></script>
<script type="text/javascript" src="/common/js/jQuery/plug-in/jquery.rwdImageMaps.min.js"></script>
<script type="text/javascript" src="/common/js/jQuery/plug-in/jquery.magnific-popup.min.js"></script>
<% if instr(1, NowUrl, "/full/") > 0 Then %><script type="text/javascript" src="/common/js/jQuery/plug-in/sine-waves.min.js"></script><% End if %>
<script type="text/javascript" src="/common/js/common.js?now=<%=val4css%>"></script>
<% If hcode  = "lab" Then %>
<script type="text/javascript" src="/common/js/jQuery/plug-in/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="/common/js/jQuery/plug-in/swiper.js"></script>
<script type="text/javascript" src="/common/js/ui_lab.js?now=<%=val4css%>"></script>
<% End if %>