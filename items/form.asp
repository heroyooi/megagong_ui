<!-- #include virtual = "/inc/top.asp"-->
<link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/megagong_common_lab.css" />
<script src="<%=url_main%>/common/js/ui_lab.js"></script>
<%
dp1 = 2
dp2 = 8
%>
    <!-- #include virtual = "/inc/aside.asp"-->
    
    <div class="page_wrap page_wide" id="page_wrap">

        <div class="page_inner">
            <div class="page_name_wrap">
              <h3 class="page_name">FORM</h3>
              <h3 class="page_name_sub">��</h3>
              <p class="page_sub_text">�ް��������� �پ��� ���������� ���Ǵ� �� ����Դϴ�.<br>
              ����ڰ� ������ �Է��Ͽ� �ް������� ����Ʈ�� ������ �����ϸ�, �ش� ������ �������� ����ڿ��� �ʿ��� �پ��� ���񽺸� �����ϰ� �ֽ��ϴ�.<br>
              ������ ��û�� �ִ� ��� �ܿ��� ���� �� ����� �������� �۾��ϴ� ���� ��Ģ���� �մϴ�.</p>
              <div class="page_print"><input type="button" value="�μ��ϱ�" id="print" onclick="window.print()"/></div>
            </div>

<pre class="language-html css"><code><link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/megagong_common_lab.css" /></code></pre>
<pre class="language-html js"><code><script src="<%=url_main%>/common/js/ui_lab.js"></script></code></pre>


            <!--<p class="page_sub_text">���⿡ �ٱ۷� ������ �����ϴ�. ���⿡ �ٱ۷� ������ �����ϴ�. ���⿡ �ٱ۷� ������ �����ϴ�.</p>
            <hr/>-->



            <div class="page_text_wrap">
                <p class="page_head">�հ�����LAB �������� - ����Ʈ �ڽ� 5�� ����</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <div class="position_site"><img src="/images/form1.png" alt='��ġ' ></div>
                

<!-- HTML -->
<div class="code-box html"><div class="select-wrp">
  <ul>
    <li class="choice-box">
      <span class="select-base">
        <span class="value"></span>
        <select id="exam_apptype" name="exam_apptype">
          <option value="1" selected>�Ϲ�����</option>
          <option value="2">�����</option>
          <option value="3">���ҵ�</option>
        </select>
      </span>								
    </li>
    <li class="choice-box">
      <span class="select-base">
        <span class="value"></span>
        <select id="exam_grp" name="exam_grp">
          <option value="101">��������</option>
          <option value="102">�������</option>
        </select>
      </span>								
    </li>
    <li class="choice-box">
      <span class="select-base">
        <span class="value"></span>
        <select id="exam_dpt" name="exam_dpt">
          <option value="011" selected>������</option>
          <option value="012">������</option>
          <option value="032">���������</option>
          <option value="033">������</option>
          <option value="034">�����</option>
          <option value="035">������</option>
          <option value="036">��ȣ��</option>
          <option value="037">������</option>
          <option value="038">���������</option>
          <option value="039">���Ա�������</option>
          <option value="040">ö��������</option>
        </select>
      </span>								
    </li>
    <li class="choice-box">
      <span class="select-base">
        <span class="value"></span>
        <select id="exam_dpt2" name="exam_dpt2">
          <option value="004">���뵿</option>
          <option value="006">��������</option>
          <option value="033">��������</option>
          <option value="053" selected>�Ϲ�����</option>
          <option value="054">�Ϲ�����(����)</option>
          <option value="057">�Ϲ�����(����)</option>
        </select>
      </span>								
    </li>
    <li class="choice-box" id="li_exam_area">
      <span class="select-base">
        <span class="value"></span>
        <select id="exam_area" name="exam_area">
          <option value="10">���ѹα�</option>
        </select>
      </span>								
    </li>
    <li class="choice-box">
      <span class="select-base">
        <span class="value"></span>
        <select id="exam_area2" name="exam_area2">
          <option value="111">����</option>
          <option value="113">�λ�</option>
          <option value="114" selected>����</option>
          <option value="115">����</option>
          <option value="116">����</option>
          <option value="118">��ꡤ�泲</option>
          <option value="120">���֡�����</option>
          <option value="121">�뱸�����</option>
          <option value="122">�������������泲�����</option>
          <option value="123">�����õ�����</option>
        </select>
      </span>								
    </li>
  </ul>
</div></div>

<p class="page_text">�ް��������� �հ����� �����ҿ��� ���Ǵ� ����Դϴ�.<br> 
���ùڽ��� ���Ͽ� ����ڰ� ã�⸦ ����ϴ� ����, ������ �������� ���� ã�ƺ� �� �ֽ��ϴ�.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=lab_main%>/l/gong/guide/series.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#�հ�����</p> </li>
                            <li><p>#�����˻�</p> </li>
                            <li><p>#��������</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->






            <div class="page_text_wrap">
                <p class="page_head">�հ�����LAB - ����TV</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <div class="position_site"><img src="/images/form1.png" alt='��ġ' ></div>
                

<!-- HTML -->
<div class="code-box html"><div class="select-wrp">
  <ul>
    <li class="choice-box">
      <span class="select-base">
        <span class="value"></span>
        <select>
          <option value="0" selected>����</option>
          <option value="1">Value 1</option>
          <option value="2">Value 2</option>
          <option value="3">Value 3</option>
        </select>
      </span>								
    </li>
    <li class="text-box"><input type="text"></li>
    <li class="search-box"><a href="">�˻�</a></li>
  </ul>
</div></div>

<p class="page_text">�ް��������� �հ����� �����ҿ��� ���Ǵ� ����Դϴ�.<br> �˻�â�� ���Ͽ� ����ڰ� ã�⸦ ����ϴ� ���� ���� ������ ã�ƺ� �� �ֽ��ϴ�.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=lab_main%>/l/gong/nangongtv/list.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#����TV</p> </li>
                            <li><p>#�հ�����</p> </li>
                            <li><p>#�����˻�</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->





            <div class="page_text_wrap" id="page_exp1">
                <p class="page_head">�հ�����LAB - ���� �հ�����</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <div class="position_site"><img src="/images/form1.png" alt='��ġ' ></div>
                

<!-- HTML -->
<div class="code-box html"><div class="select-wrp">
  <ul>
    <li class="choice-box">
      <span class="select-base">
        <span class="value"></span>
        <select>
          <option value="0" selected>��ü</option>
          <option value="1">Value 1</option>
          <option value="2">Value 2</option>
          <option value="3">Value 3</option>
        </select>
      </span>								
    </li>					
    <li class="choice-box">
      <span class="select-base">
        <span class="value"></span>
        <select>
          <option value="0" selected>����</option>
          <option value="1">Value 1</option>
          <option value="2">Value 2</option>
          <option value="3">Value 3</option>
        </select>
      </span>								
    </li>
    <li class="text-box"><input type="text"></li>
    <li class="search-box"><a href="">�˻�</a></li>
  </ul>
</div></div>

<style>#page_exp1 .select-wrp ul li {padding:5px 15px;}</style>

<p class="page_text">�ް��������� �հ����� �����ҿ��� ���Ǵ� ����Դϴ�.<br> 
�˻�â�� ���Ͽ� ����ڰ� ã�⸦ ����ϴ� �н����� ���� ������ ã�ƺ� �� �ֽ��ϴ�. </p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=lab_main%>/l/gong/strategy/list.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#�հ�����</p> </li>
                            <li><p>#�����˻�</p> </li>
                            <li><p>#����˻�</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->




            <div class="page_text_wrap" id="page_exp2">
                <p class="page_head">�հ�����LAB - ���⹮��</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <div class="position_site"><img src="/images/form1.png" alt='��ġ' ></div>
                

<!-- HTML -->
<div class="code-box html"><div class="library-wrp">
  <div class="select-wrp">
    <ul>
      <li class="choice-box">
        <span class="select-base">
          <span class="value"></span>
          <select id="library_sel2" name="year">
            <option value="" selected>�⵵</option>
            <option value="2022">2022</option>
            <option value="2021">2021</option>
            <option value="2020">2020</option>
            <option value="2019">2019</option>
            <option value="2018">2018</option>
          </select>
        </span>								
      </li>
      <li class="choice-box">
        <span class="select-base">
          <span class="value"></span>
          <select id="library_sel1" name="cate" onchange="setGrd(); resetSelector(1);">
            <option selected value="">����</option>
            <option value="1">������</option>
            <option value="2">������</option>
            <option value="7">������</option>
            <option value="8">�踮��</option>
          </select>
        </span>								
      </li>
      <li class="choice-box">
        <span class="select-base">
          <span class="value"></span>
          <select id="library_sel5" name="grd" onchange="getSub(); resetSelector(2);">
            <option selected value="">���</option>
            <option value="5">9��</option>
            <option value="6">7��</option>
          </select>
        </span>								
      </li>
      <li class="choice-box">
        <span class="select-base">
          <span class="value"></span>
          <select id="library_sel3" name="sub"><option value="">��ü</option><option value="������">������</option><option value="����">����</option><option value="������">������</option><option value="��ȣ����">��ȣ����</option><option value="�����ȹ">�����ȹ</option><option value="���౸��">���౸��</option><option value="�����а���">�����а���</option><option value="����ȭ��">����ȭ��</option><option value="�������Ź�">�������Ź�</option><option value="����������">����������</option><option value="�����а���">�����а���</option><option value="�����а���">�����а���</option><option value="����������">����������</option><option value="��輳��">��輳��</option><option value="����Ϲ�">����Ϲ�</option><option value="��Ʈ��ũ����">��Ʈ��ũ����</option><option value="�뵿������">�뵿������</option><option value="�������а���">�������а���</option><option value="��ȸ�����а���">��ȸ�����а���</option><option value="��Ȳ�Ǵ�">��Ȳ�Ǵ�</option><option value="��������">��������</option><option value="�Ŀ��۹�">�Ŀ��۹�</option><option value="����������">����������</option><option value="����">����</option><option value="���뿪�а���">���뿪�а���</option><option value="�Ӿ��濵">�Ӿ��濵</option><option value="�ڷ���������">�ڷ���������</option><option value="�糭������">�糭������</option><option value="����а���">����а���</option><option value="������">������</option><option value="�����̷�">�����̷�</option><option value="���ڰ��а���">���ڰ��а���</option><option value="������ȣ��">������ȣ��</option><option value="�������簳��">�������簳��</option><option value="������">������</option><option value="����">����</option><option value="���漼��">���漼��</option><option value="������ȸ��ȣ">������ȸ��ȣ</option><option value="��������">��������</option><option value="���������а���">���������а���</option><option value="��������">��������</option><option value="������㡤�ɸ��а���">������㡤�ɸ��а���</option><option value="��ǻ���Ϲ�">��ǻ���Ϲ�</option><option value="��񼳰�">��񼳰�</option><option value="����а���">����а���</option><option value="����̷�">����̷�</option><option value="�ѱ���">�ѱ���</option><option value="�������ѷ�">�������ѷ�</option><option value="�����а���">�����а���</option><option value="����">����</option><option value="�����ѷ�">�����ѷ�</option><option value="����Ҽ۹�">����Ҽ۹�</option><option value="����Ҽ۹�����">����Ҽ۹�����</option><option value="ȭ��">ȭ��</option><option value="ȭ�а����Ϲ�">ȭ�а����Ϲ�</option><option value="ȯ����а���">ȯ����а���</option><option value="ȸ�����">ȸ�����</option><option value="ȸ����">ȸ����</option></select>
        </span>								
      </li>
      <li class="choice-box">
        <span class="select-base">
          <span class="value"></span>
          <select id="library_sel4" name="searchkey">
              <option value="subject">����</option>
            </select>
        </span>								
      </li>
      <li class="text-box short"><input id="searchword" name="searchword" type="text" value="<%=searchword%>"></li>
      <li class="search-box" onclick="getList();"><a href="javascript:void(0);">�˻�</a></li>
    </ul>
  </div>
</div></div>

<style>#page_exp2 .select-wrp ul li{padding:5px 10px;}</style>

<p class="page_text">�ް��������� �հ����� �����ҿ��� ���Ǵ� ����Դϴ�.<br> �˻�â�� ���Ͽ� ����ڰ� ã�⸦ ����ϴ� �⵵�� ���� ���⹮���� ã�ƺ� �� �ֽ��ϴ�. </p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=lab_main%>/l/gong/library/list.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#�հ�����</p> </li>
                            <li><p>#���⹮��</p> </li>
                            <li><p>#�����˻�</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->




            
            <div class="page_text_wrap">
                <p class="page_head">�Ⱓ �˻� ����</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <div class="position_site"><img src="/images/table1.png" alt='��ġ' ></div>
                

<!-- HTML -->
<div class="code-box html"><div id="mContainer" class="wideC">
  <div class="payWrap">
    <div class="pay_sort">
      <p>��ȸ �Ⱓ</p>
      <div class="month_area">
        <ul class="month_list clearfix">
          <li class="on">
            <a href="javascript:void(0);">1����</a>
          </li>
          <li>
            <a href="javascript:void(0);">3����</a>
          </li>
          <li class="last ">
            <a href="javascript:void(0);">�Ⱓ����</a>
          </li>
        </ul>
      </div>
      <div class="dateArea">
        <a href="#" onclick="return false;" class="d_bx">
          <span class="ico sdt"></span>
          <input type="text" id="sdt" name="sdt" class="date1" readyonly value="2022-04-20"/>
        </a>
        <span class="dash">-</span>
        <a href="#" onclick="return false;" class="d_bx">
          <span class="ico edt"></span>
          <input type="text" id="edt" name="edt" class="date1" readyonly value="2022-05-20"/>
        </a>
        <a href="javascript:void(0);" class="btn_srch">
          <span>��ȸ�ϱ�</span>
        </a>
      </div>
    </div><!-- .pay_sort -->
  </div><!-- .payWrap -->
</div><!-- #mContainer --></div>

<!-- CSS -->
<div class="code-box css"><link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/jquery-ui.css?now=<%=val4css%>" />
</div>
<style>
</style>

<!-- JS -->
<script src="<%=url_main%>/common/js/jquery/plug-in/jquery-ui.js"></script>
<script>$('.month_area .month_list li').click(function(){
  if(!$(this).hasClass("on")){
    $(this).parents().find('.month_list li').removeClass("on");
    $(this).addClass("on");
  }else{
    $(this).removeClass('on');
  }
});

$( "#sdt, #edt" ).datepicker({
  dateFormat: "yy-mm-dd"
});
$('.sdt').click(function() {
  $("#sdt").focus();
});
$('.edt').click(function() {
  $("#edt").focus();
});
function fncSetMonth(e) {
  if (0!=e){
    document.location.href = "?smm="+e;
  }
}
function fncSearch(){
  var sdt = $("#sdt").val();
  var edt = $("#edt").val();
  document.location.href = "?sdt="+sdt+"&edt="+edt;
}
</script>


<p class="page_text">���� ���� �ֹ�/��� ��Ȳ�� Ȯ���� �� �ֵ��� ���� �� ����Դϴ�.<br> ���� �Ⱓ�� �����Ͽ� ��ȸ�ϸ� �ش� �Ⱓ ���ȿ� �ֹ� �� ��۵� ����� Ȯ���غ� �� �ֽ��ϴ�. </p>

<!-- Code View -->
<pre class="language-html html act direct"><code><div id="mContainer" class="wideC">
  <div class="payWrap">
    <div class="pay_sort">
      <p>��ȸ �Ⱓ</p>
      <div class="month_area">
        <ul class="month_list clearfix">
          <li class="on">
            <a href="javascript:fncSetMonth(1);">1����</a>
          </li>
          <li>
            <a href="javascript:fncSetMonth(3);">3����</a>
          </li>
          <li class="last ">
            <a href="javascript:fncSetMonth(0);">�Ⱓ����</a>
          </li>
        </ul>
      </div>
      <div class="dateArea">
        <a href="#" onclick="return false;" class="d_bx">
          <span class="ico sdt"></span>
          <input type="text" id="sdt" name="sdt" class="date1" readyonly value="2022-04-20"/>
        </a>
        <span class="dash">-</span>
        <a href="#" onclick="return false;" class="d_bx">
          <span class="ico edt"></span>
          <input type="text" id="edt" name="edt" class="date1" readyonly value="2022-05-20"/>
        </a>
        <a href="javascript:fncSearch();" class="btn_srch">
          <span>��ȸ�ϱ�</span>
        </a>
      </div>
    </div><!-- .pay_sort -->
  </div><!-- .payWrap -->
</div><!-- #mContainer --></code></pre>
<pre class="language-html css act direct"><code><link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/jquery-ui.css?now=<%=val4css%>" /></code></pre>
<pre class="language-javascript act direct"><code>$('.month_area .month_list li').click(function(){
  if(!$(this).hasClass("on")){
    $(this).parents().find('.month_list li').removeClass("on");
    $(this).addClass("on");
  }else{
    $(this).removeClass('on');
  }
});

$( "#sdt, #edt" ).datepicker({
  dateFormat: "yy-mm-dd"
});
$('.sdt').click(function() {
  $("#sdt").focus();
});
$('.edt').click(function() {
  $("#edt").focus();
});
function fncSetMonth(e) {
  if (0!=e){
    document.location.href = "?smm="+e;
  }
}
function fncSearch(){
  var sdt = $("#sdt").val();
  var edt = $("#edt").val();
  document.location.href = "?sdt="+sdt+"&edt="+edt;
}</code></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/mypage/order/my_order.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#�Ⱓ�˻�</p> </li>
                            <li><p>#����������</p> </li>
                            <li><p>#��ȸ</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->






            <div class="page_text_wrap">
                <p class="page_head">��û �˾� ���� ��</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <div class="position_site"><img src="/images/popup4.png" alt='��ġ' ></div>
                

<!-- HTML -->
<div class="code-box html"><div id="pop_wrap">
  <div class="cont">
    <form method="post" action>
      <div class="apply_zone">
        <div class="write_info">
          <strong>����ȸ �� ����Ư�� ��û</strong>
          <p class="subTitle">����ȸ �� ����Ư�� �� ���ǰ�� �¼� ���� �����Ǿ� �ֽ��ϴ�.</p>
          <p class="subTitle2"><strong>�¶��� ������ �Ͻø� ���� ���ϰ� �����Ͻ� �� �ֽ��ϴ�.</strong></p>
          <div class="reservationInfo">
            <ul>
              <li><img src="<%=img_main %>/c/gongssel/presentation/icon_presentation.png" alt="" /> <strong>[����ȸ] 5/20(��) 15�� �н����� ����ȸ</strong></li>
              <li>�� �Ͻ�: 2022-05-20(��) ���� 3��</li>
              <li>�� ���: �ް����͵�Ÿ�� 3��</li>
            </ul>
          </div>
          <table class="t_border1" title="����ȸ �����ϱ�">
            <colgroup>
              <col width="20%"/>
              <col width="80%"/>
            </colgroup>
            <tr>
              <th><label for="app_mem_name">�̸�<i>*</i></label></th>
              <td>
                <% If cook_id = "" Then %>
                <span><input type="text" id="app_mem_name" name="app_mem_name" value="" title="�̸�" maxlength="10"></span>
                <% Else %>
                <span class="readonly"><input type="text" id="app_mem_name" name="app_mem_name" value="<%=cook_name%>(<%=cook_id%>)" title="�̸�" readonly></span>
                <% End If %>
              </td>
            </tr>
            <tr>
              <th><label for="hp_no_1">����ó<i>*</i></label></th>
              <td class="numberbox">
                <ul>
                  <li>
                    <span>
                      <select id="hp_no_1" name="hp_no_1" title="�޴�����ȣ ���ڸ� ����">
                        <option value="010" <%If hp_no_1="010" Then Response.write "selected" End If%>>010</option>
                        <option value="011" <%If hp_no_1="011" Then Response.write "selected" End If%>>011</option>
                        <option value="016" <%If hp_no_1="016" Then Response.write "selected" End If%>>016</option>
                        <option value="017" <%If hp_no_1="017" Then Response.write "selected" End If%>>017</option>
                        <option value="018" <%If hp_no_1="018" Then Response.write "selected" End If%>>018</option>
                        <option value="019" <%If hp_no_1="019" Then Response.write "selected" End If%>>019</option>
                      </select>
                    </span>
                  </li>
                  <li>
                    <span><input type="text" id="hp_no_2" name="hp_no_2" value="<%=hp_no_2%>" onkeyup="fncNumChk2(this);" maxlength="4" title="�޴�����ȣ �߰� 4�ڸ� �Է�"></span>
                  </li>
                  <li>
                    <span><input type="text" id="hp_no_3" name="hp_no_3" value="<%=hp_no_3%>" onkeyup="fncNumChk2(this);" maxlength="4" title="�޴�����ȣ �� 4�ڸ� �Է�"></span>
                  </li>
                </ul>
              </td>
            </tr>
            <tr>
              <th><label>���� ����<i>*</i></label></th>
              <td>
                <ul class="relation">
                  <li><input type="checkbox" name="app_exam" value="9��" id="relation_1" /> <label for="relation_1">9��</label></li>
                  <li><input type="checkbox" name="app_exam" value="7��" id="relation_2" /> <label for="relation_2">7��</label></li>
                  <li><input type="checkbox" name="app_exam" value="������" id="relation_7" /> <label for="relation_7">������</label></li>
                  <li><input type="checkbox" name="app_exam" value="����/����/������" id="relation_3" /> <label for="relation_3">����/����/������</label></li>
                  <li><input type="checkbox" name="app_exam" value="����/������" id="relation_4" /> <label for="relation_4">����/������</label></li>
                  <li><input type="checkbox" name="app_exam" value="��ȸ������" id="relation_5" /> <label for="relation_5">��ȸ������</label></li>
                  <li><input type="checkbox" name="app_exam" value="��Ÿ" id="relation_6" /> <label for="relation_6">��Ÿ</label></li>
                  <li><input type="text" name="app_exam_desc" value="" id="app_exam_desc" style="border:1px solid gray; width:200px;" maxlength="200"/></li>
                </ul>
              </td>
            </tr>
            <tr>
              <th><label>����<i>*</i></label></th>
              <td>
                <span>
                  <select id="app_lo" name="app_lo" title="���� ����">
                    <option value="">����</option>
                    <option value="����">����</option>
                    <option value="�λ�">�λ�</option>
                    <option value="�뱸">�뱸</option>
                    <option value="��õ">��õ</option>
                    <option value="����">����</option>
                    <option value="����">����</option>
                    <option value="���">���</option>
                    <option value="���">���</option>
                    <option value="����">����</option>
                    <option value="�泲">�泲</option>
                    <option value="���">���</option>
                    <option value="����">����</option>
                    <option value="����">����</option>
                    <option value="����">����</option>
                    <option value="�泲">�泲</option>
                    <option value="���">���</option>
                    <option value="����">����</option>
                    <option value="��Ÿ">��Ÿ</option>
                  </select>
                </span>
              </td>
            </tr>
            <tr>
              <th><label>����<i>*</i></label></th>
              <td>
                <span>
                  <select id="app_type" name="app_type" title="���� ����">
                    <option value="">����</option>
                    <option value="���л�">���л�</option>
                    <option value="���л�">���л�</option>
                    <option value="������">������</option>
                    <option value="��Ÿ">��Ÿ</option>
                  </select>
                </span>
              </td>
            </tr>
            <tr>
              <th><label>�غ�Ⱓ<i>*</i></label></th>
              <td>
                <ul class="relation">
                  <li><input type="radio" name="app_term" value="0~6����" id="ready_1" /> <label for="ready_1">0~6����</label></li>
                  <li><input type="radio" name="app_term" value="1�� �̸�" id="ready_2" /> <label for="ready_2">1�� �̸�</label></li>
                  <li><input type="radio" name="app_term" value="2�� �̸�" id="ready_3" /> <label for="ready_3">2�� �̸�</label></li>
                  <li><input type="radio" name="app_term" value="3�� �̸�" id="ready_4" /> <label for="ready_4">3�� �̸�</label></li>
                  <li><input type="radio" name="app_term" value="4�� �̻�" id="ready_5" /> <label for="ready_5">4�� �̻�</label></li>
                </ul>
              </td>
            </tr>
            <tr>
              <th><label>����Ƚ��<i>*</i></label></th>
              <td>
                <ul class="relation">
                  <li><input type="radio" name="app_apply" value="0ȸ" id="count_1" /> <label for="count_1">0ȸ</label></li>
                  <li><input type="radio" name="app_apply" value="1ȸ" id="count_2" /> <label for="count_2">1ȸ</label></li>
                  <li><input type="radio" name="app_apply" value="2ȸ" id="count_3" /> <label for="count_3">2ȸ</label></li>
                  <li><input type="radio" name="app_apply" value="3ȸ" id="count_4" /> <label for="count_4">3ȸ</label></li>
                  <li><input type="radio" name="app_apply" value="4ȸ �̻�" id="count_5" /> <label for="count_5">4ȸ �̻�</label></li>
                </ul>
              </td>
            </tr>
            <% if PM_TYPE = "3" then 	' ���ǰ�� X %>
            <input type="radio" name="app_companion" value="0" checked style="display:none;" />
            <textarea id='app_mem_question' style="display:none;" ></textarea>
            <% else %>
            <tr>
              <th><label>�����ο�<i>*</i></label></th>
              <td>
                <ul class="relation">
                  <li><input type="radio" name="app_companion" value="0" id="person_1" /> <label for="person_1">0��</label></li>
                  <li><input type="radio" name="app_companion" value="1" id="person_2" /> <label for="person_2">1��</label></li>
                  <li><input type="radio" name="app_companion" value="2" id="person_3" /> <label for="person_3">2��</label></li>
                  <li><input type="radio" name="app_companion" value="3" id="person_4" /> <label for="person_4">3��</label></li>
                  <li><input type="radio" name="app_companion" value="4" id="person_5" /> <label for="person_5">4�� �̻�</label></li>
                </ul>
              </td>
            </tr>
            <tr>
              <th><label>�ñ��� ����</label></th>
              <td>
                <textarea id='app_mem_question' placeholder="- ��� ���� �����̳� �ñ��� ������ �����Ӱ� �ۼ����ּ���.&#13;&#10;- ������ 200�� ���Ϸ� �ۼ����ּ���."></textarea>
              </td>
            </tr>
            <% end if %>
          </table>
          <p>*��û���� �޴������� ���� ������ �߼۵ǹǷ� ����ó�� ��Ȯ�� �Է����ּ���.</p>
        </div>

        <div class="privacy_box">
          <% If cook_id <> "" Then %>
          <!-- ȸ�� / -->
          <strong>1. �������� ���� �̿� ����</strong>
          <span>����ȸ �� ����Ư�� �� ���ǰ�� �ȳ� �� SMS �߼� � Ȱ��</span>
          <strong>2. �������� ���� �׸� �� ���� �Ⱓ</strong>
          <span>�̸�, ����ó, ���� ����, ����, ����, �غ�Ⱓ, ����Ƚ��, �����ο�, �ñ��� ������ ȸ�� Ż�� �� ȸ���ڰ��� �����Ǵ� �Ⱓ ����</span>
          <strong>3. ������������ ���ǰźο� ���� ������</strong>
          <span>���ϴ� �������� ���� ���Ǹ� �ź��� �� ������ ���� �źο� ���� �������� ������, �� ���������� �¶��� �������࿡ �ݵ�� �ʿ��� ��������, �ź��Ͻ� ��� �¶��� ���������� �Ұ����� �˷��帳�ϴ�.</span>
          <% Else %>
          <!-- ��ȸ�� / -->
          <strong>1. �������� ���� �̿� ����</strong>
          <span>����ȸ �� ����Ư�� �� ���ǰ�� �ȳ� �� SMS �߼� � Ȱ��</span>
          <strong>2. �������� ���� �׸� �� ���� �Ⱓ</strong>
          <span>�̸�, ����ó, ���� ����, ����, ����, �غ�Ⱓ, ����Ƚ��, �����ο�, �ñ��� ������ ����ȸ �� ����Ư�� �� ���ǰ�� ���� �Ѵ� ���� �Ⱓ ����</span>
          <strong>3. ������������ ���ǰźο� ���� ������</strong>
          <span>���ϴ� �������� ���� ���Ǹ� �ź��� �� ������ ���� �źο� ���� �������� ������, �� ���������� �¶��� �������࿡ �ݵ�� �ʿ��� ��������, �ź��Ͻ� ��� �¶��� ���������� �Ұ����� �˷��帳�ϴ�.</span>
          <% End If %>
        </div>

        <p class="privacy_check">
          <input type="checkbox" id="app_mem_agree_yn" name="app_mem_agree_yn" value="Y">
          <label for="app_mem_agree_yn">�������� ���� �� �̿뿡 �����մϴ�.</label>
        </p>
      </div>
    </form>
  </div>
  <div class="btnbox">
    <a href="javascript:;" onclick="reservX();" class="reserv_ok" title="�����ϱ�">�����ϱ�</a>
  </div>
</div></div>

<!-- CSS -->
<div class="code-box css"><link rel="stylesheet" href="<%=url_main%>/c/gongssel/presentation/style.css" />
</div>
<style>
</style>

<!-- JS -->
<script>
</script>

<p class="page_text">����ȸ, ����Ư�� �� ���ǰ�� ���� ��Ȳ���� ������� ������ ���� �޴� ��û ���Դϴ�.<br>
��û ���� ������ �� �ڵ� ����� ������ �԰��� ������ ���� ��Ģ���� �մϴ�.
</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-html css act"></pre>


                <div class="page_bot_wrap">
                    <a class="use_link" href="https://ngbr.megagong.net/r/ngbr/apply/index.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#����ȸ</p> </li>
                            <li><p>#����</p> </li>
                            <li><p>#����</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->






              <div class="page_text_wrap">
                <p class="page_head">�������� - ���� �� üũ </p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <div class="position_site"><img src="/images/popup4.png" alt='��ġ' ></div>
                

<!-- HTML -->
<div class="code-box html"><div class="content_area">
  <div class="content_inner">
    <a href="javascript:;" class="mg_popup_close" onclick="closeCertifiedPopup()"></a>
    <p class="b_tit">��63ȸ �ѱ���ɷ°������� <br>���� �����ϱ� </p>
    
    <div class="mg_tb_wrap">
      <table summary="���� ����" class="mg_tb_form">
        <colgroup>
            <col width="25%">
            <col width="*">
        </colgroup>
        <tbody>
          <tr>
            <th scope="row">���� �̹���</th>
            <td>
              <div class="mg_filebox clfix">
                <div class="filename">
                  <input type="text" id="filename" name="filename" value="���� �̹����� ���ε��� �ּ���.">
                  <a id="btn_fileDel" href="javascript:void(0);" onclick="document.getElementById('filename').value='���� �̹����� ���ε��� �ּ���.';document.getElementById('attfile').value='';document.getElementById('attfile_ori_name').value=''; $('#btn_fileDel').show();" title="����">[����]</a>
                </div>
                <div class="filebtn">
                  <label for="attfile" style="cursor:pointer">���� ����</label>
                </div>
                <input type="file" id="attfile" name="attfile" value="" onchange="ChangeFile(this, 'filename')">
                <input type="hidden" name="attfile_file_name" id="attfile_name" value="">
                <input type="hidden" name="attfile_size" id="attfile_size">
                <input type="hidden" name="attfile_url" id="attfile_url">
                <input type="hidden" name="attfile_file_name_ori" id="attfile_ori_name" value="">
              </div>
            </td>
          </tr>
          <tr>
            <th scope="row">����</th>
            <td class="text_box">
              <textarea class="mg_textarea" name="p_intro" id="edContent" cols="30" rows="10" maxlength="500" placeholder="���� �ı�� 10�� �̻� 500�� ���Ϸ� �ۼ� �����մϴ�."></textarea>
              <p class="rest_txt color_grey">
                [<span class="textCount" id="edContent_cnt">0</span><span class="textTotal">/500]</span>
              </p>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
    <ul class="mg_s_info">
      <li>�� �� 63ȸ �ѱ���ɷ°������� ���� �ÿ��� ������ �����˴ϴ�. </li>
      <li>�� �̹����� 5MB ������ jpg, jpeg, gif �Ǵ� png ���ϸ� ���ε� �����մϴ�.</li>
      <li>�� ������ 10�� �̻� 500�� ���Ϸ� �ۼ� �����մϴ�.</li>
      <li>�� �̺�Ʈ ������ ���� ���� ��, �弳�����, Ÿ ���簡 ��޵� �� ���� ������ ���� ���� �����Ǹ� ��÷ ��󿡼� ���ܵ˴ϴ�.</li>
    </ul>
    <div class="mg_btn_wrap">
      <a href="javascript:;" class="mg_btn_base xl" onclick="cert()">���� �����ϱ� &gt;</a>
    </div>
  </div>
</div></div>

<!-- CSS -->
<style>.b_tit {font-size: 30px;font-weight: bold;color: #000;text-align: center;font-family: "NotoSans KR", sans-serif;line-height: 1.4;}
.mg_s_info {margin-top: 4px;}
.mg_s_info li {font-size: 13px;padding-left: 0px;letter-spacing: -1px;    position: relative;     color: #b5b5b6;margin-top: 0;}
.mg_s_info li:first-child {margin-top: 0;}
.content_area .mg_btn_wrap .mg_btn_base.xl {background: #000000;}
.mg_btn_wrap {font-family: 'NotoSans KR';    margin-top: 30px;}
.content_area .mg_btn_wrap .mg_btn_base.xl {min-width: 220px;}
.text_box .rest_txt {text-align: right;color: #999;}
</style>

<!-- JS -->
<script>// ���� �� ����
function letterCounter(cont_id) {
  var content = $('#'+cont_id).val();
  var contLength = content.length;

  if (contLength == 0 || content == '') {
    $('#'+cont_id+'_cnt').text('0');
  } else {
    if (contLength > 500) {
      contLength = 500;
    }

    $('#'+cont_id+'_cnt').text(contLength);
  }
}
$("#edContent").keyup(function(e) {
  letterCounter('edContent');
});

  function setTextCount() {
  letterCounter('edContent');
}
</script>


<p class="page_text">�پ��� �̺�Ʈ ���� ���������� ���Ǵ� �� ����Դϴ�.<br> ������� �Է��ϴ� ���� ���� �ٷ� ����Ǿ� ǥ�õǾ����ϴ�.</p>



<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css css act"></pre>
<pre class="language-javascript act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="https://www.megagong.net/event/2023/01100001/index.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#�����ϱ�</p> </li>
                            <li><p>#����</p> </li>
                            <li><p>#���ڼ�</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->





                        <div class="page_text_wrap">
                <p class="page_head">��������</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <div class="position_site"><img src="/images/popup4.png" alt='��ġ' ></div>
                

<!-- HTML -->
<div class="code-box html"><div class="popInner">
  <!--<div class="mg_btn_wrap right top">
    <button class="close" onclick="closeSurvey()">�ݱ�</button>
  </div>-->
  <div class="content_area eventInput">
    <h3>
    ��ȿ�� ������ �ѱ������� ������ ��� ��������
    </h3>

    <p class="txt">
      �ް��������� ���� ���� ���� ���� ������ ���� <br class="br_768"> 
      ������ ������� �������縦 �����ϰ� �Ǿ����ϴ�. <br> 
      <strong class="red">������ �������̰� ���������� ������ �ֽ� �е鿡�Դ� <br class="br_768"> 
      ��÷�� ���� ������ ��ǰ�� ������ �����մϴ�.<br> 
      (�����ϰ� ������ �亯 �� Ȯ�� UP!!)</strong>
    </p>
    
    <dl class="schedule">
      <dt>�������� ����Ⱓ : </dt>
      <dd> 2023�� 2�� 10�� (��) ~2�� 24�� (��)</dd>
    </dl>
    <ul class="gift">
      <li><img src="https://img.megagong.net/m/2023/0210_zzang/gift1.png" alt="�ż��� ��ǰ�� 1������"></li>
      <li><img src="https://img.megagong.net/m/2023/0210_zzang/gift2.png" alt="������ġ ���̹��� ��Ʈ"></li>
      <li><img src="https://img.megagong.net/m/2023/0210_zzang/gift3.png" alt="��Ÿ���� �Ƹ޸�ī�� T"></li>
    </ul>
    <ul class="tiny_noti">
      <li>- �� ��������� ��ȿ�� ������ �ѱ������� ���¸� ������ ȸ�� ������� ����˴ϴ�.</li>
      <li>- ������ �������� ���� �� ��÷�� ���� 2/27(��) ȸ�������� �޴�����ȣ�� �߼۵˴ϴ�.</li>
      <li>- �߼� ��ǰ�� �귣��� �߼۴������ �������� ����� �� �ֽ��ϴ�.</li>
      <li>- SMS ���� ���ǰ� �Ǿ� ���� ���� ��� �߼� ��󿡼� ���� �ǿ��� �ݵ�� SMS ���ſ� ������ �ּ���. <br> <a href="https://www.megagong.net/member/Account_Chk.asp" class="blue">&gt;SMS ���� ����</a> </li>
      <li>- ��ǰ�� ����� �ٸ� ��ǰ���� ��ü�� �� ������, ��ǰ �߼����� ���� ������ ���� ����� �� �ֽ��ϴ�.</li>
      <li>- ��ǰ �߼� �� ȸ�� Ż�� �ϴ� ��쿡�� ��ǰ ������ �Ұ��մϴ�.</li>
    </ul>

    <p class="subtit">�� ������ �����ϴ� ȸ������ ������ Ȯ�����ּ���.</p>
    <table class="tbl">
      <colgroup>
        <col width="18%">
        <col width="32%">
        <col width="18%">
        <col width="32%">
      </colgroup>
      <thead></thead>
      <tbody>
        <tr>
          <th class="noline">�̸�</th>
          <td class="aL"><input type="text" name="name" id="name" class="clickChk" value="ȫ�浿" readonly=""></td>
          <th>���̵�</th>
          <td colspan="3" class="aL none"><input type="text" name="id" id="id" class="clickChk" value="testid" readonly=""></td>
        </tr>
        <tr>
          <th class="noline">����ó</th>
          <td class="aL noline"><input type="text" name="phone" id="phone" class="clickChk" style="width:100%" value="010-1234-1234" readonly=""></td>
          <th class="none" colspan="2"><a href="https://www.megagong.net/member/Account_Chk.asp" class="blue">ȸ���������� &gt;</a></th>
          <!--<td class="ar noline"></td>-->
        </tr>
      </tbody>
    </table>
    <p class="tiny_noti">�� ȸ������ ������ �̵� �� �ۼ��� ������ ��� �����Ǵ�, <br> ȸ������ ������ �ʿ��� ���, ȸ�������� ���� �����Ͻñ� �ٶ��ϴ�.</p>
    <p class="txt">������ �� 5�� ���� �ҿ� �Ǹ� ���� ������� �Ϸ��Ͻø� ������ �Ϸ�˴ϴ�. <br> �ʼ� �׸��� ��� �Է��ϼž� ������ �����Ͽ���  <br> ���� ������ õõ�� �о�ð� ������ �ǰ� �ۼ� ��Ź �帳�ϴ�.</p>

    <h4>��ȿ�� �ѱ� ������ �������� </h4>
    <table class="tbl no">
      <colgroup>
        <col width="33.3333333%">
        <col width="33.3333333%">
        <col width="33.3333333%">
      </colgroup>
      <thead></thead>
      <tbody>
        <tr>
          <th colspan="3">1. 2023�� ������ ���迡 ���� �� �����ΰ���? <label id="g1_q1"></label></th>
        </tr>
        <tr>
          <td>
            <input type="radio" name="g1_q1" id="g1_q1_1" value="1">
            <label for="g1_q1_1">��</label>
          </td>
          <td>
            <input type="radio" name="g1_q1" id="g1_q1_2" value="2">
            <label for="g1_q1_2">�ƴϿ�<input type="text" id="g1_q1_txt" maxlength="10" placeholder="�ִ�10�����Է°���" class="position_re"></label>
          </td>
        </tr>
        <tr>
          <td class="wide_re" colspan="3">
            �ƴϿ��� ��� ���� ���� ��������<br class="br_374"> �ۼ��� �ּ���.
          </td>
        </tr>

        <tr>
          <th colspan="3">2. 2023�� ������ ���迡 �����ϸ� �� ��° �����ΰ���? </th>
        </tr>
        <tr>
          <td>
            <input type="radio" name="g1_q2" id="g1_q2_1" value="1">
            <label for="g1_q2_1">ù ��° </label>
          </td>
          <td>
            <input type="radio" name="g1_q2" id="g1_q2_2" value="2">
            <label for="g1_q2_2">�� ��° </label>
          </td>
          <td>
            <input type="radio" name="g1_q2" id="g1_q2_3" value="3">
            <label for="g1_q2_3">�� ��° </label>
          </td>
        </tr>
        <tr>
          <td colspan="2">
            <input type="radio" name="g1_q2" id="g1_q2_4" value="4">
            <label for="g1_q2_4">��Ÿ <span class="space"></span> ��Ÿ�� ��� �� ��° �����ΰ���? <input type="text" id="g1_q2_txt" maxlength="10" placeholder="�ִ�10�����Է°���" class="position_re2"></label>
          </td>
        </tr>

        <tr>
          <th colspan="3">3. ��ǥ�� �ϴ� �޼� �� ������ ������ �ּ���.</th>
        </tr>
        <tr>
          <td>
            <input type="radio" name="g1_q3" id="g1_q3_1" value="1" onclick="useYN(3, false);">
            <label for="g1_q3_1">9��</label>
          </td>
          <td>
            <input type="radio" name="g1_q3" id="g1_q3_2" value="2" onclick="useYN(3, false);">
            <label for="g1_q3_2">7��</label>
          </td>
          <td>
            <input type="radio" name="g1_q3" id="g1_q3_3" value="3" onclick="useYN(3, true);">
            <label for="g1_q3_3">�ҹ�</label>
          </td>
        </tr>
        <tr>
          <td>
            <input type="radio" name="g1_q3" id="g1_q3_4" value="4" onclick="useYN(3, true);">
            <label for="g1_q3_4">������</label>
          </td>
          <td>
            <input type="radio" name="g1_q3" id="g1_q3_5" value="5" onclick="useYN(3, true);">
            <label for="g1_q3_5">����</label>
          </td>
          <td>
            <input type="radio" name="g1_q3" id="g1_q3_6" value="6" onclick="useYN(3, true);">
            <label for="g1_q3_6">��Ÿ <input type="text" id="g1_q3_txt" maxlength="10" placeholder="�ִ�10�����Է°���"></label>
          </td>
        </tr>

        <tr>
          <th colspan="3">3-1. 9��, 7���� ��� ������ ������ �ּ���.</th>
        </tr>
        <tr>
          <td>
            <input type="radio" name="g1_q4" id="g1_q4_1" value="1" disabled="">
            <label for="g1_q4_1">�Ϲ�������</label>
          </td>
          <td>
            <input type="radio" name="g1_q4" id="g1_q4_2" value="2" disabled="">
            <label for="g1_q4_2">����������</label>
          </td>
          <td>
            <input type="radio" name="g1_q4" id="g1_q4_3" value="3" disabled="">
            <label for="g1_q4_3">��ȸ������</label>
          </td>
        </tr>
        <tr>
          <td>
            <input type="radio" name="g1_q4" id="g1_q4_4" value="4" disabled="">
            <label for="g1_q4_4">���뵿��</label>
          </td>
          <td>
            <input type="radio" name="g1_q4" id="g1_q4_5" value="5" disabled="">
            <label for="g1_q4_5">����������</label>
          </td>
          <td>
            <input type="radio" name="g1_q4" id="g1_q4_6" value="6" disabled="">
            <label for="g1_q4_6">��Ÿ <input type="text" id="g1_q4_txt" maxlength="10" placeholder="�ִ�10�����Է°���" disabled=""></label>
          </td>
        </tr>

        <tr>
          <th colspan="3">4. ������ �غ� �Ⱓ�� ��� ���� �Ǿ�����?</th>
        </tr>
        <tr>
          <td>
            <input type="radio" name="g1_q5" id="g1_q5_1" value="1">
            <label for="g1_q5_1">1�� �̸�</label>
          </td>
          <td>
            <input type="radio" name="g1_q5" id="g1_q5_2" value="2">
            <label for="g1_q5_2">1~2��</label>
          </td>
          <td>
            <input type="radio" name="g1_q5" id="g1_q5_3" value="3">
            <label for="g1_q5_3">2�� �̻� </label>
          </td>
        </tr>
        <tr>
          <td>
            <input type="radio" name="g1_q5" id="g1_q5_4" value="4">
            <label for="g1_q5_4">3�� �̻�</label>
          </td>
        </tr>

        <tr>
          <th colspan="3">5. � ��η� ��ȿ�� �������� �˰� �Ǿ�����? </th>
        </tr>
        <tr>
          <td>
            <input type="radio" name="g1_q6" id="g1_q6_1" value="1">
            <label for="g1_q6_1">���л���Ʈ �˻�</label>
          </td>
          <td>
            <input type="radio" name="g1_q6" id="g1_q6_2" value="2">
            <label for="g1_q6_2">ī�� �� �¶��� Ŀ�´�Ƽ </label>
          </td>
          <td>
            <input type="radio" name="g1_q6" id="g1_q6_3" value="3">
            <label for="g1_q6_3">���� ��õ </label>
          </td>
        </tr>
        <tr>
          <td>
            <input type="radio" name="g1_q6" id="g1_q6_4" value="4">
            <label for="g1_q6_4">�ް������� ����Ʈ </label>
          </td>
          <td>
            <input type="radio" name="g1_q6" id="g1_q6_5" value="5">
            <label for="g1_q6_5">��Ʃ�� </label>
          </td>
          <td>
            <input type="radio" name="g1_q6" id="g1_q6_6" value="6">
            <label for="g1_q6_6">��Ÿ <input type="text" id="g1_q6_txt" maxlength="10" placeholder="�ִ�10�����Է°���"></label>
          </td>
        </tr>

        <tr>
          <th colspan="3">6. �ѱ��������� ��û�Ͽ� ������ ������ �����ΰ���?</th>
        </tr>
        <tr>
          <td colspan="3" class="pl">
            <textarea name="text_kind" id="g1_q7_txt" cols="30" rows="10" maxlength="100" placeholder="�ּ� 10���� ���� �ִ� 100���� �Է� ���� "></textarea>
          </td>
        </tr>

        <tr>
          <th colspan="3">7. �ѱ������� ���� ���� ��, �������� �����?</th>
        </tr>
        <tr>
          <td>
            <input type="radio" name="g1_q8" id="g1_q8_1" value="1">
            <label for="g1_q8_1">�ſ츸��</label>
          </td>
          <td>
            <input type="radio" name="g1_q8" id="g1_q8_2" value="2">
            <label for="g1_q8_2">����</label>
          </td>
          <td>
            <input type="radio" name="g1_q8" id="g1_q8_3" value="3">
            <label for="g1_q8_3">���� </label>
          </td>
        </tr>
        <tr>
          <td>
            <input type="radio" name="g1_q8" id="g1_q8_4" value="4">
            <label for="g1_q8_4">�Ҹ�</label>
          </td>
          <td>
            <input type="radio" name="g1_q8" id="g1_q8_5" value="5">
            <label for="g1_q8_5">�ſ�Ҹ�</label>
          </td>
        </tr>
        
        <tr>
          <th colspan="3">7-1. �׷��� �����Ͻ� ������ �ۼ��� �ּ���.</th>
        </tr>
        <tr>
          <td colspan="3" class="pl">
            <textarea name="text_kind" id="g1_q9_txt" cols="30" rows="10" maxlength="100" placeholder="�ּ� 10���� ���� �ִ� 100���� �Է� ���� "></textarea>
          </td>
        </tr>

        <tr>
          <th colspan="3">8. ������ ������ Ÿ ���� ������ ���� �����Ű���? �����ôٸ� ������ �̸��� �Է��� �ּ���.</th>
        </tr>
        <tr>
          <td colspan="2">
            <input type="radio" name="g1_q10" id="g1_q10_1" onclick="useYN(8, false);" value="1">
            <label for="g1_q10_1">�ִ� <input type="text" id="g1_q10_txt" maxlength="10" placeholder="�ִ�10�����Է°���" disabled=""></label>
          </td>
          <td>
            <input type="radio" name="g1_q10" id="g1_q10_2" onclick="useYN(8, true);" value="2">
            <label for="g1_q10_2">����</label>
          </td>
        </tr>

        <tr>
          <th colspan="3">8-1. Ÿ ���� ���Ǹ� ������ ������ �ۼ��� �ּ���.</th>
        </tr>
        <tr>
          <td colspan="3" class="pl">
            <textarea name="text_kind" id="g1_q11_txt" cols="30" rows="10" maxlength="100" placeholder="�ּ� 10���� ���� �ִ� 100���� �Է� ����" disabled=""></textarea>
          </td>
        </tr>

        <tr>
          <th colspan="3">9. ��ȿ�� �������� ������ ���縦 ������ �ּ���. (���� ���� ����)</th>
        </tr>
        <tr>
          <td>
            <input type="checkbox" name="g1_q12" id="g1_q12_1" value="1">
            <label for="g1_q12_1">�⺻�� ������(���ο�)</label>
          </td>
          <td>
            <input type="checkbox" name="g1_q12" id="g1_q12_2" value="2">
            <label for="g1_q12_2">���⹮���� ��Ʈ(�����ų)</label>
          </td>
          <td>
            <input type="checkbox" name="g1_q12" id="g1_q12_3" value="3">
            <label for="g1_q12_3">�ѱ� �������ѷ�</label>
          </td>
        </tr>
        <tr>
          <td>
            <input type="checkbox" name="g1_q12" id="g1_q12_4" value="4">
            <label for="g1_q12_4">�ٽ� ���� 300��</label>
          </td>
          <td>
            <input type="checkbox" name="g1_q12" id="g1_q12_5" value="5">
            <label for="g1_q12_5">������ �ѷ� ������</label>
          </td>
          <td>
            <input type="checkbox" name="g1_q12" id="g1_q12_6" value="6">
            <label for="g1_q12_6">�������ѷ� ���̳�</label>
          </td>
        </tr>
        <tr>
          <td>
            <input type="checkbox" name="g1_q12" id="g1_q12_7" value="7">
            <label for="g1_q12_7">�������ѷ� 8421 ������</label>
          </td>
        </tr>

        <tr>
          <th colspan="3">10. ��ȿ�� �������� ����� �������� ��, �������� �������� �����?</th>
        </tr>
        <tr>
          <td>
            <input type="radio" name="g1_q13" id="g1_q13_1" value="1">
            <label for="g1_q13_1">�ſ츸��</label>
          </td>
          <td>
            <input type="radio" name="g1_q13" id="g1_q13_2" value="2">
            <label for="g1_q13_2">���� </label>
          </td>
          <td>
            <input type="radio" name="g1_q13" id="g1_q13_3" value="3">
            <label for="g1_q13_3">���� </label>
          </td>
        </tr>
        <tr>
          <td>
            <input type="radio" name="g1_q13" id="g1_q13_4" value="4">
            <label for="g1_q13_4">�Ҹ�</label>
          </td>
          <td>
            <input type="radio" name="g1_q13" id="g1_q13_5" value="5">
            <label for="g1_q13_5">�ſ�Ҹ�</label>
          </td>
        </tr>

        <tr>
          <th colspan="3">10-1. �׷��� �����Ͻ� ������ �ۼ��� �ּ���.</th>
        </tr>
        <tr>
          <td colspan="3" class="pl">
            <textarea name="text_kind" id="g1_q14_txt" cols="30" rows="10" maxlength="100" placeholder="�ּ� 10���� ���� �ִ� 100���� �Է� ���� "></textarea>
          </td>
        </tr>

        <tr>
          <th colspan="3">11. ������ ������ ������ �غ��Ѵٸ�, ��ȿ�� �������� ���Ǹ� ��õ�Ͻ� ������ �����Ű���?</th>
        </tr>
        <tr>
          <td>
            <input type="radio" name="g1_q15" id="g1_q15_1" value="1">
            <label for="g1_q15_1">�ִ�</label>
          </td>
          <td>
            <input type="radio" name="g1_q15" id="g1_q15_2" value="2">
            <label for="g1_q15_2">���� </label>
          </td>
        </tr>

        <tr>
          <th colspan="3">11-1. �׷��� �����Ͻ� ������ �ۼ��� �ּ���.</th>
        </tr>
        <tr>
          <td colspan="3" class="pl">
            <textarea name="text_kind" id="g1_q16_txt" cols="30" rows="10" maxlength="100" placeholder="�ּ� 10���� ���� �ִ� 100���� �Է� ���� "></textarea>
          </td>
        </tr>

        <tr>
          <th colspan="3">12. ���������� �����Բ� �ϰ���� ���� �����Ӱ� �ۼ��� �ּ���.</th>
        </tr>
        <tr>
          <td colspan="3" class="pl">
            <textarea name="text_kind" id="g1_q17_txt" cols="30" rows="10" maxlength="100" placeholder="�ּ� 10���� ���� �ִ� 100���� �Է� ���� "></textarea>
          </td>
        </tr>

      </tbody>
    </table>

    <ul class="cautn">
      <li>�� ���� ������ ���� ���� ����� ���� �������� ���� �����ͷθ� ���Ǹ� �ܺο� �Խ�, ��� ���� �ʽ��ϴ�.</li>
      <li>�� ����ó�� ��÷ �� ��ǰ �߼� �뵵�̱⿡ ��Ȯ�ϰ� �Է����ֽñ� �ٶ��ϴ�.<br> (����ó ���������� ���� ��ǰ ���߼� �� ��ǰ ��߼� �Ұ��մϴ�.)</li>
      <li>�� ��÷�ڴ� 2�� 27�Ͽ� ������ ���� �ȳ� �� ����Ƽ�� �ϰ� �߼� �����Դϴ�.</li>
    </ul>

    <div class="okay_box"><strong><label><input type="checkbox" id="privacyYN"> �ۼ��� ���� ���뿡 ���� �������� ����/�̿뿡 �����մϴ�.</label></strong></div>

    <p class="btn submit"><a href="javascript:void(0);" >�����ϱ� &gt;</a></p>
    
  </div>
  <!--<div class="mg_btn_wrap right top">
    <button class="todayClose" onclick="powerClose();">�ٽ� ���� �ʱ�</button>
    <button class="todayClose" onclick="closeCmegaPopupToday();">���� �Ϸ� ���� �ʱ�</button>
  </div>-->
</div></div>

<link type="text/css" rel="stylesheet" href="<%=url_main%>/event/2023/02100009/style.css">


<p class="page_text">�������� ���� ������ ���� �ް����������� ���ǰ� �ִ� ���� �� ����Դϴ�.<br> 
�����۾��� ���� ������ ���Ǻ� Ȱ��ȭ �� �ʼ� �Է� üũ ���� ����� ������ �� �ֽ��ϴ�.</p>

<!-- Code View -->
<pre class="language-html html act direct"><code><!--\event\2023\02100009\index.asp--></code></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="https://www.megagong.net/megagong.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#��������</p> </li>
                            <li><p>#�����˾�</p> </li>
                            <li><p>#������</p> </li>
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

    <link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/megagong_respons.css">
    <style>
    html {overflow-x:hidden;}
    .guide-aside {border-right: none; /*background:rgba(255,255,255,0.2);*/ backdrop-filter: blur( 11px );-webkit-backdrop-filter: blur( 11px );}
    .payWrap .pay_sort { margin-bottom: 0px; }
    .pay_sort p {font-weight: 900; font-size: 15px;margin-bottom: 21px;}
    .select-wrp ul li {padding: 5px;}
    .content_inner a:hover {color:#fff; }
    .content_area {z-index: 3;}
    a.mg_btn_base.xl {color: #fff;}
    .content_area .btn.submit {margin: auto;}
    @media (max-width: 410px) {
      .content_area .tbl.no td .br_374 {display: block;}
    }
    </style>




<!-- #include virtual = "/inc/bottom.asp"-->