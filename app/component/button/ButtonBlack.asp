<script type="text/babel">
  'use strict';

  function ButtonBlack({ title, onChange, simple = false }) {

const html = `<div class="btns-example">
    <span class="btn-base xl black"><a href="#">�����ϱ�</a></span>
    <span class="btn-base xl black"><a href="#">�����ϱ� &gt;</a></span>
    <span class="btn-base lg black"><a href="#">Ŀ��ŧ�� �������� Ȯ���ϱ�</a></span>
    <span class="btn-base md black"><a href="#">���� �̸� ����</a></span>
    <span class="btn-base sm black"><a href="#">���� �̸� ����</a></span>
    <span class="btn-base sm black"><a href="#">���� �̸� ���� &gt;</a></span>
    <span class="btn-base xs black"><a href="#">���� �̸� ����</a></span>
</div>`;
const css = `.btns-example{display:flex;flex-direction:column;gap:20px;}`;
const js = ``;

    return (
      <PageContent
        title={title}
        desc="�ް����������� ����ϴ� ��ư ������Ʈ�Դϴ�."
        html={html}
        css={css}
        js={js}
        items={["��ư","������","�پ��� ũ��"]}
        link="<%=dev_url_main%>/test/heroyooi/component.asp?id=button"
        file="test\heroyooi\component.asp"
        designFile="\\10.1.0.100\�������������_������ �����\�����ü��񽺽�\����������(��)\@�����ΰ��̵�\@new_��ư.psd"
        simple={simple}
        onChange={onChange}
      />
    )
  }
</script>