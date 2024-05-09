<script type="text/babel">
  'use strict';

  function Popup10({ title, onChange }) {

const html = `<div class="pop_btn_wrap">
  <a class="mg_btn_base sm" href="#" onclick="openMegaPopup('popupFadeIn_detail', 1, true, true); return false;">�ڼ��� ���� �˾�</a>
</div>
<!-- Ŭ���� detail_view �߰� -->
<div class="mg_popup_wrap z-anim mfp-hide detail_view" id="popupFadeIn_detail" style="max-width:780px;">
  <div class="content_area">
      <div class="content_inner">
          <img src="/images/popup9_ex.png" alt="�����̹���">
      </div>
  </div>
</div>`;

const css = ``;

const excCss = ``;

const js = ``;

    return (
      <PageContent
        title={title}
        desc="���� ȫ�� Ǯ���������� �ַ� ���Ǵ� �˾� ����Դϴ�. <br />�������� ���� �߰����� ���� �̺�Ʈ�� �ʿ��� ��� �ַ� ���Ǹ� ����(Dimmed) ó�� �Ǿ� ��Ÿ���� ���� �⺻���� �մϴ�."
        image="/images/popup9.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["���","�߰�����","����"]}
        link="<%=url_main%>/megagong.asp"
        onChange={onChange}
      />
    )
  }
</script>