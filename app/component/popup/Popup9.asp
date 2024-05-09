<script type="text/babel">
  'use strict';

  function Popup9({ title, onChange }) {

const html = `<div class="pop_btn_wrap">
  <a class="mg_btn_base sm" href="javascript:;" onclick="openMegaPopup('popupFadeDown', 3)">��ܿ��� �پ ������</a>
  <a class="mg_btn_base sm" href="javascript:;" onclick="openMegaPopup('popupFadeUp', 2)">�ϴܿ��� �پ �ö��</a>
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
        desc="�ް����͵� ������ ȫ�� ���������� �ַ� ���Ǵ� �˾� ����Դϴ�. <br />�� Ȥ�� �Ʒ����� ���̵��(Fade-Up) �� ���̵�ٿ�(Fade-Down)ȿ���� �Բ� ����(Dimmed) ó���� �˾��� ��Ÿ���ϴ�. <br />�ش� �ڵ带 ���� �����Ǵ� �˾��� ���콺 ��ũ�� ���� ���� ȭ�� Body �̵��� �Ұ����մϴ�. <br />����, iOS������ ȭ�� ���°� �����˴ϴ�."
        image="/images/popup8.png"
        image2="/images/popup7.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["�ö����","��������"]}
        link="<%=url_main%>/megagong.asp"
        onChange={onChange}
      />
    )
  }
</script>