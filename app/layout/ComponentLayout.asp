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
        {pid === 'column' && <ColumnComponent />}
        {pid === 'table' && <TableComponent />}
        {pid === 'popup' && <PopupComponent cid={cid} />}
        {/*cid === 'dev-popup' && <DevPopupComponent />*/}
        {/*cid === 'menu' && <MenuComponent />*/}
        {/*cid === 'swiper' && <SwiperComponent />*/}
        {/*cid === 'slick' && <SlickComponent />*/}
        {/*cid === 'player' && <PlayerComponent />*/}
      </AsideProvider>
    )
  }
</script>