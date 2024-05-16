<script type="text/babel">
  'use strict';

  function Swiper5({ title, onChange }) {

const html = `<ul class="swiper_tab_list">
	<li class="swiper_tab active">첫번째 탭</li>
	<li class="swiper_tab">두번째 탭</li>
	<li class="swiper_tab">세번째 탭</li>
</ul>
<div class="mega_swiper mega_swiper_tab">
	<div class="swiper-wrapper">
		<div class="swiper-slide">Slide 1</div>
		<div class="swiper-slide">Slide 2</div>
		<div class="swiper-slide">Slide 3</div>
		</div>
</div>`;

const css = `.swiper_tab_list{
	display: flex;
	align-items:center
}
.swiper_tab_list li{
	flex:1;
	padding: 10px 0;
	background: #d9d9d9;
	cursor: pointer;
}
.swiper_tab_list li.active{
	background: #bebebe; 
}
.mega_swiper.mega_swiper_tab {
	position: relative;
	height: 180px;
	overflow: hidden;
}
.mega_swiper_tab .swiper-slide {
	display: flex;
	justify-content: center;
	align-items: center;
	font-size: 18px;
	text-align: center;
	background: #f1f1f1;
}`;

const excCss = `.mega_swiper .swiper-slide {
  text-align: center;
}
.swiper_tab_list li {
	text-align: center;
}`;

const js = `//랜덤 재생일 경우
// var tabLength =$('.swiper_tab_list li').length;
// var randomNum = Math.floor(Math.random()*tabLength)
// setTimeout(function(){
// 	$('.swiper_tab.active').removeClass("active");
// 	$('.swiper_tab').eq(randomNum).click()
// },50)

var tabSwiper = new Swiper('.mega_swiper_tab', {
	loop: true,
	autoplay:{
		delay:3000,
		disableOnInteraction: false //탭 클릭시 자동재생 유지
	},
	on: { 
		beforeTransitionStart: function (swiper, speed, internal) {
		 	//loop true일 경우 realIndex, 아닌 경우 activeIndex
			const activeIndex = ($(this)[0].params.loop) ? $(this)[0].realIndex : $(this)[0].activeIndex;
			// const activeIndex = $(this)[0].realIndex;
			$('.swiper_tab.active').removeClass("active");
			$('.swiper_tab').eq(activeIndex).addClass("active");
		},							
	}
});

$('.swiper_tab').on('click', function () {
	//loop true일 경우 slideToLoop, 아닌 경우 slideTo
	if (tabSwiper.params.loop) {
		tabSwiper.slideToLoop($(this).index(), 0, false)
	} else { 
		tabSwiper.slideTo($(this).index(), 0, false)
	}
	$('.swiper_tab.active').removeClass("active");
	$(this).addClass("active");
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
        items={["반응형 슬라이드", "탭", "자동재생"]}
        // link="<%=dev_url_main%>/event/@template/index_swiper.asp"
        onChange={onChange}
      />
    )
  }
</script>