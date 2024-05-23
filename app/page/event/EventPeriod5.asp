<script type="text/babel">
  'use strict';

  function EventPeriod5({ title, onChange }) {

const html = `<div class="container_info_wrap">
  <div class="gift"><img src="<%=img_main%>/m/2024/0326_lyj4718/evt2_img3.png" alt="선물"></div>
  <div class="container_info ver_column">
    <div class="info">
      <div class="info_title">참여 대상</div>
      <div class="info_date">어쩌구를 듣는 누구나!</div>
    </div>								
    <div class="info">
      <div class="info_title max">이벤트 기간</div>
      <div class="info_date">bbbbb</div>
    </div>
    <div class="info">
      <div class="info_title">당첨자 발표</div>
      <div class="info_date">bbbbb<span class="noti">bbbbb</span></div>
    </div>
  </div>
</div>`;

const css = ``;

const excCss = `.container_info_wrap{border:1px solid #ddd;}`;

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
        items={["참여대상","이벤트기간","당첨자발표","선물"]}
        link="<%=dev_url_main%>/event/@template/index_temp.asp"
        onChange={onChange}
      />
    )
  }
</script>