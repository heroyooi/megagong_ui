<script type="text/babel">
  'use strict';

  function Slick6({ title, onChange }) {

const html = `<div class="mg_slick_wrap s_example_6_wrap">
  <div class="s_example_6">
    <div class="item"><span class="inner">Slide 1</span></div>
    <div class="item"><span class="inner">Slide 2</span></div>
    <div class="item"><span class="inner">Slide 3</span></div>
    <div class="item"><span class="inner">Slide 4</span></div>
    <div class="item"><span class="inner">Slide 5</span></div>
    <div class="item"><span class="inner">Slide 6</span></div>
    <div class="item"><span class="inner">Slide 7</span></div>
    <div class="item"><span class="inner">Slide 8</span></div>
  </div>
</div>`;

const css = `.s_example_6_wrap .s_example_6{display: none;}
.s_example_6_wrap .s_example_6.slick-initialized{display: block;}`;

const excCss = `.s_example_6_wrap{max-height:141px;}
.s_example_6_wrap .s_example_6{display:block;}
.s_example_6_wrap .s_example_6 .item .inner{display:block;background-color:rgb(238, 238, 238);padding:50px 0;text-align:center;}`;

const js = `$(".s_example_6").not('.slick-initialized').slick({
  slidesToShow: 1,
  slidesToScroll: 1,
  touchThreshold: 100,
  arrows: false,
  infinite: false,
  responsive: [{
    breakpoint: 1024,
    settings: {
      slidesToShow: 3,
      dots: true
    }
  }, {
    breakpoint: 768,
    settings: {
      slidesToShow: 2,
      dots: true
    }
  }, {
    breakpoint: 414,
    settings: {
      slidesToShow: 1
    }
  }, {
    breakpoint: 300,
    settings: "unslick" // destroys slick
  }]
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
        items={["반응형 슬라이드", "구간별 제어", "unslick"]}
        link="<%=dev_url_main%>/test/guide/slick.asp"
        onChange={onChange}
      />
    )
  }
</script>