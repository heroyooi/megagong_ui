<script type="text/babel">
  'use strict';

  function Popup13({ title, onChange }) {

const html = `<a class="popup_13_btn" href="#" onclick="openCmegaPopup('popupTermsTiny'); return false;">�ڼ������� &gt;</a>
<div class="cmg_popup_wrap" id="popupTermsTiny" style="width: 420px; display: none;">
  <a href="javascript:;" class="mg_popup_close rect" onclick="closeCmegaPopup('popupTermsTiny')"></a>
  <div class="content_area">
    <div class="content_inner line">
      <div class="terms_info"><strong>1. �������� ���� �̿� ����</strong>
      -�̺�Ʈ �ȳ� �� SMS �߼� � Ȱ��
      <strong>2. �������� ���� �׸� �� ���� �Ⱓ</strong>
      -���̵�, ��ȭ��ȣȸ�� 
      -Ż�� �� ȸ���ڰ��� �����Ǵ� �Ⱓ ����
      <strong>3. ������������ ���ǰźο� ���� ������</strong>
      -���ϴ� �������� ���� ���Ǹ� �ź��� �� ������ ���� �źο� ����
      �������� ������, �� ���������� ä�� ���� �̺�Ʈ�� �ݵ��
      �ʿ��� ��������, �ź��Ͻ� ��� �ش� �̺�Ʈ ��÷ �� ��ǰ ������
      �Ұ����� �ȳ��帳�ϴ�.</div>
    </div>
  </div>
</div>`;

const css = `.popup_13_btn{font-size:13px;font-weight:bold;color:#ea2771;text-decoration:underline;}`;

const excCss = ``;

const js = ``;

    return (
      <PageContent
        title={title}
        desc="�ް��������� �̺�Ʈ&amp;���θ�� ���������� �ַ� ���Ǵ� ��� �˾��Դϴ�."
        // image="/images/popup9.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["����˾�"]}
        link="<%=url_main%>/s/gong/event/2023/06010066/index.asp#event1"
        onChange={onChange}
      />
    )
  }
</script>