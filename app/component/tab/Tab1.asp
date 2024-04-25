<script type="text/babel">
  'use strict';

  function Tab1({ title, onChange }) {

const html = `<div class="tab-upper">
  <div class="inner">
    <div class="tab-upper-swiper swiper-container">
      <div class="swiper-wrapper">
        <div class="swiper-slide<%If Request.QueryString("tab") <= 1 then%> on<%End if%>"><a href="javascript:;" title="공무원이란">공무원이란</a></div>
        <div class="swiper-slide<%If Request.QueryString("tab") = 2 then%> on<%End if%>"><a href="javascript:;" title="채용절차">채용절차</a></div>
        <div class="swiper-slide<%If Request.QueryString("tab") = 3 then%> on<%End if%>"><a href="javascript:;" title="응시자격">응시자격</a></div>
        <div class="swiper-slide<%If Request.QueryString("tab") = 4 then%> on<%End if%>"><a href="javascript:;" title="필기시험">필기시험</a></div>
        <div class="swiper-slide<%If Request.QueryString("tab") = 5 then%> on<%End if%>"><a href="javascript:;" title="가산점">가산점</a></div>
        <div class="swiper-slide<%If Request.QueryString("tab") = 6 then%> on<%End if%>"><a href="javascript:;" title="면접시험">면접시험</a></div>
      </div>
      <div class="swiper-scrollbar mo-view"></div>
    </div>
  </div>
</div>`;

const js = `LUI.tabUI();`;

    return (
      <PageContent
        title={title}
        desc="메가공무원 합격전략 연구소에서 사용하는 탭 요소입니다. <br />탭을 클릭할 경우, 해당 탭의 글씨와 상단 Border의 색상이 변경되면서 어떠한 탭 항목의 정보를 보고 있는 중인지, <br />사용자에게 명확한 정보를 전달해줍니다."
        image="/images/tab1.png"
        html={html}
        js={js}
        items={["합격전략","사각형","탭"]}
        link="<%=lab_main%>/l/gong/guide/guide.asp"
        onChange={onChange}
      />
    )
  }
</script>