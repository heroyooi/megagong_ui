<script type="text/babel">
  'use strict';

  function Popup3({ title, onChange, simple = false }) {

const html = `<div class="pop_btn_wrap">
  <a class="mg_btn_base sm mg_txt" href="#" onclick="deleteCookieAndReload('todayPopupCookie'); return false;">���� �Ϸ� �ݱ� �˾� ���� ��Ű�� �ʱ�ȭ</a>
</div>
<%if fncRequestCookie("todayPopupCookie") = "" then%>
<div class="cmg_popup_wrap mg_today" id="popupToday" style="position: relative; /*margin: 0;*/ /*width: 434px;*/ ">
  <div class="mg_btn_wrap right top">
    <button class="mg_btn_base sm" onclick="closeCmegaPopupToday();">���� �Ϸ� �ݱ�</button>
    <button class="mg_btn_base sm" onclick="closeCmegaPopup('popupToday')">�ݱ�</button>
  </div>
  <div class="img_area">
    <img class="pc_view" src="<%=img_main%>/m/2022/0901_thanksgiving/popup_img.png" alt="">
    <img class="mo_view" src="<%=img_main%>/m/2022/0901_thanksgiving/m_popup_img.png" alt="">
    <a href="<%=url_main%>/book/notice/view.asp?idx=3952" class="btn_link view" target="_blank">�ڼ��� ����</a>
    <a href="<%=url_main%>/help/qna/write.asp" class="btn_link go" target="_blank">�н��������� �ٷΰ���</a>
  </div>
</div>
<%End if%>`;

const css = `.cmg_popup_wrap.mg_today {width:434px}
.cmg_popup_wrap .img_area .btn_link.view{left:149px;top:238px;width:138px;height:26px;}
.cmg_popup_wrap .img_area .btn_link.go{left:128px;top:454px;width:180px;height:26px;}
@media screen and (max-width: 768px) {
  .cmg_popup_wrap.mg_today {width:100%}
  .cmg_popup_wrap .img_area .btn_link.view{left:35%;top:43%;width:30.5%;height:4.5%;}
  .cmg_popup_wrap .img_area .btn_link.go{left:30%;top:81.4%;width:40%;height:4.5%;}
}`;

const excCss = `.cmg_popup_wrap {margin: auto;}`;

const js = `if(getCookie('todayPopupCookie') == 'close'){
  closeCmegaPopup('popupToday');
}
function closeCmegaPopupToday() {
  setCookiePopupToday('todayPopupCookie', 'close', 1);
  closeCmegaPopup('popupToday');
}`;

    return (
      <PageContent
        title={title}
        desc="�ް����͵� ������ ���� Ȩ���������� ���Ǵ� �˾� ����Դϴ�.<br />'���� �Ϸ� ���� �ʱ�'�� ���������� �����ϰ� �Ϸ絿�� �˾��� �ݴ� ����� �����մϴ�."
        image="/images/popup3.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["�˾�","�Ϸ纸���ʱ�","�ȳ��˾�"]}
        link="<%=url_main%>/megagong.asp"
        simple={simple}
        onChange={onChange}
      />
    )
  }
</script>