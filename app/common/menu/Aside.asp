<script type="text/babel">
  'use strict';
  function Aside() {
    const history = useHistory();
    const { dp1, dp2, dp3, setDp1, setDp2, setDp3 } = useAside();

    useEffect(() => {
      Lab.aside();
    }, []);

    const changeDp = (dp1, dp2, dp3) => (e) => {
      setDp1(dp1);
      setDp2(dp2);
      setDp3(dp3);
    }

    return (
      <div className="guide-aside fixed top-0 left-0 w-60 h-full pt-32 z-[4] overflow-y-auto transition ease-in-out delay-150 box-border bg-gradient-to-t from-mainColor_gray-600 to-mainColor_gray-700 text-neutral-400">
        <ul className="w-full">
          <li className={`big_nav sec py-3 text-base font-bold pl-10 cursor-pointer text-white ${dp1 == 2 ? "on bg-gradient-to-r from-mainColor-500" : ""}`} onClick={changeDp(2, 0, 0)}><a href="javascript:;"><i className='bx bxs-customize mr-2.5 text-xl align-bottom'></i>������Ʈ<span></span></a></li>
          {dp1 == 2 && <li className="small_nav_wrap sec box-border w-full h-full py-2.5 pl-7 pr-2.5">
            <ul className="small_nav_wrap_ul sec [&>li]:after:bg-mainColor-500 [&>li]:after:h-full [&>li]:text-base [&>li]:flex [&>li]:relative [&_a]:pl-4 [&_a]:py-2 [&_a]:w-full [&_a]:block [&_a]:transition [&_a]:duration-150 [&_a]:ease-out [&_a]:truncate [&_a]:text-sm">
              <li className={`small_nav sec hover:text-white ${dp1 == 2 && dp2 == 3 && dp3 == 1 ? "on text-white" : ""}`}><Link to="/component/popup">�ۺ� �˾�<span></span></Link></li>
              <li className={`small_nav sec hover:text-white ${dp1 == 2 && dp2 == 3 && dp3 == 2 ? "on text-white" : ""}`}><Link to="/component/dev-popup">���� �˾�<span></span></Link></li>
              <li className={`small_nav sec hover:text-white ${dp1 == 2 && dp2 == 4 && dp3 == 1 ? "on text-white" : ""}`}><Link to="/component/swiper">�����̵� - Swiper<span></span></Link></li>
              <li className={`small_nav sec hover:text-white ${dp1 == 2 && dp2 == 4 && dp3 == 2 ? "on text-white" : ""}`}><Link to="/component/slick">�����̵� - Slick<span></span></Link></li>
              <li className={`small_nav sec hover:text-white ${dp1 == 2 && dp2 == 2 ? "on text-white" : ""}`}><Link to="/component/tab">��<span></span></Link></li>
              <li className={`small_nav sec hover:text-white ${dp1 == 2 && dp2 == 5 ? "on text-white" : ""}`}><Link to="/component/player">���� �÷��̾�<span></span></Link></li>
              <li className={`small_nav sec hover:text-white ${dp1 == 2 && dp2 == 6 ? "on text-white" : ""}`}><Link to="/component/column">Į��<span></span></Link></li>
            </ul>
          </li>}
          <li className={`big_nav srd py-3 text-base font-bold pl-10 cursor-pointer text-white ${dp1 == 3 ? "on bg-gradient-to-r from-mainColor-500" : ""}`} onClick={changeDp(3, 0, 0)}><a href="javascript:;"><i className='bx bxs-layout mr-2.5 text-xl align-bottom'></i>������<span></span></a></li>
          {dp1 == 3 && <li className="small_nav_wrap srd box-border w-full h-full py-2.5 pl-7 pr-2.5">
            <ul className="small_nav_wrap_ul srd [&>li]:after:bg-mainColor-500 [&>li]:after:h-full [&>li]:text-base [&>li]:flex [&>li]:relative [&_a]:pl-4 [&_a]:py-2 [&_a]:w-full [&_a]:block [&_a]:transition [&_a]:duration-150 [&_a]:ease-out [&_a]:truncate [&_a]:text-sm">
              <li className={`small_nav srd flex-col ${dp1 == 3 && dp2 == 1 ? "on" : ""}`}>
                <Link to="/page/common/menu" className={`dep2_wrap ${dp1 == 3 && dp2 == 1 ? "text-white on" : ""}`} onClick={changeDp(3, 1, 1)}>����<span></span></Link>
                <ul className="pl-4">
                  <li className={`small_nav srd hover:text-white flex-col dep3_wrap ${dp1 == 3 && dp2 == 1 && dp3 == 1 ? "on text-white bg-gradient-to-r from-mainColor-500" : ""}`}>
                    <Link to="/page/common/menu" onClick={changeDp(3, 1, 1)}>�޴�<span></span></Link>
                  </li>
                  <li className={`small_nav srd hover:text-white flex-col dep3_wrap ${dp1 == 3 && dp2 == 1 && dp3 == 2 ? "on text-white bg-gradient-to-r from-mainColor-500" : ""}`}>
                    <Link to="/page/common/banner" onClick={changeDp(3, 1, 2)}>���<span></span></Link>
                  </li>
                </ul>
              </li>
              <li className={`small_nav srd flex-col ${dp1 == 3 && dp2 == 2 ? "on" : ""}`}>
                <Link to="/page/main/banner" className={`dep2_wrap ${dp1 == 3 && dp2 == 2 ? "text-white on" : ""}`} onClick={changeDp(3, 2, 1)}>����<span></span></Link>
                <ul className="pl-4">
                  <li className={`small_nav srd hover:text-white flex-col dep3_wrap ${dp1 == 3 && dp2 == 2 && dp3 == 1 ? "on text-white bg-gradient-to-r  from-mainColor-500" : ""}`}>
                    <Link to="/page/main/banner" onClick={changeDp(3, 2, 1)}>���<span></span></Link>
                  </li>
                </ul>
              </li>
              <li className={`small_nav srd hover:text-white dep2_wrap ${dp1 == 3 && dp2 == 3 ? "on text-white dep2_wrap" : ""}`}><Link to="/page/teacher">������<span></span></Link></li>
              <li className={`small_nav srd hover:text-white dep2_wrap ${dp1 == 3 && dp2 == 4 ? "on text-white dep2_wrap" : ""}`}><Link to="/page/mockexam">���� ���ǰ��<span></span></Link></li>
              <li className={`small_nav srd flex-col ${dp1 == 3 && dp2 == 5 ? "on" : ""}`}>
                <Link to="/page/event/period" className={`dep2_wrap ${dp1 == 3 && dp2 == 5 ? "text-white on" : ""}`} onClick={changeDp(3, 5, 1)}>�̺�Ʈ<span></span></Link>
                <ul className="pl-4">
                  <li className={`small_nav srd hover:text-white flex-col dep3_wrap ${dp1 == 3 && dp2 == 5 && dp3 == 1 ? "on text-white bg-gradient-to-r  from-mainColor-500" : ""}`}>
                    <Link to="/page/event/period" onClick={changeDp(3, 5, 1)}>�̺�Ʈ �Ⱓ<span></span></Link>
                  </li>
                </ul>
              </li>
              <li className={`small_nav srd hover:text-white ${dp1 == 3 && dp2 == 6 ? "on text-white" : ""}`}>
                <Link to="/page/exam">������<span></span></Link>
              </li>
              {/*
              
              <li className={`small_nav srd hover:text-white ${dp1 == 3 && dp2 == 6 ? "on text-white" : ""}`}><Link to="/page/event">������ �̺�Ʈ&amp;���θ��<span></span></Link></li>
              <li className={`small_nav srd hover:text-white ${dp1 == 3 && dp2 == 7 ? "on text-white" : ""}`}><Link to="/page/fullservice">Ǯ����<span></span></Link></li>*/}
            </ul>
          </li>}
        </ul>
      </div>

    )
  }
</script>