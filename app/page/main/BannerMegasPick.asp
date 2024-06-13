<script type="text/babel">
  'use strict';

  function BannerMegasPick({ title, onChange }) {

const html = `<div class="main_wrp">
  <!-- S: [PC] MEGA's PICK / main_sPick -->
  <div id="main_sPick" class="main_sPick">

      <div class="title_wrap lv1">
          <h3>Mega's <b>Pick</b></h3>
      </div>

      <div class="cont_wrap">
          <ul>
              <li>
                  <a href="" title="2025 기초.입문 릴레이 무료배포">
                      <span>6.21~7.5 매일 과목별 공개</span>
                      <strong>2025 기초.입문 릴레이 무료배포</strong>
                  </a>
              </li>
              <li>
                  <a href="" title="메가패스 할인 이벤트 ">
                      <span>초성퀴즈 맞히면 최대 20만원 할인</span>
                      <strong>메가패스 할인 이벤트 </strong>
                  </a>
              </li>
              <li>
                  <a href="/s/gong/event/2024/01030004/index.asp#eventWrap" title="국어는 사고력 영어는 실용적 능력">
                      <span>직접 풀면 보이는 국어/영어</span>
                      <strong>국어는 사고력 영어는 실용적 능력</strong>
                  </a>
              </li>
              <li>
                  <a href="/s/gong/event/2024/05210045/index.asp#eventWrap" title="2025 합격 커리큘럼 가이드 ">
                      <span>첫 도전부터 합격하는 방법</span>
                      <strong>2025 합격 커리큘럼 가이드</strong>
                  </a>
              </li>
          </ul>
      </div><!-- / cont_wrap -->

  </div><!-- / main_sPick -->
</div>`;

const css = ``;

const excCss = ``;

const js = ``;

    return (
      <PageContent
        title={title}
        desc=""
        image="/images/demo/main_banner_megaspick.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["Mega's Pick", "메인 배너"]}
        link="<%=url_main%>/megagong.asp"
        onChange={onChange}
      />
    )
  }
</script>