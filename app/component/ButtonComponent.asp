<!-- #include virtual = "/app/component/button/ButtonBlack.asp"-->
<!-- #include virtual = "/app/component/button/ButtonWhite.asp"-->
<!-- #include virtual = "/app/component/button/ButtonOther.asp"-->

<script type="text/babel">
  'use strict';

  function ButtonComponent() {
    const componentArray = [
      {
        title: "��ư - ������",
        component: ButtonBlack
      },
      {
        title: "��ư - ������",
        component: ButtonWhite
      },
      {
        title: "��ư - ��Ÿ",
        component: ButtonOther
      },
    ]
   
    const componentRefs = useRef(Array(componentArray.length).fill(null));
    const componentPosition = useRef([]);
    const [componentActive, setComponentActive] = useState(0);

    const toggleCode = () => {}
    usePageInit(1, 2);
    useScrollNavi(componentPosition, componentRefs, setComponentActive, 120, toggleCode);

    return (
      <PageProvider>
        <div className="page_wrap w-[1392px] ml-60 h-full overflow-x-hidden relative sm:w-[100%] sm:ml-0 pb-[150px]" id="page_wrap">
          <div className="page_inner w-5/6 ml-8 pt-32">
            <PageHeader name="Button" sub="��ư" text="�ް������� ����Ʈ���� ��������� ���Ǵ� ��ư ������Ʈ�Դϴ�.<br />���Ǵ� �������� ������ �� �뵵�� �°� �پ��� ������ �����մϴ�." />
            {componentArray.map((item, index) => <div key={index} ref={el => componentRefs.current[index] = el}><item.component title={item.title} onChange={toggleCode} /></div>)}
            {/*<Tweet />*/}
          </div>
        </div>
        <PageAnk position={componentPosition} data={componentArray} active={componentActive} />
      </PageProvider>
    )
  }
</script>