<script type="text/babel">
  'use strict';

  function SSBannerRSobang({ title, onChange, simple = false }) {

const html = `<div id="main_sky_bs" class="main_sky_bs right renew sobang renew_0619 type_top">
    <div class="inner">
        <% if cdate(lo_now_date) >= cdate("2024-09-24") and cdate(lo_now_date) < cdate("2024-10-10")then %>
        <div class="main_sky_banner">
            <div class="item type2">
                <div class="area">
                    <div class="tit-area">
                        <span class="tit">2024 2차</span>
                        <span class="b-tit">메가패스<br>환급/연장</span>
                        <span class="tit">(9/24~10/9)</span>
                    </div>
                    <span class="btn">
                        <a href="/help/refund/sobang/index.asp#top_visual">환급 ></a>
                        <a href="/help/extend/sobang/index.asp#top_visual">연장 ></a>
                    </span>
                </div>
            </div>                    
        </div>
        <%end if%>	   

        <div class="main_sky_banner">
            <% if cdate(lo_now_date) < cdate("2024-09-26") then%>
                <div class="item">
                    <a href="/book/ebookshop.asp" title="메가 e-교재">
                        <div class="tit-area">
                            <span class="tit">‘내손’안에 <br>‘나만의’교재로 <br>합격 동기화</span>
                            <span class="b-tit">메가 e-교재</span>
                        </div>
                        <span class="btn">자세히 보기</span>
                    </a>
                </div>
                <% if cdate(lo_now_date) < cdate("2024-09-10") then%>
                <div class="item">
                    <a href="https://www.mebook.io/" target="_blank" title="바른 PSAT 1회 모의고사">
                        <div class="tit-area">
                            <span class="tit">언제 어디서나 <br>태블릿 하나로 <br>가볍게</span>
                            <span class="b-tit">e-교재 전용 앱<br>meBOOK</span>
                        </div>
                        <span class="btn">자세히 보기</span>
                    </a>
                </div>
                <% end if %>
            <% else %>
                <div class="item">
                    <a href="/event/2024/09260035/index.asp#eventWrap" title="E-학습자료">
                        <div class="tit-area">
                            <span class="tit">가볍게 더 가볍게</span>
                            <span class="b-tit">메가소방<br>과목별<br>E-학습자료</span>
                        </div>
                        <span class="btn">자세히 보기</span>
                    </a>
                </div>
                <div class="item">
                    <a href="/book/ebookshop.asp" title="메가 e-교재">
                        <div class="tit-area">
                            <span class="tit">‘내손’안에 <br>‘나만의’교재로 <br>합격 동기화</span>
                            <span class="b-tit">메가 e-교재</span>
                        </div>
                        <span class="btn">자세히 보기</span>
                    </a>
                </div>
                <% if cdate(lo_now_date) < cdate("2024-10-15") then%>
                <div class="item">
                    <a href="https://store.mebook.io/" target="_blank" title="meBook 신규론칭">
                        <div class="tit-area">
                            <span class="tit">[EVENT] <br>메가소방 <br>모의고사 배포 중</span>
                            <span class="b-tit">meBOOK스토어<br>신규 오픈</span>
                        </div>
                        <span class="btn">자세히 보기</span>
                    </a>
                </div>
                <% end if %>
            <% end if %>
        </div><!-- .main_sky_banner -->

        

        <% if cdate(lo_now_date) >= cdate("2024-09-26") then %>
        <div class="main_sky_banner type-2 no_slick" style="margin-top:0px;">
            <div class="item">
                <div class="special_sale_bnr">
                    <div class="tit-area">
                        <span class="tit">모든 수험생을 위한</span>
                        <span class="b-tit">소방 메가패스 <br />맞춤 할인 혜택</span>
                    </div>
                    <ul>
                        <li class="on"><a href="/event/2024/02050009/index.asp#mContainer" target="_blank">전ㆍ현직 공무원 ></a></li>
                        <% if cdate(lo_now_date) < cdate("2024-08-27 09:00") then %>
                        <li><a href="/event/2024/05270022/index.asp#mContainer" target="_blank">타사 수강 회원 ></a></li>
                        <li><a href="/event/2024/05270022/index.asp#mContainer" target="_blank">국내외 대학생 ></a></li>
                        <% end if %>
                        <li><a href="/help/scholarship/index.asp#mContainer" target="_blank">희망 잇기 ><br>(저소득/차상위)</a></li>
                        <li><a href="<%=url_main %>/s/gong/event/2021/09280029/index.asp#mContent" target="_blank">현역 군인 ></a></li>
                    </ul>
                </div>
            </div>

            <div class="illeg_banner type-5" style="margin-top: 10px;">
                <a href="/help/notice/view.asp?idx=5136&cate=02&searchkey=&searchword=&page=1">
                    <div class="illeg_img">
                        <img src="<%=img_main%>/m/2024/0819_illeg/sobang_pc.png" alt="" />
                    </div>
                </a>
                <% if cdate(lo_now_date) >= cdate("2024-08-19") then %>
                <a href="/help/notice/view.asp?idx=4330&cate=02" style="display:block; margin: 10px 0 0;">
                    <div class="illeg_img">
                        <img src="<%=img_main%>/m/2024/0819_pdfcamp/sobang_pc.png" alt="" />
                    </div>
                </a>
                <% end if %>
            </div><!-- .illeg_banner -->
        </div><!-- .main_sky_banner -->
        <% end if %>
    </div>
    <a href="#" class="btn_toggle_sky_bs"></a>
</div> `;

const css = `.main_sky_bs_mo{display: flex;border: 1px solid #89c4fc;;margin: 0 0 30px;justify-content:center;border-radius: 10px;min-height: 60px;}
.main_sky_bs_mo .area{display: flex;padding: 10px clamp(20px,4vmin,30px);justify-content:space-between;width: 100%;}
.main_sky_bs_mo .area .tit-area{display: flex;align-items: center; gap: 10px;}
.main_sky_bs_mo .area .tit{font-size: clamp(12px,3vmin,22px);}
.main_sky_bs_mo .area .b-tit{font-size: clamp(14px,3.2vmin,24px);color:#0082ff}
.main_sky_bs_mo .btn{display: flex;gap:5px}
.main_sky_bs_mo .btn a{font-size: clamp(11px,2vmin,21px);height: 100%;border: 1px solid #777;width: clamp(70px,12vmin,100px);border-radius: 3px;display: flex;justify-content:center;align-items:center;}
.main_sky_bs_mo.sobang{border-color: #fbb2bb;}
.main_sky_bs_mo.sobang .area .b-tit{color: #ed3333;}
@media screen and (max-width: 768px){
.main_sky_bs_mo .area .tit-area{flex-direction:column;align-items: flex-start;gap:0}
}
@media screen and (max-width: 576px){
.top_banner .banner_wrap{margin:0 0 20px;}
.main_sky_bs_mo{margin:0 0 20px;}
}`;

const excCss = `.main_sky_bs.renew{position:relative;left:0;top:0;margin:30px 0 0;}
[class*=main_sky_bs].renew.renew_0619 .main_sky_banner + .main_sky_banner.type-2.top_re{margin-top:10px;}
.main_sky_bs.renew.renew_0619 .main_sky_banner .item .b-tit{color:#ed3333;}
.main_sky_bs.renew.renew_0619 .main_sky_banner .item a,
.main_sky_bs.renew.renew_0619 .main_sky_banner .item.type2 .area{border:1px solid #fbb2bb;}
.main_sky_bs.renew .main_sky_banner.type-2 .special_sale_bnr ul li a{border:inherit;}
.main_sky_bs.renew .main_sky_banner.type-2 .special_sale_bnr ul li.on a{background-color:#e76c6c;}`;

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
        desc="메가소방에서 사용하는 SS 배너를 소개합니다. <br />메가소방 메인페이지의 우측 상단에서 고정하여 사용하고 있으며 메가소방에서 운영하고 있는 다양한 컨텐츠들을 빠르게 확인하고 접근할 수 있습니다."
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["SS 배너","우측 상단 배너","메가소방"]}
        link="<%=sobang_main%>/megagong.asp"
        file="common\banner\right_sky_banner.asp"
        designFile="\\10.1.0.100\공무원사업본부_공무원 사업부\마케팅서비스실\웹디자인팀(공)\@디자인가이드"
        simple={simple}
        onChange={onChange}
      />
    )
  }
</script>