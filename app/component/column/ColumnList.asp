<script type="text/babel">
  'use strict';

  function ColumnList({ title, onChange }) {

const html = `<div class="board-list-wrap">
  <ul class="table-head table_head">
      <li>
          <div class="table_td">번호</div>
          <div class="table_td">과목</div>
          <div class="table_td">제목</div>
          <div class="table_td">작성일</div>
          <div class="table_td hide-576">조회수</div>
      </li>
  </ul>
  <ul class="table-list table_list">

      <!-- 가이드 -->
      <li>
          <div class="table_td">0</div>
          <div class="table_td">과목</div>
          <div class="table_td">
              <a href="">
                  <div class="tit">
                      <div class="content">제목</div>
                      <div class="comment">[0]</div>
                      <div class="new-icon-blue new">신규 게시글</div>
                  </div>
              </a>
          </div>
          <div class="table_td">
              <span class="type1 hide-576">0000.00.00</span>
              <span class="type2 show-576">00.00.00</span>
          </div>
          <div class="table_td hide-576">000</div>
      </li>
      <!-- 베스트 게시글 -->
      <li class="best">
          <div class="table_td"><i class="icon best">BEST</i></div>
          <div class="table_td">과목</div>
          <div class="table_td">
              <a href="">
                  <div class="tit">
                      <div class="content">지방직을 23일 남긴 시점 여러분은 무엇을 하고 계신가요 계신가요 계신가요 계신가요 계신가요 계신가요 계신가요 계신가요? 계신가요 계신가요 계신가요</div>
                      <div class="comment">[2]</div>
                      <div class="new-icon-blue new">신규 게시글</div>
                  </div>
              </a>
          </div>
          <div class="table_td">
              <span class="type1 hide-576">2024.05.09</span>
              <span class="type2 show-576">24.05.09</span>
          </div>
          <div class="table_td hide-576">235</div>
      </li>
      <!-- 일반 게시글 -->
      <li>
          <div class="table_td"><i class="icon best">BEST</i></div>
          <div class="table_td">사회복지학/직업상담심리학</div>
          <div class="table_td">
              <a href="">
                  <div class="tit">
                      <div class="content">지방직을 23일 남긴 시점 여러분은 무엇을 하고 계신가요</div>
                  </div>
              </a>
          </div>
          <div class="table_td">
              <span class="type1 hide-576">2024.05.09</span>
              <span class="type2 show-576">24.05.09</span>
          </div>
          <div class="table_td hide-576">235</div>
      </li>
  </ul>
  <ul class="pagination-base">
      <li class="before"><a href="">이전</a></li>
      <li class="active"><a href="">1</a></li>
      <li><a href="">2</a></li>
      <li><a href="">3</a></li>
      <li><a href="">4</a></li>
      <li class="after"><a href="">다음</a></li>
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
        items={["유튜브"]}
        // link="<%=lab_main%>/l/gong/guide/guide.asp"
        onChange={onChange}
      />
    )
  }
</script>