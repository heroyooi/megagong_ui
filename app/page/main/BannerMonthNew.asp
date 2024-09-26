<script type="text/babel">
  'use strict';

  function BannerMonthNew({ title, onChange }) {

const html = `<div class="main_wrp">
  <div class="wide_wrap flex first">
    <div id="main_monthNew" class="main_monthNew">
        <div class="cont_wrap border_1">
            <div class="title_wrap">
                <h3>이 달의 <b>새 강좌</b></h3>
            </div>
            
            <a href="javascript:;" class="arrow border_1">더보기</a>

            <div class="monthnew_slider_wrap">
                <div id="monthnew_slider" class="monthnew_slider slider">
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21875" title="강좌 더보기">
                            <i class="open ">개강</i>
                            <span class="tit">[특강] 2024대비 이태섭 POINT 민법 최신 판례 정리</span>
                            <span class="name">민법&nbsp;이태섭</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21849" title="강좌 더보기">
                            <i class="open ">개강</i>
                            <span class="tit">[파이널] 2024 라영환 한국사 지방직 대비 작두 모의고사</span>
                            <span class="name">한국사&nbsp;라영환</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21850" title="강좌 더보기">
                            <i class="open ">개강</i>
                            <span class="tit">[특강] 2024 라영환 한국사 지방직 대비 작두특강 라스트씬</span>
                            <span class="name">한국사&nbsp;라영환</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21861" title="강좌 더보기">
                            <i class="open ">개강</i>
                            <span class="tit">2024 조태정 데일리 루틴 Advanced8 : 영어는 결국 꾸준한 루틴으로 완성하는 것</span>
                            <span class="name">영어&nbsp;조태정</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21817" title="강좌 더보기">
                            <i class="open ">개강</i>
                            <span class="tit">[특강] 2024 송아름 간호관리 벼락치기 특강</span>
                            <span class="name">간호관리&nbsp;송아름</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21818" title="강좌 더보기">
                            <i class="open ">개강</i>
                            <span class="tit">[특강] 2024 송아름 지역사회간호 벼락치기 특강</span>
                            <span class="name">지역사회간호&nbsp;송아름</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21832" title="강좌 더보기">
                            <i class="open ">개강</i>
                            <span class="tit">2025 이유진 국어 │ 독해 알고리즘 스키마 SCHEMA</span>
                            <span class="name">국어&nbsp;이유진</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21848" title="강좌 더보기">
                            <i class="open ">개강</i>
                            <span class="tit">[파이널] 2024 지방직 대비 이상현 행정법 실전 동형 모의고사</span>
                            <span class="name">행정법&nbsp;이상현</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21960" title="강좌 더보기">
                            <i class="open ">개강</i>
                            <span class="tit">2025 이유진 국어│국어 쿼터 홈트_어·문·사 관리 프로젝트Ⅰ</span>
                            <span class="name">국어&nbsp;이유진</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21808" title="강좌 더보기">
                            <i class="open ">개강</i>
                            <span class="tit">[9급] [입문] 2025 전한길 한국사 1.0 입문</span>
                            <span class="name">한국사&nbsp;전한길</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21833" title="강좌 더보기">
                            <i class="open ">개강</i>
                            <span class="tit">2025 이유진 국어 │ 독해 알고리즘 딥러닝 DEEP LEARNING</span>
                            <span class="name">국어&nbsp;이유진</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21872" title="강좌 더보기">
                            <i class="open ">개강</i>
                            <span class="tit">[법원직] 2024 장대영어 장DAY영어 동형 모의고사</span>
                            <span class="name">영어&nbsp;장대영</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21811" title="강좌 더보기">
                            <i class="open ">개강</i>
                            <span class="tit">[이론입문] 2025 신용한 행정학 STEP1.이론입문: 초석다지기</span>
                            <span class="name">행정학&nbsp;신용한</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21826" title="강좌 더보기">
                            <i class="open ">개강</i>
                            <span class="tit">[파이널] 2024 이종하 회계학 서울시/지방직 대비 9급 마무리 특강(빈출 K-IFRS 문단 총정리+OX 문제풀이)</span>
                            <span class="name">회계학&nbsp;이종하</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21865" title="강좌 더보기">
                            <i class="open ">개강</i>
                            <span class="tit">2025 노준영어 │ 노베이스 기초</span>
                            <span class="name">영어&nbsp;박노준</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21944" title="강좌 더보기">
                            <i class="open ">개강</i>
                            <span class="tit">[기초/입문] 2025 유휘운 행정법총론 &lt;행정법S타트&gt;</span>
                            <span class="name">행정법&nbsp;유휘운</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21979" title="강좌 더보기">
                            <i class="open ">개강</i>
                            <span class="tit">2025 조태정 기초입문 리베이스(Rebase)(6월 개강)</span>
                            <span class="name">영어&nbsp;조태정</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21874" title="강좌 더보기">
                            <i class="open ">개강</i>
                            <span class="tit">&lt;법원직&gt;[4순환] 2024 이태섭 POINT 민법 핵심지문 총정리</span>
                            <span class="name">민법&nbsp;이태섭</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21965" title="강좌 더보기">
                            <i class="open ">개강</i>
                            <span class="tit">[9급] 2025 라영환 한국사 암기빵 한입 맛보기 (입문) </span>
                            <span class="name">한국사&nbsp;라영환</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21966" title="강좌 더보기">
                            <i class="open ">개강</i>
                            <span class="tit">2024 박수연 영어 지방직 마무리_문법/빈칸 때려잡기 특강</span>
                            <span class="name">영어&nbsp;박수연</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21749" title="강좌 더보기">
                            <i class="open ">개강</i>
                            <span class="tit">[파이널] 김형준 2024 사회복지학개론 지방직 족집게 FINAL</span>
                            <span class="name">사회복지학&nbsp;김형준</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21939" title="강좌 더보기">
                            <i class="open ">개강</i>
                            <span class="tit">[9급] [특강] 2025 전한길 한국사 필기노트 강해</span>
                            <span class="name">한국사&nbsp;전한길</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21806" title="강좌 더보기">
                            <i class="open yet">개강<br>예정</i>
                            <span class="tit">[압축] 2024 김건호 헌법 찐합격노트 핵심 요약</span>
                            <span class="name">헌법&nbsp;김건호</span>
                        </a>
                    </div>
                </div>

                <div id="monthnew_scroll" class="monthnew_slider scroll">
            
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21875" title="강좌 더보기">
                            <i class="open ">개강</i>
                            <span class="tit">[특강] 2024대비 이태섭 POINT 민법 최신 판례 정리</span>
                            <span class="name">민법&nbsp;이태섭</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21849" title="강좌 더보기">
                            <i class="open ">개강</i>
                            <span class="tit">[파이널] 2024 라영환 한국사 지방직 대비 작두 모의고사</span>
                            <span class="name">한국사&nbsp;라영환</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21850" title="강좌 더보기">
                            <i class="open ">개강</i>
                            <span class="tit">[특강] 2024 라영환 한국사 지방직 대비 작두특강 라스트씬</span>
                            <span class="name">한국사&nbsp;라영환</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21861" title="강좌 더보기">
                            <i class="open ">개강</i>
                            <span class="tit">2024 조태정 데일리 루틴 Advanced8 : 영어는 결국 꾸준한 루틴으로 완성하는 것</span>
                            <span class="name">영어&nbsp;조태정</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21817" title="강좌 더보기">
                            <i class="open ">개강</i>
                            <span class="tit">[특강] 2024 송아름 간호관리 벼락치기 특강</span>
                            <span class="name">간호관리&nbsp;송아름</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21818" title="강좌 더보기">
                            <i class="open ">개강</i>
                            <span class="tit">[특강] 2024 송아름 지역사회간호 벼락치기 특강</span>
                            <span class="name">지역사회간호&nbsp;송아름</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21832" title="강좌 더보기">
                            <i class="open ">개강</i>
                            <span class="tit">2025 이유진 국어 │ 독해 알고리즘 스키마 SCHEMA</span>
                            <span class="name">국어&nbsp;이유진</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21848" title="강좌 더보기">
                            <i class="open ">개강</i>
                            <span class="tit">[파이널] 2024 지방직 대비 이상현 행정법 실전 동형 모의고사</span>
                            <span class="name">행정법&nbsp;이상현</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21960" title="강좌 더보기">
                            <i class="open ">개강</i>
                            <span class="tit">2025 이유진 국어│국어 쿼터 홈트_어·문·사 관리 프로젝트Ⅰ</span>
                            <span class="name">국어&nbsp;이유진</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21808" title="강좌 더보기">
                            <i class="open ">개강</i>
                            <span class="tit">[9급] [입문] 2025 전한길 한국사 1.0 입문</span>
                            <span class="name">한국사&nbsp;전한길</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21833" title="강좌 더보기">
                            <i class="open ">개강</i>
                            <span class="tit">2025 이유진 국어 │ 독해 알고리즘 딥러닝 DEEP LEARNING</span>
                            <span class="name">국어&nbsp;이유진</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21872" title="강좌 더보기">
                            <i class="open ">개강</i>
                            <span class="tit">[법원직] 2024 장대영어 장DAY영어 동형 모의고사</span>
                            <span class="name">영어&nbsp;장대영</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21811" title="강좌 더보기">
                            <i class="open ">개강</i>
                            <span class="tit">[이론입문] 2025 신용한 행정학 STEP1.이론입문: 초석다지기</span>
                            <span class="name">행정학&nbsp;신용한</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21826" title="강좌 더보기">
                            <i class="open ">개강</i>
                            <span class="tit">[파이널] 2024 이종하 회계학 서울시/지방직 대비 9급 마무리 특강(빈출 K-IFRS 문단 총정리+OX 문제풀이)</span>
                            <span class="name">회계학&nbsp;이종하</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21865" title="강좌 더보기">
                            <i class="open ">개강</i>
                            <span class="tit">2025 노준영어 │ 노베이스 기초</span>
                            <span class="name">영어&nbsp;박노준</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21944" title="강좌 더보기">
                            <i class="open ">개강</i>
                            <span class="tit">[기초/입문] 2025 유휘운 행정법총론 &lt;행정법S타트&gt;</span>
                            <span class="name">행정법&nbsp;유휘운</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21979" title="강좌 더보기">
                            <i class="open ">개강</i>
                            <span class="tit">2025 조태정 기초입문 리베이스(Rebase)(6월 개강)</span>
                            <span class="name">영어&nbsp;조태정</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21874" title="강좌 더보기">
                            <i class="open ">개강</i>
                            <span class="tit">&lt;법원직&gt;[4순환] 2024 이태섭 POINT 민법 핵심지문 총정리</span>
                            <span class="name">민법&nbsp;이태섭</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21965" title="강좌 더보기">
                            <i class="open ">개강</i>
                            <span class="tit">[9급] 2025 라영환 한국사 암기빵 한입 맛보기 (입문) </span>
                            <span class="name">한국사&nbsp;라영환</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21966" title="강좌 더보기">
                            <i class="open ">개강</i>
                            <span class="tit">2024 박수연 영어 지방직 마무리_문법/빈칸 때려잡기 특강</span>
                            <span class="name">영어&nbsp;박수연</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21749" title="강좌 더보기">
                            <i class="open ">개강</i>
                            <span class="tit">[파이널] 김형준 2024 사회복지학개론 지방직 족집게 FINAL</span>
                            <span class="name">사회복지학&nbsp;김형준</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21939" title="강좌 더보기">
                            <i class="open ">개강</i>
                            <span class="tit">[9급] [특강] 2025 전한길 한국사 필기노트 강해</span>
                            <span class="name">한국사&nbsp;전한길</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21806" title="강좌 더보기">
                            <i class="open yet">개강<br>예정</i>
                            <span class="tit">[압축] 2024 김건호 헌법 찐합격노트 핵심 요약</span>
                            <span class="name">헌법&nbsp;김건호</span>
                        </a>
                    </div>
                
                </div>
            </div>

        </div><!-- / cont_wrap -->
    </div>
  </div>
</div>`;

const css = ``;

const excCss = `.main_wrp .wide_wrap.first{min-height:279px;}`;

const js = `/* --- S: 이달의 새 강좌 슬라이더 --- */ 
var monthNewSlider = undefined;
var monthNewTimer = null;

function initMonthNewSlider(runSlick) {
    if ( runSlick && monthNewSlider == undefined ) {
        //console.log('>> slick')
        $('#monthnew_slider').show(0);
        monthNewSlider = $('#monthnew_slider').not('.slick-initialized').slick({
            slidesToShow: 1,
            slidesPerRow: 2,
            slidesToScroll: 1,
            arrows: false,
            vertical: true,
            infinite: true,
            speed: 500,
            autoplaySpeed: 3000,
            autoplay: true,
            dots: false,
            responsive: [{
                breakpoint: 769,
                settings: {
                    slidesPerRow: 1,
                }
            }]
        });
    } else if ( !runSlick && monthNewSlider != undefined  ) {
        //console.log('>> unslick')
        $('#monthnew_slider').hide(0);
        monthNewSlider.slick('unslick');
        monthNewSlider = undefined;
    }
}

initMonthNewSlider($(window).width() > 1200);

$(window).on('resize', function(){
    if($(window).width() <= 1200) { 
        clearTimeout(monthNewTimer);
        monthNewTimer = setTimeout(function() {
            $('.main_monthNew').removeClass('on');
            initMonthNewSlider(false);
        }, 50);
    } 
    if($(window).width() > 1200) { 
        clearTimeout(monthNewTimer);
        monthNewTimer = setTimeout(function() {
            initMonthNewSlider(true);
        }, 50);
    }
});
/* --- E: 이달의 새 강좌 슬라이더 --- */ 

/* --- S: 이달의 새 강좌 onoff --- */ 
$('.main_monthNew .arrow').on('click', function(){
    if ( !$('.main_monthNew').hasClass('on') ) {
        $('.main_monthNew').addClass('on');
        initMonthNewSlider(false);
    }else{
        $('.main_monthNew').removeClass('on');
        initMonthNewSlider(true);
    }
});
/* --- E: 이달의 새 강좌 onoff --- */ 

/* --- S: 외부영역 클릭 시 팝업 닫기 --- */ 
$(document).on('click', function(e){
    if($('.main_monthNew').has(e.target).length == 0) {
        $('.main_monthNew').removeClass('on');
        initMonthNewSlider(true);
    }
});
/* --- E: 외부영역 클릭 시 팝업 닫기 --- */ `;

    return (
      <PageContent
        title={title}
        desc=""
        // image="/images/demo/main_banner_monthnew.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["이 달의 새 강좌", "메인 배너"]}
        link="<%=url_main%>/megagong.asp"
        file="m\gong\bnr_zone\v24\month_new.asp"
        lazyFile="m\gong\bnr_zone\v24\month_new_load.asp"
        onChange={onChange}
      />
    )
  }
</script>