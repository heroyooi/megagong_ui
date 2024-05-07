<script type="text/babel">
  'use strict';

  function Popup1({ title, onChange }) {

const html = `<div id="mcg_fixbn" class="mcg_fixbn">
  <a href="javascript:;" onclick="mainHide('#mcg_fixbn')" class="close"><img src="<%=img_main%>/common/btn_close_right_bottom_bnr.png" alt="닫기"></a>
  <div class="mcg_fixbn commonSlider">
    <div class="item">
        <a href="https://www.youtube.com/watch?v=8OiVrxFaOhI" title="[긴급편성] 세무직, 앞으로 어떻게 준비할 것인가" class="bnr-link" target="_blank"></a>
        <div class="img_wrap"><img src="<%=img_main%>/m/2024/0326_gong/main_bnr1.png" alt="[긴급편성] 세무직, 앞으로 어떻게 준비할 것인가 LIVE▶ 4/1(월) 오후 7시 공개!"></div>
    </div>
    <div class="item">
        <a href="/s/gong/event/2023/12180141/index.asp" title="2025 출제기조 전환 완벽 반영 입문 특강 문학 베이스" class="bnr-link" target="_blank"></a>
        <div class="img_wrap"><img src="<%=img_main%>/m/2024/0326_gong/main_bnr4.png" alt="2025 출제기조 전환 완벽 반영 입문 특강 문학 베이스 LIVE▶ 4/27(토) 오후 2시 공개!"></div>
    </div>
  </div>
</div>

<div onload="popup1Script()"></div>`;

const css = `.mcg_fixbn{position: fixed;top:auto; bottom: 24px; right: .5%;width: 240px;z-index: 3;}
.mcg_fixbn a {display:block;}
.mcg_fixbn a.bnr-link {position: absolute; width: 100%; height: 180px; bottom: 0; left: 0;}
.mcg_fixbn .close{z-index: 6;position: absolute; right: 5px; bottom: 190px; width: 17px; height: 17px; padding: 3px; display: none;}
.mcg_fixbn .slick-arrow {display:none!important;}
.mcg_fixbn .item {position: relative;text-align: center; height: 204px;}
.mcg_fixbn .item .img_wrap {display: flex; height: 100%; align-items: flex-end;}
.mcg_fixbn .item img {display:inline-block;}
.mcg_fixbn .slick-dots {position:absolute;bottom:-15px;left:0;right:0;font-size:0;text-align: center;}
.mcg_fixbn .slick-dots li {display:inline-block;margin:0 2px;}
.mcg_fixbn .slick-dots button {width:8px;height: 8px;border-radius: 50%;background:#000;opacity:.5;font-size:0;}
.mcg_fixbn .slick-dots .slick-active button {opacity: 1;}`;

const excCss = `.mcg_fixbn{position: relative;}
.mcg_fixbn .close{display: block;}
`;

const js = `popup1Script()`;

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