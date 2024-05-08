<!-- @@ COMMON -->
<!-- #include virtual = "/app/common/menu/Header.asp"-->
<!-- #include virtual = "/app/common/menu/Footer.asp"-->
<!-- #include virtual = "/app/common/menu/Aside.asp"-->
<!-- #include virtual = "/app/common/page/PageHead.asp"-->
<!-- #include virtual = "/app/common/page/PageContent.asp"-->
<!-- #include virtual = "/app/common/page/PageAnk.asp"-->
<!-- #include virtual = "/app/common/page/Tweet.asp"-->
<!-- // @@ COMMON -->


<!-- @@ LAYOUT -->
<!-- #include virtual = "/app/layout/MainLayout.asp"-->
<!-- #include virtual = "/app/layout/ComponentLayout.asp"-->
<!-- #include virtual = "/app/layout/PageLayout.asp"-->
<!-- #include virtual = "/app/layout/LoginLayout.asp"-->
<!-- // @@ LAYOUT -->


<!-- @@ COMPONENT -->
<!-- #include virtual = "/app/component/MenuComponent.asp"-->
<!-- #include virtual = "/app/component/ButtonComponent.asp"-->
<!-- #include virtual = "/app/component/TabComponent.asp"-->
<!-- #include virtual = "/app/component/PopupComponent.asp"-->
<!-- // @@ COMPONENT -->

<!-- @@ HOOKS -->
<!-- #include virtual = "/app/component/hooks/usePageInit.asp"-->
<!-- #include virtual = "/app/component/hooks/useScrollNavi.asp"-->
<!-- // @@ HOOKS -->


<!-- @@ PAGE -->
<!-- #include virtual = "/app/page/TeacherPage.asp"-->
<!-- // @@ PAGE -->

<!-- @@ CONTEXT -->
<!-- #include virtual = "/app/context/AsideContext.asp"-->
<!-- // @@ CONTEXT -->

<script src="https://cdn.tailwindcss.com"></script>
<script>
tailwind.config = {
  theme: {
    extend: {
      fontFamily: {
      'gapyeongHanseokbong' : ['GapyeongHanseokbongR'],
      'sans' : ['Pretendard']
      },
      colors: {
          mainColor: {
              500: '#3333ff',
          },
          mainColor_gray: {
              500: '#eee',
              600: '#454545',
              700: '#2c2c2c',
          },
      },
      screens: {
        'sm': { max: '1200px' },
        'md': { max: '992px' },
        'lg': { max: '768px' },
        'xl': { max: '576px' },
        '2xl': { max: '375px' },
      },
    }
    
  }
}
</script>
<script type="text/babel">
  'use strict';
  
  function ComponentGuide() {
    const { user, setUser } = useAuth();

    useEffect(() => {
      Lab.onAuthStateChanged();
      authService.onAuthStateChanged((user) => {
        setUser(user);
      });
    }, []);
    return (
      <HashRouter basename="/">
        <Header />
        <div id="container">
          <Route path="/" exact component={MainLayout} />
          <Route path="/component/:cid" component={ComponentLayout} />
          <Route path="/page/:pid" component={PageLayout} />
          {/*<Route path="/blog" component={BlogLayout} />*/}
          <Route path="/login" component={LoginLayout} />
        </div>
        <Footer />
      </HashRouter>
    )
  };
</script>