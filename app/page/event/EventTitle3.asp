<script type="text/babel">
  'use strict';

  function EventTitle3({ title, onChange }) {

const html = `<div class="eventWrap">
    <div class="evSection evCon7" id="event">
        <div class="inner">
            <span class="event_mark"><img src="<%=img_main %>/m/2024/0805_ysw7/event_mark.png" alt=""></span>

						<p class="mini_tit clamp-title2 y_ver">★신규 강좌 개강 기념★</p>
						<h4 class="con_tit wh_ver">
							2025 양승우 행정법 기본이론 <br class="show-992">'이.암.기' 강좌 <br>소문내고 선물 받아가세요!
							<% if 1=1 then %><i class="end"></i><% end if %><!--이벤트 종료 아이콘-->
						</h4>

						<p class="wh_ver event_text">
							양승우 선생님의 새롭게 개편된 <br class="show-576">행정법 기본이론 강좌를 널리 알려주세요. <br>
							이벤트를 참여해주신 분들 중 추첨을 통해 선물을 드리며, <br>
							<strong>모든 수강생분께는 '이암기 강좌 30% 할인 쿠폰'을 드립니다!</strong>
						</p>
						<span class="event_noti wh_ver">*30% 할인쿠폰은 인증 시 자동 지급됩니다. <br>(쿠폰 사용 기간 : 지급일로부터 2주간 *8/7부터 사용 가능)</span>
        </div>
    </div><!-- .evCon3 E -->
</div>`;

const css = `.con_tit .end { right: -20px; top: -210px; } 
.con_tit .end::after { background: #b3cbcc; } /* 이벤트종료 아이콘 색상변경 */

.clamp-title { font-size:44px; } 
.clamp-title2 { font-size:30px; } 
.clamp-text { font-size:20px; } 
.clamp-text2 { font-size:18px; } 
.con_tit { font-weight: 900; /*margin-bottom: 75px;*/ line-height: 1.3; } 
.con_tit b { font-weight: 900; } 
.con_tit b.light_ver { font-weight: 400; } 
.mini_tit { font-weight: 400; letter-spacing: -2px; margin-bottom: 15px; } 
.mini_tit.mb_re { margin-bottom: 0; } 

.mint_ver { color: #6cffdf; } 
.wh_ver { color: #fff; } 
.y_ver { color: #fffb96; }#event .event_mark { margin-bottom: 25px; display: inline-block; }

#event .con_tit { font-size: 54px; margin-bottom: 20px; letter-spacing: -4px; }
#event .event_text { font-size: 22px; font-weight: 400; margin-bottom: 20px; line-height: 1.6; } 
#event .event_noti { font-size: 16px; opacity: 0.7; font-weight: 400; margin-bottom: 65px; display: inline-block; }

@media screen and (max-width: 1200px) {
    .clamp-title { font-size: clamp(23px,4.8vmin,44px); } 
    .clamp-title2 { font-size: clamp(16px,3.2vmin,30px); } 
    .clamp-text { font-size: clamp(15px,2vmin,20px); } 
    .clamp-text2 { font-size: clamp(13px,2vmin,18px); } 
    .clamp-text3 { font-size: clamp(13px,1.8vmin,16px); } 
    .mini_tit { margin-bottom: 1%; }

    #event .event_mark { margin-bottom: 2%; }
    #event .con_tit { margin-bottom: 4%; font-size: clamp(23px,5.6vmin,54px); } 
    #event .event_text { font-size: clamp(18px,2.4vmin,22px); margin-bottom: 2%; line-height: 1.5; } 
    #event .event_noti { font-size: clamp(15px,1.8vmin,16px); margin-bottom: 5%; } 
}
`;

const excCss = `img{display:inline;}
.eventWrap .inner { padding: 70px 0; } 
#event { background: #005254; }

.con_tit .end { top: -90px; } `;

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
        items={["이벤트 타이틀","다양한 색상"]}
        link="<%=url_main%>/event/2024/08050029/index.asp#eventWrap"
        onChange={onChange}
      />
    )
  }
</script>