<script type="text/babel">
  'use strict';

  function Slick2({ title, onChange }) {

const html = `<div class="mg_slick_wrap s_example_2_wrap">
  <div class="s_example_2">
    <div><img src="https://www.hyundai.com/static/images/model/sonata/23my/sonata_gallery_sensuous_front_side.jpg" alt=""></div>
    <div><img src="https://www.hyundai.com/static/images/model/sonata/23my/sonata_gallery_sensuous_driving_on_the_road.jpg" alt=""></div>
    <div><img src="https://www.hyundai.com/static/images/model/sonata/23my/sonata_gallery_sensuous_gasoline_2_point_0_inspiration_full_option_front_side.jpg" alt=""></div>
    <div><img src="https://www.hyundai.com/static/images/model/sonata/23my/sonata_gallery_sensuous_gasoline_1_point_6_turbo_inspiration_full_option_top_view.jpg" alt=""></div>
    <div><img src="https://www.hyundai.com/static/images/model/sonata/23my/sonata_gallery_inspiration_full_option_interior.jpg" alt=""></div>
  </div>
  <a href="#" class="mg_slick_btn tp1 prev">이전</a>
  <a href="#" class="mg_slick_btn tp1 next">다음</a>
</div>`;

const css = `.s_example_2_wrap{max-width:750px;}
.s_example_2_wrap .s_example_2{display: none;}
.s_example_2_wrap .s_example_2.slick-initialized{display: block;}
.s_example_2_wrap .slick-slide img{transform:scale(1.05);transition:transform 1.5s cubic-bezier(.58, .36, .84, .87);}
.s_example_2_wrap .slick-slide.slick-active img{transform:scale(1.0);}
.s_example_2_wrap .slick-slide .item .inner{display:block;background-color:rgb(238, 238, 238);padding:50px 0;text-align:center;margin:0 5px;}
.s_example_2_wrap .mg_slick_btn.prev{left:-30px;}
.s_example_2_wrap .mg_slick_btn.next{right:-30px;}`;

const excCss = `.s_example_2_wrap{max-height:430px;}
.s_example_2_wrap .s_example_2{display:block;}`;

const js = `var Example1 = $('.s_example_2').not('.slick-initialized').slick({
  autoplay: true,
  autoplaySpeed: 3000,
  fade: true,
  dots: false,
  infinite: true,
  speed: 500,
  arrows:false,
  draggable: true,
  touchThreshold: 100,
  slidesToShow: 1,
  slidesToScroll: 1,
});
$('.s_example_2_wrap .mg_slick_btn.prev').on('click', function(e){
  e.preventDefault();
  Example1.slick('slickPrev');
});
$('.s_example_2_wrap .mg_slick_btn.next').on('click', function(e){
  e.preventDefault();
  Example1.slick('slickNext');
});
`;

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
        items={["반응형 슬라이드", "전환효과", "자동재생"]}
        link="<%=dev_url_main%>/test/guide/slick.asp"
        onChange={onChange}
        version="no-padding"
      />
    )
  }
</script>