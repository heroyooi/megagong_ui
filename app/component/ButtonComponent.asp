<!-- #include virtual = "/app/component/button/Button1.asp"-->
<!-- #include virtual = "/app/component/button/Button2.asp"-->
<!-- #include virtual = "/app/component/button/Button3.asp"-->
<!-- #include virtual = "/app/component/button/Button4.asp"-->

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
            <PageHeader name="Button" sub="��ư" text="�ް������� ����Ʈ���� ��������� ���Ǵ� ��ư ������Ʈ�Դϴ�.<br />���Ǵ� �������� ������ �� �뵵�� �°� �پ��� ������ �����մϴ�." />
            
            <Button1 />
            <Button2 />
            <Button3 />
            <Button4 />

            <div className="page_text_wrap">
                <p className="page_head">��ư - hover �÷�</p> 
                <button className="code_open"><span className="open_bg"></span><span className="open_shape"></span></button>
                
                <div className="issue-box-wrap"></div>
                <div className="position_site"><img src="/images/btn4.png" alt='��ư��ġ' /></div>
                

<div className="code-box html"><ul className="info_list notosans">
    <li><a href="https://lab.megagong.net/l/gong/guide/guide.asp" title="������ ���̵�" target="_blank"><span>������ ���̵�</span></a></li>
    <li><a href="https://lab.megagong.net/l/gong/guide/schedule.asp" title="���� ����" target="_blank"><span>���� ���� <img src="https://img.megagong.net/common/ic_new.gif" alt="New" style={{verticalAlign:"middle", margin:"-3px 0 0 3px"}} /></span></a></li>
    <li><a href="https://lab.megagong.net/l/gong/statistic/pass.asp" title="��������հݼ�" target="_blank"><span>��������հݼ� </span></a></li>
    <li><a href="https://lab.megagong.net/l/gong/guide/series.asp" title="���ĺ� ���� ����" target="_blank"><span>���ĺ� ���� ���� </span></a></li>
    <li>
        <a href="https://lab.megagong.net/l/gong/pass_opinion/index.asp" title="�հݼ���" target="_blank">
            <span>�հݼ��� <img src="https://img.megagong.net/common/ic_new.gif" alt="New" style={{verticalAlign:"middle", margin:"-3px 0 0 3px"}} /></span>
        </a>
    </li>
    <li><a href="https://lab.megagong.net/l/gong/library/list.asp" title="��������" target="_blank"><span>�������� </span></a></li>
    <li><a href="https://www.megagong.net/s/gong/examinfo/passmate/list.asp#mContainer" title="PASS MATE"><span>PASS MATE </span></a></li>
    <li><a href="https://lab.megagong.net/l/gong/followm/followm.asp" title="�����ڱ� ����(follow M)" target="_blank"><span>�����ڱ� ����(follow M)</span></a></li>
    <li className="for_mo lnk1"><a href="https://lab.megagong.net/l/gong/guide/guide.asp" title="������ ���̵�" target="_blank"><span>������ ���̵�</span></a></li>
    <li className="for_mo lnk2"><a href="https://lab.megagong.net/l/gong/news/list.asp?schExtra1=2" title="�հ�����" target="_blank"><span>�հ�����</span></a></li>
    <li className="for_mo lnk3"><a href="https://lab.megagong.net/l/gong/news/list.asp?schExtra1=3" title="�������" target="_blank"><span>�������</span></a></li>
    <li className="for_mo lnk4"><a href="https://lab.megagong.net/l/gong/library/list.asp" title="���⹮��" target="_blank"><span>���⹮��</span></a></li> 
</ul></div>

{/*<style>.info_list {font-weight: 200;display: flex;flex-wrap: wrap;justify-content: center;}
.info_list::after {content:"";clear:both;display:block}
.info_list li {float: left; margin: 0 10px 10px 0;padding: 0 0 0; border-radius: 6px; padding: 1px; text-decoration: none;}
.info_list li a { position: relative; display: block; padding: 0; border-radius: 6px; color: #f5bae8; width: 170px; height: 40px; line-height: 38px; border: 1px solid #d953ff; text-align: center;}
.info_list li a span {display: inline-block;padding: 0 3px 0 0;}
.info_list li a:hover {background: #fbafb1;background: linear-gradient(90deg, rgba(198,32,145,1) 0%, rgba(108,20,208,1) 100%);color: #fff;}
</style>*/}

<p className="page_text">�ް������� ���� �ϴܿ��� ���Ǵ� ��ũ �̵� ��ư�Դϴ�.<br /> 
Hover�� ���, Background�� ������ ū ������ ����Ǹ�, �̸� ���Ͽ� ����ڰ� ��Ȱ�ϰ� ����� �ν��� �� �ֵ��� �����ϴ�.<br /> 
������ �þ��� ���� �°� Color �ڵ庯�� �� �� ������ �����մϴ�. </p>

<pre className="language-html html act"></pre>
<pre className="language-css act"></pre>

                <div className="page_bot_wrap">
                    <a className="use_link" href="<%=url_main%>/megagong.asp" target="_blank"><i className='bx bx-link'></i>EXAMPLE</a>
                    <div className="cap_tag">
                        <ul>
                            <li><p>#���콺ȿ��</p> </li>
                            <li><p>#�׶���Ʈ</p> </li>
                            <li><p>#�����ϴ�</p> </li>
                        </ul>
                    </div>
                </div>
            </div>
      

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