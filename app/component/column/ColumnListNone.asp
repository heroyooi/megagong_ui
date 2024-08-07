<script type="text/babel">
  'use strict';

  function ColumnListNone({ title, onChange }) {

const html = `<div class="board-list-wrap board_list_wrap">
    <ul class="table-order">
        <li class="<% if typeV = "dt" or typeV = "" then %> active <%end if%>"><a href="javascript:fncSch('dt');">�ֽż�</a></li>
        <li class="<% if typeV = "cnt" then %> active <%end if%>"><a href="javascript:fncSch('cnt');">��ȸ��</a></li>
    </ul>
    <ul class="table-head table_head">
        <li>
            <div class="table_td teacher">������</div>
            <div class="table_td title">����</div>
            <div class="table_td data">�ۼ���</div>
            <div class="table_td hits hide-576">��ȸ��</div>
        </li>
    </ul>

    <ul class="table-list table_list">
        <li class="empty">���� �����п��� �� �ʿ��� Į���� �غ����Դϴ�. <br>���ݸ� ��ٷ��ּ���!</li>
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
        items={["������ ����", "�Խ���"]}
        link="<%=url_main%>/column/column.asp"
        onChange={onChange}
      />
    )
  }
</script>