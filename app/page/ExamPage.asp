<!-- #include virtual = "/app/page/exam/Exam1.asp"-->
<!-- #include virtual = "/app/page/exam/Exam2.asp"-->
<!-- #include virtual = "/app/page/exam/Exam3.asp"-->
<!-- #include virtual = "/app/page/exam/Exam4.asp"-->
<!-- #include virtual = "/app/page/exam/Exam5.asp"-->
<!-- #include virtual = "/app/page/exam/Exam6.asp"-->
<!-- #include virtual = "/app/page/exam/Exam7.asp"-->

<script type="text/babel">
  'use strict';

  function ExamPage() {
    const componentArray = [
      {
        title: "진단평가 응시하기",
        component: Exam1
      },
      {
        title: "응시 정보 입력",
        component: Exam2
      },
      {
        title: "나의 응시 정보",
        component: Exam3
      },
      {
        title: "진단평가 응시",
        component: Exam4
      },
      {
        title: "진단 결과 분석",
        component: Exam5
      },
      {
        title: "직렬 선택 가이드",
        component: Exam6
      },
      {
        title: "과목별 특징 및 학습법",
        component: Exam7
      },
    ]
    
    const { initCode } = usePage();
    const componentRefs = useRef(Array(componentArray.length).fill(null));
    const componentPosition = useRef([]);
    const [componentActive, setComponentActive] = useState(0);

    // const { user } = useAuth();

    const toggleCode = () => {}
    usePageInit(3, 6);
    useScrollNavi(componentPosition, componentRefs, setComponentActive, 120, toggleCode);

    useEffect(() => {
      initCode.current = true;
    }, [componentActive])

    return (
      <>
        <div className="page_wrap w-[1536px] ml-60 h-full overflow-x-hidden relative sm:w-[100%] sm:ml-0 pb-[150px]" id="page_wrap">
          <div className="page_inner w-5/6 ml-8 pt-32">
              <PageHeader name="Exam" sub="진단평가" text="메가공무원의 진단평가를 치르는 페이지입니다." />
              {componentArray.map((item, index) => <div key={index} ref={el => componentRefs.current[index] = el}><item.component title={`#${index + 1} ` + item.title} onChange={toggleCode} /></div>)}
              {/*<Tweet />*/}
          </div>
        </div>
        <PageAnk position={componentPosition} data={componentArray} active={componentActive} />
      </>
    )
  }
</script>