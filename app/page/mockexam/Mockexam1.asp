<script type="text/babel">
  'use strict';

  function Mockexam1({ title, onChange }) {

const html = `<div class="eventWrap">
  <nav class="leftS">
    <a href="#;" class="toggle_left"><img src="<%=img_main%>/m/2024/0124_gongexam/arrow_toggle.png" alt=""></a>
    <div class="menuBox">
        <h2>
            <p>2024&nbsp;<br>메가공무원&nbsp;<br>전국 모의고사</p>
        </h2>
        <ul class="menu">
            <li class="info1 on">                
                <a href="#" onclick="EUI.moveQuick('.mainCon1'); return false;"><span>모의고사 신청 및 안내</span></a>
            </li>
            <li>
                <a href="javascript:;" onclick="goApply('./apply_main.asp#eventWrap');">
                    <span>온라인 응시</span>
                </a>
            </li>
            <li>
                <a href="javascript:;" onclick="goOpenDt2();"><span>성적 확인 및 분석</span></a>
            </li>
            <li>
                <a href="javascript:;" onclick="goMyStudy();"><span>해설강의</span></a>
            </li>
            <li>
                <a href="javascript:;" onclick="goNotice();"><span>모의고사 게시판</span></a>
                <ul>
                    <li><a href="javascript:;" onclick="goNotice();"><i>-&nbsp;</i>공지사항</a></li>
                    <li><a href="javascript:;" onclick="goQq();"><i>-&nbsp;</i>문항문의</a></li>
                    <li><a href="javascript:;" onclick="goScrq();"><i>-&nbsp;</i>성적문의</a></li>
                </ul>
            </li>
            
        </ul>
    </div>
    <!--<'% if cdate(lo_now_date) >= cdate("2023-05-13 10:00") then %>
    <a href="/s/gong/mockexam/2023_gi/index.asp#eventWrap" class="lnbBnr"><img src="<'%=img_main%>/m/2023/0413_gongexam/lnb_bnr_2023.jpg" alt="2023 지방직 대비 전국 모의고사 성적확인"></a>
    <'% end if %>-->
  </nav>
  <nav class="fix_menu bottom fixed" style="bottom: 0px;">
      <ul>
          <li class="fix_menu_top">
              <p class="top_point">합격 기원! 응시료 전액 지원! </p>
              <p class="top_text">모의고사 신청 마감까지 남은 시간</p>
          </li>
          <li class="fix_menu_bot">
              <div id="countWrap" class="fix_menu_time_wrp">
                  <p id="count_day" class="fix_menu_time day_ver">03</p>
                  <p class="fix_menu_text">일</p>
                  <p id="count_si" class="fix_menu_time hour_ver">23</p>
                  <p class="fix_menu_text">시간</p>
                  <p id="count_bun" class="fix_menu_time min_ver">42</p>
                  <p class="fix_menu_text">분</p>
              </div>
              <div class="fix_menu_btn">
                  
                  <a href="#" id="fixMenuBtn" class="box_link toggle fixed">신청하기 &gt;</a>
                  
              </div>
          </li>
      </ul>
  </nav>
  <div class="allp hide-1200">
      <a href="#" onclick="EUI.moveQuick('.tabcontent'); return false;">
          <img src="<%=img_main%>/m/2024/0124_gongexam/icon_main.png" alt="합격 기원 응시료 전액 지원">
      </a>
  </div>
  <nav class="flt_bnr" style="top: 340px;">
      <ul class="clearfix">
          <li><a href="https://lab.megagong.net/l/share/quizbank?_gl=1*1q3mtyl*_ga*MTM3MDM1ODg5Mi4xNzE1NjYzNTMw*_ga_2LHMS931K0*MTcxNjM4OTE3My44LjEuMTcxNjM4OTYwNi40LjAuMA..&amp;_ga=2.150265909.242211544.1716387190-1370358892.1715663530" target="_blank"><img src="<%=img_main%>/m/2024/0429_gongexam/icon_main.png" alt="기출 문제은행"></a></li>
          <li class="top"><a href="#" onclick="EUI.moveQuick('#eventWrap'); return false;"><img src="<%=img_main%>/m/2024/0429_gongexam/flt_top.png" alt="TOP"></a></li>
      </ul>
  </nav>
  <div class="evSection mainCon1 v3">
      <div class="inner">
          <div class="main_mini_tit">
              <b>응시자 수 1위!</b><sup>1)</sup> 전국 수험생의 이유 있는 선택! <br>합격 예측 정확도 <b>10명 중 9명 적중</b><sup>2)</sup>
          </div>
          <h3>
              <span>2024 지방직 합격 대비</span>
              <b>메가공무원 <br class="show-1200">전국 모의고사</b>
          </h3>
          <div class="main_text">지방직 시험 전 <b>보완해야 할 약점</b>, 전국 수험생 중 <b>나의 위치</b>를 <br>점검할 수 있는 <strong>마지막 단 한 번의 기회!</strong></div>
          <div class="apply_state gradi">
              실시간 신청 인원 <span><strong>11,066</strong>명</span><sup>3)</sup>
          </div>
          <div class="main_day">
              <div>
                  <div class="main_day_text">
                      <p class="main_day_app">신청 : ~5/26(일)</p>
                      <p class="main_day_exam">응시 : 5/25(토)~5/26(일)</p>
                  </div>
              </div>
          </div>
          <ul class="tiny_txt">
              <li>1) 2024년 2,3월 진행한 단일 회차 모의고사 응시 인원 기준 <br class="show-576">(메가공무원 1회 9,046명, 2회 10,282명 응시)</li>
              <li>2) 2023 대비 메가공무원 전국 모의고사, 풀서비스 동시 참여자 중 <br class="show-768">모의고사 합격진단과 실제 합격결과가 일치한 회원 비율 (91.4%) 기준</li>
              <li>3) 2024 지방직 대비 메가공무원 전국 모의고사 실시간 신청 인원 수 기준</li>
          </ul>
      </div>
  </div>
</div>`;

const css = `.eventWrap {width:100%;position:relative;font-family :'NotoSans KR';font-size:15px;line-height:1.4;letter-spacing:-0.05em;overflow:hidden;font-weight:200}
/*leftMenu*/
.leftS {position:absolute;top:0;width:203px;height:100%;background:#000;z-index:5;transition:all .3s}
.leftS.fixed {position:fixed;top:0}
.leftS.open {transform:translateX(-100%)}
.leftS .toggle_left {position:absolute;top:120px;left:202px;width:25px;height:52px}
.leftS .toggle_left img {position:absolute;transform:rotate(180deg);display:block;}
.leftS .toggle_left.on img {transform:rotate(0)}
.leftS h2 {width:100%;height:170px;background:#c78589;color:#fff;display:table;box-sizing:border-box;padding:0 25px;position:relative;border:1px solid #000}
.leftS h2 p {display:table-cell;vertical-align:middle;font-size:24px;line-height:120%;font-weight:900;text-align:left}
.leftS .menu {width:100%;text-align:left}
.leftS .menu > li {border-bottom:1px solid #181818;width:100%;overflow:hidden;font-size:18px;line-height:120%;font-weight:500}
.leftS .menu > li:last-child {border-bottom:none}
.leftS .menu > li > a {position:relative;display:table;width:100%;height:58px;font-weight:700}
.leftS .menu > li > a > span {display:table-cell;vertical-align:middle;padding-left:15px;color:#999}
.leftS .menu > li.on > a > span {color:#c78589} 
.leftS .menu > li ul {margin:0 0 0 25px}
.leftS .menu > li li {margin-top:15px}
.leftS .menu > li li:first-child {margin-top:0}
.leftS .menu > li li a {color:#999}
.leftS .menu li.on > a {color:#c78589} 
.leftS .menu > li li a i {font-style:normal}
.leftS .menu > li > a i.toggle, 
.topS .menu > li > a i.toggle{position:absolute;top:50%;left:117px;background:#a1232f;color:#fff;line-height:22px;width:75px;height:22px;margin:-11px 0 0;font-style:normal;font-size:13px;font-weight:normal;text-align:center}
.leftS .menu > li > a i.toggle::before, 
.topS .menu > li > a i.toggle::before{content:'';position:absolute;top:6px;left:-7px;width:0px;height:0px;border-right:7px solid #a1232f;border-top:5px solid transparent;border-bottom:5px solid transparent;transform:rotate(0deg)}
.leftS .menu > li > a i.toggle.on, 
.topS .menu > li > a i.toggle.on{background:#c78589}
.leftS .menu > li > a i.toggle.on::before, 
.topS .menu > li > a i.toggle.on::before{border-right:7px solid #c78589}
.leftS .menu > li li {margin: 15px 0}

.leftS {background: #f7fbfe} 
.leftS h2 {background: #0361e0; border:none} 
.leftS h2 p {font-size: 19px; line-height: 157%; font-weight: 700; padding-top: 15%} 
.leftS .menu > li {border-bottom:1px solid #cdcdcd;; font-size: 16px} 
.leftS .menu > li > a > span {color: #323232; padding-left: 25px} 
.leftS .menu > li li a {color: #333} 
.leftS .menu > li.on > a > span {color: #0361e0} 
.leftS .menu li.on > a {color:#0361e0} 
.leftS .toggle_left img {background: #0361e0} 
.leftS .menu > li > a i.toggle, .topS .menu > li > a i.toggle {background: #0361e0} 
.leftS .menu > li > a i.toggle::before, .topS .menu > li > a i.toggle::before {border-right-color: #0361e0} 
.leftS .menu > li > a i.toggle.on, .topS .menu > li > a i.toggle.on {background: var(--commentary-color1); color: #000; font-weight: 700} 
.leftS .menu > li > a i.toggle.on::before, .topS .menu > li > a i.toggle.on::before {border-right-color: var(--commentary-color1)} 
.leftS .menu > li li {margin: 15px 0} 
.leftS .menu > li:last-child {border-bottom: none}
.leftS .lnbBnr {display: inline-block; margin: 30px 0 0} 
.leftS .menu > li.event_left { background: #ebeffd; } 
.leftS .menu > li.event_left > a { color: #0588fe; padding: 18px 22px; font-size: 15px; } 
.leftS .menu > li.event_left.imgbnr > a {padding: 0} 
.leftS .menu > li.event_left > a strong { color: #fff; background: linear-gradient(90deg, #0588fe 0%, #f16fff 100%); font-weight: 400; border-radius: 50px; padding: 0 8px; font-size: 12px; margin-bottom: 5px; display: inline-block; } 
.leftS .menu > li:last-child { border-bottom: 1px solid #cdcdcd; } 

.fix_mode {padding-top:100px} 
.fix_menu {background: #0361e0; z-index: 5; position: relative; padding: 25px; color: #fff} 
.fix_menu ul {width: 1080px; margin: 0 auto; display:flex; align-items: center; justify-content:space-between} 
.fix_menu li {width: 20%; position: relative} 
.fix_menu li i {position: absolute; top: 50%; right: -35px; transform: translateY(-50%); z-index: 2} 
.fix_menu li a {font-weight: 500; display: block; padding: 13px 84px; font-size: 16px; position: relative; color:#000; font-weight: 900} 
.fix_menu li a br {display: none} 
.fix_menu li a:before {content:''; display:block; position: absolute; right: 0; top: 50%; transform: translateY(-50%); background: #999; height: 40%; width: 1px} 
.fix_menu li:last-child a:before {display:none}
.fix_menu li.on a {color:rgba(255, 255, 255, 1)} 
.fix_menu.fixed {position: fixed; top: 0; left: 0; width: 100%} 
.fix_menu.fixed.bottom {position: fixed; bottom: 0; top:auto; left: 0; width: 100%; z-index: 6;} 
.fix_menu .fix_menu_top {font-size: 20px; font-weight: 500; width: 28%; text-align: left} 
.fix_menu .fix_menu_top .top_point {color: #9dd0ff; font-size: 16px} 
.fix_menu .fix_menu_bot {display: flex; justify-content: space-between; align-items: center; width: 72%} 
.fix_menu_time_wrp {display: flex; justify-content: center; align-items: center} 
.fix_menu .fix_menu_time {font-size: 20px; font-weight: 500; background: #000; letter-spacing: 32px; padding: 8px 13px; text-align: center; width: 80px; position: relative} 
.fix_menu .fix_menu_time::before {content: ''; width: 8px; height: 100%; background: #0361e0; display: block; position: absolute; left: 50%; top:50%; transform: translate(-50%,-50%)} 
.fix_menu .fix_menu_text {margin: 0 20px 0 6px; font-size: 16px} 
.fix_menu .fix_menu_btn {background: #fff} 
.fix_menu .box_link.toggle.fixed.on {background: #000; color: #fff} 

.allp {position: absolute;top: 150px;right: 50px;z-index: 1} 
.allp.endevt {right: 50%;margin: 0 -560px 0 0;top: 110px} 
.allp a{display:block;margin-top:10px}
.allp a:first-child{margin-top:0}

/* flt_bnr */
.flt_bnr {position: absolute; text-align: right; top: 340px; right: 50px; z-index: 2;}
.flt_bnr li + li {margin: 10px auto 0;}
.flt_bnr li.top {text-align: center; margin-top: 2%;}
.flt_bnr li.top img {width: 68px; max-width: 50%;}

/*main*/
.eventWrap .evSection.mainCon1 {background: #000; background-position: center 0; background-size: auto 100%; padding: 0 0 0px; height: auto} 
/* .eventWrap .evSection.mainCon1 {padding: 0 0 108px} */
.eventWrap .evSection.mainCon1 .inner {padding: 20px 0 80px} 
.mainCon1 .tiny_txt {text-align:right;color:#555;margin-top:10px;font-size: 12px !important;} 
.mainCon1 .main_point_text {margin: 70px 0 20px; position: relative; z-index: 1} 
.mainCon1 .main_img_span {position: absolute; bottom: 0px; left: 55%; transform: translateX(-51%); width: 2055px} 
.mainCon1 h3 i {position: absolute; top: -110px; right: -40px; left: inherit; z-index: 1} 
.mainCon1 h3 i a {display: inline-block} 
.mainCon1 h3 {margin-top: 0px; position:relative} 

.mainCon1 p {margin-top:150px; color:#fff; font-size:35px; font-weight:300; line-height:150%} 
.mainCon1 p b span {color:#4563d1} 
.mainCon1 p b i {font-style: normal} 
.mainCon1 p b i {font-size: 14px; color: #777777; vertical-align: top; position: relative; top: -10px; font-weight: normal} 
.mainCon1 p strong {display: block; padding: 65px 0 0}

.mainCon1 p {margin: 70px 0} 
.mainCon1 p {margin: 25px 0 400px; font-size: 15px; color: #8d8d8d; font-weight: 400; position: relative} 
.mainCon1 p b {font-size: 17px; margin-top: 7px; display: block; font-weight: 500; color:#fff}
.mainCon1 .tiny_txt {margin: 0; text-align: center; position: relative; z-index: 1; color: #666} 
.mainCon1 .tiny_noti {font-size: 13px; color: #555; margin: 10px 0 0; display: block} 
.mainCon1 .apply_state {padding: 70px 0 0; color: #fcffa6} 
.mainCon1 .apply_state {padding: 70px 0 0; color: #fcffa6} 
.mainCon1 .apply_state.gradi {color: #fff;width: 400px;padding: 21px 0;border-radius: 100px;margin: 0 auto 45px;background:linear-gradient(90deg, rgba(253,30,217,1) 21%, rgba(2,150,255,1) 70%);font-size: 21px;height: 64px;} 
.mainCon1 .apply_state.gradi span, .mainCon1 .apply_state sup {color: #fff} 
.mainCon1 .apply_state.gradi strong {color: #fff;font-size: inherit;padding: 0 0 0 0} 
.mainCon1 .content {width: 662px; margin: 0 auto; background: #fcffa6; border-radius: 100px; font-size: 31px; font-weight: 700; padding: 21.1px 0} 
.mainCon1 .content span {display: none} 
.mainCon1 .content span.on {display: block} 
.mainCon1 .content strong {font-weight: 900} 
.mainCon1 .content .col_blue {color: #4564d1} 
.mainCon1 .content .col_red {color: #eb5353} 
.mainCon1 .main_day {position: relative}

.main_day {display: flex; justify-content: center; align-items: center; gap: 35px} 
.mainCon1 .main_day p {margin: 0px} 
.mainCon1 .main_day_tit {background: #fff; color: #000; font-size: 17px; font-weight: 600; display: inline-block; padding: 5px 28px; position: relative} 
.mainCon1 .main_day_tit .span_arrow {position: absolute; right: -14px; top: 50%; transform: translateY(-50%)} 
.main_day_text {display: flex; justify-content: center; align-items: center; gap: 38px; letter-spacing: 0px} 
.mainCon1 .main_day .main_day_text p {color: #fff; font-size: 18px; font-weight: 300} 
.mainCon1 .main_day .main_day_app {position: relative; display: inline-block} 
.mainCon1 .main_day .main_day_app::after {content: ""; display: block; width: 1px; height: 14px; background: #fff; opacity: 0.2; position: absolute; right: -20px; top: 56%; transform: translateY(-50%); z-index: 1} 



/* reset */
.mainCon1.renew p { margin: 0; } 
.mainCon1.renew p strong { padding: 0px 0 0; display: inline-block; width: inherit; } 

/* renew */
.mainCon1.renew .mian_img_side { position: absolute; right: -970px; bottom: -60px; width: 2055px; } 
.eventWrap .evSection.mainCon1.renew { background: #0c0c0c url('https://image.megagong.net/m/2024/0124_gongexam/main_con1_new.jpg') 50% 50% no-repeat; background-size: cover; } 
.eventWrap .evSection.mainCon1.renew .inner {padding: 157px 0 80px;} 
.mainCon1.renew .main_mini_tit {text-align: center;letter-spacing: 0px;color: #fff;margin-bottom: 10px;font-size: 41px;font-weight: 600;} 
.mainCon1.renew h3 { line-height: 1.2; font-size: 91px; font-family: 'NotoSans KR'; font-weight: 900; background: -webkit-linear-gradient(0deg, rgba(253,30,217,1) 21%, rgba(2,150,255,1) 70%); -webkit-background-clip: text; -webkit-text-fill-color: transparent; margin-bottom: 25px; } 
.mainCon1.renew h3 > span {display: block; color: #fff;}
.mainCon1.renew .main_text { color: #fff; font-size: 25px; letter-spacing: 0px; text-align: center; margin-bottom: 30px; font-weight: 600; } 
.mainCon1.renew .main_text.sub{font-size: 18px;opacity: 0.5;margin: 0 0 25px;font-weight: normal;display: none;} 
.mainCon1.renew .tiny_txt { text-align: right; color: #7a7a7a; opacity: 0.4; } 
.mainCon1.renew .tiny_txt.fir { } 
.mainCon1.renew .main_day {display: block;margin-bottom: 55px;} 
.mainCon1.renew .main_day_tit { margin-bottom: 18px; border-radius: 50px; font-weight: 800; } 
.mainCon1.renew .main_day .main_day_text p { font-size: 18px; letter-spacing: 1px; } 
.mainCon1.renew h3 i { top: -130px; right: -114px; } 
.mainCon1.renew p .point_h { color: #f91edb; } 
.mainCon1.renew .main_day .main_day_app::after { opacity: 0.5; } 


/* 0429 v3: 지방직 대비 모의고사 S */
.eventWrap .mainCon1.v3 {background: #0c0c0c url('https://image.megagong.net/m/2024/0429_gongexam/main_con1_bg.jpg') 50% 50% no-repeat; background-size: cover;}
.eventWrap .mainCon1.v3 .inner {padding: 135px 0 40px;}
.mainCon1.v3 .main_mini_tit {font-weight: 600; font-size: 41px; color: #fff; margin: 0 auto 55px;}
.mainCon1.v3 .main_mini_tit sup {font-size: 10px; color: #7e7e7e; vertical-align: top;}
.mainCon1.v3 .main_mini_tit b {color: #f91edb;}
.mainCon1.v3 h3 {margin: 0 auto 45px;}
.mainCon1.v3 h3 span {display: block; width: 60%; max-width: 480px; font-weight: bold; font-size: 43px; color: #fff; background: #f91edb; background: -webkit-linear-gradient(0deg, rgba(253,30,217,1) 21%, rgba(2,150,255,1) 70%); background: linear-gradient(90deg, rgba(253,30,217,1) 21%, rgba(2,150,255,1) 70%); margin: 0 auto 25px; padding: 5px 0;}
.mainCon1.v3 h3 b {display: block; line-height: 1; font-size: 91px; font-family: 'NotoSans KR'; font-weight: 900; background: -webkit-linear-gradient(0deg, rgba(253,30,217,1) 21%, rgba(2,150,255,1) 70%); -webkit-background-clip: text; -webkit-text-fill-color: transparent;}
.mainCon1.v3 .main_text {font-weight: 300; font-size: 22px; color: #fff; margin: 0 auto 70px; line-height: 1.6;}
.mainCon1.v3 .main_text b {position: relative;}
.mainCon1.v3 .main_text b::before {content: ''; position: absolute; bottom: 0; left: 0; width: 100%; height: 1px; background: #fff; }
.mainCon1.v3 .main_text strong {color: #f91edb;}
.mainCon1.v3 .apply_state.gradi {position: relative; margin: 0 auto 20px; padding: 24px 0; height: 70px;}
.mainCon1.v3 .apply_state sup {font-weight: 300; font-size: 10px; color: #8ebdff;}
.mainCon1.v3 .main_day {margin: 0 auto 60px;}
.mainCon1.v3 .tiny_txt {text-align: right; opacity: 60%;}
/* 0429 v3: 지방직 대비 모의고사 E */


@media screen and (max-width: 1200px){
  .eventWrap .evSection.mainCon1.renew .inner { padding: 11% 0 6%; } 
  .mainCon1.renew h3 i { top: 126%; right: 2%; width: 16%; } 
  .mainCon1.renew .typing_h3 .not_ty { margin-bottom: 1vw; } 
  .mainCon1.renew .main_day_tit { padding: 5px 28px; } 
  .mainCon1.renew .mian_img_side { right: -83%; bottom: -4%; width: 188%; } 
  .mainCon1.renew .main_mini_tit { margin-bottom: 1%; font-size: 30px; } 
  .mainCon1.renew h3 { margin-bottom: 4%; padding: 0; font-size: 77px; } 
  .mainCon1.renew .main_text { margin-bottom: 9%; font-size: 24px; } 
  .mainCon1.renew .main_day { display: block; margin-bottom: 8%; } 

  /* 0429 v3: 지방직 대비 모의고사 S */
  .eventWrap .mainCon1.v3 .inner {padding: 10% 0 5%;}
  .mainCon1.v3 .main_mini_tit {font-size: clamp(18px, 3.6vmin, 41px); margin: 0 auto 6%;}
  .mainCon1.v3 h3 {margin: 0 auto 5%;}
  .mainCon1.v3 h3 span {font-size: clamp(20px, 4vmin, 43px); margin: 0 auto 2%;}
  .mainCon1.v3 h3 b {font-size: clamp(42px, 9vmin, 91px);}
  .mainCon1.v3 .main_text {font-size: clamp(15px, 3vmin, 22px); margin: 0 auto 7%;}
  .mainCon1.v3 .apply_state.gradi {margin: 0 auto 3%; padding: 3vmin 0; height: auto;}
  .mainCon1.v3 .main_day {margin: 0 auto 6%;}
  /* 0429 v3: 지방직 대비 모의고사 E */

  /* fixmenu */
  .fix_menu {padding: 2% 0} 
  .fix_menu ul {width:96%} 
  .fix_menu li a {padding: 6% 60px} 
  .fix_menu .box_link.box_link {position: relative; bottom: inherit; left: inherit; height: inherit; background: #fff} 
  .fix_menu .fix_menu_top {font-size: 18px} 
  .fix_menu .fix_menu_top .top_point {font-size: 15px} 
}

 
@media (max-width: 992px){
  .mainCon1.renew .main_text {font-size: 22px;margin: 0 0 12px;} 
  .mainCon1.renew .main_mini_tit { margin-bottom: 3%; font-size: 25px; } 
  .mainCon1.renew h3 { font-size: 85px; } 
  .mainCon1.renew h3 i { top: 146%; right: 2%; width: 16%; } 
  .mainCon1.renew .main_day_tit { padding: 5px 28px; font-size: 17px; } 
  /* fixmenu */
  .fix_menu {padding: 1% 0} 
  .fix_menu ul {display: block} 
  .fix_menu ul li:nth-child(1) {margin-bottom: 1%} 
  .fix_menu .fix_menu_top {font-size: 16px; width: 100%; display: flex; justify-content: center; gap: 2%; align-items: end} 
  .fix_menu .fix_menu_bot {justify-content: center; gap: 3%; width: 100%} 
  .fix_menu .fix_menu_bot .box_link.box_link {padding: 4% 60px; font-size: 15px; font-weight: 600} 
  .fix_menu .fix_menu_time {font-size: 17px; letter-spacing: 29px; padding: 1% 11px; width: 70px} 
  .fix_menu .fix_menu_time::before {height: 104%} 
}


@media (max-width:768px){
  .mainCon1.renew .main_mini_tit { margin-bottom: 1%; font-size: 22px; } 
  .mainCon1.renew h3 { font-size: 76px; } 
  .mainCon1.renew .main_text { font-size: 19px; } 
  .mainCon1.renew .main_day_tit { font-size: 15px; } 
  .mainCon1.renew .main_day .main_day_text p { font-size: 16px; } 
  .mainCon1.renew h3 i { top: 146%; right: 0%; width: 19%; } 
}


@media (max-width: 576px){
  .mainCon1.renew .main_mini_tit { font-size: 19px; } 
  .mainCon1.renew h3 { font-size: 66px; } 
  .mainCon1.renew .main_text {font-size: 17px;margin-bottom: 2%;} 
  .mainCon1.renew .main_text.sub{
    font-size: 15px;
  }
  .mainCon1.renew h3 i { top: 151%; right: 0%; width: 25%; } 
  .fix_menu {padding: 2% 0} 
  .fix_menu .fix_menu_top {font-size: 14px} 
  .fix_menu .fix_menu_top .top_point {font-size: 13px} 
  .fix_menu .fix_menu_bot {gap: 0%} 
  .fix_menu .fix_menu_bot .box_link.box_link {padding: 4% 0px} 
  .fix_menu_time_wrp {width: 50%} 
  .fix_menu .fix_menu_text {margin: 0px 5% 0 1%; font-size: 14px} 
  .fix_menu .fix_menu_btn {width: 50%} 
  .fix_menu .fix_menu_time {font-size: 18px; letter-spacing: 0px; padding: 1% 3%; width: auto} 
  .fix_menu .fix_menu_time::before {display: none} 
}

@media (max-width: 460px){
  .mainCon1.renew .main_mini_tit { font-size: 16px; margin-bottom: 3%; } 
  .mainCon1.renew h3 { font-size: 54px; margin-bottom: 7%; } 
  .mainCon1.renew .main_text { font-size: 15px; margin-bottom: 5%; } 
  .mainCon1.renew .main_text.sub{font-size: 14px; margin-bottom: 7%;}
  .mainCon1.renew .main_day_tit { font-size: 14px; margin-bottom: 3%; } 
  .mainCon1.renew .main_day .main_day_text p { font-size: 14px; } 
  .mainCon1.renew h3 i { top: 158%; right: 0%; width: 28%; } 
}`;

const excCss = `.fix_menu.fixed.bottom{position:absolute;}
.fix_menu ul{width:100%;}
`;

const js = `$(".leftS .toggle_left").on('click', function(e) {
    e.preventDefault();
    $(".leftS, .rightS").toggleClass("open");
    $(this).toggleClass("on");
});
interval = setInterval(function(){
  $(".toggle").toggleClass("on");
}, 500); `;
const outJs = `
  clearInterval(interval);
`;

    return (
      <PageContent
        title={title}
        desc=""
        // image="/images/popup1.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        outJs={outJs}
        items={["모의고사","메뉴"]}
        link="<%=url_main%>/s/gong/mockexam/2024_1/?top=mainCon1"
        onChange={onChange}
      />
    )
  }
</script>