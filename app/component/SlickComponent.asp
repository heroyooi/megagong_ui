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

  function SlickComponent() {
    const componentArray = [
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
   
    const componentRefs = useRef(Array(componentArray.length).fill(null));
    const componentPosition = useRef([]);
    const [componentActive, setComponentActive] = useState(0);

    const toggleCode = () => {}
    usePageInit(2, 4, 2);
    useScrollNavi(componentPosition, componentRefs, setComponentActive, 120, toggleCode);

    return (
      <>
        <div className="page_wrap w-[1392px] ml-60 h-full overflow-x-hidden relative sm:w-[100%] sm:ml-0" id="page_wrap">
          <div className="page_inner w-5/6 ml-8 pt-32">
            <PageHeader name="Slide - Slick" sub="슬라이드 - 슬릭" text="메가공무원에서 두번째로 많이 쓰이는 슬라이드 컴포넌트입니다." />
            {componentArray.map((item, index) => <div key={index} ref={el => componentRefs.current[index] = el}><item.component title={`#${index + 1} ` + item.title} error={item.error} errorLink={item.errorLink} onChange={toggleCode} /></div>)}
            {/*<Tweet />*/}
          </div>
        </div>
        <PageAnk position={componentPosition} data={componentArray} active={componentActive} />
      </>
    )
  }
</script>