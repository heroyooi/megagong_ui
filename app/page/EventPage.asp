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
          title: "���� ���",
          component: EventLecture1
        },
        {
          title: "���� ��� - �̺�Ʈ �����",
          component: EventLecture2
        },
        {
          title: "���� ��� - ��",
          component: EventLecture3
        },
        {
          title: "���� ��� - ���̷���",
          component: EventLectureSkeleton
        },
      ]
      sub = "�̺�Ʈ Ǯ������ - ���� ���";
      text = "�ް��������� �̺�Ʈ Ǯ���������� ����ϴ� ���� ��� ������Ʈ�Դϴ�.";
    } else if (cid == "period") {
      componentArray = [
        {
          title: "�̺�Ʈ �Ⱓ - Ÿ��1",
          component: EventPeriod1
        },
        {
          title: "�̺�Ʈ �Ⱓ - Ÿ��2",
          component: EventPeriod2
        },
        {
          title: "�̺�Ʈ �Ⱓ - Ÿ��3",
          component: EventPeriod3
        },
        {
          title: "�̺�Ʈ �Ⱓ - Ÿ��4",
          component: EventPeriod4
        },
        {
          title: "�̺�Ʈ �Ⱓ - Ÿ��5",
          component: EventPeriod5
        },
        {
          title: "�̺�Ʈ �Ⱓ - Ÿ��6",
          component: EventPeriod6
        },
        {
          title: "����",
          component: EventGift
        },
      ]
      sub = "�̺�Ʈ Ǯ������ - �̺�Ʈ �Ⱓ & ����";
      text = "�ް��������� �̺�Ʈ Ǯ���������� ����ϴ� �̺�Ʈ �Ⱓ & ���� ������Ʈ�Դϴ�.";
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