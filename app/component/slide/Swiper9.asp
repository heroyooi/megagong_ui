<script type="text/babel">
  'use strict';

  function Swiper9({ title, onChange }) {

const html = `<div class="mega_swiper mega_swiper_scroll" id="mega_swiper_scroll">
	<div class="swiper-wrapper">
		<div class="swiper-slide">1번째</div>
		<div class="swiper-slide">2번째</div>
		<div class="swiper-slide">3번째</div>
	</div>
	<div class="swiper-scrollbar show-768"></div>
</div>`;

const css = `#mega_swiper_scroll .swiper-wrapper {
	gap: 10px;
}
#mega_swiper_scroll .swiper-slide {
	flex:1
}		
#mega_swiper_scroll .swiper-scrollbar {
	display: none;
}

@media screen and (max-width: 768px){
	#mega_swiper_scroll {
		position: relative;
		overflow: hidden;
	}
	#mega_swiper_scroll .swiper-slide {
		width: 300px;
		flex:none;
	}
	#mega_swiper_scroll .swiper-scrollbar {
		display: block;
		position: relative;
		margin-top: 15px;
		left: auto;
		top: auto;
		height: 8px;
		width: 100%;
		z-index: 1;
	} 		
    #mega_swiper_scroll .swiper-scrollbar .swiper-scrollbar-drag {
	  	background-color: #007aff;
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

const js = `new Swiper('.mega_swiper_scroll', {
	slidesPerView: 'auto',			
	scrollbar: {
		el: '.mega_swiper_scroll .swiper-scrollbar',
		draggable: true,
	},	
	breakpoints: {
		769: {
			scrollbar: {
				draggable: false,
			},
		},
	}										
})`;

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
        items={["반응형 슬라이드", "스크롤"]}
        // link="<%=dev_url_main%>/event/@template/index_swiper.asp"
        onChange={onChange}
      />
    )
  }
</script>