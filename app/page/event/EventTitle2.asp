<script type="text/babel">
  'use strict';

  function EventTitle2({ title, onChange }) {

const html = `<div class="eventWrap">
    <div class="evSection evCon2">
        <div class="inner">
            <h4 class="con_tit clamp-title">
							킬러 문항/ 지엽적 지문 / 소거형 선택지 등 <br>
							<b class="wh_ver">출제 경향이 조금씩 변화하고 있는 <br class="show-992">공무원 행정법 시험</b>
						</h4>
        </div>
    </div>

    <div class="evSection evCon5">
        <div class="inner">
            <p class="mini_tit clamp-text">광범위한 행정법을 무작정 암기하지 않고도 <br class="show-992">완벽하게 이해할 수 있도록</p>
            <h4 class="con_tit clamp-title">물리적 학습량은 줄이고, <br class="show-992">주요 개념에 무게를 실어서!</h4>
        </div>
    </div>

    <div class="evSection evCon6">
        <div class="inner">
            <p class="mini_tit clamp-text">#기출지문 #다회독 #범위축소 #시간활용</p>
            <h4 class="con_tit clamp-title2">
              행정법 시험에서 이 네가지가 <br class="show-992">왜 중요하냐구요?
            </h4>
        </div>
    </div>

    <div class="evSection evCon7">
        <div class="inner">
            <p class="mini_tit clamp-text">광범위한 지문의 베이스를 다지는 게 중요한 행정법 <br> 출제 경향이 변한다면, 변화에 맞춰 강의도 진화해야 하는법!</p>
						<h4 class="con_tit clamp-title">
							빈출 지문과  미기출 예상 지문을 통해 <br>
							이해하는 개념 <b class="point_ver">ALL-IN-ONE</b>
						</h4>
        </div>
    </div>

    <div class="evSection evCon9">
        <div class="inner">
            <p class="mini_tit clamp-text2 wh_ver">
							<strong>아직도 망설여진다면 3회 먼저 체험해보고 천천히 선택하세요. <br>
							3회 만으로도 분명, 휘며 들게 될 테니.</strong>
						</p>

            <h4 class="con_tit clamp-title3">
							유휘운T 스페셜 체험팩
              <i class="end"></i>
            </h4>
        </div>
    </div>


</div>`;

const realHtml = `<h4 class="con_tit clamp-title">
  킬러 문항/ 지엽적 지문 / 소거형 선택지 등 <br>
  <b class="wh_ver">출제 경향이 조금씩 변화하고 있는 <br class="show-992">공무원 행정법 시험</b>
</h4>

<p class="mini_tit clamp-text">광범위한 행정법을 무작정 암기하지 않고도 <br class="show-992">완벽하게 이해할 수 있도록</p>
<h4 class="con_tit clamp-title">물리적 학습량은 줄이고, <br class="show-992">주요 개념에 무게를 실어서!</h4>

<p class="mini_tit clamp-text">#기출지문 #다회독 #범위축소 #시간활용</p>
<h4 class="con_tit clamp-title2">
  행정법 시험에서 이 네가지가 <br class="show-992">왜 중요하냐구요?
</h4>

<p class="mini_tit clamp-text">광범위한 지문의 베이스를 다지는 게 중요한 행정법 <br> 출제 경향이 변한다면, 변화에 맞춰 강의도 진화해야 하는법!</p>
<h4 class="con_tit clamp-title">
  빈출 지문과  미기출 예상 지문을 통해 <br>
  이해하는 개념 <b class="point_ver">ALL-IN-ONE</b>
</h4>

<p class="mini_tit clamp-text2 wh_ver">
  <strong>아직도 망설여진다면 3회 먼저 체험해보고 천천히 선택하세요. <br>
  3회 만으로도 분명, 휘며 들게 될 테니.</strong>
</p>

<h4 class="con_tit clamp-title3">
  유휘운T 스페셜 체험팩
  &lt;% if cdate(lo_now_date) < cdate("2024-08-02") then %&gt;
  <i class="end"></i>
  &lt;% end if %&gt;
</h4>
`

const css = `.con_tit .end { right: 0; } 
.con_tit .end::after { background: #d1e7fa; } /* 이벤트종료 아이콘 색상변경 */

.clamp-title { font-size:44px; } 
.clamp-title2 { font-size:36px; } 
.clamp-title3 { font-size:56px; } 
.clamp-text { font-size:30px; } 
.clamp-text2 { font-size:24px; } 
.con_tit,
.con_tit b { font-weight: 900; } 
.con_tit { /*margin-bottom: 65px;*/ line-height: 1.2; } 
.mini_tit { margin-bottom: 15px; line-height: 1.2; }

.wh_ver { color: #fff; } 
.point_ver { color: #417afa; } 
.red_ver { color: #ff3c4f; } 
.light_ver { font-weight: 500; }

@media screen and (max-width: 1200px) {
  .clamp-title { font-size: clamp(21px,4.8vmin,44px); } 
  .clamp-title2 { font-size: clamp(20px,4vmin,36px); } 
  .clamp-title3 { font-size: clamp(23px,6vmin,56px); } 
  .clamp-text { font-size: clamp(15px,3.4vmin,30px); } 
  .clamp-text2 { font-size: clamp(14px,2.8vmin,24px); } 
}
`;

const excCss = `img{display:inline;}
.eventWrap .inner { padding: 70px 0; } 
.evCon2 { background: #41adfb url(https://image.megagong.net/m/2024/0703_allawyer/bg_con2.jpg) no-repeat center center; background-size: cover; }
.evCon5 { background: #d0e7fe; }
.evCon6 { background: #edf6ff; }
.evCon9 { background: #417afa; }

.con_tit .end { top: -90px; } `;

const js = ``;

const outJs = ``;

    return (
      <PageContent
        title={title}
        // desc="이벤트 풀페이지에서 사용하는 이벤트 기간 컴포넌트들입니다."
        // image="/images/btn.png"
        html={html}
        realHtml={replaceSpecialTags(realHtml)}
        css={css}
        excCss={excCss}
        js={js}
        outJs={outJs}
        items={["컨텐츠 타이틀","다양한 색상"]}
        link="<%=url_main%>/event/2024/07030026/index.asp#eventWrap"
        onChange={onChange}
      />
    )
  }
</script>