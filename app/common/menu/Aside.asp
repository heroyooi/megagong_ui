<script type="text/babel">
  'use strict';
  function Aside() {
    const AsideDiv = "guide-aside fixed top-0 left-0 w-60 h-full pt-32 z-[4] overflow-y-auto transition ease-in-out delay-150 box-border bg-gradient-to-t from-mainColor_gray-600 to-mainColor_gray-700 text-neutral-400";
    const Depth1Li = (active) => `big_nav sec py-3 text-base font-bold pl-10 cursor-pointer text-white ${active ? "on bg-gradient-to-r from-mainColor-500" : ""}`;
    const Depth2Ul = "small_nav_wrap_ul srd [&>li]:after:bg-mainColor-500 [&>li]:after:h-full [&>li]:text-base [&>li]:flex [&>li]:relative [&_a]:pl-4 [&_a]:py-2 [&_a]:w-full [&_a]:block [&_a]:transition [&_a]:duration-150 [&_a]:ease-out [&_a]:truncate [&_a]:text-sm";
    const Depth2Li = (active) => `small_nav srd flex-col ${active ? "on" : ""}`;
    const Depth2Link = (active) => `dep2_wrap ${active ? "text-white on" : ""}`;
    const Depth3Li = (active) => `small_nav srd hover:text-white flex-col dep3_wrap ${active ? "on text-white bg-gradient-to-r from-mainColor-500" : ""}`

    const history = useHistory();
    const { dp1, dp2, dp3, setDp1, setDp2, setDp3 } = useAside();

    useEffect(() => {
      Lab.aside();
    }, []);

    const changeDp = useCallback((dp1, dp2, dp3) => (e) => {
      setDp1(dp1);
      setDp2(dp2);
      setDp3(dp3);
      window.scrollTo(0, 0);
    }, []);

    return (
      <div className={AsideDiv}>
        <ul className="w-full">
          <li className={Depth1Li(dp1 == 1)} onClick={changeDp(1, 0, 0)}><a href="javascript:;"><i className='bx bxs-customize mr-2.5 text-xl align-bottom'></i>컴포넌트<span></span></a></li>
          {dp1 == 1 && <li className="small_nav_wrap sec box-border w-full h-full py-2.5 pl-7 pr-2.5">
            <ul className={Depth2Ul}>
              <li className={Depth2Li(dp1 == 1 && dp2 == 1)}>
                <Link to="/component/banner/ss" className={Depth2Link(dp1 == 1 && dp2 == 1)} onClick={changeDp(1, 1, 1)}>배너<span></span></Link>
                <ul className="pl-4">
                  <li className={Depth3Li(dp1 == 1 && dp2 == 1 && dp3 == 1)}>
                    <Link to="/component/banner/ss" onClick={changeDp(1, 1, 1)}>SS 배너<span></span></Link>
                  </li>
                  <li className={Depth3Li(dp1 == 1 && dp2 == 1 && dp3 == 2)}>
                    <Link to="/component/banner/pass" onClick={changeDp(1, 1, 2)}>패스 배너<span></span></Link>
                  </li>
                </ul>
              </li>
              <li className={Depth2Li(dp1 == 1 && dp2 == 2)}>
                <Link to="/component/button" className={Depth2Link(dp1 == 1 && dp2 == 2)} onClick={changeDp(1, 2)}>버튼<span></span></Link>
              </li>
              <li className={Depth2Li(dp1 == 1 && dp2 == 3)}>
                <Link to="/component/tab" className={Depth2Link(dp1 == 1 && dp2 == 3)} onClick={changeDp(1, 3)}>탭<span></span></Link>
              </li>
              <li className={Depth2Li(dp1 == 1 && dp2 == 4)}>
                <Link to="/component/column" className={Depth2Link(dp1 == 1 && dp2 == 4)} onClick={changeDp(1, 4)}>게시판<span></span></Link>
              </li>
              <li className={Depth2Li(dp1 == 1 && dp2 == 5)}>
                <Link to="/component/table" className={Depth2Link(dp1 == 1 && dp2 == 5)} onClick={changeDp(1, 5)}>테이블<span></span></Link>
              </li>
              {/*<li className={`small_nav sec hover:text-white ${dp1 == 2 && dp2 == 3 && dp3 == 1 ? "on text-white" : ""}`}><Link to="/component/popup">퍼블 팝업<span></span></Link></li>*/}
            </ul>
          </li>}



          <li className={`big_nav srd py-3 text-base font-bold pl-10 cursor-pointer text-white ${dp1 == 3 ? "on bg-gradient-to-r from-mainColor-500" : ""}`} onClick={changeDp(3, 0, 0)}><a href="javascript:;"><i className='bx bxs-layout mr-2.5 text-xl align-bottom'></i>페이지<span></span></a></li>
          {dp1 == 3 && <li className="small_nav_wrap srd box-border w-full h-full py-2.5 pl-7 pr-2.5">
            <ul className="small_nav_wrap_ul srd [&>li]:after:bg-mainColor-500 [&>li]:after:h-full [&>li]:text-base [&>li]:flex [&>li]:relative [&_a]:pl-4 [&_a]:py-2 [&_a]:w-full [&_a]:block [&_a]:transition [&_a]:duration-150 [&_a]:ease-out [&_a]:truncate [&_a]:text-sm">
              <li className={`small_nav srd flex-col ${dp1 == 3 && dp2 == 1 ? "on" : ""}`}>
                <Link to="/page/common/menu" className={`dep2_wrap ${dp1 == 3 && dp2 == 1 ? "text-white on" : ""}`} onClick={changeDp(3, 1, 1)}>공통<span></span></Link>
                <ul className="pl-4">
                  <li className={`small_nav srd hover:text-white flex-col dep3_wrap ${dp1 == 3 && dp2 == 1 && dp3 == 1 ? "on text-white bg-gradient-to-r from-mainColor-500" : ""}`}>
                    <Link to="/page/common/menu" onClick={changeDp(3, 1, 1)}>메뉴<span></span></Link>
                  </li>
                  <li className={`small_nav srd hover:text-white flex-col dep3_wrap ${dp1 == 3 && dp2 == 1 && dp3 == 2 ? "on text-white bg-gradient-to-r from-mainColor-500" : ""}`}>
                    <Link to="/page/common/banner" onClick={changeDp(3, 1, 2)}>배너<span></span></Link>
                  </li>
                </ul>
              </li>
              <li className={`small_nav srd flex-col ${dp1 == 3 && dp2 == 2 ? "on" : ""}`}>
                <Link to="/page/main/banner" className={`dep2_wrap ${dp1 == 3 && dp2 == 2 ? "text-white on" : ""}`} onClick={changeDp(3, 2, 1)}>메인<span></span></Link>
                <ul className="pl-4">
                  <li className={`small_nav srd hover:text-white flex-col dep3_wrap ${dp1 == 3 && dp2 == 2 && dp3 == 1 ? "on text-white bg-gradient-to-r  from-mainColor-500" : ""}`}>
                    <Link to="/page/main/banner" onClick={changeDp(3, 2, 1)}>배너<span></span></Link>
                  </li>
                </ul>
              </li>
              <li className={`small_nav srd hover:text-white dep2_wrap ${dp1 == 3 && dp2 == 3 ? "on text-white dep2_wrap" : ""}`}><Link to="/page/teacher">선생님<span></span></Link></li>
              <li className={`small_nav srd hover:text-white dep2_wrap ${dp1 == 3 && dp2 == 4 ? "on text-white dep2_wrap" : ""}`}><Link to="/page/mockexam">전국 모의고사<span></span></Link></li>
              <li className={`small_nav srd flex-col ${dp1 == 3 && dp2 == 5 ? "on" : ""}`}>
                <Link to="/page/event/title" className={`dep2_wrap ${dp1 == 3 && dp2 == 5 ? "text-white on" : ""}`} onClick={changeDp(3, 5, 1)}>이벤트<span></span></Link>
                <ul className="pl-4">
                  <li className={`small_nav srd hover:text-white flex-col dep3_wrap ${dp1 == 3 && dp2 == 5 && dp3 == 1 ? "on text-white bg-gradient-to-r  from-mainColor-500" : ""}`}>
                    <Link to="/page/event/title" onClick={changeDp(3, 5, 1)}>타이틀<span></span></Link>
                  </li>
                  <li className={`small_nav srd hover:text-white flex-col dep3_wrap ${dp1 == 3 && dp2 == 5 && dp3 == 2 ? "on text-white bg-gradient-to-r  from-mainColor-500" : ""}`}>
                    <Link to="/page/event/lecture" onClick={changeDp(3, 5, 2)}>강좌 목록<span></span></Link>
                  </li>
                  <li className={`small_nav srd hover:text-white flex-col dep3_wrap ${dp1 == 3 && dp2 == 5 && dp3 == 3 ? "on text-white bg-gradient-to-r  from-mainColor-500" : ""}`}>
                    <Link to="/page/event/period" onClick={changeDp(3, 5, 3)}>이벤트 기간<span></span></Link>
                  </li>
                  <li className={`small_nav srd hover:text-white flex-col dep3_wrap ${dp1 == 3 && dp2 == 5 && dp3 == 4 ? "on text-white bg-gradient-to-r  from-mainColor-500" : ""}`}>
                    <Link to="/page/event/share" onClick={changeDp(3, 5, 4)}>공유하기<span></span></Link>
                  </li>
                </ul>
              </li>
              <li className={`small_nav srd hover:text-white dep2_wrap ${dp1 == 3 && dp2 == 6 ? "on text-white dep2_wrap" : ""}`}><Link to="/page/exam" onClick={changeDp(3, 6, 0)}>진단평가<span></span></Link></li>
            </ul>
          </li>}
        </ul>
      </div>

    )
  }
</script>