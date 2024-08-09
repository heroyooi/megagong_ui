<!-- #include virtual = "/app/page/common/MenuHcode.asp"-->
<!-- #include virtual = "/app/page/common/MenuUtil.asp"-->
<!-- #include virtual = "/app/page/common/MenuGnb.asp"-->
<!-- #include virtual = "/app/page/common/MenuLabGnb.asp"-->
<!-- #include virtual = "/app/page/common/BannerSkyLeft.asp"-->
<!-- #include virtual = "/app/page/common/MenuLnb.asp"-->

<script type="text/babel">
  'use strict';

  function CommonPage({ cid }) {
    let componentArray = [];
    let sub = "";
    let text = "";
    if (cid == "menu") {
      componentArray = [
        {
          title: "메가공무원 - 직렬 메뉴",
          component: MenuHcode
        },
        {
          title: "메가공무원 - 유틸 메뉴",
          component: MenuUtil
        },
        {
          title: "메가공무원 - GNB",
          component: MenuGnb
        },
        {
          title: "메가공무원|합격전략연구소 - GNB",
          component: MenuLabGnb
        },
        {
          title: "메가공무원 - LNB",
          component: MenuLnb
        },
      ]
      sub = "공통 - 메뉴";
      text = "메가공무원에서 공통으로 사용하는 메뉴 컴포넌트를 소개합니다.";
    } else if (cid == "banner") {
      componentArray = [
        {
          title: "좌측상단 배너",
          component: BannerSkyLeft
        },
        // {
        //   title: "패스 배너",
        //   component: Banner1
        // },
      ];
      sub = "공통 - 배너";
      text = "메가공무원에서 공통으로 사용하는 배너 컴포넌트를 소개합니다.";
    }
    
    const { initCode } = usePage();
    const componentRefs = useRef(Array(componentArray.length).fill(null));
    const componentPosition = useRef([]);
    const [componentActive, setComponentActive] = useState(0);

    // const { user } = useAuth();

    const toggleCode = () => {}

    if (cid == "menu") {
      usePageInit(3, 1, 1);
    } else if (cid == "banner") {
      usePageInit(3, 1, 2);
    }

    useScrollNavi(componentPosition, componentRefs, setComponentActive, 120, toggleCode);

    useEffect(() => {
      initCode.current = true;
    }, [componentActive])

    return (
      <>
        <div className="page_wrap w-[1536px] ml-60 h-full overflow-x-hidden relative sm:w-[100%] sm:ml-0 pb-[150px]" id="page_wrap">
          <div className="page_inner w-5/6 ml-8 pt-32">
              <PageHeader name="Common" sub={sub} text={text} />
              {componentArray.map((item, index) => <div key={index} ref={el => componentRefs.current[index] = el}><item.component title={`#${index + 1} ` + item.title} onChange={toggleCode} /></div>)}
              {/*<Tweet />*/}
          </div>
        </div>
        <PageAnk position={componentPosition} data={componentArray} active={componentActive} />
      </>
    )
  }
</script>