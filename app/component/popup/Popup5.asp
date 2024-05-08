<script type="text/babel">
  'use strict';

  function Popup5({ title, onChange }) {

const html = `<div class="pop_btn_wrap">
  <a class="mg_btn_base sm" href="#" onclick="openCmegaPopup('popupVideo'); return false;">���� �˾� ȣ��</a>
  <a class="mg_btn_base sm mg_txt" href="#" onclick="deleteCookieAndReload('todayPopupVideoCookie'); return false;">���� �˾� ���� ��Ű�� �ʱ�ȭ</a>
</div>
<%If fncRequestCookie("todayPopupVideoCookie") = "" then%>
<div class="cmg_popup_wrap cmg_fullpage" id="popupVideo">
  <div class="cmg_popup_dimm" onclick="closeCmegaPopup('popupVideo')"></div>
  <div class="cmg_popup_inner">
    <div class="mg_btn_wrap right top">
      <button class="mg_btn_base sm" onclick="closeCmegaPopupVideoToday();">���� �Ϸ� �ݱ�</button>
      <button class="mg_btn_base sm" onclick="closeCmegaPopup('popupVideo')">�ݱ�</button>
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
        desc="�ް����͵� ������ ���� Ȩ������ �� �پ��� ȫ�� ���������� ���Ǵ� �˾� ����Դϴ�.<br />����(Dimmed)ȿ���� �Բ� ȭ�� �߾Ӻο� ���� ������ ����˴ϴ�. <br />�غ�� ���� ������ ���� ����� ������ ��ü�� �� �ֽ��ϴ�."
        image="/images/popup3.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["�����˾�","��������","����"]}
        link="<%=url_main%>/megagong.asp"
        onChange={onChange}
      />
    )
  }
</script>