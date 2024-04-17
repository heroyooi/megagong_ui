<script type="text/babel">
  'use strict';

  function LoginLayout() {
    const history = useHistory();

    useEffect(() => {
      Lab.top();
      $('body').addClass('login_layout');
      return () => {
        $('body').removeClass('login_layout');
      }
    }, []);

    const loginAction = async (e) => {
      e.preventDefault();
      try {
        const email = $('#loginPage').find('#input_id').val();
        const password = $('#loginPage').find('#input_pw').val();
        if (email.trim() === '') {
          // $('#loginPage').find('.valid').show().text('�̸����� �Է��ϼ���!');
          toastr.error('�̸����� �Է��ϼ���!');
          $('#loginPage').find('#input_id').focus();
          return;
        }
        if (!EM_FORMAT.test(email)) {
          // $('#loginPage').find('.valid').show().text('�̸��� ����� ���� �ʽ��ϴ�.');
          toastr.error('�̸��� ����� ���� �ʽ��ϴ�.');
          $('#loginPage').find('#input_id').focus();
          return;
        }
        if (email.split('@')[1] !== 'megastudy.net') {
          // $('#loginPage').find('.valid').show().text('�ڻ� ���� �ּҰ� �ƴմϴ�.');
          toastr.error('�ڻ� ���� �ּҰ� �ƴմϴ�.');
          $('#loginPage').find('#input_id').focus();
          return;
        }    
        if (password.trim() === '') {
          // $('#loginPage').find('.valid').show().text('��й�ȣ�� �Է��ϼ���!');
          toastr.error('��й�ȣ�� �Է��ϼ���!');
          $('#loginPage').find('#input_pw').focus();
          return;
        }
        // $('#loginPage').find('.btn_login').addClass('pending');
        $('#loginPage').find('.login_logo').addClass('pending');
        // if (email === 'guest@megastudy.net' || password === 'qwert09!@#') { // �׽�Ʈ ����
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
      <>
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
              <p className="login-small">�ް������� ������Ʈ ���̵� ���񽺿� ���� ���� ȯ���մϴ�</p>
              <p className="login-small">�ڻ� �̸��� �ּҷ� ���� �ٷ� �α��� �غ�����</p>
            </div>
            <div className="login-area" id="loginPage">
              <div className="loginInp">
                <div className="login_logo">
                  <p className="logo_image"><img src="/images/logo1.png" /></p>
                  <p className="login_logo_text">�ް�������<br />������Ʈ ���̵� �α���</p>
                </div>
                <div className="loginId input_row">
                    <span><input type="email" className="input_base" id="input_id" placeholder="�̸���" onfocus="this.removeAttribute('readonly');" readonly /></span>
                </div>
                <div className="loginPass input_row">
                    <span><input type="password" className="input_base" id="input_pw" placeholder="��й�ȣ" onfocus="this.removeAttribute('readonly');" readonly /></span>
                </div>
              </div>
              <div className="btn">
                <a href="#none" className="btn_login" onClick={loginAction}>�α���</a>
              </div>
              <span className="valid"></span>
              <Link to="/signup" className="signup_btn">ȸ������ �ٷΰ���</Link>
              <ul className="s-info">
                <li>�ڻ� �̸��� ���(@megastudy.net)���� �α��� ���ּ���.</li>
              </ul>
            </div>
          </div>
        </div>
      </>
    )
  }
</script>

<style>
  .login_layout .wrap {padding:0px;height: 100%;position: inherit;  }
  .login_layout video {  position: absolute;z-index: -1;width: 100%; height: 100%;object-fit: cover;}
  .login_layout .wrap::after { content: "";display: block;width: 100%;height: 100%;background: rgba(0,0,0,0.5);position: absolute;z-index: -1;left: 0;top: 0;;}
  .login_layout .page_foot {border-top: 1px solid #8d8d8d; width: 96%;margin: auto;}
  .login_layout .inner { align-items: center;    padding: 8.6% 0px 0%;margin: 5% auto;  width: 1600px; margin-top: 80px;min-height: calc(100% - 25px);}
  .login_layout .log_wrap {
  display: flex;justify-content: space-between;    align-items: center;    margin-bottom: 14%;}
  .login_layout #loginPage {width: 320px;padding: 34px 18px;box-sizing: border-box;display: inline-block;}
  :not(.page_text_wrap) a:hover {color:#fff;}
  .login_layout .btn_login:hover {background: #979797;}
  .login_layout .tit.mini_font {font-size: 50px;font-weight: 500;line-height: 75px;display: flex;align-items: center;color:#fff;font-family: 'Montserrat';margin-left: 24px;}
  .login_layout .login_logo_text svg {fill: rgb(173 177 238) !important;}

  
  .login_layout .wrap,
  .login_layout video,
  .login_layout .wrap::after {height:100vh}
  .login_layout .wrap::after  {height: 130vh;}
  .login_layout .header_wrp {position: relative;}
  .login_layout video {height: 130vh;}
  .login_layout .wrap {display:table;    width: 100%;    overflow: hidden;
    position: relative;}

  
  @media screen and (max-width: 1700px) {
    .login_layout .inner{ width: 96%;}
  }
  @media screen and (max-width: 1200px) {
    .login_layout .inner {padding: 0px;margin:  auto ;width: 96%;       min-height: auto;
    overflow: hidden;
    position: relative;}
    .login_layout .login-image {width: 43%;margin-top: 2%;}
    .login_layout .login-image p.login-head {font-size: 110px;margin-bottom: 0%;line-height: 87px;}
    .login_layout .login-image p.login-small {font-size: 17px;font-weight: 100;}
    .login_layout .login_logo {margin: 23% 0 14% 0;}
    .login_layout .tit.mini_font {font-size: 35px;line-height: 55px;}

  }

  @media screen and (max-width: 992px) {
    .login_layout .log_wrap {  display: flex;flex-wrap: wrap;  align-content: flex-start;}
    .login_layout .login-image {float: inherit;width: 100%;text-align: center;  margin-top: 8%;}
    .login_layout #loginPage {width: 320px;padding: 0px 18px 5%;display: block;margin: auto;    margin-top: 6%;margin-bottom: 15%;}
    .login_layout .login_logo {margin: 8% 0 14% 0;}
    .login_layout .login-image p.login-small {margin-left: 0px}

    .login_layout .tit.mini_font {margin-left: 0px;justify-content: center;}

     .login_layout .log_wrap {margin-bottom: 0%;}
    
  }

  @media screen and (max-width: 768px) {
    .login_layout .login-image p.login-head {font-size: 85px;}
  }

  @media screen and (max-width: 576px) {
    .login_layout .login-image p.login-head {font-size: 55px;margin-bottom: 0%;line-height: 50px;}
    .login_layout .login-image p.login-small {font-size: 15px;font-weight: 300}

    .login_layout .tit.mini_font {font-size: 25px;line-height: 45px;}

  }

  @media screen and (max-width: 375px) {
    .login_layout .login-image p.login-head {font-size: 50px;    line-height: 70px;}
    .login_layout .login-image p.login-small {font-size: 13px;}
    .login_layout #loginPage {width: 100%;padding: 0px 0px 12%;}
  }

</style>