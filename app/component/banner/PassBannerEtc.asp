<script type="text/babel">
  'use strict';

  function PassBannerEtc({ title, onChange, simple = false }) {

const html = `<div class="main_wrp">
    <div class="wide_wrap flex first">

<!-- S: [PC] 상품 서브 배너 - 1 / main_eventSlider1 -->
<h3 class="blindw"> 상품, 기획전</h3>
<div id="main_eventSlider1" class="main_eventSlider palette event1 ver2">
    <div class="item">
        <a href="/s/gong/pass/restart/2025/index.asp#eventWrap" title="RE-START 메가패스">
            <span class="point"></span><!--사용시 텍스트넣기--> 
            <% if cdate(lo_now_date) < cdate("2024-10-02") then %>
            <span class="point2">89년생 이상이라면 30% 즉시 할인!</span>
            <% else %>
            <span class="point2">10/14(월) 국가직 9급 환급혜택 종료 확정!</span>
            <% end if %>
            <strong><span class="point3">RE-START</span> 메가패스</strong>
        </a>
    </div>
    <div class="item">
        <a href="/s/gong/pass/law/2025/index.asp#eventWrap" title="법원직 메가패스">
            <span class="point"></span><!--사용시 텍스트넣기--> 
            <span class="point2">합격을 더 빠르게, 수강료는 합리적으로</span>
            <strong><span class="point3">법원직</span> 메가패스</strong>
        </a>
    </div>
    <div class="item">
        <a href="/s/gong/event/2024/06120053/index.asp#eventWrap" title="교정직 승진 메가패스">
            <span class="point"></span><!--사용시 텍스트넣기--> 
            <span class="point2">교정직 승진까지 메가공무원에서!</span>
            <strong><span class="point3">교정직 승진</span> 메가패스</strong>
        </a>
    </div>
</div><!-- / main_eventSlider -->
<!-- E: [PC] 상품 서브 배너 - 1 / main_eventSlider1 -->
    </div>
</div>`;

const css = ``;

const excCss = `.main_wrp{padding-top:0;}
.main_wrp .wide_wrap{padding:0;}`;

const js = `<%
Dim eventRandomIndexArr1, eventRandomIndexArr2
ReDim eventRandomIndexArr1(5)
ReDim eventRandomIndexArr2(5)

Function shuffleArray(arr)
    Dim i, j, temp
    Randomize ' 배열을 섞기 전에 한 번만 호출합니다.
    For i = UBound(arr) To 1 Step -1
        j = Int((i + 1) * Rnd())
        temp = arr(i)
        arr(i) = arr(j)
        arr(j) = temp
    Next
End Function

Function getUniqueRandomArray()
    Dim arr(5), i
    For i = 0 To 5
        arr(i) = i
    Next
    shuffleArray arr
    getUniqueRandomArray = arr
End Function

eventRandomIndexArr1 = getUniqueRandomArray()

' 첫 번째 배열의 순서를 바탕으로 두 번째 배열 생성
Dim used(5)
For i = 0 To 5
    used(i) = False
Next

For i = 0 To 5
    For j = 0 To 5
        If Not used(j) And eventRandomIndexArr1(i) <> j Then
            eventRandomIndexArr2(i) = j
            used(j) = True
            Exit For
        End If
    Next
Next

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

Dim eventAspArr1, eventAspArr2
eventAspArr1 = ArrayToJSON(eventRandomIndexArr1)
eventAspArr2 = ArrayToJSON(eventRandomIndexArr2)
%>

let eventAspRandom1 = <%=eventAspArr1%>;
let eventAspRandom2 = <%=eventAspArr2%>;

/* --- S: palette 랜덤 --- */

$('.main_eventSlider.palette.event1 .item').each(function(idx){ 
    $(this).find('a').addClass('pal'+eventAspRandom1[idx % 6])
})
$('.main_eventSlider.palette.event2 .item').each(function(idx){ 
    $(this).find('a').addClass('pal'+eventAspRandom2[idx % 6])
})

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

// 2024-07-24 신규배너 추가 후 (event4 단발성 슬라이드 배너 사라지면 삭제)
function shouldRunSlick() {
    return $(window).width() > 1200 || $('.main_eventSlider').hasClass('event4');
}

initEventSlider(shouldRunSlick());

var eventTimer = null;

$(window).on('resize', function() {
    clearTimeout(eventTimer);
    eventTimer = setTimeout(function() {
        initEventSlider(shouldRunSlick());
    }, 50);
});`;

    return (
      <PageContent
        title={title}
        desc="메가공무원에서 사용하는 패스 배너를 소개합니다. <br />패스 상품은 메가공무원의 핵심 서비스로 메가공무원 메인페이지의 상단에 노출됩니다."
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["패스 배너","메가 패스","리스타트","교정직","법원직"]}
        link="<%=url_main%>/megagong.asp"
        file="m\gong\bnr_zone\v24\pick_event.asp"
        simple={simple}
        onChange={onChange}
      />
    )
  }
</script>