<script type="text/babel">
  'use strict';

  function SSBannerL({ title, onChange }) {

const html = `<div id="main_sky_bs_left" class="main_sky_bs_left renew <%=hcode%> top_re <% if (hcode = "gong" or hcode = "sobang") then %> renew_0619 dots_center <% end if %> type_top">
    <div class="inner">

        <% if hcode = "gong" then %>

            <% if cdate(lo_now_date) < cdate("2024-09-11") then %>
            <div class="main_sky_banner" style="margin-top: -8px !important;">
                <div class="item">
                    <a href="/s/gong/event/2024/08200091/index.asp#eventWrap">
                        <img src="<%=img_main %>/m/2024/0820_kakao/left_sk_evt.png" alt="메가공 카톡 플친">
                    </a>
                </div>
            </div>
            <% else %>
            <div class="main_sky_banner">
                <div class="item">
                    <a href="/s/gong/event/2024/08200091/index.asp#eventWrap">
                        <img src="<%=img_main %>/m/2024/0820_kakao/left_sk.png" alt="메가공 카톡 플친">
                    </a>
                </div>
            </div>
            <% end if %>

            <div class="main_sky_banner">
            
                <div class="item">
                    <a href="javascript:mainShow('.new_popup.gong');" title="초시생 추천!">
                        <img src="<%=img_main %>/m/2024/0619_main/left_sk_first.png" alt="공무원 준비가 처음이라면?">
                    </a>
                </div> 
                
            </div><!-- .main_sky_banner -->

            <div class="main_sky_banner">

                <% if cdate(lo_now_date) >= cdate("2024-10-01") then %>
                    <div class="item">
                        <a href="/s/gong/event/2024/09050124/index.asp#eventWrap" title="전한길">
                            <img src="<%=img_main %>/m/2024/0905_jeonhangil/bnr_1.png" alt="전한길">
                        </a>
                    </div>
                <% elseif cdate(lo_now_date) >= cdate("2024-09-05") and cdate(lo_now_date) < cdate("2024-10-01") then %>
                    <div class="item">
                        <a href="/s/gong/event/2024/09050124/index.asp#event1" title="전한길">
                            <img src="<%=img_main %>/m/2024/0905_jeonhangil/bnr_2.png" alt="전한길">
                        </a>
                    </div>
                <% elseif cdate(lo_now_date) >= cdate("2024-08-01") and cdate(lo_now_date) < cdate("2024-09-06") then %>
                    <div class="item">
                        <a href="/s/gong/event/2024/05290047/index.asp#videoWrap" title="전한길">
                            <img src="<%=img_main %>/m/2024/0710_jeonhangil/bnr_tec02.png" alt="전한길">
                        </a>
                    </div>
                <% elseif cdate(lo_now_date) >= cdate("2024-07-10") and cdate(lo_now_date) < cdate("2024-08-01") then %>
                    <div class="item">
                        <a href="/s/gong/event/2024/05290047/index.asp#eventnew" title="전한길">
                            <img src="<%=img_main %>/m/2024/0710_jeonhangil/bnr_tec01.png" alt="전한길">
                        </a>
                    </div>
                <% end if %>

                <!-- <div class="item">
                    <a href="/s/gong/event/2024/05290047/index.asp?scrgo=free" title="전한길">
                        <img src="<%=img_main %>/m/2024/0619_main/left_sk_1.png" alt="전한길">
                    </a>
                </div> -->

                <% if cdate(lo_now_date) < cdate("2024-07-05") then %>
                <div class="item">
                    <a href="/event/2024/05220019/index.asp#event2" title="신용한">
                        <img src="<%=img_main %>/m/2024/0619_main/left_sk_2.png" alt="신용한">
                    </a>
                </div>
                <% elseif cdate(lo_now_date) < cdate("2024-07-22") then %>
                <div class="item">
                    <a href="/event/2024/07050027/index.asp#event1" title="신용한" >
                        <img src="<%=img_main %>/m/2024/0705_shin242/left_sky1.png" alt="신용한">
                    </a>
                </div>
                <% elseif cdate(lo_now_date) < cdate("2024-09-09") then %>
                <div class="item">
                    <a href="/event/2024/07050027/index.asp#event2" title="신용한" >
                        <img src="<%=img_main %>/m/2024/0705_shin242/left_sky2.png" alt="신용한">
                    </a>
                </div>
                <% elseif cdate(lo_now_date) < cdate("2024-09-23") then %>
                <div class="item">
                    <a href="/s/gong/event/2024/09090104/index.asp#event1" title="신용한" >
                        <img src="<%=img_main %>/m/2024/0909_shin242/bnr_1.png" alt="신용한">
                    </a>
                </div>
                <% else %>
                <div class="item">
                    <a href="/s/gong/event/2024/09090104/index.asp#event2" title="신용한" >
                        <img src="<%=img_main %>/m/2024/0909_shin242/bnr_2.png" alt="신용한">
                    </a>
                </div>
                <% end if %>
                
                <% if cdate(lo_now_date) < cdate("2024-06-28") then%>
                <div class="item">
                    <a href="/event/2024/05230021/index.asp#event2" title="유휘운">
                        <img src="<%=img_main %>/m/2024/0619_main/left_sk_3.png" alt="유휘운">
                    </a>
                </div>
                <% elseif cdate(lo_now_date) < cdate("2024-07-03") then %>
                <div class="item">
                    <a href="/event/2024/05230021/index.asp#eventWrap" title="유휘운">
                        <img src="<%=img_main %>/m/2024/0628_off/gong_bnr.png" alt="유휘운">
                    </a>
                </div>
                <% elseif cdate(lo_now_date) < cdate("2024-07-25") then %>
                <div class="item">
                    <a href="/event/2024/07030026/index.asp#eventWrap" title="유휘운">
                        <img src="<%=img_main %>/m/2024/0703_allawyer/main_bnr.png" alt="유휘운">
                    </a>
                </div>
                <% end if %>

                <% if cdate(lo_now_date) >= cdate("2024-09-30") and cdate(lo_now_date) < cdate("2024-10-14") then %>
                <div class="item">
                    <a href="/event/2024/09050033/index.asp#eventWrap" title="2025 유휘운 행정법 진도별 문제풀이">
                        <img src="<%=img_main %>/m/2024/0930_allawyer/bnr1.png" alt="2025 유휘운 행정법 진도별 문제풀이">
                    </a>
                </div>
                <% elseif cdate(lo_now_date) >= cdate("2024-10-14") and cdate(lo_now_date) < cdate("2024-10-28") then %>
                <div class="item">
                    <a href="/event/2024/09120034/index.asp#eventWrap" title="2025 유휘운 행정법 진도별 문제풀이">
                        <img src="<%=img_main %>/m/2024/0912_allawyer/bnr_1.png" alt="2025 유휘운 행정법 진도별 문제풀이">
                    </a>
                </div>
                <% elseif cdate(lo_now_date) >= cdate("2024-09-05") and cdate(lo_now_date) < cdate("2024-09-24") then %>
                <div class="item">
                    <a href="/event/2024/09050033/index.asp#eventWrap" title="합격으로 가는 2배 더 빠른 방법, 2025 광속 요트">
                        <img src="<%=img_main %>/m/2024/0905_allawyer/bn_tec.png" alt="합격으로 가는 2배 더 빠른 방법, 2025 광속 요트">
                    </a>
                </div>
                <% end if %>  

            </div><!-- .main_sky_banner -->

        <% ' / hcode = "gong" %>

        <% elseif hcode = "sobang" then %>
            <div class="main_sky_banner">
            
                <div class="item">
                    <a href="javascript:mainShow('.new_popup.sobang');" title="초시생 추천!">
                        <img src="<%=img_main %>/m/2024/0619_main/sbleft_sk_first.png" alt="공무원 준비가 처음이라면?">
                    </a>
                </div> 
                
            </div><!-- .main_sky_banner -->

            <div class="main_sky_banner">
                
                
                <% If cdate(lo_now_date) >= cdate("2024-09-10") then %>
                <div class="item">
                    <a href="/s/sobang/event/2024/09100028/index.asp#eventWrap" title="학원 조기마감 심승아 기출문제풀이" target="_blank">
                        <img src="<%=img_main%>/m/2024/0904_tmddk4521/0910/sbleft_sk_2.png" alt="학원 조기마감 심승아 기출문제풀이">
                    </a>
                </div>
                <% end if %>
                <% if cdate(lo_now_date) >= cdate("2024-09-04") and cdate(lo_now_date) < cdate("2024-09-10")  then %>
                <div class="item">
                    <a href="/s/sobang/event/2024/09040028/index.asp#eventWrap" title="압도적 1위* 심승아 월간모의고사">
                        <img src="<%=img_main%>/m/2024/0904_tmddk4521/sbleft_sk_2.png" alt="압도적 1위* 심승아 월간모의고사">
                    </a>
                </div>
                <% end if %>

                <% if cdate(lo_now_date) >= cdate("2024-09-01")  and cdate(lo_now_date) < cdate("2024-09-04") then %>
                <div class="item">
                    <a href="/s/sobang/event/2024/06210019/index.asp#eventWrap" title="심승아">
                        <img src="<%=img_main%>/m/2024/0808_tmddk4521/sbleft_sk_2.png" alt="심승아">
                    </a>
                </div>
                <% end if %>

                <% if cdate(lo_now_date) >= cdate("2024-09-30") and cdate(lo_now_date) < cdate("2024-10-14") then %>
                <div class="item">
                    <a href="/event/2024/09050033/index.asp#eventWrap" title="2025 유휘운 행정법 진도별 문제풀이">
                        <img src="<%=img_main %>/m/2024/0930_allawyer/bnr1.png" alt="2025 유휘운 행정법 진도별 문제풀이">
                    </a>
                </div>
                <% elseif cdate(lo_now_date) >= cdate("2024-10-14") and cdate(lo_now_date) < cdate("2024-10-28") then %>
                <div class="item">
                    <a href="/event/2024/09120034/index.asp#eventWrap" title="2025 유휘운 행정법 진도별 문제풀이">
                        <img src="<%=img_main %>/m/2024/0912_allawyer/bnr_1.png" alt="2025 유휘운 행정법 진도별 문제풀이">
                    </a>
                </div>
                <% elseif cdate(lo_now_date) >= cdate("2024-09-05") and cdate(lo_now_date) < cdate("2024-09-24") then %>
                <div class="item">
                    <a href="/event/2024/09050033/index.asp#eventWrap" title="합격으로 가는 2배 더 빠른 방법, 2025 광속 요트">
                        <img src="<%=img_main %>/m/2024/0905_allawyer/bn_tec.png" alt="합격으로 가는 2배 더 빠른 방법, 2025 광속 요트">
                    </a>
                </div>
                <% end if %>  
                
                
            </div><!-- .main_sky_banner -->
        <% ' / hcode = "sobang" %>

        <% elseif hcode = "army" then %>
            <% if cdate(lo_now_date) >= cdate("2024-06-28")  then%>
                <div class="main_sky_banner army_ver">
                    <% if cdate(lo_now_date) >= cdate("2024-08-05") and cdate(lo_now_date) < cdate("2024-08-19") then%>
                    <div class="item">
                        <a href="/event/2024/08050029/index.asp#event" title="이제 행정법을 재미있고, 빠르게 !">
                            <img src="<%=img_main %>/m/2024/0805_ysw7/main_bnr_2.png" alt="이제 행정법을 재미있고, 빠르게 !">
                        </a>
                    </div> 
                    <% end if %>
            
                    <% if cdate(lo_now_date) < cdate("2024-07-09") then%>
                    <div class="item">
                        <a href="/event/2024/06250025/index.asp#eventWrap" title="이제 행정법을 재미있고, 빠르게 !">
                            <img src="<%=img_main %>/m/2024/0628_off/army_bnr.png" alt="이제 행정법을 재미있고, 빠르게 !">
                        </a>
                    </div> 
                    <% end if %>
                    
                </div><!-- .main_sky_banner -->
            <% end if %>
        <% ' / hcode = "army" %>
        <% end if %>
        
    </div>
    <a href="#" class="btn_toggle_sky_bs"></a>
</div> 



<div id="" class="main_sky_bs_left renew <%=hcode%> top_re <% if (hcode = "gong" or hcode = "sobang") then %> renew_0619 dots_center <% end if %> type_bottom">
    <div class="inner">
        <div class="main_sky_banner no_slick type-2 top_re">

            <div class="tec-recruit">

                <div class="tiny-slide">


                    <% if hcode = "gong" and cdate(lo_now_date) >= cdate("2024-10-02") and cdate(lo_now_date) < cdate("2024-10-12") then %>
                        <div class="item">
                            <a href="<%=gongssel_main%>/c/gongssel/event/2024/10020007/index.asp#eventWrap" target="_blank" title="7급 국가직 올케어 면접반 사전예약 30%! 10/11금까지">
                                <img src="<%=img_main%>/m/2024/1002_allcare7/main_bnr1.png" alt="7급 국가직 올케어 면접반 사전예약 30%! 10/11금까지">
                            </a>
                    </div>
                    <% end if %>

                    <% if hcode = "gong" and cdate(lo_now_date) >= cdate("2024-10-12") and cdate(lo_now_date) < cdate("2024-11-02") then %>
                        <div class="item">
                            <a href="<%=gongssel_main%>/c/gongssel/event/2024/10020007/index.asp#eventWrap" target="_blank" title="7급 서울/지방직 올케어 면접반 사전예약 30% 11/1 금까지">
                                <img src="<%=img_main%>/m/2024/1002_allcare7/main_bnr2.png" alt="7급 서울/지방직 올케어 면접반 사전예약 30% 11/1 금까지">
                            </a>
                    </div>
                    <% end if %>



                    <% if hcode = "gong" and cdate(lo_now_date) >= cdate("2024-09-30") and cdate(lo_now_date) < cdate("2024-10-19 14:00") then%>
                    <div class="item">
                        <a href="<%=gongssel_main%>/c/gongssel/event/2023/01250001/index.asp#eventWrap" target="_blank">
                            <img src="<%=img_main%>/m/2024/0930_consult/main_bnr.jpg" alt="MEGA GREAT! 9/7급 설명회">
                        </a>
                    </div>
                    <% end if%>


                    <% if hcode = "gong" and cdate(lo_now_date) >= cdate("2024-09-27") and cdate(lo_now_date) < cdate("2024-10-19 14:00") then %>
                        <div class="item">
                            <a href="<%=gongssel_main%>/c/gongssel/event/2024/09270006/index.asp#eventWrap" target="_blank" title="7급 국가직 면접대비 설명회 10/19토요일 14시">
                                <img src="<%=img_main%>/m/2024/0927_gongssel7/main_bnr.png" alt="7급 국가직 면접대비 설명회 10/19토요일 14시">
                            </a>
                    </div>
                    <% end if %>


                    <% if hcode = "gong" and cdate(lo_now_date) >= cdate("2024-07-17") and cdate(lo_now_date) < cdate("2024-09-28 14:00") then%>
                    <div class="item">
                        <a href="<%=gongssel_main%>/c/gongssel/event/2023/01250001/index.asp#eventWrap" target="_blank">
                            <% if cdate(lo_now_date) < cdate("2024-07-24") then %>
                            <img src="<%=img_main%>/m/2024/0717_consult/bn_left_sky.png" alt="9/7급 설명회 합격을 향한 첫걸음">
                            <% elseif cdate(lo_now_date) < cdate("2024-08-03 14:00") then %>
                            <img src="<%=img_main%>/m/2024/0724_gongssel/bn_left_sky1.jpg" alt="합격전략 설명회 합격을 향한 첫걸음">
                            <% elseif cdate(lo_now_date) < cdate("2024-08-31 14:00") then %>
                            <img src="<%=img_main%>/m/2024/0805_consult/main_bnr.png" alt="합격전략 설명회 합격을 향한 첫걸음">
                            <% elseif  cdate(lo_now_date) >= cdate("2024-08-31 14:00") and cdate(lo_now_date) < cdate("2024-09-28 14:00") then %>
                            <img src="<%=img_main%>/m/2024/0831_consult/main_bnr.jpg" alt="합격전략 설명회 합격을 향한 첫걸음">
                            <% end if %>
                        </a>
                    </div>
                    <% end if%>
                    
                    <% if hcode = "gong" and cdate(lo_now_date) >= cdate("2024-07-29") and cdate(lo_now_date) < cdate("2024-09-11") then %>
                        <div class="item">
                            <a href="<%=gongssel_main%>/c/gongssel/schedule/2022/interview/index.asp#eventWrap" target="_blank" title="파이널 면접반">
                                <img src="<%=img_main%>/m/2024/0712_gongssel/main_bnr.png" alt="파이널 면접반">
                            </a>
                    </div>
                    <% end if %>

                    <% if hcode = "gong" and cdate(lo_now_date) >= cdate("2024-07-24") and cdate(lo_now_date) < cdate("2024-07-29") then %>
                        <div class="item">
                            <a href="<%=gongssel_main%>/c/gongssel/schedule/2022/interview/index.asp#eventWrap" target="_blank" title="면접대비 마.지.막 얼리버드">
                                <img src="<%=img_main%>/m/2024/0724_song/left_bnr.png" alt="면접대비 마.지.막 얼리버드">
                            </a>
                        </div>
                    <% end if %>

                    <% if hcode = "gong" and cdate(lo_now_date) >= cdate("2024-07-22") and cdate(lo_now_date) < cdate("2024-07-24") then %>
                        <div class="item">
                            <a href="<%=gongssel_main%>/c/gongssel/schedule/2022/interview/index.asp#eventWrap" target="_blank" title="파이널 면접반">
                                <img src="<%=img_main%>/m/2024/0712_gongssel/main_bnr.png" alt="파이널 면접반">
                            </a>
                        </div>
                    <% end if %>


                </div>
                        
                <% if hcode = "gong" or hcode = "sobang" then %>
                    <a href="http://corp.megastudy.net/bbs/board.php?tbl=bbs52#none" target="_blank"><img src="<%=img_main%>/m/common/bnr/tec_recruit_<%=hcode%>_v240619.jpg" alt="강사 채용"></a>
                <% else %>
                    <a href="http://corp.megastudy.net/bbs/board.php?tbl=bbs52#none" target="_blank"><img src="<%=img_main%>/m/common/bnr/tec_recruit_<%=hcode%>.jpg" alt="강사 채용"></a>
                <% end if %>
            </div>
                
            <ul class="academy-list">
                <li><a href="<%=gongssel_main%>" target="_blank">공무원학원</a></li>
                <li><a href="<%=sobangcampus_main%>" target="_blank">소방학원</a></li>
                <% if cdate(lo_now_date) >= cdate("2024-08-23") then %>
                <% else %>	
                <li><a href="<%=army_main%>/s/army/campus/index.asp" target="_blank">군무원학원</a></li>
                <% end if %>
                <li><a href="<%=ansung_main%>" target="_blank">기숙 전문관</a></li>
                <li><a href="<%=ngbr_main%>" target="_blank">스파르타</a></li>
            </ul>

            <% if hcode = "gong" then %>
            <div class="promo-banner">
              
                <% if cdate(lo_now_date) >= cdate("2024-04-29 10:00") and cdate(lo_now_date) < cdate("2024-05-04 14:00") then %>
                <div>
                    <a href="<%=gongssel_main%>/c/gongssel/event/2023/01250001/index.asp#eventWrap" title="9/7급 합격전략 설명회 신청하기"><img src="<%=img_main%>/m/2024/0419_gongssel/main_left_bnr.jpg" alt="9/7급 합격전략 설명회 신청하기"></a>
                </div>
                <% end if %>
            </div>
            <% end if %>
        </div>
    </div>
</div>`;

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

const excCss = `.main_sky_bs_left.renew{position:relative;left:0;top:0;margin:0;}
[class*=main_sky_bs].renew.renew_0619 .main_sky_banner + .main_sky_banner.type-2.top_re{margin-top:10px;}`;

const js = `$('.tiny-slide').not('.slick-initialized').slick({
    autoplay: true,
    dots:true,
    adaptiveHeight: true,
    fade:true,
    arrows: false,
});

$('.main_sky_banner:not(.no_slick)').not('.slick-initialized').slick({
    autoplay: true,
    dots:true,
    adaptiveHeight: true,
    fade:true,
    arrows: false,
});

var calcTop = 0;
$(function(){ // html 파싱 이후
    $('.main_sky_bs_left.renew.type_bottom').css({ top: calcTop , opacity:1})
});`;

    return (
      <PageContent
        title={title}
        desc="메가공무원에서 사용하는 SS 배너를 소개합니다. <br />메가공무원 메인페이지의 좌측 상단에서 고정하여 사용하고 있으며 메가공무원에서 운영하고 있는 다양한 컨텐츠들을 빠르게 확인하고 접근할 수 있습니다. 배너의 하단 부분은 학원 사이트들로 구성되어 있습니다."
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["SS 배너","우측 상단 배너"]}
        link="<%=url_main%>/megagong.asp"
        file="common\banner\right_sky_banner.asp"
        designFile="\\10.1.0.100\공무원사업본부_공무원 사업부\마케팅서비스실\웹디자인팀(공)\@디자인가이드"
        onChange={onChange}
      />
    )
  }
</script>