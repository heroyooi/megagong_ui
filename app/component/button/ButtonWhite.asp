<script type="text/babel">
  'use strict';

  function ButtonWhite({ title, onChange, simple = false }) {

const html = `<div class="btns-example">
    <span class="btn-base xl white"><a href="#">�����ϱ�</a></span>
    <span class="btn-base xl white"><a href="#">�����ϱ� &gt;</a></span>
    <span class="btn-base lg white"><a href="#">Ŀ��ŧ�� �������� Ȯ���ϱ�</a></span>
    <span class="btn-base md white"><a href="#">���� �̸� ����</a></span>
    <span class="btn-base sm white"><a href="#">���� �̸� ����</a></span>
    <span class="btn-base sm white"><a href="#">���� �̸� ���� &gt;</a></span>
    <span class="btn-base xs white"><a href="#">���� �̸� ����</a></span>
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
        items={["��ư","�Ͼ��","������","�پ��� ũ��"]}
        link="<%=dev_url_main%>/test/heroyooi/component.asp?id=button"
        file="test\heroyooi\component.asp"
        designFile="\\10.1.0.100\�������������_������ �����\�����ü��񽺽�\����������(��)\@�����ΰ��̵�\@new_��ư.psd"
        simple={simple}
        onChange={onChange}
      />
    )
  }
</script>