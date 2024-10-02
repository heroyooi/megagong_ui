<!-- #include virtual = "/app/component/banner/SSBannerR.asp"-->
<!-- #include virtual = "/app/component/banner/SSBannerL.asp"-->
<!-- #include virtual = "/app/component/banner/PassBanner.asp"-->
<!-- #include virtual = "/app/component/banner/PassBannerEtc.asp"-->
<!-- #include virtual = "/app/component/banner/PassBannerPretty.asp"-->

<script type="text/babel">
  'use strict';

  function BannerComponent({ cid }) {
    let componentArray = [];
    let sub = "";
    let text = "";
    if (cid == "ss") {
      componentArray = [
        {
          title: "SS ��� - ���� ���",
          component: SSBannerR
        },
        {
          title: "SS ��� - ���� ���",
          component: SSBannerL
        },
      ]
      sub = "SS ���";
      text = "�ް����������� ����ϴ� SS ��� ������Ʈ�Դϴ�.<br />���� ���������� �۰� �پ��� ��ʵ��� ���ؼ� �̿��ڵ��� �ް����������� ��ϰ� �ִ� �پ��� ���������� ������ Ȯ���ϰ� ������ �� �ֵ��� �����ݴϴ�.";
      usePageInit(1, 1, 1);
    } else if (cid == "pass") {
      componentArray = [
        {
          title: "�н� ��� - �ް��н�",
          component: PassBanner
        },
        {
          title: "�н� ��� - ��Ÿ �ް��н�",
          component: PassBannerEtc
        },
        {
          title: "�н� ��� - ����Ƽ�н�",
          component: PassBannerPretty
        },
      ]
      sub = "�н� ���";
      text = "�ް����������� ����ϴ� �н� ��� ������Ʈ�Դϴ�.<br />�ް��������� �ٽ� ������ �н� ��ǰ�� �ٷ� Ȯ���� �� �ֽ��ϴ�.";
      usePageInit(1, 1, 2);
    }
    const componentRefs = useRef(Array(componentArray.length).fill(null));
    const componentPosition = useRef([]);
    const [componentActive, setComponentActive] = useState(0);

    const toggleCode = () => {}
    useScrollNavi(componentPosition, componentRefs, setComponentActive, 120, toggleCode);

    return (
      <PageProvider>
        <div className="page_wrap w-[1392px] ml-60 h-full overflow-x-hidden relative sm:w-[100%] sm:ml-0 pb-[150px]" id="page_wrap">
          <div className="page_inner w-5/6 ml-8 pt-32">
            <PageHeader name="Banner" sub={sub} text={text} />
            {componentArray.map((item, index) => <div key={index} ref={el => componentRefs.current[index] = el}><item.component title={item.title} onChange={toggleCode} /></div>)}
            {/*<Tweet />*/}
          </div>
        </div>
        <PageAnk position={componentPosition} data={componentArray} active={componentActive} />
      </PageProvider>
    )
  }
</script>