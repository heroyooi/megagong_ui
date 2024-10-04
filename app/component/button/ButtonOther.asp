<script type="text/babel">
  'use strict';

  function ButtonOther({ title, onChange, simple = false }) {

const html = `<div class="btns-example">
    <span class="btn-base xxs white b-gray"><a href="#">자세히 보기</a></span>
    <span class="btn-base xxs white b-gray type-1"><a href="#">사용 내역 보기 &gt;</a></span>
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
        items={["버튼","하얀색","회색선","다양한 크기"]}
        link="<%=dev_url_main%>/test/heroyooi/component.asp?id=button"
        file="test\heroyooi\component.asp"
        designFile="\\10.1.0.100\공무원사업본부_공무원 사업부\마케팅서비스실\웹디자인팀(공)\@디자인가이드\@new_버튼.psd"
        simple={simple}
        onChange={onChange}
      />
    )
  }
</script>