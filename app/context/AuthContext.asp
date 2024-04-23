<script type="text/babel">
  'use strict';

  const { createContext } = React;

  const AuthContext = createContext();

  function AuthProvider({ children }) {
    const [admin, setAdmin] = useState(false);
    const [user, setUser] = useState(null);

    useEffect(() => {
      console.log('user > ', user);
      setAdmin(FBU_ADMIN_UID === user?.uid);
    }, [user])

    return (
      <AuthContext.Provider value={{ user, setUser, admin }}>
        {children}
      </AuthContext.Provider>
    )
  }

  const useAuth = () => useContext(AuthContext);
</script>