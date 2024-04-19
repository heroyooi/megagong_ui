<!-- #include virtual = "/app/component/button/Button1.asp"-->
<!-- #include virtual = "/app/component/button/Button2.asp"-->
<!-- #include virtual = "/app/component/button/Button3.asp"-->
<!-- #include virtual = "/app/component/button/Button4.asp"-->
<!-- #include virtual = "/app/component/button/Button5.asp"-->

<script type="text/babel">
  'use strict';

  function ButtonComponent() {
    const componentArray = [
      {
        title: "버튼 - 기본형",
        component: Button1
      },
      {
        title: "버튼 - 슬라이드 좌우형",
        component: Button2
      },
      {
        title: "버튼 - 구매",
        component: Button3
      },
      {
        title: "버튼 - 라운드형",
        component: Button4
      },
      {
        title: "버튼 - hover 컬러",
        component: Button5
      },
    ]
    
    const { setDp1, setDp2 } = useAside();
    const componentRefs = useRef(Array(componentArray.length).fill(null));
    const componentPosition = useRef([]);
    const [componentActive, setComponentActive] = useState(0);

    useEffect(() => {
      Lab.top();
      Lab.showCode();
      setDp1(2);
      setDp2(1);
    }, []);

    useScrollNavi(componentPosition, componentRefs, setComponentActive, 120);

    return (
      <>
      <div className="page_wrap" id="page_wrap">

        <div className="page_inner">
            <PageHeader name="Button" sub="버튼" text="메가공무원 사이트에서 통상적으로 사용되는 버튼 컴포넌트입니다.<br />사용되는 페이지의 디자인 및 용도에 맞게 다양한 변형이 가능합니다." />
            {componentArray.map((item, index) => <div ref={el => componentRefs.current[index] = el}><item.component title={item.title} /></div>)}
            
            {/*
            <!-- #include virtual = "/inc/tweet_popup_all.asp"-->
            <!-- #include virtual = "/inc/ball.asp"-->
            <!-- #include virtual = "/inc/footer.asp"-->
            */}
        </div>
      </div>
      <PageAnk position={componentPosition} data={componentArray} active={componentActive} />
      </>
    )
  }
</script>