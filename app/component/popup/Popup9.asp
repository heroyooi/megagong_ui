<script type="text/babel">
  'use strict';

  function Popup9({ title, onChange }) {

const html = `<div class="pop_btn_wrap">
  <a class="mg_btn_base sm" href="javascript:;" onclick="openMegaPopup('popupFadeDown', 3)">상단에서 붙어서 내려옴</a>
  <a class="mg_btn_base sm" href="javascript:;" onclick="openMegaPopup('popupFadeUp', 2)">하단에서 붙어서 올라옴</a>
</div>
    
<div class="mg_popup_wrap z-anim mfp-hide" id="popupFadeUp" style="width:375px;">
  <div class="content_area">
    <div class="content_inner"></div>
  </div>
</div><!-- .mg_popup_wrap -->

<div class="mg_popup_wrap mfp-hide" id="popupFadeDown" style="width:375px;">
  <div class="content_area">
    <div class="content_inner"></div>
  </div>
</div>`;

const css = ``;

const excCss = ``;

const js = ``;

    return (
      <PageContent
        title={title}
        desc="메가스터디 공무원 홍보 페이지에서 주로 사용되는 팝업 기능입니다. <br />위 혹은 아래에서 페이드업(Fade-Up) 및 페이드다운(Fade-Down)효과와 함께 딤드(Dimmed) 처리된 팝업이 나타납니다. <br />해당 코드를 통해 제공되는 팝업은 마우스 스크롤 등을 통한 화면 Body 이동이 불가능합니다. <br />또한, iOS에서도 화면 상태가 고정됩니다."
        image="/images/popup8.png"
        image2="/images/popup7.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["올라오기","내려오기"]}
        link="<%=url_main%>/megagong.asp"
        onChange={onChange}
      />
    )
  }
</script>