<script type="text/babel">
  'use strict';

  function EventPeriod4({ title, onChange }) {

const html = `<div class="container_info ver_circle">
  <div class="info">
    <div class="info_title">���� ���</div>
    <div class="info_date">��¼���� ��� ������!</div>
  </div>							
  <div class="info">
    <div class="info_title">�̺�Ʈ �Ⱓ</div>
    <div class="info_date">2024.04.25. (��) ~ 2024.05.06. (��)</div>
  </div>
  <div class="info">
    <div class="info_title">��÷�� ��ǥ</div>
    <div class="info_date">2024.05.08.(��) ������ ��ۿ� ���۷� ��÷ �ȳ�<span class="noti">bbbbbbbb</span></div>
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
        items={["�������","�̺�Ʈ�Ⱓ","��÷�ڹ�ǥ"]}
        link="<%=dev_url_main%>/event/@template/index_temp.asp"
        onChange={onChange}
      />
    )
  }
</script>