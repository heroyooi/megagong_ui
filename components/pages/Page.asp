<script type="text/babel">
  'use strict';

  const pageMenus = [
    {id: 'teacher', title: '������'},
    {id: 'exam', title: '������'},
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