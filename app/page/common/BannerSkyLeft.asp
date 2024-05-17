<script type="text/babel">
  'use strict';

  function BannerSkyLeft({ title, onChange }) {

const html = `<div id="main_sky_bs_left" class="main_sky_bs_left renew gong top_re">
  <div class="inner">
    <div class="main_sky_banner">
      <div class="item">
          <a href="/s/gong/event/2023/12210048/index.asp#evCon6" title="핵심 개념부터 실전 훈련까지 한번에 끝! 한국사 전한길" tabindex="-1">
              <img src="https://img.megagong.net/m/2024/0412_mainbnr/bnr_1_2.png" alt="">
          </a>
      </div>
      <div class="item">
          <a href="/event/2023/12270045/index.asp#event1" title="마지막 합격기회를 1등*으로 사수하라! 행정학 신용한" tabindex="-1">
              <img src="https://img.megagong.net/m/2024/0412_mainbnr/bnr_2_2.png" alt="">
          </a>
      </div>
      <div class="item">
          <a href="/s/gong/event/2024/04040032/index.asp#con2" title="2024 지방직 패키지로 완벽하게 합격을 마무리 하라, 행정법 유휘운" tabindex="-1">
              <img src="https://img.megagong.net/m/2024/0412_mainbnr/bnr_3.png" alt="">
          </a>
      </div>
    </div>
  </div>
  <a href="#" class="btn_toggle_sky_bs"></a>
</div>`;

const css = ``;

const excCss = `.main_sky_bs_left.renew{position:relative;margin:0;top:0;right:initial;}`;

const js = `$('.main_sky_banner:not(.no_slick)').not('.slick-initialized').slick({
  autoplay: true,
  dots:true,
  adaptiveHeight: true,
  fade:true,
  arrows: false,
});`;

    return (
      <PageContent
        title={title}
        desc=""
        // image="/images/popup1.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["좌측상단배너","1타강사"]}
        link="<%=url_main%>/megagong.asp"
        onChange={onChange}
      />
    )
  }
</script>