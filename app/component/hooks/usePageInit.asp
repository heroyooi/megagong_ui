<script type="text/babel">
  'use strict';
  
  function usePageInit(dp1, dp2, dp3) {
    const { setDp1, setDp2, setDp3 } = useAside();

    useEffect(() => {
      window.scrollTo(0, 0);
      document.querySelectorAll('code').forEach((element) => {
        hljs.highlightElement(element);
      });

      setDp1(dp1);
      setDp2(dp2);
      setDp3(dp3);
    }, []);

    return null;
  }
</script>