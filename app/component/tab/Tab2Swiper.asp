<script type="text/babel">
  'use strict';

  function Tab2Swiper({ title, onChange, simple = false }) {

const html = `<div class="tab-swiper-wrap">
    <div class="tab-base type-2 tab-swiper swiper-container">
        <div class="swiper-wrapper">
            <div class="swiper-slide on"><a href="javascript:void(0);">�׽�Ʈ1</a></div>
            <div class="swiper-slide"><a href="javascript:void(0);">�׽�Ʈ2</a></div>
            <div class="swiper-slide"><a href="javascript:void(0);">�׽�Ʈ3</a></div>
            <div class="swiper-slide"><a href="javascript:void(0);">�׽�Ʈ4</a></div>
            <div class="swiper-slide"><a href="javascript:void(0);">�׽�Ʈ5</a></div>
            <div class="swiper-slide"><a href="javascript:void(0);">�׽�Ʈ6</a></div>
            <div class="swiper-slide"><a href="javascript:void(0);">�׽�Ʈ7</a></div>
            <div class="swiper-slide"><a href="javascript:void(0);">�׽�Ʈ8</a></div>
            <div class="swiper-slide"><a href="javascript:void(0);">�׽�Ʈ9</a></div>
            <div class="swiper-slide"><a href="javascript:void(0);">�׽�Ʈ10</a></div>
            <div class="swiper-slide"><a href="javascript:void(0);">�׽�Ʈ11</a></div>
            <div class="swiper-slide"><a href="javascript:void(0);">�׽�Ʈ12</a></div>
            <div class="swiper-slide"><a href="javascript:void(0);">�׽�Ʈ13</a></div>
            <div class="swiper-slide"><a href="javascript:void(0);">�׽�Ʈ14</a></div>
            <div class="swiper-slide"><a href="javascript:void(0);">�׽�Ʈ15</a></div>
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
        desc="�ް����������� ����ϴ� �� ������Ʈ�Դϴ�."
        html={html}
        css={css}
        js={js}
        items={["��", "�������", "ĸ��", "��������"]}
        link="<%=dev_url_main%>/test/heroyooi/component.asp?id=tab"
        file="test\heroyooi\component.asp"
        designFile="\\10.1.0.100\�������������_������ �����\�����ü��񽺽�\����������(��)\@�����ΰ��̵�\@new_��.psd"
        simple={simple}
        onChange={onChange}
      />
    )
  }
</script>