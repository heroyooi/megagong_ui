<script type="text/babel">
  'use strict';

  function ColumnListAll({ title, onChange }) {

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
        <li class="N">
            <div class="table_td teacher">
                <img class="tea_img hide-992" src="https://img.megagong.net/profphoto/gong/incredvoc/pro_lec.png" alt="경선식">
                <div><span>영어</span> <br>경선식</div>
            </div>
            <div class="table_td title">
                <a href="javascript:void(0);" onclick="fncView('40');">
                    <div class="tit">
                        <div class="content">공무원 영어 어휘 학습에 관하여</div>
                        <div class="comment"></div>
                        <div class="new-icon-blue new"></div>
                    </div>
                    <div class="preview hide-1200">1. 어떤 범위까지 암기해야 할까? 영어 공부에 있어서 어휘는 광범위하기 때문에 자신의 목적에 맞는 적절한 범위의 어휘를 공부하는 것은 쓸데없는 단어까지 공부하느라 낭비하는 시간을 최대한 없애기 위해 필수적이다. 2025년부터 공무원 영어시험은 새로운 출제 형태에 맞춰 새롭게 변화된다. 최근 공무원 시험의 어휘 난이도의 변화와 출제기조 변화 예시문제를 분</div>
                </a>
            </div>
            <div class="table_td data">
                <span class="type1 hide-576">2024.08.06</span>
                <span class="type2 show-576">24.08.06</span>
            </div>
            <div class="table_td hits hide-576">45</div>
        </li>
        <li class="N">
            <div class="table_td teacher">
                <img class="tea_img hide-992" src="https://img.megagong.net/profphoto/gong/lyj4718/pro_lec.png" alt="이유진">
                <div><span>국어</span> <br>이유진</div>
            </div>
            <div class="table_td title">
                <a href="javascript:void(0);" onclick="fncView('32');">
                    <div class="tit">
                        <div class="content">때로는 불안이 동기가 되기도 합니다.</div>
                        <div class="comment">[1]</div>
                    </div>
                    <div class="preview hide-1200">안녕하세요. 국어 강사 이유진입니다. 오늘은 과거에 붙잡힌(?) 분들을 위한 편지입니다.  저도 20대에는 미래에 대한 불안감으로 공부하고 출근했습니다. 때로는 불안이 동기가 되기도 합니다. 오히려 공부하면 일을 하면 마음이 편했어요.  ‘하고 있잖아. 이렇게 해도 안 되면 어쩔 수 없지. 이 정도로 해도 안 되면 어쩔 수 없는 거잖아</div>
                </a>
            </div>
            <div class="table_td data">
                <span class="type1 hide-576">2024.07.18</span>
                <span class="type2 show-576">24.07.18</span>
            </div>
            <div class="table_td hits hide-576">322</div>
        </li>
        <li class="N">
            <div class="table_td teacher">
                <img class="tea_img hide-992" src="https://img.megagong.net/profphoto/gong/gosabu88/pro_lec.png" alt="고종훈">
                <div><span>한국사</span> <br>고종훈</div>
            </div>
            <div class="table_td title">
                <a href="javascript:void(0);" onclick="fncView('26');">
                    <div class="tit">
                        <div class="content">객관식 시험에 맞는 공부는 무엇일까?</div>
                        <div class="comment">[1]</div>
                    </div>
                    <div class="preview hide-1200">우리가 준비하고 있는 시험(국가직, 지방직, 서울시, 법원직)은 주관식 시험이나 서술(논술)형 시험이 아니라 객관식 시험(4지 선다형)입니다.  만약 ‘조선 후기 정치’를 공부한다고 가정합시다. 주관식이나 서술(논술)형 시험이었다고 하면 ‘조선 후기의 정치’를 종합적이고 체계적으로 이해해야 합니다. 이론 강의를 듣고, 이해하고 노트에 자신만의 마인</div>
                </a>
            </div>
            <div class="table_td data">
                <span class="type1 hide-576">2024.07.03</span>
                <span class="type2 show-576">24.07.03</span>
            </div>
            <div class="table_td hits hide-576">482</div>
        </li>
        <li class="N">
            <div class="table_td teacher">
                <img class="tea_img hide-992" src="https://img.megagong.net/profphoto/gong/shin242/pro_lec.png" alt="신용한">
                <div><span>행정학/지방자치론</span> <br>신용한</div>
            </div>
            <div class="table_td title">
                <a href="javascript:void(0);" onclick="fncView('24');">
                    <div class="tit">
                        <div class="content">열정은 흔하지만, 인내는 드물다</div>
                        <div class="comment"></div>
                    </div>
                    <div class="preview hide-1200">여러분은 인내할 준비가 되셨습니까? 누구나 ‘나는 반드시 합격하겠다’라는 생각으로 수험생활을 시작합니다. 나의 꿈은 공무원이고, 반드시 합격할 거라는 포부와 열정을 갖고 공부합니다. 하지만 모든 과정을 인내하며 끝까지 열정을 간직해서 결승선에 골인하는 사람은 많지 않습니다.  시시각각 찾아오는 시련에 열정이 식어버리기도 합니다. 열정은 분명 가치 </div>
                </a>
            </div>
            <div class="table_td data">
                <span class="type1 hide-576">2024.06.28</span>
                <span class="type2 show-576">24.06.28</span>
            </div>
            <div class="table_td hits hide-576">350</div>
        </li>    
    </ul>
</div>`;

const css = ``;
const excCss = `.board-list-wrap {line-height: 1;}
.board_list_wrap .table_list .table_td.teacher .tea_img {margin: 0 auto 5px;}
[class*=board-list-wrap] .table_td.data .type1 {border: none; margin: 0;}
[class*=board-list-wrap] .table_td.data .type2 {border: none; margin: 0;}
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