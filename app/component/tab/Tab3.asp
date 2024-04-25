<script type="text/babel">
  'use strict';

  function Tab3({ title }) {

const html = `<div class="gob_tab_wrap">
  <ul class="tab_list clearfix">
    <li class="on">
      <a href="javascript:void(0);">행정직군</a>
    </li>
    <li>
      <a href="javascript:void(0);">기술직군</a>
    </li>
  </ul>
</div>`;

const css = `.gob_tab_wrap .tab_list{overflow: hidden;width:100%;margin-bottom: 40px;}
.gob_tab_wrap .tab_list li{float: left;width:50%; color: #777; background: #f5f5f5; border: 1px solid #e3e3e3;box-sizing: border-box;}
.gob_tab_wrap .tab_list li.on{background:#26b7bc;border: 1px solid #26b7bc; color: #fff;} 
.gob_tab_wrap .tab_list li a{text-align: center;padding:20px 0;display: block;font-size: 17px;}

.gob_tab_wrap .tab_cont{display: none;padding: 23px 0 35px; position: relative;} 
.gob_tab_wrap .tab_cont.on{display: block;}

@media (max-width:768px){
  .gob_tab_wrap .tab_list li{height: auto;}
  .gob_tab_wrap .tab_list li a{padding: 5% 0; font-size: 15px;}
}`;

const js = `$(document).on('click', '.gob_tab_wrap .tab_list li', function(){
  $('.gob_tab_wrap .tab_list li').removeClass('on');
  $(this).addClass('on');
})`;

    return (
      <PageContent
        title={title}
        desc="강좌추천 페이지 등에서 주로 사용되는 탭 요소입니다.<br />탭 항목에는 &lt;a&gt; 태그로 링크가 연결되어 있어 탭 항목을 클릭할 경우, 미리 지정된 링크 주소로 페이지가 이동하게 됩니다."
        image="/images/tab1.png"
        html={html}
        css={css}
        js={js}
        items={["강좌추천","사각형","링크이동"]}
        link="<%=url_main%>/vod/vod_chr_list.asp"
      />
    )
  }
</script>