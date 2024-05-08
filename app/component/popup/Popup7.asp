<script type="text/babel">
  'use strict';

  function Popup7({ title, onChange }) {

const html = `<div class="pop_btn_wrap">
  <a class="mg_btn_base sm" href="#" onclick="openMegaPopup('popupFadeIn', 1, true, false); return false;">��÷ �˾�</a>
</div>

<div class="mg_popup_wrap z-anim mfp-hide" id="popupFadeIn" style="max-width: 420px;">
  <div class="content_area">
    <div class="content_inner pb20">
      <p class="m_tit">2022.8.17.<br /><strong class="blue">��÷�� ���ϵ帳�ϴ�!</strong></p>
      <div><img src="<%=img_main%>/m/2022/0907_paper/prize_img02.png" alt="�̽�������" /></div>
    </div>
    <div class="tit_area blue">[�ް�������] �Ųٷ� �÷��� ��ũ �÷�</div>
    <div class="content_inner">
      <ul class="s_info">
        <li><span>��</span>��÷�ǽ� �Ųٷ� �÷��ʴ� 7/20(��)  �߼۵� �����̿���, ���� ������ ����  �߼����� ����� �� �ֽ��ϴ�.</li>
        <li><span>��</span>�Ųٷ� �÷��ʴ� ȸ�� ���� ���� �ּ� ��%�ּ��ּ��ּ��ּ��ּ��ּ��ּ�%�� �� �߼۵� �����Դϴ�. <a href="<%=url_main%>/member/Account_Chk.asp">[ �ּ� ���� &gt; ]</a></li>
        <li><span>��</span>�ּ� �̱��� & ������� ���� ��߼��� �Ұ��մϴ�.</li>
      </ul>
      <div class="mg_btn_wrap">
        <a href="#" class="mg_btn_base" onclick="$.magnificPopup.close(); return false;">Ȯ��</a>
      </div>
    </div>
  </div>
</div>`;

const css = ``;

const excCss = ``;

const js = ``;

    return (
      <PageContent
        title={title}
        desc="�ް����͵� ������ ȫ�� ���������� �ַ� ���Ǵ� �˾� ����Դϴ�. <br />������ ��ư�� Ŭ���ϸ� ���̵���(Fade-In)ȿ���� �Բ� ����(Dimmed) ó���� �˾��� ��Ÿ���ϴ�. <br />�ش� �ڵ带 ���� �����Ǵ� �˾��� ���콺 ��ũ�� ���� ���� �˾� ���¸� �����ϸ鼭 ȭ�� Body �̵��� �����մϴ�."
        image="/images/popup6.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["��÷�˾�","��Ÿ����","����"]}
        link="<%=url_main%>/megagong.asp"
        onChange={onChange}
      />
    )
  }
</script>