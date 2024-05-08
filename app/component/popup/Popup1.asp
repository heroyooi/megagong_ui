<script type="text/babel">
  'use strict';

  function Popup1({ title, onChange }) {

const html = `<div id="mcg_fixbn">
  <a href="javascript:;" onclick="mainHide('#mcg_fixbn')" class="close"><img src="<%=img_main%>/common/btn_close_right_bottom_bnr.png" alt="닫기"></a>

  <div class="mcg_fixbn commonSlider">
    <div class="item">
        <a href="/s/gong/event/2021/05270068/index.asp#eventWrap" title="2024 국가직 9급 필기 합격 인증하고 아이패드, 상품권 받아가세요!" class="bnr-link" target="_blank"></a>
        <div class="img_wrap"><img src="<%=img_main%>/m/2024/0502_gongpass/bnr_gong1.png" alt="2024 국가직 9급 필기 합격 인증하고 아이패드, 상품권 받아가세요!"></div>
    </div>
    <div class="item">
        <a href="/s/gong/event/2021/05270068/index.asp#eventWrap" title="2024 국가직 9급 필기 합격 인증하고 아이패드, 상품권 받아가세요!" class="bnr-link" target="_blank"></a>
        <div class="img_wrap"><img src="<%=img_main%>/m/2024/0502_gongpass/bnr_gong1.png" alt="2024 국가직 9급 필기 합격 인증하고 아이패드, 상품권 받아가세요!"></div>
    </div>
    <div class="item">
        <a href="/s/gong/event/2021/05270068/index.asp#eventWrap" title="2024 국가직 9급 필기 합격 인증하고 아이패드, 상품권 받아가세요!" class="bnr-link" target="_blank"></a>
        <div class="img_wrap"><img src="<%=img_main%>/m/2024/0502_gongpass/bnr_gong1.png" alt="2024 국가직 9급 필기 합격 인증하고 아이패드, 상품권 받아가세요!"></div>
    </div>
  </div>
</div>`;

const css = `#mcg_fixbn{position: fixed;top:auto; bottom: 24px; right: .5%;width: 240px;z-index: 3;}
.mcg_fixbn.commonSlider{display: none !important;}
.mcg_fixbn.commonSlider.slick-initialized {display: inline-block !important;}
.mcg_fixbn.commonSlider a {display:block;}
.mcg_fixbn.commonSlider a.bnr-link {position: absolute; width: 100%; height: 180px; bottom: 0; left: 0;}
.mcg_fixbn.commonSlider .close{z-index: 6;position: absolute; right: 5px; top: -27px; width: 17px; height: 17px; display: none;}
.mcg_fixbn.commonSlider .slick-arrow {display:none!important;}
.mcg_fixbn.commonSlider .item {position: relative;text-align: center;}
.mcg_fixbn.commonSlider .item .img_wrap {display: flex; height: 100%; align-items: flex-end;}
.mcg_fixbn.commonSlider .item img {display:inline-block;}
.mcg_fixbn.commonSlider .slick-dots {position:absolute;bottom:-15px;left:0;right:0;font-size:0;text-align: center;}
.mcg_fixbn.commonSlider .slick-dots li {display:inline-block;margin:0 2px;}
.mcg_fixbn.commonSlider .slick-dots button {width:8px;height: 8px;border-radius: 50%;background:#000;opacity:.5;font-size:0;}
.mcg_fixbn.commonSlider .slick-dots .slick-active button {opacity: 1;}

@media (max-width: 1200px){
    #mcg_fixbn{display: none;}
}`;

const excCss = `#mcg_fixbn{position: relative;bottom:initial;right:initial;}
.mcg_fixbn.commonSlider .close{display: block;}
`;

const js = `// 배너 하나도 없을때 안보임 처리 
$('.mcg_fixbn.commonSlider').not('.slick-initialized').slick({
    infinite: true,
    autoplaySpeed: 3000,
    autoplay:true,
    arrows: false,
    draggable: true,
    dots: true,
});`;

    return (
      <PageContent
        title={title}
        desc="메가스터디 공무원 메인 홈페이지에서 사용되는 팝업 기능입니다.<br />위치는 메인사이트 우측 하단부에 두는 것을 원칙으로 하면서 하단의 띠 배너 보다는 상위에 존재하도록 작업해야 합니다."
        image="/images/popup1.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["팝업배너","메인하단","슬라이드"]}
        link="<%=url_main%>/megagong.asp"
        onChange={onChange}
      />
    )
  }
</script>