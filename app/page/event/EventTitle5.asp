<script type="text/babel">
  'use strict';

  function EventTitle5({ title, onChange }) {

const html = `<div class="eventWrap">
    <div class="evSection evCon3_1 event">
        <div class="inner">
            <div class="con_tit">
                <% if 1=1 then %><i class="end"></i><% end if %><!--이벤트 종료 아이콘-->
                <i class="event_tag ver_border">EVENT. 01</i>
                <h4><span>카톡 친구</span> 추가 이벤트</h4>
                <div class="sub_tit"><b>메가공무원과 카톡 친구</b> 맺은 화면을 캡처하여 인증하면 <br class="show-576"><b>푸짐한 선물</b>을 드려요! <br>기존 친구, 새로운 친구 <b>모두 참여 가능</b>합니다.</div>
            </div>
        </div>
    </div><!-- .event E -->

    <div class="evSection evCon4 event">
        <div class="inner">
            <div class="con_tit">
                <% if 1=1 then %><i class="end"></i><% end if %><!--이벤트 종료 아이콘-->
                <i class="event_tag ver_border">EVENT. 02</i>
                <h4><span>소문내기</span> 이벤트</h4>
                <div class="sub_tit"><b>메가공무원 카톡 친구</b> 추가 이벤트를 널리 알려주세요. <br>정성스럽게 작성할 수록, <br class="show-576">더 많은 친구들에게 <b>소문 낼수록 당첨 확률 UP!</b></div>
            </div>
        </div>
    </div><!-- .event E -->
</div>`;

const css = `/* 공통 */
.evSection .con_tit h4 {font-weight: 900; font-size: 55px;}
.evSection .con_tit h4 span {color: #017afd;}
.evSection .con_tit .sub_tit {font-weight: 400; font-size: 22px;}
.evSection .con_tit h4 + .sub_tit {margin-top: 15px;}

.con_tit .end::after {background: #000;}
.event .con_tit .event_tag {max-width: 250px; font-size: 40px; color: #3c1e20; border-color: #3c1e20; background: none; padding: 3px 0; margin-bottom: 20px;}
.event .con_tit .event_tag::before {border-color: #3c1e20;}

/* evCon3_1 */
.evCon3_1 {background: #ffea8a;}
.evCon3_1 .con_tit .event_tag::before {background: #ffea8a;}

/* evCon4 */
.evCon4 {background: #fff9dd;}
.evCon4 .con_tit .event_tag::before {background: #fff9dd;}

@media screen and (max-width: 1200px){
  .evSection .con_tit h4 {font-size: clamp(22px, 5.5vmin, 55px);}
  .evSection .con_tit .sub_tit {font-size: clamp(15px, 2.4vmin, 22px);}
  .evSection .con_tit h4 + .sub_tit {margin-top: 2%;}

  .event .con_tit .event_tag {font-size: clamp(16px, 4vmin, 40px); margin-bottom: 3%;}
}
`;

const excCss = `img{display:inline;}
.eventWrap .inner { padding: 70px 0; }`;

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
        link="<%=url_main%>/s/gong/event/2024/08200091/index.asp#eventWrap"
        onChange={onChange}
      />
    )
  }
</script>