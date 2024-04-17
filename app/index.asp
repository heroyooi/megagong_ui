<!-- @@ COMMON -->
<!-- #include virtual = "/app/common/Header.asp"-->
<!-- #include virtual = "/app/common/Footer.asp"-->
<!-- #include virtual = "/app/common/Aside.asp"-->
<!-- #include virtual = "/app/common/PageHead.asp"-->
<!-- // @@ COMMON -->


<!-- @@ LAYOUT -->
<!-- #include virtual = "/app/layout/MainLayout.asp"-->
<!-- #include virtual = "/app/layout/ComponentLayout.asp"-->
<!-- #include virtual = "/app/layout/PageLayout.asp"-->
<!-- #include virtual = "/app/layout/LoginLayout.asp"-->
<!-- #include virtual = "/app/layout/BlogLayout.asp"-->
<!-- // @@ LAYOUT -->


<!-- @@ COMPONENT -->
<!-- #include virtual = "/app/component/ButtonComponent.asp"-->
<!-- #include virtual = "/app/component/TabComponent.asp"-->
<!-- // @@ COMPONENT -->


<!-- @@ PAGE -->
<!-- #include virtual = "/app/page/TeacherPage.asp"-->
<!-- // @@ PAGE -->

<!-- @@ CONTEXT -->
<!-- #include virtual = "/app/context/AsideContext.asp"-->
<!-- // @@ CONTEXT -->


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
        <Route path="/" exact component={MainLayout} />
        <Route path="/component/:cid" component={ComponentLayout} />
        <Route path="/page/:pid" component={PageLayout} />
        {/*<Route path="/blog" component={BlogLayout} />*/}
        <Route path="/login" component={LoginLayout} />
        <Footer />
      </HashRouter>
    )
  };
</script>