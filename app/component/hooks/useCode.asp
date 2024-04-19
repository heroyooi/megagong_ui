<script type="text/babel">
  'use strict';
  
  function useCode(initialValue, ref) {
    const [view, setView] = useState(initialValue);

    useEffect(() => {
      if (view && ref.current) {
        // ref.current.scrollIntoView({ behavior: 'smooth' });
        window.scrollTo({
          top: ref.current.offsetTop - (80 + 50),
          behavior: 'smooth'
        });
      }
    }, [view])

    const onView = () => {
      setView(prev => !prev);
    }

    return [view, onView];
  }
</script>