<script type="text/babel">
  'use strict';

  function Table1({ title, onChange, simple = false }) {

const html = `���̺� �ڵ�`;

const css = ``;

const js = ``;

    return (
      <PageContent
        title={title}
        desc="�ް����������� ����ϴ� ���̺� ������Ʈ�Դϴ�."
        html={html}
        css={css}
        js={js}
        items={["���̺�", "������ ������"]}
        link="<%=dev_url_main%>/test/heroyooi/component.asp?id=table"
        file="test\heroyooi\component.asp"
        designFile="\\10.1.0.100\�������������_������ �����\�����ü��񽺽�\����������(��)\@�����ΰ��̵�\@new_���̺�.psd"
        simple={simple}
        onChange={onChange}
      />
    )
  }
</script>