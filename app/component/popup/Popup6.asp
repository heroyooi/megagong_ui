<script type="text/babel">
  'use strict';

  function Popup6({ title, onChange }) {

const html = `<div class="pop_btn_wrap">
  <a class="mg_btn_base sm" href="#" onclick="openCmegaPopup('popupYoutube'); return false;">���� �˾� ȣ��</a>
  <a class="mg_btn_base sm mg_txt" href="#" onclick="deleteCookieAndReload('todayPopupYoutubeCookie'); return false;">���� �˾� ���� ��Ű�� �ʱ�ȭ</a>
</div>
<%If fncRequestCookie("todayPopupYoutubeCookie") = "" then%>
<div class="cmg_popup_wrap cmg_fullpage" id="popupYoutube">
  <div class="cmg_popup_dimm" onclick="closeCmegaPopup('popupYoutube')"></div>
  <div class="cmg_popup_inner">
    <div class="mg_btn_wrap right top">
      <button class="mg_btn_base sm" onclick="closeCmegaPopupYoutubeToday();">���� �Ϸ� �ݱ�</button>
      <button class="mg_btn_base sm" onclick="closeCmegaPopup('popupYoutube')">�ݱ�</button>
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
        desc="�ް����͵� ������ ���� Ȩ������ �� �پ��� ȫ�� ���������� ���Ǵ� �˾� ����Դϴ�.<br />����(Dimmed)ȿ���� �Բ� ȭ�� �߾Ӻο� Ư�� ��Ʃ�� ������ ����� �� �ֽ��ϴ�.<br />�غ�� ��Ʃ�� ������ �ּҸ� ���� ����� ������ ��ü�� �� �ֽ��ϴ�."
        image="/images/popup3.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["�����˾�","��Ʃ��","����"]}
        link="<%=url_main%>/megagong.asp"
        onChange={onChange}
      />
    )
  }
</script>