<!-- #include virtual = "/app/component/button/ButtonBlack.asp"-->
<!-- #include virtual = "/app/component/button/ButtonWhite.asp"-->
<!-- #include virtual = "/app/component/button/ButtonOther.asp"-->

<script type="text/babel">
  'use strict';

  function ButtonComponent() {
    const componentArray = [
      {
        title: "버튼 - 검은색",
        component: ButtonBlack
      },
      {
        title: "버튼 - 검은색",
        component: ButtonWhite
      },
      {
        title: "버튼 - 기타",
        component: ButtonOther
      },
    ]
   
    const componentRefs = useRef(Array(componentArray.length).fill(null));
    const componentPosition = useRef([]);
    const [componentActive, setComponentActive] = useState(0);

    const toggleCode = () => {}
    usePageInit(1, 2);
    useScrollNavi(componentPosition, componentRefs, setComponentActive, 120, toggleCode);

    return (
      <PageProvider>
        <div className="page_wrap w-[1392px] ml-60 h-full overflow-x-hidden relative sm:w-[100%] sm:ml-0 pb-[150px]" id="page_wrap">
          <div className="page_inner w-5/6 ml-8 pt-32">
            <PageHeader name="Button" sub="버튼" text="메가공무원 사이트에서 통상적으로 사용되는 버튼 컴포넌트입니다.<br />사용되는 페이지의 디자인 및 용도에 맞게 다양한 변형이 가능합니다." />
            {componentArray.map((item, index) => <div key={index} ref={el => componentRefs.current[index] = el}><item.component title={item.title} onChange={toggleCode} /></div>)}
            {/*<Tweet />*/}
          </div>
        </div>
        <PageAnk position={componentPosition} data={componentArray} active={componentActive} />
      </PageProvider>
    )
  }
</script>