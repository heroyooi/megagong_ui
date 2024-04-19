<script type="text/babel">
  'use strict';
  
  function useScrollNavi(position, refs, setState, margin) {
    useEffect(() => {
      refs.current.forEach((ref, index) => {
        position.current[index] = ref.offsetTop - margin;
      });
    }, []);

    useEffect(() => {
      const handleScroll = () => {
        const scrollY = window.scrollY;
        if (window.scrollY >= 0 && window.scrollY < position.current[1]) {
          setState(0);
        }
        if (window.scrollY >= position.current[1] && window.scrollY <= position.current[2]) {
          setState(1);
        }
        if (window.scrollY >= position.current[2] && window.scrollY <= position.current[3]) {
          setState(2);
        }
        if (window.scrollY >= position.current[3] && window.scrollY <= position.current[4]) {
          setState(3);
        }
        if (window.scrollY >= position.current[4]) {
          setState(4);
        }
      }
      const handleResize = () => {
        refs.current.forEach((ref, index) => {
          position.current[index] = ref.offsetTop;
        });
      }
      window.addEventListener('scroll', handleScroll);
      window.addEventListener('resize', handleResize);
      return () => {
        window.removeEventListener('scroll', handleScroll);
        window.addEventListener('resize', handleResize);
      };
    }, []);

    return null;
  }
</script>