<!-- #include virtual = "/app/component/tab/Tab1.asp"-->
<!-- #include virtual = "/app/component/tab/Tab2.asp"-->
<!-- #include virtual = "/app/component/tab/Tab3.asp"-->
<!-- #include virtual = "/app/component/tab/Tab4.asp"-->
<!-- #include virtual = "/app/component/tab/Tab5.asp"-->

<script type="text/babel">
  'use strict';

  function TabComponent() {
    const componentArray = [
      {
        title: "�հ�����LAB ������ �� �޴�",
        component: Tab1
      },
      {
        title: "�⺻ ��",
        component: Tab2
      },
      {
        title: "���� ��",
        component: Tab3
      },
      {
        title: "���� �� - �ڵ� �Ѹ� (�ټ� ���)",
        component: Tab4,
        error: true,
        errorLink: "<%=dev_url_main%>/event/@template/index_tab.asp"
      },
      {
        title: "�� ���� �����̵�",
        component: Tab5
      },
    ]
    
    const { setDp1, setDp2 } = useAside();
    const componentRefs = useRef(Array(componentArray.length).fill(null));
    const componentPosition = useRef([]);
    const [componentActive, setComponentActive] = useState(0);
    const [activeAnk, setActiveAnk] = useState(true);

    const toggleCode = () => {}
    usePageInit(2, 2);
    useScrollNavi(componentPosition, componentRefs, setComponentActive, 120, toggleCode);

    return (
      <>
        <div className="page_wrap w-[1392px] ml-60 h-full overflow-x-hidden relative sm:w-[100%] sm:ml-0 pb-[150px]" id="page_wrap">
          <div className="page_inner w-5/6 ml-8 pt-32">
            <PageHeader name="Tab" sub="��" text="�ް������� ����Ʈ���� ���������� ���ǰ� �ִ� �� ��� ������Ʈ�Դϴ�. <br />����� ������ ���̱� ����, �� ��ư�� Ŭ���� ��� �������� ������ ��ȭ�� ���� ���� ���� ������ ����ڿ��� �����մϴ�." />
            {componentArray.map((item, index) => <div key={index} ref={el => componentRefs.current[index] = el}><item.component title={item.title} error={item.error} errorLink={item.errorLink} onChange={toggleCode} /></div>)}
            {/*<Tweet />*/}
          </div>
        </div>
        <PageAnk position={componentPosition} data={componentArray} active={componentActive} />
      </>
    )
  }
</script>