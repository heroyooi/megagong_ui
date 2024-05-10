<!-- #include virtual = "/app/component/popup/DevPopup1.asp"-->
<!-- #include virtual = "/app/component/popup/DevPopup2.asp"-->
<!-- #include virtual = "/app/component/popup/DevPopup3.asp"-->

<script type="text/babel">
  'use strict';

  function DevPopupComponent() {
    const componentArray = [
      {
        title: "알림 신청 팝업 호출",
        component: DevPopup1
      },
      {
        title: "개발 팝업이 2개인 경우",
        component: DevPopup2
      },
      {
        title: "개발 팝업이 3개인 경우",
        component: DevPopup3
      },
    ]
    
    const { initCode } = usePage();
    const componentRefs = useRef(Array(componentArray.length).fill(null));
    const componentPosition = useRef([]);
    const [componentActive, setComponentActive] = useState(0);

    // const { user } = useAuth();

    const toggleCode = () => {}
    usePageInit(2, 3, 2);
    useScrollNavi(componentPosition, componentRefs, setComponentActive, 120, toggleCode);

    useEffect(() => {
      initCode.current = true;
    }, [componentActive])

    return (
      <>
        <div className="page_wrap w-[calc(100%-15rem)] ml-60 h-full overflow-x-hidden relative sm:w-[100%] sm:ml-0" id="page_wrap">
          <div className="page_inner w-5/6 ml-8 pt-32">
              <PageHeader name="Dev Popup" sub="개발 팝업" text="개발 팝업은 팝업 내부에 개발적인 요소가 있을 때 사용하는 컴포넌트입니다." />
              {componentArray.map((item, index) => <div key={index} ref={el => componentRefs.current[index] = el}><item.component title={`#${index + 1} ` + item.title} onChange={toggleCode} /></div>)}
              {/*<Tweet />*/}
          </div>
        </div>
        <PageAnk position={componentPosition} data={componentArray} active={componentActive} />
      </>
    )
  }
</script>