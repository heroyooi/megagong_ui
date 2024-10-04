<!-- #include virtual = "/app/component/tab/Tab1.asp"-->
<!-- #include virtual = "/app/component/tab/Tab2.asp"-->
<!-- #include virtual = "/app/component/tab/Tab3.asp"-->

<script type="text/babel">
  'use strict';

  function TabComponent() {
    const componentArray = [
      {
        title: "탭 - 타입1",
        component: Tab1
      },
      {
        title: "탭 - 타입2",
        component: Tab2
      },
      {
        title: "탭 - 타입3",
        component: Tab3
      },
    ]
    
    const componentRefs = useRef(Array(componentArray.length).fill(null));
    const componentPosition = useRef([]);
    const [componentActive, setComponentActive] = useState(0);

    const toggleCode = () => {}
    usePageInit(1, 3);
    useScrollNavi(componentPosition, componentRefs, setComponentActive, 120, toggleCode);

    return (
      <>
        <div className="page_wrap w-[1392px] ml-60 h-full overflow-x-hidden relative sm:w-[100%] sm:ml-0 pb-[150px]" id="page_wrap">
          <div className="page_inner w-5/6 ml-8 pt-32">
            <PageHeader name="Tab" sub="탭" text="메가공무원 사이트에서 공통적으로 사용되고 있는 탭 요소 컴포넌트입니다. <br />사용자 경험을 높이기 위해, 탭 버튼을 클릭할 경우 직관적인 색상의 변화를 통해 현재 탭의 정보를 사용자에게 전달합니다." />
            {componentArray.map((item, index) => <div key={index} ref={el => componentRefs.current[index] = el}><item.component title={item.title} error={item.error} errorLink={item.errorLink} onChange={toggleCode} /></div>)}
            {/*<Tweet />*/}
          </div>
        </div>
        <PageAnk position={componentPosition} data={componentArray} active={componentActive} />
      </>
    )
  }
</script>