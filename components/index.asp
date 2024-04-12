<!-- #include virtual = "/components/common/Header.asp"-->
<!-- #include virtual = "/components/common/Aside.asp"-->

<!-- #include virtual = "/components/pages/Main.asp"-->
<!-- #include virtual = "/components/pages/Component.asp"-->
<!-- #include virtual = "/components/pages/Page.asp"-->
<!-- #include virtual = "/components/pages/Blog.asp"-->

<!-- #include virtual = "/components/component/Button.asp"-->
<!-- #include virtual = "/components/component/Tab.asp"-->

<script type="text/babel">
  'use strict';
  
  function ComponentGuide() {
      return (
          <BrowserRouter basename="/">
              <Header />
              <Route path="/" exact component={Main} />
              <Route path="/component/:cid" component={Component} />
              <Route path="/page/:pid" component={Page} />
              {/*<Route path="/blog" component={Blog} />*/}
          </BrowserRouter>
      )
  };
</script>