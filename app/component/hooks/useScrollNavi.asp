<script type="text/babel">
  'use strict';
  
  function useScrollNavi(position, refs, setState, margin, callback) {

    const location = useLocation();
    const searchParams = new URLSearchParams(location.search);
    const id = searchParams.get('id');
    const goUI = useRef(false);
    const timeout1 = useRef(null);
    const timeout2 = useRef(null);

    useEffect(() => {
      if (id && !goUI.current) {
        window.scrollTo(0, 0);
        timeout1.current = setTimeout(() => {
          window.scrollTo({ top: position.current[id - 1] });
          setState(id - 1);
          goUI.current = true;
        }, 750);
        return () => clearTimeout(timeout1.current);
      }
    }, [id, refs.current, position.current, callback])

    useEffect(() => {
      timeout2.current = setTimeout(() => {
        refs.current.forEach((ref, index) => {
          // console.log('>> ', ref.offsetTop);
          position.current[index] = ref?.offsetTop - margin;
        });
      }, 600);
      return () => clearTimeout(timeout2.current);
    }, [refs.current, position.current, callback]);

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
    }, [refs.current, position.current, callback]);

    return null;
  }
</script>