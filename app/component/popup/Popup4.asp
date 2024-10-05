<script type="text/babel">
  'use strict';

  function Popup4({ title, onChange, simple = false }) {

const html = `<div class="pop_btn_wrap">
  <a class="mg_btn_base sm" href="#" onclick="openMegaPopup('popupDim', 1); return false;">�� �˾� ȣ��</a>
  <a class="mg_btn_base sm mg_txt" href="#" onclick="deleteCookieAndReload('todayPopupDimCookie');  return false;">�� ���� ��Ű�� �ʱ�ȭ</a>
</div>
<%If fncRequestCookie("todayPopupDimCookie") = "" then%>
<div class="mg_popup_wrap dim mfp-hide mg_today z-anim" id="popupDim" style="max-width: 343px;">
  <div class="cmg_popup_dimm" onclick="closeCmegaDimPopup('popupDim')"></div>
  <div class="cmg_popup_inner dim">
    <div class="mg_btn_wrap right top">
      <button class="mg_btn_base sm" onclick="closeCmegapopupDimToday();">���� �Ϸ� �ݱ�</button>
      <button class="mg_btn_base sm" onclick="closeCmegaDimPopup('popupDim')">�ݱ�</button>
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
        desc="�ް����͵� ������ ���� Ȩ������ �� �پ��� ȫ�� ���������� ���Ǵ� �˾� ����Դϴ�.<br />�˾��� ������ ��, �ֺ� ���δ� ����(Dimmed) ó���� �Ǿ� ����ڰ� ��Ȱ�ϰ� <br />�˾� ������ ������ Ȯ���� �� �ֽ��ϴ�."
        image="/images/popup5.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["���˾�","����","�ȳ��˾�"]}
        link="<%=url_main%>/megagong.asp"
        simple={simple}
        onChange={onChange}
      />
    )
  }
</script>