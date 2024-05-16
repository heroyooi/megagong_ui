<script type="text/babel">
  'use strict';

  function Slick3({ title, onChange }) {

const html = `<div class="mg_slick_wrap s_example_3_wrap">
  <div class="s_example_3">
    <div class="item"><span class="inner">Slide 1</span><span class="t_example">1</span></div>
    <div class="item"><span class="inner">Slide 2</span><span class="t_example">2</span></div>
    <div class="item"><span class="inner">Slide 3</span><span class="t_example">3</span></div>
    <div class="item"><span class="inner">Slide 4</span><span class="t_example">4</span></div>
    <div class="item"><span class="inner">Slide 5</span><span class="t_example">5</span></div>
  </div>
</div>`;

const css = `.s_example_3_wrap .s_example_3{display: none;}
.s_example_3_wrap .s_example_3.slick-initialized{display: block;}
.s_example_3_wrap .slick-slide .t_example{position:absolute;left:10px;top:10px;font-size:12px;background-color:#000;color:#fff;padding:10px;border-radius:5px;display:block;z-index:1;transition:all 0.3s;line-height:1;}
.s_example_3_wrap .slick-slide .t_example.on{background-color:#fff;color:#000;font-size:14px;}

@media screen and (max-width: 810px) {
  .s_example_3_wrap{width:100%;}
}`;

const excCss = `.s_example_3_wrap{max-height:121px;}
.s_example_3_wrap .s_example_3{display:block;}
.s_example_3_wrap .s_example_3 .item .inner{display:block;background-color:rgb(238, 238, 238);padding:50px 0;text-align:center;}`;

const js = `$('.s_example_3').on('init', function(event, slick) {
  $(slick.$slides[0]).find('.t_example').addClass('on');
});
var Example2 = $('.s_example_3').not('.slick-initialized').slick({
  autoplay: true,
  autoplaySpeed: 2000,
  infinite: false,
  speed: 500,
  arrows: false,
  draggable: true,
  touchThreshold: 100,
  slidesToShow: 1,
  slidesToScroll: 1,
});
Example2.on('beforeChange', function(event, slick, currentSlide, nextSlide){
  $(slick.$slides[nextSlide]).siblings().find('.t_example').removeClass('on');
  $(slick.$slides[nextSlide]).find('.t_example').addClass('on');
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
        items={["반응형 슬라이드", "초기화", "beforeChange"]}
        link="<%=dev_url_main%>/test/guide/slick.asp"
        onChange={onChange}
      />
    )
  }
</script>