<script type="text/babel">
  'use strict';

  function Slick8({ title, onChange }) {

const html = `<div class="mg_slick_wrap s_example_8_wrap">
  <div class="s_example_8">
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
  <div class="pager_t_example"></div>
</div>`;

const css = `.s_example_8_wrap .s_example_8{display: none;}
.s_example_8_wrap .s_example_8.slick-initialized{display: block;}
.s_example_8_wrap .slick-list{overflow:inherit;}
.s_example_8_wrap .slick-slide{width:250px;margin-right:10px;}
.s_example_8_wrap .slick-dotted.slick-slider{margin-bottom:0;}
.s_example_8_wrap .pager_t_example{margin-top:20px;}
.s_example_8_wrap .pager_t_example .slick-dots{margin-top:0;}
.s_example_8_wrap .pager_t_example .slick-dots li button{background-color:orange;}
.s_example_8_wrap .pager_t_example .slick-dots li.slick-active button{border:1px solid orange;background-color:#fff;}`;

const excCss = `.s_example_8_wrap{max-height:174px;}
.s_example_8_wrap .s_example_8{display:block;}`;

const js = `$('.s_example_8').not('.slick-initialized').slick({
  dots: true,
  appendDots: $('.s_example_8_wrap .pager_t_example'),
  infinite: true,
  arrows: false,
  variableWidth: true,
  touchThreshold: 100,
  slidesToShow: 4,
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
        items={["반응형 슬라이드", "가로형 n개 - 고정형"]}
        link="<%=dev_url_main%>/test/guide/slick.asp"
        onChange={onChange}
      />
    )
  }
</script>