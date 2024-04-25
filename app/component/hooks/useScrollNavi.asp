<script type="text/babel">
  'use strict';
  
  function useScrollNavi(position, refs, setState, margin) {
    const location = useLocation();
    const searchParams = new URLSearchParams(location.search);
    const id = searchParams.get('id');

    useEffect(() => {
      if (id) {
        window.scrollTo({ top: position.current[id - 1] });
        setState(id - 1);
      }
    }, [id])

    useEffect(() => {
      setTimeout(() => {
        refs.current.forEach((ref, index) => {
          // console.log('>> ', ref.offsetTop);
          position.current[index] = ref.offsetTop - margin;
        });
      }, 250);
    }, [refs.current, position.current]);

    useEffect(() => {
      // console.log('>> ', refs.current.length, position.current)
      const handleScroll = () => {
        const scrollY = window.scrollY;
        for (let i = 0; i < refs.current.length; i++) {
          if (i == 0) {
            if (window.scrollY >= i && window.scrollY < position.current[i+1]) {
              setState(i);
            }
          } else if (i == refs.current.length - 1) {
            if (window.scrollY >= position.current[i]) {
              setState(i);
            }
          } else if (window.scrollY >= position.current[i] && window.scrollY <= position.current[i+1]) {
            setState(i);
          }
          
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
    }, [refs.current, position.current]);

    return null;
  }
</script>