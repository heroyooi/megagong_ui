<script type="text/babel">
  'use strict';

  function ColumnList({ title, onChange }) {

const html = `<div class="abc">1234 test</div>`;

const css = ``;
const excCss = ``;

const js = ``;

    return (
      <PageContent
        title={title}
        desc=""
        // image="/images/tab1.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["������ ����", "�Խ���"]}
        link="<%=url_main%>/column/column.asp"
        onChange={onChange}
      />
    )
  }
</script>