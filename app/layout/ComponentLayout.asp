<script type="text/babel">
  'use strict';

  const componentMenus = [
    {id: 'menu', title: '¸Þ´º'},
    {id: 'button', title: '¹öÆ°'},
    {id: 'tab', title: 'ÅÇ'},
    {id: 'popup', title: 'ÆË¾÷'},
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
      </AsideProvider>
    )
  }
</script>