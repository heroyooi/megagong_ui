<!-- #include virtual = "/app/component/button/Button1Renew.asp"-->

<script type="text/babel">
  'use strict';

  function ButtonComponentRenew() {
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

            <PageHeader name="Button" sub="��ư" text="yerin �ް������� ����Ʈ���� ��������� ���Ǵ� ��ư ������Ʈ�Դϴ�.<br />���Ǵ� �������� ������ �� �뵵�� �°� �پ��� ������ �����մϴ�." />
            
            <Button1Renew />
            
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