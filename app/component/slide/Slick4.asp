<script type="text/babel">
  'use strict';

  function Slick4({ title, onChange }) {

const html = `<div class="mg_slick_wrap s_example_4_wrap">
  <div class="s_example_4">
    <div class="item"><span class="inner">Slide 1</span><span class="t_example">1</span></div>
    <div class="item"><span class="inner">Slide 2</span><span class="t_example">2</span></div>
    <div class="item"><span class="inner">Slide 3</span><span class="t_example">3</span></div>
    <div class="item"><span class="inner">Slide 4</span><span class="t_example">4</span></div>
    <div class="item"><span class="inner">Slide 5</span><span class="t_example">5</span></div>
  </div>
  <a href="#" class="mg_slick_btn prev">이전</a>
  <a href="#" class="mg_slick_btn next">다음</a>
  <a href="#" class="mg_slick_btn play" style="display: none;">실행</a>
  <a href="#" class="mg_slick_btn pause">멈춤</a>
</div>`;

const css = `.s_example_4_wrap .s_example_4{display: none;}
.s_example_4_wrap .s_example_4.slick-initialized{display: block;}
.s_example_4_wrap .slick-slide .t_example{position:absolute;left:10px;top:10px;font-size:12px;background-color:#000;color:#fff;padding:10px;border-radius:5px;display:block;z-index:1;transition:all 0.3s;line-height:1;}
.s_example_4_wrap .slick-slide .t_example.on{background-color:#fff;color:#000;font-size:14px;}
.s_example_4_wrap .mg_slick_btn.prev{left:-30px;}
.s_example_4_wrap .mg_slick_btn.next{right:-30px;}

@media screen and (max-width: 810px) {
  .s_example_4_wrap{width:100%;}
}`;

const excCss = `.s_example_4_wrap{max-height:142px;}
.s_example_4_wrap .s_example_4{display:block;}
.s_example_4_wrap .s_example_4 .item .inner{display:block;background-color:rgb(238, 238, 238);padding:50px 0;text-align:center;}`;

const js = `$('.s_example_4').on('init', function(event, slick) {
  $(slick.$slides[0]).find('.t_example').addClass('on');
});
var Example3 = $('.s_example_4').not('.slick-initialized').slick({
  autoplay: true,
  autoplaySpeed: 2000,
  infinite: true,
  speed: 500,
  arrows:false,
  draggable: true,
  touchThreshold: 100,
  slidesToShow: 1,
  slidesToScroll: 1,
});
$('.s_example_4_wrap .mg_slick_btn.prev').on('click', function(e){
  e.preventDefault();
  Example3.slick('slickPrev');
});
$('.s_example_4_wrap .mg_slick_btn.next').on('click', function(e){
  e.preventDefault();
  Example3.slick('slickNext');
});
$('.s_example_4_wrap .mg_slick_btn.pause').on('click', function(e){
  e.preventDefault();
  Example3.slick('slickPause');
  $(this).hide();
  $('.s_example_4_wrap .mg_slick_btn.play').show();
});
$('.s_example_4_wrap .mg_slick_btn.play').on('click', function(e){
  e.preventDefault();
  Example3.slick('slickPlay');
  $(this).hide();
  $('.s_example_4_wrap .mg_slick_btn.pause').show();
});

$('.s_example_4').on('afterChange', function(event, slick, currentSlide) {
  $(slick.$slides[currentSlide]).find('.t_example').addClass('on');
  $(slick.$slides[currentSlide]).siblings().find('.t_example').removeClass('on');
});`;

const outJs = ``;

    return (
      <PageContent
        title={title}
        desc=""
        // image="/images/btn.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        outJs={outJs}
        items={["반응형 슬라이드", "커스텀 버튼", "afterChange"]}
        link="<%=dev_url_main%>/test/guide/slick.asp"
        onChange={onChange}
        version="no-padding"
      />
    )
  }
</script>