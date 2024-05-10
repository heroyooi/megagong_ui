<!-- #include virtual = "/app/component/swiper/Swiper1.asp"-->
<!-- #include virtual = "/app/component/swiper/Swiper2.asp"-->
<!-- #include virtual = "/app/component/swiper/Swiper3.asp"-->
<!-- #include virtual = "/app/component/swiper/Swiper4.asp"-->
<!-- #include virtual = "/app/component/swiper/Swiper5.asp"-->

<script type="text/babel">
  'use strict';

  function SwiperComponent() {
    const componentArray = [
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
    ]
   
    const componentRefs = useRef(Array(componentArray.length).fill(null));
    const componentPosition = useRef([]);
    const [componentActive, setComponentActive] = useState(0);

    const toggleCode = () => {}
    usePageInit(2, 4, 2);
    useScrollNavi(componentPosition, componentRefs, setComponentActive, 120, toggleCode);

    return (
      <>
        <div className="page_wrap w-[calc(100%-15rem)] ml-60 h-full overflow-x-hidden relative sm:w-[100%] sm:ml-0" id="page_wrap">
          <div className="page_inner w-5/6 ml-8 pt-32">
            <PageHeader name="Slide - Swiper" sub="�����̵� - ��������" text="������Ʈ�� ��ǥ �����̵� ������Ʈ�Դϴ�." />
            {componentArray.map((item, index) => <div key={index} ref={el => componentRefs.current[index] = el}><item.component title={`#${index + 1} ` + item.title} onChange={toggleCode} /></div>)}
            {/*<Tweet />*/}
          </div>
        </div>
        <PageAnk position={componentPosition} data={componentArray} active={componentActive} />
      </>
    )
  }
</script>