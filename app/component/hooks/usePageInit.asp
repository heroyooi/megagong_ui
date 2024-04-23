<script type="text/babel">
  'use strict';
  
  function usePageInit(dp1, dp2) {
    const { setDp1, setDp2 } = useAside();

    useEffect(() => {
      window.scrollTo(0, 0);
      document.querySelectorAll('code').forEach((element) => {
        hljs.highlightElement(element);
      });

      setDp1(dp1);
      setDp2(dp2);
    }, []);

    return null;
  }
</script>