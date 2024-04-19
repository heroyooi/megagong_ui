<script type="text/babel">
    'use strict';

    function Header() {
        const history = useHistory();
        const { user, setUser } = useAuth();
        const [activeMenu, setActiveMenu] = useState(false);

        const logoutAction = async () => {
          if ($items.length) {
            $items.hide();
          }
          await authService.signOut();
          deleteCookie(FBU_EMAIL);
          deleteCookie(FBU_PWD);
          await userRef.doc(USER_DOC_ID).update({
            loggedIn: false,
            logDate: Date.now(),
          });
          // Lab.refreshUser();
          history.push('/');
          setUser(null);
          setActiveMenu(false);
        }

        useEffect(() => {
          if (activeMenu) {
            document.querySelector('.header_wrp').classList.add('open_menu');
            document.body.classList.add('no_scroll');
          } else {
            document.querySelector('.header_wrp').classList.remove('open_menu');
            document.body.classList.remove('no_scroll');
          }

          return () => {
            document.body.classList.remove('no_scroll');
          }
        }, [activeMenu]);

        const toggleMenu = () => {
          setActiveMenu(prev => !prev);
        }
        const closeMenu = (link) => () => {
          history.push(link);
          setActiveMenu(false);
        }

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
                    {user && <li id="js_test"><Link to="/js_test">JS TEST</Link></li>}
                  </ul>
                  <ul className="util_list">
                    {user
                      ? (
                        <>
                          <li className="authorized profile"><span>{user.displayName}</span>(<em>{user.email}</em>)�� ȯ���մϴ�.</li>
                          <li className="authorized logout" onClick={logoutAction}><a className="btn"><i className='bx bx-log-out'></i></a></li>
                        </>
                      ) : (
                        <>
                          <li className="anonymous"><Link to="/login">LOGIN</Link></li>
                          <li className="anonymous"><Link to="/signup">SIGNUP</Link></li>
                        </>
                      )}
                  </ul>
                </nav>
                <button type="button" className="btn_menu" onClick={toggleMenu}>
                  <div className="shape">
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 18 14" xmlSpace="preserve">
                      <g>
                        <rect x="0" y="0" width="18" height="2" rx="1"/>
                        <rect x="0" y="6" width="18" height="2" rx="1"/>
                        <rect x="0" y="12" width="18" height="2" rx="1"/>
                      </g>
                    </svg>
                  </div>
                </button>
                <div className="mo_dimm"></div>
                <div className="mo_menu_wrp">
                  <ul className="nav_list">
                    <li onClick={closeMenu('/component/button')}><a>COMPONENT</a></li>
                    <li onClick={closeMenu('/page/teacher')}><a>PAGE</a></li>
                    <li onClick={closeMenu('/blog')}><a>BLOG</a></li>
                    {user && <li onClick={closeMenu('/js_test')}><a>JS TEST</a></li>}
                  </ul>
                  <ul className="util_list">
                    {user
                      ? (
                        <>
                          <li className="authorized profile"><span>{user.displayName}</span>(<em>{user.email}</em>)�� ȯ���մϴ�.</li>
                          <li className="authorized logout" onClick={logoutAction}><a className="btn"><i className='bx bx-log-out'></i></a></li>
                        </>
                      ) : (
                        <>
                          <li onClick={closeMenu('/login')} className="anonymous"><a>LOGIN</a></li>
                          <li onClick={closeMenu('/signup')} className="anonymous"><a>SIGNUP</a></li>
                        </>
                      )}
                  </ul>
                </div>
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