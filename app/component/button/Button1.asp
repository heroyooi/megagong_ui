<script type="text/babel">
  'use strict';

  function Button1() {
    const { user } = useAuth();
    const [view, setView] = useState(false);

    useEffect(() => {
      
    }, [])

    return (
      <div className="page_text_wrap" id="button1">
        <p className="page_head">��ư - �⺻��</p> 
        {user && <button className="code_open"><span className="open_bg"></span><span className="open_shape"></span></button>}
        
        <div className="issue-box-wrap"></div>
        <div className="position_site"><img src="/images/btn.png" alt='��ư��ġ' /></div>
                
<div className="code-box html"><div className="btn_list">
    <a href="javascript:fncViewChange();" className="cmn_btn">�������� ����</a>
    <a href="javascript:fncViewChange();" className="cmn_btn">��ü��</a>
</div>
<div className="btn_list">
    <a href="javascript:fncBrdWrite();" className="cmn_btn c_green">�����ϱ�</a>
</div>
<p className="btn_wrap">
	<a href="javascript:void(0);" style={{cursor: "pointer"}} onClick="goRegister();" className="btn">�����ı� <br className="mo_576" />�ۼ��ϱ�</a>
</p></div>

{/*<style>.btn_wrap .btn {display: block;width: 130px;height: 40px;line-height: 40px;font-size: 14px;color: #fff;background-color: #129490;font-weight: 600;text-align: center;}
.btn_wrap .btn .mo_576 {display: none;}
</style>*/}

<p className="page_text">�Խñ� �ۼ� �� ���� ���� �뵵�� ���� ��ư���� ������ ������ CSS�� �����Ͽ� ��� ������ �������� �ǵ��� �۾��մϴ�.<br /> 
������ ������ ��Ȳ �ܿ���, �⺻������ ��� ��ư�� �߾� Ȥ�� �����ʿ� �����ϵ��� �մϴ�. 
</p>

<pre className="language-html html act"></pre>
<pre className="language-css act"></pre>

          <div className="page_bot_wrap">
              <a className="use_link" href="<%=url_main%>/teacher/qna/qna.asp" target="_blank"><i className='bx bx-link'></i>EXAMPLE</a>
              <div className="cap_tag">
                  <ul>
                      <li><p>#�ý��۹�ư</p> </li>
                      <li><p>#�Խñ��ۼ�</p> </li>
                      <li><p>#�Խ��ǹ�ư</p> </li>
                  </ul>
              </div>
          </div>
      </div>
    )
  }
</script>