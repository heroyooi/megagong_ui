<!-- #include virtual = "/app/component/banner/SSBannerR.asp"-->
<!-- #include virtual = "/app/component/banner/SSBannerL.asp"-->
<!-- #include virtual = "/app/component/banner/PassBanner.asp"-->
<!-- #include virtual = "/app/component/banner/PassBannerEtc.asp"-->
<!-- #include virtual = "/app/component/banner/PassBannerPretty.asp"-->

<script type="text/babel">
  'use strict';

  function BannerComponent({ cid }) {
    let componentArray = [];
    let sub = "";
    let text = "";
    if (cid == "ss") {
      componentArray = [
        {
          title: "SS 배너 - 우측 상단",
          component: SSBannerR
        },
        {
          title: "SS 배너 - 좌측 상단",
          component: SSBannerL
        },
      ]
      sub = "SS 배너";
      text = "메가공무원에서 사용하는 SS 배너 컴포넌트입니다.<br />메인 페이지에서 작고 다양한 배너들을 통해서 이용자들이 메가공무원에서 운영하고 있는 다양한 컨텐츠들을 빠르게 확인하고 접근할 수 있도록 도와줍니다.";
      usePageInit(1, 1, 1);
    } else if (cid == "pass") {
      componentArray = [
        {
          title: "패스 배너 - 메가패스",
          component: PassBanner
        },
        {
          title: "패스 배너 - 기타 메가패스",
          component: PassBannerEtc
        },
        {
          title: "패스 배너 - 프리티패스",
          component: PassBannerPretty
        },
      ]
      sub = "패스 배너";
      text = "메가공무원에서 사용하는 패스 배너 컴포넌트입니다.<br />메가공무원의 핵심 서비스인 패스 상품을 바로 확인할 수 있습니다.";
      usePageInit(1, 1, 2);
    }
    const componentRefs = useRef(Array(componentArray.length).fill(null));
    const componentPosition = useRef([]);
    const [componentActive, setComponentActive] = useState(0);

    const toggleCode = () => {}
    useScrollNavi(componentPosition, componentRefs, setComponentActive, 120, toggleCode, cid);

    return (
      <PageProvider>
        <div className="page_wrap w-[1392px] ml-60 h-full overflow-x-hidden relative sm:w-[100%] sm:ml-0 pb-[150px]" id="page_wrap">
          <div className="page_inner w-5/6 ml-8 pt-32">
            <PageHeader name="Banner" sub={sub} text={text} />
            {componentArray.map((item, index) => <div key={index} ref={el => componentRefs.current[index] = el}><item.component title={item.title} onChange={toggleCode} /></div>)}
            {/*<Tweet />*/}
          </div>
        </div>
        <PageAnk position={componentPosition} data={componentArray} active={componentActive} />
      </PageProvider>
    )
  }
</script>