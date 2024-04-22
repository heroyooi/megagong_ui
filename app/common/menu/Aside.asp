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
        <ul className="w-full">
          <li className={`big_nav sec py-3 text-base font-bold pl-10 cursor-pointer ${dp1 == 2 ? "on bg-gradient-to-r from-mainColor-500" : ""}`} onClick={changeDp1(2)}><a href="javascript:void(0);"><i className='bx bxs-customize'></i>������Ʈ<span></span></a></li>
          {dp1 == 2 && <li className="small_nav_wrap sec box-border w-full h-full py-2.5 pl-7 pr-2.5">
            <ul className="small_nav_wrap_ul sec">
              <li className={`small_nav sec after:bg-mainColor-500 after:h-full text-base flex relative ${dp1 == 2 && dp2 == 1 ? "on" : ""}`}><Link to="/component/button" className="pl-4 py-3.5">��ư<span></span></Link></li>
              <li className={`small_nav sec after:bg-mainColor-500 after:h-full text-base flex relative ${dp1 == 2 && dp2 == 2 ? "on" : ""}`}><Link to="/component/tab" className="pl-4 py-3.5">��<span></span></Link></li>
              <li className={`small_nav sec after:bg-mainColor-500 after:h-full text-base flex relative ${dp1 == 2 && dp2 == 3 ? "on" : ""}`}><Link to="/component/popup" className="pl-4 py-3.5">�˾�<span></span></Link></li>
              <li className={`small_nav sec after:bg-mainColor-500 after:h-full text-base flex relative ${dp1 == 2 && dp2 == 4 && dp3 == 1 ? "on" : ""}`}><Link to="/component/slide" className="pl-4 py-3.5">�����̵� - Slick<span></span></Link></li>
              <li className={`small_nav sec after:bg-mainColor-500 after:h-full text-base flex relative ${dp1 == 2 && dp2 == 4 && dp3 == 2 ? "on" : ""}`}><Link to="/component/slide_swiper" className="pl-4 py-3.5">�����̵� - Swiper<span></span></Link></li>
              <li className={`small_nav sec after:bg-mainColor-500 after:h-full text-base flex relative ${dp1 == 2 && dp2 == 5 ? "on" : ""}`}><Link to="/component/list" className="pl-4 py-3.5">����Ʈ<span></span></Link></li>
              <li className={`small_nav sec after:bg-mainColor-500 after:h-full text-base flex relative ${dp1 == 2 && dp2 == 6 ? "on" : ""}`}><Link to="/component/table" className="pl-4 py-3.5">ǥ(���̺�)<span></span></Link></li>
              <li className={`small_nav sec after:bg-mainColor-500 after:h-full text-base flex relative ${dp1 == 2 && dp2 == 7 ? "on" : ""}`}><Link to="/component/icon" className="pl-4 py-3.5">������<span></span></Link></li>
              <li className={`small_nav sec after:bg-mainColor-500 after:h-full text-base flex relative ${dp1 == 2 && dp2 == 8 ? "on" : ""}`}><Link to="/component/form" className="pl-4 py-3.5">��<span></span></Link></li>
              <li className={`small_nav sec after:bg-mainColor-500 after:h-full text-base flex relative ${dp1 == 2 && dp2 == 9 ? "on" : ""}`}><Link to="/component/player" className="pl-4 py-3.5">������<span></span></Link></li>
              <li className={`small_nav sec after:bg-mainColor-500 after:h-full text-base flex relative ${dp1 == 2 && dp2 == 10 ? "on" : ""}`}><Link to="/component/chart" className="pl-4 py-3.5">��Ʈ<span></span></Link></li>
              <li className={`small_nav sec after:bg-mainColor-500 after:h-full text-base flex relative ${dp1 == 2 && dp2 == 11 ? "on" : ""}`}><Link to="/component/selectbox" className="pl-4 py-3.5">����Ʈ�ڽ�<span></span></Link></li>
              <li className={`small_nav sec after:bg-mainColor-500 after:h-full text-base flex relative ${dp1 == 2 && dp2 == 12 ? "on" : ""}`}><Link to="/component/calendar" className="pl-4 py-3.5">�޷�<span></span></Link></li>
              <li className={`small_nav sec after:bg-mainColor-500 after:h-full text-base flex relative ${dp1 == 2 && dp2 == 13 ? "on" : ""}`}><Link to="/component/effect" className="pl-4 py-3.5">Ư�� ȿ��<span></span></Link></li>
              <li className={`small_nav sec after:bg-mainColor-500 after:h-full text-base flex relative ${dp1 == 2 && dp2 == 14 ? "on" : ""}`}><Link to="/component/checkbox" className="pl-4 py-3.5">üũ�ڽ�<span></span></Link></li>
            </ul>
          </li>}
          <li className={`big_nav srd py-3 text-base font-bold pl-10 cursor-pointer ${dp1 == 3 ? "on bg-gradient-to-r from-mainColor-500" : ""}`} onClick={changeDp1(3)}><a href="javascript:void(0);"><i className='bx bxs-layout'></i>������<span></span></a></li>
          {dp1 == 3 && <li className="small_nav_wrap srd box-border w-full h-full py-2.5 pl-7 pr-2.5">
            <ul className="small_nav_wrap_ul srd">
              <li className={`small_nav srd after:bg-mainColor-500 after:h-full text-base flex relative ${dp1 == 3 && dp2 == 1 ? "on" : ""}`}><Link to="/page/teacher" className="pl-4 py-3.5">������<span></span></Link></li>
              <li className={`small_nav srd after:bg-mainColor-500 after:h-full text-base flex relative ${dp1 == 3 && dp2 == 2 ? "on" : ""}`}><Link to="/page/exam" className="pl-4 py-3.5">������<span></span></Link></li>
              <li className={`small_nav srd after:bg-mainColor-500 after:h-full text-base flex relative ${dp1 == 3 && dp2 == 3 ? "on" : ""}`}><Link to="/page/mockexam" className="pl-4 py-3.5">���ǰ��<span></span></Link></li>
              <li className={`small_nav srd after:bg-mainColor-500 after:h-full text-base flex relative ${dp1 == 3 && dp2 == 4 ? "on" : ""}`}><Link to="/page/event" className="pl-4 py-3.5">������ �̺�Ʈ&amp;���θ��<span></span></Link></li>
              <li className={`small_nav srd after:bg-mainColor-500 after:h-full text-base flex relative ${dp1 == 3 && dp2 == 6 ? "on" : ""}`}><Link to="/page/fullservice" className="pl-4 py-3.5">Ǯ����<span></span></Link></li>
            </ul>
          </li>}
          <li className={`big_nav srd py-3 text-base font-bold pl-10 cursor-pointer ${dp1 == 4 ? "on bg-gradient-to-r from-mainColor-500" : ""}`} onClick={changeDp1(4)}><Link to="/blog"><i className='bx bxs-detail'></i>��α�<span></span></Link></li>
        </ul>
      </div>

    )
  }
</script>