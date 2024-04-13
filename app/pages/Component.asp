<script type="text/babel">
  'use strict';

  const componentMenus = [
    {id: 'button', title: '¹öÆ°'},
    {id: 'tab', title: 'ÅÇ'},
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