<!-- #include virtual = "/app/page/main/BannerRightSky.asp"-->
<!-- #include virtual = "/app/page/main/BannerMegaPass.asp"-->
<!-- #include virtual = "/app/page/main/BannerMegasPick.asp"-->
<!-- #include virtual = "/app/page/main/BannerEvent.asp"-->
<!-- #include virtual = "/app/page/main/BannerMonthNew.asp"-->

<script type="text/babel">
  'use strict';

  function MainPage({ cid }) {
    let componentArray = [];
    let sub = "";
    let text = "";
    if (cid == "banner") {
      componentArray = [
        {
          title: "메가패스 배너",
          component: BannerMegaPass
        },
        {
          title: "Mega's Pick",
          component: BannerMegasPick
        },
        {
          title: "이벤트 배너",
          component: BannerEvent
        },
        {
          title: "이 달의 새 강좌",
          component: BannerMonthNew
        },
        {
          title: "우측 상단 배너",
          component: BannerRightSky
        },
      ];
      sub = "메인 - 배너";
      text = "메가공무원 메인 페이지에서 사용하는 배너 컴포넌트를 소개합니다.";
    } else if (cid == "") {
      componentArray = [];
      sub = "";
      text = "";
    }
    
    const { initCode } = usePage();
    const componentRefs = useRef(Array(componentArray.length).fill(null));
    const componentPosition = useRef([]);
    const [componentActive, setComponentActive] = useState(0);

    // const { user } = useAuth();

    const toggleCode = () => {}

    if (cid == "banner") {
      usePageInit(3, 2, 1);
    } else if (cid == "") {
      usePageInit(3, 2, 2);
    }

    useScrollNavi(componentPosition, componentRefs, setComponentActive, 120, toggleCode);

    useEffect(() => {
      initCode.current = true;
    }, [componentActive])

    return (
      <>
        <div className="page_wrap w-[1536px] ml-60 h-full overflow-x-hidden relative sm:w-[100%] sm:ml-0 pb-[150px]" id="page_wrap">
          <div className="page_inner w-5/6 ml-8 pt-32">
              <PageHeader name="Main" sub={sub} text={text} />
              {componentArray.map((item, index) => <div key={index} ref={el => componentRefs.current[index] = el}><item.component title={`#${index + 1} ` + item.title} onChange={toggleCode} /></div>)}
              {/*<Tweet />*/}
          </div>
        </div>
        <PageAnk position={componentPosition} data={componentArray} active={componentActive} />
      </>
    )
  }
</script>