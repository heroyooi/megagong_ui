<script type="text/babel">
  'use strict';

  function BannerMegaPass({ title, onChange }) {

const html = `<div class="main_wrp">
  <div class="wide_wrap flex first">
    <!-- S: 패스 배너 / main_passSlider -->
    <h3 class="blindw">메가패스</h3>
    <div id="main_passSlider" class="main_visualSlider bullet_topright pass">

        <div class="item">
            <a href="/s/gong/pass/sale_2025.asp#eventWrap" title="공무원 메가패스">
                <img src="<%=img_main%>/m/2024/0619_main/pass_1.png" class="hide_576" alt="공무원 메가패스" />
                <img src="<%=img_main%>/m/2024/0619_main/pass_1_mo.png" class="show_576" alt="공무원 메가패스" />
            </a>
        </div>
        <div class="item">
            <a href="/s/gong/pass/total_tech_sale_2025.asp#eventWrap" title="기술직 메가패스">
                <img src="<%=img_main%>/m/2024/0619_main/pass_2.png" class="hide_576" alt="기술직 메가패스" />
                <img src="<%=img_main%>/m/2024/0619_main/pass_2_mo.png" class="show_576" alt="기술직 메가패스" />
            </a>
        </div>

    </div><!-- / main_visualSlider -->
    <!-- E: 패스 배너 / main_passSlider -->


    <!-- S: 원픽 배너 / main_pickSlider -->
    <h3 class="blindw">메가 원픽 추천강좌</h3>
    <div id="main_pickSlider" class="main_visualSlider bullet_topright pick">

        <div class="item">
            <a href="/s/gong/event/2023/12260149/index.asp#eventWrap" title="공무원 프리티패스">
                <img src="<%=img_main%>/m/2024/0619_main/pick_1.png" class="hide_576" alt="공무원 프리티패스" />
                <img src="<%=img_main%>/m/2024/0619_main/pick_1_mo.png" class="show_576" alt="공무원 프리티패스" />
            </a>
        </div>
        <div class="item">
            <a href="/s/gong/event/2023/08220104/index.asp#eventWrap" title="RE-START 메가패스">
                <img src="<%=img_main%>/m/2024/0619_main/pick_2.png" class="hide_576" alt="RE-START 메가패스" />
                <img src="<%=img_main%>/m/2024/0619_main/pick_2_mo.png" class="show_576" alt="RE-START 메가패스" />
            </a>
        </div>

    </div><!-- / main_visualSlider -->
  </div>
</div>`;

const css = ``;

const excCss = `.main_wrp .wide_wrap.first{max-height:401px;}`;

const js = `$('.main_visualSlider').not('.slick-initialized').slick({
    infinite: false,
    autoplaySpeed: 3000,
    fade:true,
    autoplay:true,
    dots: true,
    arrows: false,
    draggable: true
});`;

    return (
      <PageContent
        title={title}
        desc=""
        image="/images/demo/main_banner_pass.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["패스 상품","메인 배너"]}
        link="<%=url_main%>/megagong.asp"
        onChange={onChange}
      />
    )
  }
</script>