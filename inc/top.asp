<%
	' �ƢƢ� �ҽ� ��� : �ۼ� �԰� - url_{������} �ƢƢ�
	Dim url_main
      dev_url_main = "https://dev.megagong.net"
      dev_lab_main = "https://labdev.megagong.net"
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
    if ucase(varParam) = "REMOTE_ADDR" then        '����Ʈ ip �����ͼ���
      p = Request.ServerVariables("HTTP_CLIENT_IP")
      if p = "" then   '�ϰ͵� ������ ......
        p = Request.ServerVariables(varParam)   'REMOTE_ADDR �ٽ� �ް�
      end if
    else
      p = Request.ServerVariables(varParam)      '������ ���� ������ �׳ɻ��
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

  h_tit = "�ް������� ������Ʈ ���̵�"
  h_des = "�ް������� ������Ʈ�� �Ұ��ϴ� �����Դϴ�."
  h_key = "�ް�������, �ް����͵������, �ް���, ������Ʈ���̵�, ������Ʈ, UI, �ۺ���, �ް�������������Ʈ���̵�, �ް�������UI���̵�, �ް��������ۺ�����, �ް����͵����������������, �ް����͵���, �ް����͵�, ������Ʈ ���̵�"

  If instr(fncRequestVariables("path_info"),"/items/") > 0 Then
    h_tit = "�ް������� ������Ʈ ���̵�"
    h_des = "�ް������� ����Ʈ�� ������Ʈ�� �Ұ��ϴ� �������Դϴ�."
  ElseIf instr(fncRequestVariables("path_info"),"/pages/") > 0 Then
    h_tit = "�ް������� ������ ���̵�"
    h_des = "�ް������� ����Ʈ�� �������� �Ұ��ϴ� �������Դϴ�."
  ElseIf instr(fncRequestVariables("path_info"),"/blog.asp") > 0 Then
  h_tit = "�ް������� ��� ��α�"
    h_des = "�ް������� �ۺ������� ��� ��α��Դϴ�."
  ElseIf instr(fncRequestVariables("path_info"),"/blog_detail.asp") > 0 Then
    h_tit = "�ް������� ��� ��α� ��"
    h_des = "�ް������� �ۺ������� ��� ��α� �� �������Դϴ�."
  End if

  Function getParamTxt(ByVal paramName, ByVal initValue, ByVal chkReplace)
    '�Ķ���͸�, �ʱⰪ, ����ǥġȯ, ���ѱ��ڼ�, 
      Dim tmp
      tmp = Trim(Request(paramName))

      If tmp = "" Then
          getParamTxt = initValue
      Else
      If chkReplace = 1 Then
        tmp = Replace(tmp, "'", "''")			
        'sql �΢h�� ����
        tmp = Replace_Param_Exec(tmp)
      End If


      getParamTxt = tmp
      End If
  End Function

  lo_now_date  = getParamTxt( "now", "", 1)
  '' �����ڰ� �������� ��� Ÿ�̸� Ȯ�� ����
  If lo_now_date = "" Then
    lo_now_date = now()
  Else
    If ucase(fncrequestCookie("mem_type"))="E" Then
      lo_now_date = lo_now_date
    Else
      lo_now_date = now()
    End IF
  End If
    'lo_now_date = replace(replace(lo_now_date,"����",""),"����","")
  lo_now_date = Year(lo_now_date)&"-"&Right("0"&Month(lo_now_date),2)&"-"&Right("0"&day(lo_now_date),2)& " " & Right("0"&hour(lo_now_date),2)&":"& Right("0"&minute(lo_now_date),2)&":"& Right("0"&second(lo_now_date),2)
  val4css = Year(lo_now_date)&Right("0"&Month(lo_now_date),2)&Right("0"&day(lo_now_date),2)& Right("0"&hour(lo_now_date),2)& Right("0"&minute(lo_now_date),2)
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
  <meta name="author" content="������, ������" />
  <meta name="description" content="<%=h_des%>">
  <meta name="keywords" content="<%=h_key%>">

  <meta property="og:title" content="<%=h_tit%>" />
  <meta property="og:description" content="<%=h_des%>" />

	<title><%=h_tit%></title>
  <meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
  
  <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
  <link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/font_NotoSans_kr.css?now=<%=val4css%>" />
  <link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/megagong_common.css?now=<%=val4css%>" />
  <link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/megagong_component.css?now=<%=val4css%>" />
  <link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/mypage.css?now=<%=val4css%>" />
  <link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/megagong_respons.css?now=<%=val4css%>" />
  <link type="text/css" rel="stylesheet" href="<%=url_main%>/common/js/jquery/plug-in/swiper.css" />
  <!--<link rel="stylesheet" type="text/css" href="<%=url_main%>/common/js/jQuery/plug-in/slick.css" />-->
  <link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/megagong_common_lab.css?now=<%=val4css%>">
  <link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/tech.css?now=<%=val4css%>">
  <link type="text/css" rel="stylesheet" href="<%=url_main%>/teacher/curr/curr.css?now=<%=val4css%>">
  <link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/event_common.css?now=<%=val4css%>">
  <link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/main/megagong_main_v24.css?now=<%=val4css%>" />

  <link type="text/css" rel="stylesheet" href="/css/reset.css?now=<%=val4css%>" />
  <link type="text/css" rel="stylesheet" href="/css/renew_overview.css?now=<%=val4css%>" />
  <link type="text/css" rel="stylesheet" href="/css/aos.css?now=<%=val4css%>" />
  <link type="text/css" rel="stylesheet" href="/css/component.css?now=<%=val4css%>" />
  <link type="text/css" rel="stylesheet" href="/css/c_main.css?now=<%=val4css%>" />
  <link type="text/css" rel="stylesheet" href="/css/mega.css?now=<%=val4css%>">
  <link type="text/css" rel="stylesheet" href="/css/toastr.css?now=<%=val4css%>">
  <link type="text/css" rel="stylesheet" href="/css/retest.css?now=<%=val4css%>"><!-- ���� ������ ���� �׽�Ʈ�� ����-->
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
      