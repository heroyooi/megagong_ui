<!-- #include virtual = "/app/component/table/Table1.asp"-->

<script type="text/babel">
  'use strict';

  function TableComponent() {
    const componentArray = [
      {
        title: "���̺� - Ÿ��1",
        component: Table1
      },
    ]
    
    const componentRefs = useRef(Array(componentArray.length).fill(null));
    const componentPosition = useRef([]);
    const [componentActive, setComponentActive] = useState(0);

    const toggleCode = () => {}
    usePageInit(1, 5);
    useScrollNavi(componentPosition, componentRefs, setComponentActive, 120, toggleCode);

    return (
      <>
        <div className="page_wrap w-[1392px] ml-60 h-full overflow-x-hidden relative sm:w-[100%] sm:ml-0 pb-[150px]" id="page_wrap">
          <div className="page_inner w-5/6 ml-8 pt-32">
            <PageHeader name="Table" sub="���̺�" text="�ް������� ����Ʈ���� ���������� ���ǰ� �ִ� ���̺� ������Ʈ�Դϴ�. <br />�̿��ڿ��� ���̺��� ���ؼ� ������ �����͸� �����մϴ�." />
            {componentArray.map((item, index) => <div key={index} ref={el => componentRefs.current[index] = el}><item.component title={item.title} error={item.error} errorLink={item.errorLink} onChange={toggleCode} /></div>)}
            {/*<Tweet />*/}
          </div>
        </div>
        <PageAnk position={componentPosition} data={componentArray} active={componentActive} />
      </>
    )
  }
</script>