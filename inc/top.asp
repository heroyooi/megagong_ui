<%
Dim url_main, img_main, lab_main
url_main = "https://www.megagong.net"
img_main = "https://img.megagong.net"
dimg_main = "https://design.megagong.net/image"
lab_main = "https://lab.megagong.net"
gongssel_main = "https://gongssel.megagong.net"
dev_main = "https://dev.megagong.net"

https   =  fncRequestVariables("https")
hostnm  =  fncRequestVariables("HTTP_HOST")

Dim dp1, dp2

Function fncRequestCookie(varParam)
  Dim cookieName
  cookieName = Request.Cookies(varParam)
  fncRequestCookie = trim(cookieName)
end Function

Function fncRequestVariables(varParam)
	p = ""
	if ucase(varParam) = "REMOTE_ADDR" then        '리모트 ip 가져와서리
		p = Request.ServerVariables("HTTP_CLIENT_IP")
		if p = "" then   '암것도 없으면 ......
		   p = Request.ServerVariables(varParam)   'REMOTE_ADDR 다시 받고
		end if
	else
		p = Request.ServerVariables(varParam)      '나머지 서버 변수는 그냥사용
	end if
	fncRequestVariables = p
end Function

h_tit = "메가공무원 컴포넌트 메인"
h_des = "메가공무원 컴포넌트를 소개하는 서비스입니다."
h_key = "메가공무원, 메가스터디공무원, 메가공, 컴포넌트가이드, 컴포넌트, UI, 퍼블리싱, 메가공무원컴포넌트가이드, 메가공무원UI가이드, 메가공무원퍼블리싱팀, 메가스터디교육공무원사업본부, 메가스터디교육, 메가스터디"

If instr(fncRequestVariables("path_info"),"/items/") > 0 Then
  h_tit = "메가공무원 컴포넌트 가이드"
  h_des = "메가공무원 사이트의 컴포넌트를 소개하는 페이지입니다."
ElseIf instr(fncRequestVariables("path_info"),"/pages/") > 0 Then
  h_tit = "메가공무원 페이지 가이드"
  h_des = "메가공무원 사이트의 페이지를 소개하는 페이지입니다."
ElseIf instr(fncRequestVariables("path_info"),"/blog.asp") > 0 Then
h_tit = "메가공무원 기술 블로그"
  h_des = "메가공무원 퍼블리싱팀의 기술 블로그입니다."
ElseIf instr(fncRequestVariables("path_info"),"/blog_detail.asp") > 0 Then
  h_tit = "메가공무원 기술 블로그 상세"
  h_des = "메가공무원 퍼블리싱팀의 기술 블로그 상세 페이지입니다."
End if
%>

<!DOCTYPE HTML>
<html lang="ko">
<head>
  <meta charset="euc-kr">
  <link rel="shortcut icon" type="image/x-icon" href="<%=img_main%>/m/common/logo/megagong.ico">
  <meta http-equiv="X-UA-Compatible" content="IE=Edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">

  <!--
  <meta property="og:image" content="<%=h_img %>"/>
  <meta property="og:url" content="<%=hostnm %>"/>
  <meta property="og:description" content="<%=h_des %>"/>
  -->
  <meta name="author" content="성연욱, 서예린" />
  <meta name="description" content="<%=h_des%>">
  <meta name="keywords" content="<%=h_key%>">

  <meta property="og:title" content="<%=h_tit%>" />
  <meta property="og:description" content="<%=h_des%>" />

	<title><%=h_tit%></title>
  <meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
  
  <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
  <link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/font_NotoSans_kr.css" />
  <link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/megagong_common.css" />
  <link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/mypage.css" />
  <link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/megagong_respons.css" />
  <link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/main/megagong_main_gong_v21_3.css" />
  <link type="text/css" rel="stylesheet" href="<%=url_main%>/common/js/jquery/plug-in/swiper.css" />
  <!--<link rel="stylesheet" type="text/css" href="<%=url_main%>/common/js/jQuery/plug-in/slick.css" />-->

  <link type="text/css" rel="stylesheet" href="/css/reset.css" />
  <link type="text/css" rel="stylesheet" href="/css/renew_overview.css" />
  <link type="text/css" rel="stylesheet" href="/css/aos.css" />
  <link type="text/css" rel="stylesheet" href="/css/component.css" />
  <link type="text/css" rel="stylesheet" href="/css/c_main.css" />
  <link type="text/css" rel="stylesheet" href="/css/mega.css">
  <link type="text/css" rel="stylesheet" href="/css/toastr.css">
  <link type="text/css" rel="stylesheet" href="/css/retest.css"><!-- 서브 디자인 수정 테스트용 파일-->
  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

  <script type="text/javascript" src="<%=url_main%>/common/js/jQuery/jquery-3.3.1.min.js"></script>
  <script type="text/javascript" src="<%=url_main%>/common/js/jQuery/plug-in/jquery.magnific-popup.min.js"></script>
  <script type="text/javascript" src="<%=url_main%>/common/js/jquery/plug-in/swiper.js"></script>
  <script type="text/javascript" src="<%=url_main%>/common/js/jquery/plug-in/slick.js"></script>
  <script type="text/javascript" src="<%=url_main%>/common/js/jquery/plug-in/aos.js"></script>
  <script type="text/javascript" src="<%=url_main%>/common/js/common_k.js"></script>
  <script type="text/javascript" src="<%=url_main%>/common/js/common.js"></script>
  <script type="text/javascript" src="<%=url_main%>/common/js/common_k_crazytiger.js"></script>
  <script type="text/javascript" src="<%=url_main%>/common/js/kollus.videogateway-controller.min.js"></script>
  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  <script type="text/javascript" src="https://cdn.tiny.cloud/1/ei8uwj5xt3ytcx7vv25y1ozx6qrlh6day39weu1cvu46hvi9/tinymce/6/tinymce.min.js" referrerpolicy="origin"></script>
  <script type="text/javascript" src="https://cdn.tiny.cloud/1/ei8uwj5xt3ytcx7vv25y1ozx6qrlh6day39weu1cvu46hvi9/tinymce/6/plugins.min.js" referrerpolicy="origin"></script>
  <script src="/js/clipboard.min.js"></script>
  <!-- Google tag (gtag.js) -->
  <script async src="https://www.googletagmanager.com/gtag/js?id=G-S77S8CZ1C5"></script>
  <script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('config', 'G-S77S8CZ1C5');
  </script>
</head>
<body>
  <div id="wrap">
    <div class="co-loading" style="background:rgba(0, 0, 0, 0.5); position:fixed; left: 0; top:0; width: 100%; height: 100%; z-index: 999;"></div>
    <div class="co-loading_ui">
      <div class="span_loading_wrap">
        <span class="span_loading"></span>
        <span class="span_loading"></span>
        <span class="span_loading"></span>
        <span class="span_loading"></span>
      </div>
    </div>
    <div class="wrap">
      <div class="guide-header" style="display: none;">
        <div class="guide-h-inner">
            <h1><!--<img src="/images/h1.png" alt="메가공무원" />--><a href="/index.asp"><img src="/images/logo3.png" alt='메가공무원' width="35"></a></h1>
            <span class="desc"><a href="/index.asp">COMPONENT GUIDE</a></span>
            
            <!-- 로그인 후 -->
            <ul class="user_info pending" id="authorized" style="display: none;">
                <li class="user txt"><span>홍길동</span>(<em>honggildong</em>)님 환영합니다.</li>
                <li class="user icon"><i class='bx bxs-user' ></i></li>
                <li><a onclick="logoutAction(); return false;" href="#" class="btn"><p><i class='bx bx-log-out' style='color:#0000003d;' ></i></p></a></li>
            </ul>
            
            <!-- 로그인 후 -->
            <ul class="user_info pending" id="anonymous">
                <li><a href="/login.asp">로그인</a></li>
                <li><a href="/signup.asp">회원가입</a></li>
            </ul>
            

            <!--
            <div class="manage-user-area" style="display: none;">
              <h2>회원 관리 <span>(최근 접속 순)</span></h2>
              <ul class="user-list"></ul>
              <a href="#" class="btn_close">닫기</a>
            </div>
            -->
        </div>
      </div>
      <header class="header_wrp">
        <div class="header">
          <button type="button" class="btn_menu2">
            <i class='bx bx-plus'></i>
          </button>
          <h1 class="logo"><a href="/index.asp">COMPONENT GUIDE</a></h1>
          <nav id="gnb">
            <!--<ul>
              <li><a href="/items/button.asp">COMPONENT</a></li>
              <li><a href="/pages/teacher.asp">PAGE</a></li>
              <li><a href="/blog.asp">BLOG</a></li>
              <li class="authorized profile" style="display:none;"><span>홍길동</span>(<em>honggildong</em>)님 환영합니다.</li>
              <li class="authorized logout" style="display:none;"><a onclick="logoutAction(); return false;" href="#" class="btn"><i class='bx bx-log-out'></i></a></li>
              <li class="anonymous"><a href="/login.asp">LOGIN</a></li>
              <li class="anonymous"><a href="/signup.asp">SIGNUP</a></li>
            </ul>-->
            <ul class="nav_list">
              <li><a href="/items/button.asp" style="color:#000">RENEWAL TEST</a></li>
              <!--
              <li><a href="/items/button.asp">COMPONENT</a></li>
              <li><a href="/pages/teacher.asp">PAGE</a></li>
              <li><a href="/blog.asp">BLOG</a></li>
              <li id="js_test"><a href="/js_test.asp">JS TEST</a></li>
              -->
            </ul>
            <ul class="util_list">
              <li class="authorized profile" style="display:none;"><span>홍길동</span>(<em>honggildong</em>)님 환영합니다.</li>
              <li class="authorized logout" style="display:none;"><a onclick="logoutAction(); return false;" href="#" class="btn"><i class='bx bx-log-out'></i></a></li>
              <li class="anonymous"><a href="/login.asp">LOGIN</a></li>
              <li class="anonymous"><a href="/signup.asp">SIGNUP</a></li>
            </ul>
          </nav>
          <button type="button" class="btn_menu">
            <div class="shape">
              <svg vid="menu_btn" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 18 14" xml:space="preserve">
              <g>
                <rect x="0" y="0" width="18" height="2" rx="1"/>
                <rect x="0" y="6" width="18" height="2" rx="1"/>
                <rect x="0" y="12" width="18" height="2" rx="1"/>
              </g>
            </svg>
            </div>
          </button>
          <div class="mo_dimm"></div>
          <div class="mo_menu_wrp"></div>
        </div>
      </header>

      <div class="login_dim profile_dim"></div>
      <div class="login-area profile_popup" id="profilePopup" style="display: none;">
        <p>계정 관리</p>
        <p class="login_close_btn"><i class='bx bx-x' style='color:#c9c9c9'></i></p>
        <div class="loginInp">
            <div class="loginName input_row">
                <p class="profile_img"><i class='bx bx-user-circle'></i></p>
                <p class="profile_tit">이름</p>
                <span><input type="text" class="input_base"  placeholder="이름" value=""></span>
            </div>
            <div class="user_time">
              <ul>
                <li>
                  <p class="profile_tit">최근 접속</p>
                  <span class="user_timer_span" id="user_timer_new">2022-10-06</span>
                </li>
                <li>
                  <p class="profile_tit">가입 일자</p>
                <span class="user_timer_span" id="user_timer_signup">2022-09-26</span>
                </li>
              </ul>
            </div>
        </div>
        <div class="btn">
            <a href="javascript:void(0)" class="btn_base" onclick="editMemberAction(); return false;">수정완료</a>
            <a href="javascript:void(0)" class="btn_base" onclick="deleteMemberAction(); return false;">회원탈퇴</a>
        </div>
      </div>