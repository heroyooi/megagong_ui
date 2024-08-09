<!-- #include virtual = "/app/page/event/EventLecture1.asp"-->
<!-- #include virtual = "/app/page/event/EventLecture2.asp"-->
<!-- #include virtual = "/app/page/event/EventLecture3.asp"-->
<!-- #include virtual = "/app/page/event/EventLectureSkeleton.asp"-->

<!-- #include virtual = "/app/page/event/EventPeriod1.asp"-->
<!-- #include virtual = "/app/page/event/EventPeriod2.asp"-->
<!-- #include virtual = "/app/page/event/EventPeriod3.asp"-->
<!-- #include virtual = "/app/page/event/EventPeriod4.asp"-->
<!-- #include virtual = "/app/page/event/EventPeriod5.asp"-->
<!-- #include virtual = "/app/page/event/EventPeriod6.asp"-->
<!-- #include virtual = "/app/page/event/EventGift.asp"-->

<script type="text/babel">
  'use strict';

  function EventPage({ cid }) {
    let componentArray = [];
    let sub = "";
    let text = "";
    if (cid == "lecture") {
      componentArray = [
        {
          title: "강좌 목록",
          component: EventLecture1
        },
        {
          title: "강좌 목록 - 이벤트 종료딤",
          component: EventLecture2
        },
        {
          title: "강좌 목록 - 탭",
          component: EventLecture3
        },
        {
          title: "강좌 목록 - 스켈레톤",
          component: EventLectureSkeleton
        },
      ]
      sub = "이벤트 풀페이지 - 강좌 목록";
      text = "메가공무원의 이벤트 풀페이지에서 사용하는 강좌 목록 컴포넌트입니다.";
    } else if (cid == "period") {
      componentArray = [
        {
          title: "이벤트 기간 - 타입1",
          component: EventPeriod1
        },
        {
          title: "이벤트 기간 - 타입2",
          component: EventPeriod2
        },
        {
          title: "이벤트 기간 - 타입3",
          component: EventPeriod3
        },
        {
          title: "이벤트 기간 - 타입4",
          component: EventPeriod4
        },
        {
          title: "이벤트 기간 - 타입5",
          component: EventPeriod5
        },
        {
          title: "이벤트 기간 - 타입6",
          component: EventPeriod6
        },
        {
          title: "선물",
          component: EventGift
        },
      ]
      sub = "이벤트 풀페이지 - 이벤트 기간 & 선물";
      text = "메가공무원의 이벤트 풀페이지에서 사용하는 이벤트 기간 & 선물 컴포넌트입니다.";
    }
    
    
    const { initCode } = usePage();
    const componentRefs = useRef(Array(componentArray.length).fill(null));
    const componentPosition = useRef([]);
    const [componentActive, setComponentActive] = useState(0);

    // const { user } = useAuth();

    const toggleCode = () => {}

    if (cid == "period") {
      usePageInit(3, 5, 1);
    } else if (cid == "lecture") {
      usePageInit(3, 5, 2);
    }
    useScrollNavi(componentPosition, componentRefs, setComponentActive, 120, toggleCode);

    useEffect(() => {
      initCode.current = true;
    }, [componentActive])

    return (
      <>
        <div className="page_wrap w-[1392px] ml-60 h-full overflow-x-hidden relative sm:w-[100%] sm:ml-0 pb-[150px]" id="page_wrap">
          <div className="page_inner w-5/6 ml-8 pt-32">
              <PageHeader name="Event" sub={sub} text={text} />
              {componentArray.map((item, index) => <div key={index} ref={el => componentRefs.current[index] = el}><item.component title={`#${index + 1} ` + item.title} onChange={toggleCode} /></div>)}
              {/*<Tweet />*/}
          </div>
        </div>
        <PageAnk position={componentPosition} data={componentArray} active={componentActive} />
      </>
    )
  }
</script>