<!-- #include virtual = "/app/component/menu/MenuHcode.asp"-->
<!-- #include virtual = "/app/component/menu/MenuGnb.asp"-->
<!-- #include virtual = "/app/component/menu/MenuLabGnb.asp"-->

<script type="text/babel">
  'use strict';

  function MenuComponent() {
    const componentArray = [
      {
        title: "메가공무원 - 직렬 메뉴",
        component: MenuHcode
      },
      {
        title: "메가공무원 - GNB",
        component: MenuGnb
      },
      {
        title: "메가공무원|합격전략연구소 - GNB",
        component: MenuLabGnb
      },
    ]
   
    const componentRefs = useRef(Array(componentArray.length).fill(null));
    const componentPosition = useRef([]);
    const [componentActive, setComponentActive] = useState(0);

    const { user } = useAuth();

    const toggleCode = () => {}
    usePageInit(2, 1);
    useScrollNavi(componentPosition, componentRefs, setComponentActive, 120, toggleCode);

    return (
      <>
      <div className="page_wrap w-[calc(100%-15rem)] ml-60 h-full overflow-x-hidden relative sm:w-[100%] sm:ml-0" id="page_wrap">
        <div className="page_inner w-5/6 ml-8 pt-32">
            <PageHeader name="Menu" sub="메뉴" text="웹사이트의 다양한 메뉴에 접근할 수 있는 메뉴 컴포넌트입니다." />
            {componentArray.map((item, index) => <div key={index} ref={el => componentRefs.current[index] = el}><item.component title={`#${index + 1} ` + item.title} onChange={toggleCode} /></div>)}
            {/*<Tweet />*/}
        </div>
      </div>
      <PageAnk position={componentPosition} data={componentArray} active={componentActive} />
      </>
    )
  }
</script>