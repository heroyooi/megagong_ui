<!-- #include virtual = "/app/page/teacher/Teacher1.asp"-->

<script type="text/babel">
  'use strict';

  function TeacherPage() {
    const componentArray = [
      {
        title: "선생님 목록",
        component: Teacher1
      },
    ]
    
    const { initCode } = usePage();
    const componentRefs = useRef(Array(componentArray.length).fill(null));
    const componentPosition = useRef([]);
    const [componentActive, setComponentActive] = useState(0);

    // const { user } = useAuth();

    const toggleCode = () => {}
    usePageInit(3, 1);
    useScrollNavi(componentPosition, componentRefs, setComponentActive, 120, toggleCode);

    useEffect(() => {
      initCode.current = true;
    }, [componentActive])

    return (
      <>
        <div className="page_wrap w-[calc(100%-15rem)] ml-60 h-full overflow-x-hidden relative sm:w-[100%] sm:ml-0" id="page_wrap">
          <div className="page_inner w-5/6 ml-8 pt-32">
              <PageHeader name="Teacher" sub="선생님" text="메가공무원의 강사 선생님들과 관련된 페이지에서 주로 사용되는 요소들입니다. <br />해당 요소의 디자인 및 양식은 공통화 되어있으므로 특별한 사유가 있는 경우를 제외하고 본 규격양식을 따르는 것을 원칙으로 합니다." />
              {componentArray.map((item, index) => <div key={index} ref={el => componentRefs.current[index] = el}><item.component title={`#${index + 1} ` + item.title} onChange={toggleCode} /></div>)}
              {/*<Tweet />*/}
          </div>
        </div>
        <PageAnk position={componentPosition} data={componentArray} active={componentActive} />
      </>
    )
  }
</script>