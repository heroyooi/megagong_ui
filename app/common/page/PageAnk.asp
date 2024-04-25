<script type="text/babel">
  'use strict';

  function PageAnk({ position, data, active }) {
    const [activeAnk, setActiveAnk] = useState(true);
    const goComponent = useCallback((index) => () => {
      window.scrollTo({
        top: position.current[index],
        behavior: 'smooth',
      });
    }, [position]);

    return (
      <div className="ank">
        <button onClick={() => setActiveAnk(prev => !prev)}><i className="bx bx-chevrons-down"></i></button>
        <ul className={activeAnk ? "" : "close_list"}>
          {data.map((item, index) => <li key={index} className={active == index ? "ank_list on" : "ank_list"} onClick={goComponent(index)}><a>#{index + 1} {item.title}</a></li>)}
        </ul>
      </div>
    )
  }
</script>