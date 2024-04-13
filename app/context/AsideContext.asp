<script type="text/babel">
  'use strict';

  const { createContext } = React;

  const AsideContext = createContext();

  function AsideProvider({ children }) {
    const [dp1, setDp1] = useState(2);
    const [dp2, setDp2] = useState(1);

    return (
      <AsideContext.Provider value={{ dp1, dp2, setDp1, setDp2 }}>
        {children}
      </AsideContext.Provider>
    )
  }

  const useAside = () => useContext(AsideContext);
</script>