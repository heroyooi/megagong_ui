<script type="text/babel">
  'use strict';

  function ButtonOther({ title, onChange, simple = false }) {

const html = `<div class="btns-example">
    <span class="btn-base xxs white b-gray"><a href="#">�ڼ��� ����</a></span>
    <span class="btn-base xxs white b-gray type-1"><a href="#">��� ���� ���� &gt;</a></span>
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
        items={["��ư","�Ͼ��","ȸ����","�پ��� ũ��"]}
        link="<%=dev_url_main%>/test/heroyooi/component.asp?id=button"
        file="test\heroyooi\component.asp"
        designFile="\\10.1.0.100\�������������_������ �����\�����ü��񽺽�\����������(��)\@�����ΰ��̵�\@new_��ư.psd"
        simple={simple}
        onChange={onChange}
      />
    )
  }
</script>