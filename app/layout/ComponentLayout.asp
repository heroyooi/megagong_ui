<script type="text/babel">
  'use strict';

  const componentMenus = [
    {id: 'menu', title: '메뉴'},
    {id: 'button', title: '버튼'},
    {id: 'tab', title: '탭'},
    {id: 'popup', title: '팝업'},
    {id: 'slide', title: '슬라이드'},
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
        {cid === 'slide' && <SlideComponent />}
      </AsideProvider>
    )
  }
</script>