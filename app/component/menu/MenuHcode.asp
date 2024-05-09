<script type="text/babel">
  'use strict';

  function MenuHcode({ title, onChange }) {

const html = `
<div class="hd_top">
  <div class="hcode_wrap gong">
      <a class="on" href="<%=url_main%>" target="_blank">������</a>
      <a href="<%=sobang_main%>" target="_blank">�ҹ�</a>
      <a href="<%=army_main%>" target="_blank">������</a>
      <a href="<%=job_main%>" target="_blank">�����</a>
  </div>

  <div class="hcode_wrap sobang">
      <a class="on" href="<%=sobang_main%>" target="_blank">�ҹ�</a>
      <a href="<%=url_main%>" target="_blank">������</a>
      <a href="<%=army_main%>" target="_blank">������</a>
      <a href="<%=job_main%>" target="_blank">�����</a>
  </div>

  <div class="hcode_wrap army">
      <a class="on" href="<%=army_main%>" target="_blank">������</a>
      <a href="<%=url_main%>" target="_blank">������</a>
      <a href="<%=sobang_main%>" target="_blank">�ҹ�</a>
      <a href="<%=job_main%>" target="_blank">�����</a>
  </div>
</div>`;

const css = ``;

const excCss = `
.hd_top .hcode_wrap{position:relative;margin-top:20px;}
.hd_top .hcode_wrap:first-child{margin-top:0;}
`;

const js = ``;

const outJs = ``;

    return (
      <PageContent
        title={title}
        desc="�޴� ������Ʈ�� �ް������� ����Ʈ�� �̿��ϴ� �л����� �ʿ�� �ϴ� ������ ���񽺸� ���� ã�� �� �ֵ��� �����Ǿ� �ֽ��ϴ�."
        // image="/images/btn.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        outJs={outJs}
        items={["��ƿ�޴�","���� �޴�"]}
        link="<%=url_main%>/teacher/qna/qna.asp"
        onChange={onChange}
        version="no-padding"
      />
    )
  }
</script>