<!-- #include virtual = "/inc/top.asp"-->
<%
dp1 = 2
dp2 = 1
%>
    <!-- #include virtual = "/inc/aside.asp"-->
    
    <div class="page_wrap" id="page_wrap">

        <div class="page_inner">
            <div class="page_name_wrap">
                <h3 class="page_name">BUTTON</h3>
                <h3 class="page_name_sub">버튼</h3>
                <p class="page_sub_text">메가공무원 사이트에서 통상적으로 사용되는 버튼 컴포넌트입니다.<br>
                사용되는 페이지의 디자인 및 용도에 맞게 다양한 변형이 가능합니다.
                </p>
              <div class="page_print"><input type="button" value="인쇄하기" id="print" onclick="window.print()"/></div>

            </div>

            <!--<p class="page_sub_text">여기에 줄글로 설명을 적습니다. 여기에 줄글로 설명을 적습니다. 여기에 줄글로 설명을 적습니다.</p>
            <hr/>-->
            
            <div class="page_text_wrap">
                <p class="page_head">버튼 - 기본형</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/btn.png" alt='버튼위치' ></div>
                

<!-- HTML -->
<div class="code-box html"><div class="btn_list">
    <a href="javascript:fncViewChange();" class="cmn_btn">내가쓴글 보기</a>
    <a href="javascript:fncViewChange();" class="cmn_btn">전체글</a>
</div>
<div class="btn_list">
    <a href="javascript:fncBrdWrite();" class="cmn_btn c_green">질문하기</a>
</div>
<p class="btn_wrap">
	<a href="javascript:void(0);" style="cursor:pointer;" onclick="goRegister();" class="btn">수강후기 <br class="mo_576">작성하기</a>
</p></div>

<style>.btn_wrap .btn {display: block;width: 130px;height: 40px;line-height: 40px;font-size: 14px;color: #fff;background-color: #129490;font-weight: 600;text-align: center;}
.btn_wrap .btn .mo_576 {display: none;}
</style>

<p class="page_text">게시글 작성 및 질문 등의 용도를 가진 버튼들은 지정된 고유의 CSS를 유지하여 모두 동일한 디자인이 되도록 작업합니다.<br> 
별도로 지정된 상황 외에는, 기본적으로 모든 버튼은 중앙 혹은 오른쪽에 정렬하도록 합니다. 
</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/teacher/qna/qna.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#시스템버튼</p> </li>
                            <li><p>#게시글작성</p> </li>
                            <li><p>#게시판버튼</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->





            <div class="page_text_wrap">
                <p class="page_head">버튼 - 슬라이드 좌우형</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/btn2.png" alt='버튼위치' ></div>
                

<!-- HTML -->
<div class="code-box html"><button class="slick-prev slick-arrow" aria-label="Previous" type="button" style="">Previous</button>
<button class="slick-next slick-arrow" aria-label="Next" type="button" style="">Next</button>

<button class="slick-prev2 slick-arrow2" aria-label="Previous" type="button" style="">Previous</button>
<button class="slick-next2 slick-arrow2" aria-label="Next" type="button" style="">Next</button>

<button class="slick-prev3 slick-arrow3" aria-label="Previous" type="button" style="">Previous</button>
<button class="slick-next3 slick-arrow3" aria-label="Next" type="button" style="">Next</button>

<button class="slick-prev4 slick-arrow4" aria-label="Previous" type="button" style="">Previous</button>
<button class="slick-next4 slick-arrow4" aria-label="Next" type="button" style="">Next</button>

<button class="slick-prev5 slick-arrow5" aria-label="Previous" type="button" style="">Previous</button>
<button class="slick-next5 slick-arrow5" aria-label="Next" type="button" style="">Next</button>

<button class="slick-prev6 slick-arrow6" aria-label="Previous" type="button" style="">Previous</button>
<button class="slick-next6 slick-arrow6" aria-label="Next" type="button" style="">Next</button>

<br>

<button class="slick-prev7 slick-arrow7" aria-label="Previous" type="button" style="">Previous</button>
<button class="slick-next7 slick-arrow7" aria-label="Next" type="button" style="">Next</button>

<button class="slick-prev8 slick-arrow8" aria-label="Previous" type="button" style="">Previous</button>
<button class="slick-next8 slick-arrow8" aria-label="Next" type="button" style="">Next</button>

<button class="slick-prev9 slick-arrow9" aria-label="Previous" type="button" style="">Previous</button>
<button class="slick-next9 slick-arrow9" aria-label="Next" type="button" style="">Next</button>

<button class="slick-prev10 slick-arrow10" aria-label="Previous" type="button" style="">Previous</button>
<button class="slick-next10 slick-arrow10" aria-label="Next" type="button" style="">Next</button>
</div>

<style>.slick-arrow {font-size: 0; width: 7px; height: 13px;}
.slick-prev {background: url(https://img.megagong.net/m/2022/0616_main/arr_L.png) no-repeat center;background-size: 100% auto;}
.slick-next {background: url(https://img.megagong.net/m/2022/0616_main/arr_R.png) no-repeat center; background-size: 100% auto;}

.slick-arrow2 { width: 21px; height: 29px; font-size: 0;}
.slick-prev2 { background: #2b2c30 url(https://img.megagong.net/m/2022/0616_main/white_arr_L.png) no-repeat center;}
.slick-next2 {background: #2b2c30 url(https://img.megagong.net/m/2022/0616_main/white_arr_R.png) no-repeat center;}

.slick-arrow3 { width: 22px;height: 35px; font-size: 0;background: #e7e7e7 url(https://img.megagong.net/m/2021/0615_gongRNL/teacher_notice_arrow.png) no-repeat 6px 3px;opacity: 0.7;}
.slick-next3 {background-position: -27px 3px;}

.slick-arrow4 {width: 24px;height: 32px; font-size: 0;  background-repeat: no-repeat; background-image: url(https://img.megagong.net/m/2021/0615_gongRNL/cast_arrow.png);opacity: 0.7;}
.slick-prev4 {background-position: 0 0;}
.slick-next4 {background-position: 100% 0;}

.slick-arrow5 { width: 17px;height: 26px; font-size: 0; background: rgba(0,0,0,0.5) url(https://img.megagong.net/m/2022/1219_pass/evt_arrow_w.png) no-repeat;}
.slick-prev5 {background-position: 0 center;}
.slick-next5 { background-position: 100% center;}

.slick-arrow6 { width: 17px;height: 26px; font-size: 0; background: url(https://img.megagong.net/m/2021/1007_mainrenw/evt_arrow.png) no-repeat;}
.slick-prev6 {background-position: 0 center;}
.slick-next6 { background-position: 100% center;}

.slick-arrow7 { width: 20px; height: 39px; font-size: 0; }
.slick-prev7 {background: url(https://img.megagong.net/m/2022/0404_pass/all/btn_slider_prev.png) no-repeat;}
.slick-next7 { background: url(https://img.megagong.net/m/2022/0404_pass/all/btn_slider_next.png) no-repeat;}

.slick-arrow8 { width: 20px; height: 35px; font-size: 0; }
.slick-prev8 {background: url(https://img.megagong.net/m/2022/0317_psat/0331/con2_sd_al.png) no-repeat;}
.slick-next8 { background: url(https://img.megagong.net/m/2022/0317_psat/0331/con2_sd_ar.png) no-repeat;}

.slick-arrow9 { width: 20px; height: 96px; font-size: 0; }
.slick-prev9 {background: url(https://img.megagong.net/m/2022/0708_examinfo/btn_prev.png) no-repeat;}
.slick-next9 { background: url(https://img.megagong.net/m/2022/0708_examinfo/btn_next.png) no-repeat;}

.slick-arrow10 { width: 24px; height: 40px; font-size: 0; }
.slick-prev10 {background: url(https://img.megagong.net/m/2022/0929_gosabu88/btn_prev.png) no-repeat;}
.slick-next10 { background: url(https://img.megagong.net/m/2022/0929_gosabu88/btn_next.png) no-repeat;}
</style>

<p class="page_text">슬라이드에 사용되는 좌, 우측 버튼의 예시입니다. <br> 
슬라이드 버튼의 경우, 반응형을 고려하여 사이즈를 책정하고 및 버튼의 색상을 지정하는 것을 권장합니다. </p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/megagong.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#슬라이드버튼</p> </li>
                            <li><p>#넘기기버튼</p> </li>
                            <li><p>#화살표</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->



            <div class="page_text_wrap">
                <p class="page_head">버튼 - 구매</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/btn3.png" alt='버튼위치' ></div>
                

<!-- HTML -->
<div class="code-box html"><ul class="btns_list">
    <li class="buy" style="display: block;">
        <div id="pass_bnr_btn_wrap7">   
            <a href="javascript:;" onclick="go_fbuy(34, 6976);">구매하기</a>
        </div> 
    </li>                  
</ul>
<br>
<ul class="btns_list2">
    <li>
        <a href="javascript:;" class="btn">
            <div class="btn_in">
                <span class="txt1">Change Your Days, Change Your Result!</span>
                <span class="txt2">2023대비 FINAL 학습전략</span>
            </div>
        </a>
    </li>
</ul>
<br>
<ul class="btns_list3">
    <li>
        <a href="javascript:void(0);" class="purchase_btn" onclick="go_fbuy(1, 7094);">메가패스 구매하기</a>
    </li>
</ul></div>

<style>.btns_list { margin-top: 0;justify-content: center;    display: flex; flex-wrap: wrap; text-align: center; font-family: "NotoSans KR";}
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
</style>

<p class="page_text">메가패스 등 여러 이벤트 페이지에서 사용되는 사각형 형태의 버튼 양식입니다. <br> 
디자인 시안의 색상에 맞게 Color 코드변경 및 상세 수정을 권장합니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>//s/gong/pass/final_2023.asp#eventWrap" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#구매하기</p> </li>
                            <li><p>#사각형</p> </li>
                            <li><p>#메가패스</p> </li>
                        </ul>
                    </div>
                </div>

            </div><!-- .page_text_wrap -->




            <div class="page_text_wrap">
                <p class="page_head">버튼 - 라운드형</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/btn3.png" alt='버튼위치' ></div>
                

<!-- HTML -->
<div class="code-box html"><div class="round_btn_wrap">
    <a href="javascript:openPop_popup1();" title="인증하기" class="btn_round">인증하기
        <i>-</i>
    </a>
</div></div>

<style>.btn_round {display: block;background: #000; color: #fff;font-size: 24px;line-height: 75px; height: 75px;font-weight: bold; border-radius: 7px; position: relative;text-align: center; font-family: "NotoSans KR";}
.btn_round i { background: url(https://img.megagong.net/m/2022/0708_trans/coupon_btn_icon.png) 0 0 no-repeat; width: 17px; height: 27px; margin: 25px 0 0 60px; position: absolute; top: 0; left: 50%; font-size: 0;}
</style>

<p class="page_text">여러 이벤트 페이지에서 사용되는 둥근 형태의 버튼 양식입니다.<br> 
디자인 시안의 색상에 맞게 Color 코드변경 및 상세 수정을 권장합니다. </p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/event/2023/02090007/index.asp#eventWrap" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#인증하기</p> </li>
                            <li><p>#둥근느낌</p> </li>
                            <li><p>#프로모션</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->




            <div class="page_text_wrap">
                <p class="page_head">버튼 - hover 컬러</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/btn4.png" alt='버튼위치' ></div>
                

<!-- HTML -->
<div class="code-box html"><ul class="info_list notosans">
    <li><a href="https://lab.megagong.net/l/gong/guide/guide.asp" title="공무원 가이드" target="_blank"><span>공무원 가이드</span></a></li>
    <li><a href="https://lab.megagong.net/l/gong/guide/schedule.asp" title="시험 일정" target="_blank"><span>시험 일정 <img src="https://img.megagong.net/common/ic_new.gif" alt="New" style="vertical-align:middle;margin:-3px 0 0 3px;"></span></a></li>
    <li><a href="https://lab.megagong.net/l/gong/statistic/pass.asp" title="경쟁률ㆍ합격선" target="_blank"><span>경쟁률ㆍ합격선 </span></a></li>
    <li><a href="https://lab.megagong.net/l/gong/guide/series.asp" title="직렬별 모집 정보" target="_blank"><span>직렬별 모집 정보 </span></a></li>
    <li>
        <a href="https://lab.megagong.net/l/gong/pass_opinion/index.asp" title="합격수기" target="_blank">
            <span>합격수기 <img src="https://img.megagong.net/common/ic_new.gif" alt="New" style="vertical-align:middle;margin:-3px 0 0 3px;"></span>
        </a>
    </li>
    <li><a href="https://lab.megagong.net/l/gong/library/list.asp" title="문제은행" target="_blank"><span>문제은행 </span></a></li>
    <li><a href="https://www.megagong.net/s/gong/examinfo/passmate/list.asp#mContainer" title="PASS MATE"><span>PASS MATE </span></a></li>
    <li><a href="https://lab.megagong.net/l/gong/followm/followm.asp" title="공부자극 영상(follow M)" target="_blank"><span>공부자극 영상(follow M)</span></a></li>
    <li class="for_mo lnk1"><a href="https://lab.megagong.net/l/gong/guide/guide.asp" title="공무원 가이드" target="_blank"><span>공무원 가이드</span></a></li>
    <li class="for_mo lnk2"><a href="https://lab.megagong.net/l/gong/news/list.asp?schExtra1=2" title="합격전략" target="_blank"><span>합격전략</span></a></li>
    <li class="for_mo lnk3"><a href="https://lab.megagong.net/l/gong/news/list.asp?schExtra1=3" title="시험공고" target="_blank"><span>시험공고</span></a></li>
    <li class="for_mo lnk4"><a href="https://lab.megagong.net/l/gong/library/list.asp" title="기출문제" target="_blank"><span>기출문제</span></a></li> 
</ul></div>

<style>.info_list {font-weight: 200;display: flex;flex-wrap: wrap;justify-content: center;}
.info_list::after {content:"";clear:both;display:block}
.info_list li {float: left; margin: 0 10px 10px 0;padding: 0 0 0; border-radius: 6px; padding: 1px; text-decoration: none;}
.info_list li a { position: relative; display: block; padding: 0; border-radius: 6px; color: #f5bae8; width: 170px; height: 40px; line-height: 38px; border: 1px solid #d953ff; text-align: center;}
.info_list li a span {display: inline-block;padding: 0 3px 0 0;}
.info_list li a:hover {background: #fbafb1;background: linear-gradient(90deg, rgba(198,32,145,1) 0%, rgba(108,20,208,1) 100%);color: #fff;}
</style>

<p class="page_text">메가공무원 메인 하단에서 사용되는 링크 이동 버튼입니다.<br> 
Hover할 경우, Background의 색상이 큰 폭으로 변경되며, 이를 통하여 사용자가 원활하게 기능을 인식할 수 있도록 돕습니다.<br> 
디자인 시안의 색상에 맞게 Color 코드변경 및 상세 수정을 권장합니다. </p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/megagong.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#마우스효과</p> </li>
                            <li><p>#그라디언트</p> </li>
                            <li><p>#메인하단</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->



            





            <!--<div class="page_text_wrap board2">
                <p class="page_head">버튼  - 이미지 &amp; 중앙정렬</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div>--><!-- 채팅박스 동적으로 생성 -->

<!-- HTML -->
<!--<div class="code-box html"><div class="btn_list tC">
  <a href="#none"><img src="<%=img_main%>/btn/btn_write2.gif" alt="글쓰기"></a>
  <a href="#none"><img src="<%=img_main%>/btn/bt_pqa3.gif" alt="질문하기"></a>
</div></div>>-->

<!--<p class="page_text">글 작성 및 질문 등의 용도를 가진 버튼들은 지정된 고유의 이미지를 활용하여 모두 동일한 디자인이 되도록 작업합니다.</p>-->

<!-- Code View -->
<!--<pre class="language-html html act"></pre>

                <a class="use_link" href="<%=url_main%>/teacher/notice/notice.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
            </div>--><!-- .page_text_wrap -->




            <!-- #include virtual = "/inc/tweet_popup_all.asp"-->
            <!-- #include virtual = "/inc/ball.asp"-->
            <!-- #include virtual = "/inc/footer.asp"-->
            
        </div> <!--//page_inner -->
    
    </div>


    <div class="ank"></div>

    

    <style>
    html {overflow-x:hidden;}
    .ball.fir.ver3 , .ball.fir.ver4, .ball.fir.ver5, .ball.fir.ver6, .ball.fir.ver1 , .ball.fir.ver2 {animation:inherit;}
    .guide-aside {border-right: none; /*background:rgba(255,255,255,0.2);*/ backdrop-filter: blur( 11px );-webkit-backdrop-filter: blur( 11px );}
    .board1 .btn_wrap {margin-top: 10px;}
    .board1 .btn_wrap .btn { margin: auto;}
    .btn_list {margin-top:0px;text-align: center;}
    .round_btn_wrap a.btn_round {color: #fff;}
    .code-box {text-align: center;}
    .slick-prev9, .slick-next9 {background-size: 100%;background-position: 0;}
    .code-box a:hover {color: #fff}
    


    </style>

<!-- #include virtual = "/inc/bottom.asp"-->