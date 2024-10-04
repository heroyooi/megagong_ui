<script type="text/babel">
  'use strict';

  function ButtonBlack({ title, onChange, simple = false }) {

const html = `<div class="btns-example">
    <span class="btn-base xl black"><a href="#">구매하기</a></span>
    <span class="btn-base xl black"><a href="#">구매하기 &gt;</a></span>
    <span class="btn-base lg black"><a href="#">커리큘럼 영상으로 확인하기</a></span>
    <span class="btn-base md black"><a href="#">강좌 미리 보기</a></span>
    <span class="btn-base sm black"><a href="#">강좌 미리 보기</a></span>
    <span class="btn-base sm black"><a href="#">강좌 미리 보기 &gt;</a></span>
    <span class="btn-base xs black"><a href="#">강좌 미리 보기</a></span>
</div>`;
const css = `.btns-example{display:flex;flex-direction:column;gap:20px;}`;
const js = ``;

    return (
      <PageContent
        title={title}
        desc="메가공무원에서 사용하는 버튼 컴포넌트입니다."
        html={html}
        css={css}
        js={js}
        items={["버튼","검은색","다양한 크기"]}
        link="<%=dev_url_main%>/test/heroyooi/component.asp?id=button"
        file="test\heroyooi\component.asp"
        designFile="\\10.1.0.100\공무원사업본부_공무원 사업부\마케팅서비스실\웹디자인팀(공)\@디자인가이드\@new_버튼.psd"
        simple={simple}
        onChange={onChange}
      />
    )
  }
</script>