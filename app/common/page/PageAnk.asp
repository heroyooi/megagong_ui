<script type="text/babel">
  'use strict';

  function PageAnk({ position, data, active }) {
    const { initCode, moveComponent } = usePage();
    const [activeAnk, setActiveAnk] = useState(true);
    
    const listEl = useRef(null);
    const goComponent = useCallback((index) => () => {
      moveComponent(position, index);
    }, [position, active]);
    
    useEffect(() => {
      const pos = listEl.current.children[active - 1]?.offsetTop;
      listEl.current.scrollTo({
        top: active < 2 ? 0 : pos,
        behavior: 'smooth',
      })
    }, [position, active]);

    return (
      <div className="ank">
        <button onClick={() => setActiveAnk(prev => !prev)}><i className="bx bx-chevrons-down"></i></button>
        <ul className={activeAnk ? "" : "close_list"} ref={listEl}>
          {data.map((item, index) => <li key={index} className={active == index ? "ank_list on" : "ank_list"} onClick={goComponent(index)}><a>#{index + 1} {item.title}</a></li>)}
        </ul>
      </div>
    )
  }
</script>