<!-- #include virtual = "/app/component/button/Button1.asp"-->
<!-- #include virtual = "/app/component/button/Button2.asp"-->

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

            <div className="page_text_wrap">
                <p className="page_head">버튼 - 구매</p> 
                <button className="code_open"><span className="open_bg"></span><span className="open_shape"></span></button>
                
                <div className="issue-box-wrap"></div>
                <div className="position_site"><img src="/images/btn3.png" alt='버튼위치' /></div>
                

<div className="code-box html"><ul className="btns_list">
    <li className="buy" style={{ display: "block" }}>
        <div id="pass_bnr_btn_wrap7">   
            <a href="javascript:;" onclick="go_fbuy(34, 6976);">구매하기</a>
        </div> 
    </li>                  
</ul>
<br />
<ul className="btns_list2">
    <li>
        <a href="javascript:;" className="btn">
            <div className="btn_in">
                <span className="txt1">Change Your Days, Change Your Result!</span>
                <span className="txt2">2023대비 FINAL 학습전략</span>
            </div>
        </a>
    </li>
</ul>
<br />
<ul className="btns_list3">
    <li>
        <a href="javascript:void(0);" className="purchase_btn" onclick="go_fbuy(1, 7094);">메가패스 구매하기</a>
    </li>
</ul></div>

{/*<style>.btns_list { margin-top: 0;justify-content: center;    display: flex; flex-wrap: wrap; text-align: center; font-family: "NotoSans KR";}
.btns_list li { position: relative;}
.btns_list li {width: 100%;margin: 0;}
.btns_list li a {font-size: 20px;color: #fff; background: #000;padding: 30px 0;}
.btns_list a {display: block;}
.btns_list li a::before {content: '';display: block;position: absolute; right: 0;top: 50%; transform: translateY(-50%);background: url(https://img.megagong.net/m/2022/1219_pass/btn_arr.png) no-repeat center; width: 72px; height: 80px;}

.btns_list2 {width: 100%;text-align: center; font-family: "NotoSans KR"; border:1px solid #268490;}
.btns_list2 li .btn {display: block; background-color: #ffffff;padding: 20px 0;}
.btns_list2 li .btn .btn_in {position: relative;}
.btns_list2 li .btn span {display: block;}
.btns_list2 li .btn .txt1 {font-size: 17px;color: #268490;}
.btns_list2 li .btn .txt2 {font-size: 26px;font-weight: 900; color: #111;}
.btns_list2 li .btn .btn_in:after { content: '';display: block; width: 90px; height: 100%; background: url(https://img.megagong.net/m/2023/0109_finalpass/btn_arrow_black.png) 50% 50% no-repeat; position: absolute; right: 0; top: 0; border-left: 1px solid #b7b7b7;}

.btns_list3 .purchase_btn {text-align: center; font-family: "NotoSans KR";display: block;background-color: #268490;font-size: 22px;font-weight: 700; color: #fff;padding: 25px 72px; position: relative;}
.btns_list3 .purchase_btn:after { width: 72px;background: url(https://img.megagong.net/m/2023/0109_finalpass/btn_arrow_white.png) 50% 50% no-repeat; position: absolute; right: 0;top: 50%;   margin-top: -16px; height: 32px; display: block;  content: ''; border-left: 1px solid #68a9b2;}



@media screen and (max-width: 1200px) {
    .btns_list li a{font-size: 18px;}
    .btns_list2 li .btn .btn_in {padding-right: 60px;}
    .btns_list2 li .btn .txt1 {font-size: 1.6vw;}
    .btns_list2 li .btn .txt2 {font-size: 2.2vw;}
    .btns_list2 li .btn .btn_in:after {width: 60px;}
}

@media screen and (max-width: 768px) {
    .btns_list li a{font-size: 18px;padding: 15px 36px 15px 0;}
    .btns_list3 .purchase_btn {font-size: 18px;padding: 20px 72px;}
}

@media screen and (max-width: 576px) {
    .btn_wrp a.btn_base {font-size: 14px;}
    .btns_list2 li .btn .btn_in {padding-right: 30px;}
    .btns_list2 li .btn .txt1 {font-size: 14px;}
    .btns_list2 li .btn .txt2 {font-size: 16px;}
    .btns_list2 li .btn .btn_in:after {width: 30px;background-size: 6px auto;}
}
</style>*/}

<p className="page_text">메가패스 등 여러 이벤트 페이지에서 사용되는 사각형 형태의 버튼 양식입니다. <br /> 
디자인 시안의 색상에 맞게 Color 코드변경 및 상세 수정을 권장합니다.</p>


<pre className="language-html html act"></pre>
<pre className="language-css act"></pre>

                <div className="page_bot_wrap">
                    <a className="use_link" href="<%=url_main%>//s/gong/pass/final_2023.asp#eventWrap" target="_blank"><i className='bx bx-link'></i>EXAMPLE</a>
                    <div className="cap_tag">
                        <ul>
                            <li><p>#구매하기</p> </li>
                            <li><p>#사각형</p> </li>
                            <li><p>#메가패스</p> </li>
                        </ul>
                    </div>
                </div>

            </div>




            <div className="page_text_wrap">
                <p className="page_head">버튼 - 라운드형</p> 
                <button className="code_open"><span className="open_bg"></span><span className="open_shape"></span></button>
                
                <div className="issue-box-wrap"></div>
                <div className="position_site"><img src="/images/btn3.png" alt='버튼위치' /></div>
                

<div className="code-box html"><div className="round_btn_wrap">
    <a href="javascript:openPop_popup1();" title="인증하기" className="btn_round">인증하기
        <i>-</i>
    </a>
</div></div>

{/*<style>.btn_round {display: block;background: #000; color: #fff;font-size: 24px;line-height: 75px; height: 75px;font-weight: bold; border-radius: 7px; position: relative;text-align: center; font-family: "NotoSans KR";}
.btn_round i { background: url(https://img.megagong.net/m/2022/0708_trans/coupon_btn_icon.png) 0 0 no-repeat; width: 17px; height: 27px; margin: 25px 0 0 60px; position: absolute; top: 0; left: 50%; font-size: 0;}
</style>*/}

<p className="page_text">여러 이벤트 페이지에서 사용되는 둥근 형태의 버튼 양식입니다.<br /> 
디자인 시안의 색상에 맞게 Color 코드변경 및 상세 수정을 권장합니다. </p>

<pre className="language-html html act"></pre>
<pre className="language-css act"></pre>

                <div className="page_bot_wrap">
                    <a className="use_link" href="<%=url_main%>/event/2023/02090007/index.asp#eventWrap" target="_blank"><i className='bx bx-link'></i>EXAMPLE</a>
                    <div className="cap_tag">
                        <ul>
                            <li><p>#인증하기</p> </li>
                            <li><p>#둥근느낌</p> </li>
                            <li><p>#프로모션</p> </li>
                        </ul>
                    </div>
                </div>
            </div>

            <div className="page_text_wrap">
                <p className="page_head">버튼 - hover 컬러</p> 
                <button className="code_open"><span className="open_bg"></span><span className="open_shape"></span></button>
                
                <div className="issue-box-wrap"></div>
                <div className="position_site"><img src="/images/btn4.png" alt='버튼위치' /></div>
                

<div className="code-box html"><ul className="info_list notosans">
    <li><a href="https://lab.megagong.net/l/gong/guide/guide.asp" title="공무원 가이드" target="_blank"><span>공무원 가이드</span></a></li>
    <li><a href="https://lab.megagong.net/l/gong/guide/schedule.asp" title="시험 일정" target="_blank"><span>시험 일정 <img src="https://img.megagong.net/common/ic_new.gif" alt="New" style={{verticalAlign:"middle", margin:"-3px 0 0 3px"}} /></span></a></li>
    <li><a href="https://lab.megagong.net/l/gong/statistic/pass.asp" title="경쟁률ㆍ합격선" target="_blank"><span>경쟁률ㆍ합격선 </span></a></li>
    <li><a href="https://lab.megagong.net/l/gong/guide/series.asp" title="직렬별 모집 정보" target="_blank"><span>직렬별 모집 정보 </span></a></li>
    <li>
        <a href="https://lab.megagong.net/l/gong/pass_opinion/index.asp" title="합격수기" target="_blank">
            <span>합격수기 <img src="https://img.megagong.net/common/ic_new.gif" alt="New" style={{verticalAlign:"middle", margin:"-3px 0 0 3px"}} /></span>
        </a>
    </li>
    <li><a href="https://lab.megagong.net/l/gong/library/list.asp" title="문제은행" target="_blank"><span>문제은행 </span></a></li>
    <li><a href="https://www.megagong.net/s/gong/examinfo/passmate/list.asp#mContainer" title="PASS MATE"><span>PASS MATE </span></a></li>
    <li><a href="https://lab.megagong.net/l/gong/followm/followm.asp" title="공부자극 영상(follow M)" target="_blank"><span>공부자극 영상(follow M)</span></a></li>
    <li className="for_mo lnk1"><a href="https://lab.megagong.net/l/gong/guide/guide.asp" title="공무원 가이드" target="_blank"><span>공무원 가이드</span></a></li>
    <li className="for_mo lnk2"><a href="https://lab.megagong.net/l/gong/news/list.asp?schExtra1=2" title="합격전략" target="_blank"><span>합격전략</span></a></li>
    <li className="for_mo lnk3"><a href="https://lab.megagong.net/l/gong/news/list.asp?schExtra1=3" title="시험공고" target="_blank"><span>시험공고</span></a></li>
    <li className="for_mo lnk4"><a href="https://lab.megagong.net/l/gong/library/list.asp" title="기출문제" target="_blank"><span>기출문제</span></a></li> 
</ul></div>

{/*<style>.info_list {font-weight: 200;display: flex;flex-wrap: wrap;justify-content: center;}
.info_list::after {content:"";clear:both;display:block}
.info_list li {float: left; margin: 0 10px 10px 0;padding: 0 0 0; border-radius: 6px; padding: 1px; text-decoration: none;}
.info_list li a { position: relative; display: block; padding: 0; border-radius: 6px; color: #f5bae8; width: 170px; height: 40px; line-height: 38px; border: 1px solid #d953ff; text-align: center;}
.info_list li a span {display: inline-block;padding: 0 3px 0 0;}
.info_list li a:hover {background: #fbafb1;background: linear-gradient(90deg, rgba(198,32,145,1) 0%, rgba(108,20,208,1) 100%);color: #fff;}
</style>*/}

<p className="page_text">메가공무원 메인 하단에서 사용되는 링크 이동 버튼입니다.<br /> 
Hover할 경우, Background의 색상이 큰 폭으로 변경되며, 이를 통하여 사용자가 원활하게 기능을 인식할 수 있도록 돕습니다.<br /> 
디자인 시안의 색상에 맞게 Color 코드변경 및 상세 수정을 권장합니다. </p>

<pre className="language-html html act"></pre>
<pre className="language-css act"></pre>

                <div className="page_bot_wrap">
                    <a className="use_link" href="<%=url_main%>/megagong.asp" target="_blank"><i className='bx bx-link'></i>EXAMPLE</a>
                    <div className="cap_tag">
                        <ul>
                            <li><p>#마우스효과</p> </li>
                            <li><p>#그라디언트</p> </li>
                            <li><p>#메인하단</p> </li>
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