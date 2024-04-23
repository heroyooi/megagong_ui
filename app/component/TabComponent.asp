<!-- #include virtual = "/app/component/tab/Tab1.asp"-->

<script type="text/babel">
  'use strict';

  function TabComponent() {
    const componentArray = [
      {
        title: "�հ�����LAB ������ �� �޴�",
        component: Tab1
      },
      // {
      //   title: "Ŀ��ŧ�� ���� ��",
      //   component: Tab2
      // },
      // {
      //   title: "��ũ�̵� ��",
      //   component: Tab3
      // },
      // {
      //   title: "�¶��� ���� �˻�",
      //   component: Tab4
      // },
      // {
      //   title: "�ڵ� �Ѹ� ��",
      //   component: Tab5
      // },
      // {
      //   title: "�ڵ� �Ѹ� ���� ��",
      //   component: Tab6
      // },
    ]
    
    const { setDp1, setDp2 } = useAside();
    const componentRefs = useRef(Array(componentArray.length).fill(null));
    const componentPosition = useRef([]);
    const [componentActive, setComponentActive] = useState(0);

    usePageInit(2, 2);
    useScrollNavi(componentPosition, componentRefs, setComponentActive, 120);

    return (
      <>
      <div className="page_wrap" id="page_wrap">

        <div className="page_inner">
            <PageHeader name="Tab" sub="��" text="�ް������� ����Ʈ���� ���������� ���ǰ� �ִ� �� ��� ������Ʈ�Դϴ�. <br />����� ������ ���̱� ����, �� ��ư�� Ŭ���� ��� �������� ������ ��ȭ�� ���� ���� ���� ������ ����ڿ��� �����մϴ�." />
            {componentArray.map((item, index) => <div key={index} ref={el => componentRefs.current[index] = el}><item.component title={item.title} /></div>)}
            
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