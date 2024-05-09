<script type="text/babel">
  'use strict';

  const { createContext } = React;

  const PageContext = createContext();

  function PageProvider({ children }) {
    const timeout = useRef(null);
    const clickAnk = useRef(0);
    const initCode = useRef(false);

    const moveComponent = (position, index) => {
      // setTimeout(() => {
        // window.scrollTo(0, 0);
        window.scrollTo({
          top: position.current[index],
          behavior: 'smooth',
        });
      // }, 500);
    }

    return (
      <PageContext.Provider value={{ clickAnk, initCode, moveComponent }}>
        {children}
      </PageContext.Provider>
    )
  }

  const usePage = () => useContext(PageContext);
</script>