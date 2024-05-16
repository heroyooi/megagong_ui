<script type="text/babel">
  'use strict';

  function Swiper2({ title, onChange }) {

const html = `<div class="mega_swiper mega_swiper_autoplay">
	<div class="swiper-wrapper">
		<div class="swiper-slide">Slide 1</div>
		<div class="swiper-slide">Slide 2</div>
		<div class="swiper-slide">Slide 3</div>
	</div>
	<div class="swiper-pagination"></div>
	<div class="swiper-button-prev"></div>
	<div class="swiper-button-next"></div>
</div>`;

const css = `.mega_swiper {
	position: relative;
	overflow: hidden;
}
.mega_swiper .swiper-slide {
	background-color: #eee;
	padding: 50px 0;
}`;

const excCss = `.mega_swiper .swiper-slide {
  text-align: center;
}`;

const js = `new Swiper('.mega_swiper_autoplay', {
	navigation: {
		nextEl: ".swiper-button-next",
		prevEl: ".swiper-button-prev",
	},
	pagination: {
		el: ".swiper-pagination",
	},
	autoplay: {
		delay: 3000, //◀ 안써도 3초 기본세팅상태
		disableOnInteraction: true, //◀ 안써도 true 기본세팅상태
		pauseOnMouseEnter: false, //◀ 안써도 false 기본세팅상태
		reverseDirection: false, //◀ 안써도 false 기본세팅상태
		stopOnLastSlide: false, //◀ 안써도 false 기본세팅상태
		waitForTransition: true //◀ 안써도 true 기본세팅상태
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
        items={["반응형 슬라이드", "자동"]}
        // link="<%=dev_url_main%>/event/@template/index_swiper.asp"
        onChange={onChange}
      />
    )
  }
</script>