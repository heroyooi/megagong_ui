<script type="text/babel">
  'use strict';

  function Tab2({ title, onChange }) {

const html = `<link type="text/css" rel="stylesheet" href="<%=url_main%>/teacher/curr/curr.css" />

<div class="curr_zone" id="sample">
  <div class="tab_wrap">
    <ul class="tab_btn">
      <li class="on"><a href="javascript:;" title="사회복지학개론">사회복지학개론</a></li>
      <li><a href="javascript:;" title="직업상담심리학개론">직업상담심리학개론</a></li>
      <li><a href="javascript:;" title="심리학개론">심리학개론</a></li>
    </ul>
  </div>
</div>`;

const css = `.curr_zone#sample .tab_wrap .tab_btn li{width: 33.3%;border-right:1px solid #ddd;box-sizing: border-box;text-align:center;}
.curr_zone#sample .tab_wrap .tab_btn li:last-child{border-right:none;}`;

const js = `$(document).on('click', '.curr_zone#sample .tab_btn li', function(){
  $('.curr_zone#sample .tab_btn li').removeClass('on');
  $(this).addClass('on');
});`;

    return (
      <PageContent
        title={title}
        desc="메가공무원 합격전략 연구소에서 사용하는 탭 요소입니다. <br />탭을 클릭할 경우, 해당 탭의 글씨와 상단 Border의 색상이 변경되면서 어떠한 탭 항목의 정보를 보고 있는 중인지, <br />사용자에게 명확한 정보를 전달해줍니다."
        image="/images/tab1.png"
        html={html}
        css={css}
        js={js}
        items={["커리큘럼","사각형","강사홈"]}
        link="<%=url_main%>/teacher/home.asp?bcode=pt1969"
        onChange={onChange}
      />
    )
  }
</script>