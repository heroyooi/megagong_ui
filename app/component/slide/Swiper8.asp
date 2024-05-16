<script type="text/babel">
  'use strict';

  function Swiper8({ title, onChange }) {

const html = `<div class="mega_swiper mega_swiper_destroy">
	<div class="swiper-wrapper">
		<div class="swiper-slide">1번째</div>
		<div class="swiper-slide">2번째</div>
		<div class="swiper-slide">3번째</div>
	</div>
	<div class="swiper-pagination"></div>
</div>`;

const css = `.mega_swiper_destroy .swiper-wrapper {
	gap: 10px;
}
.mega_swiper_destroy .swiper-slide {
	display: flex; 
	flex: 1 1 auto; 
	height: 125px;
}		
.mega_swiper_destroy .swiper-pagination {
	display: none;
}
@media screen and (max-width: 992px){
	.mega_swiper_destroy {
		position: relative; overflow: hidden;
	}
	.mega_swiper_destroy .swiper-wrapper {
		gap: 0;
	}
	.mega_swiper_destroy .swiper-slide {
		flex: 1 0 100%;
	}
	.mega_swiper_destroy .swiper-pagination {
		display: block; bottom: -5vw;
	}
}`;

const excCss = `.mega_swiper .swiper-slide {
  text-align: center;
	background-color: #eee;
	padding: 50px 0;
	justify-content: center;
}
.mega_swiper_thumb_list .tab {
	text-align: center;
}`;

const js = `var windowWidth = $(window).innerWidth();
var destroySwiper = undefined;

function initdestroySwiper() {
	if (windowWidth < 993 && destroySwiper == undefined) {
		destroySwiper = new Swiper('.mega_swiper_destroy', {
			slidesPerView: 1,
			slidesPerColumn: 1,
			spaceBetween: 20,			
			loop: true,
			touchRatio: 1,
			autoHeight: true,
			autoplay: { 
				delay: 3000,
				disableOnInteraction: false, 
			},			
		})
	} else if (windowWidth >= 993 && destroySwiper != undefined) {
		destroySwiper.destroy();
		destroySwiper = undefined;
	}
}

initdestroySwiper();

var timer = null;
$(window).on('resize', function() {
	clearTimeout(timer);
	timer = setTimeout(function() {
		windowWidth = $(window).innerWidth();
		initdestroySwiper();
	}, 200)
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
        items={["반응형 슬라이드", "PC - Destroy", "Mobile - Swiper"]}
        // link="<%=dev_url_main%>/event/@template/index_swiper.asp"
        onChange={onChange}
      />
    )
  }
</script>