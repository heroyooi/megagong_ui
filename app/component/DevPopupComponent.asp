<!-- #include virtual = "/app/component/popup/DevPopup1.asp"-->
<!-- #include virtual = "/app/component/popup/DevPopup2.asp"-->
<!-- #include virtual = "/app/component/popup/DevPopup3.asp"-->

<script type="text/babel">
  'use strict';

  function DevPopupComponent() {
    const componentArray = [
      {
        title: "�˸� ��û �˾� ȣ��",
        component: DevPopup1
      },
      {
        title: "���� �˾��� 2���� ���",
        component: DevPopup2
      },
      {
        title: "���� �˾��� 3���� ���",
        component: DevPopup3
      },
    ]
    
    const { initCode } = usePage();
    const componentRefs = useRef(Array(componentArray.length).fill(null));
    const componentPosition = useRef([]);
    const [componentActive, setComponentActive] = useState(0);

    // const { user } = useAuth();

    const toggleCode = () => {}
    usePageInit(2, 3, 2);
    useScrollNavi(componentPosition, componentRefs, setComponentActive, 120, toggleCode);

    useEffect(() => {
      initCode.current = true;
    }, [componentActive])

    return (
      <>
        <div className="page_wrap w-[calc(100%-15rem)] ml-60 h-full overflow-x-hidden relative sm:w-[100%] sm:ml-0" id="page_wrap">
          <div className="page_inner w-5/6 ml-8 pt-32">
              <PageHeader name="Dev Popup" sub="���� �˾�" text="���� �˾��� �˾� ���ο� �������� ��Ұ� ���� �� ����ϴ� ������Ʈ�Դϴ�." />
              {componentArray.map((item, index) => <div key={index} ref={el => componentRefs.current[index] = el}><item.component title={`#${index + 1} ` + item.title} onChange={toggleCode} /></div>)}
              {/*<Tweet />*/}
          </div>
        </div>
        <PageAnk position={componentPosition} data={componentArray} active={componentActive} />
      </>
    )
  }
</script>