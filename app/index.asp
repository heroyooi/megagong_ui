<!-- @@ COMMON -->
<!-- #include virtual = "/app/common/menu/Header.asp"-->
<!-- #include virtual = "/app/common/menu/Footer.asp"-->
<!-- #include virtual = "/app/common/menu/Aside.asp"-->
<!-- #include virtual = "/app/common/page/PageHeader.asp"-->
<!-- #include virtual = "/app/common/page/PageContent.asp"-->
<!-- #include virtual = "/app/common/page/PageAnk.asp"-->
<!-- #include virtual = "/app/common/page/Tweet.asp"-->
<!-- // @@ COMMON -->

<!-- @@ LAYOUT -->
<!-- #include virtual = "/app/layout/MainLayout.asp"-->
<!-- #include virtual = "/app/layout/ComponentLayout.asp"-->
<!-- #include virtual = "/app/layout/PageLayout.asp"-->
<!-- // @@ LAYOUT -->


<!-- @@ COMPONENT -->
<!-- #include virtual = "/app/component/BannerComponent.asp"-->
<!-- #include virtual = "/app/component/ButtonComponent.asp"-->
<!-- #include virtual = "/app/component/TabComponent.asp"-->
<!-- #include virtual = "/app/component/ColumnComponent.asp"-->
<!-- #include virtual = "/app/component/TableComponent.asp"-->
<!-- #include virtual = "/app/component/PopupComponent.asp"-->
<!-- #include virtual = "/app/component/DevPopupComponent.asp"-->
<!-- #include virtual = "/app/component/SwiperComponent.asp"-->
<!-- #include virtual = "/app/component/SlickComponent.asp"-->
<!-- #include virtual = "/app/component/PlayerComponent.asp"-->
<!-- // @@ COMPONENT -->

<!-- @@ HOOKS -->
<!-- #include virtual = "/app/component/hooks/usePageInit.asp"-->
<!-- #include virtual = "/app/component/hooks/useScrollNavi.asp"-->
<!-- // @@ HOOKS -->


<!-- @@ PAGE -->
<!-- #include virtual = "/app/page/CommonPage.asp"-->
<!-- #include virtual = "/app/page/MainPage.asp"-->
<!-- #include virtual = "/app/page/TeacherPage.asp"-->
<!-- #include virtual = "/app/page/MockexamPage.asp"-->
<!-- #include virtual = "/app/page/EventPage.asp"-->
<!-- #include virtual = "/app/page/ExamPage.asp"-->
<!-- // @@ PAGE -->

<!-- @@ CONTEXT -->
<!-- #include virtual = "/app/context/AsideContext.asp"-->
<!-- #include virtual = "/app/context/PageContext.asp"-->
<!-- // @@ CONTEXT -->

<script src="https://cdn.tailwindcss.com"></script>
<script>
tailwind.config = {
  theme: {
    extend: {
      fontFamily: {
      // 'gapyeongHanseokbong' : ['GapyeongHanseokbongR'],
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
    return (
      <HashRouter basename="/">
        <Header />
        <div id="container">
          <PageProvider>
            <Route path="/" exact component={MainLayout} />
            <Route path="/component/:pid" exact component={ComponentLayout} />
            <Route path="/component/:pid/:cid" exact component={ComponentLayout} />
            <Route path="/page/:pid" exact component={PageLayout} />
            <Route path="/page/:pid/:cid" exact component={PageLayout} />
          </PageProvider>
        </div>
        <Footer />
      </HashRouter>
    )
  };
</script>