<!-- #include virtual = "/app/component/table/Table1.asp"-->

<script type="text/babel">
  'use strict';

  function TableComponent() {
    const componentArray = [
      {
        title: "테이블 - 타입1",
        component: Table1
      },
    ]
    
    const componentRefs = useRef(Array(componentArray.length).fill(null));
    const componentPosition = useRef([]);
    const [componentActive, setComponentActive] = useState(0);

    const toggleCode = () => {}
    usePageInit(1, 5);
    useScrollNavi(componentPosition, componentRefs, setComponentActive, 120, toggleCode);

    return (
      <>
        <div className="page_wrap w-[1392px] ml-60 h-full overflow-x-hidden relative sm:w-[100%] sm:ml-0 pb-[150px]" id="page_wrap">
          <div className="page_inner w-5/6 ml-8 pt-32">
            <PageHeader name="Table" sub="테이블" text="메가공무원 사이트에서 공통적으로 사용되고 있는 테이블 컴포넌트입니다. <br />이용자에게 테이블을 통해서 정리된 데이터를 공유합니다." />
            {componentArray.map((item, index) => <div key={index} ref={el => componentRefs.current[index] = el}><item.component title={item.title} error={item.error} errorLink={item.errorLink} onChange={toggleCode} /></div>)}
            {/*<Tweet />*/}
          </div>
        </div>
        <PageAnk position={componentPosition} data={componentArray} active={componentActive} />
      </>
    )
  }
</script>