<script type="text/babel">
  'use strict';

  const { createContext } = React;

  const AsideContext = createContext();

  function AsideProvider({ children }) {
    const [dp1, setDp1] = useState(2);
    const [dp2, setDp2] = useState(1);
    const [dp3, setDp3] = useState(1);

    return (
      <AsideContext.Provider value={{ dp1, dp2, dp3, setDp1, setDp2, setDp3 }}>
        {children}
      </AsideContext.Provider>
    )
  }

  const useAside = () => useContext(AsideContext);
</script>