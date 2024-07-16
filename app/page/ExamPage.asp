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
        title: "������ �����ϱ�",
        component: Exam1
      },
      {
        title: "���� ���� �Է�",
        component: Exam2
      },
      {
        title: "���� ���� ����",
        component: Exam3
      },
      {
        title: "������ ����",
        component: Exam4
      },
      {
        title: "���� ��� �м�",
        component: Exam5
      },
      {
        title: "���� ���� ���̵�",
        component: Exam6
      },
      {
        title: "���� Ư¡ �� �н���",
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
              <PageHeader name="Exam" sub="������" text="�ް��������� �����򰡸� ġ���� �������Դϴ�." />
              {componentArray.map((item, index) => <div key={index} ref={el => componentRefs.current[index] = el}><item.component title={`#${index + 1} ` + item.title} onChange={toggleCode} /></div>)}
              {/*<Tweet />*/}
          </div>
        </div>
        <PageAnk position={componentPosition} data={componentArray} active={componentActive} />
      </>
    )
  }
</script>