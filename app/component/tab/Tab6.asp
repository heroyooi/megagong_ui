<script type="text/babel">
  'use strict';

  function Tab6({ title, onChange }) {

const html = `<div class="evSection evCon4">
<div class="con_box">
  <ul id="tab1" class="tab_base2">
    <li><a href="#tab1_1"><span>수험생을 위한 책임과 진심</span>전한길</a></li>
    <li><a href="#tab1_2"><span>합격을 위한 빠른 길</span>고종훈</a></li>
    <li><a href="#tab1_3"><span>출제자를 앞서는 최고의 퀄리티</span>라영환</a></li>
    <li><a href="#tab1_4"><span>출제 경향 바탕 자동 회독 시스템</span>최영재</a></li>
    <li><a href="#tab1_5"><span>디테일한 한국사 심플한 합격</span>김진재</a></li>
  </ul>
  <ul class="panel_base">
    <!-- 전한길 S -->

    <li id="tab1_1" class="jeonhangil tea_tab">
      <div class="cont_top">
        <div class="cont_l">
          <img src="<%=img_main%>/profphoto/gong/jeonhangil/prof.png" alt="한국사 전한길 선생님" />
          <a href="<%=url_main%>/teacher/home.asp?bcode=jeonhangil" target="_blank">
            <img src="<%=img_main%>/m/2023/0126_history/con4_img01.png" alt="한국사 전한길 선생님" />
          </a>
        </div>
        <div class="cont_r">
          <p>내 실력의 정점을 찍을 <br class="mo_hide">최상의 파이널을 경험하라</p>
          <div class="eventVideo video_renewal">
            <div class="video_box">
              <%
                evt_no = ""
                vod_KBN = "40" '40:맛보기, 55:OT 
                playerKBN = ""
                CHR_CD = "19976"
                LEC_CD = "210819"
                IMG_URL = img_main & "/m/2023/0126_history/tab_video1.jpg"
                P_WIDTH = "600"
                P_HEIGHT = "338"
                AutoPlay = "N"
              %>
              <!-- #include virtual="/Player/kollus/play/play_inc.asp"-->
            </div>
          </div>
        </div>
      </div>
      <div class="cont_mid">
        <p>RIGHT NOW! 전한길 선생님 파이널 커리큘럼</p>
      </div>
      <div class="cont_btm">
        <div class="cont_l flex4">
          <p><span>파이널 압축 특강</span></p>
          <ul>
            <li>
              <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19422" title="5.0 주제별 최종점검">
                <div class="kind_tit">5.0 주제별<br>최종점검</div>
                <div class="kind_cont">
                  시대별,주제별<br>최종점검<br>
                  <span>GO</span>
                </div>
              </a>
            </li>
            <li>
              <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19423" title="연표 사료 노트 특강">
                <div class="kind_tit">연표 사료<br>노트 특강</div>
                <div class="kind_cont">
                  사료 집중<br>완성<br>
                  <span>GO</span>
                </div>
              </a>
            </li>
            <li>
              <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19191" title="현대사 특강">
                <div class="kind_tit">현대사<br>특강</div>
                <div class="kind_cont">
                  현대사 파트<br>완벽 정리<br>
                  <span>GO</span>
                </div>
              </a>
            </li>
            <li>
              <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19978" title="문화사 특강">
                <div class="kind_tit">문화사<br>특강</div>
                <div class="kind_cont">
                  문화사 파트<br>완벽 정리<br>
                  <span>GO</span>
                </div>
              </a>
            </li>
          </ul>
        </div>
        <div class="cont_r flex2">
          <p><span>동형 모의고사</span></p>
          <ul>
            <li>
              <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19424" title="기출 회독 트레이닝 모의고사">
                <div class="kind_tit">기출 회독<br>트레이닝 모의고사</div>
                <div class="kind_cont">
                  시대별 회독 포인트로<br>실전 대비<br>
                  <span>GO</span>
                </div>
              </a>
            </li>
            <li>
              <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19976" title="4.0 실전 동형  모의고사">
                <div class="kind_tit">4.0 실전 동형 <br>모의고사</div>
                <div class="kind_cont">
                  고퀄리티 예상문제로<br>합격 점수 완성<br>
                  <span>GO</span>
                </div>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </li>

    <!-- 전한길 E -->
    <!-- 고종훈 S -->
    <li id="tab1_2" class="gosabu88 tea_tab">
      <div class="cont_top">
        <div class="cont_l">
          <img src="<%=img_main%>/profphoto/gong/gosabu88/prof.png" alt="한국사 고종훈 선생님" />
          <a href="<%=url_main%>/teacher/home.asp?bcode=gosabu88" target="_blank">
            <img src="<%=img_main%>/m/2023/0126_history/con4_img02.png" alt="한국사 고종훈 선생님" />
          </a>
        </div>
        <div class="cont_r">
          <p>지금 이 시기, 수험생에게 제시하는 <br class="mo_hide">가장 완벽한 한국사 전략</p>
          <div class="eventVideo video_renewal">
            <div class="video_box">
              <%
                evt_no = ""
                vod_KBN = "40" '40:맛보기, 55:OT 
                playerKBN = ""
                CHR_CD = "19948"
                LEC_CD = "211794"
                IMG_URL = img_main & "/m/2023/0126_history/tab_video2.jpg"
                P_WIDTH = "600"
                P_HEIGHT = "338"
                AutoPlay = "N"
              %>
              <!-- #include virtual="/Player/kollus/play/play_inc.asp"-->
            </div>
          </div>
        </div>
      </div>
      <div class="cont_mid">
        <i>
          <a href="javascript:;" onclick="GongcampusFreePlay('E', 4421, '', '');" >
            <img src="<%=img_main%>/m/2023/0126_history/final_btn.png" alt="파이널 영상 커리큘럼" />
          </a>
        </i>
        <p>RIGHT NOW! 고종훈 선생님 파이널 커리큘럼</p>
      </div>
      <div class="cont_btm">
        <div class="cont_l flex2">
          <p><span>파이널 압축 특강</span></p>
          <ul>
            <li>
              <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19379" title="파이널 압축정리">
                <div class="kind_tit">파이널 압축정리</div>
                <div class="kind_cont">
                  마무리 점검 추천!<br><br>
                  <span>GO</span>
                </div>
              </a>
            </li>
            <li>
              <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=20003 " title="분류사 빈칸노트">
                <div class="kind_tit">분류사 빈칸노트</div>
                <div class="kind_cont">
                  문화/정치/사회경제/<br>근현대 키워드 정리<br>
                  <span>GO</span>
                </div>
              </a>
            </li>
          </ul>
        </div>
        <div class="cont_r flex4">
          <p><span>동형 모의고사</span></p>
          <ul>
            <li>
              <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19306" title="기출문제를 섞어 만든 모의고사">
                <div class="kind_tit">기출문제를<br>섞어 만든<br>모의고사</div>
                <div class="kind_cont">
                  초시 추천!<br><br>
                  <span>GO</span>
                </div>
              </a>
            </li>
            <li>
              <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19468" title="동형 모의고사  시즌1">
                <div class="kind_tit">동형 모의고사 <br>시즌1</div>
                <div class="kind_cont">
                  9급 일행 추천!<br><br>
                  <span>GO</span>
                </div>
              </a>
            </li>
            <li>
              <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19948" title="동형 모의고사 시즌2">
                <div class="kind_tit">동형 모의고사 <br>시즌2</div>
                <div class="kind_cont">
                  9급 일행 추천!<br><br>
                  <span>GO</span>
                </div>
              </a>
            </li>
            <li>
              <a href="javascript:;" onclick="alert('곧 공개될 예정입니다. 잠시만 기다려 주세요.');" title="리메이크 모의고사">
                <div class="kind_tit">리메이크 <br>모의고사</div>
                <div class="kind_cont">
                  최신 기출<br>재구성<br>
                  <span>GO</span>
                </div>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </li>
    <!-- 고종훈 E -->
    <!-- 라영환 S -->
    <li id="tab1_3" class="vision0911 tea_tab">
      <div class="cont_top">
        <div class="cont_l">
          <img src="<%=img_main%>/profphoto/gong/vision0911/prof.png" alt="한국사 라영환 선생님">
          <a href="<%=url_main%>/teacher/home.asp?bcode=vision0911" target="_blank">
            <img src="<%=img_main%>/m/2023/0126_history/con4_img03.png" alt="한국사 라영환 선생님">
          </a>
        </div>
        <div class="cont_r">
          <p>시험 직전, 뛰어난 적중률로 <br class="mo_hide">합격의 문을 넘다</p>
          <div class="eventVideo video_renewal">
            <div class="video_box">
              <%
                evt_no = ""
                vod_KBN = "40" '40:맛보기, 55:OT 
                playerKBN = ""
                CHR_CD = "19929"
                LEC_CD = "211270"
                IMG_URL = img_main & "/m/2023/0126_history/tab_video3.jpg"
                P_WIDTH = "600"
                P_HEIGHT = "338"
                AutoPlay = "N"
              %>
              <!-- #include virtual="/Player/kollus/play/play_inc.asp"-->
            </div>
          </div>
        </div>
      </div>
      <div class="cont_mid">
        <i>
          <a href="javascript:;" onclick="GongcampusFreePlay('E', 4408, '', '');" >
            <img src="<%=img_main%>/m/2023/0126_history/final_btn.png" alt="파이널 영상 커리큘럼" />
          </a>
        </i>
        <p>RIGHT NOW! 라영환 선생님 파이널 커리큘럼</p>
      </div>
      <div class="cont_btm">
        <div class="cont_l flex2">
          <p><span>파이널 압축 특강</span></p>
          <ul>
            <li>
              <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19929" title="마지막 심폐소생">
                <div class="kind_tit">마지막 심폐소생</div>
                <div class="kind_cont">
                  부족한 개념을 채우는<br>전범위 압축강좌<br>
                  <span>GO</span>
                </div>
              </a>
            </li>
            <li>
              <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19274" title="4시간 총정리 특강">
                <div class="kind_tit">4시간 총정리 특강</div>
                <div class="kind_cont">
                  4시간 만에 끝내는<br>분류사 특강<br>
                  <span>GO</span>
                </div>
              </a>
            </li>
          </ul>
        </div>
        <div class="cont_r flex2">
          <p><span>동형 모의고사</span></p>
          <ul>
            <li>
              <a href="javascript:;" onclick="alert('곧 공개될 예정입니다. 잠시만 기다려 주세요.');" title="기출 데자뷰 모의고사">
                <div class="kind_tit">기출 데자뷰 모의고사</div>
                <div class="kind_cont">
                  기출 회독 효과 &<br>모의고사 훈련<br>
                  <span>GO</span>
                </div>
              </a>
            </li>
            <li>
              <a href="javascript:;" onclick="alert('곧 공개될 예정입니다. 잠시만 기다려 주세요.');" title="기적의 모의고사">
                <div class="kind_tit">기적의 모의고사</div>
                <div class="kind_cont">
                  실제 시험과 <br>동일 난이도 및 구성<br>
                  <span>GO</span>
                </div>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </li>
    <!-- 라영환 E -->
    <!-- 최영재 S -->
    <li id="tab1_4" class="duwo20405 tea_tab">
      <div class="cont_top">
        <div class="cont_l">
          <img src="<%=img_main%>/profphoto/gong/duwo20405/prof.png" alt="한국사 최영재 선생님">
          <a href="<%=url_main%>/teacher/home.asp?bcode=duwo20405" target="_blank">
            <img src="<%=img_main%>/m/2023/0126_history/con4_img04.png" alt="한국사 최영재 선생님">
          </a>
        </div>
        <div class="cont_r">
          <p>공무원 수험에 알맞은 시험적합성으로 <br class="mo_hide">빠른 합격 공략</p>
          <div class="eventVideo video_renewal">
            <div class="video_box">
              <%
                evt_no = ""
                vod_KBN = "40" '40:맛보기, 55:OT 
                playerKBN = ""
                CHR_CD = "19593"
                LEC_CD = "211468"
                IMG_URL = img_main & "/m/2023/0126_history/tab_video4.jpg"
                P_WIDTH = "600"
                P_HEIGHT = "338"
                AutoPlay = "N"
              %>
              <!-- #include virtual="/Player/kollus/play/play_inc.asp"-->
            </div>
          </div>
        </div>
      </div>
      <div class="cont_mid">
        <p>RIGHT NOW! 최영재 선생님 파이널 커리큘럼</p>
      </div>
      <div class="cont_btm">
        <div class="cont_l flex2">
          <p><span>파이널 압축 특강</span></p>
          <ul>
            <li>
              <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19593" title="스피드 총정리/사료분석/단원별 문풀">
                <div class="kind_tit">스피드 총정리/<br>사료분석/단원별 문풀</div>
                <div class="kind_cont">
                  핵심 개념 + 핵심사료<br>+ 핵심문제까지 총정리<br>
                  <span>GO</span>
                </div>
              </a>
            </li>
          </ul>
        </div>
        <div class="cont_r flex2">
          <p><span>동형 모의고사</span></p>
          <ul>
            <li>
              <a href="javascript:;" onclick="alert('곧 공개될 예정입니다. 잠시만 기다려 주세요.');" title="실전 동형 모의고사">
                <div class="kind_tit">실전 동형 모의고사</div>
                <div class="kind_cont">
                  한국사 출제 경향을<br>반영한 완벽한 구성<br>
                  <span>GO</span>
                </div>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </li>
    <!-- 최영재 E -->
    <!-- 김진재 S -->
    <li id="tab1_5" class="k1mj1njae tea_tab">
      <div class="cont_top">
        <div class="cont_l">
          <img src="<%=img_main%>/profphoto/gong/k1mj1njae/prof.png" alt="한국사 김진재 선생님">
          <a href="<%=url_main%>/teacher/home.asp?bcode=k1mj1njae" target="_blank">
            <img src="<%=img_main%>/m/2023/0126_history/con4_img05.png" alt="한국사 김진재 선생님">
          </a>
        </div>
        <div class="cont_r">
          <p>이해하고자 하는 심플한 열정만 있다면 <br class="mo_hide">디테일한 한국사 완성</p>
          <div class="eventVideo video_renewal" onclick="javascript: alert('추후 공개될 예정입니다. 잠시만 기다려 주세요.');">
            <img src="<%=img_main%>/m/2023/0126_history/tab_video5.jpg" alt="">
            <!-- <div class="video_box">
              <%
                evt_no = ""
                vod_KBN = "40" '40:맛보기, 55:OT 
                playerKBN = ""
                CHR_CD = "19948"
                LEC_CD = "211794"
                IMG_URL = img_main & "/m/2023/0126_history/tab_video5.jpg"
                P_WIDTH = "600"
                P_HEIGHT = "338"
                AutoPlay = "N"
              %>
              include virtual="/Player/kollus/play/play_inc.asp"
            </div> -->
          </div>
        </div>
      </div>
      <div class="cont_mid">
        <p>RIGHT NOW! 김진재 선생님 파이널 커리큘럼</p>
      </div>
      <div class="cont_btm">
        <div class="cont_l flex2">
          <p><span>파이널 압축 특강</span></p>
          <ul>
            <li>
              <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=18414" title="압축요약 사료강화 특강">
                <div class="kind_tit">압축요약<br>사료강화 특강</div>
                <div class="kind_cont">
                  빈출도 중심으로<br>중요 개념 잡기<br>
                  <span>GO</span>
                </div>
              </a>
            </li>
          </ul>
        </div>
        <div class="cont_r flex2">
          <p><span>동형 모의고사</span></p>
          <ul>
            <li>
              <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=18324" title="리바이벌 전범위 모의고사">
                <div class="kind_tit">리바이벌 <br>전범위 모의고사</div>
                <div class="kind_cont">
                  다량의 실전 문제로 <br>한국사 점수 향상<br>
                  <span>GO</span>
                </div>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </li>
    <!-- 김진재 E -->
  </ul>
</div>
</div>`;

const css = `.evCon4 {background: #fff;text-align: center;font-family: 'NotoSans KR';}
.evCon4 .tab_base2 {}
.evCon4 .tab_base2 .slick-track {transform: none !important;}
.evCon4 .tab_base2 .slick-slide {width: 20%; background: #eee; color: #999; font-size: 23px; margin: 0 2px 0 0;}
.evCon4 .tab_base2 .slick-current {background: #000; color: #fff;}
.evCon4 .tab_base2 .slick-current li a {color:#fff;}
.evCon4 .tab_base2 li a {display: block; padding: 16px 0;}
.evCon4 .tab_base2 li span {display: block; font-size: 14px;}
.evCon4 .panel_base {}
.evCon4 .panel_base .slick-slide {opacity: 0 !important;}
.evCon4 .panel_base .slick-active {opacity: 1 !important; transition: opacity .5s ease-in;}
.evCon4 .panel_base .slick-slide > div {width: calc(100% - 2px);}
.evCon4 .panel_base li {}
.evCon4 .panel_base li .cont_top {margin: 40px 0 60px; display: flex; justify-content: space-between; align-items: center;}
.evCon4 .panel_base li .cont_top .cont_l {position: relative;}
.evCon4 .panel_base li .cont_top .cont_l::after {content: ''; width: 100%; height: 30%; background: linear-gradient(to top, #fff 20%, #ffffff70 60%, transparent); position: absolute; left: 0; bottom: -2px;}
.evCon4 .panel_base li .cont_top .cont_l a {position: absolute; bottom: 36px; left: 50%; transform: translateX(-50%); z-index: 1;}
.evCon4 .panel_base li .cont_top .cont_r {flex: 1; max-width: 600px;}
.evCon4 .panel_base li .cont_top .cont_r p {font-size: 30px; font-weight: bold; line-height: 1.2; margin: 0 0 46px;    color: #000;}
.evCon4 .panel_base li .cont_top .cont_r .eventVideo {}
.evCon4 .panel_base li .cont_mid {position: relative; margin: 0 0 45px;}
.evCon4 .panel_base li .cont_mid i {position: absolute; top: -56%; right: 10px; z-index: 2;}
.evCon4 .panel_base li .cont_mid p {background: #513fe7; color: #fff; font-size: 26px; font-weight: bold; padding: 16px 0;}
.evCon4 .panel_base li .cont_btm {display: flex; justify-content: center;}
.evCon4 .panel_base .duwo20405 .cont_btm .cont_l,
.evCon4 .panel_base .duwo20405 .cont_btm .cont_r,
.evCon4 .panel_base .k1mj1njae .cont_btm .cont_l,
.evCon4 .panel_base .k1mj1njae .cont_btm .cont_r {flex: 0 0 25%;}
.evCon4 .panel_base li .cont_btm .cont_l {flex: 1; margin: 0 10px 0 0;}
.evCon4 .panel_base li .cont_btm .cont_r {flex: 1;}
.evCon4 .panel_base li .cont_btm p {position: relative; z-index: 1; margin: 0 0 20px;}
.evCon4 .panel_base li .cont_btm p::after {content: ''; position: absolute; width: 100%; height: 20px; border: 1px solid #000; border-bottom: none; top: 50%; left: 0; z-index: -1;}
.evCon4 .panel_base li .cont_btm p span {background: #fff; padding: 0 30px; font-size: 23px; font-weight: bold;color: #000;}
.evCon4 .panel_base li .cont_btm ul {display: flex; justify-content: space-between;}
.evCon4 .panel_base li .cont_btm ul li {flex: 1; height: 240px; background: #eee; margin: 0 5px 0 0; flex: 1;}
.evCon4 .panel_base li .cont_btm ul li:last-child {margin: 0;}
.evCon4 .panel_base li .cont_btm ul li a {height: 100%; display: flex; flex-direction: column; justify-content: flex-end; padding: 35px 10px;}
.evCon4 .panel_base li .cont_btm ul li .kind_tit {font-weight: bold;color: #000;}
.evCon4 .panel_base li .cont_btm .flex4 ul li .kind_tit {font-size: 18px;}
.evCon4 .panel_base li .cont_btm .flex2 ul li .kind_tit {font-size: 21px;}
.evCon4 .panel_base li .cont_btm ul li .kind_tit::after {content: ''; display: block; width: 80%; height: 1px; background: #dcdcdc; margin: 18px 10%;}
.evCon4 .panel_base .gosabu88 .cont_btm .cont_l ul li .kind_tit::after,
.evCon4 .panel_base .vision0911 .cont_btm ul li .kind_tit::after,
.evCon4 .panel_base .duwo20405 .cont_btm .cont_r ul li .kind_tit::after {margin: 30px 10% 18px;}
.evCon4 .panel_base .gosabu88 .cont_btm .cont_r ul li:first-child .kind_tit::after {margin: 10px 10% 18px;}
.evCon4 .panel_base li .cont_btm ul li .kind_cont {font-size: 16px; font-weight: 300; color: #333;}
.evCon4 .panel_base li .cont_btm ul li .kind_cont span {font-size: 14px; background: #555; color: #fff; border-radius: 14px; line-height: 1; padding: 2px 18px; margin: 20px 0 0; display: inline-block;}

@media screen and (max-width: 1200px) {
  .evCon4 .panel_base li .cont_top {margin: 2% 0 4%;}
  .evCon4 .panel_base li .cont_top .cont_r p {margin: 0 0 6%;}
  .evCon4 .panel_base li .cont_mid i {width: 18%; top: -70%;}
}

@media screen and (max-width: 992px) {
  .evCon4 .tab_base2 li a {padding: 10px 0; font-size: 18px;}
  .evCon4 .tab_base2 li span {display: none;}
  .evCon4 .panel_base li .cont_top .cont_l {flex-basis: 40%;}
  .evCon4 .panel_base li .cont_top .cont_r {flex-basis: 58%; margin: 0 0 0 2%;}
  .evCon4 .panel_base li .cont_top .cont_r p {font-size: 26px;}
  .evCon4 .panel_base li .cont_mid {margin: 0 0 4%;}
  .evCon4 .panel_base li .cont_mid p {font-size: 20px; padding: 10px 0;}
  .evCon4 .panel_base li .cont_btm {flex-direction: column;}
  .evCon4 .panel_base li .cont_btm p span {font-size: 20px;}
  .evCon4 .panel_base li .cont_btm .cont_l {margin: 0 0 2%;}
  .evCon4 .panel_base .duwo20405 .cont_btm .cont_l,
  .evCon4 .panel_base .duwo20405 .cont_btm .cont_r,
  .evCon4 .panel_base .k1mj1njae .cont_btm .cont_l,
  .evCon4 .panel_base .k1mj1njae .cont_btm .cont_r {flex: 1;}
  .evCon4 .panel_base li .cont_btm ul li a {padding: 30px 5px;}
}

@media screen and (max-width: 768px) {
  .evCon4 .panel_base li .cont_top {flex-direction: column; margin: 2% 0 6%;}
  .evCon4 .panel_base li .cont_top .cont_l {width: 40%;}
  .evCon4 .panel_base li .cont_top .cont_l a {width: 60%; bottom: 10px;}
  .evCon4 .panel_base li .cont_top .cont_r {width: 100%; margin: 2% 0 0;}
  .evCon4 .panel_base li .cont_top .cont_r p {font-size: 20px; margin: 0 0 4%;}
  .evCon4 .panel_base li .cont_mid p {font-size: 16px;}
  .evCon4 .panel_base li .cont_btm {flex-direction: column;}
  .evCon4 .panel_base li .cont_btm .flex4,
  .evCon4 .panel_base li .cont_btm .flex2 {width: 98%; margin: 0 auto;}
  .evCon4 .panel_base li .cont_btm .cont_l {margin: 0 auto 4%;}
}

@media screen and (max-width: 576px) {
  .evCon4 .tab_base2 li a {font-size: 14px; padding: 6px 0 8px;}
  .evCon4 .panel_base li .cont_top .cont_l a {width: 90%;}
  .evCon4 .panel_base li .cont_top .cont_r p {font-size: 16px;}
  .evCon4 .panel_base li .cont_top .cont_r p .mo_hide {display: block;}
  .evCon4 .panel_base li .cont_mid p {font-size: 14px;}
  .evCon4 .panel_base li .cont_mid i {top: -150%; width: 22%; right: 0;}
  .evCon4 .panel_base li .cont_btm p::after {height: 10px;}
  .evCon4 .panel_base li .cont_btm p span {font-size: 18px; padding: 0 20px;}
  .evCon4 .panel_base li .cont_btm ul li {height: 190px;}
  .evCon4 .panel_base li .cont_btm .flex2 ul li .kind_tit {font-size: 16px;}
  .evCon4 .panel_base li .cont_btm .flex4 ul li .kind_tit {font-size: 13px;}
  .evCon4 .panel_base li .cont_btm ul li .kind_cont {font-size: 12px;}
  .evCon4 .panel_base li .cont_btm ul li .kind_tit::after {margin: 10px 10%;}
  .evCon4 .panel_base .gosabu88 .cont_btm .cont_r ul li:first-child .kind_tit::after {margin: 6px 10% 10px;}
  .evCon4 .panel_base .gosabu88 .cont_btm .cont_l ul li .kind_tit::after,
  .evCon4 .panel_base .vision0911 .cont_btm ul li .kind_tit::after,
  .evCon4 .panel_base .duwo20405 .cont_btm .cont_r ul li .kind_tit::after {margin: 18px 10% 10px;}
  .evCon4 .panel_base li .cont_btm ul li .kind_cont span {font-size: 12px;}

  .evCon4 .panel_base li .cont_top .cont_r .eventVideo {position: relative;width: auto;height: auto;background: #000;}
  .evCon4  .video_box {position: relative; top: unset; left: unset; width: auto; height: auto;padding-bottom: 56.2%;}
  .evCon4  .video_box .play_area {width: 100% !important;height: 100% !important;position: absolute;}
}`;

const js = `var panelLength = $('.evCon4 .panel_base .tea_tab').length;
// var rand = Math.floor(Math.random() * panelLength);

$('.evCon4 .panel_base').slick({
  slidesToShow: 1,
  slidesToScroll: 1,
  arrows: false,
  // autoplay: true,
  fade: true,
  // initialSlide: rand,
  initialSlide: 0,
  asNavFor: '.evCon4 .tab_base2',
});
$('.evCon4 .tab_base2').slick({
  slidesToShow: 5,
  asNavFor: '.evCon4 .panel_base',
  dots: true,
  focusOnSelect: true,
  // initialSlide: rand,
  initialSlide: 0,
});

$('.evCon4 .panel_base').on('afterChange', function(event, slick, currentSlide, nextSlide) {
  iframePause();
});

$('.evCon4 .tab_base2 li').click(function() {
  iframePause();
})

function iframePause() {
  if (typeof (controller) != 'undefined') {
    controller.pause();            
  }

  var autoV = $('.evCon4 .panel_base').get(0).slick.options.autoplay;
  if (autoV == false) {
    $('.evCon4 .panel_base').slick("slickSetOption","autoplay",true);
    $('.evCon4 .panel_base').slick("slickPlay");
  }

  var ifrm = $('.evCon4 .panel_base .slick-active').find("iframe");
  if (ifrm.length != 0) {
    $('.evCon4 .panel_base').slick("slickPause");
    $('.evCon4 .panel_base').slick("slickSetOption","autoplay",false);
  }
}

$('.tea_tab .video_renewal').click(function(){
  $('.evCon4 .panel_base').slick("slickPause");
  $('.evCon4 .panel_base').slick("slickSetOption","autoplay",false);
});`;

    return (
      <PageContent
        title={title}
        desc="이벤트 페이지 등에서 사용되는 탭 요소입니다.<br />랜덤한 탭에서부터 2~3초 간격으로 탭이 자동 롤링되고 탭과 관려된 이미지 및 정보를 제공합니다.<br />또한 탭 내부에서 동영상을 재생할 경우, 롤링이 자동으로 중단됩니다."
        image="/images/tab1.png"
        html={html}
        css={css}
        js={js}
        items={["자동롤링","랜덤탭","탭안에동영상"]}
        link="<%=url_main%>/s/gong/event/2023/01260015/index.asp"
        onChange={onChange}
      />
    )
  }
</script>