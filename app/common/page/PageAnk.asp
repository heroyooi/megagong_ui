<script type="text/babel">
  'use strict';

  function PageAnk({ position, data, active }) {
    const goComponent = useCallback((index) => () => {
      window.scrollTo({
        top: position.current[index],
        behavior: 'smooth',
      });
    }, []);
    return (
      <div className="ank">
        <button><i className="bx bx-chevrons-down"></i></button>
        <ul>
          {data.map((item, index) => <li className={active == index ? "ank_list on" : "ank_list"} onClick={goComponent(index)}><a>#{index + 1} {item.title}</a></li>)}
        </ul>
      </div>
    )
  }
</script>