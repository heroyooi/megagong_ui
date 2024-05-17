<script type="text/babel">
  'use strict';

  function PageLayout() {
    const { pid, cid } = useParams();
    const location = useLocation();

    return (
      <AsideProvider>
        <Aside />
        {pid === 'common' && <CommonPage cid={cid} />}
        {pid === 'main' && <MainPage cid={cid} />}
        {pid === 'teacher' && <TeacherPage />}
      </AsideProvider>
    )
  }
</script>