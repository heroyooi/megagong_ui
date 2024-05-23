<!-- #include virtual = "/app/page/teacher/Teacher1.asp"-->
<!-- #include virtual = "/app/page/teacher/Teacher2.asp"-->
<!-- #include virtual = "/app/page/teacher/Teacher3.asp"-->
<!-- #include virtual = "/app/page/teacher/Teacher4.asp"-->
<!-- #include virtual = "/app/page/teacher/Teacher5.asp"-->

<script type="text/babel">
  'use strict';

  function TeacherPage() {
    const componentArray = [
      {
        title: "������ ���",
        component: Teacher1
      },
      {
        title: "������ Ȩ",
        component: Teacher2
      },
      {
        title: "������ Ȩ ���",
        component: Teacher3
      },
      {
        title: "������ ���ҽ� & �����ı�",
        component: Teacher4
      },
      {
        title: "������ Ŀ��ŧ��",
        component: Teacher5
      },
    ]
    
    const { initCode } = usePage();
    const componentRefs = useRef(Array(componentArray.length).fill(null));
    const componentPosition = useRef([]);
    const [componentActive, setComponentActive] = useState(0);

    // const { user } = useAuth();

    const toggleCode = () => {}
    usePageInit(3, 3);
    useScrollNavi(componentPosition, componentRefs, setComponentActive, 120, toggleCode);

    useEffect(() => {
      initCode.current = true;
    }, [componentActive])

    return (
      <>
        <div className="page_wrap w-[1392px] ml-60 h-full overflow-x-hidden relative sm:w-[100%] sm:ml-0 pb-[150px]" id="page_wrap">
          <div className="page_inner w-5/6 ml-8 pt-32">
              <PageHeader name="Teacher" sub="������" text="�ް��������� ���� �����Ե�� ���õ� ���������� �ַ� ���Ǵ� ��ҵ��Դϴ�. <br />�ش� ����� ������ �� ����� ����ȭ �Ǿ������Ƿ� Ư���� ������ �ִ� ��츦 �����ϰ� �� �԰ݾ���� ������ ���� ��Ģ���� �մϴ�." />
              {componentArray.map((item, index) => <div key={index} ref={el => componentRefs.current[index] = el}><item.component title={`#${index + 1} ` + item.title} onChange={toggleCode} /></div>)}
              {/*<Tweet />*/}
          </div>
        </div>
        <PageAnk position={componentPosition} data={componentArray} active={componentActive} />
      </>
    )
  }
</script>