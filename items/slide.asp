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
              <h3 class="page_name_sub">�����̵� - Slick (1.8.0)</h3>
              <p class="page_sub_text">�����̵�� �ް������� ���� �������������� ȫ������������ Ư�� ���� ������ ���Ͽ� �������ϰ� ���ǰ� �ִ� ����Դϴ�.<br>
              �ַ� �������� ��������, 3�ʸ��� �����̵尡 ���� �� �̵��˴ϴ�. ���� �����̵� ���� ���� ���콺 Ŀ���� �ø� ���, <br>
              �����̵� ����� �Ͻ������� ���߸鼭 ����ڰ� ���ϴ� ������ ��Ȯ�� Ȯ���� �� �ֵ��� ���� �ֽ��ϴ�.</p>
              <div class="page_print"><input type="button" value="�μ��ϱ�" id="print" onclick="window.print()"/></div>
          </div>
            
            <div class="page_text_wrap">
              <p class="page_head">��� D-day �����̵�</p> 
              <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
              <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
              <div class="position_site"><img src="/images/slide1.png" alt='�����̵���ġ' ></div>
                

<!-- HTML -->
<div class="code-box html"><div class="hd_top">
  <div class="dday_wrap">
    <div class="dday_txt">������ 5�� 1�� <strong>D-162</strong></div>
    <div class="dday_txt">������ 9�� <strong>D-10</strong></div>
    <div class="dday_txt">�ҹ������ <strong>D-7</strong></div>
    <div class="dday_txt">������ 9�� <strong>D-5</strong></div>
    <div class="dday_txt">������ 5�� 2�� <strong>D-3</strong></div>
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

<p class="page_text">�ް����͵� ������ ���� ���������� ���Ǵ� �����̵� ����Դϴ�.<br> 
��� ���� ���(Header)�κп� ���������� ��ġ�ϰ� ������ ���� ���� ����� �� �Ⱓ�� ���� ������ D-day�� ǥ���Ͽ� ����ڿ��� �������ݴϴ�.<br> 
�⺻������ �Ʒ����� ���� �ڿ������� �Ѿ�� ȿ���� �Բ� 3�� ������ �����̵尡 ����˴ϴ�.</p>

<!-- Code View -->
<pre class="language-html html act direct"><code><div class="hd_top">
  <div class="dday_wrap">
    <div class="dday_txt">������ 5�� 1�� <strong>D-162</strong></div>
    <div class="dday_txt">������ 9�� <strong>D-10</strong></div>
    <div class="dday_txt">�ҹ������ <strong>D-7</strong></div>
    <div class="dday_txt">������ 9�� <strong>D-5</strong></div>
    <div class="dday_txt">������ 5�� 2�� <strong>D-3</strong></div>
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
                            <li><p>#����</p> </li>
                            <li><p>#��¥</p> </li>
                            <li><p>#�����̵�</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->






            <div class="page_text_wrap">
                <p class="page_head">��� ���� �����̵�</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <div class="position_site"><img src="/images/slide2.png" alt='�����̵���ġ' ></div>
                

<!-- HTML -->
<div class="code-box html"><div class="hd_left_bnr">
  <div class="hd_slider">
    <div>
      <a href="javascript:void(0);">
        <img src="<%=img_main%>/m/2022/0411_quiz/main_sky_ban.jpg" style="cursor:pointer;" alt="����� ��¥ ���� �Ƿ���? ����! �ް������">
      </a>
    </div>
    <div>
      <a href="javascript:void(0);">
        <img src="<%=img_main%>/m/2022/0402_fullserv/main_sky_ban.jpg" style="cursor:pointer;" alt="�հݿ��� Ǯ����">
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

<p class="page_text">�ް����͵� ������ ���� ���������� ���Ǵ� �����̵� ��� ����Դϴ�.<br>  ��� ���� ���(Header)�κп� ���������� ��ġ�ϰ� ������ Ŭ�� ��, ȫ�� �� �̺�Ʈ �������� ����˴ϴ�.<br>  �⺻������ �ڿ������� �Ѿ�� ȿ�� ����, �������� �ִ� �����̵尡 3�� ������ ����˴ϴ�.</p>

<!-- Code View -->
<pre class="language-html html act direct"><code><div class="hd_left_bnr">
  <div class="hd_slider">
    <div>
      <a href="javascript:void(0);">
        <img src="<%=img_main%>/m/2022/0411_quiz/main_sky_ban.jpg" style="cursor:pointer;" alt="����� ��¥ ���� �Ƿ���? ����! �ް������">
      </a>
    </div>
    <div>
      <a href="javascript:void(0);">
        <img src="<%=img_main%>/m/2022/0402_fullserv/main_sky_ban.jpg" style="cursor:pointer;" alt="�հݿ��� Ǯ����">
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
                            <li><p>#���</p> </li>
                            <li><p>#ȭ��ǥ</p> </li>
                            <li><p>#���λ��</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->







            <div class="page_text_wrap">
                <p class="page_head">���� �� �����̵�</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <div class="position_site"><img src="/images/slide3.png" alt='�����̵���ġ' ></div>

<!-- HTML -->
<div class="code-box html"><div id="main_exhibi_bs" class="main_exhibi main_exhibi_mock d1220 d0215 d0330 d0420">
  <div class="exhibi_sd">
    <div class="item">
      <a href="<%=url_main%>/event/2022/03180006/index.asp#eventWrap" title="Easy&Fast �հ�����">
        <img src="<%=img_main%>/m/2022/0318_history/con_img35.png" alt="Easy&Fast �հ�����">
      </a>
    </div>
    <div class="item">
      <a href="<%=url_main%>/s/gong/lawexam/2022_2/index.asp#eventWrap" title="�ް������� ���� ���ǰ��">
        <i><img src="<%=img_main%>/m/2022/0428_lawexam/main_rht_ic.png" alt="������ ��û ��"></i>
        <img src="<%=img_main%>/m/2022/0428_lawexam/main_rht_bn2.png" alt="�ް������� ���� ���ǰ��">
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

<p class="page_text">�ް����͵� ������ ���� ���������� ���Ǵ� �����̵� ��� ����Դϴ�.<br> 
�߾� ���� �κп� �ַ� ��ġ�ϰ� ������ Ŭ�� ��, ȫ�� �� �̺�Ʈ �������� ����˴ϴ�.<br> 
�⺻������ �ڿ������� �Ѿ�� ȿ�� ����, �������� �ִ� �����̵尡 3�� ������ ����˴ϴ�.</p>

<!-- Code View -->
<pre class="language-html html act direct"><code><div id="main_exhibi_bs" class="main_exhibi main_exhibi_mock d1220 d0215 d0330 d0420">
  <div class="exhibi_sd">
    <div class="item">
      <a href="<%=url_main%>/event/2022/03180006/index.asp#eventWrap" title="Easy&Fast �հ�����">
        <img src="<%=img_main%>/m/2022/0318_history/con_img35.png" alt="Easy&Fast �հ�����">
      </a>
    </div>
    <div class="item">
      <a href="<%=url_main%>/s/gong/lawexam/2022_2/index.asp#eventWrap" title="�ް������� ���� ���ǰ��">
        <i><img src="<%=img_main%>/m/2022/0428_lawexam/main_rht_ic.png" alt="������ ��û ��"></i>
        <img src="<%=img_main%>/m/2022/0428_lawexam/main_rht_bn2.png" alt="�ް������� ���� ���ǰ��">
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
                            <li><p>#��ʽ����̵�</p> </li>
                            <li><p>#�����߾�</p> </li>
                            <li><p>#�̺�Ʈ����������</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->






            <div class="page_text_wrap">
                <p class="page_head">���� ��� �����̵�</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <div class="position_site"><img src="/images/slide4.png" alt='�����̵���ġ' ></div>

<!-- HTML -->
<div class="code-box html"><div class="main_wrp">
  <div class="main_event">
    <div class="exhibi_wrap">
      <h3 class="cmmn_tit">�ް���s PICK ��ȹ��</h3>
      <a href="javascript:exhibiPcwrap_focus();" class="more" title="������">������</a>
        <div id="exhibi_roll" class="exhibi_roll"> 
          <div class="item">
            <a href="<%=url_main%>/s/army/event/2022/05270008/index.asp#eventWrap" title="������ ������ ����, THE FINAL">
              <img src="<%=img_main%>/m/2022/0527_final/exhi_bnr.jpg" alt="������ ������ ����, THE FINAL">
            </a>
          </div>
          <div class="item">
            <a href="<%=url_main%>/s/army/event/2021/08300012/index.asp#eventWrap" title="2022 ������ �ް�����������!">
              <img src="<%=img_main%>/m/2021/1229_army_main/exhi_bnr3.jpg" alt="-" />
            </a>
          </div>
          <div class="item">
            <a href="<%=url_main%>/event/2022/05100008/index.asp#eventWrap" title="�Ѵɰ� ���ξ�">
              <img src="<%=img_main%>/m/2022/0510_lineup/exhi_bnr1.png" alt="-" />
            </a>
          </div>
          <div class="item">
            <a href="<%=url_main%>/event/2022/03180006/index.asp#eventWrap" title="�Ѵɰ� ��� �޼��� ��ǥ��!EASY & FAST �Ѵɰ� �հ� ����">
              <img src="<%=img_main%>/m/2022/0318_history/con_img27.jpg" alt="-" />
            </a>
          </div>
        </div>
        <div class="exhibi_pclist"> 
          <ul>
            <li class="item">                    
              <a href="<%=url_main%>/s/army/event/2021/10270015/index.asp#eventWrap" title="1-2��  ������ ������">
                <img src="<%=img_main%>/m/2021/1229_army_main/exhi_bnr1.jpg" alt="-" />
              </a>
            </li>
            <li class="item">
              <a href="<%=url_main%>/s/army/event/2021/08300012/index.asp#eventWrap" title="2022 ������ �ް�����������!">
                <img src="<%=img_main%>/m/2021/1229_army_main/exhi_bnr3.jpg" alt="-" />
              </a>
            </li>
            <li class="item">
              <a href="<%=url_main%>/event/2022/05100008/index.asp#eventWrap" title="�Ѵɰ� ���ξ�">
                <img src="<%=img_main%>/m/2022/0510_lineup/exhi_bnr1.png" alt="-" />
              </a>
            </li>
            <li class="item">
              <a href="<%=url_main%>/event/2022/03180006/index.asp#eventWrap" title="�Ѵɰ� ��� �޼��� ��ǥ��!EASY & FAST �Ѵɰ� �հ� ����">
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

<p class="page_text">�ް����͵� ������ ���� ���������� ���Ǵ� �����̵� ��� ����Դϴ�.<br> 
������ �߾Ӻο� ��ġ�ϰ� ������ �������� ��� Dot �����̵� ��ư�� ��Ÿ���ϴ�. ���� ��ʸ� Ŭ���� ���, ȫ�� �� �̺�Ʈ �������� ����˴ϴ�.<br> 
�⺻������ �������� �������� �ڿ������� �Ѿ�� ȿ���� �Բ� 3�� ������ �����̵尡 ����˴ϴ�.</p>

<!-- Code View -->
<pre class="language-html html act direct"><code><div class="main_wrp">
  <div class="main_event">
    <div class="exhibi_wrap">
      <h3 class="cmmn_tit">�ް���s PICK ��ȹ��</h3>
      <a href="javascript:exhibiPcwrap_focus();" class="more" title="������">������</a>
        <div id="exhibi_roll" class="exhibi_roll"> 
          <div class="item">
            <a href="<%=url_main%>/s/army/event/2022/05270008/index.asp#eventWrap" title="������ ������ ����, THE FINAL">
              <img src="<%=img_main%>/m/2022/0527_final/exhi_bnr.jpg" alt="������ ������ ����, THE FINAL">
            </a>
          </div>
          <div class="item">
            <a href="<%=url_main%>/s/army/event/2021/08300012/index.asp#eventWrap" title="2022 ������ �ް�����������!">
              <img src="<%=img_main%>/m/2021/1229_army_main/exhi_bnr3.jpg" alt="-" />
            </a>
          </div>
          <div class="item">
            <a href="<%=url_main%>/event/2022/05100008/index.asp#eventWrap" title="�Ѵɰ� ���ξ�">
              <img src="<%=img_main%>/m/2022/0510_lineup/exhi_bnr1.png" alt="-" />
            </a>
          </div>
          <div class="item">
            <a href="<%=url_main%>/event/2022/03180006/index.asp#eventWrap" title="�Ѵɰ� ��� �޼��� ��ǥ��!EASY & FAST �Ѵɰ� �հ� ����">
              <img src="<%=img_main%>/m/2022/0318_history/con_img27.jpg" alt="-" />
            </a>
          </div>
        </div>
        <div class="exhibi_pclist"> 
          <ul>
            <li class="item">                    
              <a href="<%=url_main%>/s/army/event/2021/10270015/index.asp#eventWrap" title="1-2��  ������ ������">
                <img src="<%=img_main%>/m/2021/1229_army_main/exhi_bnr1.jpg" alt="-" />
              </a>
            </li>
            <li class="item">
              <a href="<%=url_main%>/s/army/event/2021/08300012/index.asp#eventWrap" title="2022 ������ �ް�����������!">
                <img src="<%=img_main%>/m/2021/1229_army_main/exhi_bnr3.jpg" alt="-" />
              </a>
            </li>
            <li class="item">
              <a href="<%=url_main%>/event/2022/05100008/index.asp#eventWrap" title="�Ѵɰ� ���ξ�">
                <img src="<%=img_main%>/m/2022/0510_lineup/exhi_bnr1.png" alt="-" />
              </a>
            </li>
            <li class="item">
              <a href="<%=url_main%>/event/2022/03180006/index.asp#eventWrap" title="�Ѵɰ� ��� �޼��� ��ǥ��!EASY & FAST �Ѵɰ� �հ� ����">
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
                            <li><p>#���ι��</p> </li>
                            <li><p>#��ũ����</p> </li>
                            <li><p>#��ġ��</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->








              <div class="page_text_wrap">
                <p class="page_head">�ı� �����̵�</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <div class="position_site"><img src="/images/slide5.png" alt='�����̵���ġ' ></div>

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


<p class="page_text">�ް����͵� ������ ȫ�� �� �̺�Ʈ ���������� ���Ǵ� �����̵� ����Դϴ�.<br> �ַ� ���� �ı� ���� ������ ����ڿ��� �����ϱ� ���Ͽ� ���˴ϴ�. �̹��� ���� ��ü�� ���� �پ��� �ı� ���� ������ ������ �� �ֽ��ϴ�.<br> �⺻������ �������� �������� 3�ʸ��� �����̵尡 �̵��˴ϴ�.</p>


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
                            <li><p>#�̺�Ʈ������</p> </li>
                            <li><p>#�ı�</p> </li>
                            <li><p>#�ڵ��Ѹ�</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->







            <!--
            <div class="page_text_wrap">
                <p class="page_head">���� �����̵�</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div>
                <div class="position_site"><img src="/images/slide6.png" alt='�����̵���ġ' ></div>

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

<p class="page_text">�ް����͵� ������ ȫ�� �� �̺�Ʈ ���������� ���Ǵ� �����̵� ����Դϴ�.<br> �ַ� ���� ȫ�� �� ���� ������ ����ڿ��� �����ϱ� ���� ���˴ϴ�. �̹��� ���� ��ü�� ���� ������ ������ ������ �� �ֽ��ϴ�.<br> �������� �������� 3�ʸ��� �����̵尡 �̵��˴ϴ�.</p>

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
                            <li><p>#����ȫ��</p> </li>
                            <li><p>#����ȫ��</p> </li>
                            <li><p>#�ڵ��Ѹ�</p> </li>
                        </ul>
                    </div>
                </div>
            </div>
            -->
            <!-- .page_text_wrap -->






            <div class="page_text_wrap">
                <p class="page_head">�ı� �����̵� 2</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <div class="position_site"><img src="/images/slide8.png" alt='�����̵���ġ' ></div>

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

<p class="page_text">�ް����͵� ������ ȫ�� �� �̺�Ʈ ���������� ���Ǵ� �����̵� ����Դϴ�.<br> �ַ� ���� �ı� ���� ������ ����ڿ��� �����ϱ� ���Ͽ� ���˴ϴ�. �̹��� ���� ��ü�� ���� �پ��� �ı� ���� ������ ������ �� �ֽ��ϴ�.<br> �⺻������ �������� �������� 3�ʸ��� �����̵尡 �̵��˴ϴ�. ���� �ϴܺ��� �����̵� ��ư�� ���ؼ��� �̵��� �����մϴ�.</p>

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
                            <li><p>#����ȫ��</p> </li>
                            <li><p>#�ı�����</p> </li>
                            <li><p>#��ٶ��׺���̼�</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->



            <div class="page_text_wrap">
                <p class="page_head">���� ���ǰ���ȹ�� �����̵�</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <div class="position_site"><img src="/images/slide7.png" alt='�����̵���ġ' ></div>

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

<p class="page_text">�ް����͵� ������ ȫ�� �� ��ȹ�� ���������� ���Ǵ� �����̵� ����Դϴ�.<br> 
������ ������� ȫ���ϱ� ���� ���˴ϴ�. �������� �������� �ڿ������� �帣�� �Ѿ�ϴ�.</p>

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
                            <li><p>#����ȫ��</p> </li>
                            <li><p>#���̵屸��</p> </li>
                            <li><p>#��������帣��</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->



            <div class="page_text_wrap">
                <p class="page_head">2023�޷�+��������̺�Ʈ �����̵�</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <!-- <div class="position_site"><img src="/images/slide7.png" alt='�����̵���ġ' ></div> -->

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

<p class="page_text">�ް����͵� ������ ȫ�� �� �̺�Ʈ ���������� ���Ǵ� �����̵� ����Դϴ�.<br> 
Border �� Scale ȿ���� �̿��Ͽ� �����̵� �߾ӿ� ���ԵǴ� �̹����� ǥ���Ͽ� �ݴϴ�.</p>

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
                            <li><p>#����ȫ��</p> </li>
                            <li><p>#Ķ����</p> </li>
                            <li><p>#�����̵�ȿ��</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->




            <div class="page_text_wrap">
                <p class="page_head">�հ� Ű����� + ����¡ �����̵�</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <!-- <div class="position_site"><img src="/images/slide7.png" alt='�����̵���ġ' ></div> -->

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


<p class="page_text">�ް����͵� ������ ȫ�� �� ���� ȫ�� ���������� ���Ǵ� �����̵� ����Դϴ�.<br> 
���� ������ �������� �����̵带 ���� �����Ͽ� �ݴϴ�.</p>


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
                            <li><p>#Ű�����</p> </li>
                            <li><p>#����¡</p> </li>
                            <li><p>#��������</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->

            

            <div class="page_text_wrap">
                <p class="page_head">2023 �Ųٷ� �÷��� �����̵�</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <!-- <div class="position_site"><img src="/images/slide7.png" alt='�����̵���ġ' ></div> -->

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

<p class="page_text">�ް����͵� ������ ȫ�� �� �̺�Ʈ ���������� ���Ǵ� �����̵� ����Դϴ�.<br> 
�¿��� Arrow ��ư �ܿ��� �ϴ��� �׺���̼� �����̵带 Ŭ���Ͽ� �̹����� �ѱ� �� �ֽ��ϴ�. </p>

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
                            <li><p>#�÷���</p> </li>
                            <li><p>#�̹����׺���̼�</p> </li>
                            <li><p>#����ȫ��</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->



            <div class="page_text_wrap">
                <p class="page_head">�¶��� ���ǰ�� ����Ʈ + �� ���� �����̵�</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <!-- <div class="position_site"><img src="/images/slide7.png" alt='�����̵���ġ' ></div> -->

<!-- HTML -->
<div class="code-box html">
<div class="mockexam_gate">
  <ul id="tab" class="tab_base col3">
      <li class="on"><a href="#tab1">����</a></li>
      <li><a href="#tab2">����</a></li>
      <li><a href="#tab3">�ѱ���</a></li>
  </ul>
  <ul class="panel_base w_slide ">
      <!-- ���� -->
      <li id="tab1">
        <div class="mg_slick_wrap subject_slide_wrap">
          <div class="subject_slide">
            <div class="mockexam_obj mockexam_korean1">
                <div class="edge_wrp">
                    <span class="edge edge1"><img src="<%=img_main%>/m/2022/1214_examgate/examgate_edge.png" alt=""></span>
                    <span class="edge edge2"><img src="<%=img_main%>/m/2022/1214_examgate/examgate_edge2.png" alt=""></span>
                    <span class="mock_subject">����</span>
                </div>
                <div class="mockexam_thumb">
                    <div class="tec_img_wrp">
                        <span class="tec_img"><img src="<%=img_main%>/profphoto/gong/lyj4718/Prof3.png" alt="������ ������ �̹���"></span>
                        <span class="evt_label">EVENT</span>
                    </div>
                    <div class="tec_con_wrp">
                        <p class="mock_desc">������ ���谡�� ���� �̰߰� �ޱ� ���ǰ�� <br>�Ϻ��� ������ ���ϴ� 100���� ����</p>
                        <p class="mock_title">���� ������ <br>���ϱ⵵ ���ǰ��</p>
                        <p class="mock_date">���� �Ⱓ : 12/26(��)~4/3(��)</p>
                    </div>
                    <a class="mock_link" href="https://www.megagong.net/s/gong/event/2022/12140185/index.asp#eventWrap" target="_blank" tabindex="0">OPEN &gt;</a>
                </div>
            </div>
            <div class="mockexam_obj mockexam_korean2 dimm" style="width: 100%; display: inline-block;">
              <div class="edge_wrp">
                  <span class="edge edge1"><img src="<%=img_main%>/m/2022/1214_examgate/examgate_edge.png" alt=""></span>
                  <span class="edge edge2"><img src="<%=img_main%>/m/2022/1214_examgate/examgate_edge2.png" alt=""></span>
                  <span class="mock_subject">����</span>
              </div>
              <div class="mockexam_thumb">
                  <div class="tec_img_wrp">
                    <span class="tec_img"><img src="<%=img_main%>/profphoto/gong/gilltoraebi/Prof3.png" alt="������ ������ �̹���"></span>
                    <span class="evt_label">EVENT</span>
                  </div>
                  <div class="tec_con_wrp">
                    <p class="mock_desc">�ְ��� ���߷�! �������� ����! <br>�̰��� ��¥ �������ǰ���!</p>
                    <p class="mock_title">���ֱ��� <br>���� ���ǰ��</p>
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
                        <span class="mock_subject">����</span>
                    </div>
                    <div class="mockexam_thumb">
                        <div class="tec_img_wrp">
                            <span class="tec_img"><img src="<%=img_main%>/profphoto/gong/tjenglish08/Prof3.png" alt="������ ������ �̹���"></span>
                            <span class="evt_label">EVENT</span>
                        </div>
                        <div class="tec_con_wrp">
                            <p class="mock_desc">'����'�� ����, '����'�� �н�����<br>'����'�ϴ� �������� �������ǰ���Դϴ�.</p>
                            <p class="mock_title">������ <br>���� ���� ���ǰ��</p>
                            <p class="mock_date">���� �Ⱓ : 1/11(��)~4/2(��)</p>
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
                          <span class="mock_subject">�ѱ���</span>
                      </div>
                      <div class="mockexam_thumb">
                          <div class="tec_img_wrp">
                              <span class="tec_img"><img src="<%=img_main%>/profphoto/gong/gosabu88/Prof3.png" alt="������ ������ �̹���"></span>
                              <span class="evt_label">EVENT</span>
                          </div>
                          <div class="tec_con_wrp">
                              <p class="mock_desc">�е��� �������� ����� �ְ��� ���ǰ��� <br>���� �հݿ��θ� üũ�ϼ���.</p>
                              <p class="mock_title">�ѱ��� ������ <br>�������ǰ�� ����1</p>
                              <p class="mock_date">���� �Ⱓ : 11/28(��) ~ 1/13(��)</p>
                          </div>
                          <a class="mock_link" href="https://www.megagong.net/s/gong/event/2022/09270151/index.asp#eventWrap" target="_blank" tabindex="0">OPEN &gt;</a>
                      </div>
                  </div>
                  <div class="mockexam_obj mockexam_history2 dimm">
                      <div class="edge_wrp">
                          <span class="edge edge1"><img src="<%=img_main%>/m/2022/1214_examgate/examgate_edge.png" alt=""></span>
                          <span class="edge edge2"><img src="<%=img_main%>/m/2022/1214_examgate/examgate_edge2.png" alt=""></span>
                          <span class="mock_subject">�ѱ���</span>
                      </div>
                      <div class="mockexam_thumb">
                          <div class="tec_img_wrp">
                              <span class="tec_img"><img src="<%=img_main%>/profphoto/gong/gosabu88/Prof3.png" alt="������ ������ �̹���"></span>
                          </div>
                          <div class="tec_con_wrp">
                              <p class="mock_desc">�����ϱ��� ���� 2ȸ ������ ���ǰ��� <br>�Ƿ��� ������ ����� ��ȸ�� Ȱ���ϼ���!</p>
                              <p class="mock_title">�ѱ��� ������ <br>�������ǰ�� ����2</p>
                              <p class="mock_date">���� �Ⱓ : 1/16(��)~3/7(��)</p>
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

<p class="page_text">�ް����͵� ������ ȫ�� �� �̺�Ʈ ���������� ���Ǵ� �����̵� ����Դϴ�.<br> 
������ �� ���ο� ������ �����̵� ����� �����ϰ� �ֽ��ϴ�. </p>

<!-- Code View -->
<pre class="language-html html direct act"><code><div class="mockexam_gate">
  <ul id="tab" class="tab_base col3">
      <li class="on"><a href="#tab1">����</a></li>
      <li><a href="#tab2">����</a></li>
      <li><a href="#tab3">�ѱ���</a></li>
  </ul>
  <ul class="panel_base w_slide">
      <!-- ���� -->
      <li id="tab1">
          <div class="mg_slick_wrap subject_slide_wrap">
              <div class="subject_slide">
                  <div class="mockexam_obj mockexam_korean1">
                      <div class="edge_wrp">
                          <span class="edge edge1"><img src="<%=img_main%>/m/2022/1214_examgate/examgate_edge.png" alt=""></span>
                          <span class="edge edge2"><img src="<%=img_main%>/m/2022/1214_examgate/examgate_edge2.png" alt=""></span>
                          <span class="mock_subject">����</span>
                      </div>
                      <div class="mockexam_thumb">
                          <div class="tec_img_wrp">
                              <span class="tec_img"><img src="<%=img_main%>/profphoto/gong/lyj4718/Prof3.png" alt="������ ������ �̹���"></span>
                              <span class="evt_label">EVENT</span>
                          </div>
                          <div class="tec_con_wrp">
                              <p class="mock_desc">������ ���谡�� ���� �̰߰� �ޱ� ���ǰ�� <br>�Ϻ��� ������ ���ϴ� 100���� ����</p>
                              <p class="mock_title">���� ������ <br>���ϱ⵵ ���ǰ��</p>
                              <p class="mock_date">���� �Ⱓ : 12/26(��)~4/3(��)</p>
                          </div>
                          <a class="mock_link" href="/s/gong/event/2022/12140185/index.asp#eventWrap" target="_blank" tabindex="0">OPEN &gt;</a>
                      </div>
                  </div>
                  <div class="mockexam_obj mockexam_korean2 dimm" style="width: 100%; display: inline-block;">
                    <div class="edge_wrp">
                        <span class="edge edge1"><img src="<%=img_main%>/m/2022/1214_examgate/examgate_edge.png" alt=""></span>
                        <span class="edge edge2"><img src="<%=img_main%>/m/2022/1214_examgate/examgate_edge2.png" alt=""></span>
                        <span class="mock_subject">����</span>
                    </div>
                    <div class="mockexam_thumb">
                        <div class="tec_img_wrp">
                              <span class="tec_img"><img src="<%=img_main%>/profphoto/gong/gilltoraebi/Prof3.png" alt="������ ������ �̹���"></span>
                            <span class="evt_label">EVENT</span>
                        </div>
                        <div class="tec_con_wrp">
                            <p class="mock_desc">�ְ��� ���߷�! �������� ����! <br>�̰��� ��¥ �������ǰ���!</p>
                            <p class="mock_title">���ֱ��� <br>���� ���ǰ��</p>
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
                        <span class="mock_subject">����</span>
                    </div>
                    <div class="mockexam_thumb">
                        <div class="tec_img_wrp">
                            <span class="tec_img"><img src="<%=img_main%>/profphoto/gong/tjenglish08/Prof3.png" alt="������ ������ �̹���"></span>
                            <span class="evt_label">EVENT</span>
                        </div>
                        <div class="tec_con_wrp">
                            <p class="mock_desc">'����'�� ����, '����'�� �н�����<br>'����'�ϴ� �������� �������ǰ���Դϴ�.</p>
                            <p class="mock_title">������ <br>���� ���� ���ǰ��</p>
                            <p class="mock_date">���� �Ⱓ : 1/11(��)~4/2(��)</p>
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
                          <span class="mock_subject">�ѱ���</span>
                      </div>
                      <div class="mockexam_thumb">
                          <div class="tec_img_wrp">
                              <span class="tec_img"><img src="<%=img_main%>/profphoto/gong/gosabu88/Prof3.png" alt="������ ������ �̹���"></span>
                              <span class="evt_label">EVENT</span>
                          </div>
                          <div class="tec_con_wrp">
                              <p class="mock_desc">�е��� �������� ����� �ְ��� ���ǰ��� <br>���� �հݿ��θ� üũ�ϼ���.</p>
                              <p class="mock_title">�ѱ��� ������ <br>�������ǰ�� ����1</p>
                              <p class="mock_date">���� �Ⱓ : 11/28(��) ~ 1/13(��)</p>
                          </div>
                          <a class="mock_link" href="/s/gong/event/2022/09270151/index.asp#eventWrap" target="_blank" tabindex="0">OPEN &gt;</a>
                      </div>
                  </div>
                  <div class="mockexam_obj mockexam_history2 dimm">
                      <div class="edge_wrp">
                          <span class="edge edge1"><img src="<%=img_main%>/m/2022/1214_examgate/examgate_edge.png" alt=""></span>
                          <span class="edge edge2"><img src="<%=img_main%>/m/2022/1214_examgate/examgate_edge2.png" alt=""></span>
                          <span class="mock_subject">�ѱ���</span>
                      </div>
                      <div class="mockexam_thumb">
                          <div class="tec_img_wrp">
                              <span class="tec_img"><img src="<%=img_main%>/profphoto/gong/gosabu88/Prof3.png" alt="������ ������ �̹���"></span>
                          </div>
                          <div class="tec_con_wrp">
                              <p class="mock_desc">�����ϱ��� ���� 2ȸ ������ ���ǰ��� <br>�Ƿ��� ������ ����� ��ȸ�� Ȱ���ϼ���!</p>
                              <p class="mock_title">�ѱ��� ������ <br>�������ǰ�� ����2</p>
                              <p class="mock_date">���� �Ⱓ : 1/16(��)~3/7(��)</p>
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
                            <li><p>#�ǳ��ν����̵�</p> </li>
                            <li><p>#����ȫ��</p> </li>
                            <li><p>#���ǰ��</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->











            <div class="page_text_wrap">
                <p class="page_head">PSAT ���� �ı� + ������ �����̵�</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <div class="position_site"><img src="/images/slide5.png" alt='�����̵���ġ' ></div>

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


<p class="page_text">�ް����͵� ������ ȫ�� �� �̺�Ʈ ���������� ���Ǵ� �����̵� ����Դϴ�.<br> 
�����̵� �̹����� ���Ͽ� ����ڰ� �����ı⸦ ���� �� ������ Ȯ���� �� �ֵ��� �����ϴ�.</p>


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
                            <li><p>#�ı�</p> </li>
                            <li><p>#�����̵�</p> </li>
                            <li><p>#������</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->


            <div class="page_text_wrap">
                <p class="page_head">ī�� ȣ���� flip ȿ�� �����̵�</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <div class="position_site"><img src="/images/slide5.png" alt='�����̵���ġ' ></div>

<!-- HTML -->
<div class="code-box html" style="background-color:#674d3f;"><%
    Function reviewItems()
%>
<div class="item">
    <div class="item_inner">
        <div class="before">
            <div class="before_inner">
                <p>õ�� Ǯ�� <br />���� ��õ�帳�ϴ�!</p>
                <span>2022 ������ 9�� ������ �հݻ�</span>
            </div>
        </div>
        <div class="after">
            <div class="after_inner">
                <span>��������� õ���� ���� <br />�������ν� �ð��� �����ϰ� <br />����Ǫ�� �ɷµ� �淯���ٰ� <br />�����ϱ� ������ �̸� õ�� Ǯ�� <br />���� ��õ�帳�ϴ�!</span>
            </div>
        </div>
    </div>
</div>
<div class="item">
    <div class="item_inner">
        <div class="before">
            <div class="before_inner">
                <p>���� ���������� <br />����õ���� �þ��.</p>
                <span>2022 ������ 9�� ������ �հݻ�</span>
            </div>
        </div>
        <div class="after">
            <div class="after_inner">
                <span>õ������ �ô� �� ���迡 ������, <br />��깮���� õ����ŭ�� �ƴ����� <br /> õ������ �����ߴ� �� ó�� Ǯ�����. <br />���蹮�� Ǯ �� <br />���� ���� Ǯ���� ����?�;��µ� <br />ä���ϴϱ� 90���̿��� <br />���� ������.</span>
            </div>
        </div>
    </div>
</div>
<div class="item">
    <div class="item_inner">
        <div class="before">
            <div class="before_inner">
                <p>õ�� ���� �ݺ��ؼ� <br />Ǫ�� �� ��õ�մϴ�.</p>
                <span>2022 ������ 9�� ������ �հݻ�</span>
            </div>
        </div>
        <div class="after">
            <div class="after_inner">
                <span>�����ϰ� õ�� ��� �⺻ 3ȸ�� Ǯ����, <br />3ȸ ���Ŀ��� Ǯ�̹��� <br />�ٷ� ���������ʴ� ������ <br />�߾ñ⿡ ǥ���ؼ� ������ ������ <br />���� �����ʰ� ��� Ǭ �� ���ƿ�.</span>
            </div>
        </div>
    </div>
</div>
<div class="item">
    <div class="item_inner">
        <div class="before">
            <div class="before_inner">
                <p>�⺻��, ����, õ���� <br />3���ڷ� ����</p>
                <span>������ 9�� ������ �հݻ�</span>
            </div>
        </div>
        <div class="after">
            <div class="after_inner">
                <span>ȸ��� �ð��� �����Ű�� ���� <br />����� �����ؾ� �ϴ� <br />����� �ʿ��߱� ������ <br />�⺻��, ����, õ���� <br />3���ڷ� �����ؼ� <br />��Ʈ���� �� Ǫ�� ������� <br />�����߽��ϴ�.</span>
            </div>
        </div>
    </div>
</div>
<div class="item">
    <div class="item_inner">
        <div class="before">
            <div class="before_inner">
                <p>õ���� ���ص� <br />15ȸ������ <br />�� �� �����ϴ�.</p>
                <span>2022 7�� ����� �հݻ�</span>
            </div>
        </div>
        <div class="after">
            <div class="after_inner">
                <span>õ���� ���ص� 15ȸ�� ���� <br />�� �� �����ϴ�. <br />�׷��� ���ϱ� ����������ʹ� <br />������ ������ ���� <br />�ڵ������� ������ ������ �ǰ� <br />�� 10ȸ���� �ѱ�� ���� ����Ǫ�� <br />�ӵ��� ������ �������ϴ�.</span>
            </div>
        </div>
    </div>
</div>
<div class="item">
    <div class="item_inner">
        <div class="before">
            <div class="before_inner">
                <p>ȸ�����̶�� ������ <br />���� ����ִ�, <br />ȿ�� ������ �Ǿ����ϴ�.</p>
                <span>�������������� 9�� ������ �հݻ�</span>
            </div>
        </div>
        <div class="after">
            <div class="after_inner">
                <span>������ ��Ȳ���� �ʰ� <br />������ Ǯ��� ���Ͽ� <br />ȸ�� õ���� ����ؼ� ȸ���Ͽ� <br />�ͼ��ϰ� ��������ϴ�. </span>
            </div>
        </div>
    </div>
</div>
<div class="item">
    <div class="item_inner">
        <div class="before">
            <div class="before_inner">
                <p>õ���� 3ȸ������ <br />�ϰ� ������ <br />�����ϴ�.</p>
                <span>������ 7�� ������ �հݻ�</span>
            </div>
        </div>
        <div class="after">
            <div class="after_inner">
                <span>õ���� 3ȸ������ �ϰ� ������ <br />�����ϴ�. �̰� ���� ������. <br />������ ��� ������ �Ѿ�� <br />���� ���ߴ� �κ�, �� �� �˰� <br />�ִ� �κ� ���� ĳġ�ϰ� �ǰ� <br />������ ��Ȯ�ϰ� ���������ϴ�.</span>
            </div>
        </div>
    </div>
</div>
<div class="item">
    <div class="item_inner">
        <div class="before">
            <div class="before_inner">
                <p>õ�� 2ȸ�����ʹ� <br />��� Ǯ������� <br />���� �����󱸿�.</p>
                <span>2022 �������������� 9�� ������ �հݻ�</span>
            </div>
        </div>
        <div class="after">
            <div class="after_inner">
                <span>õ���� 1�� ȸ���ϰ� <br />���ǵ� ��� �ϴ� ���� �ͼ������� <br />2ȸ�����ʹ� ��� Ǯ������� <br />���� �����󱸿�.</span>
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


<p class="page_text">�ް����͵� ������ ȫ�� �� �̺�Ʈ ���������� ���Ǵ� �����̵� ����Դϴ�.<br> 
�����̵� ī�忡 ���� ���콺�� �ø� ���(Hover), ī�尡 Flip�Ǹ鼭 �޸����� ��ȯ�Ǵ� ȿ���� ��Ÿ���ϴ�.</p>


<!-- Code View -->
<pre class="language-html html act direct"><code>&lt;%
    Function reviewItems()
%&gt;
<div class="item">
    <div class="item_inner">
        <div class="before">
            <div class="before_inner">
                <p>õ�� Ǯ�� <br />���� ��õ�帳�ϴ�!</p>
                <span>2022 ������ 9�� ������ �հݻ�</span>
            </div>
        </div>
        <div class="after">
            <div class="after_inner">
                <span>��������� õ���� ���� <br />�������ν� �ð��� �����ϰ� <br />����Ǫ�� �ɷµ� �淯���ٰ� <br />�����ϱ� ������ �̸� õ�� Ǯ�� <br />���� ��õ�帳�ϴ�!</span>
            </div>
        </div>
    </div>
</div>
<div class="item">
    <div class="item_inner">
        <div class="before">
            <div class="before_inner">
                <p>���� ���������� <br />����õ���� �þ��.</p>
                <span>2022 ������ 9�� ������ �հݻ�</span>
            </div>
        </div>
        <div class="after">
            <div class="after_inner">
                <span>õ������ �ô� �� ���迡 ������, <br />��깮���� õ����ŭ�� �ƴ����� <br /> õ������ �����ߴ� �� ó�� Ǯ�����. <br />���蹮�� Ǯ �� <br />���� ���� Ǯ���� ����?�;��µ� <br />ä���ϴϱ� 90���̿��� <br />���� ������.</span>
            </div>
        </div>
    </div>
</div>
<div class="item">
    <div class="item_inner">
        <div class="before">
            <div class="before_inner">
                <p>õ�� ���� �ݺ��ؼ� <br />Ǫ�� �� ��õ�մϴ�.</p>
                <span>2022 ������ 9�� ������ �հݻ�</span>
            </div>
        </div>
        <div class="after">
            <div class="after_inner">
                <span>�����ϰ� õ�� ��� �⺻ 3ȸ�� Ǯ����, <br />3ȸ ���Ŀ��� Ǯ�̹��� <br />�ٷ� ���������ʴ� ������ <br />�߾ñ⿡ ǥ���ؼ� ������ ������ <br />���� �����ʰ� ��� Ǭ �� ���ƿ�.</span>
            </div>
        </div>
    </div>
</div>
<div class="item">
    <div class="item_inner">
        <div class="before">
            <div class="before_inner">
                <p>�⺻��, ����, õ���� <br />3���ڷ� ����</p>
                <span>������ 9�� ������ �հݻ�</span>
            </div>
        </div>
        <div class="after">
            <div class="after_inner">
                <span>ȸ��� �ð��� �����Ű�� ���� <br />����� �����ؾ� �ϴ� <br />����� �ʿ��߱� ������ <br />�⺻��, ����, õ���� <br />3���ڷ� �����ؼ� <br />��Ʈ���� �� Ǫ�� ������� <br />�����߽��ϴ�.</span>
            </div>
        </div>
    </div>
</div>
<div class="item">
    <div class="item_inner">
        <div class="before">
            <div class="before_inner">
                <p>õ���� ���ص� <br />15ȸ������ <br />�� �� �����ϴ�.</p>
                <span>2022 7�� ����� �հݻ�</span>
            </div>
        </div>
        <div class="after">
            <div class="after_inner">
                <span>õ���� ���ص� 15ȸ�� ���� <br />�� �� �����ϴ�. <br />�׷��� ���ϱ� ����������ʹ� <br />������ ������ ���� <br />�ڵ������� ������ ������ �ǰ� <br />�� 10ȸ���� �ѱ�� ���� ����Ǫ�� <br />�ӵ��� ������ �������ϴ�.</span>
            </div>
        </div>
    </div>
</div>
<div class="item">
    <div class="item_inner">
        <div class="before">
            <div class="before_inner">
                <p>ȸ�����̶�� ������ <br />���� ����ִ�, <br />ȿ�� ������ �Ǿ����ϴ�.</p>
                <span>�������������� 9�� ������ �հݻ�</span>
            </div>
        </div>
        <div class="after">
            <div class="after_inner">
                <span>������ ��Ȳ���� �ʰ� <br />������ Ǯ��� ���Ͽ� <br />ȸ�� õ���� ����ؼ� ȸ���Ͽ� <br />�ͼ��ϰ� ��������ϴ�. </span>
            </div>
        </div>
    </div>
</div>
<div class="item">
    <div class="item_inner">
        <div class="before">
            <div class="before_inner">
                <p>õ���� 3ȸ������ <br />�ϰ� ������ <br />�����ϴ�.</p>
                <span>������ 7�� ������ �հݻ�</span>
            </div>
        </div>
        <div class="after">
            <div class="after_inner">
                <span>õ���� 3ȸ������ �ϰ� ������ <br />�����ϴ�. �̰� ���� ������. <br />������ ��� ������ �Ѿ�� <br />���� ���ߴ� �κ�, �� �� �˰� <br />�ִ� �κ� ���� ĳġ�ϰ� �ǰ� <br />������ ��Ȯ�ϰ� ���������ϴ�.</span>
            </div>
        </div>
    </div>
</div>
<div class="item">
    <div class="item_inner">
        <div class="before">
            <div class="before_inner">
                <p>õ�� 2ȸ�����ʹ� <br />��� Ǯ������� <br />���� �����󱸿�.</p>
                <span>2022 �������������� 9�� ������ �հݻ�</span>
            </div>
        </div>
        <div class="after">
            <div class="after_inner">
                <span>õ���� 1�� ȸ���ϰ� <br />���ǵ� ��� �ϴ� ���� �ͼ������� <br />2ȸ�����ʹ� ��� Ǯ������� <br />���� �����󱸿�.</span>
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
                            <li><p>#�ø�ȿ��</p> </li>
                            <li><p>#�ı�</p> </li>
                            <li><p>#�����̵�</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->






            <div class="page_text_wrap">
              <p class="page_head">���� ���� �����̵� 1ST</p> 
              <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
              <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
              <!-- <div class="position_site"><img src="/images/slide1.png" alt='�����̵���ġ' ></div> -->
                

<!-- HTML -->
<div class="code-box html"><div class="candidate_slide">
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (���������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*ȣ (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (��ȣ��)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*	(������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*õ (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (��ȣ��)</div>
  <div class="item">õ*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�Ҹ� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*ȣ (������)</div>
  <div class="item">��*ȣ (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (���������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">Ȳ*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">õ*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*ȣ (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (��ȣ��)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (��ȣ��)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*ȣ (������)</div>
  <div class="item">��*�� (���������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*ȯ (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (���������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*â (������)</div>
  <div class="item">õ*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*ȣ (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (���������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">Ȳ*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
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

<p class="page_text">�ް����͵� ������ ȫ�� �� �̺�Ʈ ���������� ���Ǵ� �����̵� ����Դϴ�.<br> 
���������� ������ ���� ���� ���� �ö󰡸鼭(���� ����) ��ȯ �ݺ��Ǵ� ������ �̷���� �ֽ��ϴ�. </p>

<!-- Code View -->
<pre class="language-html html act direct"><code><div class="candidate_slide">
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (���������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*ȣ (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (��ȣ��)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*	(������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*õ (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (��ȣ��)</div>
  <div class="item">õ*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�Ҹ� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*ȣ (������)</div>
  <div class="item">��*ȣ (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (���������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">Ȳ*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">õ*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*ȣ (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (��ȣ��)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (��ȣ��)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*ȣ (������)</div>
  <div class="item">��*�� (���������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*ȯ (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (���������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*â (������)</div>
  <div class="item">õ*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*ȣ (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (���������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">Ȳ*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
  <div class="item">��*�� (������)</div>
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
                            <li><p>#����</p> </li>
                            <li><p>#���ι���</p> </li>
                            <li><p>#�ݺ�</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->







            <div class="page_text_wrap">
              <p class="page_head">���� ���� �����̵� 2ND</p> 
              <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
              <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
              <!-- <div class="position_site"><img src="/images/slide1.png" alt='�����̵���ġ' ></div> -->
                

<!-- HTML -->
<div class="code-box html"><div class="vertical_text_wrp">
  <div class="vertical_text">
      <div class="item">
          <p>��å�� ������ 11�� ������ Ǯ�� ��ȿ���������� �ϱ�� (����)��. <br class="mo_br" />-��*�� 2021.04.17-</p>
      </div>
      <div class="item">
          <p>���ι���� �����Ȱ�� ������ �־��⿡ ������ 90�� �Դϴ�! <br class="mo_br" />-��*�� 2021.04.30-</p>
      </div>
      <div class="item">
          <p>�ֱ����! ������ 100�� �޾ҽ��ϴ�. ���������� ������ ������. <br class="mo_br" />-��*�� 2021.04.28-</p>
      </div>
      <div class="item">
          <p>ȿ���ܸ� ����, ������ ���ʽû� �뺣�̽��κ��� 36���� ���硦. <br class="mo_br" />-��*�� 2021.04.27-</p>
      </div>
      <div class="item">
          <p>�̹� ������ 10�и��� 100�� �¾ҽ��ϴ�!! <br class="mo_br" />-��*�� 2021.04.27-</p>
      </div>
      <div class="item">
          <p>2020 ������ ������ 35������ 2021 ������ 105��(������ ����) <br class="mo_br" />-Ȳ*�� 2021.04.21-</p>
      </div>
      <div class="item">
          <p>2021 ������ 9�� ������ 95�� / ȿ���� Ŀ�� ��õ / ���߷��� �Ҹ���. <br class="mo_br" />-��*�� 2021.04.21-</p>
      </div>
      <div class="item">
          <p>�۳� ������ 70������ �̹� ������ 95�� �޾ҽ��ϴ�! ȿ���� Ŀ������. <br class="mo_br" />-��*�� 2021.04.20-</p>
      </div>
      <div class="item">
          <p>�������� ȿ�����̶�� ���� �Ʊ�� ��������! <br class="mo_br" />-��*�� 2021.04.19-</p>
      </div>
      <div class="item">
          <p>��ȿ�� �ѱ� �������ѷ� �������� ū�� �� �� �߳׿�. <br class="mo_br" />-��*�� 2021.04.21-</p>
      </div>
      <div class="item">
          <p>ȿ���� �ϰ� 100�� �޾ҽ��ϴ�! <br class="mo_br" />-��*�� 2021.04.19-</p>
      </div>
      <div class="item">
          <p>40�� �ʺ� ���û� ȿ���� ���п� ������ 100�� <br class="mo_br" />-��*�� 2021.04.19-</p>
      </div>
      <div class="item">
          <p>�Ҹ��� ���ҽ��ϴ�. ���� ��Ҹ��� ��Ⱦ�䡦�� <br class="mo_br" />-��*�� 2021.04.19-</p>
      </div>
      <div class="item">
          <p>�ݺ��� ���̰� ����� ȿ�����̴�. <br class="mo_br" />-��*�� 2021.04.19-</p>
      </div>
      <div class="item">
          <p>3�� ��� 75�� �� ���̳� �� ������ 95�� <br class="mo_br" />-��*�� 2021.04.19-</p>
      </div>
      <div class="item">
          <p>������ �������������ִ� ȿ���� �����մϴ� �Ф� <br class="mo_br" />-��*�� 2021.04.19-</p>
      </div>
      <div class="item">
          <p>������ 9�� ������ 100�� �����ı��Դϴ�! <br class="mo_br" />-��*�� 2021.04.18-</p>
      </div>
      <div class="item">
          <p>������ ������ ȿ������ ���������̽Ű��䡦 <br class="mo_br" />-��*�� 2021.04.18-</p>
      </div>
      <div class="item">
          <p>��=��ȿ�� <br class="mo_br" />-��*�� 2021.04.18-</p>
      </div>
      <div class="item">
          <p>������ 9�� ������ 100�� �����ı��Դϴ�! <br class="mo_br" />-��*�� 2021.04.18-</p>
      </div>
      <div class="item">
          <p>���������̰� ������ 100���� �±���� <br class="mo_br" />-��*�� 2021.04.18-</p>
      </div>
      <div class="item">
          <p>�ϰ� ��� ȿ����, �����մϴ�. ������ 95��. <br class="mo_br" />-��*�� 2021.04.18-</p>
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

<p class="page_text">�ް����͵� ������ ȫ�� �� �̺�Ʈ ���������� ���Ǵ� �����̵� ����Դϴ�.<br> 
���������� �۱Ͱ� ���� ���� ���� �ö󰡸鼭(���� ����) ��ȯ �ݺ��Ǵ� ������ �̷���� �ֽ��ϴ�. <br>
Bold �� font-size, color ������ �����̵� �߾ӿ� ���� �۱͸� ������ �� �ֽ��ϴ�.</p>


<!-- Code View -->
<pre class="language-html html act direct"><code><div class="vertical_text_wrp">
  <div class="vertical_text">
      <div class="item">
          <p>��å�� ������ 11�� ������ Ǯ�� ��ȿ���������� �ϱ�� (����)��. <br class="mo_br" />-��*�� 2021.04.17-</p>
      </div>
      <div class="item">
          <p>���ι���� �����Ȱ�� ������ �־��⿡ ������ 90�� �Դϴ�! <br class="mo_br" />-��*�� 2021.04.30-</p>
      </div>
      <div class="item">
          <p>�ֱ����! ������ 100�� �޾ҽ��ϴ�. ���������� ������ ������. <br class="mo_br" />-��*�� 2021.04.28-</p>
      </div>
      <div class="item">
          <p>ȿ���ܸ� ����, ������ ���ʽû� �뺣�̽��κ��� 36���� ���硦. <br class="mo_br" />-��*�� 2021.04.27-</p>
      </div>
      <div class="item">
          <p>�̹� ������ 10�и��� 100�� �¾ҽ��ϴ�!! <br class="mo_br" />-��*�� 2021.04.27-</p>
      </div>
      <div class="item">
          <p>2020 ������ ������ 35������ 2021 ������ 105��(������ ����) <br class="mo_br" />-Ȳ*�� 2021.04.21-</p>
      </div>
      <div class="item">
          <p>2021 ������ 9�� ������ 95�� / ȿ���� Ŀ�� ��õ / ���߷��� �Ҹ���. <br class="mo_br" />-��*�� 2021.04.21-</p>
      </div>
      <div class="item">
          <p>�۳� ������ 70������ �̹� ������ 95�� �޾ҽ��ϴ�! ȿ���� Ŀ������. <br class="mo_br" />-��*�� 2021.04.20-</p>
      </div>
      <div class="item">
          <p>�������� ȿ�����̶�� ���� �Ʊ�� ��������! <br class="mo_br" />-��*�� 2021.04.19-</p>
      </div>
      <div class="item">
          <p>��ȿ�� �ѱ� �������ѷ� �������� ū�� �� �� �߳׿�. <br class="mo_br" />-��*�� 2021.04.21-</p>
      </div>
      <div class="item">
          <p>ȿ���� �ϰ� 100�� �޾ҽ��ϴ�! <br class="mo_br" />-��*�� 2021.04.19-</p>
      </div>
      <div class="item">
          <p>40�� �ʺ� ���û� ȿ���� ���п� ������ 100�� <br class="mo_br" />-��*�� 2021.04.19-</p>
      </div>
      <div class="item">
          <p>�Ҹ��� ���ҽ��ϴ�. ���� ��Ҹ��� ��Ⱦ�䡦�� <br class="mo_br" />-��*�� 2021.04.19-</p>
      </div>
      <div class="item">
          <p>�ݺ��� ���̰� ����� ȿ�����̴�. <br class="mo_br" />-��*�� 2021.04.19-</p>
      </div>
      <div class="item">
          <p>3�� ��� 75�� �� ���̳� �� ������ 95�� <br class="mo_br" />-��*�� 2021.04.19-</p>
      </div>
      <div class="item">
          <p>������ �������������ִ� ȿ���� �����մϴ� �Ф� <br class="mo_br" />-��*�� 2021.04.19-</p>
      </div>
      <div class="item">
          <p>������ 9�� ������ 100�� �����ı��Դϴ�! <br class="mo_br" />-��*�� 2021.04.18-</p>
      </div>
      <div class="item">
          <p>������ ������ ȿ������ ���������̽Ű��䡦 <br class="mo_br" />-��*�� 2021.04.18-</p>
      </div>
      <div class="item">
          <p>��=��ȿ�� <br class="mo_br" />-��*�� 2021.04.18-</p>
      </div>
      <div class="item">
          <p>������ 9�� ������ 100�� �����ı��Դϴ�! <br class="mo_br" />-��*�� 2021.04.18-</p>
      </div>
      <div class="item">
          <p>���������̰� ������ 100���� �±���� <br class="mo_br" />-��*�� 2021.04.18-</p>
      </div>
      <div class="item">
          <p>�ϰ� ��� ȿ����, �����մϴ�. ������ 95��. <br class="mo_br" />-��*�� 2021.04.18-</p>
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
                            <li><p>#���ι���</p> </li>
                            <li><p>#�Ѹ���</p> </li>
                            <li><p>#�ı�</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->











            <div class="page_text_wrap">
              <p class="page_head">���� ���� �����̵� 3RD</p> 
              <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
              <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
              <!-- <div class="position_site"><img src="/images/slide1.png" alt='�����̵���ġ' ></div> -->
                

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
                          <dd>������ ���� �����ؿ�!<br>����Ⱓ�� �����ϰ� �ʹٸ�  ���α� ������ ���� �� ��õ�մϴ�.</dd>
                  </dl>
                  <p>- ������ ��** -</p>
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
                          <dd>����ȭ�� ������ ���ǿ� ����ȭ�� �ؼ����ǰ�<br>�� ������ ������ ����÷��ּ̽��ϴ�.</dd>
                  </dl>
                  <p>- ������ ��** -</p>
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
                          <dd>�Ƿʸ� �ڼ��� �������ֽð� ������ ����ּż� �Ӹ��� ��� ������,<br>�ڼ��� �������ֽø鼭�� ö���ϰ� ���迡 �°� �� �˷��ּ���.</dd>
                  </dl>
                  <p>- ������ ��** -</p>
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
                          <dd>��¥ �̰����� ���� ������ �����..<br>���� �ʹ� ��ź �������ϴ� �Ф�</dd>
                  </dl>
                  <p>- ������ ��** -</p>
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
                          <dd>�׳� ��� ������ �ڵ������� �Ӹ��� ����ȭ�� ���ͼ�<br>�� ��￡ �� ���� �� ���ƿ�.</dd>
                  </dl>
                  <p>- ������ ��** -</p>
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
                          <dd>��ĩ ������ ȫ���� �̲��� ������ �� �� �ִ� ������ ������<br>���α� �������� ȿ�����̰� ȿ�������� ����ֽʴϴ�.</dd>
                  </dl>
                  <p>- ������ ��** -</p>
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
                          <dd>��Ȧ ���� �������̶�� �� ������ ������ ���� �� ������ �׳� �ϴ� ��㵵<br>�� ��ŵ �ѹ� ���� ��￡ ���� ������ ��� �������� ���Ƿ��� �ʹ� ����ϴ�!!</dd>
                  </dl>
                  <p>- ������ ��** -</p>
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


<p class="page_text">�ް����͵� ������ ȫ�� �� �̺�Ʈ ���������� ���Ǵ� �����̵� ����Դϴ�.<br> 
���������� �̹��� �����̵尡 ���� �ö󰡸鼭(���� ����) ��ȯ �ݺ��Ǵ� ������ �̷���� �ֽ��ϴ�. <br>
������ �þȿ� ���� �ٸ� ���� �̹������� ������ �� �ֽ��ϴ�.</p>

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
                          <dd>������ ���� �����ؿ�!<br>����Ⱓ�� �����ϰ� �ʹٸ�  ���α� ������ ���� �� ��õ�մϴ�.</dd>
                  </dl>
                  <p>- ������ ��** -</p>
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
                          <dd>����ȭ�� ������ ���ǿ� ����ȭ�� �ؼ����ǰ�<br>�� ������ ������ ����÷��ּ̽��ϴ�.</dd>
                  </dl>
                  <p>- ������ ��** -</p>
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
                          <dd>�Ƿʸ� �ڼ��� �������ֽð� ������ ����ּż� �Ӹ��� ��� ������,<br>�ڼ��� �������ֽø鼭�� ö���ϰ� ���迡 �°� �� �˷��ּ���.</dd>
                  </dl>
                  <p>- ������ ��** -</p>
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
                          <dd>��¥ �̰����� ���� ������ �����..<br>���� �ʹ� ��ź �������ϴ� �Ф�</dd>
                  </dl>
                  <p>- ������ ��** -</p>
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
                          <dd>�׳� ��� ������ �ڵ������� �Ӹ��� ����ȭ�� ���ͼ�<br>�� ��￡ �� ���� �� ���ƿ�.</dd>
                  </dl>
                  <p>- ������ ��** -</p>
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
                          <dd>��ĩ ������ ȫ���� �̲��� ������ �� �� �ִ� ������ ������<br>���α� �������� ȿ�����̰� ȿ�������� ����ֽʴϴ�.</dd>
                  </dl>
                  <p>- ������ ��** -</p>
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
                          <dd>��Ȧ ���� �������̶�� �� ������ ������ ���� �� ������ �׳� �ϴ� ��㵵<br>�� ��ŵ �ѹ� ���� ��￡ ���� ������ ��� �������� ���Ƿ��� �ʹ� ����ϴ�!!</dd>
                  </dl>
                  <p>- ������ ��** -</p>
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
                            <li><p>#���ι���</p> </li>
                            <li><p>#�巡��</p> </li>
                            <li><p>#�ı�</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->







            <div class="page_text_wrap">
              <p class="page_head">Fade & Scale �����̵�</p> 
              <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
              <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
              <!-- <div class="position_site"><img src="/images/slide1.png" alt='�����̵���ġ' ></div> -->
                

<!-- HTML -->
<div class="code-box html"><div class="evSection evTecSlide">
  <div class="inner">
    <h4 class="con_tit"><img src="<%=img_main%>/m/2023/0613_technical/con2_tit.png" alt="������� ���������� ������ �ް�������� ����� �ٽ� ���ĵ��� ������ ��Ī �� ���İ��� ������� �ǵ��� �ٲٸ� �뼼�� �ڸ���ҽ��ϴ�."></h4>
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
        <a href="#" class="mg_slick_btn tp1 prev">����</a>
        <a href="#" class="mg_slick_btn tp1 next">����</a>
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


<p class="page_text">�ް����͵� ������ ȫ�� �� �̺�Ʈ ���������� ���Ǵ� �����̵� ����Դϴ�.<br> 
���̵� & �����Ϸ� �̷���� ��ȯ ȿ���� ���ؼ� ����� ���� �� �����Ե��� ȿ�������� ȫ���� �� �ֽ��ϴ�.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>
<pre class="language-javascript act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/s/gong/event/2023/06140074/index.asp#eventWrap" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#���̵�&������</p></li>
                            <li><p>#�����̵�</p></li>
                            <li><p>#�����ȫ��</p></li>
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