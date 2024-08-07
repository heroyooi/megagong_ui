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
        title: "셀렉트박스",
        component: BoardSelect
      },
      {
        title: "게시판 목록 - 전체",
        component: ColumnListAll
      },
      {
        title: "게시판 목록 - 강사",
        component: ColumnListTeacher
      },
      {
        title: "게시판 목록 - 데이터 없음",
        component: ColumnListNone
      },
      {
        title: "게시글",
        component: BoardView
      },
      {
        title: "댓글",
        component: BoardComment
      },
      {
        title: "댓글 - 데이터 없음",
        component: BoardCommentNone
      },
      {
        title: "이전글, 다음글",
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
            <PageHeader name="Column" sub="칼럼 게시판" text="메가공무원 사이트에서 공통적으로 사용되고 있는 칼럼 게시판 관련 컴포넌트입니다." />
            {componentArray.map((item, index) => <div key={index} ref={el => componentRefs.current[index] = el}><item.component title={item.title} error={item.error} errorLink={item.errorLink} onChange={toggleCode} /></div>)}
            {/*<Tweet />*/}
          </div>
        </div>
        <PageAnk position={componentPosition} data={componentArray} active={componentActive} />
      </>
    )
  }
</script>