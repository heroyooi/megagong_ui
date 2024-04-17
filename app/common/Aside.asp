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
          <li className={dp1 == 2 ? "big_nav sec on" : "big_nav sec"} onClick={changeDp1(2)}><a href="javascript:void(0);"><i className='bx bxs-customize'></i>������Ʈ<span></span></a></li>
          {dp1 == 2 && <li className="small_nav_wrap sec">
            <ul className="small_nav_wrap_ul sec">
              <li className={dp1 == 2 && dp2 == 1 ? "small_nav sec on" : "small_nav sec"}><Link to="/component/button">��ư<span></span></Link></li>
              <li className={dp1 == 2 && dp2 == 2 ? "small_nav sec on" : "small_nav sec"}><Link to="/component/tab">��<span></span></Link></li>
              <li className={dp1 == 2 && dp2 == 3 ? "small_nav sec on" : "small_nav sec"}><Link to="/component/popup">�˾�<span></span></Link></li>
              <li className={dp1 == 2 && dp2 == 4 && dp3 == 1 ? "small_nav sec on" : "small_nav sec"}><Link to="/component/slide">�����̵� - Slick<span></span></Link></li>
              <li className={dp1 == 2 && dp2 == 4 && dp3 == 2 ? "small_nav sec on" : "small_nav sec"}><Link to="/component/slide_swiper">�����̵� - Swiper<span></span></Link></li>
              <li className={dp1 == 2 && dp2 == 5 ? "small_nav sec on" : "small_nav sec"}><Link to="/component/list">����Ʈ<span></span></Link></li>
              <li className={dp1 == 2 && dp2 == 6 ? "small_nav sec on" : "small_nav sec"}><Link to="/component/table">ǥ(���̺�)<span></span></Link></li>
              <li className={dp1 == 2 && dp2 == 7 ? "small_nav sec on" : "small_nav sec"}><Link to="/component/icon">������<span></span></Link></li>
              <li className={dp1 == 2 && dp2 == 8 ? "small_nav sec on" : "small_nav sec"}><Link to="/component/form">��<span></span></Link></li>
              <li className={dp1 == 2 && dp2 == 9 ? "small_nav sec on" : "small_nav sec"}><Link to="/component/player">������<span></span></Link></li>
              <li className={dp1 == 2 && dp2 == 10 ? "small_nav sec on" : "small_nav sec"}><Link to="/component/chart">��Ʈ<span></span></Link></li>
              <li className={dp1 == 2 && dp2 == 11 ? "small_nav sec on" : "small_nav sec"}><Link to="/component/selectbox">����Ʈ�ڽ�<span></span></Link></li>
              <li className={dp1 == 2 && dp2 == 12 ? "small_nav sec on" : "small_nav sec"}><Link to="/component/calendar">�޷�<span></span></Link></li>
              <li className={dp1 == 2 && dp2 == 13 ? "small_nav sec on" : "small_nav sec"}><Link to="/component/effect">Ư�� ȿ��<span></span></Link></li>
              <li className={dp1 == 2 && dp2 == 14 ? "small_nav sec on" : "small_nav sec"}><Link to="/component/checkbox">üũ�ڽ�<span></span></Link></li>
            </ul>
          </li>}
          <li className={dp1 == 3 ? "big_nav srd on" : "big_nav srd"} onClick={changeDp1(3)}><a href="javascript:void(0);"><i className='bx bxs-layout'></i>������<span></span></a></li>
          {dp1 == 3 && <li className="small_nav_wrap srd">
            <ul className="small_nav_wrap_ul srd">
              <li className={dp1 == 3 && dp2 == 1 ? "small_nav srd on" : "small_nav srd"}><Link to="/page/teacher">������<span></span></Link></li>
              <li className={dp1 == 3 && dp2 == 2 ? "small_nav srd on" : "small_nav srd"}><Link to="/page/exam">������<span></span></Link></li>
              <li className={dp1 == 3 && dp2 == 3 ? "small_nav srd on" : "small_nav srd"}><Link to="/page/mockexam">���ǰ��<span></span></Link></li>
              <li className={dp1 == 3 && dp2 == 4 ? "small_nav srd on" : "small_nav srd"}><Link to="/page/event">������ �̺�Ʈ&amp;���θ��<span></span></Link></li>
              <li className={dp1 == 3 && dp2 == 6 ? "small_nav srd on" : "small_nav srd"}><Link to="/page/fullservice">Ǯ����<span></span></Link></li>
            </ul>
          </li>}
          <li className={dp1 == 4 ? "big_nav srd on" : "big_nav srd"} onClick={changeDp1(4)}><Link to="/blog"><i className='bx bxs-detail'></i>��α�<span></span></Link></li>
        </ul>
      </div>

    )
  }
</script>