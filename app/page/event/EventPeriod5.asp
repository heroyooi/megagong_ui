<script type="text/babel">
  'use strict';

  function EventPeriod5({ title, onChange }) {

const html = `<div class="container_info_wrap">
  <div class="gift"><img src="<%=img_main%>/m/2024/0326_lyj4718/evt2_img3.png" alt="����"></div>
  <div class="container_info ver_column">
    <div class="info">
      <div class="info_title">���� ���</div>
      <div class="info_date">��¼���� ��� ������!</div>
    </div>								
    <div class="info">
      <div class="info_title max">�̺�Ʈ �Ⱓ</div>
      <div class="info_date">bbbbb</div>
    </div>
    <div class="info">
      <div class="info_title">��÷�� ��ǥ</div>
      <div class="info_date">bbbbb<span class="noti">bbbbb</span></div>
    </div>
  </div>
</div>`;

const css = ``;

const excCss = `.container_info_wrap{border:1px solid #ddd;}`;

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
        items={["�������","�̺�Ʈ�Ⱓ","��÷�ڹ�ǥ","����"]}
        link="<%=dev_url_main%>/event/@template/index_temp.asp"
        onChange={onChange}
      />
    )
  }
</script>