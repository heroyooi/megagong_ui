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
        title: "메인 우측 하단 팝업",
        component: Popup1
      },
      {
        title: "중앙 오늘 하루 닫기 팝업 - 초기 로드",
        component: Popup2
      },
      {
        title: "중앙 오늘 하루 닫기 팝업",
        component: Popup3
      },
      {
        title: "딤 팝업",
        component: Popup4
      },
      {
        title: "영상 팝업 - 비디오",
        component: Popup5
      },
      {
        title: "영상 팝업 - 유튜브",
        component: Popup6
      },
      {
        title: "팝업 호출 - 페이드인 & 컨텐츠 움직임",
        component: Popup7
      },
      {
        title: "팝업 호출 - 페이드인 & 컨텐츠 고정",
        component: Popup8
      },
      {
        title: "팝업 호출 - 페이드업·다운 & 컨텐츠 고정",
        component: Popup9
      },
      {
        title: "모달 팝업 - 자세히 보기",
        component: Popup10
      },
      {
        title: "원형 슬라이드 팝업",
        component: Popup11
      },
      {
        title: "이벤트 약관 팝업 - 중앙 딤 팝업",
        component: Popup12
      },
      {
        title: "이벤트 약관 팝업 - tiny 팝업",
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
              <PageHeader name="Pub Popup" sub="퍼블 팝업" text="팝업은 메가공무원 메인 페이지에서부터 홍보페이지까지 특정 정보 전달을 위하여 광범위하게 사용되고 있는 기능입니다. <br />별도의 요청이 있던 경우를 제외하고 모든 팝업은 해당 코드를 바탕으로 제작되는 것을 원칙으로 합니다." />
              {componentArray.map((item, index) => <div key={index} ref={el => componentRefs.current[index] = el}><item.component title={`#${index + 1} ` + item.title} onChange={toggleCode} /></div>)}
              {/*<Tweet />*/}
          </div>
        </div>
        <PageAnk position={componentPosition} data={componentArray} active={componentActive} />
      </>
    )
  }
</script>