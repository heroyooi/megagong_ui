<script type="text/babel">
  'use strict';

  const { createContext } = React;

  const AuthContext = createContext();

  function AuthProvider({ children }) {
    const [user, setUser] = useState(null);

    useEffect(() => {
      console.log('user << ', user);
    }, [user])

    return (
      <AuthContext.Provider value={{ user, setUser }}>
        {children}
      </AuthContext.Provider>
    )
  }

  const useAuth = () => useContext(AuthContext);
</script>