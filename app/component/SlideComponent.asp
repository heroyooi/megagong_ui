<!-- #include virtual = "/app/component/slide/Swiper1.asp"-->
<!-- #include virtual = "/app/component/slide/Swiper2.asp"-->
<!-- #include virtual = "/app/component/slide/Swiper3.asp"-->
<!-- #include virtual = "/app/component/slide/Swiper4.asp"-->
<!-- #include virtual = "/app/component/slide/Swiper5.asp"-->
<!-- #include virtual = "/app/component/slide/Swiper6.asp"-->
<!-- #include virtual = "/app/component/slide/Swiper7.asp"-->
<!-- #include virtual = "/app/component/slide/Swiper8.asp"-->
<!-- #include virtual = "/app/component/slide/Swiper9.asp"-->

<script type="text/babel">
  'use strict';

  function SlideComponent() {
    const componentArray = [
      {
        title: "Swiper 기본형",
        component: Swiper1
      },
      {
        title: "Swiper 기본형 + 자동슬라이드",
        component: Swiper2
      },
      {
        title: "Swiper 세로 방향 슬라이드",
        component: Swiper3
      },
      {
        title: "Swiper 간격 슬라이드 (per view)",
        component: Swiper4
      },
      {
        title: "Swiper 탭 슬라이드 (tab) 1. 기본 버전",
        component: Swiper5
      },
      {
        title: "Swiper 탭 슬라이드 (tab) - 2. 썸네일 버전",
        component: Swiper6
      },
      {
        title: "Swiper 반응형 슬라이드 (3 > 2 > 1)",
        component: Swiper7
      },
      {
        title: "Swiper 반응형 슬라이드 (pc에서 swiper destroy, 992px에서 swiper)",
        component: Swiper8
      },
      {
        title: "Swiper 스크롤",
        component: Swiper9
      },
    ]
   
    const componentRefs = useRef(Array(componentArray.length).fill(null));
    const componentPosition = useRef([]);
    const [componentActive, setComponentActive] = useState(0);

    const toggleCode = () => {}
    usePageInit(2, 4);
    useScrollNavi(componentPosition, componentRefs, setComponentActive, 120, toggleCode);

    return (
      <>
        <div className="page_wrap w-[calc(100%-15rem)] ml-60 h-full overflow-x-hidden relative sm:w-[100%] sm:ml-0" id="page_wrap">
          <div className="page_inner w-5/6 ml-8 pt-32">
            <PageHeader name="Slide" sub="슬라이드" text="웹사이트의 대표 슬라이드 컴포넌트입니다." />
            {componentArray.map((item, index) => <div key={index} ref={el => componentRefs.current[index] = el}><item.component title={`#${index + 1} ` + item.title} onChange={toggleCode} /></div>)}
            {/*<Tweet />*/}
          </div>
        </div>
        <PageAnk position={componentPosition} data={componentArray} active={componentActive} />
      </>
    )
  }
</script>