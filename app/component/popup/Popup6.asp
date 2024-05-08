<script type="text/babel">
  'use strict';

  function Popup6({ title, onChange }) {

const html = `<div class="pop_btn_wrap">
  <a class="mg_btn_base sm" href="#" onclick="openCmegaPopup('popupYoutube'); return false;">영상 팝업 호출</a>
  <a class="mg_btn_base sm mg_txt" href="#" onclick="deleteCookieAndReload('todayPopupYoutubeCookie'); return false;">영상 팝업 관련 쿠키값 초기화</a>
</div>
<%If fncRequestCookie("todayPopupYoutubeCookie") = "" then%>
<div class="cmg_popup_wrap cmg_fullpage" id="popupYoutube">
  <div class="cmg_popup_dimm" onclick="closeCmegaPopup('popupYoutube')"></div>
  <div class="cmg_popup_inner">
    <div class="mg_btn_wrap right top">
      <button class="mg_btn_base sm" onclick="closeCmegaPopupYoutubeToday();">오늘 하루 닫기</button>
      <button class="mg_btn_base sm" onclick="closeCmegaPopup('popupYoutube')">닫기</button>
    </div>
    <div class="video_area">
      <div class="video_area youtube">
        <iframe width="100%" height="100%" src="https://www.youtube.com/embed/KRapa6dOBAI?autoplay=1&mute=1&rel=0&controls=0&disablekb=1" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
      </div>
    </div>
  </div>
</div><!-- .cmg_popup_wrap -->
<%End if%>`;

const css = `#popupYoutube{display:none;}`;

const excCss = ``;

const js = `if(getCookie('todayPopupYoutubeCookie') == 'close'){
  closeCmegaPopup('popupYoutube');
}
function closeCmegaPopupYoutubeToday() {
  setCookiePopupToday('todayPopupYoutubeCookie', 'close', 1);
  closeCmegaPopup('popupYoutube');
}`;

    return (
      <PageContent
        title={title}
        desc="메가스터디 공무원 메인 홈페이지 및 다양한 홍보 페이지에서 사용되는 팝업 기능입니다.<br />딤드(Dimmed)효과와 함께 화면 중앙부에 특정 유튜브 영상이 재생될 수 있습니다.<br />준비된 유튜브 영상의 주소를 통해 재생될 영상을 교체할 수 있습니다."
        image="/images/popup3.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["영상팝업","유튜브","딤드"]}
        link="<%=url_main%>/megagong.asp"
        onChange={onChange}
      />
    )
  }
</script>