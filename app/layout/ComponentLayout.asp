<script type="text/babel">
  'use strict';

  const componentMenus = [
    {id: 'menu', title: '�޴�'},
    {id: 'button', title: '��ư'},
    {id: 'tab', title: '��'},
    {id: 'popup', title: '�˾�'},
    {id: 'slide', title: '�����̵�'},
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