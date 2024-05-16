<script type="text/babel">
  'use strict';

  function Teacher4({ title, onChange }) {

const html = `<div class="tec_renew tech_content">
    <div class="techBoard">
        <div class="board_wrap notice dotin">
            <div class="inner">
                <h3>선생님 새소식<a href="https://www.megagong.net/teacher/notice/notice.asp?bcode=jeonhangil" class="btn_more">더보기</a></h3>
                <ul class="board_list">
                    <li><a href="https://www.megagong.net/teacher/notice/notice.asp?bcode=jeonhangil&idx=6098" style="display:inline-block;vertical-align:middle"><img src="https://img.megagong.net/s/common/main_important_icon.gif" alt="필독" class="importantIcon"> 제61회 한능검 응시/가답안/적중공개</a><span class="date">2022.10.24</span></li>
                    <li><a href="https://www.megagong.net/teacher/notice/notice.asp?bcode=jeonhangil&idx=6096" style="display:inline-block;vertical-align:middle"><img src="https://img.megagong.net/s/common/main_important_icon.gif" alt="필독" class="importantIcon"> 한길샘입니다. 제 61회 한능검 D-1 LIVE특강 곧 시작합니다.</a><em class="count">(1)</em><span class="date">2022.10.21</span></li>
                    <li><a href="https://www.megagong.net/teacher/notice/notice.asp?bcode=jeonhangil&idx=6076" style="display:inline-block;vertical-align:middle"><img src="https://img.megagong.net/s/common/main_important_icon.gif" alt="필독" class="importantIcon"> ?10/21(금) 저녁 7시 LIVE ?61회 한능검 대비 한길 샘의 막판 특강!</a><em class="count">(3)</em><span class="date">2022.10.17</span></li>
                    <li><a href="https://www.megagong.net/teacher/notice/notice.asp?bcode=jeonhangil&idx=6058" style="display:inline-block;vertical-align:middle"><img src="https://img.megagong.net/s/common/main_important_icon.gif" alt="필독" class="importantIcon"> 2023 대비 11-12월 개강 및 연간커리큘럼</a><span class="date">2022.10.14</span></li>
                    <li><a href="https://www.megagong.net/teacher/notice/notice.asp?bcode=jeonhangil&idx=6050" style="display:inline-block;vertical-align:middle"><img src="https://img.megagong.net/s/common/main_important_icon.gif" alt="필독" class="importantIcon"> "제 2의 필노"를 꿈꾸는 혁신 새교재 출시</a><span class="date">2022.10.12</span></li>
                </ul>
            </div>
        </div>
        <div class="board_wrap opinn">
            <div class="inner">
                <h3>수강후기
                    <a href="https://www.megagong.net/teacher/review/review.asp?bcode=jeonhangil" class="btn_more">더보기</a>
                </h3>
                <ul class="board_list">
                    <li><a href="https://www.megagong.net/teacher/review/view.asp?bcode=jeonhangil&idx=23715&mv=content_area">한능검도 역시 전한길 <img src="https://img.megagong.net/common/ic_new.gif"></a><span class="writer">강*리</span></li> <!--마스킹된 이름 -->
                    <li><a href="https://www.megagong.net/teacher/review/view.asp?bcode=jeonhangil&idx=23685&mv=content_area">한능검도 전한길 T 좋습니다.</a><span class="writer">박*준</span></li> <!--마스킹된 이름 -->
                    <li><a href="https://www.megagong.net/teacher/review/view.asp?bcode=jeonhangil&idx=23684&mv=content_area">공무원 한국사 1위가 이제는 공무원 한능검 에서도 합격의 한길을 제시한다.!!</a><span class="writer">김*숙</span></li> <!--마스킹된 이름 -->
                    <li><a href="https://www.megagong.net/teacher/review/view.asp?bcode=jeonhangil&idx=23675&mv=content_area">선생님만 믿고 따르면 목표 달성 가능</a><span class="writer">오*렬</span></li> <!--마스킹된 이름 -->
                    <li><a href="https://www.megagong.net/teacher/review/view.asp?bcode=jeonhangil&idx=23671&mv=content_area">필기노트 강해만 듣고 1급 컷 통과!!!</a><span class="writer">박*안</span></li> <!--마스킹된 이름 -->
                </ul>
            </div>
        </div>
    </div>
</div>`;

const css = ``;

const excCss = `img{display: inline;vertical-align:top;}
.tech_content .board_wrap h3{box-sizing:content-box;}
`;

const js = ``;

    return (
      <PageContent
        title={title}
        desc="메가공무원의 강사홈 페이지에서 사용되는 리스트 기능입니다. <br />
        강사 선생님이 작성한 소식 내용이나 수강생들이 작성한 수강후기들을 확인할 수 있습니다. <br /><br />
        강사 선생님이 작성한 새소식의 경우, 게시글의 종류에 따라 필독, 이벤트, 공지 등으로 나뉘어 아이콘이 표기됩니다. <br />
        또한 최근에 작성된 새소식 혹은 수강후기의 경우 정해진 기간동안 New 아이콘이 붙게 됩니다."
        // image="/images/popup1.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["강사홈","리스트","새소식"]}
        link="<%=url_main%>/teacher/home.asp?bcode=jeonhangil"
        onChange={onChange}
      />
    )
  }
</script>