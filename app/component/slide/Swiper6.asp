<script type="text/babel">
  'use strict';

  function Swiper6({ title, onChange }) {

const html = `<div class="mega_swiper_thumb_list">
	<div class="swiper-wrapper">
		<div class="swiper-slide tab">ù��° ��</div>
		<div class="swiper-slide tab">�ι�° ��</div>
		<div class="swiper-slide tab">����° ��</div>
		<div class="swiper-slide tab">�׹�° ��</div>
	</div>
</div>
<div class="mega_swiper mega_swiper_thumb">
	<div class="swiper-wrapper">
		<div class="swiper-slide">Slide 1</div>
		<div class="swiper-slide">Slide 2</div>
		<div class="swiper-slide">Slide 3</div>
		<div class="swiper-slide">Slide 4</div>
		</div>
</div>`;

const css = `.mega_swiper_thumb_list{
	overflow:hidden;
}
.mega_swiper_thumb_list .tab{
	padding:10px 0;
	background-color:#d9d9d9;
	cursor:pointer;
}
.mega_swiper_thumb_list .tab.swiper-slide-thumb-active{
	background-color:#bebebe;
}
`;

const excCss = `.mega_swiper .swiper-slide {
  text-align: center;
	background-color: #eee;
	padding: 50px 0;
}
.mega_swiper_thumb_list .tab {
	text-align: center;
}`;

const js = `var thumbListSwiper = new Swiper(".mega_swiper_thumb_list", {
	// loop: true,
	slidesPerView: 3,
	watchSlidesProgress: true,
});

var thumSwiper = new Swiper(".mega_swiper_thumb", {
	loop: true,
	thumbs: {
		swiper: thumbListSwiper,
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
        items={["������ �����̵�", "��", "�����"]}
        // link="<%=dev_url_main%>/event/@template/index_swiper.asp"
        onChange={onChange}
        version="no-padding"
      />
    )
  }
</script>