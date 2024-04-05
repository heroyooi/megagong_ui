<!-- #include virtual = "/inc/top.asp"-->
<link rel="stylesheet" href="/common/css/jquery-ui.css" />
<%
dp1 = 2
dp2 = 12
%>
    <!-- #include virtual = "/inc/aside.asp"-->
    
    <div class="page_wrap page_wide" id="page_wrap">

        <div class="page_inner">
            <div class="page_name_wrap">
              <h3 class="page_name">CALENDAR</h3>
              <h3 class="page_name_sub">달력</h3>
              <p class="page_sub_text">메가공무원 사이트에서 통상적으로 사용되는 달력 컴포넌트입니다.<br>
              사용자가 특정 기간 내의 정보를 확인하거나 특정 일자에 관한 서비스를 요청할 때에 사용됩니다.
              </p>
              <div class="page_print"><input type="button" value="인쇄하기" id="print" onclick="window.print()"/></div>

            </div>

            <!--<p class="page_sub_text">여기에 줄글로 설명을 적습니다. 여기에 줄글로 설명을 적습니다. 여기에 줄글로 설명을 적습니다.</p>
            <hr/>-->

<pre class="language-html css"><code><link rel="stylesheet" href="/common/css/jquery-ui.css" /></code></pre>
<pre class="language-html js"><code><script type="text/javascript" src="/common/js/jquery/plug-in/jquery-ui.minify.js"></script></code></pre>
            
            <div class="page_text_wrap">
                <p class="page_head">데이트피커</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <!-- <div class="position_site"><img src="/images/btn.png" alt='버튼위치' ></div> -->
                

<!-- HTML -->
<div class="code-box html"><div class="payWrap">
  <div class="pay_sort">
    <div class="month_area">
      <p class="tit">조회 기간</p>
      <ul class="month_list clearfix">
        <li id="month1"  class="on">
          <a href="#none">1개월</a>
        </li>
        <li id="month3">
          <a href="#none">3개월</a>
        </li>
        <li id="month0">
          <a href="#none">기간설정</a>
        </li>
      </ul>
    </div>
    <div class="dateArea">
      <input type="hidden" name="dt_set_val" id="dt_set_val" value="">
      <a href="#" class="d_bx" onclick="return false;">
        <span class="ico sdt"></span>
        <input type="text" id="DT_STR" name="DT_STR" class="date1" readyonly value="2023-02-03" />
      </a>
      <span class="dash">-</span>
      <a href="#" class="d_bx" onclick="return false;">
        <span class="ico edt"></span>
        <input type="text" id="DT_EDT" name="DT_EDT" class="date1" readyonly value="2023-02-04" />
      </a>
      <a href="#none" class="btn_srch" onclick="fnsrch();">
        <span>조회하기</span>
      </a>
    </div>
  </div>
</div></div>
<script>$("#DT_STR, #DT_EDT").datepicker({
  dateFormat: "yy-mm-dd"
});
$('.sdt').click(function() {
  $("#DT_STR").focus();
});
$('.edt').click(function() {
  $("#DT_EDT").focus();
});</script>

<p class="page_text">메가공무원 사이트에서 다양하게 사용되고 있는 캘린더 기능입니다.<br>
조회기간 및 캘린더 아이콘을 클릭하여 사용자가 희망하는 기간을 설정하고, 해당 기간 동안의 관련 정보를 조회할 수 있습니다. </p> 

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-javascript act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/mypage/bonus/my_point.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#기간조회</p> </li>
                            <li><p>#날짜선택</p> </li>
                            <li><p>#조회하기</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->


            <div class="page_text_wrap">
                <p class="page_head">달력</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <!-- <div class="position_site"><img src="/images/btn.png" alt='버튼위치' ></div> -->
                

<!-- HTML -->
<div class="code-box html"><div class="mg_datepicker_wrp">
  <div class="mg_datepicker" id="mg_datepicker"></div>
  <div class="date_result">
    <input type="text" id="mg_date_result" readonly />
    <select name="time_choice" id="time_choice">
      <option value="">시간 선택</option>
      <option id="hh1000" value="1000" disabled="disabled">10:00</option>
      <option id="hh1030" value="1030">10:30</option>
      <option id="hh1100" value="1100">11:00</option>
      <option id="hh1130" value="1130">11:30</option>
      <option id="hh1200" value="1200">12:00</option>
      <option id="hh1230" value="1230">12:30</option>
      <option id="hh1300" value="1300">13:00</option>
      <option id="hh1330" value="1330">13:30</option>
      <option id="hh1400" value="1400">14:00</option>
      <option id="hh1430" value="1430">14:30</option>
      <option id="hh1500" value="1500">15:00</option>
      <option id="hh1530" value="1530">15:30</option>
      <option id="hh1600" value="1600">16:00</option>
      <option id="hh1630" value="1630">16:30</option>
      <option id="hh1700" value="1700">17:00</option>
      <option id="hh1730" value="1730">17:30</option>
      <option id="hh1800" value="1800">18:00</option>
    </select>
  </div>
</div></div>

<script>
var initDay = '+1';
$('#mg_date_result').val(mgFrontScript.isDay(initDay)); // 명일 선택
var thisDatepicker = $("#mg_datepicker").datepicker({
  dateFormat: 'yy-mm-dd',
  dayNamesMin: ['일','월','화','수','목','금','토'],
  monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
  showOtherMonths: true,
  minDate: initDay,
  maxDate: '14', // <= 공휴일 테스트 필요할 경우 주석달아주세요!!
  beforeShowDay: mgFrontScript.noWeekendsWithHolidays,
  onSelect: function(dateText, inst) {
    var txtDay = mgFrontScript.onSelectPickerDay($(this), dateText);
    $('#mg_date_result').val(txtDay);
  }
});</script>
<style>.mg_datepicker_wrp{max-width:445px;margin: auto;}
.mg_datepicker_wrp .date_result{display: flex;justify-content: space-between;}
.mg_datepicker_wrp .date_result input,
.mg_datepicker_wrp .date_result select{height: 40px;border-color: #000;border-width: 1px;border-style: solid;text-align: center;width: 49%;font-size: 13px;}

.mg_datepicker_wrp .date_result select:disabled{color: #a39b9b;}</style>

<p class="page_text">상담날짜 신청 등의 목적으로 메가공무원 사이트의 다양한 페이지에서 사용되고 있는 캘린더 기능입니다.<br>
캘린더의 날짜부분을 클릭하여 사용자가 희망하는 상담일자을 선택하고 해당 일정으로 상담예약을 신청할 수 있습니다.
</p>

<!-- Code View -->
<pre class="language-html html act direct"><code><div class="mg_datepicker_wrp">
  <div class="mg_datepicker" id="mg_datepicker"></div>
  <div class="date_result">
    <input type="text" id="mg_date_result" readonly />
    <select name="time_choice" id="time_choice">
      <option value="">시간 선택</option>
      <option id="hh1000" value="1000" disabled="disabled">10:00</option>
      <option id="hh1030" value="1030">10:30</option>
      <option id="hh1100" value="1100">11:00</option>
      <option id="hh1130" value="1130">11:30</option>
      <option id="hh1200" value="1200">12:00</option>
      <option id="hh1230" value="1230">12:30</option>
      <option id="hh1300" value="1300">13:00</option>
      <option id="hh1330" value="1330">13:30</option>
      <option id="hh1400" value="1400">14:00</option>
      <option id="hh1430" value="1430">14:30</option>
      <option id="hh1500" value="1500">15:00</option>
      <option id="hh1530" value="1530">15:30</option>
      <option id="hh1600" value="1600">16:00</option>
      <option id="hh1630" value="1630">16:30</option>
      <option id="hh1700" value="1700">17:00</option>
      <option id="hh1730" value="1730">17:30</option>
      <option id="hh1800" value="1800">18:00</option>
    </select>
  </div>
</div></code></pre>
<pre class="language-javascript act direct"><code>var initDay = '+1';
$('#mg_date_result').val(mgFrontScript.isDay(initDay)); // 명일 선택
var thisDatepicker = $("#mg_datepicker").datepicker({
  dateFormat: 'yy-mm-dd',
  dayNamesMin: ['일','월','화','수','목','금','토'],
  monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
  showOtherMonths: true,
  minDate: initDay,
  maxDate: '14', // <= 공휴일 테스트 필요할 경우 주석달아주세요!!
  beforeShowDay: mgFrontScript.noWeekendsWithHolidays,
  onSelect: function(dateText, inst) {
    var txtDay = mgFrontScript.onSelectPickerDay($(this), dateText);
    $('#mg_date_result').val(txtDay);
  }
});</code></pre>
<pre class="language-css act direct"><code>.mg_datepicker_wrp{max-width:445px;}
.mg_datepicker_wrp .date_result{display: flex;justify-content: space-between;}
.mg_datepicker_wrp .date_result input,
.mg_datepicker_wrp .date_result select{height: 40px;border-color: #000;border-width: 1px;border-style: solid;text-align: center;width: 49%;font-size: 13px;}

.mg_datepicker_wrp .date_result select:disabled{color: #a39b9b;}</code></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=gongssel_main%>/c/gongssel/consult/2023/index.asp#eventWrap" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#달력</p> </li>
                            <li><p>#날짜선택</p> </li>
                            <li><p>#시간선택</p> </li>
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
    html {overflow-x:hidden;}
    .ball.fir.ver3 , .ball.fir.ver4, .ball.fir.ver5, .ball.fir.ver6, .ball.fir.ver1 , .ball.fir.ver2 {animation:inherit;}
    .guide-aside {border-right: none; /*background:rgba(255,255,255,0.2);*/ backdrop-filter: blur( 11px );-webkit-backdrop-filter: blur( 11px );}
    .board1 .btn_wrap {float: right;margin-top: 20px;}
    .btn_list {margin-top:0px}
    /* .co-loading{display:block !important;} */
    

    .payWrap .pay_sort{max-width:866px;    margin: auto;}
    </style>

<!-- #include virtual = "/inc/bottom.asp"-->