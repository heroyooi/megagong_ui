<script type="text/babel">
  'use strict';

  function Exam3({ title, onChange }) {

const html = `<!-- 메가공무원 9급 합격대비 기초학습 진단평가 S -->
<div id="eventWrap" class="eventWrap">
    <!-- 응시정보입력 - 결과 S -->
    <div id="apply_info" class="evSection apply_info">
        <div class="inner">
            <div class="title_default">
                <h4>응시 정보 입력</h4>
            </div>

            <div class="series bnr_default">
                <a href="./series_guide.asp" title="직렬 선택 가이드">
                    아직 직렬 고민 중이라면? <br class="show-992" /><span>직렬 선택 가이드</span> 및 <br class="show-576" />직렬별 <span>과목 소개</span> 보러 가기 <i class="arrow"></i>
                </a>
            </div>

            <ul class="apply_noti box_default">
                <li><span class="mark">ㆍ</span>정확한 진단을 위해 응시 정보를 입력해 주시기 바랍니다.</li>
                <li><span class="mark">ㆍ</span>국가직 9급 직렬 내에서만 관심 직렬 선택이 가능합니다.</li>
                <li><span class="mark">ㆍ</span>응시 후에는 응시 정보 수정이 불가능합니다.</li>
            </ul>

            <div class="box_default">
                <div class="box_title"><span>■</span>&ensp;나의 응시 정보</div>
                <div class="info_wrap type_2">
                    <div class="info flex">
                        <div class="info_title">ㆍ응시 시험</div>
                        <div class="info_content">국가직 9급</div>
                    </div>
                    <div class="info flex">
                        <div class="info_title">ㆍ수험 구분</div>
                        <div class="info_content">예비 수험생</div>
                    </div>
                    <div class="info">
                        <div class="info_title">ㆍ관심 직렬</div>
                        <table class="info_table">
                            <colgroup>
                                <col style="width: 21%;">
                                <col style="width: 29%;">
                                <col style="width: 21%;">
                                <col style="width: 29%;">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <th scope="row">직군</th>
                                    <td>행정직군</td>
                                    <th scope="row">직렬</th>
                                    <td>일반행정-전국</td>
                                </tr>
                                <tr>
                                    <th scope="row">공통과목</th>
                                    <td> 국어, 영어, 한국사</td>
                                    <th scope="row">전문과목</th>
                                    <td>행정법총론, 행정학개론</td>
                                </tr>
                                <tr id="special_subj_know" style="">
                                    <th scope="row"><div>행정법총론 <br />배경 지식 보유 여부</div></th>
                                    <td>없음</td>
                                    <th scope="row"><div>행정학개론 <br />배경 지식 보유 여부</div></th>
                                    <td>없음</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="info">
                        <div class="info_title">ㆍ수험 정보</div>
                        <table class="info_table">
                            <colgroup>
                                <col style="width: 21%;">
                                <col style="width: 29%;">
                                <col style="width: 21%;">
                                <col style="width: 29%;">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <th scope="row">공무원 준비 이유</th>
                                    <td>고용안정성 때문에</td>
                                    <th scope="row">목표 수험 기간</th>
                                    <td>6개월~1년</td>
                                </tr>
                                <tr>
                                    <th scope="row">직렬 선택 이유</th>
                                    <td>평소에 관심 많은 직렬이어서</td>
                                    <th scope="row">최종 학력</th>
                                    <td>대학(4년제) 졸업</td>
                                </tr>
                                <tr>
                                    <th scope="row">수능 등급</th>
                                    <td colspan="3" class="col_3">
                                        <div class="flex">
                                            <span>국어 1등급</span>
                                            <span>영어 1등급</span>
                                            <span>한국사 1등급</span>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="info_btn">
                    <a href="javascript: void(0)" onclick="modifyInfo();">수정하기</a>
                    <a href="javascript: void(0);" onclick="startExam();" class="apply">응시하기</a>
                </div>
            </div>
        </div>
    </div>
    <!-- 응시정보입력 - 결과 E -->

</div><!-- //eventWrap -->
<!-- 메가공무원 9급 합격대비 기초학습 진단평가 E -->`;

const css = `/* setting */
.show-1400 {display: none;}
.cr_red {color: #f00;}
.cr_blue {color: #00f;}

.evSection {padding: 100px 0 150px; background: #fffde6;}
.evSection .con_tit h5 {font-weight: 900; font-size: 38px;}
.title_default {padding-bottom: 40px; border-bottom: 2px solid #000; margin-bottom: 50px;}
.title_default h4 {font-weight: 900; font-size: 34px;}

/* 기본 탭 */
.evSection .tab_base.tab_default {display: flex; justify-content: center; align-items: center; gap: 20px; margin: 0 auto 30px;}
.evSection .tab_base.tab_default li {width: 33%; max-width: 220px;}
.evSection .tab_base.tab_default li a {display: block; font-size: 18px; color: #a48ab3; background: #e8d1ff; padding: 17px 0; border-radius: 30px;}
.evSection .tab_base.tab_default li.on a {font-weight: 500; color: #fff; background: #c081ff;}

/* 서브 탭 */
.evSection .tab_base.tab_sub{display:flex;justify-content:center;gap:8px;flex-wrap:wrap;}
.evSection .tab_base.tab_sub li a{font-size:16px;color:#bbb99e;border:1px solid #bbb99e;display:inline-block;padding:6px 20px;border-radius:20px;}
.evSection .tab_base.tab_sub li.on a{color:#c081ff;font-weight:700;border-color:#c081ff;}
.evSection .panel_base.panel_sub{margin-top:40px;}

/* 응시 탭 */
.result_tab {border-bottom: 1px solid #000; margin-bottom: 20px;}
.result_tab ul {display: flex; justify-content: flex-start; align-items: center;}
.result_tab ul li {width: 130px; max-width: 30%;}
.result_tab ul li a {display: block; font-size: 16px; color: #8a8a8a; border: 1px solid #ddd; border-bottom: none; border-radius: 20px 20px 0 0; padding: 18px 0;}
.result_tab ul li + li a {border-left: none;}
.result_tab ul li.on a {font-weight: 700; color: #fff; background: #000}

/* 컨텐츠 박스 */
.box_default {background: #fff; border: 1px solid #ddd; border-radius: 20px; padding: 38px 40px; font-size: 16px;}
.box_default + .box_default {margin-top: 50px;}
.box_default .box_title {font-weight: 700; font-size: 20px; text-align: left; margin-bottom: 20px;}
.box_default .box_title span {font-size: 13px; vertical-align: middle;}

.box_default.apply_noti {text-align: left;}
.box_default.apply_noti li {position: relative; font-weight: 400; font-size: 16px; padding-left: 15px;}
.box_default.apply_noti li .mark {position: absolute; top: 0; left: 0;}
.box_default.apply_noti li b {color: #c081ff;}

/* 나의 응시 정보 */
.info_wrap {font-size: 16px; color: #333;}
.info_wrap .info.flex {display: flex; justify-content: flex-start; align-items: center;}
.info_wrap .info + .info {margin-top: 15px;}
.info_wrap .info .info_title {font-weight: 700; text-align: left;}
.info_wrap .info.flex .info_title::after {content: ''; display: inline-block; width: 1px; height: 14px; background: #999; margin: 0 10px; vertical-align: middle;}
.info_wrap .info .radio_list {display: flex; justify-content: flex-start; align-items: center; gap: 14px;}
.info_wrap .info .radio_list li label {cursor: pointer;}
.info_wrap .info .radio_list li label input[type=radio] {cursor: pointer;}
.info_wrap .info .info_table {color: #111; border-top: 2px solid #e9e4ab; border-bottom: 2px solid #e9e4ab; margin-top: 10px;}
.info_wrap .info .info_table th {background: #fffcd7; border: 1px solid #ddd; padding: 14px 10px;}
.info_wrap .info .info_table td {text-align: left; border: 1px solid #ddd; padding: 14px 10px;}
.info_wrap .info .info_table th:first-child {border-left: none;}
.info_wrap .info .info_table td:last-child {border-right: none;}
.info_wrap .info .info_table td .select_box {margin-right: 40px;}
.info_wrap .info .info_table td .select_box select {width: 100%; height: 29px; font-family: var(--font); font-size: 16px; color: #888; padding: 0 8px; border: 1px solid #ddd; border-radius: 0; appearance: none; cursor: pointer; background-color: #fff; background-image: url(https://image.megagong.net/m/2024/0708_exam/select_arrow.png); background-repeat: no-repeat; background-position: 100% 0;}
.info_wrap .info .info_table td.col_3 .flex {display: flex; justify-content: flex-start; align-items: center;}
.info_wrap .info .info_table td.col_3 .select_box {display: flex; justify-content: flex-start; align-items: center; gap: 10px; text-wrap: nowrap; margin-right: 18px;}
.info_wrap .info .info_table td.col_3 .select_box select {width: 128px;}
.info_btn {display: flex; justify-content: center; align-items: center; gap: 20px; margin: 40px auto;}
.info_btn a {display: block; width: 290px; max-width: 48%; font-weight: 500; font-size: 18px; color: #fff; background: #000; padding: 17px 0; border-radius: 10px;}
.info_btn a.apply {background: #c081ff;}
/* 응시 후 */
.info_wrap.type_2 .info .info_table th {padding: 9px 10px;}
.info_wrap.type_2 .info .info_table td {padding: 9px 10px;}
.info_wrap.type_2 .info .info_table td.col_3 .flex span + span::before {content: ''; display: inline-block;; width: 1px; height: 14px; background: #c3c3c3; margin: 0 7px; vertical-align: middle;}

/* 전 직렬 팝업 */
.tiny_pop {text-align: left; font-size: 12px; color: #888; margin-top: 10px;}
.tiny_pop a {font-size: 11px; color: #fff; background: #c081ff; border-radius: 3px; padding: 0 5px; margin-left: 5px; text-wrap: nowrap;}
.interest_pop {text-align: center;}


/* 띠배너 */
.bnr_default a {position: relative; display: block; font-weight: 700; font-size: 20px; letter-spacing: -0.04em; padding-top: 21px; padding-bottom: 21px; border-radius: 10px;}
.bnr_default.series {margin-bottom: 30px;}
.bnr_default.series a {font-size: 24px; color: #fff; background: #63c6ff; padding: 30px 0; border-radius: 20px;}
.bnr_default.series a::before,
.bnr_default.series a::after {content: ''; position: absolute; bottom: 0;}
.bnr_default.series a::before {left: 55px; width: 114px; height: 74px; background-image: url(https://image.megagong.net/m/2024/0708_exam/bnr_series_bg1.png); background-size: contain; background-repeat: no-repeat; background-position: 50% 100%;}
.bnr_default.series a::after {right: 40px; width: 128px; height: 76px; background-image: url(https://image.megagong.net/m/2024/0708_exam/bnr_series_bg2.png); background-size: contain; background-repeat: no-repeat; background-position: 50% 100%;}
.bnr_default.series a span {color: #111;}
.bnr_default.series a .arrow {display: inline-block; width: 10px; height: 16px; background: url(https://image.megagong.net/m/2024/0708_exam/bnr_arrow_wht.png) no-repeat; background-size: contain; vertical-align: middle;}
.bnr_default.quizbank {margin-top: 30px;}
.bnr_default.quizbank a {background: #e0f3f8; padding-left: 90px; text-align: left;}
.bnr_default.quizbank a::after {content: ''; position: absolute; width: 142px; height: 70px; bottom: 0; right: 90px; background-image: url(https://image.megagong.net/m/2024/0708_exam/bnr_quizbank_bg.png); background-size: contain; background-repeat: no-repeat; background-position: 50% 100%;}
.bnr_default.quizbank a span.cr_1 {color: #c081ff;}
.bnr_default.quizbank a span.cr_2 {color: #63c6ff;}
.bnr_default.quizbank a .arrow {display: inline-block; width: 7px; height: 16px; background: url(https://image.megagong.net/m/2024/0708_exam/bnr_arrow_blk.png) no-repeat; background-size: contain; vertical-align: middle;}
.bnr_default.pass_opinion {margin-top: 30px;}
.bnr_default.pass_opinion a {background: #fae9e0;}
.bnr_default.pass_opinion a::before,
.bnr_default.pass_opinion a::after {content: ''; position: absolute; bottom: 0;}
.bnr_default.pass_opinion a::before {left: 30px; width: 105px; height: 59px; background-image: url(https://image.megagong.net/m/2024/0708_exam/bnr_pass_opinion_bg1.png); background-size: contain; background-repeat: no-repeat; background-position: 50% 100%;}
.bnr_default.pass_opinion a::after {right: 36px; width: 117px; height: 60px; background-image: url(https://image.megagong.net/m/2024/0708_exam/bnr_pass_opinion_bg2.png); background-size: contain; background-repeat: no-repeat; background-position: 50% 100%;}
.bnr_default.pass_opinion a span.cr_1 {color: #63c6ff;}
.bnr_default.pass_opinion a span.cr_2 {color: #ff737a;}
.bnr_default.pass_opinion a .arrow {display: inline-block; width: 7px; height: 16px; background: url(https://image.megagong.net/m/2024/0708_exam/bnr_arrow_blk.png) no-repeat; background-size: contain; vertical-align: middle;}
.bnr_default.sub_guide a {background: #e0f3f8; border-radius: 29px; padding: 15px 0; padding-left: 120px;}
.bnr_default.sub_guide a::before {content: ''; position: absolute; width: 115px; height: 68px; bottom: 0; left: 260px; background-image: url(https://image.megagong.net/m/2024/0708_exam/bnr_sub_guide_bg.png); background-size: contain; background-repeat: no-repeat; background-position: 50% 100%;}
.bnr_default.sub_guide a span {color: #63c6ff;}
.bnr_default.price a {background: #e0f3f8; border-radius: 29px; padding: 15px 0; padding-left: 160px;}
.bnr_default.price a::before {content: ''; position: absolute; width: 134px; height: 68px; bottom: 0; left: 250px; background-image: url(https://image.megagong.net/m/2024/0708_exam/bnr_price_bg.png); background-size: contain; background-repeat: no-repeat; background-position: 50% 100%;}
.bnr_default.price a span {color: #63c6ff;}
.bnr_default.price + .tiny_noti {color: #888; margin-top: 10px; text-align: right;}

/* 기본 테이블 */
.table_default {font-size: 16px;}
.table_default table {background: #fff;}
.table_default tr th,
.table_default tr td {padding: 10px 5px; border: 1px solid #ddd; line-height: 1.2;}
.table_default tr th:first-child,
.table_default tr td:first-child {border-left: none;}
.table_default tr th:last-child,
.table_default tr td:last-child {border-right: none;}

.table_default .tbl_mo {display: none;}
.table_default .cr_1 {color: #fff; background: #6d1ac1;}
.table_default .cr_2 {background: #fffcd7;}
.table_default .tal {text-align: left;}

.table_default .tiny_noti {color: #888; margin-top: 10px; text-align: left;}
.table_default .tiny_noti a {font-size: 11px; color: #fff; background: #c081ff; border-radius: 3px; padding: 0 5px; margin-left: 5px; text-wrap: nowrap;}

/* S: left.asp */
.lnb_bar {position: absolute; top: 140px; left: 50%; margin-left: -640px; transform: translateX(-100%); z-index: 1;}
.lnb_bar.pofixed {position: fixed;}
.lnb_bar .depth1 {background: #fff; border: 1px solid #ddd; border-radius: 15px;}
.lnb_bar .depth1 > li {position: relative;}
.lnb_bar .depth1 > li + li {border-top: 1px solid #ddd;}
.lnb_bar .depth1 > li > a {position: relative; width: 230px; display: flex; justify-content: flex-start; align-items: center; gap: 14px; padding: 22px 27px;}
.lnb_bar .depth1 > li > a strong {font-size: 18px; line-height: 1.2; text-align: left;}
.lnb_bar .depth1 > li.on > a {color: #c081ff;}
/* lnb - depth2 */
.lnb_bar .depth1 > li.accordion > a.on {color: #c081ff;}
.lnb_bar .depth1 > li.accordion > a::before {content: ''; position: absolute; top: calc(50% - 17px/2); right: 30px; width: 17px; height: 11px; background: url(https://image.megagong.net/m/2024/0708_exam/left_arrow.png) no-repeat; transition: transform 0.3s;}
.lnb_bar .depth1 > li.accordion.on > a::before {transform: rotateX(180deg);}
.lnb_bar .depth1 > li.accordion.on > a.hideDepth::before {transform: rotateX(0deg);}
.lnb_bar .depth1 .depth2 {display: none; padding-bottom: 27px; margin-top: -10px;}
.lnb_bar .depth1 .on .depth2 {display: block;}
.lnb_bar .depth1 .depth2 li a {display: block; font-size: 16px; color: #888; padding: 0 25px; text-align: left;}
.lnb_bar .depth1 .depth2 li a > div {position: relative; width: fit-content; margin-left: 10px; border-bottom: 1px solid transparent;}
.lnb_bar .depth1 .depth2 li a .mark {position: absolute; top: calc(50% - 2.5px); left: -10px; width: 5px; height: 5px; background: #888; border-radius: 50%;}
.lnb_bar .depth1 .depth2 li:hover a,
.lnb_bar .depth1 .depth2 li.on a {color: #c081ff;}
.lnb_bar .depth1 .depth2 li:hover a > div,
.lnb_bar .depth1 .depth2 li.on a > div {border-bottom-color: #c081ff;}
.lnb_bar .depth1 .depth2 li:hover a .mark,
.lnb_bar .depth1 .depth2 li.on a .mark {background: #c081ff;}
.lnb_bar .depth1 .depth2 li:hover ~ li.on a {color: #888;}
.lnb_bar .depth1 .depth2 li:hover ~ li.on a > div {border-bottom-color: transparent;}
.lnb_bar .depth1 .depth2 li:hover ~ li.on a .mark {background: #888;}
/* E: left.asp */

/* S: 진단평가란? - main.asp */
/* con_top */
.con_top {padding: 140px 0 150px; background: url(https://image.megagong.net/m/2024/0708_exam/main_bg.jpg) no-repeat; background-size: auto 100%;}
.con_top h3 {margin: 0 auto 60px;}
.con_top .visual_slider {margin: 0 -80px 45px -70px;}
.con_top .visual_slider .item {position: relative;}
.con_top .visual_slider .item .arrow {position: absolute; width: fit-content; max-width: 40%; top: 53%; right: 0;}
.con_top .visual_slider .item .arrow::before {content: ''; position: absolute; width: 0; height: 100%; top: 0; background: url(https://img.megagong.net/m/2024/0708_exam/main_arrow.png); background-size: auto 100%; animation: aniWidth 2s linear infinite; animation-delay: 2s; filter: brightness(1.1);}
.con_top .link_btn {display: block; width: 80%; max-width: 340px; font-weight: 900; font-size: 32px; color: #fff; background: #c081ff; padding: 22px 0; border-radius: 45px; margin: 0 auto;}
.con_top .link_btn.result {background: #6d1ac1;}
.con_top .slick-dots {display: flex; justify-content: center; align-items: center; gap: 12px;}
.con_top .slick-dots li button {font-size: 0; width: clamp(10px, 2.4vmin, 18px); height: clamp(10px, 2.4vmin, 18px); background: #fff; border: 1px solid #000; border-radius: 50%;}
.con_top .slick-dots li.slick-active button {background: #000;}

@keyframes aniWidth {
    0% {width: 0; left: 0; background-position: 0 50%;}
    25% {width: 100%; background-position: 0 50%;}
    50% {width: 100%; left: auto; right: 0; background-position: 100% 50%;}
    100% {width: 0; right: 0;  background-position: 100% 50%;}
}

/* evCon1 */
.evCon1 {padding: 150px 0;}
.evCon1 h4 {font-weight: 900; font-size: 68px; color: #6d1ac1; margin-bottom: 80px;}
.evCon1 .step_wrap .step + .step {margin-top: 140px;}
.evCon1 .step_wrap .con_tit {margin-bottom: 60px;}
.evCon1 .step_wrap .con_tit .label {display: block; position: relative; z-index: 0; margin-bottom: 30px;}
.evCon1 .step_wrap .con_tit .label::before {content: ''; position: absolute; width: 100%; height: 1px; top: 50%; left: 0; background: #c081ff; z-index: -1;}
.evCon1 .step_wrap .con_tit .label span {display: inline-block; width: 130px; font-style: normal; font-size: 21px; color: #fff; background: #c081ff; border-radius: 18px; padding: 3px 0;}
.evCon1 .step_wrap .con_tit .sub_tit {font-weight: 400; font-size: 21px; color: #666; margin-top: 10px;}
.evCon1 .step_wrap .con_tit .sub_tit span {font-weight: 700; color: #c081ff;}
.evCon1 .step_wrap .step .content {position: relative; z-index: 0;}
.evCon1 .step_wrap .step .content .badge {position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); width: 150px; height: 150px; border-radius: 50%; display: flex; justify-content: center; align-items: center; font-weight: 700; font-size: 18px; line-height: 1.2; color: #d7afff; background: rgba(0, 0, 0, 0.9); z-index: 1;}
.evCon1 .step_wrap .step_slider .slick-track {display: flex !important; align-items: center;}
.evCon1 .step_wrap .step_slider .item {background: #fff; border-radius: 20px; border: 1px solid #e5deed; overflow: hidden;}
.evCon1 .step_wrap .step_slider img {margin: 0 auto;}
.evCon1 .step_wrap .step_slider .slick-arrow {position: absolute; width: 50px; height: 96px; top: 50%; transform: translateY(-50%); font-size: 0; z-index: 1;}
.evCon1 .step_wrap .step_slider .slick-prev {left: -90px; background: url(https://image.megagong.net/m/2024/0708_exam/con1_prev.png) no-repeat;}
.evCon1 .step_wrap .step_slider .slick-next {right: -90px; background: url(https://image.megagong.net/m/2024/0708_exam/con1_next.png) no-repeat;}
.evCon1 .step_wrap .step_slider .slick-dots {display: flex; justify-content: center; align-items: center; gap: 12px;}
.evCon1 .step_wrap .step_slider .slick-dots li button {font-size: 0; width: clamp(10px, 2.4vmin, 18px); height: clamp(10px, 2.4vmin, 18px); background: #fffcd7; border: 1px solid #6d1ac1; border-radius: 50%;}
.evCon1 .step_wrap .step_slider .slick-dots li.slick-active button {background: #6d1ac1;}
/* E: 진단평가란? - main.asp */

/* S: 직렬 선택 가이드 - series_guide.asp */
.evSeries .box_default b {color: #c081ff;}
.evSeries .tip_title {font-weight: 700; font-size: 24px; text-align: left; margin: 80px auto 20px;}
.evSeries .tip_title span {font-size: 18px;}
.evSeries .tip_title::before {content: ''; display: inline-block; width: 58px; height: 58px; vertical-align: middle; margin-right: 5px; background-image: url(https://image.megagong.net/m/2024/0708_exam/series_tip_icon.png); background-repeat: no-repeat; background-size: auto 100%;}
.evSeries .tip_title.tip1::before {background-position: 0 0;}
.evSeries .tip_title.tip2::before {background-position: -58px 0;}
.evSeries .tip_title.tip3::before {background-position: -116px 0;}
.evSeries .table_default {margin-top: 50px;}
.evSeries .msg {font-size: 18px; margin-top: 20px;}
.evSeries .msg b {color: #c081ff;}

.series_cont {display: flex; flex-wrap: wrap; justify-content: center; align-items: center; gap: 40px; background: url(https://image.megagong.net/m/2024/0708_exam/series_arrow.png) no-repeat 50% 50%;}
.series_cont .item {width: 450px; height: 450px; color: #111; background: #fff; border-radius: 50%; border: 1px solid #ddd; padding: 100px 0;}
.series_cont .item_title {width: fit-content; font-weight: 900; font-size: 26px; color: #c081ff; padding-bottom: 5px; border-bottom: 2px solid #c081ff; margin: 0 auto 20px;}  
.series_cont .item dl dt {font-weight: 900; font-size: 20px; margin-bottom: 20px;} 
.series_cont .item dl dt span {display: block; font-weight: 400; font-size: 16px; color: #555;}
.series_cont .item dl dd {font-size: 16px;} 
.series_cont .item dl dd ul {display: flex; justify-content: center; align-items: center; gap: 5px 10px; flex-wrap: wrap;} 
.series_cont .item dl dd ul::before {content: ''; display: block; width: 100%; height: 0; order: 2;}
.series_cont .item dl dd ul li:nth-child(n + 4) {order: 3;} 
.series_cont .item dl dd ul li a {display: block; font-size: 19px; color: #a48ab3; border: 1px solid #a48ab3; border-radius: 18px; padding: 2px 20px;} 
.series_cont .item dl dd ul li:hover a {font-weight: 700; color: #fff; background: #6d1ac1; border-color: #6d1ac1;}
/* E: 직렬 선택 가이드 - series_guide.asp */

/* S: 과목별 특징 및 학습법 - subject_guide.asp */
.subject_intro_wrap .tec_info{display:flex;justify-content:center;align-items:center;gap:0 10px;}
.subject_intro_wrap .tec_info dt{width:230px;height:230px;overflow:hidden;}
.subject_intro_wrap .tec_info dd{text-align:left;}
.subject_intro_wrap .tec_info dd .slogan{font-size:18px;color:#555555;display:block;}
.subject_intro_wrap .tec_info dd .home{display:flex;font-size:28px;font-weight:bold;align-items:center;gap:0 6px;}
.subject_intro_wrap .tec_info dd .home span{display:flex;font-size:13px;font-weight:900;color:#fff;background-color:#000;border-radius:50%;width:24px;height:24px;align-items:center;justify-content:center;}
.subject_intro_wrap .tec_info dd .btns_wrap{display:flex;gap:0 5px;margin-top:20px;display:none;}
.subject_intro_wrap .tec_info dd .btns_wrap .btn_base{display:inline-block;font-size:13px;color:#fff;background-color:#333;padding:4.5px 14px;border-radius:5px;min-width:110px;text-align:center;}
.subject_info_list > li{padding:40px;background-color:#fff;border:1px solid #ddd;border-radius:15px;margin-top:20px;text-align: justify; font-size:16px;color:#555;font-weight:400;}
.subject_info_list > li:first-child{margin-top:0;}
.subject_info_list > li .num{font-weight:900;color:#111;font-size:18px;margin-bottom:20px;display:block;}
.subject_info_list > li .con{margin-top:10px;}
.subject_info_list > li .con:first-child{margin-top:0;}
.subject_info_list > li .s-tit{font-weight:900;margin-top:20px;}
.subject_info_list > li .s-tit,
.subject_info_list > li .con strong.black{color:#000;}
.subject_info_list > li .s-tit.primary,
.subject_info_list > li .con strong{color:#c081ff;}
.subject_info_list > li .con strong span{font-weight:400;color:#000;}
.subject_info_list > li .con li{padding-left:10px;text-indent:-10px;}
.subject_info_list > li .con.type-2 li{margin-top:20px;padding-left:20px;text-indent:-20px;}
.subject_info_list > li .con.type-2 li:first-child{margin-top:0;}
.subject_info_list > li .con.type-2 li strong{display:block;margin-bottom:10px;}
.subject_info_list > li .tbl_subject{table-layout:fixed;width:100%;}
.subject_info_list > li .tbl_subject th,.subject_info_list > li .tbl_subject td{padding:10px;text-align:center;border-bottom:1px solid #dddddd;border-left:1px solid #dddddd;font-size:16px;}
.subject_info_list > li .tbl_subject thead tr:first-child th{border-top:1px solid #ddd;}
.subject_info_list > li .tbl_subject th:last-child,
.subject_info_list > li .tbl_subject td:last-child{border-right:1px solid #ddd;}
.subject_info_list > li .tbl_subject th.bl{border-left:1px solid #ddd;}
.subject_info_list > li .tbl_subject th{background-color:#fffcd7;font-weight:700;}
.subject_info_list > li .tbl_subject td{font-weight:400;color:#111;}
.subject_info_list > li .tbl_subject.type-2 th, .subject_info_list > li .tbl_subject.type-2 td{text-align:left;}
.subject_info_list > li .tbl_subject.type-2 tr:first-child th,
.subject_info_list > li .tbl_subject.type-2 tr:first-child td{border-top:1px solid #ddd;}
.subject_info_list > li .con.type-2 .tbl_subject.type-2 th strong{margin-bottom:0;}
.tbl_subject_wrap{display:flex;justify-content:space-between;align-items:center;gap:0 20px;}
.tbl_subject_wrap .tbl_subject{flex-grow:1;}
.tbl_subject_wrap .tbl_arrow{flex-shrink:0;}
.subject_info_list > li .tiny{font-size:12px;color:#999;margin-top:10px;}
.subject_info_list > li .info_box{font-size: 14px; border:1px solid #ccc;padding:10px;border-radius:5px;margin-top:10px;}
.subject_info_list > li .info_box li{padding-left:10px;text-indent:-10px;line-height:1.6;color:#111;}
.subject_info_list > li .b_tit{color:#000;font-weight:500;font-size:16px;text-align:center;display:block;}
.subject_info_list > li .b_tit .primary{color:#c081ff;}
/* E: 과목별 특징 및 학습법 - subject_guide.asp */

/* S: 응시 - apply_start.asp */
.apply_start .test_paper {display: flex; justify-content: center; align-items: stretch; gap: 20px; height: 770px; margin-bottom: 40px;}
.apply_start .question_wrap {position: relative; width: 590px;}
.apply_start .question_wrap .question_zone .btn_wrap a {position: absolute; top: 50%; display: block; width: 24px; height: 40px; font-size: 0; background-image: url(https://img.megagong.net/m/2023/0222_gongexam/paging_arrow.png); background-repeat: no-repeat;}
.apply_start .question_wrap .question_zone .btn_wrap a.prev {left: 3%; background-position: 0 0;}
.apply_start .question_wrap .question_zone .btn_wrap a.next {right: 3%; background-position: 100% 0;}
.apply_start .answer_sheet {width: 390px; border: 1px solid #ddd; overflow-y: auto; background: #fff; padding: 15px 15px 20px 15px;}
.apply_start .answer_sheet .tbl_wrap {font-size: 16px; color: #111; margin-bottom: 30px;}
.apply_start .answer_sheet .tbl_wrap + .tbl_wrap {margin-top: 15px;}
.apply_start .answer_sheet .tbl_wrap thead th {background: #fffcd7; border: 1px solid #ddd; padding: 8px 10px;}
.apply_start .answer_sheet .tbl_wrap tbody th {background: #fffcd7; border: 1px solid #ddd; padding: 8px 10px;}
.apply_start .answer_sheet .tbl_wrap tbody td {font-family: var(--font-warning); border: 1px solid #ddd; padding: 8px 10px;}
.apply_start .answer_sheet .tbl_wrap tbody td a {display: block;}
.apply_start .answer_sheet .tbl_wrap tbody td a span {display: block; width: 20px; height: 20px; border: 1px solid #898989; border-radius: 50%; font-size: 12px; line-height: 18px; color: #898989; background: #fff; text-align: center; margin: 0 auto;}
.apply_start .answer_sheet .tbl_wrap tbody td a span.last {font-size: 10px; letter-spacing: -0.1em;}
.apply_start .answer_sheet .tbl_wrap tbody td.on a span {color: #fff; background: #c081ff; border: 1px solid #c081ff;}
.apply_start .answer_sheet .tiny_txt {font-size: 13px; color: #888; text-align: center; margin-bottom: 10px;}
.apply_start .answer_sheet .apply_btn a {display: block; width: 290px; font-weight: 500; font-size: 18px; color: #fff; background: #000; padding: 17px 0; border-radius: 10px; margin: 0 auto;}

/* 문제 */
.question_wrap {word-break: break-all; text-align: justify;}
.question_wrap .question {height: 770px; font-size: 16px; line-height: 1.6; text-align: left; padding: 20px 50px 40px; border: 1px solid #ddd; overflow-y: auto;}
.question_wrap .question .tit {font-size: 15px; margin-bottom: 10px;}
.question_wrap .box {position: relative; padding: 20px; border: 1px solid #000; margin-bottom: 30px;}
.question_wrap .box p {text-indent: 1em;}
.question_wrap .box .example {position: absolute; top: 0; left: 50%; transform: translate(-50%, -50%); background: #fff; padding: 0 10px;}
.question_wrap .choices li {position: relative; padding-left: 25px;}
.question_wrap .choices li + li {margin-top: 5px;}
.question_wrap .choices li .mark {position: absolute; top: 0; left: 0;}
.question_wrap u {text-decoration: none; border-bottom: 1px solid #000;}

.question_wrap .question .q1_5 .choices li {padding-left: 28px;}
.question_wrap .question .q1_5 .blnk {display: inline-block; width: 50%; max-width: 240px; height: 18px; vertical-align: middle; border: 1px solid #000; margin-right: 5px;}
.question_wrap .question .q2_4 .box,
.question_wrap .question .q2_5 .box {background: #f5f5f5;}
.question_wrap .question .q2_4 .blnk,
.question_wrap .question .q2_5 .blnk {width: 80%; text-align: center; background: #fff; border: 1px solid #000; margin: 0 auto 15px;}
.question_wrap .question .q2_4 .box p,
.question_wrap .question .q2_5 .box p {text-indent: unset;}
.question_wrap .question .q2_4 .box strong,
.question_wrap .question .q2_5 .box strong {display: block; margin: 15px auto 5px;}
.question_wrap .question .q2_4 .choices,
.question_wrap .question .q2_5 .choices {font-size: 15px;}
.question_wrap .question .q2_4 .box p:last-of-type,
.question_wrap .question .q2_5 .box p:last-of-type {margin-top: 15px;}
.question_wrap .question .q3_2 .blnk {display: inline-block; width: 80px; text-align: center; border: 1px solid #000; margin-left: 10px; margin-right: 5px;}

/* 정답 및 해설 */
.scroll_box {height: auto; max-height: 700px; overflow-y: auto;}
.scroll_box .question_wrap .question {height: auto; overflow: visible;}
.answer_box {position: relative; background: #bce8ff; text-align: left; font-size: 16px; line-height: 1.6;}
.answer_box .tit {position: absolute; top: 0; left: 50%; transform: translate(-50%, -50%); color: #fff; background: #00a6ff; padding: 5px 10px; border-radius: 10px;}
.answer_box .txt {padding: 30px;}
.answer_box .txt .info {display: flex; justify-content: space-between;}
.answer_box .txt .correct {font-weight: 700; color: #0184ff; font-size: 18px; margin-top: 20px;}
.answer_box .txt .s_tit {font-weight: 700; margin: 10px auto 5px;}
.answer_box .box {margin-top: 10px;}
/* E: 응시 - apply_start.asp */

/* S: 진단결과분석 - apply_result.asp */
/* 테이블 */
.result_tbl sup {opacity: 0.5; font-size: 0.75em; vertical-align: top;}
.result_tbl tr .cr_1 {border-color: #fff;}
.result_tbl.grade_tbl thead th:not(:first-child),
.result_tbl.grade_tbl tr td:nth-of-type(5n) {border-right-color: #e9e4ab;}
.result_tbl.grade_tbl .num {background: #f3e7ff;}
.result_tbl.grade_tbl td.ans_X {font-weight: 700; color: #f00;}
.result_tbl.grade_tbl td.ans_O {font-weight: 700; color: #0c00ff;}
.result_tbl.grade_tbl td .qst_view {display: block; font-size: 0; width: 26px; max-width: 76%; height: 22px; background: url('https://img.megagong.net/m/2024/0708_exam/result_qst.png') center center no-repeat; background-size: 100% auto; margin: 0 auto;}
.result_tbl.predict_tbl colgroup col:first-child {border: 2px solid #c081ff;}
.result_tbl.predict_tbl tr td:first-of-type {font-weight: 700; color: #c081ff;}
.result_tbl.pass_tbl td a {color: #c081ff; border-bottom: 1px solid #c081ff;}
.result_tbl.cut_tbl {font-size: 15px;}
.result_tbl.cut_tbl tr th,
.result_tbl.cut_tbl tr td {padding: 7px 5px;}
.result_tbl.cut_tbl thead th span {font-size: 13px;}
.result_tbl.cut_tbl tbody th a {border-bottom: 1px solid #000;}
.result_tbl.cut_tbl .subject {position: relative; font-size: 13px; padding: 0;}
.result_tbl.cut_tbl .subject::before {content: ''; position: absolute; top: 0; left: 50%; width: 1px; height: 100%; background: #ddd;}
.result_tbl.cut_tbl .subject > div {display: flex;}
.result_tbl.cut_tbl .subject a {position: relative; display: block; flex: 1; padding: 10px 5px;}
.result_tbl.cut_tbl .tiny_noti .img {vertical-align: bottom; margin: 0 2px;}

/* 필기합격선 */
.graph_tab {margin-top: 30px;}
.graph_tab .grh {margin-bottom: 40px;}
.graph_tab .grh > img {margin: 0 auto;}
.graph_tab .radio_list {display: flex; justify-content: flex-start; align-items: center; gap: 18px; margin-bottom: 15px;}
.graph_tab .radio_list li label {font-size: 16px;}
.graph_tab .radio_list li input[type=radio] {margin-right: 5px;}
.graph_tab .radio_list li input[type=radio]:checked + span {font-weight: 700;}

/* 문제 해설 팝업 */
.eventWrap .layerPopup { position:fixed; left:0; top:0; width:100%; height:100%; z-index:100; } 
.eventWrap .layerPopup.questn_pop {display: flex;justify-content: center;align-items: center;} 
.eventWrap .layerPopup .dimBg { position:absolute; top:0; left:0; width:100%; height:100%; background-color:#000; opacity:0.7; } 
.eventWrap .layerPopup .contentBox { position: relative; width: 770px; margin: 6% auto 0; line-height: 1.3; background: #fff; } 
.eventWrap .layerPopup .contentBox .pop_box { padding: 0; position: relative; height: 650px; overflow-y: auto; } 
.eventWrap .layerPopup .btnClose { position: absolute; bottom: -30px; right: 0; background: #000; padding: 3px; width:30px; height:30px; box-sizing: border-box; } 
.eventWrap .layerPopup .btnClose { position:absolute; top: -35px; right: 0; display:block; font-size:0; line-height:0; width:35px; height:35px; background: url('https://img.megagong.net/m/2021/0106_basicexam/pop_x.png') center center no-repeat;} 

/* 전문과목 팝업 */
.subj_nm {display: none;}
.pop_table {background: #fff; margin-top: 10px;}

.s_3 {text-align: left;}

.s_25 .question .blnk,
.s_41 .question .blnk {display: inline-block; width: 80px; text-align: center; border: 1px solid #000; margin: 0 5px;}

.part-wrp + .tiny_noti {color: #888; margin-top: 10px; text-align: left;}
.part-wrp + .tiny_noti a {font-size: 11px; color: #fff; background: #c081ff; border-radius: 3px; padding: 0 5px; margin-left: 5px; text-wrap: nowrap;}
/* E: 진단결과분석 - apply_result.asp */

/* S: 학습계획가이드 - learning_guide.asp */
.evLearning .box_default .box_title b {color: #c081ff;}
.evLearning .box_default .box_title .tiny {font-weight: 500; font-size: 14px; color: #666;}
.evLearning .txtbox_default {font-size: 16px; text-align: left; background: #fbf7ff; border: 1px solid #ddd; padding: 40px; border-radius: 20px;}
.evLearning .txtbox_default .cr_1 {color: #c081ff;}
.evLearning .txtbox_default .cr_2 {color: #6d1ac1;}

.evLearning .graph_wrap.pie_graph {display: flex; justify-content: center; align-items: center; gap: 40px; margin-bottom: 40px;}
.evLearning .graph_wrap.pie_graph .grp {flex: 0 0 auto; width: 360px; height: auto;}
.evLearning .graph_wrap.pie_graph .grp .piechart {width: 360px; height: 360px; margin: 0 auto;}
.evLearning .graph_wrap.pie_graph .legend_list {display: flex; justify-content: center; align-items: center; flex-wrap: wrap; gap: 5px 10px; margin-top: 20px; font-size: 16px;}
.evLearning .graph_wrap.pie_graph .legend_list::before {content: ''; display: block; width: 100%; height: 0; order: 2;}
.evLearning .graph_wrap.pie_graph .legend_list li:nth-of-type(n+4) {order: 3;}
.evLearning .graph_wrap.pie_graph .legend_list li::before {content: ''; display: inline-block; width: 10px; height: 10px; border-radius: 50%; margin-right: 5px;}
.evLearning .graph_wrap.pie_graph .legend_list li:nth-of-type(1):before {background: #dcc950;}
.evLearning .graph_wrap.pie_graph .legend_list li:nth-of-type(2):before {background: #eedd67;}
.evLearning .graph_wrap.pie_graph .legend_list li:nth-of-type(3):before {background: #ffee78;}
.evLearning .graph_wrap.pie_graph .legend_list li:nth-of-type(4):before {background: #fff19f;}
.evLearning .graph_wrap.pie_graph .legend_list li:nth-of-type(5):before {background: #fff8d0;}
.evLearning .graph_wrap.pie_graph text {font-size: 16px; text-align: center; }
.evLearning .graph_wrap.pie_graph p {flex: 1; position: relative; font-weight: 400; font-size: 16px; text-align: left; background: #fff8d0; border-radius: 0 40px 0 40px; padding: 30px;}
.evLearning .graph_wrap.pie_graph p::before {content: ''; position: absolute; top: 0; left: 0; transform: translateX(-100%); border-bottom: 30px solid transparent; border-right: 42px solid #fff8d0;}
.evLearning .graph_wrap.bar_graph {display: flex; justify-content: center; align-items: center; gap: 10px; margin-bottom: 30px;}
.evLearning .graph_wrap.bar_graph .ico span {display: block; font-weight: 500; font-size: 16px; line-height: 1.2; margin-top: 5px;}
.evLearning .graph_wrap.bar_graph .grp {flex: 1; display: flex;}
.evLearning .graph_wrap.bar_graph .grp li {position: relative; display: flex; justify-content: center; align-items: center; font-size: 16px; line-height: 1.2; color: #fff; height: 60px;}
.evLearning .graph_wrap.bar_graph .grp li:nth-child(1) {color: #000; background: #e8d1ff; background: -webkit-linear-gradient(0deg, transparent 0%, #e8d1ff 50%); background: linear-gradient(90deg, transparent 0%, #e8d1ff 50%);}
.evLearning .graph_wrap.bar_graph .grp li:nth-child(2) {background: #c081ff;}
.evLearning .graph_wrap.bar_graph .grp li:nth-child(3) {background: #9948eb;}
.evLearning .graph_wrap.bar_graph .grp li:nth-child(4) {background: #6d1ac1; z-index: 0; padding-right: 2%;}
.evLearning .graph_wrap.bar_graph .grp li:nth-child(4)::after {content: ''; position: absolute; top: 50%; right: 0; transform: translateY(-50%); ;border-top: 45px solid transparent; border-bottom: 45px solid transparent; border-left: 54px solid #6d1ac1; background: #fff; z-index: -1;}
.evLearning .curr .txtbox_default {margin-bottom: 60px;}
.evLearning .curr_list li {display: flex; justify-content: center; align-items: stretch; gap: 10px;}
.evLearning .curr_list li + li {margin-top: 10px;}
.evLearning .curr_list li .step {
    --arrow-height: 30px;
    position: relative; flex: 0 0 200px; display: flex; flex-direction: column; justify-content: center; align-items: center; font-weight: 700; font-size: 18px; color: #fff; margin-bottom: var(--arrow-height); border-radius: 10px;}
.evLearning .curr_list li .step::after {content: ''; position: absolute; bottom: 0; left: 50%; transform: translate(-50%, 100%); width: 40px; height: var(--arrow-height); background-image: url('https://img.megagong.net/m/2024/0708_exam/curr_arrow.png'); background-repeat: no-repeat; background-size: auto 100%;}
.evLearning .curr_list li .step span {font-size: 14px;}
.evLearning .curr_list li:nth-child(1) .step {background: #e69dff;}
.evLearning .curr_list li:nth-child(2) .step {background: #c081ff;}
.evLearning .curr_list li:nth-child(3) .step {background: #9948eb;}
.evLearning .curr_list li:nth-child(4) .step {background: #6d1ac1; margin-bottom: 0;}
.evLearning .curr_list li:nth-child(1) .step::after {background-position: 0 0;}
.evLearning .curr_list li:nth-child(2) .step::after {background-position: -40px 0;}
.evLearning .curr_list li:nth-child(3) .step::after {background-position: -80px 0;}
.evLearning .curr_list li:nth-child(4) .step::after {content: none;}
.evLearning .curr_list li p {flex: 1; font-size: 16px; text-align: left; border: 1px solid #e5deed; border-radius: 10px; padding: 25px 30px;}

.evLearning .tip .txtbox_default {margin-bottom: 30px;}
.tip_tbl {margin-bottom: 40px;}
.tip_tbl tbody td.cr_2 {font-weight: 700;}
.tip_tbl tbody td.prosncons {padding: 20px 15px;}
.tip_tbl tbody td.prosncons ul li {position: relative; padding-left: 10px;}
.tip_tbl tbody td.prosncons ul li + li {margin-top: 5px;}
.tip_tbl tbody td.prosncons ul li .mark {position: absolute; top: 0; left: 0;}
.tip_tbl tbody td.prosncons ul li.link .mark {color: #c081ff;}
.tip_tbl tbody td.prosncons ul li.link a {font-size: 14px;}
.tip_tbl tbody td.prosncons ul li.link a b {color: #c081ff; border-bottom: 1px solid #c081ff;}
/* E: 학습계획가이드 - learning_guide.asp */

@media screen and (max-width: 1750px){
    .lnb_bar {margin-left: -35vw;}
}
@media screen and (max-width: 1400px){
    .show-1400 {display: block;}
    .hide-1400 {display: none;}

    /* S: left.asp */
    .lnb_bar {position: relative; top: 0; left: 0; width: 100%; margin-left: 0; transform: none;}
    .lnb_bar.pofixed {position: fixed; top: 0; left: 0; z-index: 3;}
    .lnb_bar.pofixed.mofixed {/*top: 49px;*/ top: 0;}
    .lnb_bar h2 {font-size: clamp(18px, 2.6vmin, 24px); color: #fff; background: #c081ff; padding: 1.5vw 0;}
    .lnb_bar .depth1 {display: flex; justify-content: center; align-items: center; gap: 2vw; border: none; border-radius: 0;}
    .lnb_bar .depth1 > li + li {border-top: none;}
    .lnb_bar .depth1 > li + li::before {content: ''; position: absolute; width: 1px; height: clamp(10px, 2.2vmin, 14px); background: #c2c2c2; top: 50%; left: -1vw; transform: translateY(-50%);}
    .lnb_bar .depth1 > li > a {width: auto; padding: 1.5vw 0 2vw;}
    .lnb_bar .depth1 > li > a .ico {display: none;}
    .lnb_bar .depth1 > li > a strong {font-weight: 400; font-size: clamp(13px, 2.2vmin, 20px);}
    .lnb_bar .depth1 > li.on > a strong {font-weight: 700;}
    /* lnb - depth2 */
    .lnb_bar .depth1 > li.accordion > a.on strong {font-weight: 700;}
    .lnb_bar .depth1 > li.accordion > a::before {content: none;}
    .lnb_bar .depth1 .depth2 {position: absolute; bottom: 1px; left: -15px; transform: translateY(100%); padding-bottom: 0; padding: 5px 0; margin-top: 0; background: #fff; border: 1px solid #ddd; text-wrap: nowrap;}
    .lnb_bar .depth1 .on .depth2 {display: flex;}

    .lnb_bar .depth1 li:last-of-type .depth2 {left: auto; right: 0;}
    .lnb_bar .depth1 .depth2 li a {font-size: clamp(12px, 1.8vmin, 16px); padding: 0 10px;}
    /* E: left.asp */
}
@media screen and (max-width: 1200px){
    /* setting */
    .evSection {padding: 8% 0 14%;}
    .title_default {padding-bottom: 4%; margin-bottom: 5%;}
    .title_default h4 {font-size: clamp(20px, 3.6vmin, 34px);}

    /* 기본 탭 */
    .evSection .tab_base.tab_default {gap: 1vmin; margin: 0 auto 3%;}
    .evSection .tab_base.tab_default li a {font-size: clamp(15px, 2vmin, 18px); padding: clamp(8px, 1.5vmin, 17px) 0;}

    /* 서브 탭 */
    .evSection .tab_base.tab_sub {gap: 1vmin;}
    .evSection .tab_base.tab_sub li a {font-size: clamp(13px, 1.7vmin, 16px); padding: 0.5vmin 2vmin;}
    .evSection .panel_base.panel_sub {margin-top: 5%;}

    /* 응시 탭 */
    .result_tab {margin-bottom: 3%;}
    .result_tab ul li a {font-size: clamp(13px, 1.8vmin, 16px); padding: 1.5vw 0; border-radius: 10px 10px 0 0;}

    /* 컨텐츠 박스 */
    .box_default {padding: 30px 20px; font-size: clamp(13px, 1.8vmin, 16px);}
    .box_default + .box_default {margin-top: 5%;}
    .box_default .box_title {font-size: clamp(16px, 2.2vmin, 20px); margin-bottom: 2%;}

    .box_default.apply_noti li {font-size: clamp(13px, 1.8vmin, 16px);}

    /* 나의 응시 정보 */
    .info_wrap {font-size: clamp(13px, 1.8vmin, 16px);}
    .info_wrap .info + .info {margin-top: 2vmin;}
    .info_wrap .info .info_table {margin-top: 1vmin;}
    .info_wrap .info .info_table td .select_box {margin-right: 0;}
    .info_wrap .info .info_table td .select_box select {font-size: clamp(13px, 1.8vmin, 16px);}
    .info_btn {gap: 2vmin; margin: 4% auto;}
    .info_btn a {font-size: clamp(16px, 2vmin, 18px); padding: 1.5vmin 0;}

    /* 전 직렬 팝업 */

    /* 띠배너 */
    .bnr_default a {font-size: clamp(13px, 2.2vmin, 20px); padding: 2vmin 0;}
    .bnr_default.series {margin-bottom: 3%;}
    .bnr_default.series a {font-size: clamp(14px, 2.6vmin, 24px); padding: 3vmin 0;}
    .bnr_default.series a::before {left: 2%; width: 17vw;}
    .bnr_default.series a::after {right: 2%; width: 18vw;}
    .bnr_default.quizbank {margin-top: 3%;}
    .bnr_default.quizbank a {padding-left: 5vw;}
    .bnr_default.quizbank a::after {right: 2%; width: 12vw;}
    .bnr_default.pass_opinion {margin-top: 3%;}
    .bnr_default.pass_opinion a::before {left: 2%; width: 10vw;}
    .bnr_default.pass_opinion a::after {right: 2%; width: 10vw;}
    .bnr_default.sub_guide a {padding: 1.5vmin 0;}
    .bnr_default.sub_guide a::before {width: 13vw; left: 2%;}
    .bnr_default.price a {padding: 1.5vmin 0; padding-left: 2vmin;}
    .bnr_default.price a::before {width: 13vw; left: 2%;}

    /* 기본 테이블 */
    .table_default {font-size: clamp(13px, 1.8vmin, 16px);}

    /* S: left.asp */
    /* E: left.asp */

    /* S: 진단평가란? - main.asp */
    /* con_top */
    .con_top {padding: 12% 0;}
    .con_top h3 {margin: 0 auto 6%;}
    .con_top h3 {margin: 0 auto 6%;}
    .con_top .visual_slider {margin: 0 -2% 5%;}
    .con_top .visual_slider .item.after {padding-top: 6vmin;}
    .con_top .link_btn {font-size: clamp(20px, 3.4vmin, 32px); padding: 2.2vmin 0;}

    /* evCon1 */
    .evCon1 {padding: 14% 0;}
    .evCon1 h4 {font-size: clamp(32px, 7vmin, 68px); margin-bottom: 8%;}
    .evCon1 .step_wrap .step + .step {margin-top: 10%;}
    .evCon1 .step_wrap .con_tit {margin-bottom: 6%;}
    .evCon1 .step_wrap .con_tit h5 {font-size: clamp(22px, 4vmin, 38px);}
    .evCon1 .step_wrap .con_tit .label {margin-bottom: 3%;}
    .evCon1 .step_wrap .con_tit .label span {font-size: clamp(14px, 2.3vmin, 21px); padding: 0.5vw 0;}
    .evCon1 .step_wrap .con_tit .sub_tit {font-size: clamp(16px, 2.3vmin, 21px);}
    .evCon1 .step_wrap .step .content .badge {width: clamp(90px, 16vmin, 150px); height: clamp(90px, 16vmin, 150px); font-size: clamp(13px, 2vmin, 18px);}
    /* E: 진단평가란? - main.asp */

    /* S: 직렬 선택 가이드 - series_guide.asp */
    .evSeries .tip_title {font-size: clamp(18px, 2.6vmin, 24px); margin: 8% auto 2%;}
    .evSeries .tip_title span {font-size: clamp(15px, 2vmin, 18px);}
    .evSeries .table_default {margin-top: 5%;}
    .evSeries .msg {font-size: clamp(15px, 2vmin, 18px); margin-top: 4%;}
    /* E: 직렬 선택 가이드 - series_guide.asp */

    /* S: 과목별 특징 및 학습법 - subject_guide.asp */
    .subject_info_list > li{padding:30px;}
    /* E: 과목별 특징 및 학습법 - subject_guide.asp */

    /* S: 응시 - apply_start.asp */
    .apply_start .test_paper {flex-direction: column; height: auto; gap: 2vw; margin-bottom: 5%;}
    .apply_start .question_wrap {width: 100%;}

    .apply_start .question_wrap .question_zone .btn_wrap {display: flex; justify-content: center; align-items: center; gap: 1vw; margin-top: 2%;}
    .apply_start .question_wrap .question_zone .btn_wrap a {flex: 1; position: static; width: auto; height: auto; font-weight: 700; font-size: 14px; background: #fff; border: 1px solid #c3c3c3; padding: 11px 0; border-radius: 6px;}
    .apply_start .answer_sheet {width: 100%;}
    .apply_start .answer_sheet .tbl_wrap {margin-bottom: 3%;}
    .apply_start .answer_sheet .tbl_wrap + .tbl_wrap {margin-top: 1%;}

    .apply_start .answer_sheet .apply_btn a {font-size: clamp(14px, 2vmin, 18px); padding: 2vw 0;}

    /* 문제 */
    .question_wrap .question {height: auto; padding: 20px 20px 40px;}

    /* 정답 및 해설 */
    .answer_box .txt {padding: 20px 20px 30px;}
    /* E: 응시 - apply_start.asp */

    /* S: 진단결과분석 - apply_result.asp */
    /* 테이블 */
    .result_tbl.grade_tbl td .qst_view {height: 3vmin;}
    .result_tbl.cut_tbl {font-size: clamp(12px, 1.7vmin, 15px);}
    .result_tbl.cut_tbl thead th span {font-size: clamp(11px, 1.5vmin, 13px);}
    .result_tbl.cut_tbl td .result {display: inline-block; width: 88%;}

    /* 필기합격선 */
    .graph_tab {margin-top: 3%;}
    .graph_tab .grh {margin-bottom: 8%;}
    .graph_tab .radio_list {gap: 1.5vmin; margin-bottom: 2%;}
    .graph_tab .radio_list li label {font-size: clamp(13px, 1.8vmin, 16px);}

    /* 문제 해설 팝업 */
    .eventWrap .layerPopup .contentBox {width: 90%;}
    .scroll_box {height: auto; max-height: 90vh;}
    /* E: 진단결과분석 - apply_result.asp */

    /* S: 학습계획가이드 - learning_guide.asp */
    .evLearning .box_default .box_title .tiny {font-size: clamp(11px, 1.6vmin, 14px);}
    .evLearning .txtbox_default {font-size: clamp(13px, 1.8vmin, 16px); padding: 30px 20px;}

    .evLearning .graph_wrap.pie_graph {gap: 2vw; margin-bottom: 6%;}
    .evLearning .graph_wrap.pie_graph .grp {width: 40vmin;}
    .evLearning .graph_wrap.pie_graph .grp .piechart {width: 100%; height: 40vmin;}
    .evLearning .graph_wrap.pie_graph .legend_list {font-size: clamp(13px, 1.8vmin, 16px); gap: 0.25vmin 1vmin;}
    .evLearning .graph_wrap.pie_graph p {font-size: clamp(13px, 1.8vmin, 16px); padding: 20px;}
    .evLearning .graph_wrap.pie_graph p::before {border-bottom-width: 3vmin; border-right-width: 4vmin;}
    .evLearning .graph_wrap.pie_graph text {font-size: clamp(11px, 1.8vmin, 16px);}
    .evLearning .graph_wrap.bar_graph {gap: 1vw; margin-bottom: 4%;}
    .evLearning .graph_wrap.bar_graph .ico span {font-size: clamp(11px, 1.8vmin, 16px);}
    .evLearning .graph_wrap.bar_graph .grp li {font-size: clamp(11px, 1.8vmin, 16px); height: clamp(36px, 6vmin, 60px);}
    .evLearning .graph_wrap.bar_graph .grp li:nth-child(4)::after {border-top-width: 4.4vmin; border-bottom-width: 4.4vmin; border-left-width: 5vmin;}
    .evLearning .curr .txtbox_default {margin-bottom: 6%;}
    .evLearning .curr_list li .step {flex-basis: 24%; min-width: 0; font-size: clamp(13px, 2vmin, 18px);}
    .evLearning .curr_list li .step span {font-size: clamp(11px, 1.6vmin, 14px);}
    .evLearning .curr_list li p {font-size: clamp(13px, 1.8vmin, 16px); padding: 20px 15px;}
    
    .evLearning .tip .txtbox_default {margin-bottom: 4%;}
    .tip_tbl {margin-bottom: 6%;}
    /* E: 학습계획가이드 - learning_guide.asp */
}
@media screen and (max-width: 992px){
    /* S: 직렬 선택 가이드 - series_guide.asp */
    .series_cont {gap: 4vmin; background-size: 6vmin;}
    .series_cont .item {width: calc(50% - 2vmin); height: 43vmin; padding: 5vmin 0; border-radius: 20px; display: flex; flex-direction: column;}
    .series_cont .item_title {font-size: clamp(18px, 2.8vmin, 26px); margin: 0 auto 2vmin;}
    .series_cont .item dl {margin: auto;}
    .series_cont .item dl dt {font-size: clamp(15px, 2.2vmin, 20px); margin: 0 auto 2vmin;}
    .series_cont .item dl dt span {font-size: clamp(13px, 1.8vmin, 16px);}
    .series_cont .item dl dd {font-size: clamp(13px, 1.8vmin, 16px);} 
    .series_cont .item dl dd ul li a {font-size: clamp(14px, 2.1vmin, 19px); padding: 2px 2vmin;}
    /* E: 직렬 선택 가이드 - series_guide.asp */

    /* S: 과목별 특징 및 학습법 - subject_guide.asp */
    .subject_info_list > li .num{font-size:16px;}
    .subject_info_list > li .tbl_subject th, .subject_info_list > li .tbl_subject td{font-size:14px;padding:5px;}
    .subject_intro_wrap .tec_info dd .slogan{font-size:16px;}
    .subject_intro_wrap .tec_info dd .home{font-size:24px;gap:0 3px;}
    .subject_intro_wrap .tec_info dd .home span{font-size:12px;width:20px;height:20px;}
    .tbl_subject_wrap{gap:0 10px;}
    .tbl_subject_wrap .tbl_arrow{width:120px;}
    .tbl_subject_wrap .tbl_subject.lg{width:70%;}
    .tbl_subject_wrap .tbl_subject.sm{width:30%;} 
    /* E: 과목별 특징 및 학습법 - subject_guide.asp */
}
@media screen and (max-width: 768px){
    .eventWrap .tiny_noti {font-size: 11px;}

    /* 나의 응시 정보 */
    .info_wrap .info .info_table colgroup {display: none;}
    .info_wrap .info .info_table tr {display: flex; flex-wrap: wrap;}
    .info_wrap .info .info_table th {flex: 1 0 34%; border: none; border-right: 1px solid #ddd; border-bottom: 1px solid #ddd; display: flex; justify-content: center; align-items: center; padding: 7px 5px;}
    .info_wrap .info .info_table td {flex: 1 0 66%; border: none; border-bottom: 1px solid #ddd; display: flex; justify-content: flex-start; align-items: center; padding: 7px 5px;}
    .info_wrap .info .info_table tr:last-child th:last-of-type,
    .info_wrap .info .info_table tr:last-child td:last-of-type {border-bottom: none;}
    .info_wrap .info .info_table td .select_box {flex: 1;}
    .info_wrap .info .info_table td.col_3 .flex {flex: 1; flex-direction: column; align-items: stretch; gap: 1vw;}
    .info_wrap .info .info_table td.col_3 .select_box {margin-right: 0;}
    .info_wrap .info .info_table td.col_3 .select_box select {width: calc(100% - 50px); margin-left: auto;}
    /* 응시 후 */
    .info_wrap.type_2 .info .info_table th {padding: 7px 5px;}
    .info_wrap.type_2 .info .info_table td {padding: 7px 5px;}
    .info_wrap.type_2 .info .info_table td.col_3 .flex {flex-direction: row; gap: 0;}

    /* 전 직렬 팝업 */
    .tiny_pop {font-size: 11px;}
    .tiny_pop a {font-size: 10px;}

    /* 띠배너 */
    .bnr_default.series a .arrow {width: clamp(5px, 2.2vmin, 8px); height: clamp(8px, 2.2vmin, 13px);}
    .bnr_default.quizbank a .arrow,
    .bnr_default.pass_opinion a .arrow {width: clamp(5px, 2vmin, 7px); height: clamp(8px, 2vmin, 16px);}

    /* 기본 테이블 */
    .table_default tr th,
    .table_default tr td {padding: 7px 3px;}
    .table_default .tbl_pc {display: none;}
    .table_default .tbl_mo {display: table;} 
    .table_default .tiny_noti a {font-size: 10px;}

    /* S: left.asp */
    #headertop .depth2-wrp > div.fixed {position: static;}
    /* E: left.asp */

    /* S: 진단평가란? - main.asp */
    /* con_top */
    .con_top .visual_slider .item img {margin: 0 auto;}
    .con_top .visual_slider .item .arrow {right: 10vmin;}

    /* E: 진단평가란? - main.asp */

    /* S: 직렬 선택 가이드 - series_guide.asp */
    .evSeries .tip_title::before {width: 40px; height: 40px;}
    .evSeries .tip_title.tip2::before {background-position: -40px 0;}
    .evSeries .tip_title.tip3::before {background-position: -80px 0;}
    .evSeries .table_info colgroup col:nth-child(1) {width: 14% !important;}
    .evSeries .table_info colgroup col:nth-child(5) {width: 9% !important;}

    .series_cont .item {height: clamp(320px, 48vmin, 365px);}
    /* E: 직렬 선택 가이드 - series_guide.asp */

    /* S: 과목별 특징 및 학습법 - subject_guide.asp */
    .subject_info_list > li{font-size:14px;padding:20px;}
    .subject_info_list > li .info_box {font-size: 12px;}
    .subject_info_list > li .b_tit {font-size: 14px;}
    .subject_info_list > li .num{margin-bottom:10px;}
    .subject_intro_wrap .tec_info dt {width: 40%; height: clamp(140px, 40vmin, 230px);}
    .subject_intro_wrap .tec_info dd {width: 60%;}
    /* E: 과목별 특징 및 학습법 - subject_guide.asp */

    /* S: 응시 - apply_start.asp */
    .apply_start .answer_sheet .tbl_wrap {font-size: 14px;}
    .apply_start .answer_sheet .tbl_wrap tbody td {padding: 6px 0;}
    /* 문제 */
    .question_wrap .question {font-size: 14px;}
    .question_wrap .question .tit {font-size: 13px;}
    .question_wrap .question .box {padding: 10px;}

    /* 정답 및 해설 */
    .answer_box {font-size: 14px;}
    .answer_box .txt .correct {font-size: 16px; margin-top: 10px;}
    /* E: 응시 - apply_start.asp */

    /* S: 진단결과분석 - apply_result.asp */
    /* 테이블 */
    .result_tbl.grade_tbl td .qst_view {height: clamp(15px, 4vmin, 22px); background-size: auto 100%;}
    .result_tbl.predict_tbl colgroup col:first-child {border: none;}
    .result_tbl.predict_tbl tbody tr:first-child {border: 2px solid #c081ff;}
    .result_tbl.pass_tbl .badge {display: inline-block; max-width: 80%;}
    .result_tbl.cut_tbl tr th,
    .result_tbl.cut_tbl tr td {padding: 5px 2px;}
    .result_tbl.cut_tbl tr th > div.show-768 {display: inline-block !important;}
    .result_tbl.cut_tbl .subject::before {width: 100%; height: 1px; top: 50%; left: 0;}
    .result_tbl.cut_tbl .subject > div {flex-direction: column;}
    .result_tbl.cut_tbl .subject {font-size: 11px;}
    .result_tbl.cut_tbl .subject a {padding: 7px 3px;}
    .result_tbl.cut_tbl colgroup col:nth-child(n+2):nth-child(-n+4) {width: 13.5% !important;}
    .result_tbl.cut_tbl colgroup col:nth-child(5) {width: 27.5% !important;}
    .result_tbl.cut_tbl colgroup col:last-child {width: 14% !important;}

    .part-wrp + .tiny_noti a {font-size: 10px;}

    /* 필기합격선 */
    .graph_tab .grh > img {max-width: 80%;}
    /* E: 진단결과분석 - apply_result.asp */

    /* S: 학습계획가이드 - learning_guide.asp */
    .evLearning .graph_wrap.bar_graph {flex-wrap: wrap; justify-content: space-between;}
    .evLearning .graph_wrap.bar_graph .ico {order: 1;}
    .evLearning .graph_wrap.bar_graph .ico:first-of-type {text-align: left;}
    .evLearning .graph_wrap.bar_graph .ico:last-of-type {text-align: right;}
    .evLearning .graph_wrap.bar_graph .ico > img {width: 50%;}
    .evLearning .graph_wrap.bar_graph .grp {flex-basis: 100%; order: 2;}
    .evLearning .graph_wrap.bar_graph .grp li:nth-child(1) {background: #e8d1ff;}
    .evLearning .graph_wrap.bar_graph .grp li:nth-child(4) {padding-right: 0;}
    .evLearning .graph_wrap.bar_graph .grp li:nth-child(4)::after {content: none;}

    .tip_tbl thead {display: none;}
    .tip_tbl .tbl_mo .cr_2 {background: #fef8b4;}
    .tip_tbl .tbl_mo tr td:nth-last-child(2) {background: #fffcd7;}
    .tip_tbl tbody td.prosncons {
        --title-height: clamp(20px, 3.2vmin, 30px);
        padding: 0; position: relative; line-height: 1.4;
    }
    .tip_tbl tbody td.prosncons > b {position: absolute; top: 0; left: 0; width: 100%; line-height: var(--title-height);}
    .tip_tbl tbody td.prosncons ul {padding: 15px 10px; /*margin-top: var(--title-height);*/}

    .tip_tbl tbody td.prosncons ul li.link a {font-size: 12px;}

    /* E: 학습계획가이드 - learning_guide.asp */
}
@media screen and (max-width: 576px){
    /* 컨텐츠 박스 */
    .box_default {padding: 20px 10px;}

    /* 나의 응시 정보 */
    .info_wrap .info.flex .info_title {align-self: flex-start;}
    .info_wrap .info .radio_list {flex-direction: column; align-items: flex-start; gap: 5px;}

    /* S: 직렬 선택 가이드 - series_guide.asp */
    .series_cont {flex-wrap: nowrap; flex-direction: column; background: none; gap: 2vmin;}
    .series_cont .item {width: 100%; height: auto;}
    /* E: 직렬 선택 가이드 - series_guide.asp */

    /* S: 과목별 특징 및 학습법 - subject_guide.asp */
    .subject_intro_wrap .tec_info dd .slogan {font-size: 13px;}
    .subject_intro_wrap .tec_info dd .home {font-size: 22px;}
    .tbl_subject_wrap .tbl_arrow{width:100px;}
    .subject_info_list > li .tbl_subject th, .subject_info_list > li .tbl_subject td{font-size:12px;}
    /* E: 과목별 특징 및 학습법 - subject_guide.asp */

    /* S: 학습계획가이드 - learning_guide.asp */
    .evLearning .txtbox_default {padding: 20px 10px;}
    .evLearning .box_default .box_title .tiny {display: block; margin-top: 0.5vmin;}

    .evLearning .graph_wrap.pie_graph {flex-direction: column; gap: 5vmin;}
    .evLearning .graph_wrap.pie_graph .grp {width: 68vmin;}
    .evLearning .graph_wrap.pie_graph .grp .piechart {height: 68vmin;}
    .evLearning .graph_wrap.pie_graph text {font-size: clamp(14px, 3vmin, 17px);}
    .evLearning .graph_wrap.pie_graph p::before {content: none;}
    .bnr_default.price + .tiny_noti {margin-top: 5px;}
    /* E: 학습계획가이드 - learning_guide.asp */
}`;

const excCss = `.eventWrap{max-height:80vh;overflow-y:auto;}
.eventWrap::-webkit-scrollbar{border-radius:4px;background:transparent;width:8px;}
.eventWrap::-webkit-scrollbar-track{/*background:#34374c;border-left:1px solid #212332;*/} 
.eventWrap::-webkit-scrollbar-thumb{background-color:#3333ff;border-radius:4px;background-clip:padding-box;border:1px solid transparent;}
.eventWrap::-webkit-scrollbar-thumb:hover{background-color:#778298;}`;

const js = `$("#special_subj_know").show();

function modifyInfo() {
    if (!confirm('수정하시겠습니까?')) return;
    
    document.location.href = "/l/exam/gong/2024_2/before_select.asp#eventWrap";
}

function startExam() {
    if (!confirm('응시 완료 후 응시 정보를 수정할 수 없습니다. 응시하시겠습니까?')) return;
    
    $.ajax({
        type: "POST",
        url: "./apply_proc.asp",
        data: {mode: "final_mem_info", now: "2024-07-16 12:48:58"},
        dataType: "json"
    }).done(function(data) {
        if(data.result == "succ") {
            document.location.href = "/l/exam/gong/2024_2/apply_start.asp#eventWrap";
            return;
        } else {
            alert(data.msg);
            return;
        }
    });
}`;

const outJs = ``;

    return (
      <PageContent
        title={title}
        desc=""
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        outJs={outJs}
        items={["진단평가", "응시 정보 입력", "나의 응시 정보"]}
        link="<%=lab_main%>/l/exam/gong/2024_2/after_select.asp#eventWrap"
        onChange={onChange}
      />
    )
  }
</script>