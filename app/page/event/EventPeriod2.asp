<script type="text/babel">
  'use strict';

  function EventPeriod2({ title, onChange }) {

const html = `<div class="container_info ver_dark">
  <div class="info">
    <div class="info_title">�̺�Ʈ �Ⱓ</div>
    <div class="info_date">2022. 08. 31.(��) ~ 2022. 09. 20.(ȭ)</div>
  </div>
  <div class="info">
    <div class="info_title">��÷�� ��ǥ</div>
    <div class="info_date">2022. 09. 23.(��)</div>
    <div class="noti">���� ���� �ȳ�</div>
  </div>
</div>`;

const css = ``;

const excCss = ``;

const js = ``;

const outJs = ``;

    return (
      <PageContent
        title={title}
        // desc="�̺�Ʈ Ǯ���������� ����ϴ� �̺�Ʈ �Ⱓ ������Ʈ���Դϴ�."
        // image="/images/btn.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        outJs={outJs}
        items={["�̺�Ʈ�Ⱓ","��÷�ڹ�ǥ"]}
        link="<%=dev_url_main%>/event/@template/index_temp.asp"
        onChange={onChange}
      />
    )
  }
</script>