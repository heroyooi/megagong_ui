<script type="text/babel">
  'use strict';

  function Slick5({ title, onChange }) {

const html = `<div class="mg_slick_wrap s_example_5_wrap">
  <div class="s_example_5">
    <div class="item"><span class="inner">Slide 1</span></div>
    <div class="item"><span class="inner">Slide 2</span></div>
    <div class="item"><span class="inner">Slide 3</span></div>
    <div class="item"><span class="inner">Slide 4</span></div>
    <div class="item"><span class="inner">Slide 5</span></div>
  </div>
</div>`;

const css = `.s_example_5_wrap .s_example_5{display: none;}
.s_example_5_wrap .s_example_5.slick-initialized{display: block;}`;

const excCss = `.s_example_5_wrap{max-height:141px;}
.s_example_5_wrap .s_example_5{display:block;}
.s_example_5_wrap .s_example_5 .item .inner{display:block;background-color:rgb(238, 238, 238);padding:50px 0;text-align:center;}`;

const js = `$('.s_example_5').not('.slick-initialized').slick({
  autoplay: true,
  autoplaySpeed: 2000,
  arrows: false,
  dots: true,
  infinite: true,
  vertical: true,
  verticalSwiping: true,
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
        items={["반응형 슬라이드", "세로형"]}
        link="<%=dev_url_main%>/test/guide/slick.asp"
        onChange={onChange}
        version="no-padding"
      />
    )
  }
</script>