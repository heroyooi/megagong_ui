<script type="text/babel">
  'use strict';

  function ColumnListTeacher({ title, onChange }) {

const html = `<div class="board-list-wrap board_list_wrap">
    <ul class="table-order">
        <li class=" active "><a href="javascript:fncSch('dt');">최신순</a></li>
        <li class=""><a href="javascript:fncSch('cnt');">조회순</a></li>
    </ul>
    <ul class="table-head table_head">
        <li>
            <div class="table_td num">번호</div>
            <div class="table_td subject">과목</div>
            <div class="table_td title">제목</div>
            <div class="table_td data">작성일</div>
            <div class="table_td hits hide-576">조회수</div>
        </li>
    </ul>
    <ul class="table-list table_list">
        <li class="N">
            <div class="table_td num">
            3
            </div>
            <div class="table_td subject">국어</div>
            <div class="table_td title">
                <a href="javascript:void(0);" onclick="fncView('&amp;tecV=lyj4718&amp;gubnV=&amp;wordV=&amp;typeV=&amp;page=1','32');">
                    <div class="tit">
                        <div class="content">때로는 불안이 동기가 되기도 합니다.</div>
                        <div class="comment">[1]</div>
                    </div>
                </a>
            </div>
            <div class="table_td data">
                <span class="type1 hide-576">2024.07.18</span>
                <span class="type2 show-576">24.07.18</span>
            </div>
            <div class="table_td hits hide-576">322</div>
        </li>
        <li class="N">
            <div class="table_td num">
            2
            </div>
            <div class="table_td subject">국어</div>
            <div class="table_td title">
                <a href="javascript:void(0);" onclick="fncView('&amp;tecV=lyj4718&amp;gubnV=&amp;wordV=&amp;typeV=&amp;page=1','29');">
                    <div class="tit">
                        <div class="content">‘공시생’인 것이 부끄럽다?</div>
                        <div class="comment"></div>

                    
                    </div>
                </a>
            </div>
            <div class="table_td data">
                <span class="type1 hide-576">2024.07.03</span>
                <span class="type2 show-576">24.07.03</span>
            </div>
            <div class="table_td hits hide-576">798</div>
        </li>
        <li class="N">
            <div class="table_td num">
            1
            </div>
            <div class="table_td subject">국어</div>
            <div class="table_td title">
                <a href="javascript:void(0);" onclick="fncView('&amp;tecV=lyj4718&amp;gubnV=&amp;wordV=&amp;typeV=&amp;page=1','7');">
                    <div class="tit">
                        <div class="content">길을 잃은 도전자에게</div>
                        <div class="comment">[2]</div>
                    </div>
                </a>
            </div>
            <div class="table_td data">
                <span class="type1 hide-576">2024.06.18</span>
                <span class="type2 show-576">24.06.18</span>
            </div>
            <div class="table_td hits hide-576">697</div>
        </li>
    </ul>
</div>`;

const css = ``;
const excCss = `.board-list-wrap {line-height: 1;}
.board_list_wrap .table_list .table_td.teacher .tea_img {margin: 0 auto 5px;}
[class*=board-list-wrap] .table-list .table_td.title {width: 770px;}
.board_list_wrap .table_list li {height: 60px; box-sizing: border-box;}
[class*=board-list-wrap] .table_td.data .type1 {border: none; margin: 0;}
`;

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
        items={["게시판", "목록"]}
        link="<%=url_main%>/column/column.asp"
        onChange={onChange}
      />
    )
  }
</script>