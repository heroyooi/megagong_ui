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
              <h3 class="page_name_sub">�����̵� - Swiper (10.1.0)</h3>
              <p class="page_sub_text">�����̵�� �ް������� ���� �������������� ȫ������������ Ư�� ���� ������ ���Ͽ� �������ϰ� ���ǰ� �ִ� ����Դϴ�.<br>
              �ַ� �������� ��������, 3�ʸ��� �����̵尡 ���� �� �̵��˴ϴ�. ���� �����̵� ���� ���� ���콺 Ŀ���� �ø� ���, <br>
              �����̵� ����� �Ͻ������� ���߸鼭 ����ڰ� ���ϴ� ������ ��Ȯ�� Ȯ���� �� �ֵ��� ���� �ֽ��ϴ�.</p>
              <div class="page_print"><input type="button" value="�μ��ϱ�" id="print" onclick="window.print()"/></div>
          </div>

<pre class="language-html css"><code><link type="text/css" rel="stylesheet" href="<%=url_main%>/common/js/jquery/plug-in/swiper-bundle.min.css" />
<script src="<%=url_main%>/common/js/jquery/plug-in/swiper-bundle.min.js"></script></code></pre>

          <div class="page_text_wrap">
            <p class="page_head">���� �����̵�</p> 
            <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
              
            <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
            <!-- <div class="position_site"><img src="/images/slide1.png" alt='�����̵���ġ' ></div> -->
                

<!-- HTML -->
<div class="code-box html"><div class="verticalSwiper">
  <div class="swiper-wrapper">
    <div class="swiper-slide">�������� ����������� ���� �ְ� �Դϴ�.��</div>
    <div class="swiper-slide">������� ���� ����, �ؼ��� ���� �ڼ��մϴ�.��</div>
    <div class="swiper-slide">���̺��� �� �ڼ��� �ؼ��� ���� �� ���ƿ�.��</div>
    <div class="swiper-slide">���� ���ǰ�� �ϳ��� �� ���� �˴ϴ�!��</div>
    <div class="swiper-slide">������ ����, �� ������ �ְ�! ȸ�� �δ㵵 �����.��</div>
    <div class="swiper-slide">������ ������ ������ ����� �˰� �Ǿ����.��</div>
    <div class="swiper-slide">���ؼ��� �ڼ��� ģ���� ���ǰ���Դϴ�.��</div>
    <div class="swiper-slide">����� �̻�, ���� ���ѱ� ���̶�� ���� �����׿�.��</div>
    <div class="swiper-slide">������ Ʈ���尡 Ȯ���ϰ� �ݿ��� ���ǰ��!��</div>
    <div class="swiper-slide">������ ��ȸ ���� �����̶�� �����մϴ�.��</div>
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


<p class="page_text">�ް����͵� ������ ȫ�� �� �̺�Ʈ ���������� ���Ǵ� �����̵� ����Դϴ�.<br> 
���ǰ�� �ı���� ���η� �����̵� �˴ϴ�.</p>

<!-- Code View -->
<pre class="language-html html act direct"><code><div class="verticalSwiper">
  <div class="swiper-wrapper">
    <div class="swiper-slide">�������� ����������� ���� �ְ� �Դϴ�.��</div>
    <div class="swiper-slide">������� ���� ����, �ؼ��� ���� �ڼ��մϴ�.��</div>
    <div class="swiper-slide">���̺��� �� �ڼ��� �ؼ��� ���� �� ���ƿ�.��</div>
    <div class="swiper-slide">���� ���ǰ�� �ϳ��� �� ���� �˴ϴ�!��</div>
    <div class="swiper-slide">������ ����, �� ������ �ְ�! ȸ�� �δ㵵 �����.��</div>
    <div class="swiper-slide">������ ������ ������ ����� �˰� �Ǿ����.��</div>
    <div class="swiper-slide">���ؼ��� �ڼ��� ģ���� ���ǰ���Դϴ�.��</div>
    <div class="swiper-slide">����� �̻�, ���� ���ѱ� ���̶�� ���� �����׿�.��</div>
    <div class="swiper-slide">������ Ʈ���尡 Ȯ���ϰ� �ݿ��� ���ǰ��!��</div>
    <div class="swiper-slide">������ ��ȸ ���� �����̶�� �����մϴ�.��</div>
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
                          <li><p>#�����̵�</p></li>
                          <li><p>#����</p></li>
                          <li><p>#���ѱ�T ���ǰ�� �ı�</p></li>
                      </ul>
                  </div>
              </div>
          </div><!-- .page_text_wrap -->


          <div class="page_text_wrap">
            <p class="page_head">���� �����̵�2</p> 
            <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
              
            <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
            <!-- <div class="position_site"><img src="/images/slide1.png" alt='�����̵���ġ' ></div> -->
                

<!-- HTML -->
<div class="code-box html" style="background-color:#dddff2;"><div class="verticalSwiper2">
  <div class="swiper-wrapper">
    <div class="swiper-slide">
      <div class="item">
        ���⹮��, ���������� ������ ���� ȸ�� �Ͻð� <br>
        ���������� ������ �� Ǯ�鼭 ���� ������ Ű��ñ� �ٶ��ϴ�.
        <span>-2023 ������ �����հ�, ������ �ʱ� �հ��� ��*��-</span>
      </div>
    </div>
    <div class="swiper-slide">
      <div class="item">
        �����̶� ���⺯�� �׸��� ���ǰ��� �� �ܿ� ��ŭ ���� �ݺ����ݺ��ؼ� Ǯ���� �� ���ƿ�!!
        <span>-2023 ������ �����հ�, ������ �ʱ� �հ��� ��*��-</span>
      </div>
    </div>
    <div class="swiper-slide">
      <div class="item">
        ������ ���� �ʰ� �о ���� ��Ⱑ ���� ��µ� �����⺯�� ���Ǣ� ��  <br>
        ��ü ���뵵 �����Ǹ鼭 �ѹ��� ���⿡ ���� �帧�� �ľ��� �� �־ ���ҽ��ϴ�. 
        <span>-2023 ������ �ʱ� �հ��� ��*��-</span>
      </div>
    </div>
    <div class="swiper-slide">
      <div class="item">
        ���⺯���� ���ؼ� ������ Ȯ���� �� �� �־����. ��  <br>
        ���������� �߰��� ȸ���ؼ� �ð���� ���� ȿ���� ���Ҵ� �� �����ϴ�.
        <span>-2023 ������ �ʱ� �հ��� ��*��-</span>
      </div>
    </div>
    <div class="swiper-slide">
      <div class="item">
        �����̷��� ó���� 1ȸ�� �� ������ ���⹮���� ���ַ� Ǫ�� ������ �Ͽ���  <br>
        �� ���Ŀ��� �ݺ��ؼ� ������ ������ ��� �� �����Ͽ����ϴ�.
        <span>-2023 ������ ������� �ʱ� �հ��� ��*��-</span>
      </div>
    </div>
    <div class="swiper-slide">
      <div class="item">
        ������ �ᱹ ������ �����Ǿ� �����ϱ��.
        <span>-2023 ������, ������ �ʱ� �հ��� ��*��-</span>
      </div>
    </div>
    <div class="swiper-slide">
      <div class="item">
        ���⺯�� �������� ���� ������ �ʱ��Ʈó�� Ȱ���Ͽ� ������ �κ��� ä������  <br>
        ���߿��� ���⺯�� �������� ���� 100% ���� �� �ϱ⸦ �Ͽ����ϴ�.
        <span>-2023 ������ �������� �ʱ� �հ��� ��*��-</span>
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


<p class="page_text">�ް����͵� ������ ȫ�� �� �̺�Ʈ ���������� ���Ǵ� �����̵� ����Դϴ�.<br> 
���������� �հݼ��Ⱑ ���η� �����̵� �˴ϴ�.</p>

<!-- Code View -->
<pre class="language-html html act direct"><code><div class="verticalSwiper2">
  <div class="swiper-wrapper">
    <div class="swiper-slide">
      <div class="item">
        ���⹮��, ���������� ������ ���� ȸ�� �Ͻð� <br>
        ���������� ������ �� Ǯ�鼭 ���� ������ Ű��ñ� �ٶ��ϴ�.
        <span>-2023 ������ �����հ�, ������ �ʱ� �հ��� ��*��-</span>
      </div>
    </div>
    <div class="swiper-slide">
      <div class="item">
        �����̶� ���⺯�� �׸��� ���ǰ��� �� �ܿ� ��ŭ ���� �ݺ����ݺ��ؼ� Ǯ���� �� ���ƿ�!!
        <span>-2023 ������ �����հ�, ������ �ʱ� �հ��� ��*��-</span>
      </div>
    </div>
    <div class="swiper-slide">
      <div class="item">
        ������ ���� �ʰ� �о ���� ��Ⱑ ���� ��µ� �����⺯�� ���Ǣ� ��  <br>
        ��ü ���뵵 �����Ǹ鼭 �ѹ��� ���⿡ ���� �帧�� �ľ��� �� �־ ���ҽ��ϴ�. 
        <span>-2023 ������ �ʱ� �հ��� ��*��-</span>
      </div>
    </div>
    <div class="swiper-slide">
      <div class="item">
        ���⺯���� ���ؼ� ������ Ȯ���� �� �� �־����. ��  <br>
        ���������� �߰��� ȸ���ؼ� �ð���� ���� ȿ���� ���Ҵ� �� �����ϴ�.
        <span>-2023 ������ �ʱ� �հ��� ��*��-</span>
      </div>
    </div>
    <div class="swiper-slide">
      <div class="item">
        �����̷��� ó���� 1ȸ�� �� ������ ���⹮���� ���ַ� Ǫ�� ������ �Ͽ���  <br>
        �� ���Ŀ��� �ݺ��ؼ� ������ ������ ��� �� �����Ͽ����ϴ�.
        <span>-2023 ������ ������� �ʱ� �հ��� ��*��-</span>
      </div>
    </div>
    <div class="swiper-slide">
      <div class="item">
        ������ �ᱹ ������ �����Ǿ� �����ϱ��.
        <span>-2023 ������, ������ �ʱ� �հ��� ��*��-</span>
      </div>
    </div>
    <div class="swiper-slide">
      <div class="item">
        ���⺯�� �������� ���� ������ �ʱ��Ʈó�� Ȱ���Ͽ� ������ �κ��� ä������  <br>
        ���߿��� ���⺯�� �������� ���� 100% ���� �� �ϱ⸦ �Ͽ����ϴ�.
        <span>-2023 ������ �������� �ʱ� �հ��� ��*��-</span>
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
                          <li><p>#�����̵�</p></li>
                          <li><p>#����</p></li>
                          <li><p>#��â��T �հݼ���</p></li>
                      </ul>
                  </div>
              </div>
          </div><!-- .page_text_wrap -->



          <div class="page_text_wrap">
            <p class="page_head">���� �����̵�</p> 
            <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
              
            <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
            <!-- <div class="position_site"><img src="/images/slide1.png" alt='�����̵���ġ' ></div> -->
                

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


<p class="page_text">�ް����͵� ������ ȫ�� �� �̺�Ʈ ���������� ���Ǵ� �����̵� ����Դϴ�.<br> 
����ũž������ 3���� �׺�/����Ͽ����� �ϳ��� �Ѹ��Ǵ� ����Դϴ�.</p>

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
                          <li><p>#�����̵�</p></li>
                          <li><p>#������T ����</p></li>
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