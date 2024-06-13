<script type="text/babel">
  'use strict';

  function BannerRightSky({ title, onChange }) {

const html = `<div id="main_sky_bs" class="main_sky_bs renew gong renew_0619">
    <div class="inner">
        <div class="main_sky_banner">
            <div class="item">
                <a href="/s/gong/event/2024/01250013/index.asp?go=tab3" title="바른 PSAT 1회 모의고사">
                    <div class="tit-area">
                        <span class="tit">2024 <br>국가직 7급<br>1차 대비</span>
                        <span class="b-tit">바른 PSAT<br>1회 모의고사 </span>
                    </div>
                    <span class="btn">응시하기</span>
                </a>
            </div>
            <div class="item">
                <a href="/s/gong/event/2022/12140184/index.asp#eventWrap" title="온라인 모의고사 모음.ZIP">
                    <div class="tit-area">
                        <span class="tit">오늘 나의 점수는?</span>
                        <span class="b-tit">온라인<br>모의고사 모음.<br>ZIP</span>
                    </div>
                    <span class="btn">자세히 보기</span>
                </a>
            </div>
        </div><!-- .main_sky_banner -->
        <div class="main_sky_banner">
            <div class="item">
                <a href="" title="메가 e-교재">
                    <div class="tit-area">
                        <span class="tit">‘내손’안에<br>‘나만의’교재로<br>합격 동기화</span>
                        <span class="b-tit">메가 e-교재</span>
                    </div>
                    <span class="btn">자세히 보기</span>
                </a>
            </div>
            <div class="item">
                <a href="https://www.mebook.io/" target="_blank" title="meBook 신규론칭">
                    <div class="tit-area">
                        <span class="tit">모든 <br>교재를 App 안에서 <br>자유롭게</span>
                        <span class="b-tit">meBook<br>신규론칭</span>
                    </div>
                    <span class="btn">자세히 보기</span>
                </a>
            </div>
        </div><!-- .main_sky_banner -->

        <div class="main_sky_banner type-2 top_re">
            <div class="item">
                <%If cdate(lo_now_date) < cdate("2024-05-27") then%>
                <a href="/event/2024/02050009/index.asp#mContainer">
                    <div class="tit-area">
                        <span class="tit">전ㆍ현직 <br />공무원만을 위한</span>
                        <span class="b-tit">공무원 메가패스 <br />특별할인 혜택</span>
                    </div>
                    <span class="ico"><img src="<%=img_main%>/m/common/bnr/ico_mainsky_megapass.png" alt="" /></span>
                </a>
                <% else %>
                <div class="special_sale_bnr">
                    <div class="tit-area">
                        <span class="tit">모든 수험생을 위한</span>
                        <span class="b-tit">공무원 메가패스 <br />맞춤 할인 혜택</span>
                    </div>
                    <ul>
                        <li><a href="/event/2024/02050009/index.asp#mContainer" target="_blank">전ㆍ현직 공무원 ></a></li>
                        <li><a href="/event/2024/05270022/index.asp#mContainer" target="_blank">타사 수강 회원 ></a></li>
                        <li><a href="/event/2024/05270022/index.asp#mContainer" target="_blank">국내외 대학생 ></a></li>
                        <li><a href="/help/scholarship/index.asp#mContainer" target="_blank">희망 잇기 ><br>(저소득/차상위)</a></li>
                        <li><a href="/s/gong/event/2021/09280029/index.asp#mContent" target="_blank">현역 군인 ></a></li>
                    </ul>
                </div>
                <% end if %>
            </div>
        </div><!-- .main_sky_banner -->
    </div>
    <a href="#" class="btn_toggle_sky_bs"></a>
</div>             
    `;

const css = ``;

const excCss = `.main_sky_bs.renew{position:relative;left:0;top:0;margin:0;}
[class*=main_sky_bs].renew.renew_0619 .main_sky_banner + .main_sky_banner.type-2.top_re{margin-top:10px;}`;

const js = `$('.main_sky_banner:not(.no_slick)').not('.slick-initialized').slick({
    autoplay: true,
    dots:true,
    adaptiveHeight: true,
    fade:true,
    arrows: false,
});


// start: special_sale_bnr 박스 순차적으로 깜빡이기
var idx = 0;
var box = $('.special_sale_bnr ul li');

// 초기 설정: 페이지가 열리면 첫 번째 요소에 'on' 클래스를 추가
box.eq(idx).addClass('on');

setTimeout(function() {
    setInterval(time, 2000);
}, 300);

function time() {
    box.removeClass('on');
    idx = (idx + 1) % box.length; // idx가 box 길이를 넘지 않도록 설정
    box.eq(idx).addClass('on');
}
// end: special_sale_bnr 박스 순차적으로 깜빡이기


// .main_sky_banner.type-2.top_re 가변적인 margin-top 조정을 위함
$(window).on('load', function() {
    
    var mainwrp_off = $(".main_wrp").offset().top;
    var superTea_off = $(".main_superTea").offset().top;
    $('.main_sky_banner.type-2.top_re').css('marginTop', superTea_off-mainwrp_off + 'px');
    $('.main_sky_banner.type-2.top_re').addClass('on');
});`;

    return (
      <PageContent
        title={title}
        desc=""
        image="/images/demo/main_banner_rightsky.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["이벤트 배너","메인 배너"]}
        link="<%=url_main%>/megagong.asp"
        onChange={onChange}
      />
    )
  }
</script>