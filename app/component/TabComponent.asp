<!-- #include virtual = "/app/component/tab/Tab1.asp"-->
<!-- #include virtual = "/app/component/tab/Tab2.asp"-->
<!-- #include virtual = "/app/component/tab/Tab3.asp"-->

<script type="text/babel">
  'use strict';

  function TabComponent() {
    const componentArray = [
      {
        title: "�� - Ÿ��1",
        component: Tab1
      },
      {
        title: "�� - Ÿ��2",
        component: Tab2
      },
      {
        title: "�� - Ÿ��3",
        component: Tab3
      },
    ]
    
    const componentRefs = useRef(Array(componentArray.length).fill(null));
    const componentPosition = useRef([]);
    const [componentActive, setComponentActive] = useState(0);

    const toggleCode = () => {}
    usePageInit(1, 3);
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