<script type="text/babel">
  'use strict';

  function Popup4({ title, onChange, simple = false }) {

const html = `<div class="pop_btn_wrap">
  <a class="mg_btn_base sm" href="#" onclick="openMegaPopup('popupDim', 1); return false;">딤 팝업 호출</a>
  <a class="mg_btn_base sm mg_txt" href="#" onclick="deleteCookieAndReload('todayPopupDimCookie');  return false;">딤 관련 쿠키값 초기화</a>
</div>
<%If fncRequestCookie("todayPopupDimCookie") = "" then%>
<div class="mg_popup_wrap dim mfp-hide mg_today z-anim" id="popupDim" style="max-width: 343px;">
  <div class="cmg_popup_dimm" onclick="closeCmegaDimPopup('popupDim')"></div>
  <div class="cmg_popup_inner dim">
    <div class="mg_btn_wrap right top">
      <button class="mg_btn_base sm" onclick="closeCmegapopupDimToday();">오늘 하루 닫기</button>
      <button class="mg_btn_base sm" onclick="closeCmegaDimPopup('popupDim')">닫기</button>
    </div>
    <div class="content_inner" >
      <img class="pc_view" src="<%=img_main%>/m/2022/0901_thanksgiving/popup_img.png" alt="" />
      <img class="mo_view" src="<%=img_main%>/m/2022/0901_thanksgiving/m_popup_img.png" alt="" />
    </div>
  </div>
</div>
<%End if%>`;

const css = ``;

const excCss = ``;

const js = `if(getCookie('todayPopupDimCookie') == 'close'){
  closeCmegaDimPopup('popupDim');
}
function closeCmegapopupDimToday() {
  setCookiePopupToday('todayPopupDimCookie', 'close', 1);
  closeCmegaDimPopup('popupDim');
    $('.mfp-close').trigger('click');
}

function closeCmegaDimPopup() {
  $('.mfp-close').trigger('click');
}`;

    return (
      <PageContent
        title={title}
        desc="메가스터디 공무원 메인 홈페이지 및 다양한 홍보 페이지에서 사용되는 팝업 기능입니다.<br />팝업이 보여질 때, 주변 배경부는 딤드(Dimmed) 처리가 되어 사용자가 원활하게 <br />팝업 내부의 정보를 확인할 수 있습니다."
        image="/images/popup5.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["딤팝업","딤드","안내팝업"]}
        link="<%=url_main%>/megagong.asp"
        simple={simple}
        onChange={onChange}
      />
    )
  }
</script>