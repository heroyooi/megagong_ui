<script type="text/babel">
  'use strict';

  const componentMenus = [
    {id: 'menu', title: '메뉴'},
    {id: 'button', title: '버튼'},
    {id: 'tab', title: '탭'},
    {id: 'popup', title: '팝업'},
    {id: 'swiper', title: '슬라이드 - Swiper'},
  ]
  
  function ComponentLayout() {
    const { cid } = useParams();
    const location = useLocation();

    return (
      <AsideProvider>
        <Aside />
        {cid === 'menu' && <MenuComponent />}
        {/* cid === 'button' && <ButtonComponent /> */}
        {cid === 'tab' && <TabComponent />}
        {cid === 'popup' && <PopupComponent />}
        {cid === 'swiper' && <SwiperComponent />}
      </AsideProvider>
    )
  }
</script>