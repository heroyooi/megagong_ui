<!-- #include virtual = "/app/component/popup/Popup1.asp"-->
<!-- #include virtual = "/app/component/popup/Popup2.asp"-->
<!-- #include virtual = "/app/component/popup/Popup3.asp"-->
<!-- #include virtual = "/app/component/popup/Popup4.asp"-->
<!-- #include virtual = "/app/component/popup/Popup5.asp"-->
<!-- #include virtual = "/app/component/popup/Popup6.asp"-->
<!-- #include virtual = "/app/component/popup/Popup7.asp"-->
<!-- #include virtual = "/app/component/popup/Popup8.asp"-->
<!-- #include virtual = "/app/component/popup/Popup9.asp"-->
<!-- #include virtual = "/app/component/popup/Popup10.asp"-->
<!-- #include virtual = "/app/component/popup/Popup11.asp"-->
<!-- #include virtual = "/app/component/popup/Popup12.asp"-->
<!-- #include virtual = "/app/component/popup/Popup13.asp"-->

<script type="text/babel">
  'use strict';

  function PopupComponent() {
    const componentArray = [
      {
        title: "���� ���� �ϴ� �˾�",
        component: Popup1
      },
      {
        title: "�߾� ���� �Ϸ� �ݱ� �˾� - �ʱ� �ε�",
        component: Popup2
      },
      {
        title: "�߾� ���� �Ϸ� �ݱ� �˾�",
        component: Popup3
      },
      {
        title: "�� �˾�",
        component: Popup4
      },
      {
        title: "���� �˾� - ����",
        component: Popup5
      },
      {
        title: "���� �˾� - ��Ʃ��",
        component: Popup6
      },
      {
        title: "�˾� ȣ�� - ���̵��� & ������ ������",
        component: Popup7
      },
      {
        title: "�˾� ȣ�� - ���̵��� & ������ ����",
        component: Popup8
      },
      {
        title: "�˾� ȣ�� - ���̵�����ٿ� & ������ ����",
        component: Popup9
      },
      {
        title: "��� �˾� - �ڼ��� ����",
        component: Popup10
      },
      {
        title: "���� �����̵� �˾�",
        component: Popup11
      },
      {
        title: "�̺�Ʈ ��� �˾� - �߾� �� �˾�",
        component: Popup12
      },
      {
        title: "�̺�Ʈ ��� �˾� - tiny �˾�",
        component: Popup13
      },
    ]
    
    const { initCode } = usePage();
    const componentRefs = useRef(Array(componentArray.length).fill(null));
    const componentPosition = useRef([]);
    const [componentActive, setComponentActive] = useState(0);

    // const { user } = useAuth();

    const toggleCode = () => {}
    usePageInit(2, 3, 1);
    useScrollNavi(componentPosition, componentRefs, setComponentActive, 120, toggleCode);

    useEffect(() => {
      initCode.current = true;
    }, [componentActive])

    return (
      <>
        <div className="page_wrap w-[1392px] ml-60 h-full overflow-x-hidden relative sm:w-[100%] sm:ml-0" id="page_wrap">
          <div className="page_inner w-5/6 ml-8 pt-32">
              <PageHeader name="Popup" sub="�˾�" text="�˾��� �ް������� ���� �������������� ȫ������������ Ư�� ���� ������ ���Ͽ� �������ϰ� ���ǰ� �ִ� ����Դϴ�. <br />������ ��û�� �ִ� ��츦 �����ϰ� ��� �˾��� �ش� �ڵ带 �������� ���۵Ǵ� ���� ��Ģ���� �մϴ�." />
              {componentArray.map((item, index) => <div key={index} ref={el => componentRefs.current[index] = el}><item.component title={`#${index + 1} ` + item.title} onChange={toggleCode} /></div>)}
              {/*<Tweet />*/}
          </div>
        </div>
        <PageAnk position={componentPosition} data={componentArray} active={componentActive} />
      </>
    )
  }
</script>