<script type="text/babel">
  'use strict';

  function BoardSelect({ title, onChange }) {

    const html = `<div class="sort-wrap">
    <div class="blindw">선생님 칼럼 검색</div>
    <ul class="select-wrap">
        <li>
            <select class="select-base" onchange="">
                <option value="">과목 전체</option>
                <option value="국어">국어</option>
                <option value="영어">영어</option>
                <option value="한국사">한국사</option>
            </select>
        </li>
        <li>
            <select class="select-base" onchange="">
                <option value="">선생님 전체</option>
                <option value="이유진">이유진</option>
                <option value="조태정">조태정</option>
                <option value="전한길">전한길</option>
            </select>
        </li>
        <li class="search-wrap">
            <select class="select-base" id="gubnV">
                <option value="subj">제목</option>
                <option value="cont">내용</option>
            </select>
            <input type="text" class="search-base" id="wordV" maxlength="30" value="">
            <button class="search-button" onclick="fncSch('');">찾기</button>
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
        items={["게시판", "셀렉트박스", "검색"]}
        link="<%=url_main%>/column/column.asp"
        onChange={onChange}
      />
    )
  }
</script>