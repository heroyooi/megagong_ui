<script type="text/babel">
  'use strict';

  function Popup10({ title, onChange }) {

const html = `<div class="pop_btn_wrap">
  <a class="mg_btn_base sm" href="#" onclick="openMegaPopup('popupFadeIn_detail', 1, true, true); return false;">자세히 보기 팝업</a>
</div>
<!-- 클래스 detail_view 추가 -->
<div class="mg_popup_wrap z-anim mfp-hide detail_view" id="popupFadeIn_detail" style="max-width:780px;">
  <div class="content_area">
      <div class="content_inner">
          <img src="/images/popup9_ex.png" alt="예시이미지">
      </div>
  </div>
</div>`;

const css = ``;

const excCss = ``;

const js = ``;

    return (
      <PageContent
        title={title}
        desc="강사 홍보 풀페이지에서 주로 사용되는 팝업 기능입니다. <br />컨텐츠에 대한 추가적인 설명 이벤트가 필요한 경우 주로 사용되며 딤드(Dimmed) 처리 되어 나타나는 것을 기본으로 합니다."
        image="/images/popup9.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["모달","추가정보","딤드"]}
        link="<%=url_main%>/megagong.asp"
        onChange={onChange}
      />
    )
  }
</script>