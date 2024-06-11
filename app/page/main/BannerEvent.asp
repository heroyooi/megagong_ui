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
    <!-- S: [PC] �̺�Ʈ ��� - 1 / main_eventSlider1 -->
    <h3 class="blindw">�̺�Ʈ</h3>
    <div id="main_eventSlider1" class="main_eventSlider palette event1">

        <% if cdate(lo_now_date) < cdate("2024-06-22") then %>
        <div class="item">
            <a href="/s/gong/event/2024/05230046/index.asp#eventWrap" class="" title="���� GET">
                <!-- <span class="point"></span> -->
                <span class="point">111 ���� ���� �� 15% ����</span>
                2024 ������ 9�� ���� ����
                <strong>�ִ� 80% ���� ������ ����& ���� GET</strong>
            </a>
        </div>
        <% end if %>

        <div class="item">
            <a href="/s/gong/event/2023/05100057/index.asp#eventWrap" class="" title="������ġ��">
                <!-- <span class="point"></span> -->
                �� �ѹ��� �հ� ��ȸ�� ����϶�!
                <strong>������ 7�� �ʼ�����: ������ġ��</strong>
            </a>
        </div>
        <div class="item">
            <a href="/s/gong/event/2024/05130042/index.asp#eventWrap" class="" title="����� �հݼַ��">
                <!-- <span class="point"></span> -->
                #���ĺ�_����ȭ #�ܰ�����_����_��
                <strong>2024 ����� ���̳� �հ� �ַ��</strong>
            </a>
        </div>
        <div class="item">
            <a href="/s/gong/event/2023/09060113/index.asp#eventWrap" class="" title="������ ���̳� ">
                <!-- <span class="point"></span> -->
                �������� �� �������� ������ ���� Ÿ��
                <strong>2024 �ް������� ���̳� ���Թ�</strong>
            </a>
        </div>

    </div><!-- / main_eventSlider -->
    <!-- E: [PC] �̺�Ʈ ��� - 1 / main_eventSlider1 -->

    <!-- S: [PC] �̺�Ʈ ��� - 2 / main_eventSlider2 -->
    <div id="main_eventSlider2" class="main_eventSlider palette event2">

        <div class="item">
            <a href="" class="" title="��������">
                <span class="point">���� 50% ����</span>
                �ʻ��� ������� ��ƶ�!
                <strong>���������� �հ� TIP</strong>
            </a>
        </div>
        <div class="item">
            <a href="" class="" title="������ ����� ����">
                <span class="point">���� 50% ����</span>
                1�⿡ 6��, �հ� ��ȸ�� ��ƶ�!
                <strong>�Ϲ������� ����� ����</strong>
            </a>
        </div>
        
        
        <% if cdate(lo_now_date) < cdate("2024-07-12") then %>
        <div class="item">
            <a href="" class="" title="������ �Թ� Ư��">
                <span class="point">5�� �Թ��� ��������</span>
                �հ��� ���� ���ʺ� ��ŸƮ
                <strong>������ �����ȯ: �Թ� Ư�� OPEN</strong>
            </a>
        </div>
        <% elseif cdate(lo_now_date) < cdate("2024-08-01") then %>
        <div class="item">
            <a href="" class="" title="������ �Թ� Ư��">
                <span class="point">�ϰ� ç���� EVENT</span>
                �հ��� ���� ���ʺ� ��ŸƮ
                <strong>2025 �ް������� �����ȯ</strong>
            </a>
        </div>
        <% else %>
        <div class="item">
            <a href="" class="" title="������ �Թ� Ư��">
                �հ��� ���� ���ʺ� ��ŸƮ
                <strong>������ �����ȯ: �Թ� Ư�� OPEN</strong>
            </a>
        </div>
        <% end if %>

    </div><!-- / main_eventSlider -->
    <!-- E: [PC] �̺�Ʈ ��� - 2 / main_eventSlider2 -->

    <!-- S: [PC] �̺�Ʈ ��� - 3 / main_eventSlider3 -->
    <div id="main_eventSlider3" class="main_eventSlider event3">

        <div class="item">
            <a href="/event/2023/12190042/index.asp#eventWrap" class="" title="�ް��н� 10�� ����ü��">
                <!-- <span class="point">EVENT</span> -->
                ������ �� �´� Ŀ��ŧ�� ã��
                <strong><b>�ް��н� 10�� ����ü��</b></strong>
            </a>
        </div>
        <div class="item">
            <a href="<%=lab_main%>/l/share/exam/gong/2024/index.asp#eventWrap" target="_blank" class="" title="2025��� �հݿ��� ������">
                <!-- <span class="point">EVENT</span> -->
                9�� �ʽû� ���ʽǷ� �˾ƺ���!
                <strong><b>2025��� �հݿ��� ������</b></strong>
            </a>
        </div>
        <div class="item">
            <a href="<%=lab_main%>/l/gong/pass_opinion/index.asp" target="_blank" class="" title="������ BEST �հݼ���">
                <!-- <span class="point">EVENT</span> -->
                ��𼭵� ���� �� ���� �հ� ���
                <strong><b>������ BEST �հݼ���</b></strong>
            </a>
        </div>

    </div><!-- / main_eventSlider -->
    <!-- E: [PC] �̺�Ʈ ��� - 3 / main_eventSlider3 -->
  </div>
</div>`;

const css = ``;

const excCss = `.main_wrp .wide_wrap.first{max-height:180px;}`;

const js = `let aspRandom1 = <%=aspArr1%>;
let aspRandom2 = <%=aspArr2%>;
let aspRandom3 = <%=aspArr3%>;

/* --- S: palette ���� --- */
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
/* --- E: palette ���� --- */ 

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
        image="/images/demo/main_banner_evtbanner.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["�н���ǰ","���ι��"]}
        link="<%=url_main%>/megagong.asp"
        onChange={onChange}
      />
    )
  }
</script>