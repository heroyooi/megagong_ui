<script type="text/babel">
  'use strict';

  function EventGift({ title, onChange }) {

const html = `<div class="container_gift_wrap">
  <ul class="flex">
    <li><img src="<%=img_main%>/m/2024/0513_tech/tab1_1_img1.png" alt="���� 1"></li>
    <li><img src="<%=img_main%>/m/2024/0513_tech/tab1_1_img2.png" alt="���� 2"></li>
    <li><img src="<%=img_main%>/m/2024/0513_tech/tab1_1_img3.png" alt="���� 3"></li>
  </ul>
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
        items={["���� ���"]}
        link="<%=dev_url_main%>/event/@template/index_temp.asp"
        onChange={onChange}
      />
    )
  }
</script>