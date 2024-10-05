<!-- #include virtual = "/app/component/slide/Swiper1.asp"-->
<!-- #include virtual = "/app/component/slide/Swiper2.asp"-->
<!-- #include virtual = "/app/component/slide/Swiper3.asp"-->
<!-- #include virtual = "/app/component/slide/Swiper4.asp"-->
<!-- #include virtual = "/app/component/slide/Swiper5.asp"-->
<!-- #include virtual = "/app/component/slide/Swiper6.asp"-->
<!-- #include virtual = "/app/component/slide/Swiper7.asp"-->
<!-- #include virtual = "/app/component/slide/Swiper8.asp"-->
<!-- #include virtual = "/app/component/slide/Swiper9.asp"-->

<!-- #include virtual = "/app/component/slide/Slick1.asp"-->
<!-- #include virtual = "/app/component/slide/Slick2.asp"-->
<!-- #include virtual = "/app/component/slide/Slick3.asp"-->
<!-- #include virtual = "/app/component/slide/Slick4.asp"-->
<!-- #include virtual = "/app/component/slide/Slick5.asp"-->
<!-- #include virtual = "/app/component/slide/Slick6.asp"-->
<!-- #include virtual = "/app/component/slide/Slick7.asp"-->
<!-- #include virtual = "/app/component/slide/Slick8.asp"-->
<!-- #include virtual = "/app/component/slide/Slick9.asp"-->
<!-- #include virtual = "/app/component/slide/Slick10.asp"-->

<script type="text/babel">
  'use strict';

  function SlideComponent({ cid }) {
    let componentArray = [];
    let sub = "";
    let text = "";

    if (cid == 'swiper') {
      componentArray = [
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
          component: Swiper6,
          error: true,
          errorLink: "<%=dev_url_main%>/event/@template/index_swiper.asp?id=6"
        },
        {
          title: "Swiper 반응형 슬라이드 (3 > 2 > 1)",
          component: Swiper7,
          error: true,
          errorLink: "<%=dev_url_main%>/event/@template/index_swiper.asp?id=7"
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
      sub = "슬라이드 - 스와이퍼";
      text = "메가공무원에서 주로 사용하는 대표 슬라이드 - 스와이프 컴포넌트입니다.";
      usePageInit(1, 7, 1);
    } else if (cid == 'slick') {
      componentArray = [
        {
          title: "Slick 기본형",
          component: Slick1
        },
        {
          title: "Slick 기본형 - 전환 효과 + 자동재생",
          component: Slick2
        },
        {
          title: "Slick 초기화 + beforeChange",
          component: Slick3
        },
        {
          title: "초기화 + afterChange + 커스텀 버튼(이전, 다음, 실행, 멈춤)",
          component: Slick4
        },
        {
          title: "세로형",
          component: Slick5
        },
        {
          title: "반응형 - 1024< 1개, 1024>= 3개, 768>= 2개, 414>= 1개, 300>= destroy",
          component: Slick6
        },
        {
          title: "가로형 n개 - 반응형",
          component: Slick7
        },
        {
          title: "가로형 n개 - 고정형 + 커스텀 페이징",
          component: Slick8
        },
        {
          title: "흐르는 배너",
          component: Slick9
        },
        {
          title: "팝업 내부 슬라이드",
          component: Slick10
        },
      ]
      sub = "슬라이드 - 슬릭";
      text = "메가공무원에서 주로 사용하는 대표 슬라이드 - 슬릭 컴포넌트입니다.";
      usePageInit(1, 7, 2);
    }
   
    const componentRefs = useRef(Array(componentArray.length).fill(null));
    const componentPosition = useRef([]);
    const [componentActive, setComponentActive] = useState(0);

    const toggleCode = () => {}
    
    useScrollNavi(componentPosition, componentRefs, setComponentActive, 120, toggleCode);

    return (
      <>
        <div className="page_wrap w-[1392px] ml-60 h-full overflow-x-hidden relative sm:w-[100%] sm:ml-0 pb-[150px]" id="page_wrap">
          <div className="page_inner w-5/6 ml-8 pt-32">
            <PageHeader name="Slide" sub={sub} text={text} />
            {componentArray.map((item, index) => <div key={index} ref={el => componentRefs.current[index] = el}><item.component title={`#${index + 1} ` + item.title} error={item.error} errorLink={item.errorLink} onChange={toggleCode} /></div>)}
            {/*<Tweet />*/}
          </div>
        </div>
        <PageAnk position={componentPosition} data={componentArray} active={componentActive} />
      </>
    )
  }
</script>