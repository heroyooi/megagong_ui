<script type="text/babel">
  'use strict';

  function Button5({ title, onChange }) {

const html = `<ul class="info_list notosans">
    <li><a href="https://lab.megagong.net/l/gong/guide/guide.asp" title="공무원 가이드" target="_blank"><span>공무원 가이드</span></a></li>
    <li><a href="https://lab.megagong.net/l/gong/guide/schedule.asp" title="시험 일정" target="_blank"><span>시험 일정 <img src="https://img.megagong.net/common/ic_new.gif" alt="New" style="vertical-align:middle;margin:-3px 0 0 3px;" /></span></a></li>
    <li><a href="https://lab.megagong.net/l/gong/statistic/pass.asp" title="경쟁률ㆍ합격선" target="_blank"><span>경쟁률ㆍ합격선 </span></a></li>
    <li><a href="https://lab.megagong.net/l/gong/guide/series.asp" title="직렬별 모집 정보" target="_blank"><span>직렬별 모집 정보 </span></a></li>
    <li>
        <a href="https://lab.megagong.net/l/gong/pass_opinion/index.asp" title="합격수기" target="_blank">
            <span>합격수기 <img src="https://img.megagong.net/common/ic_new.gif" alt="New" style="vertical-align:middle;margin:-3px 0 0 3px;" /></span>
        </a>
    </li>
    <li><a href="https://lab.megagong.net/l/gong/library/list.asp" title="문제은행" target="_blank"><span>문제은행 </span></a></li>
    <li><a href="https://www.megagong.net/s/gong/examinfo/passmate/list.asp#mContainer" title="PASS MATE"><span>PASS MATE </span></a></li>
    <li><a href="https://lab.megagong.net/l/gong/followm/followm.asp" title="공부자극 영상(follow M)" target="_blank"><span>공부자극 영상(follow M)</span></a></li>
    <li class="for_mo lnk1"><a href="https://lab.megagong.net/l/gong/guide/guide.asp" title="공무원 가이드" target="_blank"><span>공무원 가이드</span></a></li>
    <li class="for_mo lnk2"><a href="https://lab.megagong.net/l/gong/news/list.asp?schExtra1=2" title="합격전략" target="_blank"><span>합격전략</span></a></li>
    <li class="for_mo lnk3"><a href="https://lab.megagong.net/l/gong/news/list.asp?schExtra1=3" title="시험공고" target="_blank"><span>시험공고</span></a></li>
    <li class="for_mo lnk4"><a href="https://lab.megagong.net/l/gong/library/list.asp" title="기출문제" target="_blank"><span>기출문제</span></a></li> 
</ul>`;

const css = `.info_list {font-weight: 200;display: flex;flex-wrap: wrap;justify-content: center;}
.info_list::after {content:"";clear:both;display:block}
.info_list li {float: left; margin: 0 10px 10px 0;padding: 0 0 0; border-radius: 6px; padding: 1px; text-decoration: none;}
.info_list li a { position: relative; display: block; padding: 0; border-radius: 6px; color: #f5bae8; width: 170px; height: 40px; line-height: 38px; border: 1px solid #d953ff; text-align: center;}
.info_list li a span {display: inline-block;padding: 0 3px 0 0;}
.info_list li a:hover {background: #fbafb1;background: linear-gradient(90deg, rgba(198,32,145,1) 0%, rgba(108,20,208,1) 100%);color: #fff;}`;


    return (
      <PageContent
        title={title}
        desc="메가공무원 메인 하단에서 사용되는 링크 이동 버튼입니다.<br /> Hover할 경우, Background의 색상이 큰 폭으로 변경되며, 이를 통하여 사용자가 원활하게 기능을 인식할 수 있도록 돕습니다. <br />디자인 시안의 색상에 맞게 Color 코드변경 및 상세 수정을 권장합니다."
        image="/images/btn4.png"
        html={html}
        css={css}
        items={["마우스효과","그라디언트","메인하단"]}
        link="<%=url_main%>"
        onChange={onChange}
      />
    )
  }
</script>