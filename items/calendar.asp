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
              <h3 class="page_name_sub">�޷�</h3>
              <p class="page_sub_text">�ް������� ����Ʈ���� ��������� ���Ǵ� �޷� ������Ʈ�Դϴ�.<br>
              ����ڰ� Ư�� �Ⱓ ���� ������ Ȯ���ϰų� Ư�� ���ڿ� ���� ���񽺸� ��û�� ���� ���˴ϴ�.
              </p>
              <div class="page_print"><input type="button" value="�μ��ϱ�" id="print" onclick="window.print()"/></div>

            </div>

            <!--<p class="page_sub_text">���⿡ �ٱ۷� ������ �����ϴ�. ���⿡ �ٱ۷� ������ �����ϴ�. ���⿡ �ٱ۷� ������ �����ϴ�.</p>
            <hr/>-->

<pre class="language-html css"><code><link rel="stylesheet" href="/common/css/jquery-ui.css" /></code></pre>
<pre class="language-html js"><code><script type="text/javascript" src="/common/js/jquery/plug-in/jquery-ui.minify.js"></script></code></pre>
            
            <div class="page_text_wrap">
                <p class="page_head">����Ʈ��Ŀ</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <!-- <div class="position_site"><img src="/images/btn.png" alt='��ư��ġ' ></div> -->
                

<!-- HTML -->
<div class="code-box html"><div class="payWrap">
  <div class="pay_sort">
    <div class="month_area">
      <p class="tit">��ȸ �Ⱓ</p>
      <ul class="month_list clearfix">
        <li id="month1"  class="on">
          <a href="#none">1����</a>
        </li>
        <li id="month3">
          <a href="#none">3����</a>
        </li>
        <li id="month0">
          <a href="#none">�Ⱓ����</a>
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
        <span>��ȸ�ϱ�</span>
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

<p class="page_text">�ް������� ����Ʈ���� �پ��ϰ� ���ǰ� �ִ� Ķ���� ����Դϴ�.<br>
��ȸ�Ⱓ �� Ķ���� �������� Ŭ���Ͽ� ����ڰ� ����ϴ� �Ⱓ�� �����ϰ�, �ش� �Ⱓ ������ ���� ������ ��ȸ�� �� �ֽ��ϴ�. </p> 

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-javascript act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/mypage/bonus/my_point.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#�Ⱓ��ȸ</p> </li>
                            <li><p>#��¥����</p> </li>
                            <li><p>#��ȸ�ϱ�</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->


            <div class="page_text_wrap">
                <p class="page_head">�޷�</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <!-- <div class="position_site"><img src="/images/btn.png" alt='��ư��ġ' ></div> -->
                

<!-- HTML -->
<div class="code-box html"><div class="mg_datepicker_wrp">
  <div class="mg_datepicker" id="mg_datepicker"></div>
  <div class="date_result">
    <input type="text" id="mg_date_result" readonly />
    <select name="time_choice" id="time_choice">
      <option value="">�ð� ����</option>
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
$('#mg_date_result').val(mgFrontScript.isDay(initDay)); // ���� ����
var thisDatepicker = $("#mg_datepicker").datepicker({
  dateFormat: 'yy-mm-dd',
  dayNamesMin: ['��','��','ȭ','��','��','��','��'],
  monthNamesShort: ['1��','2��','3��','4��','5��','6��','7��','8��','9��','10��','11��','12��'],
  showOtherMonths: true,
  minDate: initDay,
  maxDate: '14', // <= ������ �׽�Ʈ �ʿ��� ��� �ּ��޾��ּ���!!
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

<p class="page_text">��㳯¥ ��û ���� �������� �ް������� ����Ʈ�� �پ��� ���������� ���ǰ� �ִ� Ķ���� ����Դϴ�.<br>
Ķ������ ��¥�κ��� Ŭ���Ͽ� ����ڰ� ����ϴ� ��������� �����ϰ� �ش� �������� ��㿹���� ��û�� �� �ֽ��ϴ�.
</p>

<!-- Code View -->
<pre class="language-html html act direct"><code><div class="mg_datepicker_wrp">
  <div class="mg_datepicker" id="mg_datepicker"></div>
  <div class="date_result">
    <input type="text" id="mg_date_result" readonly />
    <select name="time_choice" id="time_choice">
      <option value="">�ð� ����</option>
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
$('#mg_date_result').val(mgFrontScript.isDay(initDay)); // ���� ����
var thisDatepicker = $("#mg_datepicker").datepicker({
  dateFormat: 'yy-mm-dd',
  dayNamesMin: ['��','��','ȭ','��','��','��','��'],
  monthNamesShort: ['1��','2��','3��','4��','5��','6��','7��','8��','9��','10��','11��','12��'],
  showOtherMonths: true,
  minDate: initDay,
  maxDate: '14', // <= ������ �׽�Ʈ �ʿ��� ��� �ּ��޾��ּ���!!
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
                            <li><p>#�޷�</p> </li>
                            <li><p>#��¥����</p> </li>
                            <li><p>#�ð�����</p> </li>
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