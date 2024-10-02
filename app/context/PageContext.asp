<script type="text/babel">
  'use strict';

  const { createContext } = React;

  const PageContext = createContext();

  function PageProvider({ children }) {
    const timeout = useRef(null);
    const initCode = useRef(false);
    const [activeIndex, setActiveIndex] = useState(0);

    const moveComponent = (position, index) => {
      window.scrollTo({
        top: position.current[index],
        behavior: 'smooth',
      });
    }

    return (
      <PageContext.Provider value={{ initCode, moveComponent, activeIndex, setActiveIndex }}>
        {children}
      </PageContext.Provider>
    )
  }

  const usePage = () => useContext(PageContext);
</script>