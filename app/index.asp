<!-- #include virtual = "/app/common/Header.asp"-->
<!-- #include virtual = "/app/common/Aside.asp"-->

<!-- #include virtual = "/app/pages/Main.asp"-->
<!-- #include virtual = "/app/pages/Component.asp"-->
<!-- #include virtual = "/app/pages/Page.asp"-->
<!-- #include virtual = "/app/pages/Blog.asp"-->

<!-- #include virtual = "/app/component/Button.asp"-->
<!-- #include virtual = "/app/component/Tab.asp"-->

<script type="text/babel">
  'use strict';
  
  function ComponentGuide() {
      return (
          <HashRouter basename="/">
              <Header />
              <Route path="/" exact component={Main} />
              <Route path="/component/:cid" component={Component} />
              <Route path="/page/:pid" component={Page} />
              {/*<Route path="/blog" component={Blog} />*/}
          </HashRouter>
      )
  };
</script>