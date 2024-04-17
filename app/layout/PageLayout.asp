<script type="text/babel">
  'use strict';

  const pageMenus = [
    {id: 'teacher', title: '������'},
    {id: 'exam', title: '������'},
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