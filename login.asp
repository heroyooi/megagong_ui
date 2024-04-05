<!-- #include virtual = "/inc/top.asp"-->
  
  <video muted autoplay loop>
    <source src="/images/back2.mp4" type="video/mp4">
  </video>
  <div class="inner">

    <div class="log_wrap">
      <div class="login-image">
        <p class="login-head">WELCOME</p>
        <p class="tit mini_font">
          <span class="tit_line"></span>LOGIN PAGE
        </p>
        <p class="login-small">메가공무원 컴포넌트 가이드 서비스에 오신 것을 환영합니다</p>
        <p class="login-small">자사 이메일 주소로 지금 바로 로그인 해보세요</p>
      </div>
      <div class="login-area" id="loginPage">
        <div class="loginInp">
          <div class="login_logo">
            <!--<i class='bx bxl-gmail' style='color:#47b2ff'></i>-->
            <p class="logo_image"><img src="/images/logo1.png"></p>
            <p class="login_logo_text">메가공무원<br>컴포넌트 가이드 로그인</p>
          </div>
          <div class="loginId input_row">
              <span><input type="email" class="input_base" id="input_id" placeholder="이메일" onfocus="this.removeAttribute('readonly');" readonly></span>
          </div>
          <div class="loginPass input_row">
              <span><input type="password" class="input_base" id="input_pw" placeholder="비밀번호" onfocus="this.removeAttribute('readonly');" readonly></span>
          </div>
        </div>
        <div class="btn">
          <a href="#none" class="btn_login" onclick="loginAction(); return false;">로그인</a>
        </div>
        <span class="valid"></span>
        <a href="./signup.asp" class="signup_btn">회원가입 바로가기</a>
        <ul class="s-info">
          <li>자사 이메일 양식(@megastudy.net)으로 로그인 해주세요.</li>
        </ul>
      </div>
    </div>
    <!-- #include virtual = "/inc/footer.asp"-->
  </div>

  <!--<div class="ball_fir_wrap">
    <div class="ball fir ver1"></div>
    <div class="ball fir ver2"></div>
    <div class="ball fir ver3"></div>
    <div class="ball fir ver4"></div>
    <div class="ball fir ver5"></div>
    <div class="ball fir ver6"></div>
  </div>-->

  <style>
  
  .wrap {padding:0px;height: 100%;position: inherit;  }
  video {  position: absolute;z-index: -1;width: 100%; height: 100%;object-fit: cover;}
  .wrap::after { content: "";display: block;width: 100%;height: 100%;background: rgba(0,0,0,0.5);position: absolute;z-index: -1;left: 0;top: 0;;}
  .page_foot {border-top: 1px solid #8d8d8d; width: 96%;margin: auto;}
  .inner { align-items: center;    padding: 8.6% 0px 0%;margin: 5% auto;  width: 1600px; margin-top: 80px;min-height: calc(100% - 25px);}
  .log_wrap {
  display: flex;justify-content: space-between;    align-items: center;    margin-bottom: 14%;}
  #loginPage {width: 320px;padding: 34px 18px;box-sizing: border-box;display: inline-block;}
  .header_wrp .btn_menu2 {display: none;}
  .header_wrp .header h1 a {justify-content: flex-start;}
  :not(.page_text_wrap) a:hover {color:#fff;}
  .btn_login:hover {background: #979797;}
  .tit.mini_font {font-size: 50px;font-weight: 500;line-height: 75px;display: flex;align-items: center;color:#fff;font-family: 'Montserrat';margin-left: 24px;}
  .login_logo_text svg {fill: rgb(173 177 238) !important;}

  
    .wrap,
    video,
    .wrap::after {height:100vh}
    .wrap::after  {height: 130vh;}
    .header_wrp {position: relative;}
    video {height: 130vh;}
    .wrap {display:table;    width: 100%;    overflow: hidden;
    position: relative;}

  
  @media screen and (max-width: 1700px) {
    .inner{ width: 96%;}
  }
  @media screen and (max-width: 1200px) {
    .inner {padding: 0px;margin:  auto ;width: 96%;       min-height: auto;
    overflow: hidden;
    position: relative;}
    .login-image {width: 43%;margin-top: 2%;}
    .login-image p.login-head {font-size: 110px;margin-bottom: 0%;line-height: 87px;}
    .login-image p.login-small {font-size: 17px;font-weight: 100;}
    .login_logo {margin: 23% 0 14% 0;}
    .tit.mini_font {font-size: 35px;line-height: 55px;}

  }

  @media screen and (max-width: 992px) {
    .log_wrap {  display: flex;flex-wrap: wrap;  align-content: flex-start;}
    .login-image {float: inherit;width: 100%;text-align: center;  margin-top: 8%;}
    #loginPage {width: 320px;padding: 0px 18px 5%;display: block;margin: auto;    margin-top: 6%;margin-bottom: 15%;}
    .login_logo {margin: 8% 0 14% 0;}
    .login-image p.login-small {margin-left: 0px}

    .tit.mini_font {margin-left: 0px;justify-content: center;}

     .log_wrap {margin-bottom: 0%;}
    
  }

  @media screen and (max-width: 768px) {
    .login-image p.login-head {font-size: 85px;}
  }

  @media screen and (max-width: 576px) {
    .login-image p.login-head {font-size: 55px;margin-bottom: 0%;line-height: 50px;}
    .login-image p.login-small {font-size: 15px;font-weight: 300}

    .tit.mini_font {font-size: 25px;line-height: 45px;}

  }

  @media screen and (max-width: 375px) {
    .login-image p.login-head {font-size: 50px;    line-height: 70px;}
    .login-image p.login-small {font-size: 13px;}
    #loginPage {width: 100%;padding: 0px 0px 12%;}
  }
  </style>

<!-- #include virtual = "/inc/bottom.asp"-->