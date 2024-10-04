<script type="text/babel">
  'use strict';
  
  function ComponentLayout() {
    const { pid, cid } = useParams();
    const location = useLocation();

    return (
      <AsideProvider>
        <Aside />
        {pid === 'banner' && <BannerComponent cid={cid} />}
        {pid === 'button' && <ButtonComponent />}
        {pid === 'tab' && <TabComponent />}
        {/*cid === 'menu' && <MenuComponent />*/}
        {/*cid === 'popup' && <PopupComponent />*/}
        {/*cid === 'dev-popup' && <DevPopupComponent />*/}
        {/*cid === 'swiper' && <SwiperComponent />*/}
        {/*cid === 'slick' && <SlickComponent />*/}
        {/*cid === 'player' && <PlayerComponent />*/}
        {/*cid === 'column' && <ColumnComponent />*/}
      </AsideProvider>
    )
  }
</script>