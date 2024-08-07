<script type="text/babel">
  'use strict';

  function ColumnListNone({ title, onChange }) {

const html = `<div class="board-list-wrap board_list_wrap">
    <ul class="table-order">
        <li class="<% if typeV = "dt" or typeV = "" then %> active <%end if%>"><a href="javascript:fncSch('dt');">최신순</a></li>
        <li class="<% if typeV = "cnt" then %> active <%end if%>"><a href="javascript:fncSch('cnt');">조회순</a></li>
    </ul>
    <ul class="table-head table_head">
        <li>
            <div class="table_td teacher">선생님</div>
            <div class="table_td title">제목</div>
            <div class="table_td data">작성일</div>
            <div class="table_td hits hide-576">조회수</div>
        </li>
    </ul>

    <ul class="table-list table_list">
        <li class="empty">지금 여러분에게 꼭 필요한 칼럼을 준비중입니다. <br>조금만 기다려주세요!</li>
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
        items={["선생님 전용", "게시판"]}
        link="<%=url_main%>/column/column.asp"
        onChange={onChange}
      />
    )
  }
</script>