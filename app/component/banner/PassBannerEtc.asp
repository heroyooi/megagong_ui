<script type="text/babel">
  'use strict';

  function PassBannerEtc({ title, onChange }) {

const html = `<div class="main_wrp">
    <div class="wide_wrap flex first">

<!-- S: [PC] ��ǰ ���� ��� - 1 / main_eventSlider1 -->
<h3 class="blindw"> ��ǰ, ��ȹ��</h3>
<div id="main_eventSlider1" class="main_eventSlider palette event1 ver2">
    <div class="item">
        <a href="/s/gong/pass/restart/2025/index.asp#eventWrap" title="RE-START �ް��н�">
            <span class="point"></span><!--���� �ؽ�Ʈ�ֱ�--> 
            <% if cdate(lo_now_date) < cdate("2024-10-02") then %>
            <span class="point2">89��� �̻��̶�� 30% ��� ����!</span>
            <% else %>
            <span class="point2">10/14(��) ������ 9�� ȯ������ ���� Ȯ��!</span>
            <% end if %>
            <strong><span class="point3">RE-START</span> �ް��н�</strong>
        </a>
    </div>
    <div class="item">
        <a href="/s/gong/pass/law/2025/index.asp#eventWrap" title="������ �ް��н�">
            <span class="point"></span><!--���� �ؽ�Ʈ�ֱ�--> 
            <span class="point2">�հ��� �� ������, ������� �ո�������</span>
            <strong><span class="point3">������</span> �ް��н�</strong>
        </a>
    </div>
    <div class="item">
        <a href="/s/gong/event/2024/06120053/index.asp#eventWrap" title="������ ���� �ް��н�">
            <span class="point"></span><!--���� �ؽ�Ʈ�ֱ�--> 
            <span class="point2">������ �������� �ް�����������!</span>
            <strong><span class="point3">������ ����</span> �ް��н�</strong>
        </a>
    </div>
</div><!-- / main_eventSlider -->
<!-- E: [PC] ��ǰ ���� ��� - 1 / main_eventSlider1 -->
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
    Randomize ' �迭�� ���� ���� �� ���� ȣ���մϴ�.
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

' ù ��° �迭�� ������ �������� �� ��° �迭 ����
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

/* --- S: palette ���� --- */

$('.main_eventSlider.palette.event1 .item').each(function(idx){ 
    $(this).find('a').addClass('pal'+eventAspRandom1[idx % 6])
})
$('.main_eventSlider.palette.event2 .item').each(function(idx){ 
    $(this).find('a').addClass('pal'+eventAspRandom2[idx % 6])
})

/* --- S: �̺�Ʈ �����̴� --- */ 
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

// 2024-07-24 �űԹ�� �߰� �� (event4 �ܹ߼� �����̵� ��� ������� ����)
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
        desc="�ް����������� ����ϴ� �н� ��ʸ� �Ұ��մϴ�. <br />�н� ��ǰ�� �ް��������� �ٽ� ���񽺷� �ް������� ������������ ��ܿ� ����˴ϴ�."
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["�н� ���","�ް� �н�","����ŸƮ","������","������"]}
        link="<%=url_main%>/megagong.asp"
        file="m\gong\bnr_zone\v24\pick_event.asp"
        onChange={onChange}
      />
    )
  }
</script>