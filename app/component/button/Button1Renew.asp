<script type="text/babel">
  'use strict';

  function Button1Renew() {
    const { user } = useAuth();
    const [view, setView] = useState(false);

    useEffect(() => {
      
    }, [])

    return (
      <div className="page_text_wrap" id="button1">
        <p className="page_head  w-96 h-10 bg-gradient-to-r from-zinc-600 to-mainColor-500">버튼 - yerin</p> 
        {user && <button className="code_open"><span className="open_bg"></span><span className="open_shape"></span></button>}
        
        <div className="issue-box-wrap"></div>
        <div className="position_site"><img src="/images/btn.png" alt='버튼위치' /></div>
                
<div className="code-box html"><div className="btn_list">
    <a href="javascript:fncViewChange();" className="cmn_btn">내가쓴글 보기</a>
    <a href="javascript:fncViewChange();" className="cmn_btn">전체글</a>
</div>
<div className="btn_list">
    <a href="javascript:fncBrdWrite();" className="cmn_btn c_green">질문하기</a>
</div>
<p className="btn_wrap">
	<a href="javascript:void(0);" style={{cursor: "pointer"}} onClick="goRegister();" className="btn">수강후기 <br className="mo_576" />작성하기</a>
</p></div>

{/*<style>.btn_wrap .btn {display: block;width: 130px;height: 40px;line-height: 40px;font-size: 14px;color: #fff;background-color: #129490;font-weight: 600;text-align: center;}
.btn_wrap .btn .mo_576 {display: none;}
</style>*/}

<p className="page_text">게시글 작성 및 질문 등의 용도를 가진 버튼들은 지정된 고유의 CSS를 유지하여 모두 동일한 디자인이 되도록 작업합니다.<br /> 
별도로 지정된 상황 외에는, 기본적으로 모든 버튼은 중앙 혹은 오른쪽에 정렬하도록 합니다. 
</p>

<pre className="language-html html act"></pre>
<pre className="language-css act"></pre>

          <div className="page_bot_wrap">
              <a className="use_link" href="<%=url_main%>/teacher/qna/qna.asp" target="_blank"><i className='bx bx-link'></i>EXAMPLE</a>
              <div className="cap_tag">
                  <ul>
                      <li><p>#시스템버튼</p> </li>
                      <li><p>#게시글작성</p> </li>
                      <li><p>#게시판버튼</p> </li>
                  </ul>
              </div>
          </div>
      </div>
    )
  }
</script>