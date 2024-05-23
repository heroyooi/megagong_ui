<script type="text/babel">
  'use strict';

  function EventPeriod2({ title, onChange }) {

const html = `<div class="container_info ver_dark">
  <div class="info">
    <div class="info_title">이벤트 기간</div>
    <div class="info_date">2022. 08. 31.(수) ~ 2022. 09. 20.(화)</div>
  </div>
  <div class="info">
    <div class="info_title">당첨자 발표</div>
    <div class="info_date">2022. 09. 23.(금)</div>
    <div class="noti">개별 쪽지 안내</div>
  </div>
</div>`;

const css = ``;

const excCss = ``;

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
        items={["이벤트기간","당첨자발표"]}
        link="<%=dev_url_main%>/event/@template/index_temp.asp"
        onChange={onChange}
      />
    )
  }
</script>