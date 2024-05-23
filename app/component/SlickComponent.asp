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

  function SlickComponent() {
    const componentArray = [
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
   
    const componentRefs = useRef(Array(componentArray.length).fill(null));
    const componentPosition = useRef([]);
    const [componentActive, setComponentActive] = useState(0);

    const toggleCode = () => {}
    usePageInit(2, 4, 2);
    useScrollNavi(componentPosition, componentRefs, setComponentActive, 120, toggleCode);

    return (
      <>
        <div className="page_wrap w-[1392px] ml-60 h-full overflow-x-hidden relative sm:w-[100%] sm:ml-0 pb-[150px]" id="page_wrap">
          <div className="page_inner w-5/6 ml-8 pt-32">
            <PageHeader name="Slide - Slick" sub="�����̵� - ����" text="�ް����������� �ι�°�� ���� ���̴� �����̵� ������Ʈ�Դϴ�." />
            {componentArray.map((item, index) => <div key={index} ref={el => componentRefs.current[index] = el}><item.component title={`#${index + 1} ` + item.title} error={item.error} errorLink={item.errorLink} onChange={toggleCode} /></div>)}
            {/*<Tweet />*/}
          </div>
        </div>
        <PageAnk position={componentPosition} data={componentArray} active={componentActive} />
      </>
    )
  }
</script>