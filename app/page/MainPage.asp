<!-- #include virtual = "/app/page/main/BannerPass.asp"-->

<script type="text/babel">
  'use strict';

  function MainPage({ cid }) {
    let componentArray = [];
    let sub = "";
    let text = "";
    if (cid == "banner") {
      componentArray = [
        {
          title: "�н� ���",
          component: BannerPass
        },
      ];
      sub = "���� - ���";
      text = "�ް������� ���� ���������� ����ϴ� ��� ������Ʈ�� �Ұ��մϴ�.";
    } else if (cid == "") {
      componentArray = [];
      sub = "";
      text = "";
    }
    
    const { initCode } = usePage();
    const componentRefs = useRef(Array(componentArray.length).fill(null));
    const componentPosition = useRef([]);
    const [componentActive, setComponentActive] = useState(0);

    // const { user } = useAuth();

    const toggleCode = () => {}

    if (cid == "banner") {
      usePageInit(3, 2, 1);
    } else if (cid == "") {
      usePageInit(3, 2, 2);
    }

    useScrollNavi(componentPosition, componentRefs, setComponentActive, 120, toggleCode);

    useEffect(() => {
      initCode.current = true;
    }, [componentActive])

    return (
      <>
        <div className="page_wrap w-[1392px] ml-60 h-full overflow-x-hidden relative sm:w-[100%] sm:ml-0 pb-[150px]" id="page_wrap">
          <div className="page_inner w-5/6 ml-8 pt-32">
              <PageHeader name="Main" sub={sub} text={text} />
              {componentArray.map((item, index) => <div key={index} ref={el => componentRefs.current[index] = el}><item.component title={`#${index + 1} ` + item.title} onChange={toggleCode} /></div>)}
              {/*<Tweet />*/}
          </div>
        </div>
        <PageAnk position={componentPosition} data={componentArray} active={componentActive} />
      </>
    )
  }
</script>