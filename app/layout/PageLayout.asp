<script type="text/babel">
  'use strict';

  const pageMenus = [
    {id: 'teacher', title: '선생님'},
    {id: 'exam', title: '진단평가'},
  ]
  
  function PageLayout() {
    const { pid } = useParams();
    const location = useLocation();

    return (
      <AsideProvider>
        <Aside />
        {pid === 'teacher' && <TeacherPage />}
      </AsideProvider>
    )
  }
</script>