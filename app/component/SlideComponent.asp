<!-- #include virtual = "/app/component/slide/Swiper1.asp"-->
<!-- #include virtual = "/app/component/slide/Swiper2.asp"-->
<!-- #include virtual = "/app/component/slide/Swiper3.asp"-->
<!-- #include virtual = "/app/component/slide/Swiper4.asp"-->
<!-- #include virtual = "/app/component/slide/Swiper5.asp"-->
<!-- #include virtual = "/app/component/slide/Swiper6.asp"-->
<!-- #include virtual = "/app/component/slide/Swiper7.asp"-->
<!-- #include virtual = "/app/component/slide/Swiper8.asp"-->
<!-- #include virtual = "/app/component/slide/Swiper9.asp"-->

<!-- #include virtual = "/app/component/slide/Slick1.asp"-->
<!-- #include virtual = "/app/component/slide/Slick2.asp"-->
<!-- #include virtual = "/app/component/slide/Slick3.asp"-->
<!-- #include virtual = "/app/component/slide/Slick4.asp"-->
<!-- #include virtual = "/app/component/slide/Slick5.asp"-->
<!-- #include virtual = "/app/component/slide/Slick6.asp"-->
<!-- #include virtual = "/app/component/slide/Slick7.asp"-->
<!-- #include virtual = "/app/component/slide/Slick8.asp"-->
<!-- #include virtual = "/app/component/slide/Slick9.asp"-->
<!-- #include virtual = "/app/component/slide/Slick10.asp"-->

<script type="text/babel">
  'use strict';

  function SlideComponent({ cid }) {
    let componentArray = [];
    let sub = "";
    let text = "";

    if (cid == 'swiper') {
      componentArray = [
        {
          title: "Swiper �⺻��",
          component: Swiper1
        },
        {
          title: "Swiper �⺻�� + �ڵ������̵�",
          component: Swiper2
        },
        {
          title: "Swiper ���� ���� �����̵�",
          component: Swiper3
        },
        {
          title: "Swiper ���� �����̵� (per view)",
          component: Swiper4
        },
        {
          title: "Swiper �� �����̵� (tab) 1. �⺻ ����",
          component: Swiper5
        },
        {
          title: "Swiper �� �����̵� (tab) - 2. ����� ����",
          component: Swiper6,
          error: true,
          errorLink: "<%=dev_url_main%>/event/@template/index_swiper.asp?id=6"
        },
        {
          title: "Swiper ������ �����̵� (3 > 2 > 1)",
          component: Swiper7,
          error: true,
          errorLink: "<%=dev_url_main%>/event/@template/index_swiper.asp?id=7"
        },
        {
          title: "Swiper ������ �����̵� (pc���� swiper destroy, 992px���� swiper)",
          component: Swiper8
        },
        {
          title: "Swiper ��ũ��",
          component: Swiper9
        },
      ]
      sub = "�����̵� - ��������";
      text = "�ް����������� �ַ� ����ϴ� ��ǥ �����̵� - �������� ������Ʈ�Դϴ�.";
      usePageInit(1, 7, 1);
    } else if (cid == 'slick') {
      componentArray = [
        {
          title: "Slick �⺻��",
          component: Slick1
        },
        {
          title: "Slick �⺻�� - ��ȯ ȿ�� + �ڵ����",
          component: Slick2
        },
        {
          title: "Slick �ʱ�ȭ + beforeChange",
          component: Slick3
        },
        {
          title: "�ʱ�ȭ + afterChange + Ŀ���� ��ư(����, ����, ����, ����)",
          component: Slick4
        },
        {
          title: "������",
          component: Slick5
        },
        {
          title: "������ - 1024< 1��, 1024>= 3��, 768>= 2��, 414>= 1��, 300>= destroy",
          component: Slick6
        },
        {
          title: "������ n�� - ������",
          component: Slick7
        },
        {
          title: "������ n�� - ������ + Ŀ���� ����¡",
          component: Slick8
        },
        {
          title: "�帣�� ���",
          component: Slick9
        },
        {
          title: "�˾� ���� �����̵�",
          component: Slick10
        },
      ]
      sub = "�����̵� - ����";
      text = "�ް����������� �ַ� ����ϴ� ��ǥ �����̵� - ���� ������Ʈ�Դϴ�.";
      usePageInit(1, 7, 2);
    }
   
    const componentRefs = useRef(Array(componentArray.length).fill(null));
    const componentPosition = useRef([]);
    const [componentActive, setComponentActive] = useState(0);

    const toggleCode = () => {}
    
    useScrollNavi(componentPosition, componentRefs, setComponentActive, 120, toggleCode);

    return (
      <>
        <div className="page_wrap w-[1392px] ml-60 h-full overflow-x-hidden relative sm:w-[100%] sm:ml-0 pb-[150px]" id="page_wrap">
          <div className="page_inner w-5/6 ml-8 pt-32">
            <PageHeader name="Slide" sub={sub} text={text} />
            {componentArray.map((item, index) => <div key={index} ref={el => componentRefs.current[index] = el}><item.component title={`#${index + 1} ` + item.title} error={item.error} errorLink={item.errorLink} onChange={toggleCode} /></div>)}
            {/*<Tweet />*/}
          </div>
        </div>
        <PageAnk position={componentPosition} data={componentArray} active={componentActive} />
      </>
    )
  }
</script>