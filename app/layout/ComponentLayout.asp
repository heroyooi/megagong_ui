<script type="text/babel">
  'use strict';
  
  function ComponentLayout() {
    const { cid } = useParams();
    const location = useLocation();

    return (
      <AsideProvider>
        <Aside />
        {cid === 'menu' && <MenuComponent />}
        {cid === 'banner' && <BannerComponent />}
        {cid === 'tab' && <TabComponent />}
        {cid === 'popup' && <PopupComponent />}
        {cid === 'dev-popup' && <DevPopupComponent />}
        {cid === 'swiper' && <SwiperComponent />}
        {cid === 'slick' && <SlickComponent />}
        {cid === 'player' && <PlayerComponent />}
        {cid === 'column' && <ColumnComponent />}
      </AsideProvider>
    )
  }
</script>