<script type="text/babel">
  'use strict';

  function Table1({ title, onChange, simple = false }) {

const html = `테이블 코딩`;

const css = ``;

const js = ``;

    return (
      <PageContent
        title={title}
        desc="메가공무원에서 사용하는 테이블 컴포넌트입니다."
        html={html}
        css={css}
        js={js}
        items={["테이블", "정리된 데이터"]}
        link="<%=dev_url_main%>/test/heroyooi/component.asp?id=table"
        file="test\heroyooi\component.asp"
        designFile="\\10.1.0.100\공무원사업본부_공무원 사업부\마케팅서비스실\웹디자인팀(공)\@디자인가이드\@new_테이블.psd"
        simple={simple}
        onChange={onChange}
      />
    )
  }
</script>