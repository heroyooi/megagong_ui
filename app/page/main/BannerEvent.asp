<%
Dim randomIndexArr1, randomIndexArr2, randomIndexArr3
ReDim randomIndexArr1(5)
ReDim randomIndexArr2(5)
ReDim randomIndexArr3(5)

Function FillRandomArray(arr)
    Dim i, randomNum, isUnique, j
    i = 0
    Do While i < 6
        Randomize
        randomNum = Int((6) * Rnd())
        isUnique = True
        
        For j = 0 To i - 1
            If arr(j) = randomNum Then
                isUnique = False
                Exit For
            End If
        Next

        If isUnique Then
            arr(i) = randomNum
            i = i + 1
        End If
    Loop
End Function

Call FillRandomArray(randomIndexArr1)
Call FillRandomArray(randomIndexArr2)
Call FillRandomArray(randomIndexArr3)

Function ArrayToJSON(arr)
    Dim json, i
    json = "["
    For i = 0 To UBound(arr)
        json = json & arr(i)
        If i < UBound(arr) Then
            json = json & ","
        End If
    Next
    json = json & "]"
    ArrayToJSON = json
End Function

Dim aspArr1, aspArr2, aspArr3
aspArr1 = ArrayToJSON(randomIndexArr1)
aspArr2 = ArrayToJSON(randomIndexArr2)
aspArr3 = ArrayToJSON(randomIndexArr3)
%>

<script type="text/babel">
  'use strict';

  function BannerEvent({ title, onChange }) {

const html = `<div class="main_wrp">
  <div class="wide_wrap flex first">
    <!-- S: [PC] 이벤트 배너 - 1 / main_eventSlider1 -->
    <h3 class="blindw">이벤트</h3>
    <div id="main_eventSlider1" class="main_eventSlider palette event1">
        <div class="item">
            <a href="/s/gong/event/2023/05100057/index.asp#eventWrap" class="" title="지방자치론">
                <!-- <span class="point"></span> -->
                또 한번의 합격 기회를 사수하라!
                <strong>지방직 7급 필수관문: 지방자치론</strong>
            </a>
        </div>
        <div class="item">
            <a href="/s/gong/event/2024/05130042/index.asp#eventWrap" class="" title="기술직 합격솔루션">
                <!-- <span class="point"></span> -->
                #직렬별_최적화 #단과할인_진행_중
                <strong>2024 기술직 파이널 합격 솔루션</strong>
            </a>
        </div>
        <div class="item">
            <a href="/s/gong/event/2023/09060113/index.asp#eventWrap" class="" title="법원직 파이널 ">
                <!-- <span class="point"></span> -->
                실전보다 더 실전같은 문제로 약점 타파
                <strong>2024 메가법원직 파이널 몰입반</strong>
            </a>
        </div>

    </div><!-- / main_eventSlider -->
    <!-- E: [PC] 이벤트 배너 - 1 / main_eventSlider1 -->

    <!-- S: [PC] 이벤트 배너 - 2 / main_eventSlider2 -->
    <div id="main_eventSlider2" class="main_eventSlider palette event2">

        <div class="item">
            <a href="" class="" title="교육행정">
                <span class="point">강좌 50% 할인</span>
                초상의 워라밸을 잡아라!
                <strong>교육행정직 합격 TIP</strong>
            </a>
        </div>
        <div class="item">
            <a href="" class="" title="행정직 고득점 전략">
                <span class="point">강좌 50% 할인</span>
                1년에 6번, 합격 기회를 잡아라!
                <strong>일반행정직 고득점 전략</strong>
            </a>
        </div>
        
        
        <% if cdate(lo_now_date) < cdate("2024-07-12") then %>
        <div class="item">
            <a href="" class="" title="법원직 입문 특강">
                <span class="point">5법 입문팩 무료지원</span>
                합격을 향한 왕초보 스타트
                <strong>법원직 예비순환: 입문 특강 OPEN</strong>
            </a>
        </div>
        <% elseif cdate(lo_now_date) < cdate("2024-08-01") then %>
        <div class="item">
            <a href="" class="" title="법원직 입문 특강">
                <span class="point">완강 챌린지 EVENT</span>
                합격을 향한 왕초보 스타트
                <strong>2025 메가법원직 예비순환</strong>
            </a>
        </div>
        <% else %>
        <div class="item">
            <a href="" class="" title="법원직 입문 특강">
                합격을 향한 왕초보 스타트
                <strong>법원직 예비순환: 입문 특강 OPEN</strong>
            </a>
        </div>
        <% end if %>

    </div><!-- / main_eventSlider -->
    <!-- E: [PC] 이벤트 배너 - 2 / main_eventSlider2 -->

    <!-- S: [PC] 이벤트 배너 - 3 / main_eventSlider3 -->
    <div id="main_eventSlider3" class="main_eventSlider event3">

        <div class="item">
            <a href="/event/2023/12190042/index.asp#eventWrap" class="" title="메가패스 10일 무료체험">
                <!-- <span class="point">EVENT</span> -->
                나에게 딱 맞는 커리큘럼 찾기
                <strong><b>메가패스 10일 무료체험</b></strong>
            </a>
        </div>
        <div class="item">
            <a href="<%=lab_main%>/l/share/exam/gong/2024/index.asp#eventWrap" target="_blank" class="" title="2025대비 합격예측 진단평가">
                <!-- <span class="point">EVENT</span> -->
                9급 초시생 기초실력 알아보기!
                <strong><b>2025대비 합격예측 진단평가</b></strong>
            </a>
        </div>
        <div class="item">
            <a href="<%=lab_main%>/l/gong/pass_opinion/index.asp" target="_blank" class="" title="공무원 BEST 합격수기">
                <!-- <span class="point">EVENT</span> -->
                어디서도 들을 수 없는 합격 비법
                <strong><b>공무원 BEST 합격수기</b></strong>
            </a>
        </div>

    </div><!-- / main_eventSlider -->
    <!-- E: [PC] 이벤트 배너 - 3 / main_eventSlider3 -->
  </div>
</div>`;

const css = ``;

const excCss = `.main_wrp .wide_wrap.first{max-height:180px;}`;

const js = `let aspRandom1 = <%=aspArr1%>;
let aspRandom2 = <%=aspArr2%>;
let aspRandom3 = <%=aspArr3%>;

/* --- S: palette 랜덤 --- */
// let randomIndexArray1 = []
// let randomIndexArray2 = []
// let randomIndexArray3 = []

// for (let i=0; i<6; i++) {
//     let randomNum1 = Math.floor(Math.random() * 6) 
//     if (randomIndexArray1.indexOf(randomNum1) === -1)  randomIndexArray1.push(randomNum1)
//     else i--
// }
// for (let i=0; i<6; i++) {
//     let randomNum2 = Math.floor(Math.random() * 6) 
//     if (randomIndexArray2.indexOf(randomNum2) === -1)  randomIndexArray2.push(randomNum2)
//     else i--
// }
// for (let i=0; i<6; i++) {
//     let randomNum3 = Math.floor(Math.random() * 6) 
//     if (randomIndexArray3.indexOf(randomNum3) === -1)  randomIndexArray3.push(randomNum3)
//     else i--
// }

// console.log(randomIndexArray1)
// console.log(randomIndexArray2)
// console.log(randomIndexArray3)

$('.main_eventSlider.palette.event1 .item').each(function(idx){ 
    $(this).find('a').addClass('pal'+aspRandom1[idx % 6])
})
$('.main_eventSlider.palette.event2 .item').each(function(idx){ 
    $(this).find('a').addClass('pal'+aspRandom2[idx % 6])
})

$('.main_eventSlider.event3 .item').each(function(idx){ 
    $(this).find('a').addClass('pal'+aspRandom3[idx % 6])
})
/* --- E: palette 랜덤 --- */ 

/* --- S: 이벤트 슬라이더 --- */ 
var eventSlider = undefined;
var eventSliderOption = {
    infinite: true,
    autoplaySpeed: 3000,
    speed: 500,
    autoplay:true,
    dots: false,
    arrows: true,
    draggable: true
};

function initEventSlider(runSlick) {
    if ( runSlick && eventSlider == undefined ) {
        eventSlider =  $('.main_eventSlider').not('.slick-initialized').slick(eventSliderOption);

    } else if ( !runSlick && eventSlider != undefined ) {
        eventSlider.slick('unslick'); 		
        eventSlider = undefined;
    }
}

initEventSlider($(window).width() > 1200);
      

var eventTimer = null;

$(window).on('resize', function() {
   if($(window).width() <= 1200) { 
        clearTimeout(eventTimer);
        eventTimer = setTimeout(function() {
            initEventSlider(false);
        }, 50);
    } 
    if($(window).width() > 1200) { 
        clearTimeout(eventTimer);
        eventTimer = setTimeout(function() {
            initEventSlider(true);
        }, 50);
    }
});`;

    return (
      <PageContent
        title={title}
        desc=""
        // image="/images/demo/main_banner_evtbanner.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["이벤트 배너","메인 배너"]}
        link="<%=url_main%>/megagong.asp"
        file="m\gong\bnr_zone\v24\offline_event.asp"
        onChange={onChange}
      />
    )
  }
</script>