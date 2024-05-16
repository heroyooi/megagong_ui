<script type="text/babel">
  'use strict';

  function Teacher1({ title, onChange }) {

const html = `<div class="wrap_content tec_renew">
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
                <div class="tab_square_mo swiper-container swiper-container-horizontal">
                    <div class="swiper-wrapper" style="transition-duration: 0ms;">
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
                    <div class="swiper-scrollbar"><div class="swiper-scrollbar-drag"></div></div>
                <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
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
                    <a href="https://www.megagong.net/teacher/home.asp?bcode=shin242" target="_blank" title="신용한">
                        <span class="t_desc">
                        합격으로 증명하는 <br>신용한 행정학
                        </span>
                        <span class="t_name">신용한 선생님</span>
                        <span class="t_img"><img src="https://img.megagong.net/profphoto/gong/shin242/Prof3.png" alt="64 신용한"></span>
                    </a>
                    <ul class="notice">
                        <li>
                            <a href="https://www.megagong.net/teacher/notice/notice.asp?bcode=shin242&idx=6067">
                                <span class="label">새소식</span>
                                <span class="con">[10/15] 국가직 7급 행정학 총평:행정학 점수는 88점 이상이면 훌륭하고, 80점 이상이면 합격선 예상</span>
                            </a>
                        </li>
                        <li>
                            <a href="https://www.megagong.net/teacher/review/view.asp?bcode=shin242&idx=22993&mv=content_area">
                                <span class="label">BEST후기</span>
                                <span class="con">울면서 기출풀던 행정학..[2022지방직 9급 합격수기]</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="tecCard 64" style="">
                    <a href="https://www.megagong.net/teacher/home.asp?bcode=plower3362" target="_blank" title="황철곤">
                        <span class="t_desc">
                        합격으로 바로 직결하는<br>240주제
                        </span>
                        <span class="t_name">황철곤 선생님</span>
                        <span class="t_img"><img src="https://img.megagong.net/profphoto/gong/plower3362/Prof3.png" alt="64 황철곤"></span>
                    </a>
                    <ul class="notice">
                        <li>
                            <a href="https://www.megagong.net/teacher/notice/notice.asp?bcode=plower3362&idx=6114">
                                <span class="label">새소식</span>
                                <span class="con">[10/29] 지방직 7급 행정학 총평: 기출선지가 그대로 나오지 않음을 보여준 출제</span>
                            </a>
                        </li>
                        <li>
                            <a href="https://www.megagong.net/teacher/review/view.asp?bcode=plower3362&idx=21875&mv=content_area">
                                <span class="label">BEST후기</span>
                                <span class="con">[국가직 최종합격 / 지방직 필기합격] 군더더기 없이 깔끔한 강의!!!</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="tecCard 64" style="">
                    <a href="https://www.megagong.net/teacher/home.asp?bcode=happy0308" target="_blank" title="이상헌">
                        <span class="t_desc">
                        방대한 행정학 Slim&Fit 하다 <br>DIET 행정학
                        </span>
                        <span class="t_name">이상헌 선생님</span>
                        <span class="t_img"><img src="https://img.megagong.net/profphoto/gong/happy0308/Prof3.png" alt="64 이상헌"></span>
                    </a>
                    <ul class="notice">
                        <li>
                            <a href="https://www.megagong.net/teacher/notice/notice.asp?bcode=happy0308&idx=6117">
                                <span class="label">새소식</span>
                                <span class="con">[10/29] 국가직 7급 행정학 총평: 전반적으로 평이하게 출제되었으나 변별력 있는 문제때문에 시간분배가 어려웠을 것</span>
                            </a>
                        </li>
                        <li>
                            <a href="https://www.megagong.net/teacher/review/view.asp?bcode=happy0308&idx=21479&mv=content_area">
                                <span class="label">BEST후기</span>
                                <span class="con">쌤! 저 국가직 9급 일반행정 합격했습니다!</span>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>`;

const css = ``;

const excCss = ``;

const js = `var tabSquarePC = $('.tab_square');
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
});
`;

    return (
      <PageContent
        title={title}
        desc="메가공무원의 선생님 페이지에서 주로 사용되는 요소 양식입니다. <br />
        탭 형식으로 구분되며, 해당 탭의 과목에 따른 선생님 목록이 사용자에게 제공됩니다. <br />
        목록을 클릭하면 해당 강사 선생님의 개인페이지로 이동되며 커리큘럼에 관한 더 많은 정보를 제공받을 수 있습니다."
        // image="/images/popup1.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["강의목록","강사홈","탭"]}
        link="<%=url_main%>/teacher/index.asp"
        onChange={onChange}
      />
    )
  }
</script>