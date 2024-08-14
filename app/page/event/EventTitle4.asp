<script type="text/babel">
  'use strict';

  function EventTitle4({ title, onChange }) {

const html = `<div class="eventWrap">
    <div class="evSection evCon9 event" id="event">
        <div class="inner">
            <div class="con_tit">
                <% if 1=1 then %><i class="end"></i><% end if %><!--이벤트 종료 아이콘-->
                <i class="event_tag">EVENT</i>
                <h4>2025 기본서 출간 기념 <br><span>김창훈 건축구조 교재 리뷰 이벤트</span></h4>
                <div class="sub_tit">
                    YES24, 교보문고, 알라딘 등 주요 대형 온라인 서점에 <br>
                    <b>2025 김창훈 건축구조 <br class="show-460">ALL IN ONE 교재 후기(리뷰)를 남겨주세요.</b> <br>
                    리뷰 작성 후 인증 해주신 분들 전원에게 선물 증정! <br>
                    베스트 후기로 선정되시는 분들에게는 <br class="show-576">추첨을 통해 더욱 푸짐한 선물을 드립니다
                </div>
            </div>
        </div>
    </div><!-- .event E -->
</div>`;

const css = `/* 공통 */
.evSection .con_tit h4 {font-weight: 900; font-size: 44px; color: #111; letter-spacing: -0.05em;}
.evSection .con_tit .cr_gradi {display: block; background: #ff0054; background: -webkit-linear-gradient(90deg, #ff0054 0%, #ffb400 100%); background: linear-gradient(90deg, #ff0054 0%, #ffb400 100%); -webkit-background-clip: text; -webkit-text-fill-color: transparent;}
.evSection .con_tit .sub_tit {font-weight: 400; font-size: 24px;}
.evSection .con_tit .sub_tit + h4 {margin-top: 10px;}
.evSection .con_tit h4 + .sub_tit {margin-top: 20px;}

.evSection.event .con_tit h4 {font-size: 50px;}
.evSection.event .con_tit .sub_tit {font-size: 22px;}
.con_tit .end {top: 12%; right: 4%;}
.con_tit .end::after {background: #2c1300;} /* 이벤트종료 아이콘 색상변경 */

/* evCon9 */
.evCon9 {background: #e35541;}
.evCon9 .con_tit .event_tag {color: #e35541;}
.evCon9 .con_tit h4 {color: #fff;}
.evCon9 .con_tit h4 span {color: #ffc600}
.evCon9 .con_tit .sub_tit {color: #fff;}
.evCon9 .con_tit .sub_tit b {color: #ffc600;}

@media screen and (max-width: 1200px){
  .evSection .con_tit h4 {font-size: clamp(22px, 4.6vmin, 44px);}
  .evSection .con_tit .sub_tit {font-size: clamp(15px, 2.6vmin, 24px);}
  .evSection .con_tit .sub_tit + h4 {margin-top: 1%;}
  .evSection .con_tit h4 + .sub_tit {margin-top: 2%;}

  .evSection.event .con_tit h4 {font-size: clamp(24px, 5vmin, 50px);}
  .evSection.event .con_tit .sub_tit {font-size: clamp(15px, 2.4vmin, 22px);}
}`;

const excCss = `img{display:inline;}
.eventWrap .inner { padding: 70px 0; } 
#event { background: #e35541; }`;

const js = ``;

const outJs = ``;

    return (
      <PageContent
        title={title}
        // desc="이벤트 풀페이지에서 사용하는 이벤트 기간 컴포넌트들입니다."
        // image="/images/btn.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        outJs={outJs}
        items={["이벤트 타이틀","시스템"]}
        link="<%=url_main%>/s/gong/event/2024/08120090/index.asp#event"
        onChange={onChange}
      />
    )
  }
</script>