<%
	' ▒▒▒ 소스 경로 : 작성 규격 - url_{폴더명} ▒▒▒
	Dim url_main
      dev_url_main = "https://dev.megagong.net"
  if inStr(hostnm, "dev") > 0 Then
      url_main	        = "https://dev.megagong.net"
      sobang_main	        = "https://sobangdev.megagong.net"
      campus_main	        = "https://campusdev.megagong.net"
      ansung_main	        = "https://ansungdev.megagong.net"
      sobangcampus_main	= "https://sobangcampusdev.megagong.net"
      gongssel_main       = "https://gongsseldev.megagong.net"
      ngbr_main           = "https://ngbrdev.megagong.net"
      army_main           = "https://armydev.megagong.net"
      lab_main            = "https://labdev.megagong.net"
      job_main            = "https://dev.megajob.co.kr"
  Else
      if inStr(hostnm, "171.") > 0 Then
        url_main	        = "https://www171.megagong.net"
        sobang_main	        = "https://sobang171.megagong.net"
        campus_main	        = "https://campus171.megagong.net"
        ansung_main	        = "https://ansung171.megagong.net"
        sobangcampus_main	= "https://sobangcampus171.megagong.net"
        gongssel_main       = "https://gongssel171.megagong.net"
        ngbr_main           = "https://ngbr171.megagong.net"
        army_main           = "https://army171.megagong.net"
      Elseif inStr(hostnm, "172.") > 0 Then
        url_main	        = "https://www172.megagong.net"
        sobang_main	        = "https://sobang172.megagong.net"
        campus_main	        = "https://campus172.megagong.net"
        ansung_main	        = "https://ansung172.megagong.net"
        sobangcampus_main	= "https://sobangcampus172.megagong.net"
        gongssel_main       = "https://gongssel172.megagong.net"
        ngbr_main           = "https://ngbr172.megagong.net"
        army_main           = "https://army172.megagong.net"
      Else
        url_main	        = "https://www.megagong.net"
        sobang_main	        = "https://sobang.megagong.net"
        campus_main	        = "https://campus.megagong.net"
        ansung_main	        = "https://ansung.megagong.net"
        sobangcampus_main	= "https://sobangcampus.megagong.net"
        gongssel_main       = "https://gongssel.megagong.net"
        ngbr_main           = "https://ngbr.megagong.net"
        army_main           = "https://army.megagong.net"
        lab_main           = "https://lab.megagong.net"
        job_main           = "https://www.megajob.co.kr"
      End if
  End if
  
  hcode = "gong"
  h_gubn = "gong"

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

  Dim img_main, img_common, img_prof, img_vod, img_mypage, img_search, img_player
	if inStr(fncRequestVariables("HTTP_HOST"), "dev") > 0 then
		img_main	= "https://img.megagong.net"
	Else
        img_main	= "https://img.megagong.net"
        'img_main	= "https://image.megagong.net"
	End If

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

  Function getParamTxt(ByVal paramName, ByVal initValue, ByVal chkReplace)
    '파라미터명, 초기값, 따옴표치환, 제한글자수, 
      Dim tmp
      tmp = Trim(Request(paramName))

      If tmp = "" Then
          getParamTxt = initValue
      Else
      If chkReplace = 1 Then
        tmp = Replace(tmp, "'", "''")			
        'sql 인줵션 제거
        tmp = Replace_Param_Exec(tmp)
      End If


      getParamTxt = tmp
      End If
  End Function

  lo_now_date  = getParamTxt( "now", "", 1)
  '' 접속자가 관리자인 경우 타이머 확인 가능
  If lo_now_date = "" Then
    lo_now_date = now()
  Else
    If ucase(fncrequestCookie("mem_type"))="E" Then
      lo_now_date = lo_now_date
    Else
      lo_now_date = now()
    End IF
  End If
    'lo_now_date = replace(replace(lo_now_date,"오전",""),"오후","")
  lo_now_date = Year(lo_now_date)&"-"&Right("0"&Month(lo_now_date),2)&"-"&Right("0"&day(lo_now_date),2)& " " & Right("0"&hour(lo_now_date),2)&":"& Right("0"&minute(lo_now_date),2)&":"& Right("0"&second(lo_now_date),2)

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
  <link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/megagong_common_lab.css">
  <link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/tech.css">
  <link type="text/css" rel="stylesheet" href="<%=url_main%>/teacher/curr/curr.css">
  <link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/event_common.css">

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
  <script src="<%=url_main%>/common/js/ui_lab.js"></script>

  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  <!--
  <script type="text/javascript" src="https://cdn.tiny.cloud/1/ei8uwj5xt3ytcx7vv25y1ozx6qrlh6day39weu1cvu46hvi9/tinymce/6/tinymce.min.js" referrerpolicy="origin"></script>
  <script type="text/javascript" src="https://cdn.tiny.cloud/1/ei8uwj5xt3ytcx7vv25y1ozx6qrlh6day39weu1cvu46hvi9/tinymce/6/plugins.min.js" referrerpolicy="origin"></script>
  <script src="/js/clipboard.min.js"></script>
  -->
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
    <!--
    <div class="co-loading" style="background:rgba(0, 0, 0, 0.5); position:fixed; left: 0; top:0; width: 100%; height: 100%; z-index: 999;"></div>
    <div class="co-loading_ui">
      <div class="span_loading_wrap">
        <span class="span_loading"></span>
        <span class="span_loading"></span>
        <span class="span_loading"></span>
        <span class="span_loading"></span>
      </div>
    </div>
    -->
    <div class="wrap">
      