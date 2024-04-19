<script type="text/babel">
  'use strict';

  function LoginLayout() {
    const StyledLogin = window.styled.div`
      .loginWrap {padding:0px;height: 100%;position: inherit;  }
      video {  position: absolute;z-index: -1;width: 100%; height: 100%;object-fit: cover;}
      .loginWrap::after { content: "";display: block;width: 100%;height: 100%;background: rgba(0,0,0,0.5);position: absolute;z-index: -1;left: 0;top: 0;;}
      .page_foot {border-top: 1px solid #8d8d8d; width: 96%;margin: auto;}
      .inner { align-items: center;    padding: 8.6% 0px 0%;margin: 5% auto;  width: 1600px; margin-top: 80px;min-height: calc(100% - 25px);}
      .log_wrap {
      display: flex;justify-content: space-between;    align-items: center;    margin-bottom: 14%;}
      #loginPage {width: 320px;padding: 34px 18px;box-sizing: border-box;display: inline-block;}
      :not(.page_text_wrap) a:hover {color:#fff;}
      .btn_login:hover {background: #979797;}
      .tit.mini_font {font-size: 50px;font-weight: 500;line-height: 75px;display: flex;align-items: center;color:#fff;font-family: 'Montserrat';margin-left: 24px;}
      .login_logo_text svg {fill: rgb(173 177 238) !important;}

      
      .loginWrap,
      video,
      .loginWrap::after {height:100vh}
      .loginWrap::after  {height: 130vh;}
      .header_wrp {position: relative;}
      video {height: 130vh;}
      .loginWrap {display:table;    width: 100%;    overflow: hidden;
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
      }`;
    const history = useHistory();

    useEffect(() => {
      document.querySelector('.header_wrp').classList.add('relative');
      document.querySelector('.header_wrp .btn_menu2').classList.add('hide');
      Lab.top();

      return () => {
        document.querySelector('.header_wrp').classList.remove('relative');
        document.querySelector('.header_wrp .btn_menu2').classList.remove('hide');
      }
    }, []);

    const loginAction = async (e) => {
      e.preventDefault();
      try {
        const email = $('#loginPage').find('#input_id').val();
        const password = $('#loginPage').find('#input_pw').val();
        if (email.trim() === '') {
          // $('#loginPage').find('.valid').show().text('이메일을 입력하세요!');
          toastr.error('이메일을 입력하세요!');
          $('#loginPage').find('#input_id').focus();
          return;
        }
        if (!EM_FORMAT.test(email)) {
          // $('#loginPage').find('.valid').show().text('이메일 양식이 맞지 않습니다.');
          toastr.error('이메일 양식이 맞지 않습니다.');
          $('#loginPage').find('#input_id').focus();
          return;
        }
        if (email.split('@')[1] !== 'megastudy.net') {
          // $('#loginPage').find('.valid').show().text('자사 메일 주소가 아닙니다.');
          toastr.error('자사 메일 주소가 아닙니다.');
          $('#loginPage').find('#input_id').focus();
          return;
        }    
        if (password.trim() === '') {
          // $('#loginPage').find('.valid').show().text('비밀번호를 입력하세요!');
          toastr.error('비밀번호를 입력하세요!');
          $('#loginPage').find('#input_pw').focus();
          return;
        }
        // $('#loginPage').find('.btn_login').addClass('pending');
        $('#loginPage').find('.login_logo').addClass('pending');
        // if (email === 'guest@megastudy.net' || password === 'qwert09!@#') { // 테스트 계정
        //   onSubmitLogIn('h*******@megastudy.net', '**********');
        // } else {
        //   onSubmitLogIn(email, password);
        // }
        Lab.onSubmitLogIn(email, password).then((res) => {
          history.push('/');
        })
      } catch (err) {
        console.error(err);
      }
      
    }

    return (
      <StyledLogin>
        <div className="loginWrap">
          <video muted autoplay loop>
            <source src="/images/back2.mp4" type="video/mp4" />
          </video>
          <div className="inner">
            <div className="log_wrap">
              <div className="login-image">
                <p className="login-head">WELCOME</p>
                <p className="tit mini_font">
                  <span className="tit_line"></span>LOGIN PAGE
                </p>
                <p className="login-small">메가공무원 컴포넌트 가이드 서비스에 오신 것을 환영합니다</p>
                <p className="login-small">자사 이메일 주소로 지금 바로 로그인 해보세요</p>
              </div>
              <div className="login-area" id="loginPage">
                <div className="loginInp">
                  <div className="login_logo">
                    <p className="logo_image"><img src="/images/logo1.png" /></p>
                    <p className="login_logo_text">메가공무원<br />컴포넌트 가이드 로그인</p>
                  </div>
                  <div className="loginId input_row">
                      <span><input type="email" className="input_base" id="input_id" placeholder="이메일" onfocus="this.removeAttribute('readonly');" readonly /></span>
                  </div>
                  <div className="loginPass input_row">
                      <span><input type="password" className="input_base" id="input_pw" placeholder="비밀번호" onfocus="this.removeAttribute('readonly');" readonly /></span>
                  </div>
                </div>
                <div className="btn">
                  <a href="#none" className="btn_login" onClick={loginAction}>로그인</a>
                </div>
                <span className="valid"></span>
                <Link to="/signup" className="signup_btn">회원가입 바로가기</Link>
                <ul className="s-info">
                  <li>자사 이메일 양식(@megastudy.net)으로 로그인 해주세요.</li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </StyledLogin>
    )
  }
</script>