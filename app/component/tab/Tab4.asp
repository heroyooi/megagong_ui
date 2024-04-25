<script type="text/babel">
  'use strict';

  function Tab4({ title }) {

const html = `<link type="text/css" rel="stylesheet" href="<%=url_main%>/book/style.css" />

<div class="search_zone main">
  <div id="sortTab_box">
    <ul class="sortTab">
      <li class="on"><a href="javascript:;" title="9/7급">9/7급</a></li>
      <li><a href="javascript:;" title="소방">소방</a></li>
      <li><a href="javascript:;" title="군무원">군무원</a></li>
    </ul>
  </div>
</div>`;

    return (
      <PageContent
        title={title}
        desc="온라인 서점 페이지 등에서 사용되는 탭 요소입니다.<br />탭을 클릭할 경우, 해당 탭과 관련된 책의 정보들을 불러와 사용자에게 제공합니다."
        image="/images/tab3.png"
        html={html}
        items={["온라인서점","라운드","과목별"]}
        link="<%=url_main%>/book/bookshop.asp"
      />
    )
  }
</script>