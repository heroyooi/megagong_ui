<!-- #include virtual = "/app/component/tab/Tab1.asp"-->

<script type="text/babel">
  'use strict';

  function TabComponent() {
    const componentArray = [
      {
        title: "합격전략LAB 반응형 탭 메뉴",
        component: Tab1
      },
      // {
      //   title: "커리큘럼 내부 탭",
      //   component: Tab2
      // },
      // {
      //   title: "링크이동 탭",
      //   component: Tab3
      // },
      // {
      //   title: "온라인 서점 검색",
      //   component: Tab4
      // },
      // {
      //   title: "자동 롤링 탭",
      //   component: Tab5
      // },
      // {
      //   title: "자동 롤링 랜덤 탭",
      //   component: Tab6
      // },
    ]
    
    const { setDp1, setDp2 } = useAside();
    const componentRefs = useRef(Array(componentArray.length).fill(null));
    const componentPosition = useRef([]);
    const [componentActive, setComponentActive] = useState(0);

    usePageInit(2, 2);
    useScrollNavi(componentPosition, componentRefs, setComponentActive, 120);

    return (
      <>
      <div className="page_wrap" id="page_wrap">

        <div className="page_inner">
            <PageHeader name="Tab" sub="탭" text="메가공무원 사이트에서 공통적으로 사용되고 있는 탭 요소 컴포넌트입니다. <br />사용자 경험을 높이기 위해, 탭 버튼을 클릭할 경우 직관적인 색상의 변화를 통해 현재 탭의 정보를 사용자에게 전달합니다." />
            {componentArray.map((item, index) => <div key={index} ref={el => componentRefs.current[index] = el}><item.component title={item.title} /></div>)}
            
            {/*
            <!-- #include virtual = "/inc/tweet_popup_all.asp"-->
            <!-- #include virtual = "/inc/ball.asp"-->
            <!-- #include virtual = "/inc/footer.asp"-->
            */}
        </div>
      </div>
      <PageAnk position={componentPosition} data={componentArray} active={componentActive} />
      </>
    )
  }
</script>