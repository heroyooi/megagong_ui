<script type="text/babel">
  'use strict';

  function BoardSelect({ title, onChange }) {

    const html = `<div class="sort-wrap">
    <div class="blindw">������ Į�� �˻�</div>
    <ul class="select-wrap">
        <li>
            <select class="select-base" onchange="">
                <option value="">���� ��ü</option>
                <option value="����">����</option>
                <option value="����">����</option>
                <option value="�ѱ���">�ѱ���</option>
            </select>
        </li>
        <li>
            <select class="select-base" onchange="">
                <option value="">������ ��ü</option>
                <option value="������">������</option>
                <option value="������">������</option>
                <option value="���ѱ�">���ѱ�</option>
            </select>
        </li>
        <li class="search-wrap">
            <select class="select-base" id="gubnV">
                <option value="subj">����</option>
                <option value="cont">����</option>
            </select>
            <input type="text" class="search-base" id="wordV" maxlength="30" value="">
            <button class="search-button" onclick="fncSch('');">ã��</button>
        </li>
    </ul>
</div>`;

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
        items={["�Խ���", "����Ʈ�ڽ�", "�˻�"]}
        link="<%=url_main%>/column/column.asp"
        onChange={onChange}
      />
    )
  }
</script>