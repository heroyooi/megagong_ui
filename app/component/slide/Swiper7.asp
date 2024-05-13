<script type="text/babel">
  'use strict';

  function Swiper7({ title, error, errorLink, onChange }) {

const html = `<div class="mega_swiper mega_swiper_responsive">
	<div class="swiper-wrapper">
		<div class="swiper-slide">1��°</div>
		<div class="swiper-slide">2��°</div>
		<div class="swiper-slide">3��°</div>
		<div class="swiper-slide">4��°</div>
		<div class="swiper-slide">5��°</div>
		<div class="swiper-slide">6��°</div>
		<div class="swiper-slide">7��°</div>
		<div class="swiper-slide">8��°</div>
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
	background-color: #eee;
	padding: 50px 0;
}
.mega_swiper_thumb_list .tab {
	text-align: center;
}`;

const js = `var responsiveSwiper = new Swiper(".mega_swiper_responsive", {
	slidesPerView: 1,
	slidesPerColumn: 1,
	spaceBetween: 10,			
	loop: true,
	touchRatio: 1,
	autoplay: { 
		delay: 3000,
		disableOnInteraction: false, 
	},			
	pagination: {
		el: '.swiper-pagination',
		clickable: true,
	},
	navigation: {
		nextEl: ".swiper-button-next",
		prevEl: ".swiper-button-prev",
	},
	breakpoints:{
		768: {
			slidesPerView: 2,
			slidesPerColumn: 2,
			autoplay : false,
			// touchRatio: 0, //�巡�� ����
		},
		1200: {
			slidesPerView: 3,
			slidesPerColumn: 3,
		}
	}
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
        items={["������ �����̵�", "�����̵� �� ����"]}
        // link="<%=dev_url_main%>/event/@template/index_swiper.asp"
				error={error}
				errorLink={errorLink}
        onChange={onChange}
        version="no-padding"
      />
    )
  }
</script>