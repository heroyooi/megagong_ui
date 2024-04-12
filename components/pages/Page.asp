<script type="text/babel">
  'use strict';

  const pageMenus = [
    {id: 'teacher', title: '선생님'},
    {id: 'exam', title: '진단평가'},
  ]
  
  function Page() {
    const { pid } = useParams();
    const location = useLocation();

    return (
      <>
      {pid === 'button' && <Button />}
      </>
    )
  }
</script>