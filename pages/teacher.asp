<!-- #include virtual = "/inc/top.asp"-->
<link type="text/css" rel="stylesheet" href="<%=url_main%>/teacher/curr/curr.css" />
<link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/tech.css" />
<%
dp1 = 3
dp2 = 1
%>
    <!-- #include virtual = "/inc/aside.asp"-->
    
    <div class="page_wrap page_wide page_teacher" id="page_wrap">

        <div class="page_inner">
            <div class="page_name_wrap">
                <h3 class="page_name">Teacher</h3>
                <h3 class="page_name_sub">선생님</h3>
                <p class="page_sub_text">메가공무원의 강사 선생님들과 관련된 페이지에서 주로 사용되는 요소들입니다.<br> 
                해당 요소의 디자인 및 양식은 공통화 되어있으므로 특별한 사유가 있는 경우를 제외하고 본 규격양식을 따르는 것을 원칙으로 합니다.</p>
                <div class="page_print"><input type="button" value="인쇄하기" id="print" onclick="window.print()"/></div>
            </div>

<pre class="language-html css"><code><link type="text/css" rel="stylesheet" href="<%=url_main%>/teacher/curr/curr.css" />
<link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/tech.css" /></code></pre>            

            <div class="page_text_wrap">
                <p class="page_head">선생님 목록</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                
<!-- HTML -->
<div class="code-box html tp2"><div class="wrap_content tec_renew">
    <div class="wrap_inner">
        <div class="tab_square_wrap pcView">
            <ul class="tab_square tab_square_4">
                <li><a href="javascript:void(0);" onclick="clickTab('sub', '61');"><span>국어</span></a></li>
                <li><a href="javascript:void(0);" onclick="clickTab('sub', '62');"><span>영어</span></a></li>
                <li><a href="javascript:void(0);" onclick="clickTab('sub', '63');"><span>한국사</span></a></li>
                <li><a href="javascript:void(0);" onclick="clickTab('sub', '85');"><span>PSAT</span></a></li>
                <li class="on"><a href="javascript:void(0);" onclick="clickTab('cate', '1');"><span>행정직</span></a></li>
                <li><a href="javascript:void(0);" onclick="clickTab('cate', '2');"><span>기술직</span></a></li>
                <li><a href="javascript:void(0);" onclick="clickTab('sub', '86/87');"><span>한국사/영어<br>검정</span></a></li>
                <li><a href="javascript:void(0);" onclick="clickTab('sub', '84');"><span>면접</span></a></li>
            </ul>
        </div>
        <div class="tab_square_mo_wrap moView">
            <div class="tab_square_mo_inner">
                <div class="tab_square_mo swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <a href="javascript:void(0);" onclick="clickTab('sub', '61');">국어</a>
                        </div>
                        <div class="swiper-slide">
                            <a href="javascript:void(0);" onclick="clickTab('sub', '62');">영어</a>
                        </div>
                        <div class="swiper-slide on">
                            <a href="javascript:void(0);" onclick="clickTab('sub', '63');">한국사</a>
                        </div>
                        <div class="swiper-slide">
                            <a href="javascript:void(0);" onclick="clickTab('sub', '85');">PSAT</a>
                        </div>
                        <div class="swiper-slide">
                            <a href="javascript:void(0);" onclick="clickTab('cate', '1');">행정직</a>
                        </div>
                        <div class="swiper-slide">
                            <a href="javascript:void(0);" onclick="clickTab('cate', '2');">기술직</a>
                        </div>
                        <div class="swiper-slide">
                            <a href="javascript:void(0);" onclick="clickTab('sub', '86/87');">한국사/영어 검정</a>
                        </div>
                        <div class="swiper-slide">
                            <a href="javascript:void(0);" onclick="clickTab('sub', '84');">면접</a>
                        </div>
                    </div>
                    <div class="swiper-scrollbar"></div>
                </div>
            </div>
        </div>
        <div class="tab_text_box">
            <div class="tab_label_area">
                <span class="tab_label moView">
                    <em class="txt" id="moSub_nm">행정학</em>
                    <em class="ico">∨</em>
                </span>
            </div>
            <ul id="sub_list">
                <li id="cateSub_64" class="on"><a href="javascript:void(0);" onclick="clickTab('cate_sub', '64');"> 행정학 </a></li>
                <li id="cateSub_65"><a href="javascript:void(0);" onclick="clickTab('cate_sub', '65');"> 행정법 </a></li>
                <li id="cateSub_81"><a href="javascript:void(0);" onclick="clickTab('cate_sub', '81');"> 경제학 </a></li>
                <li id="cateSub_70"><a href="javascript:void(0);" onclick="clickTab('cate_sub', '70');"> 공직선거법 </a></li>
                <li id="cateSub_82"><a href="javascript:void(0);" onclick="clickTab('cate_sub', '82');"> 관세법 </a></li>
                <li id="cateSub_91"><a href="javascript:void(0);" onclick="clickTab('cate_sub', '91');"> 교육학 </a></li>
                <li id="cateSub_73"><a href="javascript:void(0);" onclick="clickTab('cate_sub', '73');"> 교정학 </a></li>
                <li id="cateSub_92"><a href="javascript:void(0);" onclick="clickTab('cate_sub', '92');"> 국제법 </a></li>
                <li id="cateSub_60"><a href="javascript:void(0);" onclick="clickTab('cate_sub', '60');"> 국제정치학 </a></li>
                <li id="cateSub_72"><a href="javascript:void(0);" onclick="clickTab('cate_sub', '72');"> 노동법 </a></li>
                <li id="cateSub_89"><a href="javascript:void(0);" onclick="clickTab('cate_sub', '89');"> 민법 </a></li>
                <li id="cateSub_88"><a href="javascript:void(0);" onclick="clickTab('cate_sub', '88');"> 민사소송법 </a></li>
                <li id="cateSub_83"><a href="javascript:void(0);" onclick="clickTab('cate_sub', '83');"> 사회복지학 </a></li>
                <li id="cateSub_68"><a href="javascript:void(0);" onclick="clickTab('cate_sub', '68');"> 세법 </a></li>
                <li id="cateSub_94"><a href="javascript:void(0);" onclick="clickTab('cate_sub', '94');"> 심리학 </a></li>
                <li id="cateSub_71"><a href="javascript:void(0);" onclick="clickTab('cate_sub', '71');"> 지방자치론 </a></li>
                <li id="cateSub_93"><a href="javascript:void(0);" onclick="clickTab('cate_sub', '93');"> 직업상담심리학 </a></li>
                <li id="cateSub_69"><a href="javascript:void(0);" onclick="clickTab('cate_sub', '69');"> 헌법 </a></li>
                <li id="cateSub_90"><a href="javascript:void(0);" onclick="clickTab('cate_sub', '90');"> 형법 </a></li>
                <li id="cateSub_74"><a href="javascript:void(0);" onclick="clickTab('cate_sub', '74');"> 형사소송법 </a></li>
                <li id="cateSub_66"><a href="javascript:void(0);" onclick="clickTab('cate_sub', '66');"> 회계학 </a></li>
            </ul>
        </div>
        <div class="tea_list_wrap">
            <ul class="tea_list" id="tea_list">
                <li class="tecCard 64" style="">
                    <a href="<%=url_main%>/teacher/home.asp?bcode=shin242" target="_blank" title="신용한">
                        <span class="t_desc">
                        합격으로 증명하는 <br>신용한 행정학
                        </span>
                        <span class="t_name">신용한 선생님</span>
                        <span class="t_img"><img src="<%=img_main%>/profphoto/gong/shin242/Prof3.png" alt="64&nbsp;신용한"></span>
                    </a>
                    <ul class="notice">
                        <li>
                            <a href="<%=url_main%>/teacher/notice/notice.asp?bcode=shin242&amp;idx=6067">
                                <span class="label">새소식</span>
                                <span class="con">[10/15] 국가직 7급 행정학 총평:행정학 점수는 88점 이상이면 훌륭하고, 80점 이상이면 합격선 예상</span>
                            </a>
                        </li>
                        <li>
                            <a href="<%=url_main%>/teacher/review/view.asp?bcode=shin242&amp;idx=22993&amp;mv=content_area">
                                <span class="label">BEST후기</span>
                                <span class="con">울면서 기출풀던 행정학..[2022지방직 9급 합격수기]</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="tecCard 64" style="">
                    <a href="<%=url_main%>/teacher/home.asp?bcode=plower3362" target="_blank" title="황철곤">
                        <span class="t_desc">
                        합격으로 바로 직결하는<br>240주제
                        </span>
                        <span class="t_name">황철곤 선생님</span>
                        <span class="t_img"><img src="<%=img_main%>/profphoto/gong/plower3362/Prof3.png" alt="64&nbsp;황철곤"></span>
                    </a>
                    <ul class="notice">
                        <li>
                            <a href="<%=url_main%>/teacher/notice/notice.asp?bcode=plower3362&amp;idx=6114">
                                <span class="label">새소식</span>
                                <span class="con">[10/29] 지방직 7급 행정학 총평: 기출선지가 그대로 나오지 않음을 보여준 출제</span>
                            </a>
                        </li>
                        <li>
                            <a href="<%=url_main%>/teacher/review/view.asp?bcode=plower3362&amp;idx=21875&amp;mv=content_area">
                                <span class="label">BEST후기</span>
                                <span class="con">[국가직 최종합격 / 지방직 필기합격] 군더더기 없이 깔끔한 강의!!!</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="tecCard 64" style="">
                    <a href="<%=url_main%>/teacher/home.asp?bcode=happy0308" target="_blank" title="이상헌">
                        <span class="t_desc">
                        방대한 행정학 Slim&amp;Fit 하다 <br>DIET 행정학
                        </span>
                        <span class="t_name">이상헌 선생님</span>
                        <span class="t_img"><img src="<%=img_main%>/profphoto/gong/happy0308/Prof3.png" alt="64&nbsp;이상헌"></span>
                    </a>
                    <ul class="notice">
                        <li>
                            <a href="<%=url_main%>/teacher/notice/notice.asp?bcode=happy0308&amp;idx=6117">
                                <span class="label">새소식</span>
                                <span class="con">[10/29] 국가직 7급 행정학 총평: 전반적으로 평이하게 출제되었으나 변별력 있는 문제때문에 시간분배가 어려웠을 것</span>
                            </a>
                        </li>
                        <li>
                            <a href="<%=url_main%>/teacher/review/view.asp?bcode=happy0308&amp;idx=21479&amp;mv=content_area">
                                <span class="label">BEST후기</span>
                                <span class="con">쌤! 저 국가직 9급 일반행정 합격했습니다!</span>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div></div>

<script>var tabSquarePC = $('.tab_square');
var tabSquareMO = new Swiper('.tab_square_mo', {
    slidesPerView: 'auto',
    observer: true,
    observeParents: true,
    observeSlideChildren: true,
    scrollbar: {
    el: '.tab_square_mo .swiper-scrollbar',
    draggable: true,
    },
});
var tabTextBox = $('.tab_text_box');

$(window).on('load resize', function(){
    var tabSquareMO_active_index = $('.tab_square_mo .swiper-slide.on').index();
    if (tabSquareMO_active_index) {
        tabSquareMO.slideTo(tabSquareMO_active_index, 0)
    }
});

var tabSquareMO_slide = $('.tab_square_mo .swiper-slide');
tabSquareMO_slide.find('a').on('click', function(e){
    e.preventDefault();
    var activeIndex = tabSquareMO_slide.find('a').index(this);
    $(this).closest('.swiper-slide').addClass('on');
    $(this).closest('.swiper-slide').siblings().removeClass('on');
    tabSquareMO.slideTo(activeIndex)
    tabSquarePC.find('li').eq(activeIndex).siblings().removeClass('on');
    tabSquarePC.find('li').eq(activeIndex).addClass('on');
});

tabSquarePC.find('li').on('click', function(e){
    e.preventDefault();
    var activeIndex = $(this).index();
    $(this).addClass('on');
    $(this).siblings().removeClass('on');
    $('.tab_square_mo .swiper-slide').eq(activeIndex).addClass('on');
    $('.tab_square_mo .swiper-slide').eq(activeIndex).siblings().removeClass('on');
    tabSquareMO.slideTo(activeIndex);
});

tabTextBox.find('.tab_label').on('click', function(){
    if (!tabTextBox.hasClass('on')) {
        tabTextBox.addClass('on');
    } else {
        tabTextBox.removeClass('on');
    }
});</script>

<p class="page_text">메가공무원의 선생님 페이지에서 주로 사용되는 요소 양식입니다.<br>
탭 형식으로 구분되며, 해당 탭의 과목에 따른 선생님 목록이 사용자에게 제공됩니다.<br> 
목록을 클릭하면 해당 강사 선생님의 개인페이지로 이동되며 커리큘럼에 관한 더 많은 정보를 제공받을 수 있습니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-javascript act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/teacher/index.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#강사목록</p> </li>
                            <li><p>#강사홈</p> </li>
                            <li><p>#탭</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->




            <div class="page_text_wrap">
                <p class="page_head">홈</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                
<!-- HTML -->
<div class="code-box html tp2"><div class="tec_renew techWrap">
    <div class="tec_top_menu">
        <div class="tec_topmenu_wrap">
            <div class="tec_topmenu_inner">
                <div class="tec_topmenu_swiper swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <a href="<%=url_main%>/teacher/curr/curr.asp?bcode=jeonhangil" title="커리큘럼">커리큘럼</a>
                        </div>
                        <div class="swiper-slide ">
                            <a href="<%=url_main%>/teacher/chr/chrlist.asp?bcode=jeonhangil">개설강좌<em>(39)</em></a>
                            <div class="class_info">
                                <a href="<%=url_main%>/teacher/chr/chrlist.asp?bcode=jeonhangil">
                                    <span>완강:<em>32</em></span>
                                    <span>진행중:<em>4</em></span>
                                </a>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <a href="<%=url_main%>/teacher/notice/notice.asp?bcode=jeonhangil">
                                선생님 새소식
                            </a>
                        </div>
                        <div class="swiper-slide ">
                            <a href="<%=url_main%>/teacher/qna/qna.asp?bcode=jeonhangil">
                                학습 Q&amp;A
                                <img src="<%=img_main%>/common/ic_new.gif" style="">
                            </a>
                        </div>
                        <div class="swiper-slide ">
                            <a href="<%=url_main%>/teacher/pds/pds.asp?bcode=jeonhangil">
                                학습자료실
                            </a>
                        </div>
                        <div class="swiper-slide ">
                            <a href="<%=url_main%>/teacher/cast/cast.asp?bcode=jeonhangil">
                                선생님 캐스트
                            </a>
                        </div>
                        <div class="swiper-slide ">
                            <a href="<%=url_main%>/teacher/review/review.asp?bcode=jeonhangil">
                                수강후기
                                <img src="<%=img_main%>/common/ic_new.gif" style="">
                            </a>
                        </div>
                        <div class="swiper-slide">
                            <a href="javascript:void(0);" class="btn_more_display">기획전</a>
                            <ul class="tec_display_list">
                                <li>
                                    <a href="<%=url_main%>/s/gong/event/2021/08260111/index.asp" target="_blank" title="절대적 1위로 입증된<br>전한길 클래스 ">
                                        <span>-</span>절대적 1위로 입증된<br>전한길 클래스  
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=18772" title="[한국사] 1.0 입문  ">
                                        <span>-</span>[한국사] 1.0 입문   
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=18879" title="[한국사] 2.0 올인원 ">
                                        <span>-</span>[한국사] 2.0 올인원  
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19163" target="_blank" title="[한국사] 3.0 기출문풀">
                                        <span>-</span>[한국사] 3.0 기출문풀 
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19191" title="[한국사] 현대사 특강">
                                        <span>-</span>[한국사] 현대사 특강 
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=18632" target="_blank" title="[한능검] 필노 강해 ">
                                        <span>-</span>[한능검] 필노 강해  
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=18762" target="_blank" title="[한능검] 필노 1/2 압축">
                                        <span>-</span>[한능검] 필노 1/2 압축 
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=18312" target="_blank" title="[한능검] 필노 기적">
                                        <span>-</span>[한능검] 필노 기적 
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="tec_detail_wrap">
        <div class="tec_detail_cont_wrapper">
            <div class="tec_detail_cont_wrap">
                <div class="tec_detail_content">
                    <div class="tec_detail_left" data-aos="fade-right" data-aos-delay="300">
                        <p class="b-desc pcv">
                        <strong>처음부터 끝까지, <br>수험생을 위한 책임과 진심</strong>
                        </p>
                        <p class="b-desc mov"><strong>처음부터 끝까지, <br>수험생을 위한 책임과 진심</strong></p>
                        <p class="s-desc">
                            <a href="<%=url_main%>/teacher/home.asp?bcode=jeonhangil">
                            한국사/한능검&nbsp;<strong>전한길</strong>
                            </a>
                        </p>
                        <div class="btns_wrap">
                            <a class="btn" href="javascript:GongcampusFreePlay('E', 4022, '', '');" title="대표영상">대표영상</a>
                            <a class="btn" href="javascript:void(0);" onclick="window.open('<%=url_main%>/teacher/popup/profile.asp?bCode=jeonhangil', '_tec', 'left=100,top=100,width=500,height=480');" title="프로필">프로필</a>
                        </div>
                        <div class="tec_display_wrap">
                            <div class="tit_area">
                                <p class="tit">선생님 기획전</p>
                            </div>
                            <ul class="tec_display_list">
                                <li>
                                    <a href="<%=url_main%>/s/gong/event/2021/08260111/index.asp" target="_blank" title="절대적 1위로 입증된<br>전한길 클래스 ">
                                        <span>-</span>절대적 1위로 입증된<br>전한길 클래스  
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=18772" title="[한국사] 1.0 입문  ">
                                        <span>-</span>[한국사] 1.0 입문   
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=18879" title="[한국사] 2.0 올인원 ">
                                        <span>-</span>[한국사] 2.0 올인원  
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19163" target="_blank" title="[한국사] 3.0 기출문풀">
                                        <span>-</span>[한국사] 3.0 기출문풀 
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19191" title="[한국사] 현대사 특강">
                                        <span>-</span>[한국사] 현대사 특강 
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=18632" target="_blank" title="[한능검] 필노 강해 ">
                                        <span>-</span>[한능검] 필노 강해  
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=18762" target="_blank" title="[한능검] 필노 1/2 압축">
                                        <span>-</span>[한능검] 필노 1/2 압축 
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=18312" target="_blank" title="[한능검] 필노 기적">
                                        <span>-</span>[한능검] 필노 기적 
                                    </a>
                                </li>
                            </ul>
                        </div>
                        
                    </div>
                    <div class="tec_detail_right" data-aos="fade-left" data-aos-delay="300">
                        <div class="cast_wrap">
                            <div class="tit_area">
                                <p class="tit">선생님 캐스트</p>
                                <a href="<%=url_main%>/teacher/cast/cast.asp?bcode=jeonhangil" class="btn_more">더보기</a>
                            </div>
                            <div class="cast_slider">
                                <div>
                                    <div class="item">
                                        <a href="<%=url_main%>/teacher/cast/cast.asp?bcode=jeonhangil&amp;idx=1328" title="선생님 캐스트 상세보기" tabindex="-1">
                                            <span class="img">
                                                <img src="https://file.megagong.net/board_data/megacast/img/2022061813_01.jpg" alt="6/18 지방직 9급 한국사 해설강의 : '예년 지방직 9급과 비슷한 난이도로 평이했다.'">
                                                <strong style="background:#e02463;">해설강의</strong>
                                            </span>
                                            <span class="info">
                                                <strong class="tit">6/18 지방직 9급 한국사 해설강의 : '예년 지방직 9급과 비슷한 난이도로 평이했다.'</strong>
                                                <strong class="tea">한국사&nbsp;전한길선생님 <span class="date">ㅣ 조회수 2,951</span></strong>
                                            </span>
                                        </a>
                                    </div>
                                    <div class="item">
                                        <a href="<%=url_main%>/teacher/cast/cast.asp?bcode=jeonhangil&amp;idx=1328" title="선생님 캐스트 상세보기" tabindex="-1">
                                            <span class="img">
                                                <img src="https://file.megagong.net/board_data/megacast/img/2022061813_01.jpg" alt="6/18 지방직 9급 한국사 해설강의 : '예년 지방직 9급과 비슷한 난이도로 평이했다.'">
                                                <strong style="background:#e02463;">해설강의</strong>
                                            </span>
                                            <span class="info">
                                                <strong class="tit">6/18 지방직 9급 한국사 해설강의 : '예년 지방직 9급과 비슷한 난이도로 평이했다.'</strong>
                                                <strong class="tea">한국사&nbsp;전한길선생님 <span class="date">ㅣ 조회수 2,951</span></strong>
                                            </span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="review_wrap">
                            <div class="tit_area">
                                <p class="tit"><strong>BEST</strong> 수강후기</p>
                                <a href="<%=url_main%>/teacher/review/review.asp?bcode=jeonhangil" class="btn_more">더보기</a>
                            </div>
                            <div class="best_opinn">
                                <ul>
                                    <li>
                                        <a href="<%=url_main%>/teacher/review/view.asp?bcode=jeonhangil&amp;idx=23057&amp;mv=content_area" title="수강후기 상세보기">
                                            <strong>합격후기를 작성하게 되는 날이 오다니 너무 기쁩니다. ?</strong>
                                            <span>제목 그대로, 합격후기를 작성하게 되는 날이 오다니 너무 기쁩니다.&nbsp;?&nbsp;16년도에도 시험을 준비했다가 떨어진 후에, 수험공부를 접고 그냥 직장 생활을 했었습니다.한번씩 유튜브로 한길샘 쓴소리 접하며, 내적 반가움만 쌓고 있다가 어쩌다보니 다시 한길샘 강의를 듣고 이렇게 수강후기를 쓰는 날이 왔습니다 :)한길샘 필노 반복하고, 빠른 배속으로 강의 회독을 많이 했었습니다!다들 아시겠지만, "필노”하나만 있으면, 한길샘의 모든 강의를 들을 수 있다는 것이 좋았습니다ㅠ&nbsp;??&nbsp;[수험기간: 21년 10월 ~12월 직장생활하며 공부 + 1월부터 본격적으로 공부함!]&nbsp;1) 2.0 올인원 수강[2.0기본서+필노]한국사 능력검정 시험을 준비해본 경험이 있어서, 1.0 입문은 패스하고 바로 2.0올인원으로 시작했습니다!올인원 강좌가 compact버전도 있다해서 그것도 들어봤는데, 중간에 쓴소리가 편집되고 하다보니 끊기는 느낌이 들고...한길샘의 쓴소리를 듣는 맛에 강의 듣는건데, 아쉬워서 그냥 기존 2.0올인원으로 들었습니다. 시간차이도 크게 나지 않아서 괜찮았어요그리고 처음에는 1.3~1.4배속으로 들었습니다.퇴근 후에 듣는거라 너무 빠른 배속으로 하면 오히려 집중력이 떨어질 것 같아서, 제가 들을 수 있는 선에 맞춰서 강의를 들었습니다.2.0 올인원 강좌 들을 때는, 기본서와 필기노트를 병행했고 나중에는 필기노트만 봤습니다!2) 3.0 기출강의 수강[3.0기출+필노]2.0올인원 완강 후에는 바로 기출강의 들었습니다!기출강의 들을 때 좋았던 점이, 문제 풀기 전에 해당 단원에 필요한 개념을 다시 한번 설명해주시는게 복습효과가 있어서 좋았고, 또 필요한 부분에서는 판서를 해주셔서 좋았습니다.강의 시간이 길었지만, 그게 다 저에게 필요한 부분이기 때문에 그거에 대한 불만은 없었어요!그러다 기출강의에서 하는 개념정리만으로는 좀 부족하다 싶으면, 그냥 바로 끄고 필기노트 압축강의나 강해를 빠른 배속으로 들으면서 부족한 부분을 보완했습니다.3) 다양한 특강 활용!!**필노 강해, 압축강의&nbsp;??3.0기출 1회독 완강 후에는, 필노 강해, 압축을 빠른 배속으로 듣고 기출을 혼자서 풀었습니다.문제 바로 밑에 해설이 있어서 그걸로 정리하고, 강의가 필요하다고 판단되는 문제는 예전에 메모해놓은 강의 시간대로 찾아가서 듣고...그렇게 공부했습니다.&nbsp;(그래서 3.0기출 1회독 할 때, 강좌명과 시간대를 메모해놨어요. 나중에 찾는 시간을 줄이려고...)**포켓 암기노트&nbsp;??...책도 작고 안무거워서 좋았어요. 출퇴근할 때, 포켓암기노트 들고 다니면서 전날 들은 강의 복습하고...**기적의 특강&nbsp;??&nbsp;기적의 특강은 진짜 이름그대로 기적의 특강입니다! 국가직시기에 한번듣고 지방직때 2회독으로 들었습니다. 혼자서는 못볼것 같았던 필기노트를 어쨋든 한번은 끝낼 수 있었고, 또 그렇게 봤던 내용이 시험장가서 생각나니 효자강의ㅠㅠ**양치할 때, 밥먹을 때, 그냥 흘려보낼 수 있는 시간에도 강의 듣거나 포켓암기노트보면서 반복 또 반복&nbsp;공부가 잘 되지 않을 때, 한길쌤이 해주시는 쓴소리로, 공직자가 된 나의 모습을 생각하며 버텼던 것 같습니다 !!&nbsp;&nbsp;</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="<%=url_main%>/teacher/review/view.asp?bcode=jeonhangil&amp;idx=21336&amp;mv=content_area" title="수강후기 상세보기">
                                            <strong>2022 국가직 기술직 5개월 단기합격</strong>
                                            <span>메가를 선택한 이유 중 가장 큰 부분이 전한길 선생님의 강의를 수강하고 싶어서였습니다. 저는 집중력이 쉽게 풀어지기 때문에 전한길 선생님의 재미있는 강좌가 잘 맞았습니다. 그리고 전한길 선생님의 강좌 특성상 스토리텔링으로 진행되는데 그러다보니 조금 더 기억에 오래 남고, 사건의 전개발달을 알 수 있어 연도문제가 나올때나 순서 문제가 나올 때 전한길 선생님께서 강의해주신 스토리를 따라가면 쉽게 문제를 풀 수 있었습니다.&nbsp; 그 인물의 업적만 이야기 하는 것이 아니라 왜 그런 선택을 하게 되었는지 얘기해주셔서 제가 미처 보지 못한 사료가 나오더라도 찬찬히 읽어보변 한길샘이 얘기해주신 부분이 있어 인물을 파악하는 것이 수월했습니다. 키워드 위주가 아닌 진짜 역사를 배우는 강의라고 생각합니다.&nbsp;저는 한국사 2.0 올인원 -&gt; 3.0 기출풀이(강의 x) 순으로 풀었습니다. 3.0 기출 책 내에도 문제풀이가 상세히 되어있어 시간이 부족한 저는 강의를 수강하는 것보다 교재 내의 풀이를 보았습니다. 또 강좌를 들을 때 선생님들께서 칠판에 적지 않으셔도 어떤 것을 설명해주실 때 했던 말들(예시나 스토리 등)을 교재에 작성했습니다. 그러면 후에 다시 볼때 선생님이 말씀해주셨던게 기억이 나면서 이해가 더 잘되는 효과가 있었습니다?</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="tec_img_wrap" data-aos="fade"><img src="<%=img_main%>/profphoto/gong/jeonhangil/Prof3.png" alt="한국사/한능겸&nbsp;전한길"></div>
                    <div class="flo_wrap">
                        <div id="floSlider" class="flo_slider">
                            <div class="item">
                                <a href="<%=url_main%>/s/gong/event/2022/10270165/index.asp#event1" target="_blank" class="subno" title="2023 5.0 주제별 최종점검 무료수강신청하기">
                                    <img src="<%=img_main%>/m/2022/1027_han/bnr1.png" alt="2023 5.0 주제별 최종점검 무료수강신청하기">
                                </a>
                            </div>
                            <div class="item">
                                <a href="<%=url_main%>/s/gong/event/2022/10270165/index.asp?scrgo2=event2" target="_blank" class="subno" title="교재 리뷰 이벤트 도서상품권의 주인공은?">
                                    <img src="<%=img_main%>/m/2022/1027_han/bnr2.png" alt="교재 리뷰 이벤트 도서상품권의 주인공은?">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="tea_bnr">
            <!--
            <style>
                @media (max-width: 1470px){
                    .tea_bnr a.mo_hide {display:none;}
                }
            </style>
            -->
            <a href="<%=url_main%>/s/gong/event/2021/02020022/index.asp#eventWrap" target="_blank" title="메가패스 7일 무료체험" class="mo_hide">
                <img src="https://img.megagong.net/m/2022/0927_teacher/tec_banner_renew_01.jpg" alt="메가패스 7일 무료체험">
                전 직렬 메가패스 <strong class="sobang_impor">NEW <br>7일 무료체험</strong>
            </a>
            <a href="<%=url_main%>/s/gong/event/2022/06020063/index.asp#eventWrap" target="_blank" title="더 강력해진 합격 로드맵! 2023 커리큘럼">
                <img src="https://img.megagong.net/m/2022/0927_teacher/tec_banner_renew_02.jpg" alt="더 강력해진 합격 로드맵! 2023 커리큘럼">
                더 강력해진 <strong class="sobang_impor">2023 커리큘럼</strong>
            </a>
            <a href="<%=url_main%>/s/gong/event/2020/10280102/index.asp#eventWrap" target="_blank">
                <img src="https://img.megagong.net/m/2022/1027_new/tec_banner_army.png" alt="11~12월 개강 신규 강좌">2023 대비<strong class="sobang_impor">11~12월 신규 강좌</strong>
            </a>
            
            <a href="<%=url_main%>/event/2022/04200007/index.asp#eventWrap" target="_blank" style="border-left: 1px solid #fff;" title="전한길 한능검 APP">
                <img src="https://img.megagong.net/m/2022/0420_branding/bnr_5.jpg" alt="전한길 한능검 APP">전한길 <strong>한능검 APP</strong>
            </a>
        </div>
    </div>
</div></div>

<script>var tecTopmenu = undefined;
function initTopmenuSwiper() {
    if ($(window).width() <= 768 && tecTopmenu === undefined)  {
        tecTopmenu = new Swiper('.tec_topmenu_swiper', {
            slidesPerView: 'auto',
            observer: true,
            observeParents: true,
            observeSlideChildren: true,
            on: {
                init: function(){
                    $('.tec_topmenu_wrap').addClass('active');
                }
            },
        });
        var tecTopmenu_index = $('.tec_topmenu_swiper .swiper-slide.on').index();
        if (tecTopmenu_index) {
            tecTopmenu.slideTo(tecTopmenu_index, 0)
        }
    } else if ($(window).width() > 768 && tecTopmenu != undefined) {
        tecTopmenu.destroy();
        tecTopmenu = undefined;
    }
}

$(window).on('load resize', function(){
    initTopmenuSwiper();    
});

var cast_slider_cnt = $(".cast_wrap .cast_slider > div .item").length;
if (cast_slider_cnt > 1) {
    var cast_slider = $('.cast_wrap .cast_slider > div').slick({
        infinite: true,
        speed: 200,
        autoplay: false,
        slidesToShow: 1,
        slidesToScroll: 1,
        dots: true,
        arrows: true,
        easing: 'easeOutElastic',
    });
}

$('#floSlider').slick({
    dots: true,
    arrows: false,
    speed: 0,
    autoplaySpeed: 3000,
    autoplay: true,
    cssEase: 'linear',
});
</script>


<p class="page_text">메가공무원의 강사홈 페이지에서 사용되는 기능입니다.<br> 
강사 선생님의 개인 프로필 및 관련 영상, 수강후기 등의 정보를 확인할 수 있습니다.<br> 
또한 관련 이벤트 배너가 하단부에 표기되어 다양한 이벤트 정보를 제공받을 수 있습니다.<br> 
이벤트 배너는 가로 280px을 기본으로 하며 세로는 최소 100px에서 최대 114px를 넘지 않도록 합니다.</p>

<div class="bnrb"><img src="/images/bnrg.png"  alt="강사홈 배너 가이드"></div>

<p class="page_text">세로 사이즈 114px의 이벤트 배너를 제작할 경우, 위의 가이드라인을 준수해야 합니다.</p>


<!-- Code View -->
<pre class="language-html html act direct"><code><div class="tec_renew techWrap">
    <div class="tec_top_menu">
        <div class="tec_topmenu_wrap">
            <div class="tec_topmenu_inner">
                <div class="tec_topmenu_swiper swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <a href="<%=url_main%>/teacher/curr/curr.asp?bcode=jeonhangil" title="커리큘럼">커리큘럼</a>
                        </div>
                        <div class="swiper-slide ">
                            <a href="<%=url_main%>/teacher/chr/chrlist.asp?bcode=jeonhangil">개설강좌<em>(39)</em></a>
                            <div class="class_info">
                                <a href="<%=url_main%>/teacher/chr/chrlist.asp?bcode=jeonhangil">
                                    <span>완강:<em>32</em></span>
                                    <span>진행중:<em>4</em></span>
                                </a>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <a href="<%=url_main%>/teacher/notice/notice.asp?bcode=jeonhangil">
                                선생님 새소식
                            </a>
                        </div>
                        <div class="swiper-slide ">
                            <a href="<%=url_main%>/teacher/qna/qna.asp?bcode=jeonhangil">
                                학습 Q&amp;A
                                <img src="<%=img_main%>/common/ic_new.gif" style="">
                            </a>
                        </div>
                        <div class="swiper-slide ">
                            <a href="<%=url_main%>/teacher/pds/pds.asp?bcode=jeonhangil">
                                학습자료실
                            </a>
                        </div>
                        <div class="swiper-slide ">
                            <a href="<%=url_main%>/teacher/cast/cast.asp?bcode=jeonhangil">
                                선생님 캐스트
                            </a>
                        </div>
                        <div class="swiper-slide ">
                            <a href="<%=url_main%>/teacher/review/review.asp?bcode=jeonhangil">
                                수강후기
                                <img src="<%=img_main%>/common/ic_new.gif" style="">
                            </a>
                        </div>
                        <div class="swiper-slide">
                            <a href="javascript:void(0);" class="btn_more_display">기획전</a>
                            <ul class="tec_display_list">
                                <li>
                                    <a href="<%=url_main%>/s/gong/event/2021/08260111/index.asp" target="_blank" title="절대적 1위로 입증된<br>전한길 클래스 ">
                                        <span>-</span>절대적 1위로 입증된<br>전한길 클래스  
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=18772" title="[한국사] 1.0 입문  ">
                                        <span>-</span>[한국사] 1.0 입문   
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=18879" title="[한국사] 2.0 올인원 ">
                                        <span>-</span>[한국사] 2.0 올인원  
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19163" target="_blank" title="[한국사] 3.0 기출문풀">
                                        <span>-</span>[한국사] 3.0 기출문풀 
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19191" title="[한국사] 현대사 특강">
                                        <span>-</span>[한국사] 현대사 특강 
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=18632" target="_blank" title="[한능검] 필노 강해 ">
                                        <span>-</span>[한능검] 필노 강해  
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=18762" target="_blank" title="[한능검] 필노 1/2 압축">
                                        <span>-</span>[한능검] 필노 1/2 압축 
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=18312" target="_blank" title="[한능검] 필노 기적">
                                        <span>-</span>[한능검] 필노 기적 
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="tec_detail_wrap">
        <div class="tec_detail_cont_wrapper">
            <div class="tec_detail_cont_wrap">
                <div class="tec_detail_content">
                    <div class="tec_detail_left" data-aos="fade-right" data-aos-delay="300">
                        <p class="b-desc pcv">
                        <strong>처음부터 끝까지, <br>수험생을 위한 책임과 진심</strong>
                        </p>
                        <p class="b-desc mov"><strong>처음부터 끝까지, <br>수험생을 위한 책임과 진심</strong></p>
                        <p class="s-desc">
                            <a href="<%=url_main%>/teacher/home.asp?bcode=jeonhangil">
                            한국사/한능검&nbsp;<strong>전한길</strong>
                            </a>
                        </p>
                        <div class="btns_wrap">
                            <a class="btn" href="javascript:GongcampusFreePlay('E', 4022, '', '');" title="대표영상">대표영상</a>
                            <a class="btn" href="javascript:void(0);" onclick="window.open('<%=url_main%>/teacher/popup/profile.asp?bCode=jeonhangil', '_tec', 'left=100,top=100,width=500,height=480');" title="프로필">프로필</a>
                        </div>
                        <div class="tec_display_wrap">
                            <div class="tit_area">
                                <p class="tit">선생님 기획전</p>
                            </div>
                            <ul class="tec_display_list">
                                <li>
                                    <a href="<%=url_main%>/s/gong/event/2021/08260111/index.asp" target="_blank" title="절대적 1위로 입증된<br>전한길 클래스 ">
                                        <span>-</span>절대적 1위로 입증된<br>전한길 클래스  
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=18772" title="[한국사] 1.0 입문  ">
                                        <span>-</span>[한국사] 1.0 입문   
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=18879" title="[한국사] 2.0 올인원 ">
                                        <span>-</span>[한국사] 2.0 올인원  
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19163" target="_blank" title="[한국사] 3.0 기출문풀">
                                        <span>-</span>[한국사] 3.0 기출문풀 
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19191" title="[한국사] 현대사 특강">
                                        <span>-</span>[한국사] 현대사 특강 
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=18632" target="_blank" title="[한능검] 필노 강해 ">
                                        <span>-</span>[한능검] 필노 강해  
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=18762" target="_blank" title="[한능검] 필노 1/2 압축">
                                        <span>-</span>[한능검] 필노 1/2 압축 
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=18312" target="_blank" title="[한능검] 필노 기적">
                                        <span>-</span>[한능검] 필노 기적 
                                    </a>
                                </li>
                            </ul>
                        </div>
                        
                    </div>
                    <div class="tec_detail_right" data-aos="fade-left" data-aos-delay="300">
                        <div class="cast_wrap">
                            <div class="tit_area">
                                <p class="tit">선생님 캐스트</p>
                                <a href="<%=url_main%>/teacher/cast/cast.asp?bcode=jeonhangil" class="btn_more">더보기</a>
                            </div>
                            <div class="cast_slider">
                                <div>
                                    <div class="item">
                                        <a href="<%=url_main%>/teacher/cast/cast.asp?bcode=jeonhangil&amp;idx=1328" title="선생님 캐스트 상세보기" tabindex="-1">
                                            <span class="img">
                                                <img src="https://file.megagong.net/board_data/megacast/img/2022061813_01.jpg" alt="6/18 지방직 9급 한국사 해설강의 : '예년 지방직 9급과 비슷한 난이도로 평이했다.'">
                                                <strong style="background:#e02463;">해설강의</strong>
                                            </span>
                                            <span class="info">
                                                <strong class="tit">6/18 지방직 9급 한국사 해설강의 : '예년 지방직 9급과 비슷한 난이도로 평이했다.'</strong>
                                                <strong class="tea">한국사&nbsp;전한길선생님 <span class="date">ㅣ 조회수 2,951</span></strong>
                                            </span>
                                        </a>
                                    </div>
                                    <div class="item">
                                        <a href="<%=url_main%>/teacher/cast/cast.asp?bcode=jeonhangil&amp;idx=1328" title="선생님 캐스트 상세보기" tabindex="-1">
                                            <span class="img">
                                                <img src="https://file.megagong.net/board_data/megacast/img/2022061813_01.jpg" alt="6/18 지방직 9급 한국사 해설강의 : '예년 지방직 9급과 비슷한 난이도로 평이했다.'">
                                                <strong style="background:#e02463;">해설강의</strong>
                                            </span>
                                            <span class="info">
                                                <strong class="tit">6/18 지방직 9급 한국사 해설강의 : '예년 지방직 9급과 비슷한 난이도로 평이했다.'</strong>
                                                <strong class="tea">한국사&nbsp;전한길선생님 <span class="date">ㅣ 조회수 2,951</span></strong>
                                            </span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="review_wrap">
                            <div class="tit_area">
                                <p class="tit"><strong>BEST</strong> 수강후기</p>
                                <a href="<%=url_main%>/teacher/review/review.asp?bcode=jeonhangil" class="btn_more">더보기</a>
                            </div>
                            <div class="best_opinn">
                                <ul>
                                    <li>
                                        <a href="<%=url_main%>/teacher/review/view.asp?bcode=jeonhangil&amp;idx=23057&amp;mv=content_area" title="수강후기 상세보기">
                                            <strong>합격후기를 작성하게 되는 날이 오다니 너무 기쁩니다. ?</strong>
                                            <span>제목 그대로, 합격후기를 작성하게 되는 날이 오다니 너무 기쁩니다.&nbsp;?&nbsp;16년도에도 시험을 준비했다가 떨어진 후에, 수험공부를 접고 그냥 직장 생활을 했었습니다.한번씩 유튜브로 한길샘 쓴소리 접하며, 내적 반가움만 쌓고 있다가 어쩌다보니 다시 한길샘 강의를 듣고 이렇게 수강후기를 쓰는 날이 왔습니다 :)한길샘 필노 반복하고, 빠른 배속으로 강의 회독을 많이 했었습니다!다들 아시겠지만, "필노”하나만 있으면, 한길샘의 모든 강의를 들을 수 있다는 것이 좋았습니다ㅠ&nbsp;??&nbsp;[수험기간: 21년 10월 ~12월 직장생활하며 공부 + 1월부터 본격적으로 공부함!]&nbsp;1) 2.0 올인원 수강[2.0기본서+필노]한국사 능력검정 시험을 준비해본 경험이 있어서, 1.0 입문은 패스하고 바로 2.0올인원으로 시작했습니다!올인원 강좌가 compact버전도 있다해서 그것도 들어봤는데, 중간에 쓴소리가 편집되고 하다보니 끊기는 느낌이 들고...한길샘의 쓴소리를 듣는 맛에 강의 듣는건데, 아쉬워서 그냥 기존 2.0올인원으로 들었습니다. 시간차이도 크게 나지 않아서 괜찮았어요그리고 처음에는 1.3~1.4배속으로 들었습니다.퇴근 후에 듣는거라 너무 빠른 배속으로 하면 오히려 집중력이 떨어질 것 같아서, 제가 들을 수 있는 선에 맞춰서 강의를 들었습니다.2.0 올인원 강좌 들을 때는, 기본서와 필기노트를 병행했고 나중에는 필기노트만 봤습니다!2) 3.0 기출강의 수강[3.0기출+필노]2.0올인원 완강 후에는 바로 기출강의 들었습니다!기출강의 들을 때 좋았던 점이, 문제 풀기 전에 해당 단원에 필요한 개념을 다시 한번 설명해주시는게 복습효과가 있어서 좋았고, 또 필요한 부분에서는 판서를 해주셔서 좋았습니다.강의 시간이 길었지만, 그게 다 저에게 필요한 부분이기 때문에 그거에 대한 불만은 없었어요!그러다 기출강의에서 하는 개념정리만으로는 좀 부족하다 싶으면, 그냥 바로 끄고 필기노트 압축강의나 강해를 빠른 배속으로 들으면서 부족한 부분을 보완했습니다.3) 다양한 특강 활용!!**필노 강해, 압축강의&nbsp;??3.0기출 1회독 완강 후에는, 필노 강해, 압축을 빠른 배속으로 듣고 기출을 혼자서 풀었습니다.문제 바로 밑에 해설이 있어서 그걸로 정리하고, 강의가 필요하다고 판단되는 문제는 예전에 메모해놓은 강의 시간대로 찾아가서 듣고...그렇게 공부했습니다.&nbsp;(그래서 3.0기출 1회독 할 때, 강좌명과 시간대를 메모해놨어요. 나중에 찾는 시간을 줄이려고...)**포켓 암기노트&nbsp;??...책도 작고 안무거워서 좋았어요. 출퇴근할 때, 포켓암기노트 들고 다니면서 전날 들은 강의 복습하고...**기적의 특강&nbsp;??&nbsp;기적의 특강은 진짜 이름그대로 기적의 특강입니다! 국가직시기에 한번듣고 지방직때 2회독으로 들었습니다. 혼자서는 못볼것 같았던 필기노트를 어쨋든 한번은 끝낼 수 있었고, 또 그렇게 봤던 내용이 시험장가서 생각나니 효자강의ㅠㅠ**양치할 때, 밥먹을 때, 그냥 흘려보낼 수 있는 시간에도 강의 듣거나 포켓암기노트보면서 반복 또 반복&nbsp;공부가 잘 되지 않을 때, 한길쌤이 해주시는 쓴소리로, 공직자가 된 나의 모습을 생각하며 버텼던 것 같습니다 !!&nbsp;&nbsp;</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="<%=url_main%>/teacher/review/view.asp?bcode=jeonhangil&amp;idx=21336&amp;mv=content_area" title="수강후기 상세보기">
                                            <strong>2022 국가직 기술직 5개월 단기합격</strong>
                                            <span>메가를 선택한 이유 중 가장 큰 부분이 전한길 선생님의 강의를 수강하고 싶어서였습니다. 저는 집중력이 쉽게 풀어지기 때문에 전한길 선생님의 재미있는 강좌가 잘 맞았습니다. 그리고 전한길 선생님의 강좌 특성상 스토리텔링으로 진행되는데 그러다보니 조금 더 기억에 오래 남고, 사건의 전개발달을 알 수 있어 연도문제가 나올때나 순서 문제가 나올 때 전한길 선생님께서 강의해주신 스토리를 따라가면 쉽게 문제를 풀 수 있었습니다.&nbsp; 그 인물의 업적만 이야기 하는 것이 아니라 왜 그런 선택을 하게 되었는지 얘기해주셔서 제가 미처 보지 못한 사료가 나오더라도 찬찬히 읽어보변 한길샘이 얘기해주신 부분이 있어 인물을 파악하는 것이 수월했습니다. 키워드 위주가 아닌 진짜 역사를 배우는 강의라고 생각합니다.&nbsp;저는 한국사 2.0 올인원 -&gt; 3.0 기출풀이(강의 x) 순으로 풀었습니다. 3.0 기출 책 내에도 문제풀이가 상세히 되어있어 시간이 부족한 저는 강의를 수강하는 것보다 교재 내의 풀이를 보았습니다. 또 강좌를 들을 때 선생님들께서 칠판에 적지 않으셔도 어떤 것을 설명해주실 때 했던 말들(예시나 스토리 등)을 교재에 작성했습니다. 그러면 후에 다시 볼때 선생님이 말씀해주셨던게 기억이 나면서 이해가 더 잘되는 효과가 있었습니다?</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="tec_img_wrap" data-aos="fade"><img src="<%=img_main%>/profphoto/gong/jeonhangil/Prof3.png" alt="한국사/한능겸&nbsp;전한길"></div>
                    <div class="flo_wrap">
                        <div id="floSlider" class="flo_slider">
                            <div class="item">
                                <a href="<%=url_main%>/s/gong/event/2022/10270165/index.asp#event1" target="_blank" class="subno" title="2023 5.0 주제별 최종점검 무료수강신청하기">
                                    <img src="<%=img_main%>/m/2022/1027_han/bnr1.png" alt="2023 5.0 주제별 최종점검 무료수강신청하기">
                                </a>
                            </div>
                            <div class="item">
                                <a href="<%=url_main%>/s/gong/event/2022/10270165/index.asp?scrgo2=event2" target="_blank" class="subno" title="교재 리뷰 이벤트 도서상품권의 주인공은?">
                                    <img src="<%=img_main%>/m/2022/1027_han/bnr2.png" alt="교재 리뷰 이벤트 도서상품권의 주인공은?">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="tea_bnr">
            <!--
            <style>
                @media (max-width: 1470px){
                    .tea_bnr a.mo_hide {display:none;}
                }
            </style>
            -->
            <a href="<%=url_main%>/s/gong/event/2021/02020022/index.asp#eventWrap" target="_blank" title="메가패스 7일 무료체험" class="mo_hide">
                <img src="https://img.megagong.net/m/2022/0927_teacher/tec_banner_renew_01.jpg" alt="메가패스 7일 무료체험">
                전 직렬 메가패스 <strong class="sobang_impor">NEW <br>7일 무료체험</strong>
            </a>
            <a href="<%=url_main%>/s/gong/event/2022/06020063/index.asp#eventWrap" target="_blank" title="더 강력해진 합격 로드맵! 2023 커리큘럼">
                <img src="https://img.megagong.net/m/2022/0927_teacher/tec_banner_renew_02.jpg" alt="더 강력해진 합격 로드맵! 2023 커리큘럼">
                더 강력해진 <strong class="sobang_impor">2023 커리큘럼</strong>
            </a>
            <a href="<%=url_main%>/s/gong/event/2020/10280102/index.asp#eventWrap" target="_blank">
                <img src="https://img.megagong.net/m/2022/1027_new/tec_banner_army.png" alt="11~12월 개강 신규 강좌">2023 대비<strong class="sobang_impor">11~12월 신규 강좌</strong>
            </a>
            
            <a href="<%=url_main%>/event/2022/04200007/index.asp#eventWrap" target="_blank" style="border-left: 1px solid #fff;" title="전한길 한능검 APP">
                <img src="https://img.megagong.net/m/2022/0420_branding/bnr_5.jpg" alt="전한길 한능검 APP">전한길 <strong>한능검 APP</strong>
            </a>
        </div>
    </div>
</div></code></pre>
<pre class="language-javascript act direct"><code>var tecTopmenu = undefined;
function initTopmenuSwiper() {
    if ($(window).width() <= 768 && tecTopmenu === undefined)  {
        tecTopmenu = new Swiper('.tec_topmenu_swiper', {
            slidesPerView: 'auto',
            observer: true,
            observeParents: true,
            observeSlideChildren: true,
            on: {
                init: function(){
                    $('.tec_topmenu_wrap').addClass('active');
                }
            },
        });
        var tecTopmenu_index = $('.tec_topmenu_swiper .swiper-slide.on').index();
        if (tecTopmenu_index) {
            tecTopmenu.slideTo(tecTopmenu_index, 0)
        }
    } else if ($(window).width() > 768 && tecTopmenu != undefined) {
        tecTopmenu.destroy();
        tecTopmenu = undefined;
    }
}

$(window).on('load resize', function(){
    initTopmenuSwiper();    
});

var cast_slider_cnt = $(".cast_wrap .cast_slider > div .item").length;
if (cast_slider_cnt > 1) {
    var cast_slider = $('.cast_wrap .cast_slider > div').slick({
        infinite: true,
        speed: 200,
        autoplay: false,
        slidesToShow: 1,
        slidesToScroll: 1,
        dots: true,
        arrows: true,
        easing: 'easeOutElastic',
    });
}

$('#floSlider').slick({
    dots: true,
    arrows: false,
    speed: 0,
    autoplaySpeed: 3000,
    autoplay: true,
    cssEase: 'linear',
});</code></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/teacher/home.asp?bcode=jeonhangil" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#강사홈</p> </li>
                            <li><p>#프로필</p> </li>
                            <li><p>#개인홈</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->




            <div class="page_text_wrap">
                <p class="page_head">홈 배너</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                
<!-- HTML -->
<div class="code-box html tp2"><div class="tec_renew tech_content">
    <div class="tcbanner_zone new">
        <div class="tcbannerZin">
            <div class="tcbanner_slider">
                <div class="item bn_txt" style="width: 100%; display: inline-block;">
                    <a href="<%=url_main%>/s/gong/event/2021/08260111/index.asp" target="_blank" style="background-color:#0c998d;" tabindex="0">
                        <span class="sub_tit">
                            <span>필기노트 연계 학습으로 개념+기출 동시완성!</span>
                        </span>
                        <strong class="tit">[한국사] 3.0 기출 문제풀이</strong>
                        <span class="point"><span>최신경향<br>완벽반영</span></span>
                    </a>
                </div>
                <div class="item bn_txt" style="width: 100%; display: inline-block;">
                    <a href="<%=url_main%>/event/2022/04200007/index.asp#eventWrap" target="_blank" style="background-color:#72427c;" tabindex="0">
                        <span class="sub_tit">
                            <span>한길샘의 한능검 최적화 강의! 강해/압축/기적 </span>
                        </span>
                        <strong class="tit">[한능검] 전한길 필기노트 강좌 </strong>
                        <span class="point"><span>무료공개</span></span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div></div>

<script>var bnnr_slider_cnt = $(".tcbanner_slider .item").length;
if (bnnr_slider_cnt > 1) {
    var tcbanner_slider = $('.tcbanner_slider').slick({
        infinite: true,
        speed: 300,
        autoplaySpeed:5000,
        autoplay: true,
        slidesToShow: 2,
        slidesToScroll: 1,
        dots: false,
        arrows: true,
        easing: 'easeOutElastic',
        prevArrow: $('.tcbannerZin .controlBox .slick-prev'),
        nextArrow: $('.tcbannerZin .controlBox .slick-next'),
        responsive: [
            {
                breakpoint: 1201,
                settings: {
                    dots: true,
                }
            },
            {
                breakpoint: 993,
                settings: {
                slidesToShow: 1,
                    dots: true,
                }
            }
            ]
    });
} else {
    $("#th_controlBox").hide();
}
</script>

<p class="page_text">메가공무원의 강사홈 페이지에서 사용되는 배너 기능입니다.<br>
주로 해당 강사 선생님의 기획전 페이지 혹은 강좌 페이지로 연결되며 일정 시간마다 자동 롤링됩니다.</p>

<!-- Code View -->
<pre class="language-html html act direct"><code><div class="tec_renew tech_content">
    <div class="tcbanner_zone new">
        <div class="tcbannerZin">
            <div class="tcbanner_slider">
                <div class="item bn_txt" style="width: 100%; display: inline-block;">
                    <a href="<%=url_main%>/s/gong/event/2021/08260111/index.asp" target="_blank" style="background-color:#0c998d;" tabindex="0">
                        <span class="sub_tit">
                            <span>필기노트 연계 학습으로 개념+기출 동시완성!</span>
                        </span>
                        <strong class="tit">[한국사] 3.0 기출 문제풀이</strong>
                        <span class="point"><span>최신경향<br>완벽반영</span></span>
                    </a>
                </div>
                <div class="item bn_txt" style="width: 100%; display: inline-block;">
                    <a href="<%=url_main%>/event/2022/04200007/index.asp#eventWrap" target="_blank" style="background-color:#72427c;" tabindex="0">
                        <span class="sub_tit">
                            <span>한길샘의 한능검 최적화 강의! 강해/압축/기적 </span>
                        </span>
                        <strong class="tit">[한능검] 전한길 필기노트 강좌 </strong>
                        <span class="point"><span>무료공개</span></span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div></code></pre>
<pre class="language-javascript act direct"><code>var bnnr_slider_cnt = $(".tcbanner_slider .item").length;
if (bnnr_slider_cnt > 1) {
    var tcbanner_slider = $('.tcbanner_slider').slick({
        infinite: true,
        speed: 300,
        autoplaySpeed:5000,
        autoplay: true,
        slidesToShow: 2,
        slidesToScroll: 1,
        dots: false,
        arrows: true,
        easing: 'easeOutElastic',
        prevArrow: $('.tcbannerZin .controlBox .slick-prev'),
        nextArrow: $('.tcbannerZin .controlBox .slick-next'),
        responsive: [
            {
                breakpoint: 1201,
                settings: {
                    dots: true,
                }
            },
            {
                breakpoint: 993,
                settings: {
                slidesToShow: 1,
                    dots: true,
                }
            }
            ]
    });
} else {
    $("#th_controlBox").hide();
}</code></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/teacher/home.asp?bcode=jeonhangil" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#강사홈</p> </li>
                            <li><p>#배너</p> </li>
                            <li><p>#링크연결</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->



            <div class="page_text_wrap">
                <p class="page_head">새소식, 수강후기</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                
<!-- HTML -->
<div class="code-box html tp2"><div class="tec_renew tech_content">
    <div class="techBoard">
        <div class="board_wrap notice dotin">
            <div class="inner">
                <h3>선생님 새소식<a href="<%=url_main%>/teacher/notice/notice.asp?bcode=jeonhangil" class="btn_more">더보기</a></h3>
                <ul class="board_list">
                    <li><a href="<%=url_main%>/teacher/notice/notice.asp?bcode=jeonhangil&amp;idx=6098" style="display:inline-block;vertical-align:middle"><img src="https://img.megagong.net/s/common/main_important_icon.gif" alt="필독" class="importantIcon"> 제61회 한능검 응시/가답안/적중공개</a><span class="date">2022.10.24</span></li>
                    <li><a href="<%=url_main%>/teacher/notice/notice.asp?bcode=jeonhangil&amp;idx=6096" style="display:inline-block;vertical-align:middle"><img src="https://img.megagong.net/s/common/main_important_icon.gif" alt="필독" class="importantIcon"> 한길샘입니다. 제 61회 한능검 D-1 LIVE특강 곧 시작합니다.</a><em class="count">(1)</em><span class="date">2022.10.21</span></li>
                    <li><a href="<%=url_main%>/teacher/notice/notice.asp?bcode=jeonhangil&amp;idx=6076" style="display:inline-block;vertical-align:middle"><img src="https://img.megagong.net/s/common/main_important_icon.gif" alt="필독" class="importantIcon"> ?10/21(금) 저녁 7시 LIVE ?61회 한능검 대비 한길 샘의 막판 특강!</a><em class="count">(3)</em><span class="date">2022.10.17</span></li>
                    <li><a href="<%=url_main%>/teacher/notice/notice.asp?bcode=jeonhangil&amp;idx=6058" style="display:inline-block;vertical-align:middle"><img src="https://img.megagong.net/s/common/main_important_icon.gif" alt="필독" class="importantIcon"> 2023 대비 11-12월 개강 및 연간커리큘럼</a><span class="date">2022.10.14</span></li>
                    <li><a href="<%=url_main%>/teacher/notice/notice.asp?bcode=jeonhangil&amp;idx=6050" style="display:inline-block;vertical-align:middle"><img src="https://img.megagong.net/s/common/main_important_icon.gif" alt="필독" class="importantIcon"> "제 2의 필노"를 꿈꾸는 혁신 새교재 출시</a><span class="date">2022.10.12</span></li>
                </ul>
            </div>
        </div>
        <div class="board_wrap opinn">
            <div class="inner">
                <h3>수강후기
                    <a href="<%=url_main%>/teacher/review/review.asp?bcode=jeonhangil" class="btn_more">더보기</a>
                </h3>
                <ul class="board_list">
                    <li><a href="<%=url_main%>/teacher/review/view.asp?bcode=jeonhangil&amp;idx=23715&amp;mv=content_area">한능검도 역시 전한길 <img src="https://img.megagong.net/common/ic_new.gif"></a><span class="writer">강*리</span></li> <!--마스킹된 이름 -->
                    <li><a href="<%=url_main%>/teacher/review/view.asp?bcode=jeonhangil&amp;idx=23685&amp;mv=content_area">한능검도 전한길 T 좋습니다.</a><span class="writer">박*준</span></li> <!--마스킹된 이름 -->
                    <li><a href="<%=url_main%>/teacher/review/view.asp?bcode=jeonhangil&amp;idx=23684&amp;mv=content_area">공무원 한국사 1위가 이제는 공무원 한능검 에서도 합격의 한길을 제시한다.!!</a><span class="writer">김*숙</span></li> <!--마스킹된 이름 -->
                    <li><a href="<%=url_main%>/teacher/review/view.asp?bcode=jeonhangil&amp;idx=23675&amp;mv=content_area">선생님만 믿고 따르면 목표 달성 가능</a><span class="writer">오*렬</span></li> <!--마스킹된 이름 -->
                    <li><a href="<%=url_main%>/teacher/review/view.asp?bcode=jeonhangil&amp;idx=23671&amp;mv=content_area">필기노트 강해만 듣고 1급 컷 통과!!!</a><span class="writer">박*안</span></li> <!--마스킹된 이름 -->
                </ul>
            </div>
        </div>
    </div>
</div></div>

<p class="page_text">메가공무원의 강사홈 페이지에서 사용되는 리스트 기능입니다.<br> 
강사 선생님이 작성한 소식 내용이나 수강생들이 작성한 수강후기들을 확인할 수 있습니다.<br><br> 강사 선생님이 작성한 새소식의 경우, 게시글의 종류에 따라 필독, 이벤트, 공지 등으로 나뉘어 아이콘이 표기됩니다.<br> 또한 최근에 작성된 새소식 혹은 수강후기의 경우 정해진 기간동안 New 아이콘이 붙게 됩니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/teacher/home.asp?bcode=jeonhangil" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#강사홈</p> </li>
                            <li><p>#리스트</p> </li>
                            <li><p>#새소식</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->

            <div class="page_text_wrap">
                <p class="page_head">커리큘럼</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                
<!-- HTML -->
<div class="code-box html tp2"><div class="tec_renew tech_content">
    <div class="homeConmain">
        <div id="curr" class="tccont curr_zone">
            <div id="t_curr" class="teaCurr">
                <div class="char_zone">
                    <img src="<%=img_main%>/teacher/curr/gong/shin242_char_0519.jpg" alt="강사컨텐츠">
                </div>
                <p class="curr_tit">대한민국 수험생 100만명의 선택!*<br>110% 이론+실전 완성<br><strong>신용한 행정학&amp;지방자치론 합격 가이드</strong></p>
                <p class="curr_Stit">
                    <span>100% 합격을 보장하는 정규 커리큘럼</span>
                    <a href="javascript:;" onclick="GongcampusFreePlay('E', 3638, '', '');return flase;" class="curr_vdo_btn" title="영상 커리큘럼">영상 커리큘럼</a>
                </p>
                <div class="tbl_wrp essential subcurr2 pcView">
                    <table class="tbl" title="강사 커리큘럼">
                        <colgroup>
                            <col width="20%">
                            <col width="16%">
                            <col width="16%">
                            <col width="16%">
                            <col width="16%">
                            <col width="16%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>학습단계</th>
                                <th colspan="4">9급 공무원</th>
                                <th>7급 공무원</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th>빈틈없는<br>이론완성<br>[90점 완성]</th>
                                <td colspan="2">신용한 행정학 STEP1.<br>이론완성: All-in-one</td>
                                <td>신용한 행정학 STEP2.<br>기출문풀: 10일 2000제<br>+핵심OX 500제</td>
                                <td>신용한 행정학 STEP3.<br>압축정리:합격의 24시간</td>
                                <td>신용한 7급<br>지방자치론<br>All-in-one</td>
                            </tr>
                            <tr>
                                <th>완벽을 만드는<br>실전연습<br>[100점 완성]</th>
                                <td><i class="focusIcon blue">국가직 집중ON</i><br>신용한 행정학 STEP4.<br>모의고사:(1)약점공략</td>
                                <td><i class="focusIcon blue">국가직 집중ON</i><br>신용한 행정학 STEP4.<br>모의고사:(2)국가직 전범위</td>
                                <td colspan="2"><i class="focusIcon">지방직 집중ON</i><br>신용한 행정학 STEP5.<br>모의고사:지방직 전범위</td>
                                <td>신용한 7급<br>시험 직전 모의고사</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="tbl_wrp essential subcurr2 mobileView">
                    <table class="tbl" title="강사 커리큘럼">
                        <colgroup>
                            <col width="25%">
                            <col width="37.5%">
                            <col width="37.5%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>학습단계</th>
                                <th>빈틈없는 이론완성<br>[90점 완성]</th>
                                <th>완벽을 만드는 실전 연습<br>[100점 완성]</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th rowspan="4">9급 공무원</th>
                                <td rowspan="2">신용한 행정학 STEP1.<br>이론완성: All-in-one</td>
                                <td><i class="focusIcon blue">국가직 집중ON</i><br>신용한 행정학 STEP4.<br>모의고사:(1)약점공략</td>
                            </tr>
                            <tr>
                                <td><i class="focusIcon blue">국가직 집중ON</i><br>신용한 행정학 STEP4.<br>모의고사:(2)국가직 전범위</td>
                            </tr>
                            <tr>
                                <td>신용한 행정학 STEP2.<br>기출문풀: 10일 2000제<br>+핵심OX 500제</td>
                                <td rowspan="2"><i class="focusIcon">지방직 집중ON</i><br>신용한 행정학 STEP5.<br>모의고사:지방직 전범위</td>
                            </tr>
                            <tr>
                                <td>신용한 행정학 STEP3.<br>압축정리:합격의 24시간</td>
                            </tr>
                            <tr>
                                <th>7급 공무원</th>
                                <td>신용한 7급<br>지방자치론<br>All-in-one</td>
                                <td>신용한 7급<br>시험 직전 모의고사</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <p class="curr_Stit"><span>110% 합격으로 마음을 안심시키는 특강</span></p>
                <div class="tbl_wrp essential subcurr2 pcView" style="margin-bottom:0;">
                    <table class="tbl" title="강사 커리큘럼">
                        <colgroup>
                            <col width="20%">
                            <col width="13.3333%">
                            <col width="13.3333%">
                            <col width="13.3333%">
                            <col width="13.3333%">
                            <col width="13.3333%">
                            <col width="13.3333%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>빈출주제</th>
                                <th colspan="6">9/7급 공무원</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th>법령특강</th>
                                <td colspan="3">신용한 행정학 STEP1.<br>시험빈출&amp;개정법령 특강</td>
                                <td colspan="3">신용한 행정학 STEP2.<br>시험 직전 최신 개정법령 특강</td>
                            </tr>
                            <tr>
                                <th>기출특강</th>
                                <td colspan="6">신용한 행정학 All-STEP<br>최신 1개년 단원별 기출 특강</td>
                            </tr>
                        </tbody>
                    </table>
                    <!-- <p class="noti_txt">* 개설 강좌는 선생님 또는 학원 사정으로 인해 변경될 수 있습니다.</p> -->
                </div>

                <div class="tbl_wrp essential subcurr2 mobileView" style="margin-bottom:0;">
                    <table class="tbl" title="강사 커리큘럼">
                        <colgroup>
                            <col width="25%">
                            <col width="12.5%">
                            <col width="12.5%">
                            <col width="12.5%">
                            <col width="12.5%">
                            <col width="12.5%">
                            <col width="12.5%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>학습단계</th>
                                <th colspan="3">법령특강</th>
                                <th colspan="3">기출특강</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th rowspan="2">9/7급<br>공무원</th>
                                <td colspan="3">신용한 행정학 STEP1.<br>시험빈출&amp;개정법령 특강</td>
                                <td colspan="3" rowspan="2">신용한 행정학 All-STEP<br>최신 1개년 단원별 기출 특강</td>
                            </tr>
                            <tr>
                                <td colspan="3">신용한 행정학 STEP2.<br>시험 직전 최신 개정법령 특강</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <p class="noti_txt" style="text-align:right;margin-bottom:40px;">
                    *2012년 4월~2021년 9월 행정학/지방자치론 신용한 교재 출고부수<br>
                    (판매용출고+증정용출고+비매품 출고 포함)
                </p>



                <style>
                    .pcView { display:block; }
                    .mobileView { display:none; }
                    @media (max-width:748px){
                        .mobileView { display:block; }
                        .pcView { display:none; }
                    }
                </style>

                </div>
        </div>
    </div>
</div></div>

<p class="page_text">메가공무원의 강사홈 및 다양한 이벤트 페이지에서 사용되는 커리큘럼 양식입니다.<br> 
이미지 자료와 표, 영상을 바탕으로 수강 과목의 커리큘럼 정보를 제공하고 있습니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/teacher/home.asp?bcode=shin242" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#강사홈</p> </li>
                            <li><p>#커리큘럼</p> </li>
                            <li><p>#표</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->

            <div class="page_text_wrap">
                <p class="page_head">강좌 목록</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                
<!-- HTML -->
<div class="code-box html tp2"><div class="tec_renew tech_content">
    <div class="homeConmain">
        <div id="chr" class="tccount incl_zone">
            <div class="lecCont">
                <div class="Tab_wrap">
                    <div class="grade_tab_wrap">
                        <div class="lecture" style="padding-bottom: 100px;">
                            <div class="lecList">
                                <div class="chrarea" id="chrarea1">
                                    <div class="lecTab_wrap" style="border-top: 1px solid #000;">
                                        <div id="chrtab_1" class="lecTab">
                                            <p class="tit"><span>과목</span></p>
                                            <ul class="lec_list">
                                                <li scd="63" class=" on"><button type="button" class="lec_item">
                                                    <span class="">한국사
                                                    </span></button>
                                                </li>
                                                <li scd="86" class=""><button type="button" class="lec_item">
                                                    <span class="">한국사능력검정
                                                    </span></button>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="lecTab_wrap">
                                        <div id="chrgubn_1" class="gubnTab">
                                            <p class="tit"><span>구분</span></p>
                                            <ul class="gubn_list">
                                                <li gubn="pick" class="on">
                                                    <button type="button" class="gubn_item"><span class="">Mega's Pick</span></button>
                                                </li>
                                                <li gubn="all" class="">
                                                    <button type="button" class="gubn_item"><span class="">전체 강좌</span></button>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="stepTab_wrap">
                                        <div id="chrstep_1" class="stepTab">
                                            <p class="tit"><span>학습단계</span></p>
                                            <ul class="step_list">
                                                <li stc="" class="on"><button type="button" class="step_item"><span class="">전체</span></button></li>
                                                <li stc="401" class=""><button type="button" class="step_item"><span class="">기초입문</span></button></li>
                                                <li stc="410" class=""><button type="button" class="step_item"><span class="">기본심화</span></button></li>
                                                <li stc="406" class=""><button type="button" class="step_item"><span class="">기출분석/문제풀이</span></button></li>
                                                <li stc="407" class=""><button type="button" class="step_item"><span class="">파이널/모의고사</span></button></li>
                                                <li stc="408" class=""><button type="button" class="step_item"><span class="">전략특강</span></button></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <p class="tit_s3">MEGA’S PICK!</p>
                                    <div class="lectlist ver2">
                                        <div class="lectlist_s3">
                                            <p class="subtit on">&lt;한국사&gt; 파이널을 위한 한길 샘의 신규강좌</p>
                                            <ul class="lectlist_wrap">
                                                <li id="list1_19422" class="lect_item" value2="198">
                                                    <div class="listName">
                                                        <p class="txt1">한국사<br><span>파이널<br>/모의고사</span></p>
                                                        <p class="name">전한길</p>
                                                    </div>
                                                    <div class="listWrap">
                                                        <div class="listTitle  clearfix">
                                                            <div class="f_left listTxt">
                                                                <p class="icon">
                                                                    <span class="icon1">N</span> <span class="icon6">예정</span> 
                                                                    <!---->
                                                                    <span class="icon7">9급대비</span>
                                                                </p>
                                                                <p class="subTxt">10/27~11/11 무료수강 EVENT</p>
                                                                <p class="subject"><a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19422">[9급][파이널] 2023 전한길 한국사 5.0 주제별 최종점검</a></p>
                                                                <p class="subNoti">11월 16일（수） 개강 예정입니다.</p>
                                                            </div>
                                                        </div>
                                                        <div class="lecBook">
                                                            <ul class="bookList">
                                                                <li class="clearfix">
                                                                    <div class="f_left">
                                                                        <strong>교재</strong>
                                                                        <span>
                                                                            2023 전한길 한국사 5.0 주제별 최종점검
                                                                        </span>
                                                                    </div>
                                                                </li>
                                                        
                                                                <li class="clearfix">
                                                                    <div class="f_left">
                                                                        <strong>교재</strong>
                                                                        <strong>e-교재</strong>
                                                                        <span>
                                                                            2023 전한길 한국사 합격생 필기노트 (스프링북)
                                                                        </span>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="leclistBtn clearfix">
                                                        <div class="listotal f_right">
                                                            <div class="lecMoney">
                                                                <ul>
                                                                    <li>
                                                                        <strong class="name">강좌</strong>
                                                                        <strong class="price">
                                                                        0원
                                                                        </strong>
                                                                    </li>
                                                                    
                                                                    <li>
                                                                        <strong class="name">교재(2)</strong>
                                                                        <strong class="price">
                                                                        30,600원
                                                                        </strong>
                                                                    </li>
                                                                    
                                                                    <li>
                                                                        <strong class="name">e-교재(1)</strong>
                                                                        <strong class="price">
                                                                        10,500원
                                                                        </strong>
                                                                    </li>
                                                                    
                                                                </ul>
                                                                <a href="javascript:void(0);" onclick="fncPickCartLayer(1, 19422, 198);" class="cart_btn" title="장바구니">장바구니</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div id="cartPocket1_19422" class="pocket_pop_prevw">
                                                    </div>
                                                    <div id="prevwPocket1_19422" class="pocket_pop prevw" style="display:none">
                                                    </div>
                                                </li>
                                                <li id="list1_19424" class="lect_item" value2="198">
                                                    <div class="listName">
                                                        <p class="txt1">한국사<br><span>기출분석<br>/문제풀이</span></p>
                                                        <p class="name">전한길</p>
                                                    </div>
                                                    <div class="listWrap">
                                                        <div class="listTitle  clearfix">
                                                            <div class="f_left listTxt">
                                                                <p class="icon">
                                                                    <span class="icon1">N</span> <span class="icon6">예정</span> 
                                                                    <!--<span class="icon4">이벤트</span> -->
                                                                    <span class="icon7">9급대비</span>
                                                                </p>
                                                                <p class="subTxt">★무료 공개★ 시대별 기출 회독 훈련! </p>
                                                                <p class="subject"><a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19424">[9급][특강] 2023 전한길 한국사 기출 회독 트레이닝 모의고사</a></p>
                                                                <p class="subNoti">11/7（월） 개강 예정입니다.</p>
                                                            </div>
                                                        </div>
                                                        <div class="lecBook">
                                                            <ul class="bookList">
                                                                <li class="clearfix">
                                                                    <div class="f_left">
                                                                            <strong>교재</strong>
                                                                        <span>
                                                                            2023 전한길 한국사 기출 회독 트레이닝 모의고사
                                                                        </span>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="leclistBtn clearfix">
                                                        <div class="listotal f_right">
                                                            <div class="lecMoney">
                                                                <ul>
                                                                    <li>
                                                                        <strong class="name">강좌</strong>
                                                                        <strong class="price">
                                                                        0원
                                                                        </strong>
                                                                    </li>
                                                                    <li>
                                                                        <strong class="name">교재(1)</strong>
                                                                        <strong class="price">
                                                                        13,500원
                                                                        </strong>
                                                                    </li>
                                                                    
                                                                </ul>
                                                                <a href="javascript:void(0);" onclick="fncPickCartLayer(1, 19424, 198);" class="cart_btn" title="장바구니">장바구니</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div id="cartPocket1_19424" class="pocket_pop_prevw">
                                                    </div>
                                                    <div id="prevwPocket1_19424" class="pocket_pop prevw" style="display:none">
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div></div>

<script>
$(function() {
    $('.tech_content .lectlist_s3 .subtit').addClass('on');
    $('.tech_content .lectlist_s3 .subtit').on('click', function () {
        $(this).toggleClass('on');
    });
});
</script>

<p class="page_text">메가공무원의 다양한 페이지에서 사용되는 강좌 리스트입니다.<br> 리스트를 통해 강좌의 제목, 담당 선생님의 성함, 교재 정보, 가격 정보를 한 눈에 확인할 수 있습니다. </p>

<!-- Code View -->

<pre class="language-html html act direct"><code><div class="lecture">
    <div class="lecture_whtwrp">
    &lt;%
        area_max = 1
        dom_cd = "4"
        sub_cd = ""
        sel_type = ""

        chr_cd = ""

        grp_cd = "634" 
        grp_ord = "N"
        
        chr_tab = "N" '과목/단계탭 사용
        chr_tec = "N" '선생님 영역 사용

        chr_type = "s" '강좌구분(s : 과목별, m : 단계별, k : 경행경채, f : 무료강의, e : g해설강의) - 페이지 상황 맡게 사용
        chr_title = ""
        chr_bnr =  ""

        chr_ajax = "/common/chr/chrlist_ax.asp"
        chr_para = "chr_tab=" & chr_tab & "&chr_tec=" & chr_tec & "&sel_type=" & sel_type & "&dom_cd=" & dom_cd & "&chr_type=" & chr_type & "&sub_cd=" & sub_cd
        chr_plus = "&grp_cd=" & grp_cd & "&grp_ord=" & grp_ord & "&chr_cd=" & chr_cd
    %&gt;
    &lt;!-- #'include virtual = "/common/chr/chrlist_inc.asp"--&gt;
    </div>
</div></code></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/teacher/home.asp?bcode=shin242" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#강사홈</p> </li>
                            <li><p>#강좌리스트</p> </li>
                            <li><p>#강좌목록</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->

            <!-- #include virtual = "/inc/tweet_popup_all.asp"-->
            <!-- #include virtual = "/inc/ball.asp"-->
            <!-- #include virtual = "/inc/footer.asp"-->
        </div> <!--//page_inner -->
    
    </div>


    <div class="ank"></div>

    <style>
    .tech_content {min-height:inherit; padding-bottom: 0px;}
    .tech_content .tcbannerZin .tcbanner_slider {margin:0px}
    .tech_content .board_wrap h3 {font-size:inherit; background:inherit;}
    .tech_content .board_wrap.dotin h3,.tech_content .board_wrap.opinn h3 {background:inherit;}
    .bnrb {margin: auto;display: block;width: 50%;}
    @media screen and (max-width: 1200px) {
        .bnrb {width: 60%;}
    }
    @media screen and (max-width: 992px) {
        .bnrb {width: 90%;}
    }
    @media screen and (max-width: 576px) {
        .bnrb {width: 100%;}
    }
    </style>

<!-- #include virtual = "/inc/bottom.asp"-->