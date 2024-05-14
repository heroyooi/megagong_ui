<!-- #include virtual = "/app/component/player/Player1.asp"-->
<!-- include virtual = "/app/component/player/Player2.asp"-->

<script type="text/babel">
  'use strict';

  function PlayerComponent() {
    const componentArray = [
      {
        title: "비디오 : 유튜브 재생 (자체제작 썸네일o) - 그림자 있을 시 클래스 with_shadow 추가",
        component: Player1
      },
      // {
      //   title: "콜루스 플레이어 재생 - 그림자 있을 시 클래스 with_shadow 추가",
      //   component: Player2
      // },
    ]
    
    const { setDp1, setDp2 } = useAside();
    const componentRefs = useRef(Array(componentArray.length).fill(null));
    const componentPosition = useRef([]);
    const [componentActive, setComponentActive] = useState(0);
    const [activeAnk, setActiveAnk] = useState(true);

    const toggleCode = () => {}
    usePageInit(2, 5);
    useScrollNavi(componentPosition, componentRefs, setComponentActive, 120, toggleCode);

    return (
      <>
        <div className="page_wrap w-[calc(100%-15rem)] ml-60 h-full overflow-x-hidden relative sm:w-[100%] sm:ml-0" id="page_wrap">
          <div className="page_inner w-5/6 ml-8 pt-32">
            <PageHeader name="Player" sub="플레이어" text="메가공무원 사이트에서 공통적으로 사용되고 있는 영상 플레이어 관련 컴포넌트입니다." />
            {componentArray.map((item, index) => <div key={index} ref={el => componentRefs.current[index] = el}><item.component title={item.title} error={item.error} errorLink={item.errorLink} onChange={toggleCode} /></div>)}
            {/*<Tweet />*/}
          </div>
        </div>
        <PageAnk position={componentPosition} data={componentArray} active={componentActive} />
      </>
    )
  }
</script>