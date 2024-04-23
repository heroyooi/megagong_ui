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
        title: "��ư - �⺻��",
        component: Button1
      },
      {
        title: "��ư - �����̵� �¿���",
        component: Button2
      },
      {
        title: "��ư - ����",
        component: Button3
      },
      {
        title: "��ư - ������",
        component: Button4
      },
      {
        title: "��ư - hover �÷�",
        component: Button5
      },
    ]
    
    
    const componentRefs = useRef(Array(componentArray.length).fill(null));
    const componentPosition = useRef([]);
    const [componentActive, setComponentActive] = useState(0);

    const { user } = useAuth();
    usePageInit(2, 1);
    useScrollNavi(componentPosition, componentRefs, setComponentActive, 120);

    return (
      <>
      <div className="page_wrap w-[calc(100%-15rem)] ml-60 h-full overflow-x-hidden relative" id="page_wrap">

        <div className="page_inner w-5/6 ml-8 pt-32">
            <PageHeader name="Button" sub="��ư" text="�ް������� ����Ʈ���� ��������� ���Ǵ� ��ư ������Ʈ�Դϴ�.<br />���Ǵ� �������� ������ �� �뵵�� �°� �پ��� ������ �����մϴ�." />
            {componentArray.map((item, index) => <div key={index} ref={el => componentRefs.current[index] = el}><item.component title={item.title} /></div>)}
            
            {/*
            <!-- #include virtual = "/inc/tweet_popup_all.asp"-->
            <!-- #include virtual = "/inc/ball.asp"-->
            */}
            {user && <Tweet />}
        </div>
      </div>
      <PageAnk position={componentPosition} data={componentArray} active={componentActive} />
      </>
    )
  }
</script>