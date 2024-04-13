<script type="text/babel">
  'use strict';

  const componentMenus = [
    {id: 'button', title: '��ư'},
    {id: 'tab', title: '��'},
  ]
  
  function Component() {
    const { cid } = useParams();
    const location = useLocation();

    return (
      <AsideProvider>
        <Aside />
        {cid === 'button' && <ButtonComponent />}
      </AsideProvider>
    )
  }
</script>