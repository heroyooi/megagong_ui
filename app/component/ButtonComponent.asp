<!-- #include virtual = "/app/component/button/Button1.asp"-->
<!-- #include virtual = "/app/component/button/Button2.asp"-->
<!-- #include virtual = "/app/component/button/Button3.asp"-->
<!-- #include virtual = "/app/component/button/Button4.asp"-->
<!-- #include virtual = "/app/component/button/Button5.asp"-->

<script type="text/babel">
  'use strict';

  function ButtonComponent() {
    const { setDp1, setDp2 } = useAside();

    useEffect(() => {
      Lab.top();
      Lab.showCode();
      setDp1(2);
      setDp2(1);
    }, []);

    return (
      <>
      <div className="page_wrap" id="page_wrap">

        <div className="page_inner">
            <PageHeader name="Button" sub="버튼" text="메가공무원 사이트에서 통상적으로 사용되는 버튼 컴포넌트입니다.<br />사용되는 페이지의 디자인 및 용도에 맞게 다양한 변형이 가능합니다." />
            
            <Button1 />
            <Button2 />
            <Button3 />
            <Button4 />
            <Button5 />
            
            {/*
            <!-- #include virtual = "/inc/tweet_popup_all.asp"-->
            <!-- #include virtual = "/inc/ball.asp"-->
            <!-- #include virtual = "/inc/footer.asp"-->
            */}
            
        </div>
    
    </div>


    <div className="ank"></div>
      </>
    )
  }
</script>