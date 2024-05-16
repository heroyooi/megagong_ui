<script type="text/babel">
  'use strict';

  function MenuHcode({ title, onChange }) {

const html = `
<div class="hd_top">
  <div class="hcode_wrap gong">
      <a class="on" href="<%=url_main%>" target="_blank">공무원</a>
      <a href="<%=sobang_main%>" target="_blank">소방</a>
      <a href="<%=army_main%>" target="_blank">군무원</a>
      <a href="<%=job_main%>" target="_blank">공기업</a>
  </div>

  <div class="hcode_wrap sobang">
      <a class="on" href="<%=sobang_main%>" target="_blank">소방</a>
      <a href="<%=url_main%>" target="_blank">공무원</a>
      <a href="<%=army_main%>" target="_blank">군무원</a>
      <a href="<%=job_main%>" target="_blank">공기업</a>
  </div>

  <div class="hcode_wrap army">
      <a class="on" href="<%=army_main%>" target="_blank">군무원</a>
      <a href="<%=url_main%>" target="_blank">공무원</a>
      <a href="<%=sobang_main%>" target="_blank">소방</a>
      <a href="<%=job_main%>" target="_blank">공기업</a>
  </div>
</div>`;

const css = ``;

const excCss = `
.hd_top .hcode_wrap{position:relative;margin-top:20px;}
.hd_top .hcode_wrap:first-child{margin-top:0;}
`;

const js = ``;

const outJs = ``;

    return (
      <PageContent
        title={title}
        desc="메뉴 컴포넌트는 메가공무원 사이트를 이용하는 학생들이 필요로 하는 정보와 서비스를 쉽게 찾을 수 있도록 구성되어 있습니다."
        // image="/images/btn.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        outJs={outJs}
        items={["유틸메뉴","직렬 메뉴"]}
        link="<%=url_main%>/teacher/qna/qna.asp"
        onChange={onChange}
      />
    )
  }
</script>