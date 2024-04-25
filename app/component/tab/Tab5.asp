<script type="text/babel">
  'use strict';

  function Tab5({ title, onChange }) {

const html = `<div class="bg_top tab5">
  <div class="inner">
      <nav>
          <ul class="tab_base">
              <li class="on">
                  <a href="#tab1">
                      <p><span>2개월</span>기본이론 종합반</p>
                  </a>
              </li>
              <li>
                  <a href="#tab2">
                      <p><span>13개월</span>순환 종합반</p>
                  </a>
              </li>
              <li>
                  <a href="#tab3">
                      <p><span>13개월</span>프리미엄 종합반</p>
                  </a>
              </li>
          </ul>
      </nav>
  </div>
</div>

<div class="bg_bot tab5">
  <div class="inner">
    <div class="tabCont">
      <div id="tab1" class="tabc">
          <div class="tab_content_wrap">
              <img src="<%=img_main %>/m/2023/0201_overall/tab_img1.png" alt="기본이론 종합반">
          </div>
          <div class="tab_pic_wrap">
              <img src="<%=img_main %>/m/2023/0201_overall/tab_img2.png" alt="기본이론 종합반">
          </div>
      </div>
      <div id="tab2" class="tabc">
          <div class="tab_content_wrap">
              <img src="<%=img_main %>/m/2023/0201_overall/tab2_img1.png" alt="순환 종합반">
              <span class="tag"><img src="<%=img_main %>/m/2023/0201_overall/tab_tag.png" alt="2개월 추가 이벤트 24.05.31.지방직까지"></span>
          </div>
          <div class="tab_pic_wrap">
              <img src="<%=img_main %>/m/2023/0201_overall/tab2_img2.png" alt="순환 종합반">
          </div>
      </div>
      <div id="tab3" class="tabc">
          <div class="tab_content_wrap">
              <img src="<%=img_main %>/m/2023/0201_overall/tab3_img1.png" alt="프리미엄 종합반">
              <span class="tag"><img src="<%=img_main %>/m/2023/0201_overall/tab_tag.png" alt="2개월 추가 이벤트 24.05.31.지방직까지"></span>
          </div>
          <div class="tab_pic_wrap">
              <img src="<%=img_main %>/m/2023/0201_overall/tab3_img2.png" alt="프리미엄 종합반">
          </div>
      </div>
    </div>
  </div>
</div>`;

const css = `.bg_top {background: #f5f5f5;border-bottom: 2px solid #000; font-family: 'NotoSans KR';}
.inner { position: relative;width: 100%;margin: 0 auto;}
.inner::after { content: "";display: block;clear: both;}
.tab_base { margin: 50px auto 0;overflow: hidden;}
.tab_base li {float: left;width: 33.3%; height: 110px; background: #fff; display: table; position: relative;}
.tab_base li.on { background: #1e25f0;}
.tab_base li:first-child {margin-left: 0;}
.tab_base li a {display: table; width: 100%;height: 100%;text-align: center;}
.tab_base > li a {transition: background-color 0.2s, color 0.2s;}
.tab_base li a p { display: table-cell;vertical-align: middle; color: #999; font-size: 34px;  line-height: 25px;  font-weight: 600;}
.tab_base li.on a p {color: #fff;}
.tab_base li a p span {display: block;font-size: 16px;background: #999;width: 22%; margin: 0 auto 12px; border-radius: 50px;  color: #fff; font-weight: 400;}
.tab_base li.on a p span { background: #000;}
.bg_bot {background: #fff; }
.tabCont {padding-top: 60px;min-height: 890px;}
.tab_content_wrap { margin-bottom: 30px; position: relative;}
.bg_bot .tag { position: absolute; right: 0px; top: 30px;}

@media screen and (max-width: 1200px) {
  .inner {width:96%}
  .tab_base li {height: 78px;}
  .tabCont {padding: 3% 0 0;min-height: inherit;}
  .tab_content_wrap {margin-bottom: 3%;}
  .bg_bot .tag {top: 6%;}
  .tab_base li a p {font-size: 23px;}
  .tab_base li a p span {margin: 0 auto 2%;font-size: 13px;}

}
@media screen and (max-width: 992px) {
  .tab_base li { height: 65px; padding-bottom: 0.5%;}
  .tab_base li a p {font-size: 20px; line-height: 8px; font-weight: 600;}
  .tab_base li a p span { width: 27%;margin: 0 auto 5%; padding: 2% 6%;text-align: center;}
  .bg_bot .tag {width: 17%;}
}
@media screen and (max-width: 768px) {
  .tab_base li {min-height: inherit;padding-bottom: 1.5%;}
  .tab_base li a p {font-size: 16px;}
  .tab_base li a p span { width: 35%; padding: 3% 6%;}
  .bg_bot .tag {width: 25%;top: 4%;} 
}
@media screen and (max-width: 576px) {
  .evCon1 .tab_base li { height: 52px;  box-sizing: border-box; padding: 5px;}
  .tab_base li a p {font-size: 12px;}
  .tab_base li a p span { width: 45%;padding: 4% 6%;line-height: 8px;font-size: 10px;}
}`;

const js = `var bannerNum = 0
var roll = setInterval(rolling, 3000);
$('.tab5 .tabCont .tabc').hide()
$('.tab5 .tab_base li').eq(bannerNum).addClass('on');
$('.tab5 .tab_base li').eq(bannerNum).show();

function rolling() {
  if (bannerNum >= 2) {
    bannerNum = 0;
    $('.tab5 .tab_base li').removeClass('on');
    $('.tab5 .tabCont .tabc').hide()
    $('.tab5 .tab_base li').eq(bannerNum).addClass('on');
    var target = $('.tab5 .tabCont .tabc').eq(bannerNum)
    $(target).show();
  } else {
    $('.tab5 .tab_base li').removeClass('on');
    $('.tab5 .tabCont .tabc').hide()
    bannerNum++;
    $('.tab5 .tab_base li').eq(bannerNum).addClass('on');
    var target = $('.tab5 .tabCont .tabc').eq(bannerNum)
    $(target).show();
  }
}

$(document).on('click', '.tab5 .tab_base li', function(e){
  e.preventDefault();
  clearInterval(roll); 
  
  let nownum = $('.tab5 .tab_base li').index(this)
  $('.tab5 .tab_base li').removeClass('on');
  $('.tab5 .tab_base li').eq(nownum).addClass('on');
  $('.tab5 .tabCont .tabc').hide();
  $('.tab5 .tabCont .tabc').eq(nownum).show();
  bannerNum = nownum;
  roll = setInterval(rolling, 3500);
});`;

    return (
      <PageContent
        title={title}
        desc="이벤트 페이지 등에서 사용되는 탭 요소입니다.<br />2~3초 간격으로 탭이 자동 롤링되며 탭과 관련된 이미지 및 정보를 제공합니다."
        image="/images/tab1.png"
        html={html}
        css={css}
        js={js}
        items={["자동롤링","이벤트","첫번째탭부터"]}
        link="https://gongssel.megagong.net/c/gongssel/schedule/2022/overall9/index.asp"
        onChange={onChange}
      />
    )
  }
</script>