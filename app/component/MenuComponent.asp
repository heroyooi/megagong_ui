<!-- #include virtual = "/app/component/menu/MenuHcode.asp"-->
<!-- #include virtual = "/app/component/menu/MenuUtil.asp"-->
<!-- #include virtual = "/app/component/menu/MenuGnb.asp"-->
<!-- #include virtual = "/app/component/menu/MenuLabGnb.asp"-->

<script type="text/babel">
  'use strict';

  function MenuComponent() {
    const componentArray = [
      {
        title: "�ް������� - ���� �޴�",
        component: MenuHcode
      },
      {
        title: "�ް������� - ��ƿ �޴�",
        component: MenuUtil
      },
      {
        title: "�ް������� - GNB",
        component: MenuGnb
      },
      {
        title: "�ް�������|�հ����������� - GNB",
        component: MenuLabGnb
      },
    ]
   
    const componentRefs = useRef(Array(componentArray.length).fill(null));
    const componentPosition = useRef([]);
    const [componentActive, setComponentActive] = useState(0);

    const toggleCode = () => {}
    usePageInit(2, 1);
    useScrollNavi(componentPosition, componentRefs, setComponentActive, 120, toggleCode);

    return (
      <>
        <div className="page_wrap w-[calc(100%-15rem)] ml-60 h-full overflow-x-hidden relative sm:w-[100%] sm:ml-0" id="page_wrap">
          <div className="page_inner w-5/6 ml-8 pt-32">
            <PageHeader name="Menu" sub="�޴�" text="������Ʈ�� �پ��� �޴��� ������ �� �ִ� �޴� ������Ʈ�Դϴ�." />
            {componentArray.map((item, index) => <div key={index} ref={el => componentRefs.current[index] = el}><item.component title={`#${index + 1} ` + item.title} onChange={toggleCode} /></div>)}
            {/*<Tweet />*/}
          </div>
        </div>
        <PageAnk position={componentPosition} data={componentArray} active={componentActive} />
      </>
    )
  }
</script>