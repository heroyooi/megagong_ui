<script type="text/babel">
  'use strict';

  function Popup5({ title, onChange }) {

const html = `<div class="pop_btn_wrap">
  <a class="mg_btn_base sm" href="#" onclick="openCmegaPopup('popupVideo'); return false;">영상 팝업 호출</a>
  <a class="mg_btn_base sm mg_txt" href="#" onclick="deleteCookieAndReload('todayPopupVideoCookie'); return false;">영상 팝업 관련 쿠키값 초기화</a>
</div>
<%If fncRequestCookie("todayPopupVideoCookie") = "" then%>
<div class="cmg_popup_wrap cmg_fullpage" id="popupVideo">
  <div class="cmg_popup_dimm" onclick="closeCmegaPopup('popupVideo')"></div>
  <div class="cmg_popup_inner">
    <div class="mg_btn_wrap right top">
      <button class="mg_btn_base sm" onclick="closeCmegaPopupVideoToday();">오늘 하루 닫기</button>
      <button class="mg_btn_base sm" onclick="closeCmegaPopup('popupVideo')">닫기</button>
    </div>
    <div class="video_area">
      <video muted autoplay loop playsinline>
        <source src="<%=img_main%>/m/video/video_teaser.mp4" type="video/mp4">
      </video>
    </div>
  </div>
</div><!-- .cmg_popup_wrap -->
<%End if%>`;

const css = `#popupVideo{display:none;}`;

const excCss = ``;

const js = `if(getCookie('todayPopupVideoCookie') == 'close'){
  closeCmegaPopup('popupVideo');
}
function closeCmegaPopupVideoToday() {
  setCookiePopupToday('todayPopupVideoCookie', 'close', 1);
  closeCmegaPopup('popupVideo');
}`;

    return (
      <PageContent
        title={title}
        desc="메가스터디 공무원 메인 홈페이지 및 다양한 홍보 페이지에서 사용되는 팝업 기능입니다.<br />딤드(Dimmed)효과와 함께 화면 중앙부에 고유 영상이 재생됩니다. <br />준비된 영상 파일을 통해 재생될 영상을 교체할 수 있습니다."
        image="/images/popup3.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["영상팝업","영상파일","딤드"]}
        link="<%=url_main%>/megagong.asp"
        onChange={onChange}
      />
    )
  }
</script>