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
      <div className="guide-aside fixed top-0 left-0 w-60 h-full pt-32 z-[4] overflow-y-auto transition ease-in-out delay-150 box-border bg-gradient-to-t from-mainColor_gray-600 to-mainColor_gray-700 text-neutral-400">
        <ul className="w-full">
          <li className={`big_nav sec py-3 text-base font-bold pl-10 cursor-pointer text-white ${dp1 == 2 ? "on bg-gradient-to-r from-mainColor-500" : ""}`} onClick={changeDp1(2)}><a href="javascript:void(0);"><i className='bx bxs-customize mr-2.5 text-xl align-bottom'></i>������Ʈ<span></span></a></li>
          {dp1 == 2 && <li className="small_nav_wrap sec box-border w-full h-full py-2.5 pl-7 pr-2.5">
            <ul className="small_nav_wrap_ul sec [&>li]:after:bg-mainColor-500 [&>li]:after:h-full [&>li]:text-base [&>li]:flex [&>li]:relative [&_a]:pl-4 [&_a]:py-2 [&_a]:w-full [&_a]:block [&_a]:transition [&_a]:duration-150 [&_a]:ease-out [&_a]:truncate [&_a]:text-sm">
              {/*
              <li className={`small_nav sec hover:text-white ${dp1 == 2 && dp2 == 1 ? "on text-white" : ""}`}><Link to="/component/button" className="">��ư<span></span></Link></li>
              
              */}
              <li className={`small_nav sec hover:text-white ${dp1 == 2 && dp2 == 1 ? "on text-white" : ""}`}><Link to="/component/menu" className="">�޴�<span></span></Link></li>
              <li className={`small_nav sec hover:text-white ${dp1 == 2 && dp2 == 2 ? "on text-white" : ""}`}><Link to="/component/tab" className="">��<span></span></Link></li>
              <li className={`small_nav sec hover:text-white ${dp1 == 2 && dp2 == 3 ? "on text-white" : ""}`}><Link to="/component/popup" className="">�˾�<span></span></Link></li>
              <li className={`small_nav sec hover:text-white ${dp1 == 2 && dp2 == 4 && dp3 == 1 ? "on text-white" : ""}`}><Link to="/component/slick" className="">�����̵� - Slick<span></span></Link></li>
              <li className={`small_nav sec hover:text-white ${dp1 == 2 && dp2 == 4 && dp3 == 2 ? "on text-white" : ""}`}><Link to="/component/swiper" className="">�����̵� - Swiper<span></span></Link></li>
              {/*
              <li className={`small_nav sec hover:text-white ${dp1 == 2 && dp2 == 5 ? "on text-white" : ""}`}><Link to="/component/list" className="">����Ʈ<span></span></Link></li>
              <li className={`small_nav sec hover:text-white ${dp1 == 2 && dp2 == 6 ? "on text-white" : ""}`}><Link to="/component/table" className="">ǥ(���̺�)<span></span></Link></li>
              <li className={`small_nav sec hover:text-white ${dp1 == 2 && dp2 == 7 ? "on text-white" : ""}`}><Link to="/component/icon" className="">������<span></span></Link></li>
              <li className={`small_nav sec hover:text-white ${dp1 == 2 && dp2 == 8 ? "on text-white" : ""}`}><Link to="/component/form" className="">��<span></span></Link></li>
              <li className={`small_nav sec hover:text-white ${dp1 == 2 && dp2 == 9 ? "on text-white" : ""}`}><Link to="/component/player" className="">������<span></span></Link></li>
              <li className={`small_nav sec hover:text-white ${dp1 == 2 && dp2 == 10 ? "on text-white" : ""}`}><Link to="/component/chart" className="">��Ʈ<span></span></Link></li>
              <li className={`small_nav sec hover:text-white ${dp1 == 2 && dp2 == 11 ? "on text-white" : ""}`}><Link to="/component/selectbox" className="">����Ʈ�ڽ�<span></span></Link></li>
              <li className={`small_nav sec hover:text-white ${dp1 == 2 && dp2 == 12 ? "on text-white" : ""}`}><Link to="/component/calendar" className="">�޷�<span></span></Link></li>
              <li className={`small_nav sec hover:text-white ${dp1 == 2 && dp2 == 13 ? "on text-white" : ""}`}><Link to="/component/effect" className="">Ư�� ȿ��<span></span></Link></li>
              <li className={`small_nav sec hover:text-white ${dp1 == 2 && dp2 == 14 ? "on text-white" : ""}`}><Link to="/component/checkbox" className="">üũ�ڽ�<span></span></Link></li>
              */}
            </ul>
          </li>}
          <li className={`big_nav srd py-3 text-base font-bold pl-10 cursor-pointer text-white ${dp1 == 3 ? "on bg-gradient-to-r from-mainColor-500" : ""}`} onClick={changeDp1(3)}><a href="javascript:void(0);"><i className='bx bxs-layout mr-2.5 text-xl align-bottom'></i>������<span></span></a></li>
          {dp1 == 3 && <li className="small_nav_wrap srd box-border w-full h-full py-2.5 pl-7 pr-2.5">
            <ul className="small_nav_wrap_ul srd [&>li]:after:bg-mainColor-500 [&>li]:after:h-full [&>li]:text-base [&>li]:flex [&>li]:relative [&_a]:pl-4 [&_a]:py-2 [&_a]:w-full [&_a]:block [&_a]:transition [&_a]:duration-150 [&_a]:ease-out [&_a]:truncate [&_a]:text-sm">
              <li className={`small_nav srd hover:text-white ${dp1 == 3 && dp2 == 1 ? "on text-white" : ""}`}><Link to="/page/teacher" className="">������<span></span></Link></li>
              <li className={`small_nav srd hover:text-white ${dp1 == 3 && dp2 == 2 ? "on text-white" : ""}`}><Link to="/page/exam" className="">������<span></span></Link></li>
              <li className={`small_nav srd hover:text-white ${dp1 == 3 && dp2 == 3 ? "on text-white" : ""}`}><Link to="/page/mockexam" className="" text-sm>���ǰ��<span></span></Link></li>
              <li className={`small_nav srd hover:text-white ${dp1 == 3 && dp2 == 4 ? "on text-white" : ""}`}><Link to="/page/event" className="">������ �̺�Ʈ&amp;���θ��<span></span></Link></li>
              <li className={`small_nav srd hover:text-white ${dp1 == 3 && dp2 == 6 ? "on text-white" : ""}`}><Link to="/page/fullservice" className="">Ǯ����<span></span></Link></li>
            </ul>
          </li>}
        </ul>
      </div>

    )
  }
</script>