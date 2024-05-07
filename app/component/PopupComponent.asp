<!-- #include virtual = "/app/component/popup/Popup1.asp"-->

<script type="text/babel">
  'use strict';

  function PopupComponent() {
    const componentArray = [
      {
        title: "메인 우측 하단 팝업",
        component: Popup1
      },
    ]
    
    const { setDp1, setDp2 } = useAside();
    const componentRefs = useRef(Array(componentArray.length).fill(null));
    const componentPosition = useRef([]);
    const [componentActive, setComponentActive] = useState(0);
    const [activeAnk, setActiveAnk] = useState(true);

    const { user } = useAuth();

    const toggleCode = () => {}
    usePageInit(2, 3);
    useScrollNavi(componentPosition, componentRefs, setComponentActive, 120, toggleCode);

    return (
      <>
      <div className="page_wrap w-[calc(100%-15rem)] ml-60 h-full overflow-x-hidden relative" id="page_wrap">

        <div className="page_inner w-5/6 ml-8 pt-32">
            <PageHeader name="Popup" sub="팝업" text="팝업은 메가공무원 메인 페이지에서부터 홍보페이지까지 특정 정보 전달을 위하여 광범위하게 사용되고 있는 기능입니다. <br />별도의 요청이 있던 경우를 제외하고 모든 팝업은 해당 코드를 바탕으로 제작되는 것을 원칙으로 합니다." />
            {componentArray.map((item, index) => <div key={index} ref={el => componentRefs.current[index] = el}><item.component title={item.title} onChange={toggleCode} /></div>)}
            {/*<Tweet />*/}
        </div>
      </div>
      <PageAnk position={componentPosition} data={componentArray} active={componentActive} />
      </>
    )
  }
</script>