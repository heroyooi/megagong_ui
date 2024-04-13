<script type="text/babel">
    'use strict';

    function Header() {
        return (
          <>
            <header className="header_wrp">
              <div className="header">
                <button type="button" className="btn_menu2">
                  <i className='bx bx-plus'></i>
                </button>
                <h1 className="logo"><Link to="/">COMPONENT GUIDE</Link></h1>
                <nav id="gnb">
                  <ul className="nav_list">
                    <li><Link to="/component/button">COMPONENT</Link></li>
                    <li><Link to="/page/teacher">PAGE</Link></li>
                    <li><Link to="/blog">BLOG</Link></li>
                    <li id="js_test"><a href="/js_test">JS TEST</a></li>
                  </ul>
                  <ul className="util_list">
                    <li className="authorized profile" style={{ display: "none" }}><span>ȫ�浿</span>(<em>honggildong</em>)�� ȯ���մϴ�.</li>
                    <li className="authorized logout" style={{ display: "none" }}><a onClick="logoutAction(); return false;" href="#" className="btn"><i className='bx bx-log-out'></i></a></li>
                    <li className="anonymous"><a href="/login.asp">LOGIN</a></li>
                    <li className="anonymous"><a href="/signup.asp">SIGNUP</a></li>
                  </ul>
                </nav>
                <button type="button" className="btn_menu">
                  <div className="shape">
                    {/*<svg vid="menu_btn" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 18 14" xml:space="preserve">
                      <g>
                        <rect x="0" y="0" width="18" height="2" rx="1"/>
                        <rect x="0" y="6" width="18" height="2" rx="1"/>
                        <rect x="0" y="12" width="18" height="2" rx="1"/>
                      </g>
                    </svg>*/}
                  </div>
                </button>
                <div className="mo_dimm"></div>
                <div className="mo_menu_wrp"></div>
              </div>
            </header>

            <div className="login_dim profile_dim"></div>
            <div className="login-area profile_popup" id="profilePopup" style={{ display: "none" }}>
              <p>���� ����</p>
              <p className="login_close_btn"><i className='bx bx-x' style={{ color: "#c9c9c9" }}></i></p>
              <div className="loginInp">
                  <div className="loginName input_row">
                      <p className="profile_img"><i className='bx bx-user-circle'></i></p>
                      <p className="profile_tit">�̸�</p>
                      <span><input type="text" className="input_base"  placeholder="�̸�" value="" /></span>
                  </div>
                  <div className="user_time">
                    <ul>
                      <li>
                        <p className="profile_tit">�ֱ� ����</p>
                        <span className="user_timer_span" id="user_timer_new">2022-10-06</span>
                      </li>
                      <li>
                        <p className="profile_tit">���� ����</p>
                      <span className="user_timer_span" id="user_timer_signup">2022-09-26</span>
                      </li>
                    </ul>
                  </div>
              </div>
              <div className="btn">
                  <a href="javascript:void(0)" className="btn_base" onClick="editMemberAction(); return false;">�����Ϸ�</a>
                  <a href="javascript:void(0)" className="btn_base" onClick="deleteMemberAction(); return false;">ȸ��Ż��</a>
              </div>
            </div>
          </>
        );
    };
</script>