<script type="text/babel">
  'use strict';

  function Popup1({ title, onChange }) {

const html = `<div id="mcg_fixbn" class="mcg_fixbn">
  <a href="javascript:;" onclick="mainHide('#mcg_fixbn')" class="close"><img src="<%=img_main%>/common/btn_close_right_bottom_bnr.png" alt="닫기"></a>

  <div class="mcg_fixbn commonSlider">
      <% if cdate(lo_now_date) >= cdate("2024-10-01") and cdate(lo_now_date) < cdate("2024-10-12") then %>
      <div class="item">
          <a href="/help/notice/view.asp?idx=5203" class="bnr-link" title="10/12(토) 국가직 7급 합격예측 풀서비스" ></a>
          <div class="img_wrap">
              <img src="<%=img_main%>/m/2024/0926_full/main_bnr.png" alt="10/12(토) 국가직 7급 합격예측 풀서비스">
              <span class="badge"><img src="<%=img_main%>/m/2024/0926_full/main_bnr_mark.png" alt="10/12(토) 국가직 7급 합격예측 풀서비스"></span>
          </div>
      </div>
      <% end if %>

      <% if cdate(lo_now_date) >= cdate("2024-09-12") and cdate(lo_now_date) < cdate("2024-10-01") then %>
      <div class="item">
          <a href="/s/gong/event/2024/09120108/index.asp#eventWrap" class="bnr-link" title="미션 메가공무원 합격 메가파서블" ></a>
          <div class="img_wrap">
              <img src="<%=img_main%>/m/2024/0912_megapas/main_bnr.png" alt="미션 메가공무원 합격 메가파서블">
              <% if cdate(lo_now_date) < cdate("2024-09-24") then %>
              <span class="badge"><img src="<%=img_main%>/m/2024/0912_megapas/main_bnr_mark.png" alt="미션 메가공무원 합격 메가파서블"></span>
              <% end if %>
          </div>
      </div>
      <% end if %>

      <% if cdate(lo_now_date) >= cdate("2024-09-13") and cdate(lo_now_date) < cdate("2024-10-11") then %>
      <div class="item">
          <a href="/s/gong/event/2024/09130112/index.asp#eventWrap" class="bnr-link" title="잘먹고, 잘자고, 열공하자! MEGA 챌린지" ></a>
          <div class="img_wrap">
              <img src="<%=img_main%>/m/2024/0913_boomup/bn_fix.png" alt="잘먹고, 잘자고, 열공하자! MEGA 챌린지">
              <span class="badge"><img src="<%=img_main%>/m/2024/0913_boomup/bn_badge.png" alt="매일 참여"></span>
          </div>
      </div>
      <% end if %>

      <!-- 추석 특강 live S -->
      <% if cdate(lo_now_date) >= cdate("2024-09-02") and cdate(lo_now_date) < cdate("2024-09-18 22:00") then %>
      
          <!-- 국어 이유진 -->
          <% if cdate(lo_now_date) >= cdate("2024-09-14 09:00") and cdate(lo_now_date) < cdate("2024-09-14 10:00") then %>
          <div class="item">
              <a href="https://youtube.com/live/TtmgL8FJMSg?feature=share" class="bnr-link" target="_blank"></a>
              <div class="img_wrap"><img src="<%=img_main%>/m/2024/0902_thanklive/tealive1.png" alt="국어 이유진 추석 특강 9/14토 10:00~13:00 시험이 원하는 논리"></div>
          </div>
          
          <% elseif cdate(lo_now_date) >= cdate("2024-09-14 10:00") and cdate(lo_now_date) < cdate("2024-09-14 13:00") then %>
          <div class="gradient_wrap item">
              <a href="https://youtube.com/live/TtmgL8FJMSg?feature=share" class="bnr-link" target="_blank"></a>
              <div class="gradient_item">
              </div>
              <img src="<%=img_main%>/m/2024/0902_thanklive/tealive1_on2.png" alt="국어 이유진 지금! 10시부터 1시까지 국어 이유진 추석특강 시험이 원하는 논리가 진행됩니다.">
          </div>


          <!-- 영어 성정혜 -->
          <% elseif cdate(lo_now_date) >= cdate("2024-09-14 13:00") and cdate(lo_now_date) < cdate("2024-09-14 14:00") then %>
          <div class="item">
              <a href="https://youtube.com/live/7JluwRCtBp0?feature=share" class="bnr-link" target="_blank"></a>
              <div class="img_wrap"><img src="<%=img_main%>/m/2024/0902_thanklive/tealive2.png" alt="영어 성정혜 추석 특강 9/14토 14:00~17:00 도치 박살 특강"></div>
          </div>
          <% elseif cdate(lo_now_date) >= cdate("2024-09-14 14:00") and cdate(lo_now_date) <= cdate("2024-09-14 17:00") then %>
          <div class="gradient_wrap item">
              <a href="https://youtube.com/live/7JluwRCtBp0?feature=share" class="bnr-link" target="_blank"></a>
              <div class="gradient_item">
              </div>
              <img src="<%=img_main%>/m/2024/0902_thanklive/tealive2_on2.png" alt="영어 성정혜 지금! 2시부터 5시까지 영어 성정혜 추석특강 도치 박살 특강이 진행됩니다.">
          </div>


          <!-- 한국사 라영환 part.1-->
          <% elseif cdate(lo_now_date) >= cdate("2024-09-15 09:00") and cdate(lo_now_date) < cdate("2024-09-15 10:00") then %>
          <div class="item">
              <a href="https://youtube.com/live/dQSXDG6wqPo?feature=share" class="bnr-link" target="_blank"></a>
              <div class="img_wrap"><img src="<%=img_main%>/m/2024/0902_thanklive/tealive3.png" alt="한국사 라영환 추석 특강 9/15일 10:00 ~ 13:00 현대사 part.1"></div>
          </div>
          <% elseif cdate(lo_now_date) >= cdate("2024-09-15 10:00") and cdate(lo_now_date) <= cdate("2024-09-15 13:00") then %>
          <div class="gradient_wrap item">
              <a href="https://youtube.com/live/dQSXDG6wqPo?feature=share" class="bnr-link" target="_blank"></a>
              <div class="gradient_item">
              </div>
              <img src="<%=img_main%>/m/2024/0902_thanklive/tealive3_on2.png" alt="한국사 라영환 지금! 10시부터 1시까지 한국사 라영환 추석 특강 현대사 part1이 진행됩니다.">
          </div>



          <!-- 영어 박노준 -->
          <% elseif cdate(lo_now_date) >= cdate("2024-09-16 13:00") and cdate(lo_now_date) < cdate("2024-09-16 14:00") then %>
          <div class="item">
              <a href="https://youtube.com/live/uVW_SxaBYq8?feature=share" class="bnr-link" target="_blank"></a>
              <div class="img_wrap"><img src="<%=img_main%>/m/2024/0902_thanklive/tealive4.png" alt="영어 박노준 추석 특강 9/16월 14:00~17:00 2025 유형 필수 어휘 100&100"></div>
          </div>
          <% elseif cdate(lo_now_date) >= cdate("2024-09-16 14:00") and cdate(lo_now_date) <= cdate("2024-09-16 17:00") then %>
          <div class="gradient_wrap item">
              <a href="https://youtube.com/live/uVW_SxaBYq8?feature=share" class="bnr-link" target="_blank"></a>
              <div class="gradient_item">
              </div>
              <img src="<%=img_main%>/m/2024/0902_thanklive/tealive4_on2.png" alt="영어 박노준 지금! 2시부터 5시까지 영어 박노준 추석특강 2025 유형 필수 어휘 100&100이 진행됩니다.">
          </div>


          <!-- 국어 이윤주 -->
          <% elseif cdate(lo_now_date) >= cdate("2024-09-18 09:00") and cdate(lo_now_date) < cdate("2024-09-18 10:00") then %>
          <div class="item">
              <a href="https://youtube.com/live/Uf74vA6Jdrs?feature=share" class="bnr-link" target="_blank"></a>
              <div class="img_wrap"><img src="<%=img_main%>/m/2024/0902_thanklive/tealive5.png" alt="국어 이윤주 추석 특강 9/18수 10:00~13:00 2025 신유형 논리,문법 만점 특강"></div>
          </div>
          <% elseif cdate(lo_now_date) >= cdate("2024-09-18 10:00") and cdate(lo_now_date) < cdate("2024-09-18 13:00") then %>
          <div class="gradient_wrap item">
              <a href="https://youtube.com/live/Uf74vA6Jdrs?feature=share" class="bnr-link" target="_blank"></a>
              <div class="gradient_item">
              </div>
              <img src="<%=img_main%>/m/2024/0902_thanklive/tealive5_on2.png" alt="국어 이윤주 지금! 10시부터 1시까지 국어 이윤주 추석특강 2025 신유형 논리,문법 만점 특강이 진행됩니다.">
          </div>


          <!-- 영어 조태정 -->
          <% elseif cdate(lo_now_date) >= cdate("2024-09-18 13:00") and cdate(lo_now_date) < cdate("2024-09-18 14:00") then %>
          <div class="item">
              <a href="https://youtube.com/live/JzcVZebjvKQ?feature=share" class="bnr-link" target="_blank"></a>
              <div class="img_wrap"><img src="<%=img_main%>/m/2024/0902_thanklive/tealive6.png" alt="영어 조태정 추석 특강 9/18수 14:00~18:00 필수 만점 문법 ox"></div>
          </div>
          <% elseif cdate(lo_now_date) >= cdate("2024-09-18 14:00") and cdate(lo_now_date) < cdate("2024-09-18 18:00") then %>
          <div class="gradient_wrap item">
              <a href="https://youtube.com/live/JzcVZebjvKQ?feature=share" class="bnr-link" target="_blank"></a>
              <div class="gradient_item">
              </div>
              <img src="<%=img_main%>/m/2024/0902_thanklive/tealive6_on2.png" alt="영어 조태정 지금! 2시부터 6시까지 영어 조태정 추석 특강 필수 만점 문법 ox 가 진행됩니다.">
          </div>



          <!-- 한국사 라영환 part.2 -->
          <% elseif cdate(lo_now_date) >= cdate("2024-09-18 18:00") and cdate(lo_now_date) < cdate("2024-09-18 19:00") then %>
          <div class="item">
              <a href="https://youtube.com/live/U0_aQhw-s6U?feature=share" class="bnr-link" target="_blank"></a>
              <div class="img_wrap"><img src="<%=img_main%>/m/2024/0902_thanklive/tealive7.png" alt="한국사 라영환 9/18수 19:00~22:00 현대사 part.2"></div>
          </div>
          <% elseif cdate(lo_now_date) >= cdate("2024-09-18 19:00") and cdate(lo_now_date) <= cdate("2024-09-18 22:00") then %>
          <div class="gradient_wrap item">
              <a href="https://youtube.com/live/U0_aQhw-s6U?feature=share" class="bnr-link" target="_blank"></a>
              <div class="gradient_item">
              </div>
              <img src="<%=img_main%>/m/2024/0902_thanklive/tealive7_on2.png" alt="한국사 라영환 지금! 7시부터 10시까지 한국사 라영환 추석특강 현대사 part.2 이 진행됩니다.">
          </div>


          <!-- 디폴트 -->
          <% else %>
          <% if cdate(lo_now_date) < cdate("2024-09-13") then %>
          <div class="item">
              <a href="/help/notice/view.asp?idx=5164" class="bnr-link"></a>
              <div class="img_wrap"><img src="<%=img_main%>/m/2024/0902_thanklive/live.png" alt="추석 특강 추석 연휴에도 빈틈없이 꽉 채워주는 mega live 추석 특강"></div>
          </div>
          <% end if %>
          <% end if %>

      <% end if %>
      <!-- 추석 특강 live E -->



      <% if cdate(lo_now_date) >= cdate("2024-08-30") and cdate(lo_now_date) < cdate("2024-09-11 15:40") then %>
      <div class="item">
          <a href="/s/gong/event/2024/08300100/index.asp#eventWrap" class="bnr-link" target="_blank"></a>
          <div class="img_wrap">
              <% if cdate(lo_now_date) >= cdate("2024-09-06") then %>
              <img src="<%=img_main%>/m/2024/0830_megalive/240906/bnr_fix.png" alt="9/11수 14:00 ~ 15:40 메가기술직 합격 live on 기술직의 재발견">
              <% else %>
              <img src="<%=img_main%>/m/2024/0830_megalive/bnr_fix.png" alt="9/11수 14:00 ~ 15:40 메가기술직 합격 live on 기술직의 재발견">
              <% end if %>
          </div>
      </div>
      <% end if %>
      <% if cdate(lo_now_date) >= cdate("2024-08-21") and cdate(lo_now_date) < cdate("2024-08-30") then %>
      <div class="item">
          <a href="/s/gong/event/2024/08210092/index.asp#eventWrap" class="bnr-link"></a>
          <div class="img_wrap"><img src="<%=img_main%>/m/2024/0821_superweek/bnr_fix_1.png" alt="8/22(목) ~ 8/29(목), 2025 메가공무원 전과목 기본이론 1주일간 전체 무료!"></div>
      </div>
      <% if cdate(lo_now_date) < cdate("2024-08-23") then %>
      <div class="item">
          <a href="/s/gong/event/2024/08210092/index.asp#event1" class="bnr-link"></a>
          <div class="img_wrap"><img src="<%=img_main%>/m/2024/0821_superweek/bnr_fix_2.png" alt="8/22(목) 단, 하루! 2025 국/영/한 기본이론 골라담기"></div>
      </div>
      <% end if %>
      <div class="item">
          <a href="/s/gong/event/2024/08210092/index.asp#event2" class="bnr-link"></a>
          <div class="img_wrap"><img src="<%=img_main%>/m/2024/0821_superweek/bnr_fix_3.png" alt="8/23(금) ~ 8/29(목), 직렬별 과목 제한없이 매일 최대 3강좌 무료"></div>
      </div>
      <% end if %>
      <% If cdate(lo_now_date) < cdate("2024-08-16") then%>
      <% If cdate(lo_now_date) >= cdate("2024-08-08 20:00") then%>
      <div class="item">
          <a href="/help/notice/view.asp?idx=5116" title="LIVE 인사혁신처, 국어/영어 2차 예시문항 긴급분석! 예시 문제에 대한 명쾌한 분석과 해설 LIVE에서 확인하세요." class="bnr-link"></a>
          <div class="img_wrap"><img src="<%=img_main%>/m/2024/0808_bnr/bnr_fix.png" alt="LIVE 인사혁신처, 국어/영어 2차 예시문항 긴급분석! 예시 문제에 대한 명쾌한 분석과 해설 LIVE에서 확인하세요."></div>
      </div>
      <% else %>
      <div class="item">
          <a href="/help/notice/view.asp?idx=5116" title="LIVE 인사혁신처, 국어/영어 2차 예시문항 긴급분석! 예시 문제에 대한 명쾌한 분석과 해설 LIVE에서 확인하세요." class="bnr-link"></a>
          <div class="img_wrap"><img src="<%=img_main%>/m/2024/0806_bnr/bnr_fix.png" alt="LIVE 인사혁신처, 국어/영어 2차 예시문항 긴급분석! 예시 문제에 대한 명쾌한 분석과 해설 LIVE에서 확인하세요."></div>
      </div>
      <% end if %>
      <% end if %>

      <% If cdate(lo_now_date) >= cdate("2024-07-05") and cdate(lo_now_date) < cdate("2024-08-01") then%>
      <div class="item">
          <a href="/s/gong/event/2024/07050078/index.asp#eventWrap" title="2024 국가직 9급 공무원 최종 합격을 축하합니다" class="bnr-link"></a>
          <div class="img_wrap"><img src="<%=img_main%>/m/2024/0705_gongpass/mainbnr_1.png" alt="2024 국가직 9급 공무원 최종 합격을 축하합니다"></div>
      </div>
      <% end if %>

      <% If cdate(lo_now_date) >= cdate("2024-06-23") and cdate(lo_now_date) < cdate("2024-06-29") then%>
      <div class="item">
          <a href="/s/gong/event/2024/06180057/index.asp#eventWrap" title="2025 행정직&기술직 합격전략 LIVE" class="bnr-link"></a>
          <div class="img_wrap"><img src="<%=img_main%>/m/2024/0618_solution/mainbnr_1.png" alt="2025 행정직&기술직 합격전략 LIVE"></div>
      </div>
      <% end if %>

      <% If cdate(lo_now_date) >= cdate("2024-06-13") and cdate(lo_now_date) < cdate("2024-06-23") then%>
      <div class="item">
          <a href="/s/gong/event/2023/06010066/index.asp#eventWrap" title="6/22(토) 저녁 7시 2024 지방직 9급 합격 예측 TALK" class="bnr-link"></a>
          <%If cdate(lo_now_date) < cdate("2024-06-21 16:00") then%>
          <div class="img_wrap"><img src="<%=img_main%>/m/2024/0613_live/main_bnr1.png" alt="[알림 신청 중] 6/22(토) 저녁 7시 2024 지방직 9급 합격 예측 TALK"></div>
          <%elseIf cdate(lo_now_date) < cdate("2024-06-22 19:00") then%>
          <div class="img_wrap"><img src="<%=img_main%>/m/2024/0613_live/main_bnr2.png" alt="[LIVE] 6/22(토) 저녁 7시 2024 지방직 9급 합격 예측 TALK"></div>
          <% else %>
          <div class="img_wrap"><img src="<%=img_main%>/m/2024/0613_live/main_bnr3.png" alt="[시청 인증 EVENT] 6/22(토) 저녁 7시 2024 지방직 9급 합격 예측 TALK"></div>
          <% end if %>
      </div>
      <% end if %>

      <% if 1=2 then %>
      <div class="item">
          <a href="/s/gong/event/2024/02230019/index.asp#mContainer" title="2024 지방직 대비 마지막 찍기 특강 한국사 라영환의 [작두특강 라스트씬]" class="bnr-link"></a>
          <div class="img_wrap"><img src="<%=img_main%>/m/2024/0524_vision0911/main_bnr.png" alt="2024 지방직 대비 마지막 찍기 특강 한국사 라영환의 [작두특강 라스트씬]"></div>
      </div>
      <% end if %>

      <% if 1=2 then %>
      <div class="item">
          <a href="/s/gong/event/2024/01030004/index.asp#eventWrap" title="이제 국어는 사고력이다. 영어는 실용적 능력이다." class="bnr-link" target="_blank"></a>
          <div class="img_wrap"><img src="<%=img_main%>/m/2024/0531_lang/main_bnr.png" alt="이제 국어는 사고력이다. 영어는 실용적 능력이다."></div>
      </div>
      <% end if %>

      <% If cdate(lo_now_date) < cdate("2024-06-23") then%>
      <div class="item">
          <a href="/s/gong/event/2024/06180057/index.asp#eventWrap" title="2025 행정직&기술직 합격전략 LIVE" class="bnr-link"></a>
          <div class="img_wrap"><img src="<%=img_main%>/m/2024/0618_solution/mainbnr_1.png" alt="2025 행정직&기술직 합격전략 LIVE"></div>
      </div>
      <% end if %>

      <% if cdate(lo_now_date) >= cdate("2024-05-02") and cdate(lo_now_date) < cdate("2024-06-01") then %>
      <div class="item">
          <a href="/s/gong/event/2021/05270068/index.asp#eventWrap" title="2024 국가직 9급 필기 합격 인증하고 아이패드, 상품권 받아가세요!" class="bnr-link" target="_blank"></a>
          <div class="img_wrap"><img src="<%=img_main%>/m/2024/0502_gongpass/bnr_gong1.png" alt="2024 국가직 9급 필기 합격 인증하고 아이패드, 상품권 받아가세요!"></div>
      </div>
      <% end if %>

      <% if cdate(lo_now_date) >= cdate("2024-03-26") and cdate(lo_now_date) < cdate("2024-04-01 20:30") then %>
      <div class="item">
          <a href="https://www.youtube.com/watch?v=8OiVrxFaOhI" title="[긴급편성] 세무직, 앞으로 어떻게 준비할 것인가" class="bnr-link" target="_blank"></a>
          <div class="img_wrap"><img src="<%=img_main%>/m/2024/0326_gong/main_bnr1.png" alt="[긴급편성] 세무직, 앞으로 어떻게 준비할 것인가 LIVE▶ 4/1(월) 오후 7시 공개!"></div>
      </div>
      <% end if %>
      <% if 1=2 then %>
      <div class="item">
          <a href="/s/gong/event/2024/03260029/index.asp#eventWrap" title="2025 도전을 위한 독해 진단평가와 합격 컨설팅" class="bnr-link" target="_blank"></a>
          <div class="img_wrap"><img src="<%=img_main%>/m/2024/0326_gong/main_bnr2.png" alt="2025 도전을 위한 독해 진단평가와 합격 컨설팅 LIVE▶ 4/1(월) 오전 9시 공개!"></div>
      </div>
      <% end if %>
      <% if cdate(lo_now_date) < cdate("2024-04-06 17:00") then %>
      <div class="item">
          <a href="/s/gong/event/2023/12180141/index.asp" title="2025 출제기조 전환 완벽 반영 입문 특강 언어학 베이스" class="bnr-link" target="_blank"></a>
          <div class="img_wrap"><img src="<%=img_main%>/m/2024/0326_gong/main_bnr3.png" alt="2025 출제기조 전환 완벽 반영 입문 특강 언어학 베이스 LIVE▶ 4/6(토) 오후 2시 공개!"></div>
      </div>
      <% end if %>
      <% if cdate(lo_now_date) >= cdate("2024-04-22 09:00") and cdate(lo_now_date) < cdate("2024-04-27 17:00") then %>
      <div class="item">
          <a href="/s/gong/event/2023/12180141/index.asp" title="2025 출제기조 전환 완벽 반영 입문 특강 문학 베이스" class="bnr-link" target="_blank"></a>
          <div class="img_wrap"><img src="<%=img_main%>/m/2024/0326_gong/main_bnr4.png" alt="2025 출제기조 전환 완벽 반영 입문 특강 문학 베이스 LIVE▶ 4/27(토) 오후 2시 공개!"></div>
      </div>
      <% end if %>
      <% if cdate(lo_now_date) < cdate("2024-04-08 16:00") then %>
      <div class="item">
          <a href="/teacher/notice/notice.asp?bcode=gilltoraebi&idx=8022&mv=content_area" title="변화하는 2025 시험, 반드시 합격하는 국어 학습 전략" class="bnr-link" target="_blank"></a>
          <div class="img_wrap"><img src="<%=img_main%>/m/2024/0326_gong/main_bnr5.png" alt="변화하는 2025 시험, 반드시 합격하는 국어 학습 전략 LIVE▶ 4/8(월) 오후 2시 공개!"></div>
      </div>
      <% end if %>
      <% if cdate(lo_now_date) >= cdate("2024-03-26") and cdate(lo_now_date) < cdate("2024-03-27 18:00") then %>
      <div class="item">
          <a href="/teacher/notice/notice.asp?bcode=wjsgywls1&idx=7961&mv=content_area" title="2024행정법각론 개정법령 및 주요쟁점 특강" class="bnr-link" target="_blank"></a>
          <div class="img_wrap"><img src="<%=img_main%>/m/2024/0326_gong/main_bnr6.png" alt="2024행정법각론 개정법령 및 주요쟁점 특강 LIVE▶ 3/27(수) 오후 2시 공개!"></div>
      </div>
      <% end if %>
      <% if cdate(lo_now_date) >= cdate("2024-03-27 18:00") and cdate(lo_now_date) < cdate("2024-04-03 18:00") then %>
      <div class="item">
          <a href="/teacher/notice/notice.asp?bcode=wjsgywls1&idx=8026&mv=content_area" title="2024 국회직 대비 헌법 최신판례특강" class="bnr-link" target="_blank"></a>
          <div class="img_wrap"><img src="<%=img_main%>/m/2024/0326_gong/main_bnr7.png" alt="2024 국회직 대비 헌법 최신판례특강 LIVE▶ 4/3(수) 오후 2시 공개!"></div>
      </div>
      <% end if %>

      <% if cdate(lo_now_date) < cdate("2024-04-18 20:00") then %>
      <div class="item">
          <a href="/s/gong/event/2024/02230019/index.asp" title="매주 목요일 한국사 라영환의 공진당 LIVE 특강" class="bnr-link" target="_blank"></a>
          <div class="img_wrap"><img src="<%=img_main%>/m/2024/0416_vision0911/main_bnr1.png" alt="매주 목요일 한국사 라영환의 공진당 LIVE 특강"></div>
      </div>
      <% end if %>
      <% if cdate(lo_now_date) >= cdate("2024-04-18 20:00") and cdate(lo_now_date) < cdate("2024-04-24") then %>
      <div class="item">
          <a href="/s/gong/event/2024/02230019/index.asp" title="매주 목요일 한국사 라영환의 공진당 LIVE 특강" class="bnr-link" target="_blank"></a>
          <div class="img_wrap"><img src="<%=img_main%>/m/2024/0416_vision0911/main_bnr2.png" alt="매주 목요일 한국사 라영환의 공진당 LIVE 특강"></div>
      </div>
      <% end if %>


      <% if 1=2 then '라이브 배너 교체 요청 %>
      <!-- 공무원 LIVE 배너 S -->
      <div class="item">
          <div class="img_wrap"><img src="<%=img_main%>/m/2024/0207_popup/main_pop.png" alt="메가공무원은 오늘도 LIVE중"></div>
          <div class="live_roll">
              <% if cdate(lo_now_date) >= cdate("2024-03-30") and cdate(lo_now_date) < cdate("2024-04-01 11:30") then %>
              <div class="live_item">
                  <a href="/s/gong/event/2024/03260029/index.asp#eventWrap" title="메가공무원은 오늘도 LIVE 중" target="_blank">
                      <p class="tag"><span>4/1(월) <br/> 오전 09:00</span></p>
                      <strong>[국어] 이유진T <br/> 2025 현재 진단평가</strong>
                  </a>
              </div>  
              <% end if %>
              <% if cdate(lo_now_date) < cdate("2024-03-22") then %>
              <div class="live_item">
                  <a href="/s/gong/event/2023/11210133/index.asp?go=event" title="메가공무원은 오늘도 LIVE 중" target="_blank">
                      <p class="tag"><span>매일 아침</span></p>
                      <strong>[국어] 이유진T <br/> 백일기도 모의고사</strong>
                  </a>
              </div>  
              <% end if %>
              <% if cdate(lo_now_date) >= cdate("2024-03-11") and cdate(lo_now_date) < cdate("2024-03-14 13:00") then %>
              <div class="live_item">
                  <a href="/teacher/notice/notice.asp?bcode=sooyeon&idx=7927" title="메가공무원은 오늘도 LIVE 중" target="_blank">
                      <p class="tag"><span>3/13(수)~14(목) <br>오전 08:50</span></p>
                      <strong>[영어] 박수연T <br>국가직 찍기 특강</strong>
                  </a>
              </div>  
              <% end if %>
              <% if cdate(lo_now_date) < cdate("2024-03-09") then %>
              <div class="live_item">
                  <a href="/s/gong/event/2023/12210044/index.asp#live_event" title="메가공무원은 오늘도 LIVE 중" target="_blank">
                      <p class="tag"><span>매일 저녁</span></p>
                      <strong>[세법] 오정화T <br/> 굿나잇 세법</strong>
                  </a>
              </div>  
              <% end if %>
              <% if cdate(lo_now_date) >= cdate("2024-03-15") and cdate(lo_now_date) < cdate("2024-03-15 18:00") then %>
              <div class="live_item">
                  <a href="/teacher/notice/notice.asp?bcode=wjsgywls1&idx=7954&mv=content_area" title="메가공무원은 오늘도 LIVE 중" target="_blank">
                      <p class="tag"><span>3/15(금) <br>14:00</span></p>
                      <strong>[행정법] 전효진T <br>국가직 적중 특강</strong>
                  </a>
              </div>  
              <% end if %>
              <% if cdate(lo_now_date) >= cdate("2024-03-27") and cdate(lo_now_date) < cdate("2024-03-27 18:00") then %>
              <div class="live_item">
                  <a href="/teacher/notice/notice.asp?bcode=wjsgywls1&idx=7961&mv=content_area" title="메가공무원은 오늘도 LIVE 중" target="_blank">
                      <p class="tag"><span>3/27(수) <br>14:00</span></p>
                      <strong>[행정법각론] 전효진T <br>개정법령&주요쟁점</strong>
                  </a>
              </div>  
              <% end if %>
          </div>
      </div>
      <!-- 공무원 LIVE 배너 E -->
      <% end if %>

  </div>
</div>`;

const css = `.mcg_fixbn{position: fixed;top:auto; bottom: 24px; right: .5%;width: 240px;z-index: 3;}
.mcg_fixbn a {display:block;}
.mcg_fixbn a.bnr-link {position: absolute; width: 100%; height: 180px; bottom: 0; left: 0;}
.mcg_fixbn .close{z-index: 6;position: absolute; right: 5px; bottom: 190px; width: 17px; height: 17px; padding: 3px; display: none;}
.mcg_fixbn .slick-arrow {display:none!important;}
.mcg_fixbn .item {position: relative;text-align: center; height: 204px;}
.mcg_fixbn .item .img_wrap {display: flex; height: 100%; align-items: flex-end;}
.mcg_fixbn .item img {display:inline-block;}
.mcg_fixbn .slick-dots {position:absolute;bottom:-15px;left:0;right:0;font-size:0;text-align: center;}
.mcg_fixbn .slick-dots li {display:inline-block;margin:0 2px;}
.mcg_fixbn .slick-dots button {width:8px;height: 8px;border-radius: 50%;background:#000;opacity:.5;font-size:0;}
.mcg_fixbn .slick-dots .slick-active button {opacity: 1;}

/* 공무원 LIVE 배너 S */
.live_roll{position: relative;width: 225px;height: 40px;position: absolute;bottom: 30px; left: 9px;}
.live_roll .live_item  {width: 225px;height: 40px;}
.live_roll .live_item a {display: flex;align-items: center;background: #000;border-radius: 100px;width: 100%;height: 40px;}
.live_roll .live_item a .tag{line-height: 1.4; background: #b70000;color: #fff;border-radius: 100px;width: 85px; height: 100%;font-size: 12px; display: flex; justify-content: center; align-items: center;}
.live_roll .live_item a strong{font-size: 12px; color: #ffee9e; padding: 0 5px; margin: 0 auto; line-height: 1.4;}
.live_roll .slick-dots .slick-active button {background-color: #fff;}
.live_roll .slick-dots button {background-color: #f8a3a9;}
/* 공무원 LIVE 배너 E */

@media (max-width: 1200px){
    .mcg_fixbn{display: none;}
}`;

const excCss = `.mcg_fixbn{position:relative;bottom:initial;height:209px;}
.mcg_fixbn .close{box-sizing:content-box;right:0;}
`;

const js = `$(function() {
    var mcgBn_lng = $('#mcg_fixbn .item').length;
    if (!mcgBn_lng) {
        $('#mcg_fixbn .close').css({display:"none", opacity:0})
    } else {
        $('#mcg_fixbn .close').css({display:"block", opacity:1})
    }
});

// 배너 하나도 없을때 안보임 처리 
$('.mcg_fixbn.commonSlider').not('.slick-initialized').slick({
    infinite: true,
    autoplaySpeed: 3000,
    autoplay:true,
    arrows: false,
    draggable: true,
    dots: true,
});`;

    return (
      <PageContent
        title={title}
        desc="메가스터디 공무원 메인 홈페이지에서 사용되는 팝업 기능입니다.<br />위치는 메인사이트 우측 하단부에 두는 것을 원칙으로 하면서 하단의 띠 배너 보다는 상위에 존재하도록 작업해야 합니다."
        image="/images/popup1.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["팝업배너","메인하단","슬라이드"]}
        link="<%=url_main%>/megagong.asp"
        file="m_inc\main_content_gong.asp"
        onChange={onChange}
      />
    )
  }
</script>