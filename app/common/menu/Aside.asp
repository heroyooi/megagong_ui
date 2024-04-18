<script type="text/babel">
  'use strict';
  function Aside() {
    const history = useHistory();
    const { dp1, dp2, dp3, setDp1 } = useAside();

    useEffect(() => {
      Lab.aside();
    }, []);

    const changeDp1 = (dp1) => (e) => {
      setDp1(dp1);
      if (dp1 == 4) {
        history.push('/blog');
      }
    }

    return (
      <div className="guide-aside">
        <ul>
          <li className={dp1 == 2 ? "big_nav sec on" : "big_nav sec"} onClick={changeDp1(2)}><a href="javascript:void(0);"><i className='bx bxs-customize'></i>컴포넌트<span></span></a></li>
          {dp1 == 2 && <li className="small_nav_wrap sec">
            <ul className="small_nav_wrap_ul sec">
              <li className={dp1 == 2 && dp2 == 1 ? "small_nav sec on" : "small_nav sec"}><Link to="/component/button">버튼<span></span></Link></li>
              <li className={dp1 == 2 && dp2 == 2 ? "small_nav sec on" : "small_nav sec"}><Link to="/component/tab">탭<span></span></Link></li>
              <li className={dp1 == 2 && dp2 == 3 ? "small_nav sec on" : "small_nav sec"}><Link to="/component/popup">팝업<span></span></Link></li>
              <li className={dp1 == 2 && dp2 == 4 && dp3 == 1 ? "small_nav sec on" : "small_nav sec"}><Link to="/component/slide">슬라이드 - Slick<span></span></Link></li>
              <li className={dp1 == 2 && dp2 == 4 && dp3 == 2 ? "small_nav sec on" : "small_nav sec"}><Link to="/component/slide_swiper">슬라이드 - Swiper<span></span></Link></li>
              <li className={dp1 == 2 && dp2 == 5 ? "small_nav sec on" : "small_nav sec"}><Link to="/component/list">리스트<span></span></Link></li>
              <li className={dp1 == 2 && dp2 == 6 ? "small_nav sec on" : "small_nav sec"}><Link to="/component/table">표(테이블)<span></span></Link></li>
              <li className={dp1 == 2 && dp2 == 7 ? "small_nav sec on" : "small_nav sec"}><Link to="/component/icon">아이콘<span></span></Link></li>
              <li className={dp1 == 2 && dp2 == 8 ? "small_nav sec on" : "small_nav sec"}><Link to="/component/form">폼<span></span></Link></li>
              <li className={dp1 == 2 && dp2 == 9 ? "small_nav sec on" : "small_nav sec"}><Link to="/component/player">동영상<span></span></Link></li>
              <li className={dp1 == 2 && dp2 == 10 ? "small_nav sec on" : "small_nav sec"}><Link to="/component/chart">차트<span></span></Link></li>
              <li className={dp1 == 2 && dp2 == 11 ? "small_nav sec on" : "small_nav sec"}><Link to="/component/selectbox">셀렉트박스<span></span></Link></li>
              <li className={dp1 == 2 && dp2 == 12 ? "small_nav sec on" : "small_nav sec"}><Link to="/component/calendar">달력<span></span></Link></li>
              <li className={dp1 == 2 && dp2 == 13 ? "small_nav sec on" : "small_nav sec"}><Link to="/component/effect">특수 효과<span></span></Link></li>
              <li className={dp1 == 2 && dp2 == 14 ? "small_nav sec on" : "small_nav sec"}><Link to="/component/checkbox">체크박스<span></span></Link></li>
            </ul>
          </li>}
          <li className={dp1 == 3 ? "big_nav srd on" : "big_nav srd"} onClick={changeDp1(3)}><a href="javascript:void(0);"><i className='bx bxs-layout'></i>페이지<span></span></a></li>
          {dp1 == 3 && <li className="small_nav_wrap srd">
            <ul className="small_nav_wrap_ul srd">
              <li className={dp1 == 3 && dp2 == 1 ? "small_nav srd on" : "small_nav srd"}><Link to="/page/teacher">선생님<span></span></Link></li>
              <li className={dp1 == 3 && dp2 == 2 ? "small_nav srd on" : "small_nav srd"}><Link to="/page/exam">진단평가<span></span></Link></li>
              <li className={dp1 == 3 && dp2 == 3 ? "small_nav srd on" : "small_nav srd"}><Link to="/page/mockexam">모의고사<span></span></Link></li>
              <li className={dp1 == 3 && dp2 == 4 ? "small_nav srd on" : "small_nav srd"}><Link to="/page/event">선생님 이벤트&amp;프로모션<span></span></Link></li>
              <li className={dp1 == 3 && dp2 == 6 ? "small_nav srd on" : "small_nav srd"}><Link to="/page/fullservice">풀서비스<span></span></Link></li>
            </ul>
          </li>}
          <li className={dp1 == 4 ? "big_nav srd on" : "big_nav srd"} onClick={changeDp1(4)}><Link to="/blog"><i className='bx bxs-detail'></i>블로그<span></span></Link></li>
        </ul>
      </div>

    )
  }
</script>