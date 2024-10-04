<script type="text/babel">
  'use strict';

  function Tab2Swiper({ title, onChange, simple = false }) {

const html = `<div class="tab-swiper-wrap">
    <div class="tab-base type-2 tab-swiper swiper-container">
        <div class="swiper-wrapper">
            <div class="swiper-slide on"><a href="javascript:void(0);">테스트1</a></div>
            <div class="swiper-slide"><a href="javascript:void(0);">테스트2</a></div>
            <div class="swiper-slide"><a href="javascript:void(0);">테스트3</a></div>
            <div class="swiper-slide"><a href="javascript:void(0);">테스트4</a></div>
            <div class="swiper-slide"><a href="javascript:void(0);">테스트5</a></div>
            <div class="swiper-slide"><a href="javascript:void(0);">테스트6</a></div>
            <div class="swiper-slide"><a href="javascript:void(0);">테스트7</a></div>
            <div class="swiper-slide"><a href="javascript:void(0);">테스트8</a></div>
            <div class="swiper-slide"><a href="javascript:void(0);">테스트9</a></div>
            <div class="swiper-slide"><a href="javascript:void(0);">테스트10</a></div>
            <div class="swiper-slide"><a href="javascript:void(0);">테스트11</a></div>
            <div class="swiper-slide"><a href="javascript:void(0);">테스트12</a></div>
            <div class="swiper-slide"><a href="javascript:void(0);">테스트13</a></div>
            <div class="swiper-slide"><a href="javascript:void(0);">테스트14</a></div>
            <div class="swiper-slide"><a href="javascript:void(0);">테스트15</a></div>
        </div>
    </div>
</div>`;

const css = ``;

const js = `var tabSwiper = new Swiper('.tab-swiper', {
    slidesPerView: 'auto',
    observer: true,
    observeParents: true,
    observeSlideChildren: true,
    on: {
        init: function(){
            $('.tab-swiper-wrap').addClass('active');
        }
    },
});

$('.tab-swiper .swiper-slide').on('click', function(e){
    e.preventDefault();
    var activeIndex = $('.tab-swiper .swiper-slide').index(this);
    $(this).addClass('on');
    $(this).siblings().removeClass('on');
    tabSwiper.slideTo(activeIndex, 300);
});

var tabSwiper_index = $('.tab-swiper .swiper-slide.on').index();
if (tabSwiper_index) {
    tabSwiper.slideTo(tabSwiper_index, 0)
}`;

    return (
      <PageContent
        title={title}
        desc="메가공무원에서 사용하는 탭 컴포넌트입니다."
        html={html}
        css={css}
        js={js}
        items={["탭", "검은배경", "캡슐", "스와이핑"]}
        link="<%=dev_url_main%>/test/heroyooi/component.asp?id=tab"
        file="test\heroyooi\component.asp"
        designFile="\\10.1.0.100\공무원사업본부_공무원 사업부\마케팅서비스실\웹디자인팀(공)\@디자인가이드\@new_탭.psd"
        simple={simple}
        onChange={onChange}
      />
    )
  }
</script>