<script type="text/babel">
  'use strict';

  const componentMenus = [
    {id: 'menu', title: '�޴�'},
    {id: 'button', title: '��ư'},
    {id: 'tab', title: '��'},
    {id: 'popup', title: '�˾�'},
    {id: 'swiper', title: '�����̵� - Swiper'},
    {id: 'slick', title: '�����̵� - Slick'},
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