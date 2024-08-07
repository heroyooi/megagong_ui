<!-- #include virtual = "/app/component/column/BoardSelect.asp"-->
<!-- #include virtual = "/app/component/column/ColumnListAll.asp"-->
<!-- #include virtual = "/app/component/column/ColumnListTeacher.asp"-->
<!-- #include virtual = "/app/component/column/ColumnListNone.asp"-->
<!-- #include virtual = "/app/component/column/BoardView.asp"-->
<!-- #include virtual = "/app/component/column/BoardComment.asp"-->
<!-- #include virtual = "/app/component/column/BoardCommentNone.asp"-->
<!-- #include virtual = "/app/component/column/PrevNext.asp"-->

<script type="text/babel">
  'use strict';

  function ColumnComponent() {
    const componentArray = [
      {
        title: "����Ʈ�ڽ�",
        component: BoardSelect
      },
      {
        title: "�Խ��� ��� - ��ü",
        component: ColumnListAll
      },
      {
        title: "�Խ��� ��� - ����",
        component: ColumnListTeacher
      },
      {
        title: "�Խ��� ��� - ������ ����",
        component: ColumnListNone
      },
      {
        title: "�Խñ�",
        component: BoardView
      },
      {
        title: "���",
        component: BoardComment
      },
      {
        title: "��� - ������ ����",
        component: BoardCommentNone
      },
      {
        title: "������, ������",
        component: PrevNext
      },
    ]
    
    const { setDp1, setDp2 } = useAside();
    const componentRefs = useRef(Array(componentArray.length).fill(null));
    const componentPosition = useRef([]);
    const [componentActive, setComponentActive] = useState(0);
    const [activeAnk, setActiveAnk] = useState(true);

    const toggleCode = () => {}
    usePageInit(2, 6);
    useScrollNavi(componentPosition, componentRefs, setComponentActive, 120, toggleCode);

    return (
      <>
        <div className="page_wrap w-[1392px] ml-60 h-full overflow-x-hidden relative sm:w-[100%] sm:ml-0 pb-[150px]" id="page_wrap">
          <div className="page_inner w-5/6 ml-8 pt-32">
            <PageHeader name="Column" sub="Į�� �Խ���" text="�ް������� ����Ʈ���� ���������� ���ǰ� �ִ� Į�� �Խ��� ���� ������Ʈ�Դϴ�." />
            {componentArray.map((item, index) => <div key={index} ref={el => componentRefs.current[index] = el}><item.component title={item.title} error={item.error} errorLink={item.errorLink} onChange={toggleCode} /></div>)}
            {/*<Tweet />*/}
          </div>
        </div>
        <PageAnk position={componentPosition} data={componentArray} active={componentActive} />
      </>
    )
  }
</script>