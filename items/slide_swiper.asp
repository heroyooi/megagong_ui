<!-- #include virtual = "/inc/top.asp"-->
<%
dp1 = 2
dp2 = 4
dp3 = 2
%>
<link type="text/css" rel="stylesheet" href="<%=url_main%>/common/js/jquery/plug-in/swiper-bundle.min.css" />
<script src="<%=url_main%>/common/js/jquery/plug-in/swiper-bundle.min.js"></script>

    <!-- #include virtual = "/inc/aside.asp"-->
    
    <div class="page_wrap page_wide" id="page_wrap">

        <div class="page_inner">
          <div class="page_name_wrap">
              <h3 class="page_name">SLIDE</h3>
              <h3 class="page_name_sub">슬라이드 - Swiper (10.1.0)</h3>
              <p class="page_sub_text">슬라이드는 메가공무원 메인 페이지에서부터 홍보페이지까지 특정 정보 전달을 위하여 광범위하게 사용되고 있는 기능입니다.<br>
              주로 우측에서 좌측으로, 3초마다 슬라이드가 변경 및 이동됩니다. 또한 슬라이드 영역 위에 마우스 커서를 올릴 경우, <br>
              슬라이드 재생이 일시적으로 멈추면서 사용자가 원하는 정보를 정확히 확인할 수 있도록 돕고 있습니다.</p>
              <div class="page_print"><input type="button" value="인쇄하기" id="print" onclick="window.print()"/></div>
          </div>

<pre class="language-html css"><code><link type="text/css" rel="stylesheet" href="<%=url_main%>/common/js/jquery/plug-in/swiper-bundle.min.css" />
<script src="<%=url_main%>/common/js/jquery/plug-in/swiper-bundle.min.js"></script></code></pre>

          <div class="page_text_wrap">
            <p class="page_head">세로 슬라이드</p> 
            <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
              
            <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
            <!-- <div class="position_site"><img src="/images/slide1.png" alt='슬라이드위치' ></div> -->
                

<!-- HTML -->
<div class="code-box html"><div class="verticalSwiper">
  <div class="swiper-wrapper">
    <div class="swiper-slide">“마지막 다지기용으로 아주 최고 입니다.”</div>
    <div class="swiper-slide">“깔끔한 교재 구성, 해설이 정말 자세합니다.”</div>
    <div class="swiper-slide">“이보다 더 자세한 해설은 없을 거 같아요.”</div>
    <div class="swiper-slide">“이 모의고사 하나로 다 정리 됩니다!“</div>
    <div class="swiper-slide">“시험 직전, 감 익히기 최고! 회차 부담도 없어요.”</div>
    <div class="swiper-slide">“저도 몰랐던 약점이 어딘지 알게 되었어요.”</div>
    <div class="swiper-slide">“해설이 자세한 친절한 모의고사입니다.”</div>
    <div class="swiper-slide">“기대 이상, 역시 전한길 샘이라는 말만 나오네요.”</div>
    <div class="swiper-slide">“출제 트렌드가 확실하게 반영된 모의고사!”</div>
    <div class="swiper-slide">“정말 후회 없는 선택이라고 생각합니다.”</div>
  </div>
</div></div>

<!-- CSS -->
<div class="code-box css"><link type="text/css" rel="stylesheet" href="/css/style_vertical_swiper.css" /></div>

<!-- JS -->
<script>new Swiper('.verticalSwiper', {
  slidesPerView: 1,
  slidesPerColumn: 1,		
  loop: true,
  touchRatio: 1,
  direction: 'vertical',
  mousewheel: true,
  autoplay: { 
    delay: 3000,
    disableOnInteraction: false, 
  },					
});</script>


<p class="page_text">메가스터디 공무원 홍보 및 이벤트 페이지에서 사용되는 슬라이드 기능입니다.<br> 
모의고사 후기글이 세로로 슬라이드 됩니다.</p>

<!-- Code View -->
<pre class="language-html html act direct"><code><div class="verticalSwiper">
  <div class="swiper-wrapper">
    <div class="swiper-slide">“마지막 다지기용으로 아주 최고 입니다.”</div>
    <div class="swiper-slide">“깔끔한 교재 구성, 해설이 정말 자세합니다.”</div>
    <div class="swiper-slide">“이보다 더 자세한 해설은 없을 거 같아요.”</div>
    <div class="swiper-slide">“이 모의고사 하나로 다 정리 됩니다!“</div>
    <div class="swiper-slide">“시험 직전, 감 익히기 최고! 회차 부담도 없어요.”</div>
    <div class="swiper-slide">“저도 몰랐던 약점이 어딘지 알게 되었어요.”</div>
    <div class="swiper-slide">“해설이 자세한 친절한 모의고사입니다.”</div>
    <div class="swiper-slide">“기대 이상, 역시 전한길 샘이라는 말만 나오네요.”</div>
    <div class="swiper-slide">“출제 트렌드가 확실하게 반영된 모의고사!”</div>
    <div class="swiper-slide">“정말 후회 없는 선택이라고 생각합니다.”</div>
  </div>
</div></code></pre>
<pre class="language-html css act direct"><code><link type="text/css" rel="stylesheet" href="/css/style_vertical_swiper.css" /></code></pre>
<pre class="language-javascript act direct"><code>new Swiper('.verticalSwiper', {
  slidesPerView: 1,
  slidesPerColumn: 1,		
  loop: true,
  touchRatio: 1,
  direction: 'vertical',
  mousewheel: true,
  autoplay: { 
    delay: 3000,
    disableOnInteraction: false, 
  },					
});</code></pre>

              <div class="page_bot_wrap">
                  <a class="use_link" href="<%=url_main%>/s/gong/event/2023/12210048/index.asp#eventWrap" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                  <div class="cap_tag">
                      <ul>
                          <li><p>#슬라이드</p></li>
                          <li><p>#세로</p></li>
                          <li><p>#전한길T 모의고사 후기</p></li>
                      </ul>
                  </div>
              </div>
          </div><!-- .page_text_wrap -->


          <div class="page_text_wrap">
            <p class="page_head">세로 슬라이드2</p> 
            <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
              
            <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
            <!-- <div class="position_site"><img src="/images/slide1.png" alt='슬라이드위치' ></div> -->
                

<!-- HTML -->
<div class="code-box html" style="background-color:#dddff2;"><div class="verticalSwiper2">
  <div class="swiper-wrapper">
    <div class="swiper-slide">
      <div class="item">
        기출문제, 문제변형을 수없이 많이 회독 하시고 <br>
        마지막으로 동형을 꼭 풀면서 실전 감각을 키우시기 바랍니다.
        <span>-2023 국가직 최종합격, 지방직 필기 합격자 신*근-</span>
      </div>
    </div>
    <div class="swiper-slide">
      <div class="item">
        기출이랑 기출변형 그리고 모의고사는 답 외울 만큼 정말 반복×반복해서 풀었던 거 같아요!!
        <span>-2023 국가직 최종합격, 지방직 필기 합격자 이*현-</span>
      </div>
    </div>
    <div class="swiper-slide">
      <div class="item">
        내용이 쉽지 않고 넓어서 손을 대기가 힘이 드는데 ´기출변형 강의´ 로  <br>
        전체 내용도 정리되면서 한번에 기출에 관한 흐름을 파악할 수 있어서 좋았습니다. 
        <span>-2023 지방직 필기 합격자 이*숙-</span>
      </div>
    </div>
    <div class="swiper-slide">
      <div class="item">
        기출변형을 통해서 개념을 확실히 할 수 있었어요. …  <br>
        변형문제로 추가로 회독해서 시간대비 가장 효율이 좋았던 것 같습니다.
        <span>-2023 지방직 필기 합격자 강*원-</span>
      </div>
    </div>
    <div class="swiper-slide">
      <div class="item">
        기초이론을 처음에 1회독 한 다음에 기출문제를 위주로 푸는 연습을 하였고  <br>
        그 이후에는 반복해서 나오는 내용을 요약 및 정리하였습니다.
        <span>-2023 지방직 경북지역 필기 합격자 김*명-</span>
      </div>
    </div>
    <div class="swiper-slide">
      <div class="item">
        시험은 결국 기출이 변형되어 나오니깐요.
        <span>-2023 국가직, 지방직 필기 합격자 김*민-</span>
      </div>
    </div>
    <div class="swiper-slide">
      <div class="item">
        기출변형 문제집에 요약된 내용을 필기노트처럼 활용하여 부족한 부분을 채워가며  <br>
        나중에는 기출변형 문제집을 완전 100% 이해 및 암기를 하였습니다.
        <span>-2023 지방직 전북지역 필기 합격자 김*민-</span>
      </div>
    </div>
  </div>
  <div class="swiper-pagination"></div>
</div></div>

<!-- CSS -->
<div class="code-box css"><link type="text/css" rel="stylesheet" href="/css/style_vertical_swiper2.css" /></div>

<!-- JS -->
<script>new Swiper(".verticalSwiper2", {
  slidesPerView: 3,
  slidesPerColumn: 1,
  spaceBetween: 0,			
  loop: true,
  centeredSlides: true,
  roundLengths: true,
  touchRatio: 1,
  direction: 'vertical',
  autoplay: { 
    delay: 3000,
    disableOnInteraction: false, 
  },			
  pagination: {
    el: '.swiper-pagination',
    clickable: true,
  },
});</script>


<p class="page_text">메가스터디 공무원 홍보 및 이벤트 페이지에서 사용되는 슬라이드 기능입니다.<br> 
수강생들의 합격수기가 세로로 슬라이드 됩니다.</p>

<!-- Code View -->
<pre class="language-html html act direct"><code><div class="verticalSwiper2">
  <div class="swiper-wrapper">
    <div class="swiper-slide">
      <div class="item">
        기출문제, 문제변형을 수없이 많이 회독 하시고 <br>
        마지막으로 동형을 꼭 풀면서 실전 감각을 키우시기 바랍니다.
        <span>-2023 국가직 최종합격, 지방직 필기 합격자 신*근-</span>
      </div>
    </div>
    <div class="swiper-slide">
      <div class="item">
        기출이랑 기출변형 그리고 모의고사는 답 외울 만큼 정말 반복×반복해서 풀었던 거 같아요!!
        <span>-2023 국가직 최종합격, 지방직 필기 합격자 이*현-</span>
      </div>
    </div>
    <div class="swiper-slide">
      <div class="item">
        내용이 쉽지 않고 넓어서 손을 대기가 힘이 드는데 ´기출변형 강의´ 로  <br>
        전체 내용도 정리되면서 한번에 기출에 관한 흐름을 파악할 수 있어서 좋았습니다. 
        <span>-2023 지방직 필기 합격자 이*숙-</span>
      </div>
    </div>
    <div class="swiper-slide">
      <div class="item">
        기출변형을 통해서 개념을 확실히 할 수 있었어요. …  <br>
        변형문제로 추가로 회독해서 시간대비 가장 효율이 좋았던 것 같습니다.
        <span>-2023 지방직 필기 합격자 강*원-</span>
      </div>
    </div>
    <div class="swiper-slide">
      <div class="item">
        기초이론을 처음에 1회독 한 다음에 기출문제를 위주로 푸는 연습을 하였고  <br>
        그 이후에는 반복해서 나오는 내용을 요약 및 정리하였습니다.
        <span>-2023 지방직 경북지역 필기 합격자 김*명-</span>
      </div>
    </div>
    <div class="swiper-slide">
      <div class="item">
        시험은 결국 기출이 변형되어 나오니깐요.
        <span>-2023 국가직, 지방직 필기 합격자 김*민-</span>
      </div>
    </div>
    <div class="swiper-slide">
      <div class="item">
        기출변형 문제집에 요약된 내용을 필기노트처럼 활용하여 부족한 부분을 채워가며  <br>
        나중에는 기출변형 문제집을 완전 100% 이해 및 암기를 하였습니다.
        <span>-2023 지방직 전북지역 필기 합격자 김*민-</span>
      </div>
    </div>
  </div>
  <div class="swiper-pagination"></div>
</div></code></pre>
<pre class="language-html css act direct"><code><link type="text/css" rel="stylesheet" href="/css/style_vertical_swiper2.css" /></code></pre>
<pre class="language-javascript act direct"><code>new Swiper(".verticalSwiper2", {
  slidesPerView: 3,
  slidesPerColumn: 1,
  spaceBetween: 0,			
  loop: true,
  centeredSlides: true,
  roundLengths: true,
  touchRatio: 1,
  direction: 'vertical',
  autoplay: { 
    delay: 3000,
    disableOnInteraction: false, 
  },			
  pagination: {
    el: '.swiper-pagination',
    clickable: true,
  },
});</code></pre>

              <div class="page_bot_wrap">
                  <a class="use_link" href="<%=url_main%>/s/gong/event/2023/12200143/index.asp#eventWrap" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                  <div class="cap_tag">
                      <ul>
                          <li><p>#슬라이드</p></li>
                          <li><p>#세로</p></li>
                          <li><p>#김창훈T 합격수기</p></li>
                      </ul>
                  </div>
              </div>
          </div><!-- .page_text_wrap -->



          <div class="page_text_wrap">
            <p class="page_head">리뷰 슬라이드</p> 
            <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
              
            <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
            <!-- <div class="position_site"><img src="/images/slide1.png" alt='슬라이드위치' ></div> -->
                

<!-- HTML -->
<div class="code-box html" style="background-color:#e3f0f7;"><div class="reviewSwiper">
  <div class="swiper-wrapper">
    <div class="swiper-slide"><img src="<%=img_main %>/m/2023/1229_pt1969/con2_img1.png"></div>
    <div class="swiper-slide"><img src="<%=img_main %>/m/2023/1229_pt1969/con2_img2.png"></div>
    <div class="swiper-slide"><img src="<%=img_main %>/m/2023/1229_pt1969/con2_img3.png"></div>
  </div>
  <div class="swiper-pagination"></div>
</div></div>

<!-- CSS -->
<div class="code-box css"><link type="text/css" rel="stylesheet" href="/css/style_review_swiper.css" /></div>

<!-- JS -->
<script>var windowWidth = $(window).innerWidth();
var destroyReviewSwiper = undefined;
function initdestroyReviewSwiper() {
  if (windowWidth < 993 && destroyReviewSwiper == undefined) {
    destroyReviewSwiper = new Swiper('.reviewSwiper', {
      slidesPerView: 1,
      slidesPerColumn: 1,
      // spaceBetween: 20,			
      loop: true,
      touchRatio: 1,
      autoHeight: true,
      autoplay: { 
        delay: 3000,
        disableOnInteraction: false, 
      },			
      pagination: {
        el: '.swiper-pagination',
        clickable: true,
      },
    })
  } else if (windowWidth >= 993 && destroyReviewSwiper != undefined) {
    destroyReviewSwiper.destroy();
    destroyReviewSwiper = undefined;
  }
}
initdestroyReviewSwiper();

var reviewSwiperTimer = null;
$(window).on('resize', function() {
  clearTimeout(reviewSwiperTimer);
  reviewSwiperTimer = setTimeout(function() {
    windowWidth = $(window).innerWidth();
    initdestroyReviewSwiper();
  }, 500)
});</script>


<p class="page_text">메가스터디 공무원 홍보 및 이벤트 페이지에서 사용되는 슬라이드 기능입니다.<br> 
데스크탑에서는 3열로 테블릿/모바일에서는 하나씩 롤링되는 기능입니다.</p>

<!-- Code View -->
<pre class="language-html html act direct"><code><div class="reviewSwiper">
  <div class="swiper-wrapper">
    <div class="swiper-slide"><img src="<%=img_main %>/m/2023/1229_pt1969/con2_img1.png"></div>
    <div class="swiper-slide"><img src="<%=img_main %>/m/2023/1229_pt1969/con2_img2.png"></div>
    <div class="swiper-slide"><img src="<%=img_main %>/m/2023/1229_pt1969/con2_img3.png"></div>
  </div>
  <div class="swiper-pagination"></div>
</div></code></pre>
<pre class="language-html css act direct"><code><link type="text/css" rel="stylesheet" href="/css/style_review_swiper.css" /></code></pre>
<pre class="language-javascript act direct"><code>var windowWidth = $(window).innerWidth();
var destroyReviewSwiper = undefined;
function initdestroyReviewSwiper() {
  if (windowWidth < 993 && destroyReviewSwiper == undefined) {
    destroyReviewSwiper = new Swiper('.reviewSwiper', {
      slidesPerView: 1,
      slidesPerColumn: 1,
      // spaceBetween: 20,			
      loop: true,
      touchRatio: 1,
      autoHeight: true,
      autoplay: { 
        delay: 3000,
        disableOnInteraction: false, 
      },			
      pagination: {
        el: '.swiper-pagination',
        clickable: true,
      },
    })
  } else if (windowWidth >= 993 && destroyReviewSwiper != undefined) {
    destroyReviewSwiper.destroy();
    destroyReviewSwiper = undefined;
  }
}
initdestroyReviewSwiper();

var reviewSwiperTimer = null;
$(window).on('resize', function() {
  clearTimeout(reviewSwiperTimer);
  reviewSwiperTimer = setTimeout(function() {
    windowWidth = $(window).innerWidth();
    initdestroyReviewSwiper();
  }, 500)
});</code></pre>

              <div class="page_bot_wrap">
                  <a class="use_link" href="<%=url_main%>/s/gong/event/2023/12290150/index.asp#eventWrap" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                  <div class="cap_tag">
                      <ul>
                          <li><p>#슬라이드</p></li>
                          <li><p>#김형준T 리뷰</p></li>
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