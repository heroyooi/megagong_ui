<script type="text/babel">
  'use strict';

  function Slick7({ title, onChange }) {

const html = `<div class="mg_slick_wrap s_example_7_wrap">
  <div class="s_example_7">
    <div><span class="img_cover"><img src="https://www.hyundai.com/static/images/model/sonata/23my/sonata_gallery_sensuous_front_side.jpg" alt=""></span></div>
    <div><span class="img_cover"><img src="https://www.hyundai.com/static/images/model/sonata/23my/sonata_gallery_sensuous_driving_on_the_road.jpg" alt=""></span></div>
    <div><span class="img_cover"><img src="https://www.hyundai.com/static/images/model/sonata/23my/sonata_gallery_sensuous_gasoline_2_point_0_inspiration_full_option_front_side.jpg" alt=""></span></div>
    <div><span class="img_cover"><img src="https://www.hyundai.com/static/images/model/sonata/23my/sonata_gallery_sensuous_gasoline_1_point_6_turbo_inspiration_full_option_top_view.jpg" alt=""></span></div>
    <div><span class="img_cover"><img src="https://www.hyundai.com/static/images/model/sonata/23my/sonata_gallery_inspiration_full_option_interior.jpg" alt=""></span></div>
    <div><span class="img_cover"><img src="https://www.hyundai.com/static/images/model/sonata/23my/sonata_gallery_sensuous_front_side.jpg" alt=""></span></div>
    <div><span class="img_cover"><img src="https://www.hyundai.com/static/images/model/sonata/23my/sonata_gallery_sensuous_driving_on_the_road.jpg" alt=""></span></div>
    <div><span class="img_cover"><img src="https://www.hyundai.com/static/images/model/sonata/23my/sonata_gallery_sensuous_gasoline_2_point_0_inspiration_full_option_front_side.jpg" alt=""></span></div>
    <div><span class="img_cover"><img src="https://www.hyundai.com/static/images/model/sonata/23my/sonata_gallery_sensuous_gasoline_1_point_6_turbo_inspiration_full_option_top_view.jpg" alt=""></span></div>
    <div><span class="img_cover"><img src="https://www.hyundai.com/static/images/model/sonata/23my/sonata_gallery_inspiration_full_option_interior.jpg" alt=""></span></div>
    <div><span class="img_cover"><img src="https://www.hyundai.com/static/images/model/sonata/23my/sonata_gallery_sensuous_front_side.jpg" alt=""></span></div>
    <div><span class="img_cover"><img src="https://www.hyundai.com/static/images/model/sonata/23my/sonata_gallery_sensuous_driving_on_the_road.jpg" alt=""></span></div>
    <div><span class="img_cover"><img src="https://www.hyundai.com/static/images/model/sonata/23my/sonata_gallery_sensuous_gasoline_2_point_0_inspiration_full_option_front_side.jpg" alt=""></span></div>
    <div><span class="img_cover"><img src="https://www.hyundai.com/static/images/model/sonata/23my/sonata_gallery_sensuous_gasoline_1_point_6_turbo_inspiration_full_option_top_view.jpg" alt=""></span></div>
    <div><span class="img_cover"><img src="https://www.hyundai.com/static/images/model/sonata/23my/sonata_gallery_inspiration_full_option_interior.jpg" alt=""></span></div>
    <div><span class="img_cover"><img src="https://www.hyundai.com/static/images/model/sonata/23my/sonata_gallery_sensuous_front_side.jpg" alt=""></span></div>
    <div><span class="img_cover"><img src="https://www.hyundai.com/static/images/model/sonata/23my/sonata_gallery_sensuous_driving_on_the_road.jpg" alt=""></span></div>
    <div><span class="img_cover"><img src="https://www.hyundai.com/static/images/model/sonata/23my/sonata_gallery_sensuous_gasoline_2_point_0_inspiration_full_option_front_side.jpg" alt=""></span></div>
    <div><span class="img_cover"><img src="https://www.hyundai.com/static/images/model/sonata/23my/sonata_gallery_sensuous_gasoline_1_point_6_turbo_inspiration_full_option_top_view.jpg" alt=""></span></div>
    <div><span class="img_cover"><img src="https://www.hyundai.com/static/images/model/sonata/23my/sonata_gallery_inspiration_full_option_interior.jpg" alt=""></span></div>
  </div>
</div>`;

const css = `.s_example_7_wrap .s_example_7{display: none;}
.s_example_7_wrap .s_example_7.slick-initialized{display: block;}
.s_example_7_wrap .slick-list{overflow:inherit;}
.s_example_7_wrap .img_cover{display:block;padding:0 5px;}`;

const excCss = `.s_example_7_wrap{max-height:263px;}
.s_example_7_wrap .s_example_7{display:block;}
.s_example_7_wrap .s_example_7 .item .inner{display:block;background-color:rgb(238, 238, 238);padding:50px 0;text-align:center;}`;

const js = `$('.s_example_7').not('.slick-initialized').slick({
  dots: true,
  arrows: false,
  infinite: true,
  touchThreshold: 100,
  slidesToShow: 3,
  slidesToScroll: 1,
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
        items={["반응형 슬라이드", "가로형 n개 - 반응형"]}
        link="<%=dev_url_main%>/test/guide/slick.asp"
        onChange={onChange}
      />
    )
  }
</script>