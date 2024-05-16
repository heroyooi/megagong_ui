<script type="text/babel">
  'use strict';

  function Swiper3({ title, onChange }) {

const html = `<div class="mega_swiper mega_swiper_vertical">
	<div class="swiper-wrapper">
		<div class="swiper-slide">Slide 1</div>
		<div class="swiper-slide">Slide 2</div>
		<div class="swiper-slide">Slide 3</div>
		<div class="swiper-slide">Slide 4</div>
		<div class="swiper-slide">Slide 5</div>
		<div class="swiper-slide">Slide 6</div>
		<div class="swiper-slide">Slide 7</div>
		<div class="swiper-slide">Slide 8</div>
		<div class="swiper-slide">Slide 9</div>
	</div>
	<div class="swiper-pagination"></div>
</div>`;

const css = `.mega_swiper.mega_swiper_vertical {
	position: relative;
	height: 180px;
	overflow: hidden;
}
.mega_swiper .swiper-slide {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	background-color: #eee;
}`;

const excCss = `.mega_swiper .swiper-slide {
  text-align: center;
}`;

const js = `var swiper = new Swiper(".mega_swiper_vertical", {
	direction: "vertical",
	pagination: {
		el: ".swiper-pagination",
		clickable: true,
	},
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
        items={["반응형 슬라이드", "세로"]}
        // link="<%=dev_url_main%>/event/@template/index_swiper.asp"
        onChange={onChange}
      />
    )
  }
</script>