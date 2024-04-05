<!-- #include virtual = "/inc/top.asp"-->
<%
dp1 = 2
dp2 = 4
dp3 = 1
%>
    <!-- #include virtual = "/inc/aside.asp"-->
    
    <div class="page_wrap page_wide" id="page_wrap">

        <div class="page_inner">
          <div class="page_name_wrap">
              <h3 class="page_name">SLIDE</h3>
              <h3 class="page_name_sub">슬라이드 - Slick (1.8.0)</h3>
              <p class="page_sub_text">슬라이드는 메가공무원 메인 페이지에서부터 홍보페이지까지 특정 정보 전달을 위하여 광범위하게 사용되고 있는 기능입니다.<br>
              주로 우측에서 좌측으로, 3초마다 슬라이드가 변경 및 이동됩니다. 또한 슬라이드 영역 위에 마우스 커서를 올릴 경우, <br>
              슬라이드 재생이 일시적으로 멈추면서 사용자가 원하는 정보를 정확히 확인할 수 있도록 돕고 있습니다.</p>
              <div class="page_print"><input type="button" value="인쇄하기" id="print" onclick="window.print()"/></div>
          </div>
            
            <div class="page_text_wrap">
              <p class="page_head">상단 D-day 슬라이드</p> 
              <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
              <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
              <div class="position_site"><img src="/images/slide1.png" alt='슬라이드위치' ></div>
                

<!-- HTML -->
<div class="code-box html"><div class="hd_top">
  <div class="dday_wrap">
    <div class="dday_txt">국가직 5급 1차 <strong>D-162</strong></div>
    <div class="dday_txt">국가직 9급 <strong>D-10</strong></div>
    <div class="dday_txt">소방공무원 <strong>D-7</strong></div>
    <div class="dday_txt">지방직 9급 <strong>D-5</strong></div>
    <div class="dday_txt">국가직 5급 2차 <strong>D-3</strong></div>
  </div>
</div></div>

<!-- CSS -->
<div class="code-box css"><link type="text/css" rel="stylesheet" href="/css/popup_style.css">
</div>
<style>.hd_top .dday_wrap { float:inherit;margin: auto;transform: scale(1.5);text-align: center;}
.hd_top .dday_wrap::before {display:none;}
</style>

<!-- JS -->
<script>
$('.dday_wrap').slick({
  slidesToShow: 1,
  slidesToScroll: 1,
  infinite: true,
  dots: false,
  arrows: false,
  speed: 200,
  autoplaySpeed: 3000,
  autoplay: true,
  rows: 0,
  vertical: true
});
</script>

<p class="page_text">메가스터디 공무원 메인 페이지에서 사용되는 슬라이드 기능입니다.<br> 
상단 우측 헤더(Header)부분에 고정적으로 위치하고 있으며 남은 시험 과목과 그 기간에 대한 정보를 D-day로 표기하여 사용자에게 전달해줍니다.<br> 
기본적으로 아래에서 위로 자연스럽게 넘어가는 효과와 함께 3초 단위로 슬라이드가 변경됩니다.</p>

<!-- Code View -->
<pre class="language-html html act direct"><code><div class="hd_top">
  <div class="dday_wrap">
    <div class="dday_txt">국가직 5급 1차 <strong>D-162</strong></div>
    <div class="dday_txt">국가직 9급 <strong>D-10</strong></div>
    <div class="dday_txt">소방공무원 <strong>D-7</strong></div>
    <div class="dday_txt">지방직 9급 <strong>D-5</strong></div>
    <div class="dday_txt">국가직 5급 2차 <strong>D-3</strong></div>
  </div>
</div></code></pre>
<pre class="language-javascript act direct"><code>$('.dday_wrap').slick({
  slidesToShow: 1,
  slidesToScroll: 1,
  infinite: true,
  dots: false,
  arrows: false,
  speed: 200,
  autoplaySpeed: 3000,
  autoplay: true,
  rows: 0,
  vertical: true
});</code></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/megagong.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#디데이</p> </li>
                            <li><p>#날짜</p> </li>
                            <li><p>#슬라이드</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->






            <div class="page_text_wrap">
                <p class="page_head">헤더 좌측 슬라이드</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/slide2.png" alt='슬라이드위치' ></div>
                

<!-- HTML -->
<div class="code-box html"><div class="hd_left_bnr">
  <div class="hd_slider">
    <div>
      <a href="javascript:void(0);">
        <img src="<%=img_main%>/m/2022/0411_quiz/main_sky_ban.jpg" style="cursor:pointer;" alt="당신의 진짜 국어 실력은? 도전! 메가퀴즈쇼">
      </a>
    </div>
    <div>
      <a href="javascript:void(0);">
        <img src="<%=img_main%>/m/2022/0402_fullserv/main_sky_ban.jpg" style="cursor:pointer;" alt="합격예측 풀서비스">
      </a>
    </div>
  </div>
</div></div>

<!-- CSS -->
<div class="code-box css"><link type="text/css" rel="stylesheet" href="/css/slide_style.css">
</div>
<style>
.hd_left_bnr {margin: auto;}
</style>

<!-- JS -->
<script>
$('.hd_slider').slick({
  slidesToShow: 1,
  slidesToScroll: 1,
  infinite: true,
  dots: false,
  arrow: true,
  speed: 0,
  autoplaySpeed: 3000,
  autoplay: true,
});
</script>

<p class="page_text">메가스터디 공무원 메인 페이지에서 사용되는 슬라이드 배너 기능입니다.<br>  상단 좌측 헤더(Header)부분에 고정적으로 위치하고 있으며 클릭 시, 홍보 및 이벤트 페이지로 연결됩니다.<br>  기본적으로 자연스럽게 넘어가는 효과 없이, 보여지고 있는 슬라이드가 3초 단위로 변경됩니다.</p>

<!-- Code View -->
<pre class="language-html html act direct"><code><div class="hd_left_bnr">
  <div class="hd_slider">
    <div>
      <a href="javascript:void(0);">
        <img src="<%=img_main%>/m/2022/0411_quiz/main_sky_ban.jpg" style="cursor:pointer;" alt="당신의 진짜 국어 실력은? 도전! 메가퀴즈쇼">
      </a>
    </div>
    <div>
      <a href="javascript:void(0);">
        <img src="<%=img_main%>/m/2022/0402_fullserv/main_sky_ban.jpg" style="cursor:pointer;" alt="합격예측 풀서비스">
      </a>
    </div>
  </div>
</div></code></pre>
<pre class="language-html css act direct"><code>.hd_left_bnr {margin: auto;}</code></pre>
<pre class="language-javascript act direct"><code>$('.hd_slider').slick({
  slidesToShow: 1,
  slidesToScroll: 1,
  infinite: true,
  dots: false,
  arrow: true,
  speed: 0,
  autoplaySpeed: 3000,
  autoplay: true,
});</code></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/megagong.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#배너</p> </li>
                            <li><p>#화살표</p> </li>
                            <li><p>#메인상단</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->







            <div class="page_text_wrap">
                <p class="page_head">우측 퀵 슬라이드</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/slide3.png" alt='슬라이드위치' ></div>

<!-- HTML -->
<div class="code-box html"><div id="main_exhibi_bs" class="main_exhibi main_exhibi_mock d1220 d0215 d0330 d0420">
  <div class="exhibi_sd">
    <div class="item">
      <a href="<%=url_main%>/event/2022/03180006/index.asp#eventWrap" title="Easy&Fast 합격전략">
        <img src="<%=img_main%>/m/2022/0318_history/con_img35.png" alt="Easy&Fast 합격전략">
      </a>
    </div>
    <div class="item">
      <a href="<%=url_main%>/s/gong/lawexam/2022_2/index.asp#eventWrap" title="메가법원직 전국 모의고사">
        <i><img src="<%=img_main%>/m/2022/0428_lawexam/main_rht_ic.png" alt="지방직 신청 중"></i>
        <img src="<%=img_main%>/m/2022/0428_lawexam/main_rht_bn2.png" alt="메가법원직 전국 모의고사">
      </a>
    </div>
  </div>
</div></div>

<!-- CSS -->
<div class="code-box css"><link type="text/css" rel="stylesheet" href="/css/popup_style.css">
</div>
<style>.main_exhibi.d0420 {margin: auto;}
</style>

<!-- JS -->
<script>$('#main_exhibi_bs .exhibi_sd').slick({
  infinite: true,
  arrow: false,
  speed: 0,
  autoplaySpeed: 3000,
  autoplay: true,
  dots: true,
  fade: true,
});
</script>

<p class="page_text">메가스터디 공무원 메인 페이지에서 사용되는 슬라이드 배너 기능입니다.<br> 
중앙 우측 부분에 주로 위치하고 있으며 클릭 시, 홍보 및 이벤트 페이지로 연결됩니다.<br> 
기본적으로 자연스럽게 넘어가는 효과 없이, 보여지고 있는 슬라이드가 3초 단위로 변경됩니다.</p>

<!-- Code View -->
<pre class="language-html html act direct"><code><div id="main_exhibi_bs" class="main_exhibi main_exhibi_mock d1220 d0215 d0330 d0420">
  <div class="exhibi_sd">
    <div class="item">
      <a href="<%=url_main%>/event/2022/03180006/index.asp#eventWrap" title="Easy&Fast 합격전략">
        <img src="<%=img_main%>/m/2022/0318_history/con_img35.png" alt="Easy&Fast 합격전략">
      </a>
    </div>
    <div class="item">
      <a href="<%=url_main%>/s/gong/lawexam/2022_2/index.asp#eventWrap" title="메가법원직 전국 모의고사">
        <i><img src="<%=img_main%>/m/2022/0428_lawexam/main_rht_ic.png" alt="지방직 신청 중"></i>
        <img src="<%=img_main%>/m/2022/0428_lawexam/main_rht_bn2.png" alt="메가법원직 전국 모의고사">
      </a>
    </div>
  </div>
</div></code></pre>
<pre class="language-html css act direct"><code><!--<link type="text/css" rel="stylesheet" href="/css/popup_style.css">-->
.main_exhibi.d0420 {margin: auto;}</code></pre>
<pre class="language-javascript act direct"><code>$('#main_exhibi_bs .exhibi_sd').slick({
  infinite: true,
  arrow: false,
  speed: 0,
  autoplaySpeed: 3000,
  autoplay: true,
  dots: true,
  fade: true,
});</code></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/megagong.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#배너슬라이드</p> </li>
                            <li><p>#메인중앙</p> </li>
                            <li><p>#이벤트페이지연결</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->






            <div class="page_text_wrap">
                <p class="page_head">메인 배너 슬라이드</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/slide4.png" alt='슬라이드위치' ></div>

<!-- HTML -->
<div class="code-box html"><div class="main_wrp">
  <div class="main_event">
    <div class="exhibi_wrap">
      <h3 class="cmmn_tit">메가’s PICK 기획전</h3>
      <a href="javascript:exhibiPcwrap_focus();" class="more" title="더보기">더보기</a>
        <div id="exhibi_roll" class="exhibi_roll"> 
          <div class="item">
            <a href="<%=url_main%>/s/army/event/2022/05270008/index.asp#eventWrap" title="군무원 마무리 전략, THE FINAL">
              <img src="<%=img_main%>/m/2022/0527_final/exhi_bnr.jpg" alt="군무원 마무리 전략, THE FINAL">
            </a>
          </div>
          <div class="item">
            <a href="<%=url_main%>/s/army/event/2021/08300012/index.asp#eventWrap" title="2022 시작은 메가군무원에서!">
              <img src="<%=img_main%>/m/2021/1229_army_main/exhi_bnr3.jpg" alt="-" />
            </a>
          </div>
          <div class="item">
            <a href="<%=url_main%>/event/2022/05100008/index.asp#eventWrap" title="한능검 라인업">
              <img src="<%=img_main%>/m/2022/0510_lineup/exhi_bnr1.png" alt="-" />
            </a>
          </div>
          <div class="item">
            <a href="<%=url_main%>/event/2022/03180006/index.asp#eventWrap" title="한능검 등급 달성을 목표로!EASY & FAST 한능검 합격 전략">
              <img src="<%=img_main%>/m/2022/0318_history/con_img27.jpg" alt="-" />
            </a>
          </div>
        </div>
        <div class="exhibi_pclist"> 
          <ul>
            <li class="item">                    
              <a href="<%=url_main%>/s/army/event/2021/10270015/index.asp#eventWrap" title="1-2월  군무원 새강좌">
                <img src="<%=img_main%>/m/2021/1229_army_main/exhi_bnr1.jpg" alt="-" />
              </a>
            </li>
            <li class="item">
              <a href="<%=url_main%>/s/army/event/2021/08300012/index.asp#eventWrap" title="2022 시작은 메가군무원에서!">
                <img src="<%=img_main%>/m/2021/1229_army_main/exhi_bnr3.jpg" alt="-" />
              </a>
            </li>
            <li class="item">
              <a href="<%=url_main%>/event/2022/05100008/index.asp#eventWrap" title="한능검 라인업">
                <img src="<%=img_main%>/m/2022/0510_lineup/exhi_bnr1.png" alt="-" />
              </a>
            </li>
            <li class="item">
              <a href="<%=url_main%>/event/2022/03180006/index.asp#eventWrap" title="한능검 등급 달성을 목표로!EASY & FAST 한능검 합격 전략">
                <img src="<%=img_main%>/m/2022/0318_history/con_img27.jpg" alt="-" />
              </a>
            </li>
          </ul>
        </div>
    </div>
  </div>
</div></div>
<script>var mainEventexhibi_lng = $('#exhibi_roll .item').length;
var mainEventexhibi_num = $('.exhibi_wrap .counting > strong');
$('.exhibi_wrap .counting .total').html(mainEventexhibi_lng);

$('#exhibi_roll').slick({
  slidesToShow: 1,
  slidesToScroll: 1,
  infinite: true,
  dots: false,
  arrow: true,
  speed: 200,
  autoplaySpeed: 3000,    
  autoplay: true,
  //initialSlide: mainEventexhibi_load,
  dots: true,
  responsive: [{
    breakpoint: 1200,
    settings: {
      slidesToShow: 1,
      }
    },{
      breakpoint: 769,
      settings: {
        slidesToShow: 1,
    }
  }]
});
function exhibiPcwrap_focus() {
  if ($(".exhibi_wrap").hasClass('on')) {
    $(".exhibi_wrap").removeClass('on');
  } else {
    $(".exhibi_wrap").addClass('on');
  }
}</script>

<!-- CSS -->

<style>
.main_wrp .main_event {padding: 0px;margin: 0% 10% 0% 10%;}
</style>

<!-- JS -->
<script>
</script>

<p class="page_text">메가스터디 공무원 메인 페이지에서 사용되는 슬라이드 배너 기능입니다.<br> 
페이지 중앙부에 위치하고 있으며 반응형의 경우 Dot 슬라이드 버튼이 나타납니다. 또한 배너를 클릭할 경우, 홍보 및 이벤트 페이지로 연결됩니다.<br> 
기본적으로 우측에서 좌측으로 자연스럽게 넘어가는 효과와 함께 3초 단위로 슬라이드가 변경됩니다.</p>

<!-- Code View -->
<pre class="language-html html act direct"><code><div class="main_wrp">
  <div class="main_event">
    <div class="exhibi_wrap">
      <h3 class="cmmn_tit">메가’s PICK 기획전</h3>
      <a href="javascript:exhibiPcwrap_focus();" class="more" title="더보기">더보기</a>
        <div id="exhibi_roll" class="exhibi_roll"> 
          <div class="item">
            <a href="<%=url_main%>/s/army/event/2022/05270008/index.asp#eventWrap" title="군무원 마무리 전략, THE FINAL">
              <img src="<%=img_main%>/m/2022/0527_final/exhi_bnr.jpg" alt="군무원 마무리 전략, THE FINAL">
            </a>
          </div>
          <div class="item">
            <a href="<%=url_main%>/s/army/event/2021/08300012/index.asp#eventWrap" title="2022 시작은 메가군무원에서!">
              <img src="<%=img_main%>/m/2021/1229_army_main/exhi_bnr3.jpg" alt="-" />
            </a>
          </div>
          <div class="item">
            <a href="<%=url_main%>/event/2022/05100008/index.asp#eventWrap" title="한능검 라인업">
              <img src="<%=img_main%>/m/2022/0510_lineup/exhi_bnr1.png" alt="-" />
            </a>
          </div>
          <div class="item">
            <a href="<%=url_main%>/event/2022/03180006/index.asp#eventWrap" title="한능검 등급 달성을 목표로!EASY & FAST 한능검 합격 전략">
              <img src="<%=img_main%>/m/2022/0318_history/con_img27.jpg" alt="-" />
            </a>
          </div>
        </div>
        <div class="exhibi_pclist"> 
          <ul>
            <li class="item">                    
              <a href="<%=url_main%>/s/army/event/2021/10270015/index.asp#eventWrap" title="1-2월  군무원 새강좌">
                <img src="<%=img_main%>/m/2021/1229_army_main/exhi_bnr1.jpg" alt="-" />
              </a>
            </li>
            <li class="item">
              <a href="<%=url_main%>/s/army/event/2021/08300012/index.asp#eventWrap" title="2022 시작은 메가군무원에서!">
                <img src="<%=img_main%>/m/2021/1229_army_main/exhi_bnr3.jpg" alt="-" />
              </a>
            </li>
            <li class="item">
              <a href="<%=url_main%>/event/2022/05100008/index.asp#eventWrap" title="한능검 라인업">
                <img src="<%=img_main%>/m/2022/0510_lineup/exhi_bnr1.png" alt="-" />
              </a>
            </li>
            <li class="item">
              <a href="<%=url_main%>/event/2022/03180006/index.asp#eventWrap" title="한능검 등급 달성을 목표로!EASY & FAST 한능검 합격 전략">
                <img src="<%=img_main%>/m/2022/0318_history/con_img27.jpg" alt="-" />
              </a>
            </li>
          </ul>
        </div>
    </div>
  </div>
</div></code></pre>
<pre class="language-javascript act direct"><code>var mainEventexhibi_lng = $('#exhibi_roll .item').length;
var mainEventexhibi_num = $('.exhibi_wrap .counting > strong');
$('.exhibi_wrap .counting .total').html(mainEventexhibi_lng);

$('#exhibi_roll').slick({
  slidesToShow: 1,
  slidesToScroll: 1,
  infinite: true,
  dots: false,
  arrow: true,
  speed: 200,
  autoplaySpeed: 3000,    
  autoplay: true,
  //initialSlide: mainEventexhibi_load,
  dots: true,
  responsive: [{
    breakpoint: 1200,
    settings: {
      slidesToShow: 1,
      }
    },{
      breakpoint: 769,
      settings: {
        slidesToShow: 1,
    }
  }]
});
function exhibiPcwrap_focus() {
  if ($(".exhibi_wrap").hasClass('on')) {
    $(".exhibi_wrap").removeClass('on');
  } else {
    $(".exhibi_wrap").addClass('on');
  }
}</code></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/megagong.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#메인배너</p> </li>
                            <li><p>#링크연결</p> </li>
                            <li><p>#펼치기</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->








              <div class="page_text_wrap">
                <p class="page_head">후기 슬라이드</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/slide5.png" alt='슬라이드위치' ></div>

<!-- HTML -->
<div class="code-box html"><div class="con1">
  <div class="inner">
    <div class="slickBox">
      <div class="review_slider">
        <div class="item"><img src="<%=img_main%>/m/2022/0429_tax/review_1.png" alt=""></div>
        <div class="item"><img src="<%=img_main%>/m/2022/0429_tax/review_2.png" alt=""></div>
        <div class="item"><img src="<%=img_main%>/m/2022/0429_tax/review_3.png" alt=""></div>
        <div class="item"><img src="<%=img_main%>/m/2022/0429_tax/review_4.png" alt=""></div>
        <div class="item"><img src="<%=img_main%>/m/2022/0429_tax/review_5.png" alt=""></div>
        <div class="item"><img src="<%=img_main%>/m/2022/0429_tax/review_6.png" alt=""></div>
        <div class="item"><img src="<%=img_main%>/m/2022/0429_tax/review_7.png" alt=""></div>
        <div class="item"><img src="<%=img_main%>/m/2022/0429_tax/review_8.png" alt=""></div>
      </div>
    </div>
  </div>
</div></div>

<style>
.board5 .code-box {    padding: 40px 0;}
.board5 .code-box .inner {width: 73%;margin: auto;}
.board5 .code-box .con1 .slickBox {     margin: 100px auto 0px;}
.board5 .code-box .con1 .slickBox .slick-prev { left: 25%;margin-left:0px;}
.board5 .code-box .con1 .slickBox .slick-next {right: 24.5%; margin-right: 0px; }

.review_slider { position:absolute; top:0; left:50%; transform:translateX(-50%); width:255%; }
.review_slider .item { color:#fff; }
.review_slider .item img { width:95%; display:block; margin:auto; }
.review_slider .slick-slide { opacity:.2; transition:all .3s; }
.review_slider .slick-slide.on { opacity:1; }

@media (max-width:1200px){
  .review_slider:before,
  .review_slider:after { display:none; }
  .review_slider { position:static; top:0; left:0; transform:translateX(0); width:100%; }
  .review_slider .item img { width:95%; display:block; margin:auto; }
}
</style>

<!-- JS -->
<script>$(".review_slider").slick({
  arrows: true,
  dots : false,
  infinite: true,
  slidesToShow: 7,
  //slidesToScroll: 3,
  autoplaySpeed: 3000,
  autoplay: true,
  variableWidth: false,
  centerMode: true,
  centerPadding: '5px',
  touchThreshold: 100,
  responsive: [ 
    {  
      breakpoint: 1200,
      settings: {
        slidesToShow:3 
      } 
    }
  ]
});
slider_on();
$('.review_slider').on('afterChange', function (event, slick, currentSlide, nextSlide) {
  //var i = (currentSlide ? currentSlide : 0) + 1;
  slider_on();
});
function slider_on(){
  $(".slick-slide").removeClass("on");
  var cur_slide = $(".slick-slide.slick-current.slick-active.slick-center");
  cur_slide.addClass("on");
  cur_slide.prev().addClass("on");
  cur_slide.next().addClass("on");
}</script>


<p class="page_text">메가스터디 공무원 홍보 및 이벤트 페이지에서 사용되는 슬라이드 기능입니다.<br> 주로 강의 후기 등의 정보를 사용자에게 전달하기 위하여 사용됩니다. 이미지 파일 교체를 통해 다양한 후기 등의 내용을 변경할 수 있습니다.<br> 기본적으로 우측에서 좌측으로 3초마다 슬라이드가 이동됩니다.</p>


<!-- Code View -->
<pre class="language-html html act direct"><code><div class="con1">
  <div class="inner">
    <div class="slickBox">
      <div class="review_slider">
        <div class="item"><img src="<%=img_main%>/m/2022/0429_tax/review_1.png" alt=""></div>
        <div class="item"><img src="<%=img_main%>/m/2022/0429_tax/review_2.png" alt=""></div>
        <div class="item"><img src="<%=img_main%>/m/2022/0429_tax/review_3.png" alt=""></div>
        <div class="item"><img src="<%=img_main%>/m/2022/0429_tax/review_4.png" alt=""></div>
        <div class="item"><img src="<%=img_main%>/m/2022/0429_tax/review_5.png" alt=""></div>
        <div class="item"><img src="<%=img_main%>/m/2022/0429_tax/review_6.png" alt=""></div>
        <div class="item"><img src="<%=img_main%>/m/2022/0429_tax/review_7.png" alt=""></div>
        <div class="item"><img src="<%=img_main%>/m/2022/0429_tax/review_8.png" alt=""></div>
      </div>
    </div>
  </div>
</div></code></pre>
<pre class="language-css act direct"><code>.review_slider { position:absolute; top:0; left:50%; transform:translateX(-50%); width:255%; }
.review_slider .item { color:#fff; }
.review_slider .item img { width:95%; display:block; margin:auto; }
.review_slider .slick-slide { opacity:.2; transition:all .3s; }
.review_slider .slick-slide.on { opacity:1; }

@media (max-width:1200px){
  .review_slider:before,
  .review_slider:after { display:none; }
  .review_slider { position:static; top:0; left:0; transform:translateX(0); width:100%; }
  .review_slider .item img { width:95%; display:block; margin:auto; }
}</code></pre>
<pre class="language-javascript act direct"><code>$(".review_slider").slick({
  arrows: true,
  dots : false,
  infinite: true,
  slidesToShow: 7,
  //slidesToScroll: 3,
  autoplaySpeed: 3000,
  autoplay: true,
  variableWidth: false,
  centerMode: true,
  centerPadding: '5px',
  touchThreshold: 100,
  responsive: [ 
    {  
      breakpoint: 1200,
      settings: {
        slidesToShow:3 
      } 
    }
  ]
});
slider_on();
$('.review_slider').on('afterChange', function (event, slick, currentSlide, nextSlide) {
  //var i = (currentSlide ? currentSlide : 0) + 1;
  slider_on();
});
function slider_on(){
  $(".slick-slide").removeClass("on");
  var cur_slide = $(".slick-slide.slick-current.slick-active.slick-center");
  cur_slide.addClass("on");
  cur_slide.prev().addClass("on");
  cur_slide.next().addClass("on");
}</code></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/s/gong/event/2022/04290048/index.asp#eventWrap" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#이벤트페이지</p> </li>
                            <li><p>#후기</p> </li>
                            <li><p>#자동롤링</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->







            <!--
            <div class="page_text_wrap">
                <p class="page_head">교재 슬라이드</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div>
                <div class="position_site"><img src="/images/slide6.png" alt='슬라이드위치' ></div>

<div class="code-box html"><div class="con2">
  <div class="inner">
    <div class="bookBox">
      <div class="book_slider">
        <div class="item"><img src="<%=img_main%>/m/2022/0429_tax/book1_1.png" alt=""></div>
        <div class="item"><img src="<%=img_main%>/m/2022/0429_tax/book1_2.png" alt=""></div>
        <div class="item"><img src="<%=img_main%>/m/2022/0429_tax/book1_3.png" alt=""></div>
        <div class="item"><img src="<%=img_main%>/m/2022/0429_tax/book1_4.png" alt=""></div>
        <div class="item"><img src="<%=img_main%>/m/2022/0429_tax/book2_1.png" alt=""></div>
        <div class="item"><img src="<%=img_main%>/m/2022/0429_tax/book2_2.png" alt=""></div>
        <div class="item"><img src="<%=img_main%>/m/2022/0429_tax/book2_3.png" alt=""></div>
        <div class="item"><img src="<%=img_main%>/m/2022/0429_tax/book2_4.png" alt=""></div>
      </div>
    </div>
  </div>
</div></div>

<div class="code-box css"><link type="text/css" rel="stylesheet" href="/css/popup_style.css">
</div>
<style>
.board6 .code-box {    padding: 40px 0;}
.board6 .code-box .con2 {padding: 0px;transform: scale(0.7);}
.board6 .code-box .bookBox { margin: 0px;}
</style>

<script>$(".book_slider").slick({
  arrows: true,
  dots : false,
  infinite: true,
  slidesToShow: 4,
  slidesToScroll: 1,
  autoplaySpeed: 3000,
  autoplay: true,
  variableWidth:true,
  centerPadding: '10px',
  touchThreshold: 100,
  responsive: [ 
    {  
      breakpoint: 1200,
      settings: {
        slidesToShow:3,
        variableWidth:false
      } 
    },
    {  
      breakpoint: 576,
      settings: {
        slidesToShow:2,
        variableWidth:false
      } 
    }
  ]
});</script>

<p class="page_text">메가스터디 공무원 홍보 및 이벤트 페이지에서 사용되는 슬라이드 기능입니다.<br> 주로 교재 홍보 및 관련 정보를 사용자에게 전달하기 위해 사용됩니다. 이미지 파일 교체를 통해 교재의 종류를 변경할 수 있습니다.<br> 우측에서 좌측으로 3초마다 슬라이드가 이동됩니다.</p>

<pre class="language-html html act direct"><code><div class="con2">
  <div class="inner">
    <div class="bookBox">
      <div class="book_slider">
        <div class="item"><img src="<%=img_main%>/m/2022/0429_tax/book1_1.png" alt=""></div>
        <div class="item"><img src="<%=img_main%>/m/2022/0429_tax/book1_2.png" alt=""></div>
        <div class="item"><img src="<%=img_main%>/m/2022/0429_tax/book1_3.png" alt=""></div>
        <div class="item"><img src="<%=img_main%>/m/2022/0429_tax/book1_4.png" alt=""></div>
        <div class="item"><img src="<%=img_main%>/m/2022/0429_tax/book2_1.png" alt=""></div>
        <div class="item"><img src="<%=img_main%>/m/2022/0429_tax/book2_2.png" alt=""></div>
        <div class="item"><img src="<%=img_main%>/m/2022/0429_tax/book2_3.png" alt=""></div>
        <div class="item"><img src="<%=img_main%>/m/2022/0429_tax/book2_4.png" alt=""></div>
      </div>
    </div>
  </div>
</div></code></pre>
<pre class="language-javascript act direct"><code>$(".book_slider").slick({
  arrows: true,
  dots : false,
  infinite: true,
  slidesToShow: 4,
  slidesToScroll: 1,
  autoplaySpeed: 3000,
  autoplay: true,
  variableWidth:true,
  centerPadding: '10px',
  touchThreshold: 100,
  responsive: [ 
    {  
      breakpoint: 1200,
      settings: {
        slidesToShow:3,
        variableWidth:false
      } 
    },
    {  
      breakpoint: 576,
      settings: {
        slidesToShow:2,
        variableWidth:false
      } 
    }
  ]
});</code></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/s/gong/event/2022/04290048/index.asp#eventWrap" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#강사홍보</p> </li>
                            <li><p>#교재홍보</p> </li>
                            <li><p>#자동롤링</p> </li>
                        </ul>
                    </div>
                </div>
            </div>
            -->
            <!-- .page_text_wrap -->






            <div class="page_text_wrap">
                <p class="page_head">후기 슬라이드 2</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/slide8.png" alt='슬라이드위치' ></div>

<!-- HTML -->
<div class="code-box html">
<div class="con01_sd_wrap">
    <div class="con01_sd slider-for">
        <div class="item pc"><img src="<%=img_main%>/m/2021/0512_avantage78/con01_sd1_big.png" alt=""></div>
        <div class="item pc"><img src="<%=img_main%>/m/2021/0512_avantage78/con01_sd2_big.png" alt=""></div>
        <div class="item pc"><img src="<%=img_main%>/m/2021/0512_avantage78/con01_sd3_big.png" alt=""></div>
        <div class="item pc"><img src="<%=img_main%>/m/2021/0512_avantage78/con01_sd4_big.png" alt=""></div>
        <div class="item pc"><img src="<%=img_main%>/m/2021/0512_avantage78/con01_sd5_big.png" alt=""></div>
        <div class="item pc"><img src="<%=img_main%>/m/2021/0512_avantage78/con01_sd6_big.png" alt=""></div>
    </div>
  </div>
</div>

<!-- CSS -->
<div class="code-box css">
<link type="text/css" rel="stylesheet" href="<%=url_main%>/s/gong/event/2022/04290048/style.css">
</div>

<style>
.board7 .code-box {padding: 40px 0;overflow: hidden;}
.board7 .code-box .slick-list {overflow: inherit;}
.board7 .code-box .con01_sd_wrap {transform: scale(0.7);}
.board7 .code-box .con01_sd_wrap .con01_sd .item img {width: 97%;}
.board7 .code-box .con01_sd_wrap .con01_sd .slick-slide::before {width: 97%}
.con01_sd_wrap .con01_sd .slick-slide {margin:0px}
</style>

<!-- JS -->
  <script>
    $('.con01_sd').slick({
      centerMode: true,
      slidesToShow: 3,
      slidesToScroll: 1,
      variableWidth: true,
      centerPadding: '20px',
      autoplay: true,
      arrows: false,
      dots:true,
      autoplaySpeed: 3000,
      responsive: [
        {
          breakpoint: 992,
          settings: {
            slidesToShow: 1,
            variableWidth: false,
            autoplay: true,
          }
        }
      ]
    });
  </script>

<p class="page_text">메가스터디 공무원 홍보 및 이벤트 페이지에서 사용되는 슬라이드 기능입니다.<br> 주로 강의 후기 등의 정보를 사용자에게 전달하기 위하여 사용됩니다. 이미지 파일 교체를 통해 다양한 후기 등의 내용을 변경할 수 있습니다.<br> 기본적으로 우측에서 좌측으로 3초마다 슬라이드가 이동됩니다. 또한 하단부의 슬라이드 버튼을 통해서도 이동이 가능합니다.</p>

<!-- Code View -->
<pre class="language-html html act direct"><code><div class="con01_sd_wrap">
  <div class="con01_sd slider-for">
    <div class="item pc"><img src="<%=img_main%>/m/2021/0512_avantage78/con01_sd1_big.png" alt=""></div>
    <div class="item pc"><img src="<%=img_main%>/m/2021/0512_avantage78/con01_sd2_big.png" alt=""></div>
    <div class="item pc"><img src="<%=img_main%>/m/2021/0512_avantage78/con01_sd3_big.png" alt=""></div>
    <div class="item pc"><img src="<%=img_main%>/m/2021/0512_avantage78/con01_sd4_big.png" alt=""></div>
    <div class="item pc"><img src="<%=img_main%>/m/2021/0512_avantage78/con01_sd5_big.png" alt=""></div>
    <div class="item pc"><img src="<%=img_main%>/m/2021/0512_avantage78/con01_sd6_big.png" alt=""></div>
  </div>
</div></code></pre>
<pre class="language-html css act direct"><code><link type="text/css" rel="stylesheet" href="<%=url_main%>/s/gong/event/2022/04290048/style.css"></code></pre>
<pre class="language-javascript act direct"><code>$('.con01_sd').slick({
  centerMode: true,
  slidesToShow: 3,
  slidesToScroll: 1,
  variableWidth: true,
  centerPadding: '20px',
  autoplay: true,
  arrows: false,
  dots:true,
  autoplaySpeed: 3000,
  responsive: [
    {
      breakpoint: 992,
      settings: {
        slidesToShow: 1,
        variableWidth: false,
        autoplay: true,
      }
    }
  ]
});</code></pre>


                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/s/gong/event/2021/05120060/index.asp#eventWrap" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#강사홍보</p> </li>
                            <li><p>#후기정보</p> </li>
                            <li><p>#기다란네비게이션</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->



            <div class="page_text_wrap">
                <p class="page_head">출판 모의고사기획전 슬라이드</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/slide7.png" alt='슬라이드위치' ></div>

<!-- HTML -->
<div class="code-box html"><div class="bookSlider--bind">
  <span class="icon_update"><img src="<%=img_main%>/m/2022/1221_book/main_icon.png" alt="2023 OPEN"></span>
  <div class="bookSlider">
    <div class="bookList"><img src="<%=img_main%>/m/2022/0602_jeonhangil/con_img48_1.png"></div>
    <div class="bookList"><img src="<%=img_main%>/m/2022/0725_allawyer/evCon3_bk2.png"></div>
    <div class="bookList"><img src="<%=img_main%>/m/2022/1221_book/book_001.png"></div>
    <div class="bookList"><img src="<%=img_main%>/m/2022/1221_book/book_002.jpg"></div>	
    <div class="bookList"><img src="<%=img_main%>/m/2022/1221_book/book_003.png"></div>
    <div class="bookList"><img src="<%=img_main%>/m/2022/1221_book/book_004.png"></div>
    <div class="bookList"><img src="<%=img_main%>/m/2022/1221_book/book_005.png"></div>
    <div class="bookList"><img src="<%=img_main%>/m/2022/1221_book/book_006.png"></div>
    <div class="bookList"><img src="<%=img_main%>/m/2022/1221_book/book_007.png"></div>
    <div class="bookList"><img src="<%=img_main%>/m/2022/1221_book/book_008.png"></div>
  </div>
</div></div>

<style>
.bookSlider--bind { position:relative; margin:-12px -267px 0; } 
.bookSlider--bind .icon_update { position:absolute; top:-48px; left:-48px; z-index: 2; } 
.bookSlider--bind .bookList { padding:0 12px; padding-bottom: 10px; width:282px; } 

@media (max-width: 1670px){
  .bookSlider--bind { margin: -12px auto 0; } 
}

@media (max-width: 1200px){
  .bookSlider--bind { margin:9% 5% 0; } 
  .bookSlider--bind .icon_update { top: -21%; left: -3% } 
  .bookSlider--bind .bookList { padding:0 12px; width:220px; } 
}

@media (max-width: 768px){
  .bookSlider--bind .icon_update { width: 70px; top:-25px; } 
  .bookSlider--bind .bookList { padding:0 12px; width:180px; }
}
</style>

<!-- JS -->
<script>
  $('.bookSlider').slick({
    rows: 0,
    centerMode: true,
    slidesToShow: 5,
    variableWidth: true,
    autoplay: true,
    autoplaySpeed:0,
    speed:3000,
    cssEase: 'linear',
    arrows: false,
    dots: false
  });
</script>

<p class="page_text">메가스터디 공무원 홍보 및 기획전 페이지에서 사용되는 슬라이드 기능입니다.<br> 
공개된 교재들을 홍보하기 위해 사용됩니다. 우측에서 좌측으로 자연스럽게 흐르며 넘어갑니다.</p>

<!-- Code View -->
<pre class="language-html html direct act"><code><div class="bookSlider--bind">
  <span class="icon_update"><img src="<%=img_main%>/m/2022/1221_book/main_icon.png" alt="2023 OPEN"></span>
  <div class="bookSlider">
    <div class="bookList"><img src="<%=img_main%>/m/2022/1221_book/book_001.png"></div>
    <div class="bookList"><img src="<%=img_main%>/m/2022/1221_book/book_002.jpg"></div>	
    <div class="bookList"><img src="<%=img_main%>/m/2022/1221_book/book_003.png"></div>
    <div class="bookList"><img src="<%=img_main%>/m/2022/1221_book/book_004.png"></div>
    <div class="bookList"><img src="<%=img_main%>/m/2022/1221_book/book_005.png"></div>
    <div class="bookList"><img src="<%=img_main%>/m/2022/1221_book/book_006.png"></div>
    <div class="bookList"><img src="<%=img_main%>/m/2022/1221_book/book_007.png"></div>
    <div class="bookList"><img src="<%=img_main%>/m/2022/1221_book/book_008.png"></div>
  </div>
</div></code></pre>
<pre class="language-css direct act"><code>.bookSlider--bind { position:relative; margin:-12px -267px 0; } 
.bookSlider--bind .icon_update { position:absolute; top:-48px; left:-48px; z-index: 2; } 
.bookSlider--bind .bookList { padding:0 12px; padding-bottom: 10px; width:282px; } 

@media (max-width: 1670px){
  .bookSlider--bind { margin: -12px auto 0; } 
}

@media (max-width: 1200px){
  .bookSlider--bind { margin:9% 5% 0; } 
  .bookSlider--bind .icon_update { top: -21%; left: -3% } 
  .bookSlider--bind .bookList { padding:0 12px; width:220px; } 
}

@media (max-width: 768px){
  .bookSlider--bind .icon_update { width: 70px; top:-25px; } 
  .bookSlider--bind .bookList { padding:0 12px; width:180px; }
}</code></pre>
<pre class="language-javascript direct act"><code>$('.bookSlider').slick({
  rows: 0,
  centerMode: true,
  slidesToShow: 5,
  variableWidth: true,
  autoplay: true,
  autoplaySpeed:0,
  speed:3000,
  cssEase: 'linear',
  arrows: false,
  dots: false
});</code></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=dev_main%>/s/gong/event/2022/12210191/index.asp#eventWrap" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#교재홍보</p> </li>
                            <li><p>#와이드구성</p> </li>
                            <li><p>#끊김없이흐르기</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->



            <div class="page_text_wrap">
                <p class="page_head">2023달력+굿즈배포이벤트 슬라이드</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <!-- <div class="position_site"><img src="/images/slide7.png" alt='슬라이드위치' ></div> -->

<!-- HTML -->
<div class="code-box html" style="background-color:#ffd4a7;"><div id="concept_slider" class="concept_slider">
  <div class="item"><img src="<%=img_main%>/m/2022/1220_goods/con_img26_1.jpg" alt="-" /></div>
  <div class="item"><img src="<%=img_main%>/m/2022/1220_goods/con_img26_2.jpg" alt="-" /></div>
  <div class="item"><img src="<%=img_main%>/m/2022/1220_goods/con_img26_3.jpg" alt="-" /></div>
  <div class="item"><img src="<%=img_main%>/m/2022/1220_goods/con_img26_4.jpg" alt="-" /></div>
  <div class="item"><img src="<%=img_main%>/m/2022/1220_goods/con_img26_5.jpg" alt="-" /></div>
  <div class="item"><img src="<%=img_main%>/m/2022/1220_goods/con_img26_6.jpg" alt="-" /></div>
  <div class="item"><img src="<%=img_main%>/m/2022/1220_goods/con_img26_7.jpg" alt="-" /></div>
  <div class="item"><img src="<%=img_main%>/m/2022/1220_goods/con_img26_8.jpg" alt="-" /></div>
  <div class="item"><img src="<%=img_main%>/m/2022/1220_goods/con_img26_9.jpg" alt="-" /></div>
  <div class="item"><img src="<%=img_main%>/m/2022/1220_goods/con_img26_10.jpg" alt="-" /></div>
</div></div>

<style>.concept_slider {position:relative;margin: 0 -1470px 0;}
.concept_slider .slick-slide{margin: 0;transform: scale(0.75);transition: all 0.3s;margin: 0;}
.concept_slider .slick-slide img{display: inline-block;}
.concept_slider .slick-slide.slick-current{transform: scale(1);}
.concept_slider .slick-slide.slick-current .item{border:5px solid #3fb882}
.concept_slider .slick-arrow{display: none !important;}
.concept_slider::before{content:'';background:url(https://img.megagong.net/m/2022/1220_goods/con_img31.png) no-repeat;position: absolute;bottom: -82px;left: 50%;width: 330px;height: 170px;z-index: 1;margin: 0 0 0 131px;}

@media screen and (max-width: 1200px){
  .concept_slider{margin: 0px -8vw 0;}
  .concept_slider::before{width: 22vw;height: 12vw;margin: 0 0 0 6%;background-size: 100%;bottom: -5vw}
  .concept_slider .slick-slide.slick-current .item{border-width:3px}
}

@media screen and (max-width: 576px){
  .concept_slider{margin: 0px -55vw 0;}
  .concept_slider::before{width: 33vw;height: 19vw;margin: 0 0 0 4%;background-size: 100%;bottom: -10vw}
  .concept_slider .slick-slide.slick-current .item{border-width:2px}
}
</style>

<!-- JS -->
<script>
  $('#concept_slider').slick({
		autoplay: true,
		autoplaySpeed: 2000,  
    slidesToShow: 7,
		arrows: false,	
    centerMode: true,
    pauseOnHover: false,
		focusOnSelect: true,
    touchThreshold: 100,
    responsive: [{
			breakpoint: 1201,
			settings: {
        slidesToShow: 3,
			}
		}]    
	})
</script>

<p class="page_text">메가스터디 공무원 홍보 및 이벤트 페이지에서 사용되는 슬라이드 기능입니다.<br> 
Border 및 Scale 효과를 이용하여 슬라이드 중앙에 오게되는 이미지를 표시하여 줍니다.</p>

<!-- Code View -->
<pre class="language-html html direct act"><code><div class="bookSlider--bind">
  <span class="icon_update"><img src="<%=img_main%>/m/2022/1221_book/main_icon.png" alt="2023 OPEN"></span>
  <div class="bookSlider">
    <div class="bookList"><img src="<%=img_main%>/m/2022/1221_book/book_001.png"></div>
    <div class="bookList"><img src="<%=img_main%>/m/2022/1221_book/book_002.jpg"></div>	
    <div class="bookList"><img src="<%=img_main%>/m/2022/1221_book/book_003.png"></div>
    <div class="bookList"><img src="<%=img_main%>/m/2022/1221_book/book_004.png"></div>
    <div class="bookList"><img src="<%=img_main%>/m/2022/1221_book/book_005.png"></div>
    <div class="bookList"><img src="<%=img_main%>/m/2022/1221_book/book_006.png"></div>
    <div class="bookList"><img src="<%=img_main%>/m/2022/1221_book/book_007.png"></div>
    <div class="bookList"><img src="<%=img_main%>/m/2022/1221_book/book_008.png"></div>
  </div>
</div></code></pre>
<pre class="language-css direct act"><code>.concept_slider {position:relative;margin: 0 -1470px 0;}
.concept_slider .slick-slide{margin: 0;transform: scale(0.75);transition: all 0.3s;margin: 0;}
.concept_slider .slick-slide img{display: inline-block;}
.concept_slider .slick-slide.slick-current{transform: scale(1);}
.concept_slider .slick-slide.slick-current .item{border:5px solid #3fb882}
.concept_slider .slick-arrow{display: none !important;}
.concept_slider::before{content:'';background:url(https://img.megagong.net/m/2022/1220_goods/con_img31.png) no-repeat;position: absolute;bottom: -82px;left: 50%;width: 330px;height: 170px;z-index: 1;margin: 0 0 0 131px;}

@media screen and (max-width: 1200px){
  .concept_slider{margin: 0px -8vw 0;}
  .concept_slider::before{width: 22vw;height: 12vw;margin: 0 0 0 6%;background-size: 100%;bottom: -5vw}
  .concept_slider .slick-slide.slick-current .item{border-width:3px}
}

@media screen and (max-width: 576px){
  .concept_slider{margin: 0px -55vw 0;}
  .concept_slider::before{width: 33vw;height: 19vw;margin: 0 0 0 4%;background-size: 100%;bottom: -10vw}
  .concept_slider .slick-slide.slick-current .item{border-width:2px}
}</code></pre>
<pre class="language-javascript direct act"><code>$('#concept_slider').slick({
  autoplay: true,
  autoplaySpeed: 2000,  
  slidesToShow: 7,
  arrows: false,	
  centerMode: true,
  pauseOnHover: false,
  focusOnSelect: true,
  touchThreshold: 100,
  responsive: [{
    breakpoint: 1201,
    settings: {
      slidesToShow: 3,
    }
  }]    
})</code></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=dev_main%>/s/gong/event/2022/12200194/index.asp#eventWrap" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#굿즈홍보</p> </li>
                            <li><p>#캘린더</p> </li>
                            <li><p>#슬라이드효과</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->




            <div class="page_text_wrap">
                <p class="page_head">합격 키워드북 + 페이징 슬라이드</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <!-- <div class="position_site"><img src="/images/slide7.png" alt='슬라이드위치' ></div> -->

<!-- HTML -->
<div class="code-box html"><div class="con2_slider">
  <img src="<%=img_main%>/m/2022/1219_pdf/con2_img1.png">
  <img src="<%=img_main%>/m/2022/1219_pdf/con2_img2.png">
  <img src="<%=img_main%>/m/2022/1219_pdf/con2_img3.png">
  <img src="<%=img_main%>/m/2022/1219_pdf/con2_img4.png">
  <img src="<%=img_main%>/m/2022/1219_pdf/con2_img5.png">
  <img src="<%=img_main%>/m/2022/1219_pdf/con2_img6.png">
  <img src="<%=img_main%>/m/2022/1219_pdf/con2_img7.png">
</div></div>

<style>
.con2_slider .slick-arrow { position: absolute; top: 50%; transform: translate(0, -50%); font-size: 0; z-index: 1; } 
.con2_slider .slick-arrow.slick-prev { left: -30px; width: 60px; height: 60px; background-image: url('https://img.megagong.net/m/2022/1219_pdf/icon_arrow_left.png'); background-repeat: no-repeat; background-position: center; background-size: contain; border-radius: 50%; box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.1); } 
.con2_slider .slick-arrow.slick-next { right: -30px; width: 60px; height: 60px; background-image: url('https://img.megagong.net/m/2022/1219_pdf/icon_arrow_right.png'); background-repeat: no-repeat; background-position: center; background-size: contain; border-radius: 50%; box-shadow: -5px -5px 5px rgba(0, 0, 0, 0.1); } 
.con2_slider .slick-dots li { display:none; } 
.con2_slider .slick-dots li.slick-active { display: block; width: 72px; height: 22px; margin: 0 auto; margin-top: 18px; line-height: 19px; color: #111111; font-size: 13px; text-align: center; border: 1px solid #888888; border-radius: 30px; }
</style>

<!-- JS -->
<script>
  $('.con2_slider').slick({
    autoplay:true,
    dots: true,
    infinite: true,
    speed: 1000,
    // fade: true,
    // cssEase: 'linear',
    customPaging: function (slider, i) {
      console.log(slider);
      return  (i + 1) + '/' + slider.slideCount;
    }
  });
</script>


<p class="page_text">메가스터디 공무원 홍보 및 교재 홍보 페이지에서 사용되는 슬라이드 기능입니다.<br> 
교재 내부의 정보들을 슬라이드를 통해 제공하여 줍니다.</p>


<!-- Code View -->
<pre class="language-html html direct act"><code><div class="bookSlider--bind">
  <span class="icon_update"><img src="<%=img_main%>/m/2022/1221_book/main_icon.png" alt="2023 OPEN"></span>
  <div class="bookSlider">
    <div class="bookList"><img src="<%=img_main%>/m/2022/1221_book/book_001.png"></div>
    <div class="bookList"><img src="<%=img_main%>/m/2022/1221_book/book_002.jpg"></div>	
    <div class="bookList"><img src="<%=img_main%>/m/2022/1221_book/book_003.png"></div>
    <div class="bookList"><img src="<%=img_main%>/m/2022/1221_book/book_004.png"></div>
    <div class="bookList"><img src="<%=img_main%>/m/2022/1221_book/book_005.png"></div>
    <div class="bookList"><img src="<%=img_main%>/m/2022/1221_book/book_006.png"></div>
    <div class="bookList"><img src="<%=img_main%>/m/2022/1221_book/book_007.png"></div>
    <div class="bookList"><img src="<%=img_main%>/m/2022/1221_book/book_008.png"></div>
  </div>
</div></code></pre>
<pre class="language-css direct act"><code>.concept_slider {position:relative;margin: 0 -1470px 0;}
.concept_slider .slick-slide{margin: 0;transform: scale(0.75);transition: all 0.3s;margin: 0;}
.concept_slider .slick-slide img{display: inline-block;}
.concept_slider .slick-slide.slick-current{transform: scale(1);}
.concept_slider .slick-slide.slick-current .item{border:5px solid #3fb882}
.concept_slider .slick-arrow{display: none !important;}
.concept_slider::before{content:'';background:url(https://img.megagong.net/m/2022/1220_goods/con_img31.png) no-repeat;position: absolute;bottom: -82px;left: 50%;width: 330px;height: 170px;z-index: 1;margin: 0 0 0 131px;}

@media screen and (max-width: 1200px){
  .concept_slider{margin: 0px -8vw 0;}
  .concept_slider::before{width: 22vw;height: 12vw;margin: 0 0 0 6%;background-size: 100%;bottom: -5vw}
  .concept_slider .slick-slide.slick-current .item{border-width:3px}
}

@media screen and (max-width: 576px){
  .concept_slider{margin: 0px -55vw 0;}
  .concept_slider::before{width: 33vw;height: 19vw;margin: 0 0 0 4%;background-size: 100%;bottom: -10vw}
  .concept_slider .slick-slide.slick-current .item{border-width:2px}
}</code></pre>
<pre class="language-javascript direct act"><code>$('#concept_slider').slick({
  autoplay: true,
  autoplaySpeed: 2000,  
  slidesToShow: 7,
  arrows: false,	
  centerMode: true,
  pauseOnHover: false,
  focusOnSelect: true,
  touchThreshold: 100,
  responsive: [{
    breakpoint: 1201,
    settings: {
      slidesToShow: 3,
    }
  }]    
})</code></pre>


                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=dev_main%>/s/gong/event/2022/12190190/index.asp#eventWrap" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#키워드북</p> </li>
                            <li><p>#페이징</p> </li>
                            <li><p>#교재정보</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->

            

            <div class="page_text_wrap">
                <p class="page_head">2023 거꾸로 플래너 슬라이드</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <!-- <div class="position_site"><img src="/images/slide7.png" alt='슬라이드위치' ></div> -->

<!-- HTML -->
<div class="code-box html"><div class="planner_slider_for">
  <img src="<%=img_main%>/m/2022/1215_planner/con1_slider_main1.png">
  <img src="<%=img_main%>/m/2022/1215_planner/con1_slider_main2.png">
  <img src="<%=img_main%>/m/2022/1215_planner/con1_slider_main3.png">
  <img src="<%=img_main%>/m/2022/1215_planner/con1_slider_main4.png">
  <img src="<%=img_main%>/m/2022/1215_planner/con1_slider_main5.png">
  <img src="<%=img_main%>/m/2022/1215_planner/con1_slider_main6.png">
  <img src="<%=img_main%>/m/2022/1215_planner/con1_slider_main7.png">
  <img src="<%=img_main%>/m/2022/1215_planner/con1_slider_main8.png">
  <img src="<%=img_main%>/m/2022/1215_planner/con1_slider_main9.png">
  <img src="<%=img_main%>/m/2022/1215_planner/con1_slider_main10.png">
</div>
<div class="planner_slider_nav">
  <img src="<%=img_main%>/m/2022/1215_planner/con1_slider_guide1.png">
  <img src="<%=img_main%>/m/2022/1215_planner/con1_slider_guide2.png">
  <img src="<%=img_main%>/m/2022/1215_planner/con1_slider_guide3.png">
  <img src="<%=img_main%>/m/2022/1215_planner/con1_slider_guide4.png">
  <img src="<%=img_main%>/m/2022/1215_planner/con1_slider_guide5.png">
  <img src="<%=img_main%>/m/2022/1215_planner/con1_slider_guide6.png">
  <img src="<%=img_main%>/m/2022/1215_planner/con1_slider_guide7.png">
  <img src="<%=img_main%>/m/2022/1215_planner/con1_slider_guide8.png">
  <img src="<%=img_main%>/m/2022/1215_planner/con1_slider_guide9.png">
  <img src="<%=img_main%>/m/2022/1215_planner/con1_slider_guide10.png">
</div></div>

<style>
.planner_slider_for { position: relative; margin: 0 120px; } 
.planner_slider_for::before,
.planner_slider_for::after { position: absolute; content: ''; background-repeat: no-repeat; background-position: center; background-size: contain; z-index: 1; } 
.planner_slider_for::before { top: -21px; left: -35px; width: 134px; height: 101px; background-image: url('https://img.megagong.net/m/2022/1215_planner/con3_deco1.png'); } 
.planner_slider_for::after { right: -39px; bottom: -23px; width: 136px; height: 101px; background-image: url('https://img.megagong.net/m/2022/1215_planner/con3_deco3.png'); } 
.planner_slider_for .slick-arrow { position: absolute; top: 50%; transform: translate(0, -50%); width: 50px; height: 100px; font-size: 0; background-repeat: no-repeat; background-position: center; background-size: contain; z-index: 1; } 
.planner_slider_for .slick-arrow.slick-prev { left: -120px; background-image: url('https://img.megagong.net/m/2022/1215_planner/con1_slider_arrow_left.png'); } 
.planner_slider_for .slick-arrow.slick-next { right: -120px; background-image: url('https://img.megagong.net/m/2022/1215_planner/con1_slider_arrow_right.png'); } 

.planner_slider_nav { margin-top: 50px; } 
.planner_slider_nav .slick-slide { border: 2px solid transparent; cursor: pointer; } 
.planner_slider_nav .slick-slide.slick-current { border: 2px solid #000; } 

@media (max-width:768px) {
  .planner_slider_for { margin: 0 auto; } 
  .planner_slider_for::before, .planner_slider_for::after { width: 14vw; height: 10vw; } 
  .planner_slider_for::before { top: -6px; left: -12px; } 
  .planner_slider_for::after { right: -17px; bottom: 39px; } 
  .planner_slider_for .slick-dots { display: flex; flex-direction: row; align-items: center; justify-content: center; margin-top: 30px; padding: 4px; background-color: rgba(0,0,0,.1); border-radius: 30px; } 
  .planner_slider_for .slick-dots li { flex: 1; height: 10px; margin-right: 4px; background-color: rgba(0,0,0,0); border-radius: 30px; } 
  .planner_slider_for .slick-dots li:last-of-type { margin-right: 0; } 
  .planner_slider_for .slick-dots li.slick-active { background-color: #459361; } 
  .planner_slider_for .slick-dots li button { color: transparent; font-size: 0; } 
  .planner_slider_nav { display: none; } 
}
</style>

<!-- JS -->
<script>
  $(window).resize(function(){
		$('.planner_slider_nav')[0].slick.refresh();
	});

  $('.planner_slider_for').slick({
		slidesToShow: 1,
		slidesToScroll: 1,
		autoplay: true,
		autoplaySpeed: 2000,
		arrows: true,
		fade: true,
		pauseOnHover: false,
		asNavFor: '.planner_slider_nav',
		responsive: [
			{
			breakpoint: 769,
			settings: {
					dots: true,
					arrows: false
				}
			}
		]
	});

	$('.planner_slider_nav').slick({
		slidesToShow: 10,
		slidesToScroll: 1,
		autoplay: true,
		autoplaySpeed: 2000,
		asNavFor: '.planner_slider_for',
		dots: true,
		centerMode: true,
		focusOnSelect: true,
	});
</script>

<p class="page_text">메가스터디 공무원 홍보 및 이벤트 페이지에서 사용되는 슬라이드 기능입니다.<br> 
좌우의 Arrow 버튼 외에도 하단의 네비게이션 슬라이드를 클릭하여 이미지를 넘길 수 있습니다. </p>

<!-- Code View -->
<pre class="language-html html direct act"><code><div class="planner_slider_for">
  <img src="<%=img_main%>/m/2022/1215_planner/con1_slider_main1.png">
  <img src="<%=img_main%>/m/2022/1215_planner/con1_slider_main2.png">
  <img src="<%=img_main%>/m/2022/1215_planner/con1_slider_main3.png">
  <img src="<%=img_main%>/m/2022/1215_planner/con1_slider_main4.png">
  <img src="<%=img_main%>/m/2022/1215_planner/con1_slider_main5.png">
  <img src="<%=img_main%>/m/2022/1215_planner/con1_slider_main6.png">
  <img src="<%=img_main%>/m/2022/1215_planner/con1_slider_main7.png">
  <img src="<%=img_main%>/m/2022/1215_planner/con1_slider_main8.png">
  <img src="<%=img_main%>/m/2022/1215_planner/con1_slider_main9.png">
  <img src="<%=img_main%>/m/2022/1215_planner/con1_slider_main10.png">
</div>
<div class="planner_slider_nav">
  <img src="<%=img_main%>/m/2022/1215_planner/con1_slider_guide1.png">
  <img src="<%=img_main%>/m/2022/1215_planner/con1_slider_guide2.png">
  <img src="<%=img_main%>/m/2022/1215_planner/con1_slider_guide3.png">
  <img src="<%=img_main%>/m/2022/1215_planner/con1_slider_guide4.png">
  <img src="<%=img_main%>/m/2022/1215_planner/con1_slider_guide5.png">
  <img src="<%=img_main%>/m/2022/1215_planner/con1_slider_guide6.png">
  <img src="<%=img_main%>/m/2022/1215_planner/con1_slider_guide7.png">
  <img src="<%=img_main%>/m/2022/1215_planner/con1_slider_guide8.png">
  <img src="<%=img_main%>/m/2022/1215_planner/con1_slider_guide9.png">
  <img src="<%=img_main%>/m/2022/1215_planner/con1_slider_guide10.png">
</div></code></pre>
<pre class="language-css direct act"><code>.planner_slider_for { position: relative; margin: 0 120px; } 
.planner_slider_for::before,
.planner_slider_for::after { position: absolute; content: ''; background-repeat: no-repeat; background-position: center; background-size: contain; z-index: 1; } 
.planner_slider_for::before { top: -21px; left: -35px; width: 134px; height: 101px; background-image: url('https://img.megagong.net/m/2022/1215_planner/con3_deco1.png'); } 
.planner_slider_for::after { right: -39px; bottom: -23px; width: 136px; height: 101px; background-image: url('https://img.megagong.net/m/2022/1215_planner/con3_deco3.png'); } 
.planner_slider_for .slick-arrow { position: absolute; top: 50%; transform: translate(0, -50%); width: 50px; height: 100px; font-size: 0; background-repeat: no-repeat; background-position: center; background-size: contain; z-index: 1; } 
.planner_slider_for .slick-arrow.slick-prev { left: -120px; background-image: url('https://img.megagong.net/m/2022/1215_planner/con1_slider_arrow_left.png'); } 
.planner_slider_for .slick-arrow.slick-next { right: -120px; background-image: url('https://img.megagong.net/m/2022/1215_planner/con1_slider_arrow_right.png'); } 

.planner_slider_nav { margin-top: 50px; } 
.planner_slider_nav .slick-slide { border: 2px solid transparent; cursor: pointer; } 
.planner_slider_nav .slick-slide.slick-current { border: 2px solid #000; } 

@media (max-width:768px) {
  .planner_slider_for { margin: 0 auto; } 
  .planner_slider_for::before, .planner_slider_for::after { width: 14vw; height: 10vw; } 
  .planner_slider_for::before { top: -6px; left: -12px; } 
  .planner_slider_for::after { right: -17px; bottom: 39px; } 
  .planner_slider_for .slick-dots { display: flex; flex-direction: row; align-items: center; justify-content: center; margin-top: 30px; padding: 4px; background-color: rgba(0,0,0,.1); border-radius: 30px; } 
  .planner_slider_for .slick-dots li { flex: 1; height: 10px; margin-right: 4px; background-color: rgba(0,0,0,0); border-radius: 30px; } 
  .planner_slider_for .slick-dots li:last-of-type { margin-right: 0; } 
  .planner_slider_for .slick-dots li.slick-active { background-color: #459361; } 
  .planner_slider_for .slick-dots li button { color: transparent; font-size: 0; } 
  .planner_slider_nav { display: none; } 
}</code></pre>
<pre class="language-javascript direct act"><code>$(window).resize(function(){
  $('.planner_slider_nav')[0].slick.refresh();
});
  
$('.planner_slider_for').slick({
  slidesToShow: 1,
  slidesToScroll: 1,
  autoplay: true,
  autoplaySpeed: 2000,
  arrows: true,
  fade: true,
  pauseOnHover: false,
  asNavFor: '.planner_slider_nav',
  responsive: [
    {
    breakpoint: 769,
    settings: {
        dots: true,
        arrows: false
      }
    }
  ]
});

$('.planner_slider_nav').slick({
  slidesToShow: 10,
  slidesToScroll: 1,
  autoplay: true,
  autoplaySpeed: 2000,
  asNavFor: '.planner_slider_for',
  dots: true,
  centerMode: true,
  focusOnSelect: true,
});</code></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=dev_main%>/s/gong/event/2022/12150189/index.asp#eventWrap" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#플래너</p> </li>
                            <li><p>#이미지네비게이션</p> </li>
                            <li><p>#굿즈홍보</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->



            <div class="page_text_wrap">
                <p class="page_head">온라인 모의고사 게이트 + 탭 내부 슬라이드</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <!-- <div class="position_site"><img src="/images/slide7.png" alt='슬라이드위치' ></div> -->

<!-- HTML -->
<div class="code-box html">
<div class="mockexam_gate">
  <ul id="tab" class="tab_base col3">
      <li class="on"><a href="#tab1">국어</a></li>
      <li><a href="#tab2">영어</a></li>
      <li><a href="#tab3">한국사</a></li>
  </ul>
  <ul class="panel_base w_slide ">
      <!-- 국어 -->
      <li id="tab1">
        <div class="mg_slick_wrap subject_slide_wrap">
          <div class="subject_slide">
            <div class="mockexam_obj mockexam_korean1">
                <div class="edge_wrp">
                    <span class="edge edge1"><img src="<%=img_main%>/m/2022/1214_examgate/examgate_edge.png" alt=""></span>
                    <span class="edge edge2"><img src="<%=img_main%>/m/2022/1214_examgate/examgate_edge2.png" alt=""></span>
                    <span class="mock_subject">국어</span>
                </div>
                <div class="mockexam_thumb">
                    <div class="tec_img_wrp">
                        <span class="tec_img"><img src="<%=img_main%>/profphoto/gong/lyj4718/Prof3.png" alt="이유진 선생님 이미지"></span>
                        <span class="evt_label">EVENT</span>
                    </div>
                    <div class="tec_con_wrp">
                        <p class="mock_desc">공무원 수험가를 가장 뜨겁게 달군 모의고사 <br>완벽에 갓벽을 더하는 100일의 기적</p>
                        <p class="mock_title">국어 이유진 <br>백일기도 모의고사</p>
                        <p class="mock_date">응시 기간 : 12/26(월)~4/3(월)</p>
                    </div>
                    <a class="mock_link" href="https://www.megagong.net/s/gong/event/2022/12140185/index.asp#eventWrap" target="_blank" tabindex="0">OPEN &gt;</a>
                </div>
            </div>
            <div class="mockexam_obj mockexam_korean2 dimm" style="width: 100%; display: inline-block;">
              <div class="edge_wrp">
                  <span class="edge edge1"><img src="<%=img_main%>/m/2022/1214_examgate/examgate_edge.png" alt=""></span>
                  <span class="edge edge2"><img src="<%=img_main%>/m/2022/1214_examgate/examgate_edge2.png" alt=""></span>
                  <span class="mock_subject">국어</span>
              </div>
              <div class="mockexam_thumb">
                  <div class="tec_img_wrp">
                    <span class="tec_img"><img src="<%=img_main%>/profphoto/gong/gilltoraebi/Prof3.png" alt="이윤주 선생님 이미지"></span>
                    <span class="evt_label">EVENT</span>
                  </div>
                  <div class="tec_con_wrp">
                    <p class="mock_desc">최고의 적중률! 보석같은 문항! <br>이것이 진짜 실전모의고사다!</p>
                    <p class="mock_title">윤주국어 <br>실전 모의고사</p>
                  </div>
                  <div class="mock_dimm">
                    <span>2023. 01. 03. <br>Coming Soon</span>
                  </div>
              </div>
            </div>
          </div>
        </div>
      </li>
      <li id="tab2">
          <div class="mg_slick_wrap subject_slide_wrap">
              <div class="subject_slide">
                  <div class="mockexam_obj mockexam_english1">
                    <div class="edge_wrp">
                        <span class="edge edge1"><img src="<%=img_main%>/m/2022/1214_examgate/examgate_edge.png" alt=""></span>
                        <span class="edge edge2"><img src="<%=img_main%>/m/2022/1214_examgate/examgate_edge2.png" alt=""></span>
                        <span class="mock_subject">영어</span>
                    </div>
                    <div class="mockexam_thumb">
                        <div class="tec_img_wrp">
                            <span class="tec_img"><img src="<%=img_main%>/profphoto/gong/tjenglish08/Prof3.png" alt="조태정 선생님 이미지"></span>
                            <span class="evt_label">EVENT</span>
                        </div>
                        <div class="tec_con_wrp">
                            <p class="mock_desc">'적정'한 문항, '적합'한 학습으로<br>'적중'하는 조태정의 동형모의고사입니다.</p>
                            <p class="mock_title">조태정 <br>실전 동형 모의고사</p>
                            <p class="mock_date">응시 기간 : 1/11(수)~4/2(일)</p>
                        </div>
                        <a class="mock_link" href="https://www.megagong.net//s/gong/event/2022/12140190/index.asp#eventWrap" target="_blank" tabindex="0">OPEN &gt;</a>
                    </div>
                  </div>
              </div>
          </div>
      </li>
      <li id="tab3">
          <div class="mg_slick_wrap subject_slide_wrap">
              <div class="subject_slide">
                  <div class="mockexam_obj mockexam_history1">
                      <div class="edge_wrp">
                          <span class="edge edge1"><img src="<%=img_main%>/m/2022/1214_examgate/examgate_edge.png" alt=""></span>
                          <span class="edge edge2"><img src="<%=img_main%>/m/2022/1214_examgate/examgate_edge2.png" alt=""></span>
                          <span class="mock_subject">한국사</span>
                      </div>
                      <div class="mockexam_thumb">
                          <div class="tec_img_wrp">
                              <span class="tec_img"><img src="<%=img_main%>/profphoto/gong/gosabu88/Prof3.png" alt="고종훈 선생님 이미지"></span>
                              <span class="evt_label">EVENT</span>
                          </div>
                          <div class="tec_con_wrp">
                              <p class="mock_desc">압도적 선택으로 증명된 최고의 모의고사로 <br>나의 합격여부를 체크하세요.</p>
                              <p class="mock_title">한국사 고종훈 <br>동형모의고사 시즌1</p>
                              <p class="mock_date">응시 기간 : 11/28(월) ~ 1/13(금)</p>
                          </div>
                          <a class="mock_link" href="https://www.megagong.net/s/gong/event/2022/09270151/index.asp#eventWrap" target="_blank" tabindex="0">OPEN &gt;</a>
                      </div>
                  </div>
                  <div class="mockexam_obj mockexam_history2 dimm">
                      <div class="edge_wrp">
                          <span class="edge edge1"><img src="<%=img_main%>/m/2022/1214_examgate/examgate_edge.png" alt=""></span>
                          <span class="edge edge2"><img src="<%=img_main%>/m/2022/1214_examgate/examgate_edge2.png" alt=""></span>
                          <span class="mock_subject">한국사</span>
                      </div>
                      <div class="mockexam_thumb">
                          <div class="tec_img_wrp">
                              <span class="tec_img"><img src="<%=img_main%>/profphoto/gong/gosabu88/Prof3.png" alt="고종훈 선생님 이미지"></span>
                          </div>
                          <div class="tec_con_wrp">
                              <p class="mock_desc">시험일까지 매주 2회 엄선된 모의고사로 <br>실력을 점수로 만드는 기회로 활용하세요!</p>
                              <p class="mock_title">한국사 고종훈 <br>동형모의고사 시즌2</p>
                              <p class="mock_date">응시 기간 : 1/16(월)~3/7(금)</p>
                          </div>
                          <div class="mock_dimm">
                              <span>2023. 01. 14. <br>Coming Soon</span>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
      </li>
  </ul>
</div></div>

<div class="code-box css"><link type="text/css" rel="stylesheet" href="/common/css/event_common.css" /></div>
<style>
.mockexam_obj{text-align:left;position:relative;font-family: 'NotoSans KR';}
.mockexam_obj .edge{display:block;position: relative;}
.mockexam_obj .edge.edge2, .mockexam_obj .edge.edge3{display:none;position:absolute;left:0;top:0;}
.mockexam_obj.dimm .edge.edge2{display:block;}
.mockexam_obj.dimm.closed .edge.edge2{display:none;}
.mockexam_obj.dimm.closed .edge.edge3{display:block;}
.mockexam_obj .edge_wrp{position:relative;display:inline-block;z-index:1;vertical-align:bottom;}
.mockexam_obj .edge_wrp .edge img{vertical-align:top;}
.mockexam_obj .mock_subject{font-size:28px;font-weight:900;color:#000;left:0;top:30px;position:absolute;text-align:center;width:100%;padding-right:50px;}
.mockexam_thumb{position:relative;background-color:#ededed;text-align:center;border-radius:0 20px 20px 20px;overflow:hidden;padding-top:35px;}
.mockexam_thumb .tec_img_wrp{position: relative;height:0;padding:0 0 293px 0;}
.mockexam_thumb .tec_img_wrp .tec_img{display:inline-block;width:240px;}
.mockexam_thumb .tec_img_wrp .evt_label{display:inline-block;font-size:20px;font-weight:900;color:#000;background-color:#25c4fe;position: absolute;right:30px;top:0;border-radius:20px;padding:10px 13px;line-height:1;}
.mockexam_thumb .tec_img_wrp.multi .tec_img{position:absolute;}
.mockexam_thumb .tec_img_wrp.multi .tec_img:nth-child(1){left:4%;}
.mockexam_thumb .tec_img_wrp.multi .tec_img:nth-child(2){position:relative;}
.mockexam_thumb .tec_img_wrp.multi .tec_img:nth-child(3){right:4%;}
.mockexam_thumb .tec_con_wrp{position: relative;background-color:#fff;padding:30px 50px 110px;height:331px;}
.mockexam_thumb .tec_con_wrp .mock_desc{font-size:18px;color:#000;}
.mockexam_thumb .tec_con_wrp .mock_title{font-size:30px;font-weight:900;color:#000;line-height:1.2;margin-top:5px;}
.mockexam_thumb .tec_con_wrp .mock_date{font-size:16px;font-weight:900;color:#000;padding-top:20px;margin-top:20px;border-top:1px solid #3e3b10;}
.mockexam_thumb .mock_link{font-size:25px;font-weight:bold;color:#fff;background-color: #000000;display:block;padding:23.5px 0;position: absolute;left:0;bottom:0;width:100%;}
.mockexam_thumb .mock_dimm{position: absolute;left:0;top:0;width:100%;height:100%;background-color:rgba(0, 34, 47, 0.8);}
.mockexam_thumb .mock_dimm span{display:block;color:#fff;position:absolute;left:0;top:50%;transform:translateY(-50%);text-align:center;width:100%;font-size:28px;font-weight:900;text-transform:uppercase;}
.mockexam_thumb .mock_dimm span.closed:before{content:'';display:block;background:url(https://img.megagong.net/m/2022/1214_examgate/ic_lock.png) 0 0 no-repeat;width:43px;height:62px;margin:0 auto 10px;}

.mockexam_gate{max-width:768px;margin:0 auto;}
.mockexam_gate .tab_base{width:100%;}
.mockexam_gate .tab_base:after{content:'';display:block;clear:both;}
.mockexam_gate .tab_base > li{float:left;width:33.333%;border-right:1px solid #1e2021;background-color:#ffffff;text-align:center;}
.mockexam_gate .tab_base > li:nth-child(3n){width:33.334%;border-right:0;}
.mockexam_gate .tab_base > li > a{display:block;padding:15px 0;font-size:18px;color:#1e2021;}
.mockexam_gate .tab_base > li.on{background-color:#25c4fe;}
.mockexam_gate .tab_base > li.on > a{color:#fff;}
.mockexam_gate .tab_base > li:nth-child(4), .mockexam_gate .tab_base > li:nth-child(5), 
.mockexam_gate .tab_base > li:nth-child(6){border-top:1px solid #1e2021;}
.mockexam_gate .panel_base > li{padding:4% 4% 0;}
.mockexam_gate{opacity:0;transition: 0.2s;}
.mockexam_gate.isReady{opacity:1;}
.subject_slide_wrap.mg_slick_wrap .slick-dots li button{background-color: #fff;border:1px solid #25c4fe;width:16px;height:16px;}
.subject_slide_wrap.mg_slick_wrap .slick-dots li.slick-active button{background-color: #25c4fe;}

@media screen and (max-width:768px) {
.mockexam_gate .tab_base > li > a {
    padding: 11% 0;
    font-size: 17px;
    
}
.mockexam_thumb .tec_con_wrp {
    position: relative;
    background-color: #fff;
    padding: 6% 5% 6%;
      height: 28vh;
}
.mockexam_obj .mock_subject {
    font-size: 20px;
    padding-right: 0px;
}
.mockexam_thumb .tec_img_wrp .evt_label {
    font-size: 13px;
}
.mockexam_thumb .tec_con_wrp .mock_desc {
    font-size: 14px;
    line-height: 19px;
}
.mockexam_thumb .tec_con_wrp .mock_title {
    font-size: 20px;
}
.mockexam_thumb .tec_con_wrp .mock_date {
    font-size: 13px;
    padding-top: 2%;
    margin-top: 4%;
}

.mockexam_thumb .mock_link {
    font-size: 19px;
    padding: 6% 0;
}
.mockexam_obj .edge {
    width: 50%;
}
}


@media screen and (max-width:414px) {
  .mg_slick_wrap .slick-dots{margin-top:0;}
  .mg_slick_wrap .slick-dots li button{width:8px;height:8px;}
}
</style>

<!-- JS -->
<script>
var subjectSlide = $('.subject_slide').slick({
  infinite: false,
  speed: 500,
  arrows: false,
  draggable: true,
  touchThreshold: 100,
  slidesToShow: 1,
  slidesToScroll: 1,
  dots: true,
});
$('.tab_base li a').on('click', function(){
  subjectSlide.slick('refresh');
  subjectSlide.slick('setPosition');
});
  
var RANDOM_IDX = Math.floor(Math.random() * $('.panel_base > li').length);
setTimeout(function(){
    $('.mockexam_gate').find('.tab_base li').eq(RANDOM_IDX).find('a').click();
}, 250);

setTimeout(function(){
    $('.mockexam_gate').addClass('isReady');
}, 500);
</script>

<p class="page_text">메가스터디 공무원 홍보 및 이벤트 페이지에서 사용되는 슬라이드 기능입니다.<br> 
각각의 탭 내부에 별도의 슬라이드 기능을 제공하고 있습니다. </p>

<!-- Code View -->
<pre class="language-html html direct act"><code><div class="mockexam_gate">
  <ul id="tab" class="tab_base col3">
      <li class="on"><a href="#tab1">국어</a></li>
      <li><a href="#tab2">영어</a></li>
      <li><a href="#tab3">한국사</a></li>
  </ul>
  <ul class="panel_base w_slide">
      <!-- 국어 -->
      <li id="tab1">
          <div class="mg_slick_wrap subject_slide_wrap">
              <div class="subject_slide">
                  <div class="mockexam_obj mockexam_korean1">
                      <div class="edge_wrp">
                          <span class="edge edge1"><img src="<%=img_main%>/m/2022/1214_examgate/examgate_edge.png" alt=""></span>
                          <span class="edge edge2"><img src="<%=img_main%>/m/2022/1214_examgate/examgate_edge2.png" alt=""></span>
                          <span class="mock_subject">국어</span>
                      </div>
                      <div class="mockexam_thumb">
                          <div class="tec_img_wrp">
                              <span class="tec_img"><img src="<%=img_main%>/profphoto/gong/lyj4718/Prof3.png" alt="이유진 선생님 이미지"></span>
                              <span class="evt_label">EVENT</span>
                          </div>
                          <div class="tec_con_wrp">
                              <p class="mock_desc">공무원 수험가를 가장 뜨겁게 달군 모의고사 <br>완벽에 갓벽을 더하는 100일의 기적</p>
                              <p class="mock_title">국어 이유진 <br>백일기도 모의고사</p>
                              <p class="mock_date">응시 기간 : 12/26(월)~4/3(월)</p>
                          </div>
                          <a class="mock_link" href="/s/gong/event/2022/12140185/index.asp#eventWrap" target="_blank" tabindex="0">OPEN &gt;</a>
                      </div>
                  </div>
                  <div class="mockexam_obj mockexam_korean2 dimm" style="width: 100%; display: inline-block;">
                    <div class="edge_wrp">
                        <span class="edge edge1"><img src="<%=img_main%>/m/2022/1214_examgate/examgate_edge.png" alt=""></span>
                        <span class="edge edge2"><img src="<%=img_main%>/m/2022/1214_examgate/examgate_edge2.png" alt=""></span>
                        <span class="mock_subject">국어</span>
                    </div>
                    <div class="mockexam_thumb">
                        <div class="tec_img_wrp">
                              <span class="tec_img"><img src="<%=img_main%>/profphoto/gong/gilltoraebi/Prof3.png" alt="이윤주 선생님 이미지"></span>
                            <span class="evt_label">EVENT</span>
                        </div>
                        <div class="tec_con_wrp">
                            <p class="mock_desc">최고의 적중률! 보석같은 문항! <br>이것이 진짜 실전모의고사다!</p>
                            <p class="mock_title">윤주국어 <br>실전 모의고사</p>
                        </div>
                        <div class="mock_dimm">
                            <span>2023. 01. 03. <br>Coming Soon</span>
                        </div>
                        
                    </div>
                </div>
              </div>
          </div>
      </li>
      <li id="tab2">
          <div class="mg_slick_wrap subject_slide_wrap">
              <div class="subject_slide">
                  <div class="mockexam_obj mockexam_english1">
                    <div class="edge_wrp">
                        <span class="edge edge1"><img src="<%=img_main%>/m/2022/1214_examgate/examgate_edge.png" alt=""></span>
                        <span class="edge edge2"><img src="<%=img_main%>/m/2022/1214_examgate/examgate_edge2.png" alt=""></span>
                        <span class="mock_subject">영어</span>
                    </div>
                    <div class="mockexam_thumb">
                        <div class="tec_img_wrp">
                            <span class="tec_img"><img src="<%=img_main%>/profphoto/gong/tjenglish08/Prof3.png" alt="조태정 선생님 이미지"></span>
                            <span class="evt_label">EVENT</span>
                        </div>
                        <div class="tec_con_wrp">
                            <p class="mock_desc">'적정'한 문항, '적합'한 학습으로<br>'적중'하는 조태정의 동형모의고사입니다.</p>
                            <p class="mock_title">조태정 <br>실전 동형 모의고사</p>
                            <p class="mock_date">응시 기간 : 1/11(수)~4/2(일)</p>
                        </div>
                        <a class="mock_link" href="/s/gong/event/2022/12140190/index.asp#eventWrap" target="_blank" tabindex="0">OPEN &gt;</a>
                    </div>
                </div>
              </div>
          </div>
      </li>
      <li id="tab3">
          <div class="mg_slick_wrap subject_slide_wrap">
              <div class="subject_slide">
                  <div class="mockexam_obj mockexam_history1">
                      <div class="edge_wrp">
                          <span class="edge edge1"><img src="<%=img_main%>/m/2022/1214_examgate/examgate_edge.png" alt=""></span>
                          <span class="edge edge2"><img src="<%=img_main%>/m/2022/1214_examgate/examgate_edge2.png" alt=""></span>
                          <span class="mock_subject">한국사</span>
                      </div>
                      <div class="mockexam_thumb">
                          <div class="tec_img_wrp">
                              <span class="tec_img"><img src="<%=img_main%>/profphoto/gong/gosabu88/Prof3.png" alt="고종훈 선생님 이미지"></span>
                              <span class="evt_label">EVENT</span>
                          </div>
                          <div class="tec_con_wrp">
                              <p class="mock_desc">압도적 선택으로 증명된 최고의 모의고사로 <br>나의 합격여부를 체크하세요.</p>
                              <p class="mock_title">한국사 고종훈 <br>동형모의고사 시즌1</p>
                              <p class="mock_date">응시 기간 : 11/28(월) ~ 1/13(금)</p>
                          </div>
                          <a class="mock_link" href="/s/gong/event/2022/09270151/index.asp#eventWrap" target="_blank" tabindex="0">OPEN &gt;</a>
                      </div>
                  </div>
                  <div class="mockexam_obj mockexam_history2 dimm">
                      <div class="edge_wrp">
                          <span class="edge edge1"><img src="<%=img_main%>/m/2022/1214_examgate/examgate_edge.png" alt=""></span>
                          <span class="edge edge2"><img src="<%=img_main%>/m/2022/1214_examgate/examgate_edge2.png" alt=""></span>
                          <span class="mock_subject">한국사</span>
                      </div>
                      <div class="mockexam_thumb">
                          <div class="tec_img_wrp">
                              <span class="tec_img"><img src="<%=img_main%>/profphoto/gong/gosabu88/Prof3.png" alt="고종훈 선생님 이미지"></span>
                          </div>
                          <div class="tec_con_wrp">
                              <p class="mock_desc">시험일까지 매주 2회 엄선된 모의고사로 <br>실력을 점수로 만드는 기회로 활용하세요!</p>
                              <p class="mock_title">한국사 고종훈 <br>동형모의고사 시즌2</p>
                              <p class="mock_date">응시 기간 : 1/16(월)~3/7(금)</p>
                          </div>
                          <div class="mock_dimm">
                              <span>2023. 01. 14. <br>Coming Soon</span>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
      </li>
  </ul>
</div></code></pre>
<pre class="language-html css direct act"><code><link type="text/css" rel="stylesheet" href="/common/css/event_common.css" /></code></pre>
<pre class="language-css direct act"><code>.mockexam_obj{text-align:left;position:relative;}
.mockexam_obj .edge{display:block;position: relative;}
.mockexam_obj .edge.edge2, .mockexam_obj .edge.edge3{display:none;position:absolute;left:0;top:0;}
.mockexam_obj.dimm .edge.edge2{display:block;}
.mockexam_obj.dimm.closed .edge.edge2{display:none;}
.mockexam_obj.dimm.closed .edge.edge3{display:block;}
.mockexam_obj .edge_wrp{position:relative;display:inline-block;z-index:1;vertical-align:bottom;}
.mockexam_obj .edge_wrp .edge img{vertical-align:top;}
.mockexam_obj .mock_subject{font-size:28px;font-weight:900;color:#000;left:0;top:30px;position:absolute;text-align:center;width:100%;padding-right:50px;}
.mockexam_thumb{position:relative;background-color:#ededed;text-align:center;border-radius:0 20px 20px 20px;overflow:hidden;padding-top:35px;}
.mockexam_thumb .tec_img_wrp{position: relative;height:0;padding:0 0 293px 0;}
.mockexam_thumb .tec_img_wrp .tec_img{display:inline-block;width:240px;}
.mockexam_thumb .tec_img_wrp .evt_label{display:inline-block;font-size:20px;font-weight:900;color:#000;background-color:#25c4fe;position: absolute;right:30px;top:0;border-radius:20px;padding:10px 13px;line-height:1;}
.mockexam_thumb .tec_img_wrp.multi .tec_img{position:absolute;}
.mockexam_thumb .tec_img_wrp.multi .tec_img:nth-child(1){left:4%;}
.mockexam_thumb .tec_img_wrp.multi .tec_img:nth-child(2){position:relative;}
.mockexam_thumb .tec_img_wrp.multi .tec_img:nth-child(3){right:4%;}
.mockexam_thumb .tec_con_wrp{position: relative;background-color:#fff;padding:30px 50px 110px;height:331px;}
.mockexam_thumb .tec_con_wrp .mock_desc{font-size:18px;color:#000;}
.mockexam_thumb .tec_con_wrp .mock_title{font-size:30px;font-weight:900;color:#000;line-height:1.2;margin-top:5px;}
.mockexam_thumb .tec_con_wrp .mock_date{font-size:16px;font-weight:900;color:#000;padding-top:20px;margin-top:20px;border-top:1px solid #3e3b10;}
.mockexam_thumb .mock_link{font-size:25px;font-weight:bold;color:#fff;background-color: #000000;display:block;padding:23.5px 0;position: absolute;left:0;bottom:0;width:100%;}
.mockexam_thumb .mock_dimm{position: absolute;left:0;top:0;width:100%;height:100%;background-color:rgba(0, 34, 47, 0.8);}
.mockexam_thumb .mock_dimm span{display:block;color:#fff;position:absolute;left:0;top:50%;transform:translateY(-50%);text-align:center;width:100%;font-size:28px;font-weight:900;text-transform:uppercase;}
.mockexam_thumb .mock_dimm span.closed:before{content:'';display:block;background:url(https://img.megagong.net/m/2022/1214_examgate/ic_lock.png) 0 0 no-repeat;width:43px;height:62px;margin:0 auto 10px;}

.mockexam_gate{max-width:768px;margin:0 auto;}
.mockexam_gate .tab_base{width:100%;}
.mockexam_gate .tab_base:after{content:'';display:block;clear:both;}
.mockexam_gate .tab_base > li{float:left;width:33.333%;border-right:1px solid #1e2021;background-color:#ffffff;text-align:center;}
.mockexam_gate .tab_base > li:nth-child(3n){width:33.334%;border-right:0;}
.mockexam_gate .tab_base > li > a{display:block;padding:15px 0;font-size:18px;color:#1e2021;}
.mockexam_gate .tab_base > li.on{background-color:#25c4fe;}
.mockexam_gate .tab_base > li.on > a{color:#fff;}
.mockexam_gate .tab_base > li:nth-child(4), .mockexam_gate .tab_base > li:nth-child(5), 
.mockexam_gate .tab_base > li:nth-child(6){border-top:1px solid #1e2021;}
.mockexam_gate .panel_base > li{padding:4% 4% 0;}
.mockexam_gate{opacity:0;transition:opacity 0.2s;}
.mockexam_gate.isReady{opacity:1;}
.mg_slick_wrap .slick-dots li button{background-color: #fff;border:1px solid #25c4fe;width:16px;height:16px;}
.mg_slick_wrap .slick-dots li.slick-active button{background-color: #25c4fe;}

@media screen and (max-width:414px) {
  .mg_slick_wrap .slick-dots{margin-top:0;}
  .mg_slick_wrap .slick-dots li button{width:8px;height:8px;}
}</code></pre>
<pre class="language-javascript direct act"><code>var subjectSlide = $('.subject_slide').slick({
  infinite: false,
  speed: 500,
  arrows: false,
  draggable: true,
  touchThreshold: 100,
  slidesToShow: 1,
  slidesToScroll: 1,
  dots: true,
});
$('.tab_base li a').on('click', function(){
  subjectSlide.slick('refresh');
  subjectSlide.slick('setPosition');
});
  
var RANDOM_IDX = Math.floor(Math.random() * $('.panel_base > li').length);
setTimeout(function(){
  $('.mockexam_gate').find('.tab_base li').eq(RANDOM_IDX).find('a').click();
}, 250);

setTimeout(function(){
  $('.mockexam_gate').addClass('isReady');
}, 500);</code></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="https://www.megagong.net/s/gong/event/2022/12140184/index.asp#eventWrap" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#탭내부슬라이드</p> </li>
                            <li><p>#강사홍보</p> </li>
                            <li><p>#모의고사</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->











            <div class="page_text_wrap">
                <p class="page_head">PSAT 강좌 후기 + 반응형 슬라이드</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/slide5.png" alt='슬라이드위치' ></div>

<!-- HTML -->
<div class="code-box html"><div class="reviewSlide_wrp">
  <div class="slider">
    <div class="item"><img src="<%=img_main%>/m/2022/1128_psat/img_evCon41.png" alt=""></div>
    <div class="item"><img src="<%=img_main%>/m/2022/1128_psat/img_evCon42.png" alt=""></div>
    <div class="item"><img src="<%=img_main%>/m/2022/1128_psat/img_evCon43.png" alt=""></div>
    <div class="item"><img src="<%=img_main%>/m/2022/1128_psat/img_evCon44.png" alt=""></div>
    <div class="item"><img src="<%=img_main%>/m/2022/1128_psat/img_evCon45.png" alt=""></div>
    <div class="item"><img src="<%=img_main%>/m/2022/1128_psat/img_evCon46.png" alt=""></div>
  </div>
</div></div>

<style>
.reviewSlide_wrp{text-align:center;}
.reviewSlide_wrp .slider { margin-top:50px; }
.reviewSlide_wrp .slick-slide { text-align:center; }
.reviewSlide_wrp .slick-slide img { display:block; margin:auto; }
.reviewSlide_wrp .slick-arrow { position:absolute; top:50%; z-index:5; width:47px; height:90px; font-size:0; transform:translateY(-50%);  }
.reviewSlide_wrp .slick-arrow.slick-prev { left:-80px; background: url(https://img.megagong.net/m/2022/1128_psat/btn_prev_con4.png) no-repeat center center; }
.reviewSlide_wrp .slick-arrow.slick-next { right:-80px; background: url(https://img.megagong.net/m/2022/1128_psat/btn_next_con4.png) no-repeat center center; }

@media screen and (max-width: 1200px) {
  .reviewSlide_wrp .slider { margin-top:4vw; }
  .reviewSlide_wrp .slick-arrow { width:40px; height:50px; }
  .reviewSlide_wrp .slick-arrow.slick-prev { left:0; background-size:60%; }
  .reviewSlide_wrp .slick-arrow.slick-next { right:0; background-size:60%; }
  .reviewSlide_wrp .slick-dots { margin-top:-1vw; }
  .reviewSlide_wrp .slick-dots li { display:inline-block; vertical-align:top; margin:0 5px;  }
  .reviewSlide_wrp .slick-dots li button { width:10px; height:10px; border-radius:5px; background:#b8b8b8; font-size:0; }
  .reviewSlide_wrp .slick-dots li.slick-active button { background:#90f398; width:40px; }
}
</style>

<!-- JS -->
<script>$('.reviewSlide_wrp .slider').slick({
  slidesToShow: 2,
  slidesToScroll: 1,
  autoplay: true,
  autoplaySpeed: 2000,
  dots: false,
  infinite: true,
  speed: 1000,
  arrows: true,
  pauseOnHover: false,
  responsive: [ 
    { 
      breakpoint: 768, 
      settings: { 
        slidesToShow: 1,
        arrows: false,
        dots: true,
      } 
    }, 
  ]
});</script>


<p class="page_text">메가스터디 공무원 홍보 및 이벤트 페이지에서 사용되는 슬라이드 기능입니다.<br> 
슬라이드 이미지를 통하여 사용자가 강좌후기를 보다 더 수월히 확인할 수 있도록 돕습니다.</p>


<!-- Code View -->
<pre class="language-html html act direct"><code><div class="reviewSlide_wrp">
  <div class="slider">
    <div class="item"><img src="<%=img_main%>/m/2022/1128_psat/img_evCon41.png" alt=""></div>
    <div class="item"><img src="<%=img_main%>/m/2022/1128_psat/img_evCon42.png" alt=""></div>
    <div class="item"><img src="<%=img_main%>/m/2022/1128_psat/img_evCon43.png" alt=""></div>
    <div class="item"><img src="<%=img_main%>/m/2022/1128_psat/img_evCon44.png" alt=""></div>
    <div class="item"><img src="<%=img_main%>/m/2022/1128_psat/img_evCon45.png" alt=""></div>
    <div class="item"><img src="<%=img_main%>/m/2022/1128_psat/img_evCon46.png" alt=""></div>
  </div>
</div></code></pre>
<pre class="language-css act direct"><code>.reviewSlide_wrp{text-align:center;}
.reviewSlide_wrp .slider { margin-top:50px; }
.reviewSlide_wrp .slick-slide { text-align:center; }
.reviewSlide_wrp .slick-slide img { display:block; margin:auto; }
.reviewSlide_wrp .slick-arrow { position:absolute; top:50%; z-index:5; width:47px; height:90px; font-size:0; transform:translateY(-50%);  }
.reviewSlide_wrp .slick-arrow.slick-prev { left:-80px; background: url(https://img.megagong.net/m/2022/1128_psat/btn_prev_con4.png) no-repeat center center; }
.reviewSlide_wrp .slick-arrow.slick-next { right:-80px; background: url(https://img.megagong.net/m/2022/1128_psat/btn_next_con4.png) no-repeat center center; }

@media screen and (max-width: 1200px) {
  .reviewSlide_wrp .slider { margin-top:4vw; }
  .reviewSlide_wrp .slick-arrow { width:40px; height:50px; }
  .reviewSlide_wrp .slick-arrow.slick-prev { left:0; background-size:60%; }
  .reviewSlide_wrp .slick-arrow.slick-next { right:0; background-size:60%; }
  .reviewSlide_wrp .slick-dots { margin-top:-1vw; }
  .reviewSlide_wrp .slick-dots li { display:inline-block; vertical-align:top; margin:0 5px;  }
  .reviewSlide_wrp .slick-dots li button { width:10px; height:10px; border-radius:5px; background:#b8b8b8; font-size:0; }
  .reviewSlide_wrp .slick-dots li.slick-active button { background:#90f398; width:40px; }
}</code></pre>
<pre class="language-javascript act direct"><code>$('.reviewSlide_wrp .slider').slick({
  slidesToShow: 2,
  slidesToScroll: 1,
  autoplay: true,
  autoplaySpeed: 2000,
  dots: false,
  infinite: true,
  speed: 1000,
  arrows: true,
  pauseOnHover: false,
  responsive: [ 
    { 
      breakpoint: 768, 
      settings: { 
        slidesToShow: 1,
        arrows: false,
        dots: true,
      } 
    }, 
  ]
});</code></pre>


                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/s/gong/event/2022/11280176/index.asp#eventWrap" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#후기</p> </li>
                            <li><p>#슬라이드</p> </li>
                            <li><p>#반응형</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->


            <div class="page_text_wrap">
                <p class="page_head">카드 호버시 flip 효과 슬라이드</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/slide5.png" alt='슬라이드위치' ></div>

<!-- HTML -->
<div class="code-box html" style="background-color:#674d3f;"><%
    Function reviewItems()
%>
<div class="item">
    <div class="item_inner">
        <div class="before">
            <div class="before_inner">
                <p>천제 풀기 <br />정말 추천드립니다!</p>
                <span>2022 국가직 9급 세무직 합격생</span>
            </div>
        </div>
        <div class="after">
            <div class="after_inner">
                <span>결과적으로 천제를 많이 <br />돌림으로써 시간도 단축하고 <br />문제푸는 능력도 길러졌다고 <br />생각하기 때문에 미리 천제 풀기 <br />정말 추천드립니다!</span>
            </div>
        </div>
    </div>
</div>
<div class="item">
    <div class="item_inner">
        <div class="before">
            <div class="before_inner">
                <p>시험 전날까지도 <br />세법천제를 봤어요.</p>
                <span>2022 국가직 9급 세무직 합격생</span>
            </div>
        </div>
        <div class="after">
            <div class="after_inner">
                <span>천제에서 봤던 게 시험에 나오고, <br />계산문제도 천제만큼은 아니지만 <br /> 천제에서 연습했던 것 처럼 풀었어요. <br />시험문제 풀 때 <br />정말 술술 풀려서 뭐지?싶었는데 <br />채점하니까 90점이여서 <br />정말 놀랐어요.</span>
            </div>
        </div>
    </div>
</div>
<div class="item">
    <div class="item_inner">
        <div class="before">
            <div class="before_inner">
                <p>천제 문제 반복해서 <br />푸는 걸 추천합니다.</p>
                <span>2022 국가직 9급 세무직 합격생</span>
            </div>
        </div>
        <div class="after">
            <div class="after_inner">
                <span>기출하고 천제 모두 기본 3회는 풀었고, <br />3회 이후에도 풀이법이 <br />바로 떠오르지않는 문제는 <br />잘씹기에 표시해서 떠오를 때까지 <br />수를 세지않고 계속 푼 거 같아요.</span>
            </div>
        </div>
    </div>
</div>
<div class="item">
    <div class="item_inner">
        <div class="before">
            <div class="before_inner">
                <p>기본서, 기출, 천제를 <br />3박자로 병행</p>
                <span>국가직 9급 세무직 합격생</span>
            </div>
        </div>
        <div class="after">
            <div class="after_inner">
                <span>회계는 시간을 단축시키기 위해 <br />계산을 빨리해야 하는 <br />노력이 필요했기 때문에 <br />기본서, 기출, 천제를 <br />3박자로 병행해서 <br />파트별로 쭉 푸는 방식으로 <br />공부했습니다.</span>
            </div>
        </div>
    </div>
</div>
<div class="item">
    <div class="item_inner">
        <div class="before">
            <div class="before_inner">
                <p>천제를 못해도 <br />15회독정도 <br />한 것 같습니다.</p>
                <span>2022 7급 재경직 합격생</span>
            </div>
        </div>
        <div class="after">
            <div class="after_inner">
                <span>천제를 못해도 15회독 정도 <br />한 것 같습니다. <br />그러다 보니까 어느순간부터는 <br />문제를 읽으면 손이 <br />자동적으로 나가는 수준이 되고 <br />한 10회독을 넘기다 보면 문제푸는 <br />속도가 굉장히 빨라집니다.</span>
            </div>
        </div>
    </div>
</div>
<div class="item">
    <div class="item_inner">
        <div class="before">
            <div class="before_inner">
                <p>회계학이라는 과목이 <br />가장 재미있는, <br />효자 과목이 되었습니다.</p>
                <span>국가직·지방직 9급 세무직 합격생</span>
            </div>
        </div>
        <div class="after">
            <div class="after_inner">
                <span>문제를 당황하지 않고 <br />빠르게 풀어내기 위하여 <br />회계 천제를 계속해서 회독하여 <br />익숙하게 만들었습니다. </span>
            </div>
        </div>
    </div>
</div>
<div class="item">
    <div class="item_inner">
        <div class="before">
            <div class="before_inner">
                <p>천제를 3회독까지 <br />하고 시험장 <br />들어갔습니다.</p>
                <span>국가직 7급 세무직 합격생</span>
            </div>
        </div>
        <div class="after">
            <div class="after_inner">
                <span>천제를 3회독까지 하고 시험장 <br />들어갔습니다. 이게 정말 힘들어요. <br />하지만 어느 순간을 넘어가니 <br />이해 못했던 부분, 잘 못 알고 <br />있던 부분 등을 캐치하게 되고 <br />개념이 정확하게 잡혀갔습니다.</span>
            </div>
        </div>
    </div>
</div>
<div class="item">
    <div class="item_inner">
        <div class="before">
            <div class="before_inner">
                <p>천제 2회독부터는 <br />어떻게 풀어야할지 <br />감이 오더라구요.</p>
                <span>2022 국가직·지방직 9급 세무직 합격생</span>
            </div>
        </div>
        <div class="after">
            <div class="after_inner">
                <span>천제도 1번 회독하고 <br />강의도 듣고 하다 보니 익숙해져서 <br />2회독부터는 어떻게 풀어야할지 <br />감이 오더라구요.</span>
            </div>
        </div>
    </div>
</div>
<%
    End Function
%>
<div class="mg_slick_wrap review_slide_wrap">
    <div class="review_slide reviewDetail"><%=reviewItems%></div>
</div></div>

<style>
.review_slide_wrap{font-family:'NotoSans KR';}
.reviewDetail .item{color:#2b201a;cursor:pointer;text-align:center;}
.reviewDetail .item .item_inner{margin:10px;height:300px;position:relative;}
.reviewDetail .item .before, .reviewDetail .item .after{position:absolute;left:0;top:0;width:100%;height:100%;display:table;transform-style:preserve-3d;backface-visibility:hidden;transition:transform .5s;}
.reviewDetail .item .before{background-color: #d7b4a1;transform:rotatey(0deg);z-index:2;}
.reviewDetail .item .after{background-color:#fff;transform:rotatey(-180deg);z-index:1;}
.reviewDetail .item:hover .before{transform:rotatey(-180deg);z-index:1;}
.reviewDetail .item:hover .after{transform:rotatey(0deg);z-index:2;}
.reviewDetail .item .before_inner{display:table-cell;vertical-align:middle;}
.reviewDetail .item .before p{font-size:22px;font-weight:900;}
.reviewDetail .item .before span{font-size:15px;border-top:1px solid #b28c77;display:inline-block;padding-top:15px;margin-top:10px;}
.reviewDetail .item .after_inner{display:table-cell;vertical-align:middle;}
.reviewDetail .item .after span{font-size:17px;line-height:25px;}
.reviewDetail .slick-arrow{position:absolute;top:50%;z-index:1;width:23px;height:66px;margin-top:-33px;font-size:0;}
.reviewDetail .slick-arrow.slick-prev{left:-60px;background:url(https://img.megagong.net/m/2022/1109_tax/btn_prev.png) 0 0 no-repeat;}
.reviewDetail .slick-arrow.slick-next{right:-60px;background:url(https://img.megagong.net/m/2022/1109_tax/btn_next.png) 0 0 no-repeat;}

@media screen and (max-width: 1280px){
  .review_slide_wrap{padding:0 30px;}
  .reviewDetail .slick-arrow.slick-prev{left:-30px;}
  .reviewDetail .slick-arrow.slick-next{right:-30px;}
}

@media (max-width: 500px){
  .review_slide.reviewDetail .item .item_inner{height:200px;}
  .review_slide.reviewDetail .item .before p{font-size:16px;}
  .review_slide.reviewDetail .item .before span{font-size:12px;padding-top:10px;margin-top:5px;}
  .review_slide.reviewDetail .item .after span{font-size:12px;line-height:1.4;}
}

@media (max-width: 414px){
  .review_slide.reviewDetail .item .before p{font-size:14px;}
  .review_slide.reviewDetail .item .before span{font-size:11px;}
  .review_slide.reviewDetail .item .after span{font-size:11px;padding:0 5px;display:inline-block;}
  .review_slide.reviewDetail .item .after span br{display:none;}
}
</style>

<!-- JS -->
<script>var reviewSlide = $('.review_slide').slick({
    autoplay: true,
    autoplaySpeed: 3000,
    infinite: true,
    speed: 500,
    arrows: true,
    draggable: true,
    touchThreshold: 100,
    slidesToShow: 4,
    slidesToScroll: 1,
    dots: false,
    responsive: [
        {
            breakpoint: 1024,
            settings: {
                slidesToShow: 3,
            }
        },
        {
            breakpoint: 768,
            settings: {
                slidesToShow: 2,
            }
        },
    ]
});

$('.reviewDetail').on('click', '.item', function(){
    if (!$(this).hasClass('on')) {
        $(this).addClass('on');
    } else {
        $(this).removeClass('on');
    }
});</script>


<p class="page_text">메가스터디 공무원 홍보 및 이벤트 페이지에서 사용되는 슬라이드 기능입니다.<br> 
슬라이드 카드에 위에 마우스를 올릴 경우(Hover), 카드가 Flip되면서 뒷면으로 전환되는 효과가 나타납니다.</p>


<!-- Code View -->
<pre class="language-html html act direct"><code>&lt;%
    Function reviewItems()
%&gt;
<div class="item">
    <div class="item_inner">
        <div class="before">
            <div class="before_inner">
                <p>천제 풀기 <br />정말 추천드립니다!</p>
                <span>2022 국가직 9급 세무직 합격생</span>
            </div>
        </div>
        <div class="after">
            <div class="after_inner">
                <span>결과적으로 천제를 많이 <br />돌림으로써 시간도 단축하고 <br />문제푸는 능력도 길러졌다고 <br />생각하기 때문에 미리 천제 풀기 <br />정말 추천드립니다!</span>
            </div>
        </div>
    </div>
</div>
<div class="item">
    <div class="item_inner">
        <div class="before">
            <div class="before_inner">
                <p>시험 전날까지도 <br />세법천제를 봤어요.</p>
                <span>2022 국가직 9급 세무직 합격생</span>
            </div>
        </div>
        <div class="after">
            <div class="after_inner">
                <span>천제에서 봤던 게 시험에 나오고, <br />계산문제도 천제만큼은 아니지만 <br /> 천제에서 연습했던 것 처럼 풀었어요. <br />시험문제 풀 때 <br />정말 술술 풀려서 뭐지?싶었는데 <br />채점하니까 90점이여서 <br />정말 놀랐어요.</span>
            </div>
        </div>
    </div>
</div>
<div class="item">
    <div class="item_inner">
        <div class="before">
            <div class="before_inner">
                <p>천제 문제 반복해서 <br />푸는 걸 추천합니다.</p>
                <span>2022 국가직 9급 세무직 합격생</span>
            </div>
        </div>
        <div class="after">
            <div class="after_inner">
                <span>기출하고 천제 모두 기본 3회는 풀었고, <br />3회 이후에도 풀이법이 <br />바로 떠오르지않는 문제는 <br />잘씹기에 표시해서 떠오를 때까지 <br />수를 세지않고 계속 푼 거 같아요.</span>
            </div>
        </div>
    </div>
</div>
<div class="item">
    <div class="item_inner">
        <div class="before">
            <div class="before_inner">
                <p>기본서, 기출, 천제를 <br />3박자로 병행</p>
                <span>국가직 9급 세무직 합격생</span>
            </div>
        </div>
        <div class="after">
            <div class="after_inner">
                <span>회계는 시간을 단축시키기 위해 <br />계산을 빨리해야 하는 <br />노력이 필요했기 때문에 <br />기본서, 기출, 천제를 <br />3박자로 병행해서 <br />파트별로 쭉 푸는 방식으로 <br />공부했습니다.</span>
            </div>
        </div>
    </div>
</div>
<div class="item">
    <div class="item_inner">
        <div class="before">
            <div class="before_inner">
                <p>천제를 못해도 <br />15회독정도 <br />한 것 같습니다.</p>
                <span>2022 7급 재경직 합격생</span>
            </div>
        </div>
        <div class="after">
            <div class="after_inner">
                <span>천제를 못해도 15회독 정도 <br />한 것 같습니다. <br />그러다 보니까 어느순간부터는 <br />문제를 읽으면 손이 <br />자동적으로 나가는 수준이 되고 <br />한 10회독을 넘기다 보면 문제푸는 <br />속도가 굉장히 빨라집니다.</span>
            </div>
        </div>
    </div>
</div>
<div class="item">
    <div class="item_inner">
        <div class="before">
            <div class="before_inner">
                <p>회계학이라는 과목이 <br />가장 재미있는, <br />효자 과목이 되었습니다.</p>
                <span>국가직·지방직 9급 세무직 합격생</span>
            </div>
        </div>
        <div class="after">
            <div class="after_inner">
                <span>문제를 당황하지 않고 <br />빠르게 풀어내기 위하여 <br />회계 천제를 계속해서 회독하여 <br />익숙하게 만들었습니다. </span>
            </div>
        </div>
    </div>
</div>
<div class="item">
    <div class="item_inner">
        <div class="before">
            <div class="before_inner">
                <p>천제를 3회독까지 <br />하고 시험장 <br />들어갔습니다.</p>
                <span>국가직 7급 세무직 합격생</span>
            </div>
        </div>
        <div class="after">
            <div class="after_inner">
                <span>천제를 3회독까지 하고 시험장 <br />들어갔습니다. 이게 정말 힘들어요. <br />하지만 어느 순간을 넘어가니 <br />이해 못했던 부분, 잘 못 알고 <br />있던 부분 등을 캐치하게 되고 <br />개념이 정확하게 잡혀갔습니다.</span>
            </div>
        </div>
    </div>
</div>
<div class="item">
    <div class="item_inner">
        <div class="before">
            <div class="before_inner">
                <p>천제 2회독부터는 <br />어떻게 풀어야할지 <br />감이 오더라구요.</p>
                <span>2022 국가직·지방직 9급 세무직 합격생</span>
            </div>
        </div>
        <div class="after">
            <div class="after_inner">
                <span>천제도 1번 회독하고 <br />강의도 듣고 하다 보니 익숙해져서 <br />2회독부터는 어떻게 풀어야할지 <br />감이 오더라구요.</span>
            </div>
        </div>
    </div>
</div>
&lt;%
    End Function
%&gt;
<div class="mg_slick_wrap review_slide_wrap">
    <div class="review_slide reviewDetail"><%=reviewItems%></div>
</div></code></pre>
<pre class="language-css act direct"><code>.review_slide_wrap{font-family:'NotoSans KR';}
.reviewDetail .item{color:#2b201a;cursor:pointer;text-align:center;}
.reviewDetail .item .item_inner{margin:10px;height:300px;position:relative;}
.reviewDetail .item .before, .reviewDetail .item .after{position:absolute;left:0;top:0;width:100%;height:100%;display:table;transform-style:preserve-3d;backface-visibility:hidden;transition:transform .5s;}
.reviewDetail .item .before{background-color: #d7b4a1;transform:rotatey(0deg);z-index:2;}
.reviewDetail .item .after{background-color:#fff;transform:rotatey(-180deg);z-index:1;}
.reviewDetail .item:hover .before{transform:rotatey(-180deg);z-index:1;}
.reviewDetail .item:hover .after{transform:rotatey(0deg);z-index:2;}
.reviewDetail .item .before_inner{display:table-cell;vertical-align:middle;}
.reviewDetail .item .before p{font-size:22px;font-weight:900;}
.reviewDetail .item .before span{font-size:15px;border-top:1px solid #b28c77;display:inline-block;padding-top:15px;margin-top:10px;}
.reviewDetail .item .after_inner{display:table-cell;vertical-align:middle;}
.reviewDetail .item .after span{font-size:17px;line-height:25px;}
.reviewDetail .slick-arrow{position:absolute;top:50%;z-index:1;width:23px;height:66px;margin-top:-33px;font-size:0;}
.reviewDetail .slick-arrow.slick-prev{left:-60px;background:url(https://img.megagong.net/m/2022/1109_tax/btn_prev.png) 0 0 no-repeat;}
.reviewDetail .slick-arrow.slick-next{right:-60px;background:url(https://img.megagong.net/m/2022/1109_tax/btn_next.png) 0 0 no-repeat;}

@media screen and (max-width: 1280px){
  .review_slide_wrap{padding:0 30px;}
  .reviewDetail .slick-arrow.slick-prev{left:-30px;}
  .reviewDetail .slick-arrow.slick-next{right:-30px;}
}

@media (max-width: 500px){
  .review_slide.reviewDetail .item .item_inner{height:200px;}
  .review_slide.reviewDetail .item .before p{font-size:16px;}
  .review_slide.reviewDetail .item .before span{font-size:12px;padding-top:10px;margin-top:5px;}
  .review_slide.reviewDetail .item .after span{font-size:12px;line-height:1.4;}
}

@media (max-width: 414px){
  .review_slide.reviewDetail .item .before p{font-size:14px;}
  .review_slide.reviewDetail .item .before span{font-size:11px;}
  .review_slide.reviewDetail .item .after span{font-size:11px;padding:0 5px;display:inline-block;}
  .review_slide.reviewDetail .item .after span br{display:none;}
}</code></pre>
<pre class="language-javascript act direct"><code>var reviewSlide = $('.review_slide').slick({
    autoplay: true,
    autoplaySpeed: 3000,
    infinite: true,
    speed: 500,
    arrows: true,
    draggable: true,
    touchThreshold: 100,
    slidesToShow: 4,
    slidesToScroll: 1,
    dots: false,
    responsive: [
        {
            breakpoint: 1024,
            settings: {
                slidesToShow: 3,
            }
        },
        {
            breakpoint: 768,
            settings: {
                slidesToShow: 2,
            }
        },
    ]
});

$('.reviewDetail').on('click', '.item', function(){
    if (!$(this).hasClass('on')) {
      $(this).addClass('on');
    } else {
      $(this).removeClass('on');
    }
});</code></pre>


                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/s/gong/event/2022/11090166/index.asp#eventWrap" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#플립효과</p> </li>
                            <li><p>#후기</p> </li>
                            <li><p>#슬라이드</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->






            <div class="page_text_wrap">
              <p class="page_head">세로 방향 슬라이드 1ST</p> 
              <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
              <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
              <!-- <div class="position_site"><img src="/images/slide1.png" alt='슬라이드위치' ></div> -->
                

<!-- HTML -->
<div class="code-box html"><div class="candidate_slide">
  <div class="item">조*빈 (행정직)</div>
  <div class="item">박*백 (세무직)</div>
  <div class="item">강*목 (교정직)</div>
  <div class="item">이*영 (행정직)</div>
  <div class="item">김*배 (세무직)</div>
  <div class="item">조*진 (직업상담직)</div>
  <div class="item">최*아 (행정직)</div>
  <div class="item">정*은 (검찰직)</div>
  <div class="item">김*수 (교정직)</div>
  <div class="item">조*우 (세무직)</div>
  <div class="item">공*원 (행정직)</div>
  <div class="item">김*미 (행정직)</div>
  <div class="item">이*일 (교정직)</div>
  <div class="item">태*호 (행정직)</div>
  <div class="item">한*현 (세무직)</div>
  <div class="item">최*훈 (행정직)</div>
  <div class="item">윤*현 (보호직)</div>
  <div class="item">이*원 (행정직)</div>
  <div class="item">오*민 (세무직)</div>
  <div class="item">박*연 (세무직)</div>
  <div class="item">송*주 (세무직)</div>
  <div class="item">김*리 (행정직)</div>
  <div class="item">김*연 (행정직)</div>
  <div class="item">이*수 (교정직)</div>
  <div class="item">유*승 (교정직)</div>
  <div class="item">김*리 (행정직)</div>
  <div class="item">정*선 (행정직)</div>
  <div class="item">이*솔 (세무직)</div>
  <div class="item">강*희 (행정직)</div>
  <div class="item">박*필 (세무직)</div>
  <div class="item">이*찬 (행정직)</div>
  <div class="item">김*연 (세무직)</div>
  <div class="item">양*목 (세무직)</div>
  <div class="item">이*현 (세무직)</div>
  <div class="item">안*빈 (행정직)</div>
  <div class="item">송*영 (행정직)</div>
  <div class="item">이*민 (세무직)</div>
  <div class="item">임*금 (세무직)</div>
  <div class="item">진*	(세무직)</div>
  <div class="item">김*현 (세무직)</div>
  <div class="item">류*진 (세무직)</div>
  <div class="item">권*율 (세무직)</div>
  <div class="item">김*나 (행정직)</div>
  <div class="item">이*미 (행정직)</div>
  <div class="item">한*성 (관세직)</div>
  <div class="item">최*희 (세무직)</div>
  <div class="item">곽*휘 (행정직)</div>
  <div class="item">손*혁 (교정직)</div>
  <div class="item">고*수 (교정직)</div>
  <div class="item">장*경 (행정직)</div>
  <div class="item">이*광 (교정직)</div>
  <div class="item">윤*빈 (행정직)</div>
  <div class="item">배*천 (세무직)</div>
  <div class="item">김*비 (세무직)</div>
  <div class="item">김*영 (교정직)</div>
  <div class="item">하*정 (세무직)</div>
  <div class="item">최*서 (세무직)</div>
  <div class="item">임*석 (보호직)</div>
  <div class="item">천*이 (행정직)</div>
  <div class="item">박*근 (세무직)</div>
  <div class="item">김*현 (행정직)</div>
  <div class="item">고*준 (교정직)</div>
  <div class="item">김*은 (세무직)</div>
  <div class="item">김*민 (세무직)</div>
  <div class="item">장*소리 (행정직)</div>
  <div class="item">이*찬 (행정직)</div>
  <div class="item">김*헌 (교정직)</div>
  <div class="item">김*현 (행정직)</div>
  <div class="item">윤*영 (세무직)</div>
  <div class="item">김*지 (행정직)</div>
  <div class="item">김*빈 (교정직)</div>
  <div class="item">이*영 (세무직)</div>
  <div class="item">유*석 (교정직)</div>
  <div class="item">박*순 (교정직)</div>
  <div class="item">이*호 (행정직)</div>
  <div class="item">김*호 (세무직)</div>
  <div class="item">김*현 (행정직)</div>
  <div class="item">김*영 (행정직)</div>
  <div class="item">유*연 (행정직)</div>
  <div class="item">이*민 (세무직)</div>
  <div class="item">박*우 (행정직)</div>
  <div class="item">이*연 (행정직)</div>
  <div class="item">박*현 (직업상담직)</div>
  <div class="item">이*현 (행정직)</div>
  <div class="item">최*지 (세무직)</div>
  <div class="item">송*근 (세무직)</div>
  <div class="item">하*준 (세무직)</div>
  <div class="item">박*희 (행정직)</div>
  <div class="item">배*희 (행정직)</div>
  <div class="item">정*나 (세무직)</div>
  <div class="item">윤*영 (행정직)</div>
  <div class="item">유*아 (행정직)</div>
  <div class="item">김*우 (행정직)</div>
  <div class="item">문*우 (행정직)</div>
  <div class="item">황*주 (행정직)</div>
  <div class="item">유*아 (행정직)</div>
  <div class="item">기*주 (행정직)</div>
  <div class="item">하*은 (행정직)</div>
  <div class="item">천*명 (행정직)</div>
  <div class="item">박*연 (행정직)</div>
  <div class="item">경*지 (세무직)</div>
  <div class="item">최*정 (세무직)</div>
  <div class="item">김*경 (세무직)</div>
  <div class="item">오*경 (행정직)</div>
  <div class="item">정*경 (행정직)</div>
  <div class="item">김*정 (행정직)</div>
  <div class="item">이*영 (행정직)</div>
  <div class="item">김*봉 (세무직)</div>
  <div class="item">박*해 (행정직)</div>
  <div class="item">이*리 (세무직)</div>
  <div class="item">임*호 (행정직)</div>
  <div class="item">진*훈 (행정직)</div>
  <div class="item">이*택 (세무직)</div>
  <div class="item">오*주 (보호직)</div>
  <div class="item">이*주 (행정직)</div>
  <div class="item">이*우 (교정직)</div>
  <div class="item">김*경 (세무직)</div>
  <div class="item">이*석 (보호직)</div>
  <div class="item">김*연 (교정직)</div>
  <div class="item">강*구 (교정직)</div>
  <div class="item">김*원 (세무직)</div>
  <div class="item">박*욱 (교정직)</div>
  <div class="item">강*령 (세무직)</div>
  <div class="item">박*모 (교정직)</div>
  <div class="item">이*민 (행정직)</div>
  <div class="item">문*무 (행정직)</div>
  <div class="item">이*호 (세무직)</div>
  <div class="item">강*정 (직업상담직)</div>
  <div class="item">김*지 (세무직)</div>
  <div class="item">권*경 (행정직)</div>
  <div class="item">하*민 (행정직)</div>
  <div class="item">변*지 (세무직)</div>
  <div class="item">박*연 (세무직)</div>
  <div class="item">정*비 (행정직)</div>
  <div class="item">이*후 (교정직)</div>
  <div class="item">박*권 (행정직)</div>
  <div class="item">이*수 (세무직)</div>
  <div class="item">이*환 (행정직)</div>
  <div class="item">박*은 (세무직)</div>
  <div class="item">권*완 (행정직)</div>
  <div class="item">이*쁨 (행정직)</div>
  <div class="item">박*재 (행정직)</div>
  <div class="item">전*현 (직업상담직)</div>
  <div class="item">여*진 (세무직)</div>
  <div class="item">김*경 (행정직)</div>
  <div class="item">정*훈 (행정직)</div>
  <div class="item">임*수 (행정직)</div>
  <div class="item">문*진 (세무직)</div>
  <div class="item">이*정 (세무직)</div>
  <div class="item">박*운 (행정직)</div>
  <div class="item">현*창 (세무직)</div>
  <div class="item">천*민 (행정직)</div>
  <div class="item">이*연 (세무직)</div>
  <div class="item">방*진 (행정직)</div>
  <div class="item">박*경 (세무직)</div>
  <div class="item">오*형 (교정직)</div>
  <div class="item">김*호 (행정직)</div>
  <div class="item">조*봄 (행정직)</div>
  <div class="item">송*정 (직업상담직)</div>
  <div class="item">김*서 (세무직)</div>
  <div class="item">이*진 (행정직)</div>
  <div class="item">박*지 (행정직)</div>
  <div class="item">전*병 (행정직)</div>
  <div class="item">김*로 (행정직)</div>
  <div class="item">김*석 (행정직)</div>
  <div class="item">소*주 (관세직)</div>
  <div class="item">윤*희 (세무직)</div>
  <div class="item">황*아 (세무직)</div>
  <div class="item">정*아 (세무직)</div>
  <div class="item">심*섭 (세무직)</div>
  <div class="item">조*비 (세무직)</div>
  <div class="item">김*정 (교정직)</div>
</div></div>

<style>
.candidate_slide { background:#3b5aa4; padding:70px 80px; font-family: 'NotoSans KR'; }
.candidate_slide .item { color:#3ac1ff; padding:15px; text-align:center; font-size:17px; }

@media screen and (max-width: 1200px) {
  .candidate_slide {padding:3vw; }
  .candidate_slide .item { padding:2vw; font-size:2vw; }
}
</style>

<!-- JS -->
<script>
$('.candidate_slide').slick({
  slidesToShow: 8,
  slidesToScroll: 1,
  slidesPerRow: 4,
  rows: 1,
  dots : false,
  infinite : true,
  autoplay: true,
  arrows: false,
  speed:1000,
  autoplaySpeed: 0,
  vertical: true,
  adaptiveHeight: false,
});
</script>

<p class="page_text">메가스터디 공무원 홍보 및 이벤트 페이지에서 사용되는 슬라이드 기능입니다.<br> 
순차적으로 성명이 적힌 행이 위로 올라가면서(세로 방향) 순환 반복되는 구조로 이루어져 있습니다. </p>

<!-- Code View -->
<pre class="language-html html act direct"><code><div class="candidate_slide">
  <div class="item">조*빈 (행정직)</div>
  <div class="item">박*백 (세무직)</div>
  <div class="item">강*목 (교정직)</div>
  <div class="item">이*영 (행정직)</div>
  <div class="item">김*배 (세무직)</div>
  <div class="item">조*진 (직업상담직)</div>
  <div class="item">최*아 (행정직)</div>
  <div class="item">정*은 (검찰직)</div>
  <div class="item">김*수 (교정직)</div>
  <div class="item">조*우 (세무직)</div>
  <div class="item">공*원 (행정직)</div>
  <div class="item">김*미 (행정직)</div>
  <div class="item">이*일 (교정직)</div>
  <div class="item">태*호 (행정직)</div>
  <div class="item">한*현 (세무직)</div>
  <div class="item">최*훈 (행정직)</div>
  <div class="item">윤*현 (보호직)</div>
  <div class="item">이*원 (행정직)</div>
  <div class="item">오*민 (세무직)</div>
  <div class="item">박*연 (세무직)</div>
  <div class="item">송*주 (세무직)</div>
  <div class="item">김*리 (행정직)</div>
  <div class="item">김*연 (행정직)</div>
  <div class="item">이*수 (교정직)</div>
  <div class="item">유*승 (교정직)</div>
  <div class="item">김*리 (행정직)</div>
  <div class="item">정*선 (행정직)</div>
  <div class="item">이*솔 (세무직)</div>
  <div class="item">강*희 (행정직)</div>
  <div class="item">박*필 (세무직)</div>
  <div class="item">이*찬 (행정직)</div>
  <div class="item">김*연 (세무직)</div>
  <div class="item">양*목 (세무직)</div>
  <div class="item">이*현 (세무직)</div>
  <div class="item">안*빈 (행정직)</div>
  <div class="item">송*영 (행정직)</div>
  <div class="item">이*민 (세무직)</div>
  <div class="item">임*금 (세무직)</div>
  <div class="item">진*	(세무직)</div>
  <div class="item">김*현 (세무직)</div>
  <div class="item">류*진 (세무직)</div>
  <div class="item">권*율 (세무직)</div>
  <div class="item">김*나 (행정직)</div>
  <div class="item">이*미 (행정직)</div>
  <div class="item">한*성 (관세직)</div>
  <div class="item">최*희 (세무직)</div>
  <div class="item">곽*휘 (행정직)</div>
  <div class="item">손*혁 (교정직)</div>
  <div class="item">고*수 (교정직)</div>
  <div class="item">장*경 (행정직)</div>
  <div class="item">이*광 (교정직)</div>
  <div class="item">윤*빈 (행정직)</div>
  <div class="item">배*천 (세무직)</div>
  <div class="item">김*비 (세무직)</div>
  <div class="item">김*영 (교정직)</div>
  <div class="item">하*정 (세무직)</div>
  <div class="item">최*서 (세무직)</div>
  <div class="item">임*석 (보호직)</div>
  <div class="item">천*이 (행정직)</div>
  <div class="item">박*근 (세무직)</div>
  <div class="item">김*현 (행정직)</div>
  <div class="item">고*준 (교정직)</div>
  <div class="item">김*은 (세무직)</div>
  <div class="item">김*민 (세무직)</div>
  <div class="item">장*소리 (행정직)</div>
  <div class="item">이*찬 (행정직)</div>
  <div class="item">김*헌 (교정직)</div>
  <div class="item">김*현 (행정직)</div>
  <div class="item">윤*영 (세무직)</div>
  <div class="item">김*지 (행정직)</div>
  <div class="item">김*빈 (교정직)</div>
  <div class="item">이*영 (세무직)</div>
  <div class="item">유*석 (교정직)</div>
  <div class="item">박*순 (교정직)</div>
  <div class="item">이*호 (행정직)</div>
  <div class="item">김*호 (세무직)</div>
  <div class="item">김*현 (행정직)</div>
  <div class="item">김*영 (행정직)</div>
  <div class="item">유*연 (행정직)</div>
  <div class="item">이*민 (세무직)</div>
  <div class="item">박*우 (행정직)</div>
  <div class="item">이*연 (행정직)</div>
  <div class="item">박*현 (직업상담직)</div>
  <div class="item">이*현 (행정직)</div>
  <div class="item">최*지 (세무직)</div>
  <div class="item">송*근 (세무직)</div>
  <div class="item">하*준 (세무직)</div>
  <div class="item">박*희 (행정직)</div>
  <div class="item">배*희 (행정직)</div>
  <div class="item">정*나 (세무직)</div>
  <div class="item">윤*영 (행정직)</div>
  <div class="item">유*아 (행정직)</div>
  <div class="item">김*우 (행정직)</div>
  <div class="item">문*우 (행정직)</div>
  <div class="item">황*주 (행정직)</div>
  <div class="item">유*아 (행정직)</div>
  <div class="item">기*주 (행정직)</div>
  <div class="item">하*은 (행정직)</div>
  <div class="item">천*명 (행정직)</div>
  <div class="item">박*연 (행정직)</div>
  <div class="item">경*지 (세무직)</div>
  <div class="item">최*정 (세무직)</div>
  <div class="item">김*경 (세무직)</div>
  <div class="item">오*경 (행정직)</div>
  <div class="item">정*경 (행정직)</div>
  <div class="item">김*정 (행정직)</div>
  <div class="item">이*영 (행정직)</div>
  <div class="item">김*봉 (세무직)</div>
  <div class="item">박*해 (행정직)</div>
  <div class="item">이*리 (세무직)</div>
  <div class="item">임*호 (행정직)</div>
  <div class="item">진*훈 (행정직)</div>
  <div class="item">이*택 (세무직)</div>
  <div class="item">오*주 (보호직)</div>
  <div class="item">이*주 (행정직)</div>
  <div class="item">이*우 (교정직)</div>
  <div class="item">김*경 (세무직)</div>
  <div class="item">이*석 (보호직)</div>
  <div class="item">김*연 (교정직)</div>
  <div class="item">강*구 (교정직)</div>
  <div class="item">김*원 (세무직)</div>
  <div class="item">박*욱 (교정직)</div>
  <div class="item">강*령 (세무직)</div>
  <div class="item">박*모 (교정직)</div>
  <div class="item">이*민 (행정직)</div>
  <div class="item">문*무 (행정직)</div>
  <div class="item">이*호 (세무직)</div>
  <div class="item">강*정 (직업상담직)</div>
  <div class="item">김*지 (세무직)</div>
  <div class="item">권*경 (행정직)</div>
  <div class="item">하*민 (행정직)</div>
  <div class="item">변*지 (세무직)</div>
  <div class="item">박*연 (세무직)</div>
  <div class="item">정*비 (행정직)</div>
  <div class="item">이*후 (교정직)</div>
  <div class="item">박*권 (행정직)</div>
  <div class="item">이*수 (세무직)</div>
  <div class="item">이*환 (행정직)</div>
  <div class="item">박*은 (세무직)</div>
  <div class="item">권*완 (행정직)</div>
  <div class="item">이*쁨 (행정직)</div>
  <div class="item">박*재 (행정직)</div>
  <div class="item">전*현 (직업상담직)</div>
  <div class="item">여*진 (세무직)</div>
  <div class="item">김*경 (행정직)</div>
  <div class="item">정*훈 (행정직)</div>
  <div class="item">임*수 (행정직)</div>
  <div class="item">문*진 (세무직)</div>
  <div class="item">이*정 (세무직)</div>
  <div class="item">박*운 (행정직)</div>
  <div class="item">현*창 (세무직)</div>
  <div class="item">천*민 (행정직)</div>
  <div class="item">이*연 (세무직)</div>
  <div class="item">방*진 (행정직)</div>
  <div class="item">박*경 (세무직)</div>
  <div class="item">오*형 (교정직)</div>
  <div class="item">김*호 (행정직)</div>
  <div class="item">조*봄 (행정직)</div>
  <div class="item">송*정 (직업상담직)</div>
  <div class="item">김*서 (세무직)</div>
  <div class="item">이*진 (행정직)</div>
  <div class="item">박*지 (행정직)</div>
  <div class="item">전*병 (행정직)</div>
  <div class="item">김*로 (행정직)</div>
  <div class="item">김*석 (행정직)</div>
  <div class="item">소*주 (관세직)</div>
  <div class="item">윤*희 (세무직)</div>
  <div class="item">황*아 (세무직)</div>
  <div class="item">정*아 (세무직)</div>
  <div class="item">심*섭 (세무직)</div>
  <div class="item">조*비 (세무직)</div>
  <div class="item">김*정 (교정직)</div>
</div></code></pre>
<pre class="language-css act direct"><code>.candidate_slide { background:#3b5aa4; padding:70px 80px; font-family: 'NotoSans KR'; }
.candidate_slide .item { color:#3ac1ff; padding:15px; text-align:center; font-size:17px; }

@media screen and (max-width: 1200px) {
  .candidate_slide { margin-top:5vw; padding:3vw; }
  .candidate_slide .item { padding:2vw; font-size:2vw; }
}</code></pre>
<pre class="language-javascript act direct"><code>$('.candidate_slide').slick({
  slidesToShow: 8,
  slidesToScroll: 1,
  slidesPerRow: 4,
  rows: 1,
  dots : false,
  infinite : true,
  autoplay: true,
  arrows: false,
  speed:1000,
  autoplaySpeed: 0,
  vertical: true,
  adaptiveHeight: false,
});</code></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/s/gong/event/2022/12210197/index.asp#eventWrap" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#전당</p> </li>
                            <li><p>#세로방향</p> </li>
                            <li><p>#반복</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->







            <div class="page_text_wrap">
              <p class="page_head">세로 방향 슬라이드 2ND</p> 
              <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
              <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
              <!-- <div class="position_site"><img src="/images/slide1.png" alt='슬라이드위치' ></div> -->
                

<!-- HTML -->
<div class="code-box html"><div class="vertical_text_wrp">
  <div class="vertical_text">
      <div class="item">
          <p>나책형 행정법 11번 문제를 풀때 전효진선생님의 암기법 (이일)…. <br class="mo_br" />-구*한 2021.04.17-</p>
      </div>
      <div class="item">
          <p>공부방법과 수험생활의 조언이 있었기에 행정법 90점 입니다! <br class="mo_br" />-최*문 2021.04.30-</p>
      </div>
      <div class="item">
          <p>애기엄마! 행정법 100점 받았습니다. 마지막까지 믿음을 가지고…. <br class="mo_br" />-한*정 2021.04.28-</p>
      </div>
      <div class="item">
          <p>효진쌤만 따라간, 행정법 찐초시생 노베이스로부터 36일의 전사…. <br class="mo_br" />-김*연 2021.04.27-</p>
      </div>
      <div class="item">
          <p>이번 국가직 10분만에 100점 맞았습니다!! <br class="mo_br" />-최*로 2021.04.27-</p>
      </div>
      <div class="item">
          <p>2020 국가직 행정법 35점에서 2021 국가직 105점(가산점 포함) <br class="mo_br" />-황*준 2021.04.21-</p>
      </div>
      <div class="item">
          <p>2021 국가직 9급 행정법 95점 / 효진쌤 커리 추천 / 적중률에 소름…. <br class="mo_br" />-김*원 2021.04.21-</p>
      </div>
      <div class="item">
          <p>작년 국가직 70점에서 이번 국가직 95점 받았습니다! 효진샘 커리만…. <br class="mo_br" />-백*진 2021.04.20-</p>
      </div>
      <div class="item">
          <p>행정법은 효진쌤이라는 말이 아까울 정도예요! <br class="mo_br" />-김*혜 2021.04.19-</p>
      </div>
      <div class="item">
          <p>전효진 한권 행정법총론 없었으면 큰일 날 뻔 했네요. <br class="mo_br" />-김*원 2021.04.21-</p>
      </div>
      <div class="item">
          <p>효진쌤 믿고 100점 받았습니다! <br class="mo_br" />-임*선 2021.04.19-</p>
      </div>
      <div class="item">
          <p>40대 초보 맘시생 효진쌤 덕분에 행정법 100점 <br class="mo_br" />-송*정 2021.04.19-</p>
      </div>
      <div class="item">
          <p>소름이 돋았습니다. 쌤의 목소리가 들렸어요…♡ <br class="mo_br" />-윤*선 2021.04.19-</p>
      </div>
      <div class="item">
          <p>반복이 답이고 찍신은 효진샘이다. <br class="mo_br" />-고*람 2021.04.19-</p>
      </div>
      <div class="item">
          <p>3월 모고 75점 → 파이널 → 국가직 95점 <br class="mo_br" />-김*현 2021.04.19-</p>
      </div>
      <div class="item">
          <p>법과목도 음성지원시켜주는 효진쌤 감사합니다 ㅠㅠ <br class="mo_br" />-고*석 2021.04.19-</p>
      </div>
      <div class="item">
          <p>국가직 9급 행정법 100점 수강후기입니다! <br class="mo_br" />-박*경 2021.04.18-</p>
      </div>
      <div class="item">
          <p>국가직 행정법 효진샘이 출제위원이신가요… <br class="mo_br" />-전*영 2021.04.18-</p>
      </div>
      <div class="item">
          <p>법=전효진 <br class="mo_br" />-박*경 2021.04.18-</p>
      </div>
      <div class="item">
          <p>국가직 9급 행정법 100점 수강후기입니다! <br class="mo_br" />-이*리 2021.04.18-</p>
      </div>
      <div class="item">
          <p>법무지렁이가 행정법 100점을 맞기까지 <br class="mo_br" />-이*슬 2021.04.18-</p>
      </div>
      <div class="item">
          <p>믿고 듣는 효진쌤, 감사합니다. 국가직 95점. <br class="mo_br" />-김*수 2021.04.18-</p>
      </div>
  </div>
</div></div>

<style>
.vertical_text_wrp {position:relative;border-top:1px solid #b2b2b2;border-bottom:1px solid #b2b2b2;padding:35px 0;font-family:'NotoSans KR';text-align:center;}
.vertical_text_wrp:before {content:'';position:absolute;top:0;left:0;right:0;height:22%;z-index:3;background:rgba(255, 255, 255, .5);box-shadow: 0 0 5px rgba(255, 255, 255, .5);}
.vertical_text_wrp:after {content:'';position:absolute;bottom:0;left:0;right:0;height:22%;z-index:3;background:rgba(255, 255, 255, .5);box-shadow: 0 0 5px rgba(255, 255, 255, .5);}
.vertical_text_wrp .slick-arrow {display:none!important;}
.vertical_text_wrp .vertical_text .item {padding:13px 0;font-weight:300;font-size:20px;color:#252525;line-height:1.2;}
.vertical_text_wrp .slick-slide.slick-active.slick-center+.slick-slide .item {padding:10px 0;font-size:26px;font-weight:bold;}
.vertical_text_wrp .vertical_text .item .mo_br {display:none;}

@media (max-width: 992px){
  .vertical_text_wrp .vertical_text .item {font-size:1.6vw;}
  .vertical_text_wrp .slick-slide.slick-active.slick-center+.slick-slide .item {font-size:2.6vw;}
}

@media (max-width: 768px){
  .vertical_text_wrp {padding:10px 0;}
  .vertical_text_wrp:before {height:15%;}
  .vertical_text_wrp:after {height:15%;}
  .vertical_text_wrp .vertical_text .item {padding:5px 0;font-size:2.4vw;}
  .vertical_text_wrp .slick-slide.slick-active.slick-center+.slick-slide .item {padding:3px 0;font-size:3.2vw;}
  .vertical_text_wrp .vertical_text .item .mo_br {display:block;}
}

@media (max-width: 576px){
  .vertical_text_wrp .vertical_text .item {font-size:2.6vw;}
  .vertical_text_wrp .slick-slide.slick-active.slick-center+.slick-slide .item {font-size:3.4vw;}
}

@media (max-width: 420px){
  .vertical_text_wrp .vertical_text .item {font-size:2.9vw;}
  .vertical_text_wrp .slick-slide.slick-active.slick-center+.slick-slide .item {font-size:3.5vw;}
}
</style>

<!-- JS -->
<script>
$('.vertical_text').slick({
    slidesToShow: 5,
    slidesToScroll: 1,
    infinite: true,
    autoplaySpeed: 1000,
    speed: 500,
    autoplay: true,
    dots: false,
    arrow: false,
    vertical: true,
    verticalSwiping: true,
    centerMode: true,
    touchThreshold: 100
});
</script>

<p class="page_text">메가스터디 공무원 홍보 및 이벤트 페이지에서 사용되는 슬라이드 기능입니다.<br> 
순차적으로 글귀가 적힌 행이 위로 올라가면서(세로 방향) 순환 반복되는 구조로 이루어져 있습니다. <br>
Bold 및 font-size, color 등으로 슬라이드 중앙에 오는 글귀를 강조할 수 있습니다.</p>


<!-- Code View -->
<pre class="language-html html act direct"><code><div class="vertical_text_wrp">
  <div class="vertical_text">
      <div class="item">
          <p>나책형 행정법 11번 문제를 풀때 전효진선생님의 암기법 (이일)…. <br class="mo_br" />-구*한 2021.04.17-</p>
      </div>
      <div class="item">
          <p>공부방법과 수험생활의 조언이 있었기에 행정법 90점 입니다! <br class="mo_br" />-최*문 2021.04.30-</p>
      </div>
      <div class="item">
          <p>애기엄마! 행정법 100점 받았습니다. 마지막까지 믿음을 가지고…. <br class="mo_br" />-한*정 2021.04.28-</p>
      </div>
      <div class="item">
          <p>효진쌤만 따라간, 행정법 찐초시생 노베이스로부터 36일의 전사…. <br class="mo_br" />-김*연 2021.04.27-</p>
      </div>
      <div class="item">
          <p>이번 국가직 10분만에 100점 맞았습니다!! <br class="mo_br" />-최*로 2021.04.27-</p>
      </div>
      <div class="item">
          <p>2020 국가직 행정법 35점에서 2021 국가직 105점(가산점 포함) <br class="mo_br" />-황*준 2021.04.21-</p>
      </div>
      <div class="item">
          <p>2021 국가직 9급 행정법 95점 / 효진쌤 커리 추천 / 적중률에 소름…. <br class="mo_br" />-김*원 2021.04.21-</p>
      </div>
      <div class="item">
          <p>작년 국가직 70점에서 이번 국가직 95점 받았습니다! 효진샘 커리만…. <br class="mo_br" />-백*진 2021.04.20-</p>
      </div>
      <div class="item">
          <p>행정법은 효진쌤이라는 말이 아까울 정도예요! <br class="mo_br" />-김*혜 2021.04.19-</p>
      </div>
      <div class="item">
          <p>전효진 한권 행정법총론 없었으면 큰일 날 뻔 했네요. <br class="mo_br" />-김*원 2021.04.21-</p>
      </div>
      <div class="item">
          <p>효진쌤 믿고 100점 받았습니다! <br class="mo_br" />-임*선 2021.04.19-</p>
      </div>
      <div class="item">
          <p>40대 초보 맘시생 효진쌤 덕분에 행정법 100점 <br class="mo_br" />-송*정 2021.04.19-</p>
      </div>
      <div class="item">
          <p>소름이 돋았습니다. 쌤의 목소리가 들렸어요…♡ <br class="mo_br" />-윤*선 2021.04.19-</p>
      </div>
      <div class="item">
          <p>반복이 답이고 찍신은 효진샘이다. <br class="mo_br" />-고*람 2021.04.19-</p>
      </div>
      <div class="item">
          <p>3월 모고 75점 → 파이널 → 국가직 95점 <br class="mo_br" />-김*현 2021.04.19-</p>
      </div>
      <div class="item">
          <p>법과목도 음성지원시켜주는 효진쌤 감사합니다 ㅠㅠ <br class="mo_br" />-고*석 2021.04.19-</p>
      </div>
      <div class="item">
          <p>국가직 9급 행정법 100점 수강후기입니다! <br class="mo_br" />-박*경 2021.04.18-</p>
      </div>
      <div class="item">
          <p>국가직 행정법 효진샘이 출제위원이신가요… <br class="mo_br" />-전*영 2021.04.18-</p>
      </div>
      <div class="item">
          <p>법=전효진 <br class="mo_br" />-박*경 2021.04.18-</p>
      </div>
      <div class="item">
          <p>국가직 9급 행정법 100점 수강후기입니다! <br class="mo_br" />-이*리 2021.04.18-</p>
      </div>
      <div class="item">
          <p>법무지렁이가 행정법 100점을 맞기까지 <br class="mo_br" />-이*슬 2021.04.18-</p>
      </div>
      <div class="item">
          <p>믿고 듣는 효진쌤, 감사합니다. 국가직 95점. <br class="mo_br" />-김*수 2021.04.18-</p>
      </div>
  </div>
</div></code></pre>
<pre class="language-css act direct"><code>.vertical_text_wrp {position:relative;margin-top:60px;border-top:1px solid #b2b2b2;border-bottom:1px solid #b2b2b2;padding:35px 0;font-family:'NotoSans KR';text-align:center;}
.vertical_text_wrp:before {content:'';position:absolute;top:0;left:0;right:0;height:22%;z-index:3;background:rgba(255, 255, 255, .5);box-shadow: 0 0 5px rgba(255, 255, 255, .5);}
.vertical_text_wrp:after {content:'';position:absolute;bottom:0;left:0;right:0;height:22%;z-index:3;background:rgba(255, 255, 255, .5);box-shadow: 0 0 5px rgba(255, 255, 255, .5);}
.vertical_text_wrp .slick-arrow {display:none!important;}
.vertical_text_wrp .vertical_text .item {padding:13px 0;font-weight:300;font-size:20px;color:#252525;line-height:1.2;}
.vertical_text_wrp .slick-slide.slick-active.slick-center+.slick-slide .item {padding:10px 0;font-size:26px;font-weight:bold;}
.vertical_text_wrp .vertical_text .item .mo_br {display:none;}

@media (max-width: 992px){
  .vertical_text_wrp .vertical_text .item {font-size:1.6vw;}
  .vertical_text_wrp .slick-slide.slick-active.slick-center+.slick-slide .item {font-size:2.6vw;}
}

@media (max-width: 768px){
  .vertical_text_wrp {padding:10px 0;}
  .vertical_text_wrp:before {height:15%;}
  .vertical_text_wrp:after {height:15%;}
  .vertical_text_wrp .vertical_text .item {padding:5px 0;font-size:2.4vw;}
  .vertical_text_wrp .slick-slide.slick-active.slick-center+.slick-slide .item {padding:3px 0;font-size:3.2vw;}
  .vertical_text_wrp .vertical_text .item .mo_br {display:block;}
}

@media (max-width: 576px){
  .vertical_text_wrp .vertical_text .item {font-size:2.6vw;}
  .vertical_text_wrp .slick-slide.slick-active.slick-center+.slick-slide .item {font-size:3.4vw;}
}

@media (max-width: 420px){
  .vertical_text_wrp .vertical_text .item {font-size:2.9vw;}
  .vertical_text_wrp .slick-slide.slick-active.slick-center+.slick-slide .item {font-size:3.5vw;}
}</code></pre>
<pre class="language-javascript act direct"><code>$('.vertical_text').slick({
  slidesToShow: 5,
  slidesToScroll: 1,
  infinite: true,
  autoplaySpeed: 1000,
  speed: 500,
  autoplay: true,
  dots: false,
  arrow: false,
  vertical: true,
  verticalSwiping: true,
  centerMode: true,
  touchThreshold: 100
});</code></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/s/gong/event/2022/01030002/index.asp#eventWrap" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#세로방향</p> </li>
                            <li><p>#한마디</p> </li>
                            <li><p>#후기</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->











            <div class="page_text_wrap">
              <p class="page_head">세로 방향 슬라이드 3RD</p> 
              <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
              <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
              <!-- <div class="position_site"><img src="/images/slide1.png" alt='슬라이드위치' ></div> -->
                

<!-- HTML -->
<div class="code-box html"><div class="vertical_review_wrp">
  <div class="vertical_review">
      <div class="item">
          <div>
              <i><img src="<%=img_main%>/m/2022/0210_geek2991/bullet_con1.png" alt=""></i>
              <img src="<%=img_main%>/m/2022/0210_geek2991/img_con11.png" alt="">
              <div>
                  <dl>
                      <dt><img src="<%=img_main%>/m/2022/0210_geek2991/tit_con11.png" alt=""></dt>
                          <dd>선생님 정말 감사해요!<br>수험기간을 단축하고 싶다면  정인국 선생님 강의 꼭 추천합니다.</dd>
                  </dl>
                  <p>- 수강생 김** -</p>
              </div>
          </div>
      </div>
      <div class="item">
          <div>
              <i><img src="<%=img_main%>/m/2022/0210_geek2991/bullet_con1.png" alt=""></i>
              <img src="<%=img_main%>/m/2022/0210_geek2991/img_con12.png" alt="">
              <div>
                  <dl>
                      <dt><img src="<%=img_main%>/m/2022/0210_geek2991/tit_con12.png" alt=""></dt>
                          <dd>도식화된 행정법 강의와 차별화된 해설강의가<br>제 점수를 멱살잡고 끌어올려주셨습니다.</dd>
                  </dl>
                  <p>- 수강생 이** -</p>
              </div>
          </div>
      </div>
      <div class="item">
          <div>
              <i><img src="<%=img_main%>/m/2022/0210_geek2991/bullet_con1.png" alt=""></i>
              <img src="<%=img_main%>/m/2022/0210_geek2991/img_con13.png" alt="">
              <div>
                  <dl>
                      <dt><img src="<%=img_main%>/m/2022/0210_geek2991/tit_con13.png" alt=""></dt>
                          <dd>판례를 자세히 설명해주시고 순서도 잡아주셔서 머리에 쏙쏙 들어오고,<br>자세히 설명해주시면서도 철저하게 시험에 맞게 잘 알려주세요.</dd>
                  </dl>
                  <p>- 수강생 장** -</p>
              </div>
          </div>
      </div>
      <div class="item">
          <div>
              <i><img src="<%=img_main%>/m/2022/0210_geek2991/bullet_con1.png" alt=""></i>
              <img src="<%=img_main%>/m/2022/0210_geek2991/img_con14.png" alt="">
              <div>
                  <dl>
                      <dt><img src="<%=img_main%>/m/2022/0210_geek2991/tit_con14.png" alt=""></dt>
                          <dd>진짜 이과생도 이해 가능한 설명력..<br>정말 너무 감탄 스럽습니다 ㅠㅠ</dd>
                  </dl>
                  <p>- 수강생 이** -</p>
              </div>
          </div>
      </div>
      <div class="item">
          <div>
              <i><img src="<%=img_main%>/m/2022/0210_geek2991/bullet_con1.png" alt=""></i>
              <img src="<%=img_main%>/m/2022/0210_geek2991/img_con15.png" alt="">
              <div>
                  <dl>
                      <dt><img src="<%=img_main%>/m/2022/0210_geek2991/tit_con15.png" alt=""></dt>
                          <dd>그냥 듣고 있으면 자동적으로 머리에 도식화가 들어와서<br>더 기억에 잘 남는 거 같아요.</dd>
                  </dl>
                  <p>- 수강생 박** -</p>
              </div>
          </div>
      </div>
      <div class="item">
          <div>
              <i><img src="<%=img_main%>/m/2022/0210_geek2991/bullet_con1.png" alt=""></i>
              <img src="<%=img_main%>/m/2022/0210_geek2991/img_con16.png" alt="">
              <div>
                  <dl>
                      <dt><img src="<%=img_main%>/m/2022/0210_geek2991/tit_con16.png" alt=""></dt>
                          <dd>자칫 정보의 홍수에 이끌려 산으로 갈 수 있는 수험의 방향을<br>정인국 선생님이 효율적이고 효과적으로 잡아주십니다.</dd>
                  </dl>
                  <p>- 수강생 이** -</p>
              </div>
          </div>
      </div>
      <div class="item">
          <div>
              <i><img src="<%=img_main%>/m/2022/0210_geek2991/bullet_con1.png" alt=""></i>
              <img src="<%=img_main%>/m/2022/0210_geek2991/img_con17.png" alt="">
              <div>
                  <dl>
                      <dt><img src="<%=img_main%>/m/2022/0210_geek2991/tit_con17.png" alt=""></dt>
                          <dd>블랙홀 같은 행정법이라고 쓸 정도로 비유나 예시 등 심지어 그냥 하는 농담도<br>다 스킵 한번 없이 기억에 남을 정도로 쏙쏙 빨려들어가는 강의력이 너무 대단하다!!</dd>
                  </dl>
                  <p>- 수강생 허** -</p>
              </div>
          </div>
      </div>
  </div>
</div></div>

<style>
.vertical_review_wrp .vertical_review { overflow:hidden;}
.vertical_review_wrp .item { color:#fff; }
.vertical_review_wrp .item > div { background:#082430; border:1px solid #0e303f; box-sizing:border-box; position:relative; overflow:hidden;  }
.vertical_review_wrp .item > div i { position:absolute; top:0; left:27px; }
.vertical_review_wrp .item > div > img { float:left; margin:25px 0 0 55px;}
.vertical_review_wrp .item > div div { float:left; text-align:left; margin:55px 0 0 45px; width:60%; }
.vertical_review_wrp .item > div dd { margin-top:25px; font-size:20px; line-height:120%; font-weight:300; }
.vertical_review_wrp .item > div div p { float:right; margin-top:30px; color:#626262; font-size:15px; }
.vertical_review_wrp .slick-list { margin-top:-30px; }
.vertical_review_wrp .slick-slide { margin-top:30px; height: auto; }

@media (max-width:1200px) {
  .vertical_review_wrp .item { color:#fff; }
  .vertical_review_wrp .item > div i { left:1.5vw; }
  .vertical_review_wrp .item > div i img { width:2vw; }
  .vertical_review_wrp .item > div > img { margin:3vw 0 0 2vw; width:30%; max-width:290px; }
  .vertical_review_wrp .item > div div { margin:3vw 0 0 0; width:65%;  padding:0 3vw 0 2vw; }
  .vertical_review_wrp .item > div dd { margin-top:3vw; font-size:17px; }
  .vertical_review_wrp .item > div div p {  margin-top:3vw;  font-size:15px; }
  .vertical_review_wrp .slick-list { margin-top:-3vw; }
  .vertical_review_wrp .slick-slide { margin-top:3vw; }
}
@media (max-width: 768px){
    .vertical_review_wrp .item > div dd { margin-top:2vw; font-size:2.5vw; }
    .vertical_review_wrp .item > div div p { margin-top:2vw; font-size:12px; }
}
</style>

<!-- JS -->
<script>
$('.vertical_review').slick({
    arrows : false,
    dots: false,
    autoplay : true,
    speed:1500, 
    slidesToShow : 3,	
    slidesToScroll : 1,
    autoplaySpeed: 2000,
    pauseOnHover: true,
    pauseOnFocus: true,
    focusOnSelect: true,
    vertical: true,
    verticalSwiping: true,
    touchThreshold: 100
});
</script>


<p class="page_text">메가스터디 공무원 홍보 및 이벤트 페이지에서 사용되는 슬라이드 기능입니다.<br> 
순차적으로 이미지 슬라이드가 위로 올라가면서(세로 방향) 순환 반복되는 구조로 이루어져 있습니다. <br>
디자인 시안에 따라 다른 여러 이미지들을 적용할 수 있습니다.</p>

<!-- Code View -->
<pre class="language-html html act direct"><code><div class="vertical_review_wrp">
  <div class="vertical_review">
      <div class="item">
          <div>
              <i><img src="<%=img_main%>/m/2022/0210_geek2991/bullet_con1.png" alt=""></i>
              <img src="<%=img_main%>/m/2022/0210_geek2991/img_con11.png" alt="">
              <div>
                  <dl>
                      <dt><img src="<%=img_main%>/m/2022/0210_geek2991/tit_con11.png" alt=""></dt>
                          <dd>선생님 정말 감사해요!<br>수험기간을 단축하고 싶다면  정인국 선생님 강의 꼭 추천합니다.</dd>
                  </dl>
                  <p>- 수강생 김** -</p>
              </div>
          </div>
      </div>
      <div class="item">
          <div>
              <i><img src="<%=img_main%>/m/2022/0210_geek2991/bullet_con1.png" alt=""></i>
              <img src="<%=img_main%>/m/2022/0210_geek2991/img_con12.png" alt="">
              <div>
                  <dl>
                      <dt><img src="<%=img_main%>/m/2022/0210_geek2991/tit_con12.png" alt=""></dt>
                          <dd>도식화된 행정법 강의와 차별화된 해설강의가<br>제 점수를 멱살잡고 끌어올려주셨습니다.</dd>
                  </dl>
                  <p>- 수강생 이** -</p>
              </div>
          </div>
      </div>
      <div class="item">
          <div>
              <i><img src="<%=img_main%>/m/2022/0210_geek2991/bullet_con1.png" alt=""></i>
              <img src="<%=img_main%>/m/2022/0210_geek2991/img_con13.png" alt="">
              <div>
                  <dl>
                      <dt><img src="<%=img_main%>/m/2022/0210_geek2991/tit_con13.png" alt=""></dt>
                          <dd>판례를 자세히 설명해주시고 순서도 잡아주셔서 머리에 쏙쏙 들어오고,<br>자세히 설명해주시면서도 철저하게 시험에 맞게 잘 알려주세요.</dd>
                  </dl>
                  <p>- 수강생 장** -</p>
              </div>
          </div>
      </div>
      <div class="item">
          <div>
              <i><img src="<%=img_main%>/m/2022/0210_geek2991/bullet_con1.png" alt=""></i>
              <img src="<%=img_main%>/m/2022/0210_geek2991/img_con14.png" alt="">
              <div>
                  <dl>
                      <dt><img src="<%=img_main%>/m/2022/0210_geek2991/tit_con14.png" alt=""></dt>
                          <dd>진짜 이과생도 이해 가능한 설명력..<br>정말 너무 감탄 스럽습니다 ㅠㅠ</dd>
                  </dl>
                  <p>- 수강생 이** -</p>
              </div>
          </div>
      </div>
      <div class="item">
          <div>
              <i><img src="<%=img_main%>/m/2022/0210_geek2991/bullet_con1.png" alt=""></i>
              <img src="<%=img_main%>/m/2022/0210_geek2991/img_con15.png" alt="">
              <div>
                  <dl>
                      <dt><img src="<%=img_main%>/m/2022/0210_geek2991/tit_con15.png" alt=""></dt>
                          <dd>그냥 듣고 있으면 자동적으로 머리에 도식화가 들어와서<br>더 기억에 잘 남는 거 같아요.</dd>
                  </dl>
                  <p>- 수강생 박** -</p>
              </div>
          </div>
      </div>
      <div class="item">
          <div>
              <i><img src="<%=img_main%>/m/2022/0210_geek2991/bullet_con1.png" alt=""></i>
              <img src="<%=img_main%>/m/2022/0210_geek2991/img_con16.png" alt="">
              <div>
                  <dl>
                      <dt><img src="<%=img_main%>/m/2022/0210_geek2991/tit_con16.png" alt=""></dt>
                          <dd>자칫 정보의 홍수에 이끌려 산으로 갈 수 있는 수험의 방향을<br>정인국 선생님이 효율적이고 효과적으로 잡아주십니다.</dd>
                  </dl>
                  <p>- 수강생 이** -</p>
              </div>
          </div>
      </div>
      <div class="item">
          <div>
              <i><img src="<%=img_main%>/m/2022/0210_geek2991/bullet_con1.png" alt=""></i>
              <img src="<%=img_main%>/m/2022/0210_geek2991/img_con17.png" alt="">
              <div>
                  <dl>
                      <dt><img src="<%=img_main%>/m/2022/0210_geek2991/tit_con17.png" alt=""></dt>
                          <dd>블랙홀 같은 행정법이라고 쓸 정도로 비유나 예시 등 심지어 그냥 하는 농담도<br>다 스킵 한번 없이 기억에 남을 정도로 쏙쏙 빨려들어가는 강의력이 너무 대단하다!!</dd>
                  </dl>
                  <p>- 수강생 허** -</p>
              </div>
          </div>
      </div>
  </div>
</div></code></pre>
<pre class="language-css act direct"><code>.vertical_review_wrp .vertical_review { overflow:hidden;}
.vertical_review_wrp .item { color:#fff; }
.vertical_review_wrp .item > div { background:#082430; border:1px solid #0e303f; box-sizing:border-box; position:relative; overflow:hidden;  }
.vertical_review_wrp .item > div i { position:absolute; top:0; left:27px; }
.vertical_review_wrp .item > div > img { float:left; margin:25px 0 0 55px;}
.vertical_review_wrp .item > div div { float:left; text-align:left; margin:55px 0 0 45px; width:60%; }
.vertical_review_wrp .item > div dd { margin-top:25px; font-size:20px; line-height:120%; font-weight:300; }
.vertical_review_wrp .item > div div p { float:right; margin-top:30px; color:#626262; font-size:15px; }
.vertical_review_wrp .slick-list { margin-top:-30px; }
.vertical_review_wrp .slick-slide { margin-top:30px; height: auto; }

@media (max-width:1200px) {
  .vertical_review_wrp .item { color:#fff; }
  .vertical_review_wrp .item > div i { left:1.5vw; }
  .vertical_review_wrp .item > div i img { width:2vw; }
  .vertical_review_wrp .item > div > img { margin:3vw 0 0 2vw; width:30%; max-width:290px; }
  .vertical_review_wrp .item > div div { margin:3vw 0 0 0; width:65%;  padding:0 3vw 0 2vw; }
  .vertical_review_wrp .item > div dd { margin-top:3vw; font-size:17px; }
  .vertical_review_wrp .item > div div p {  margin-top:3vw;  font-size:15px; }
  .vertical_review_wrp .slick-list { margin-top:-3vw; }
  .vertical_review_wrp .slick-slide { margin-top:3vw; }
}
@media (max-width: 768px){
    .vertical_review_wrp .item > div dd { margin-top:2vw; font-size:2.5vw; }
    .vertical_review_wrp .item > div div p { margin-top:2vw; font-size:12px; }
}
</code></pre>
<pre class="language-javascript act direct"><code>$('.vertical_review').slick({
  arrows : false,
  dots: false,
  autoplay : true,
  speed:1500, 
  slidesToShow : 3,	
  slidesToScroll : 1,
  autoplaySpeed: 2000,
  pauseOnHover: true,
  pauseOnFocus: true,
  focusOnSelect: true,
  vertical: true,
  verticalSwiping: true,
  touchThreshold: 100
});</code></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/s/gong/event/2022/02100018/index.asp#eventWrap" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#세로방향</p> </li>
                            <li><p>#드래그</p> </li>
                            <li><p>#후기</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->







            <div class="page_text_wrap">
              <p class="page_head">Fade & Scale 슬라이드</p> 
              <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
              <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
              <!-- <div class="position_site"><img src="/images/slide1.png" alt='슬라이드위치' ></div> -->
                

<!-- HTML -->
<div class="code-box html"><div class="evSection evTecSlide">
  <div class="inner">
    <h4 class="con_tit"><img src="<%=img_main%>/m/2023/0613_technical/con2_tit.png" alt="토목직과 전산직으로 시작한 메가기술직은 기술직 핵심 직렬들을 빠르게 런칭 후 순식간에 기술직의 판도를 바꾸며 대세로 자리잡았습니다."></h4>
    <div class="con_box" data-aos="fade-up">
      <div class="mg_slick_wrap tec_slide_wrap">
        <div class="tec_slide">
          <div><img src="<%=img_main%>/m/2023/0613_technical/con2_tec1.png" alt=""></div>
          <div><img src="<%=img_main%>/m/2023/0613_technical/con2_tec2.png" alt=""></div>
          <div><img src="<%=img_main%>/m/2023/0613_technical/con2_tec3.png" alt=""></div>
          <div><img src="<%=img_main%>/m/2023/0613_technical/con2_tec4.png" alt=""></div>
          <div><img src="<%=img_main%>/m/2023/0613_technical/con2_tec5.png" alt=""></div>
          <div><img src="<%=img_main%>/m/2023/0613_technical/con2_tec6.png" alt=""></div>
          <div><img src="<%=img_main%>/m/2023/0613_technical/con2_tec7.png" alt=""></div>
        </div>
        <!--
        <a href="#" class="mg_slick_btn tp1 prev">이전</a>
        <a href="#" class="mg_slick_btn tp1 next">다음</a>
        -->
      </div>
    </div>
  </div>
</div><!-- .evTecSlide E --></div>

<style>
.evTecSlide{background:url(https://image.megagong.net/m/2023/0613_technical/con2_bg.jpg) 50% 50% no-repeat;background-size:cover;padding:10% 0;}
.evTecSlide .con_box{margin-top:6%;}
.evTecSlide .tec_slide_wrap .slick-list{overflow:inherit;}
.evTecSlide .tec_slide_wrap .slick-slide img{transform:scale(1.05);transition:transform 1s cubic-bezier(.58, .36, .84, .87);}
.evTecSlide .tec_slide_wrap .slick-slide.slick-active img{transform:scale(1.0);}
.evTecSlide .tec_slide_wrap .mg_slick_btn.prev{left:-30px;}
.evTecSlide .tec_slide_wrap .mg_slick_btn.next{right:-30px;}
.evTecSlide .tec_slide_wrap.mg_slick_wrap .slick-dots li button{border-radius:4px;}
.evTecSlide .tec_slide_wrap.mg_slick_wrap .slick-dots li.slick-active button{background-color: #fff;width:40px;}
</style>

<!-- JS -->
<script>var TecSlide = $('.tec_slide').slick({
  autoplay: true,
  autoplaySpeed: 2000,
  fade: true,
  dots: true,
  infinite: true,
  speed: 500,
  arrows:false,
  draggable: true,
  touchThreshold: 100,
  slidesToShow: 1,
  slidesToScroll: 1,
});
// $('.tec_slide_wrap .mg_slick_btn.prev').on('click', function(e){
//   e.preventDefault();
//   TecSlide.slick('slickPrev');
// });
// $('.tec_slide_wrap .mg_slick_btn.next').on('click', function(e){
//   e.preventDefault();
//   TecSlide.slick('slickNext');
// });</script>


<p class="page_text">메가스터디 공무원 홍보 및 이벤트 페이지에서 사용되는 슬라이드 기능입니다.<br> 
페이드 & 스케일로 이루어진 전환 효과를 통해서 기술직 과목 및 선생님들을 효과적으로 홍보할 수 있습니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>
<pre class="language-javascript act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/s/gong/event/2023/06140074/index.asp#eventWrap" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#페이드&스케일</p></li>
                            <li><p>#슬라이드</p></li>
                            <li><p>#기술직홍보</p></li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->



            



            <!-- #include virtual = "/inc/tweet_popup_all.asp"-->
            <!-- #include virtual = "/inc/ball.asp"-->
            <!-- #include virtual = "/inc/footer.asp"-->
            
        </div> <!--//page_inner -->
    
    </div>


    <div class="ank"></div>

    

    <style>
    html {overflow-x:hidden;}
    .guide-aside {border-right: none; /*background:rgba(255,255,255,0.2);*/ backdrop-filter: blur( 11px );-webkit-backdrop-filter: blur( 11px );}
    .main_wrp .main_event .exhibi_wrap {float: inherit;margin: auto;}

    @media screen and (max-width: 1600px) { 
      .board6 .code-box .book_slider {width:100%}
      }
    @media screen and (max-width: 1200px) {
      .main_exhibi {display: block;}
      .main_exhibi.d0420 {margin: 0% auto 4%;}

      .main_wrp h3.cmmn_tit {font-family: 'NotoSans KR';}
      .main_wrp .main_event .exhibi_wrap {margin: 0 0 3%;}

      .board5 .code-box .con1 .slickBox {margin-top: 5vw;height: auto;}
      .board5 .code-box .con1 .slickBox .slick-prev {left: 50%;margin-left: -600px;background: url(https://img.megagong.net/m/2022/0429_tax/btn_con1_prev.png) no-repeat;}
      .board5 .code-box .con1 .slickBox .slick-next {right: 50%;margin-right: -600px;background: url(https://img.megagong.net/m/2022/0429_tax/btn_con1_next.png) no-repeat;}
      .board5 .code-box .inner {width: 96%;margin: auto;}

      .board6 .code-box , .board7 .code-box, .board8 .code-box { padding: 4% 0;}
      
    }
    @media screen and (max-width: 992px) {
      .board6 .code-box .con2 {padding: 0vw 0; transform:inherit;}
    }
    @media screen and (max-width: 768px) {
      .main_exhibi.d0420 {margin: 0% auto 9%;}
      .main_wrp .main_event {    margin: 0%;}
      .main_wrp .main_event .exhibi_wrap .slick-dots {right: 6px;}

      .board8 .code-box .con01_sd_wrap {transform: scale(1); }
    }
    @media screen and (max-width: 576px) {
      .main_exhibi.d0420 {margin: 0% auto 12%;}
    }

    </style>

    <script>

    $('.main_wrp .main_event .exhibi_wrap .more').on('click',function(){
      if ( $('.exhibi_wrap').hasClass('on')) {
        $('.main_wrp').css('overflow','hidden');
      } else {
        $('.main_wrp').css('overflow','inherit');
      }
    })

    </script>




<!-- #include virtual = "/inc/bottom.asp"-->