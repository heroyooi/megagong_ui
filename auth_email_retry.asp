<!-- #include virtual = "/inc/top.asp"-->

  <div class="inner">
    <div class="login-image">
      <p class="login-head">WELCOME</p>
      <p class="login-small">메가스터디 컴포넌트 가이드 서비스에 오신 것을 환영합니다</p>
      <p class="login-small">자사 이메일 주소로 본인을 인증해주세요</p>
    </div>
    <div class="login-area" id="signupEmailAuthPage">
      <div class="loginInp">
        <div class="login_logo">
          <p class="logo_image"><img src="/images/logo1.png"></p>
          <p class="login_logo_text">메가스터디<br>컴포넌트 가이드 이메일 회원가입</p>
        </div>
        <div class="input_row">
            <span><input type="email" class="input_base" id="input_id" placeholder="이메일" onfocus="this.removeAttribute('readonly');" readonly></span>
        </div>
        <div class="input_row">
            <span><input type="text" class="input_base" id="input_name" placeholder="이름" onfocus="this.removeAttribute('readonly');" readonly></span>
        </div>
        <div class="input_row">
            <span><input type="password" class="input_base" id="input_pw" placeholder="비밀번호" onfocus="this.removeAttribute('readonly');" readonly></span>
        </div>
      </div>
      <div class="btn">
        <a href="#none" class="btn_login" onclick="signupEmailAuthAction(true); return false;">이메일 재인증</a>
      </div>
      <span class="valid"></span>
    </div>

    <div class="ball_fir_wrap">
      <div class="ball fir ver1"></div>
      <div class="ball fir ver2"></div>
      <div class="ball fir ver3"></div>
      <div class="ball fir ver4"></div>
      <div class="ball fir ver5"></div>
      <div class="ball fir ver6"></div>
    </div>
  </div>
    

    <div class="modal_dimm"></div>
    <div class="modal_popup" id="emailVerfication">
      <p class="email_verfication"><strong>이메일 인증중...</strong></p>
      <ul class="email_verfication_info">
        <li>인증 전 창을 닫지 마세요.</li>
        <li>메가스터디 메일함에서 인증을 실행해주세요.</li>
      </ul>
    </div>

    <style>
      /* .guide-header{display:none;} */
      html, body, #wrap ,.wrap {height:100%;overflow: hidden;}
      .page_foot {border-top: 1px solid #dcdcdc;padding: 20px 0; margin: 0 155px;}

      /* 220929추가, 후에 공통부분은 component이동 예정 */
      .inner {padding: 190px 0px 134px 0px;margin: 31px 155px;}
      .login-area .signup_btn {color: #8a9dae9e;text-align: center;display: block;font-size: 12px;margin-top: 6px;}
      .login-image p.login-head {font-size: 150px;font-weight: bolder;line-height: 121px;margin-bottom: 11px;}
      .login-image p.login-small {    font-size: 28.5px;font-weight: 100;margin-left: 22px;}
      .login-image {float: left;margin:140px 30% 0 0px; width: 44%;}
      #signupEmailAuthPage {width: 320px;padding: 34px 18px;box-sizing: border-box;display: inline-block;/*margin: 0 210px 0 560px;*/}

      .ball {background: #47b2ff;width: 500px;height: 500px;border-radius: 50%;position: absolute;z-index: -1;}
      .ball.fir.ver3 , .ball.fir.ver4, .ball.fir.ver5, .ball.fir.ver6 {animation-duration: 20s;animation-name: ball;animation-iteration-count: infinite;animation-direction: alternate;}
      .ball.fir.ver1 , .ball.fir.ver2 {animation-duration: 20s;animation-name: ball2 ;animation-iteration-count: infinite;animation-direction: alternate;}

      @keyframes ball {
        from {
          margin-left: 100%;
          width: 500px;
          height:500px
        }

        to {
          margin-left: 0%;
          width: 300px;
          height:300px;
        
        }
      } 
      @keyframes ball2 {
        from {
          margin-right: 0%;
          width: 500px;
          height:500px
        }

        to {
          margin-right: 100%;
          width: 300px;
          height:300px;
        
        }
      }        
      .ball.fir.ver1 {background: #47b2ff;left: 200px;top: 200px;opacity: 0.5;box-shadow: 0 0 65px #47b2ff;filter: blur(46px);  -webkit-filter: blur(46px);}
      .ball.fir.ver2 {background: #9eb8f3;left: -70px;bottom: 90px;opacity:0.5;box-shadow: 0 0 65px #9eb8f3;filter: blur(46px);  -webkit-filter: blur(46px);}
      .ball.fir.ver3 {background: #b7b9ff;right: -150px;top: 40px;opacity:0.5;box-shadow: 0 0 65px #b7b9ff;filter: blur(46px);  -webkit-filter: blur(46px);}
      .ball.fir.ver4 {background: #9eb8f3;right: -350px;top: 70px;opacity:0.5;box-shadow: 0 0 65px #9eb8f3;filter: blur(46px);  -webkit-filter: blur(46px);}
      .ball.fir.ver5 {background: #b7b9ff;right: 20px;top: -140px;opacity:0.5;box-shadow: 0 0 65px #b7b9ff;filter: blur(46px);  -webkit-filter: blur(46px);}
      .ball.fir.ver6 {background: #47b2ff;right: 0px;bottom: 0px;opacity:0.5;box-shadow: 0 0 65px #47b2ff;filter: blur(46px);  -webkit-filter: blur(46px);}
    
    @media screen and (max-width: 1700px) {
      .inner {    padding: 8.6% 0px;margin: 0% 2%;}
      .login-image {margin: 16% 20% 0 3%;width: 43%;}
      .login-image p.login-head {font-size: 110px;margin-bottom: 0%;}
      .login-image p.login-small {font-size: 20px;font-weight: 300;margin-left: 15px;}
      .page_foot {margin: 0 6%;}
      .login_logo {margin: 23% 0 14% 0;}
    }

    @media screen and (max-width: 992px) {
      .login-image {float: inherit;width: 100%;margin: 11% auto 0%;text-align: center;}
      #signupEmailAuthPage {width: 320px;padding: 0px 18px 5%;display: block;margin: auto;}
      .login_logo {margin: 8% 0 14% 0;}
    }

    @media screen and (max-width: 768px) {.login-image p.login-head {font-size: 85px;}
    }

    @media screen and (max-width: 576px) {
      .login-image p.login-head {font-size: 65px;margin-bottom: 0%;line-height: 90px;}
      .login-image p.login-small {font-size: 15px;font-weight: 300;margin-left: 15px;}
      .login-image {margin: 20% auto 0%;}
    }

    @media screen and (max-width: 375px) {
      .login-image {margin: 23% auto 0%;}
      .login-image p.login-head {font-size: 50px;    line-height: 70px;}
      .login-image p.login-small {font-size: 13px;}
      #signupEmailAuthPage {width: 100%;padding: 0px 0px 12%;}

    }
    @media screen and (max-width: 280px) {}
    </style>

<!-- #include virtual = "/inc/footer.asp"-->
<!-- #include virtual = "/inc/bottom.asp"-->