<script type="text/babel">
    'use strict';

    function Header() {
        const history = useHistory();
        // const { user, setUser, mode } = useAuth();
        const [activeMenu, setActiveMenu] = useState(false);
        const [activeLnb, setActiveLnb] = useState(false);

        // const logoutAction = async () => {
        //   if ($items.length) {
        //     $items.hide();
        //   }
        //   await authService.signOut();
        //   deleteCookie(FBU_EMAIL);
        //   deleteCookie(FBU_PWD);
        //   await userRef.doc(USER_DOC_ID).update({
        //     loggedIn: false,
        //     logDate: Date.now(),
        //   });
        //   // Lab.refreshUser();
        //   history.push('/');
        //   setUser(null);
        //   setActiveMenu(false);
        // }

        useEffect(() => {
          if (activeMenu) {
            document.querySelector('.header_wrp').classList.add('open_menu');
            document.body.classList.add('no_scroll');
          } else {
            document.querySelector('.header_wrp').classList.remove('open_menu');
            document.body.classList.remove('no_scroll');
          }

          return () => {
            document.querySelector('.header_wrp').classList.remove('open_menu');
            document.body.classList.remove('no_scroll');
          }
        }, [activeMenu]);

        useEffect(() => {
          if (activeLnb) {
            document.querySelector('.guide-aside')?.classList.add('open_nav');
          } else {
            document.querySelector('.guide-aside')?.classList.remove('open_nav');
          }

          return () => {
            document.querySelector('.guide-aside')?.classList.remove('open_nav');
          }
        }, [activeLnb]);

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
                <button type="button" className="btn_menu2" onClick={() => setActiveLnb(prev => !prev)}>
                  <i className='bx bx-plus'></i>
                </button>
                <h1 className="logo"><Link to="/">COMPONENT GUIDE</Link></h1>
                <nav id="gnb">
                  <ul className="nav_list">
                    <li><Link to="/component/popup">COMPONENT</Link></li>
                    <li><Link to="/page/common/menu">PAGE</Link></li>
                    {/* <li><Link to="/blog">BLOG</Link></li> */}
                    {/*user && <li id="js_test"><Link to="/js_test">JS TEST</Link></li>*/}
                  </ul>
                  {/*mode == 'authenticate' && (<ul className="util_list">
                    {user
                      ? (
                        <>
                          <li className="authorized profile"><span>{user.displayName}</span>(<em>{user.email}</em>)ดิ</li>
                          <li className="authorized logout" onClick={logoutAction}><a className="btn"><i className='bx bx-log-out'></i></a></li>
                        </>
                      ) : (
                        <>
                          <li className="anonymous"><Link to="/login">LOGIN</Link></li>
                          <li className="anonymous"><Link to="/signup">SIGNUP</Link></li>
                        </>
                      )}
                  </ul>)*/}
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
                    <li onClick={closeMenu('/component/popup')}><a>COMPONENT</a></li>
                    <li onClick={closeMenu('/page/common/menu')}><a>PAGE</a></li>
                  </ul>
                </div>
              </div>
            </header>
          </>
        );
    };
</script>