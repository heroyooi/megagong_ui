<script type="text/babel">
  'use strict';

  const componentMenus = [
    {id: 'button', title: '��ư'},
    {id: 'tab', title: '��'},
    {id: 'popup', title: '�˾�'},
  ]
  
  function ComponentLayout() {
    const { cid } = useParams();
    const location = useLocation();

    return (
      <AsideProvider>
        <Aside />
        {cid === 'button' && <ButtonComponent />}
        {cid === 'tab' && <TabComponent />}
        {cid === 'popup' && <PopupComponent />}
      </AsideProvider>
    )
  }
</script>