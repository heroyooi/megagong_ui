<script type="text/babel">
  'use strict';

  const componentMenus = [
    {id: 'menu', title: '메뉴'},
    {id: 'button', title: '버튼'},
    {id: 'tab', title: '탭'},
    {id: 'popup', title: '팝업'},
    {id: 'swiper', title: '슬라이드 - Swiper'},
    {id: 'slick', title: '슬라이드 - Slick'},
  ]
  
  function ComponentLayout() {
    const { cid } = useParams();
    const location = useLocation();

    return (
      <AsideProvider>
        <Aside />
        {cid === 'menu' && <MenuComponent />}
        {cid === 'tab' && <TabComponent />}
        {cid === 'popup' && <PopupComponent />}
        {cid === 'dev-popup' && <DevPopupComponent />}
        {cid === 'swiper' && <SwiperComponent />}
        {cid === 'slick' && <SlickComponent />}
      </AsideProvider>
    )
  }
</script>