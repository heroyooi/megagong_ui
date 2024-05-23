<script type="text/babel">
  'use strict';

  function EventGift({ title, onChange }) {

const html = `<div class="container_gift_wrap">
  <ul class="flex">
    <li><img src="<%=img_main%>/m/2024/0513_tech/tab1_1_img1.png" alt="선물 1"></li>
    <li><img src="<%=img_main%>/m/2024/0513_tech/tab1_1_img2.png" alt="선물 2"></li>
    <li><img src="<%=img_main%>/m/2024/0513_tech/tab1_1_img3.png" alt="선물 3"></li>
  </ul>
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
        items={["선물 목록"]}
        link="<%=dev_url_main%>/event/@template/index_temp.asp"
        onChange={onChange}
      />
    )
  }
</script>