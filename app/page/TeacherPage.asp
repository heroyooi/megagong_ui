<script type="text/babel">
  'use strict';

  function TeacherPage() {
    const { setDp1, setDp2 } = useAside();

    useEffect(() => {
      Lab.top();
      Lab.showCode();
      
      setDp1(3);
      setDp2(1);
    }, []);

    return (
      <div>Page - Teacher</div>
    )
  }
</script>