<script type="text/babel">
  'use strict';

  function Swiper4({ title, onChange }) {

const html = `<div class="mega_swiper mega_swiper_per_view">
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

const css = `.mega_swiper.mega_swiper_per_view {
	position: relative;
	height: 180px;
	overflow: hidden;
}
.mega_swiper_per_view .swiper-slide {
	display: flex;
	justify-content: center;
	align-items: center;
	font-size: 18px;
	text-align: center;
	background: #f1f1f1;
}
.swiper-slide img {
	display: block;
	width: 100%;
	height: 100%;
	object-fit: cover;
}`;

const excCss = `.mega_swiper .swiper-slide {
  text-align: center;
}`;

const js = `var swiper = new Swiper(".mega_swiper_per_view", {
	slidesPerView: 3,
	spaceBetween: 30,
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
        items={["반응형 슬라이드", "일정한 간격"]}
        // link="<%=dev_url_main%>/event/@template/index_swiper.asp"
        onChange={onChange}
      />
    )
  }
</script>