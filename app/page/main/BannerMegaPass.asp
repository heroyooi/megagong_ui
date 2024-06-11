<script type="text/babel">
  'use strict';

  function BannerMegaPass({ title, onChange }) {

const html = `<div class="main_wrp">
  <div class="wide_wrap flex first">
    <!-- S: �н� ��� / main_passSlider -->
    <h3 class="blindw">�ް��н�</h3>
    <div id="main_passSlider" class="main_visualSlider bullet_topright pass">

        <div class="item">
            <a href="/s/gong/pass/sale_2025.asp#eventWrap" title="������ �ް��н�">
                <img src="<%=img_main%>/m/2024/0619_main/pass_1.png" class="hide_576" alt="������ �ް��н�" />
                <img src="<%=img_main%>/m/2024/0619_main/pass_1_mo.png" class="show_576" alt="������ �ް��н�" />
            </a>
        </div>
        <div class="item">
            <a href="/s/gong/pass/total_tech_sale_2025.asp#eventWrap" title="����� �ް��н�">
                <img src="<%=img_main%>/m/2024/0619_main/pass_2.png" class="hide_576" alt="����� �ް��н�" />
                <img src="<%=img_main%>/m/2024/0619_main/pass_2_mo.png" class="show_576" alt="����� �ް��н�" />
            </a>
        </div>

    </div><!-- / main_visualSlider -->
    <!-- E: �н� ��� / main_passSlider -->


    <!-- S: ���� ��� / main_pickSlider -->
    <h3 class="blindw">�ް� ���� ��õ����</h3>
    <div id="main_pickSlider" class="main_visualSlider bullet_topright pick">

        <div class="item">
            <a href="/s/gong/event/2023/12260149/index.asp#eventWrap" title="������ ����Ƽ�н�">
                <img src="<%=img_main%>/m/2024/0619_main/pick_1.png" class="hide_576" alt="������ ����Ƽ�н�" />
                <img src="<%=img_main%>/m/2024/0619_main/pick_1_mo.png" class="show_576" alt="������ ����Ƽ�н�" />
            </a>
        </div>
        <div class="item">
            <a href="/s/gong/event/2023/08220104/index.asp#eventWrap" title="RE-START �ް��н�">
                <img src="<%=img_main%>/m/2024/0619_main/pick_2.png" class="hide_576" alt="RE-START �ް��н�" />
                <img src="<%=img_main%>/m/2024/0619_main/pick_2_mo.png" class="show_576" alt="RE-START �ް��н�" />
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
        items={["�н���ǰ","���ι��"]}
        link="<%=url_main%>/megagong.asp"
        onChange={onChange}
      />
    )
  }
</script>