<script type="text/babel">
  'use strict';

  function Popup12({ title, onChange }) {

const html = `<a class="popup_12_btn" href="#" onclick="openMegaPopup('popupTerms', 1, true, false); return false;">�ڼ������� &gt;</a>
<div class="mg_popup_wrap z-anim mfp-hide" id="popupTerms" style="max-width:420px;">
  <div class="content_area">
    <div class="content_inner">
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

const css = `.popup_12_btn{font-size:13px;font-weight:bold;color:#ea2771;text-decoration:underline;}`;

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