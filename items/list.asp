<!-- #include virtual = "/inc/top.asp"-->
<%
dp1 = 2
dp2 = 5
%>
    <!-- #include virtual = "/inc/aside.asp"-->
    
    <div class="page_wrap" id="page_wrap">

        <div class="page_inner">
          <div class="page_name_wrap">
              <h3 class="page_name">List</h3>
              <h3 class="page_name_sub">����Ʈ</h3>
              <p class="page_sub_text">����Ʈ�� �ް������� ���� ��, ���� ���������� ���ǰ� �ִ� ����Դϴ�.<br>
              Ư�� �׸��̳� ������ �°� ������ ������ ������ �������� ���並 ���� ����ڿ��� �����մϴ�.</p>
              <div class="page_print"><input type="button" value="�μ��ϱ�" id="print" onclick="window.print()"/></div>
          </div>

            <!--<p class="page_sub_text">���⿡ �ٱ۷� ������ �����ϴ�. ���⿡ �ٱ۷� ������ �����ϴ�. ���⿡ �ٱ۷� ������ �����ϴ�.</p>
            <hr/>-->
            
            <div class="page_text_wrap">
              <p class="page_head">���� - ��ŷ ���</p> 
              <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
              <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
              <div class="position_site"><img src="/images/list1.png" alt='����Ʈ��ġ' ></div>
                

<!-- HTML -->
<div class="code-box html"><div class="bookstore_wrap">
  <div class="book_ranking">
    <div class="ranking_list">
      <ol id="ranking_list_ol">
        <li><a href="#none" title="2022 �ſ��� ������(�� 2��)"> <i>1</i>2022 �ſ��� ������(�� 2��)</a></li>
        <li><a href="#none" title="2022 �ſ��� ������ �ֱ� 10�� �ܿ��� ���⹮���� (�� 2��)"> <i>2</i>2022 �ſ��� ������ �ֱ� 10�� �ܿ��� ���⹮���� (�� 2��)</a></li>
        <li><a href="#none" title="2021 �ſ��� ������ �ֱ� 10�� �ܿ��� ���⹮���� : 9��7�� ������[��2��]"> <i>3</i>2021 �ſ��� ������ �ֱ� 10�� �ܿ��� ���⹮���� : 9��7�� ������[��2��]</a></li>
        <li><a href="#none" title="2021 �ſ��� ������ ��Ʈ:9��7�� ������[��2��]"> <i>4</i>2021 �ſ��� ������ ��Ʈ:9��7�� ������[��2��]</a></li>
        <li><a href="#none" title="Ȳö�� ������ ���� ���ǳ�Ʈ"> <i>5</i>Ȳö�� ������ ���� ���ǳ�Ʈ</a></li>
        <li><a href="#none" title="2021 Ȳö�� ������ġ��"> <i>6</i>2021 Ȳö�� ������ġ��</a></li>
        <li><a href="#none" title="2021 Ȳö�� ������ ���⹮����"> <i>7</i>2021 Ȳö�� ������ ���⹮����</a></li>
      </ol>
    </div>
  </div>
</div></div>

<!-- CSS -->
<style>
.bookstore_wrap .book_ranking {float:inherit; margin:auto;}
.bookstore_wrap .book_ranking .ranking_list ol li a {font-size:13px; font-family:'���� ���'; color: #000;}
.bookstore_wrap .book_ranking .ranking_list ol li:hover a {font-weight: bold;}
</style>


<!-- JS -->
<script>

</script>

<p class="page_text">�ް����͵� ������ ���� ���������� ���Ǵ� ����Ʈ ����Դϴ�.<br> ���ؿ� �°� ������ ���� ����Ʈ ���� ����� ����ڿ��� �������ݴϴ�.<br> ����Ʈ ���� ������ 2�ְ� �Ǹŷ��� �������� �ſ� 1�ϰ� 15�� ������Ʈ�˴ϴ�.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>


                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/megagong.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#������</p> </li>
                            <li><p>#����</p> </li>
                            <li><p>#����Ʈ</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->





            <div class="page_text_wrap">
              <p class="page_head">���������� - ���� ���� ����</p> 
              <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
              <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
              <div class="position_site"><img src="/images/mypage1.png" alt='����Ʈ��ġ' ></div>
                

<!-- HTML -->
<div class="code-box html"><div class="mypgC">
<div class="wrap_content my_state renewal">
  <div class="mypageWrap">
    <div class="mypageConditions">
      <div class="m_info">
        <h4>���� ���� ����</h4>
          <div class="mypageMenu">
              <ul class="clearfix">                        
                  <li class="list1">
                      <a href="<%=url_main%>/mypage/study/my_study.asp" title="�� ���ǽ�" target="_blank">
                          <strong>�� ���ǽ�</strong>
                          <span>0</span>
                      </a>
                  </li>

                  <li class="list2">
                      <a href="<%=url_main%>/mypage/bonus/my_point.asp" title="�ް�ĳ��" target="_blank">
                          <strong>�ް�ĳ��</strong>
                          <span>0��</span>
                      </a>
                  </li>
                  <li class="list3">
                      <a href="<%=url_main%>/mypage/pay/my_cart.asp" title="��ٱ���" target="_blank">
                          <strong>��ٱ���</strong>
                          <span>0</span>
                      </a>
                  </li>
                  <li class="list4">
                      <a href="<%=url_main%>/mypage/bonus/my_point.asp?gbn=bonus" title="���ʽ�ĳ��" target="_blank">
                          <strong>���ʽ�ĳ��</strong>
                          <span>0��</span>
                      </a>
                  </li>                                           

                  <li class="list5">
                      <a href="<%=url_main%>/mypage/order/my_order.asp" title="�ֹ������ȸ" target="_blank">
                          <strong>�ֹ������ȸ</strong>
                          <span>0</span>
                      </a>
                  </li>
                  <li class="list6">
                      <a href="<%=url_main%>/mypage/bonus/my_coupon.asp" title="����" target="_blank">
                          <strong>����</strong>
                          <span>0</span>
                      </a>
                  </li>
              </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</div></div>

<!-- CSS -->
<link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/mypage.css" />
<style>
</style>


<!-- JS -->
<script>

</script>

<p class="page_text">�ް������� �������������� ���Ǵ� ����Ʈ ����Դϴ�.<br> ������ ��ǰ �� �ܿ� ĳ��, ���� ���� ���� Ȯ���� �� �ֽ��ϴ�.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>


                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/mypage/index.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#����������</p> </li>
                            <li><p>#������</p> </li>
                            <li><p>#����Ȯ��</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->




            <div class="page_text_wrap">
              <p class="page_head">���������� - ��������</p> 
              <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
              <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
              <div class="position_site"><img src="/images/mypage2.png" alt='����Ʈ��ġ' ></div>
                

<!-- HTML -->
<div class="code-box html"><div class="mypageNotice">
<h4 class="tit">
  <strong>��������</strong>
  <a href="/help/notice/list.asp" class="cont_more" title="������">������</a>
</h4>

  <div class="cont_box">
    <div class="notice_list">
      <ul>
        <li><a href="javascript:void(0);" title="�������� �ٷΰ���">[EVENT] �³�Ʈ �ʱ��Ʈ ����&amp;������ �ʱ� ���׽�Ʈ (�ھ����潽 ������)</a></li>
        <li><a href="javascript:void(0);" title="�������� �ٷΰ���">�̿��� ���� �ȳ�</a></li>
        <li><a href="javascript:void(0);" title="�������� �ٷΰ���">��OMG�� �ް������� G-TELP Level 2 ��ǥ���� �ϼ� ���� ����!</a></li>
      </ul>
    </div>
  </div>
</div></div>

<!-- CSS -->
<link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/mypage.css" />
<style>
h4.tit {position: relative; margin: 0;  padding: 0 0 17px 0;  font-size: 18px;}
.mypageNotice .cont_more { position: absolute; top: 0; background: url(https://img.megagong.net/new/mypage/icon_mystate2.png) no-repeat 0px 0px; font-size: 0; width: 21px; height: 21px; right: 10px;}
.mypageNotice .notice_list li{ margin: 0 0 5px;  padding: 0 0 0 10px; position: relative;}
.mypageNotice .notice_list li:before{ content: "";  display: block;  background: #222;  width: 2px;  height: 2px;  -webkit-border-radius: 100%;-moz-border-radius: 100%;border-radius: 100%; position: absolute;  top: 50%; left: 0;}
.mypageNotice .notice_list li a:hover {   text-decoration: underline;}
.cont_box { position: relative; border: 1px solid #eee; padding: 20px 25px 15px;  box-sizing: border-box;    color: #000;}
.mypageNotice .cont_box::after { content: ""; display: block; clear: both;}
</style>


<!-- JS -->
<script>

</script>

<p class="page_text">�ް������� �������������� ���Ǵ� �������� ����Ʈ ����Դϴ�.<br> �پ��� �߿� ���� �� �̺�Ʈ �ҽĵ� ��, �ֽ� ���� 3���� ����˴ϴ�.  </p>


<!-- Code View -->
<pre class="language-html html act"></pre>



                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/mypage/index.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#��������</p> </li>
                            <li><p>#�ҽ�����</p> </li>
                            <li><p>#����������</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->




            <div class="page_text_wrap">
              <p class="page_head">���������� - �������� ���</p> 
              <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
              <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
              <div class="position_site"><img src="/images/mypage3.png" alt='����Ʈ��ġ' ></div>
                

<!-- HTML -->
<div class="code-box html"><div class="mypagetLec renewal">
<h4 class="tit">�ֱ� �������� ����</h4>
  <a href="/mypage/study/my_study.asp" class="cont_more">������</a>
    <ul class="current">
      <li>
        <strong class="lecname"><span>������</span> ��ȿ��&nbsp;������</strong>
        <a href="<%=url_main%>/mypage/study/studyroom.asp?app_no=24131&amp;app_seq=81262&amp;chr_cd=19425" class="direct_link">
          <span>[STEP 3] 2023 ��ȿ�� �ѱ����� �����ϴ� �������ѷ�</span>
          <em class="clsdate">�ֱټ����� : 2023-02-06 ���� 5:31:51</em>
        </a>
            
        <span class="plus_link">
          <a href="<%=url_main%>/teacher/home.asp?bcode=wjsgywls1" class="btn_home" title="������ Ȩ">������ Ȩ</a>
          <a href="<%=url_main%>/teacher/review/review.asp?bcode=wjsgywls1" class="btn_cmmnt" title="�����ı� �ۼ��ϱ�">�����ı� �ۼ��ϱ�</a>
        </span>
      </li>
  </ul>
</div></div>

<!-- CSS -->
<link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/mypage.css" />
<style>
.mypagetLec {position: relative; background: #fff;padding: 30px 0 0; border: 0;margin: 0 0 40px; clear: both;}
h4.tit { position: relative;margin: 0;padding: 0 0 17px 0;font-size: 18px;}
.mypagetLec.renewal .cont_more {width: 21px;height: 21px; right: 10px;}
.mypagetLec .cont_more {position: absolute;top: 29px !important; background: url(https://img.megagong.net/new/mypage/icon_mystate2.png) no-repeat 0px 0px; font-size: 0;}
.mypagetLec.renewal .current {padding: 20px 20px 10px;border-bottom: 1px solid #eee;border-top: 1px solid #eee;}
.mypagetLec.renewal .current:before { line-height: 0;display: table; content: '';}
.mypagetLec.renewal .current:after {clear: both;line-height: 0; display: table;  content: '';}
.mypagetLec .current li { padding: 0 300px 0 0; width: 100%;box-sizing: border-box; margin: 0 0 18px; float: none; min-height: 10px;  position: relative;}
.mypagetLec .current li:last-child { border-bottom: 0;}
.mypagetLec.renewal .current li .lecname {  padding: 0;font-weight: normal;  margin: 0 0 5px; color: #1a9ea3;display: block;font-size: 13px;}
.mypagetLec.renewal .current li .lecname span {border-right: 1px solid #1a9ea3; display: inline-block; padding: 0 5px 0 0;}
.mypagetLec.renewal .current li .lecname {padding: 0;font-weight: normal;margin: 0 0 5px;color: #1a9ea3;    font-size: 13px;}
.mypagetLec.renewal .current li .direct_link {position: relative;display: block;font-size: 15px;font-weight: bold;color: #444444;}
.mypagetLec.renewal .current li .direct_link span { display: inline-block; max-width: 81%; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;vertical-align: middle;}
.mypagetLec.renewal .current li .direct_link em { font-size: 11px; font-weight: normal; display: inline-block; padding: 0 0 0 10px; border-left: 1px solid #c6c6c6; vertical-align: middle; color: #6d6d6d;}
.mypagetLec.renewal .current li .plus_link {position: absolute;top: 5px; right: 0;}
.mypagetLec.renewal .current li .plus_link a {position: relative;display: block;float: left;border: 1px solid #eee;border-radius: 30px;padding: 8px 20px 8px 40px; font-size: 12px; color: #666; margin: 0 0 0 10px;font-weight: 600;}
.mypagetLec.renewal .current li .plus_link a::before {content: "";position: absolute; top: 9px;left: 16px;width: 20px;height: 18px; background: url(https://img.megagong.net/new/mypage/icon_mystate2.png) no-repeat -58px 0;}
.mypagetLec.renewal .current li .plus_link a.btn_cmmnt::before {content: "";position: absolute; top: 9px; left: 16px; width: 20px; height: 18px; background: url(https://img.megagong.net/new/mypage/icon_mystate2.png) no-repeat -102px 0;}

@media (max-width: 1200px) {
.mypagetLec.renewal {margin: 0 0 10px;}
h4.tit {font-size: 16px;padding: 0 0 10px;}
.mypagetLec.renewal .current { padding: 15px 0 15px; border-bottom: 0;}
.mypagetLec.renewal .current li {margin: 0 0 10px;padding: 0;border-bottom: 1px solid #eee;}
.mypagetLec.renewal .current li .lecname { margin: 0 0 0px;}
.mypagetLec.renewal .current li .direct_link {font-size: 13px;padding: 3px 133px 13px 0;}
.mypagetLec.renewal .current li .direct_link span {max-width: 100%;display: block;}
.mypagetLec.renewal .current li .direct_link em {display: block;padding: 2px 0 0 7px;position: absolute;top: 0;right: 0; border: 0;}
.mypagetLec.renewal .current li .plus_link {display: none;}
}

@media (max-width: 768px) {
h4.tit {border-bottom: 1px solid #eee;}
.mypagetLec.renewal .cont_more {bottom: inherit; top: 25px !important;  background: url(https://img.megagong.net/new/mypage/mo_more.png) no-repeat center center; width: 20px; height: 20px;background-size: 16px; right: 2%;}
.mypagetLec .current li .lecname { font-size: 12px;}
.mypagetLec .current li .lecname { font-size: 12px;}
.mypagetLec.renewal .current li .direct_link {padding: 0 0 13px;}
.mypagetLec.renewal .current li .direct_link em {position: relative;top: inherit;right: inherit;border: 0;padding: 4px 0 0;color: #b1b1b1;}
}
</style>


<!-- JS -->
<script>

</script>

<p class="page_text">�ް������� �������������� ���Ǵ� ���� ����Ʈ ����Դϴ�.<br> ���� ����ڰ� �������� ���µ��� ����Ǹ� �ش� ������ '������ Ȩ' �� '�����ı� �ۼ��ϱ�' ���� �ٷΰ��� ��ư�� �����մϴ�.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>


                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/mypage/index.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#����������</p> </li>
                            <li><p>#��������</p> </li>
                            <li><p>#����Ʈ</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->





            <div class="page_text_wrap">
              <p class="page_head">���������� - �¼� ���� ��Ȳ</p> 
              <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
              <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
              <div class="position_site"><img src="/images/mypage4.png" alt='����Ʈ��ġ' ></div>
                

<!-- HTML -->
<div class="code-box html">
<div class="mypagetLec renewal">
    <div class="cont_tit">
      <h3>�¼� ���� ��Ȳ</h3>
      <span class="server_time" id="clock"></span>
    </div>
    <div class="tblList_wrp">
      <div class="lst_head">
        <div class="col1">�п�</div>
        <div class="col2"><span class="for_mb">�п� / </span>���� ���� <span>/ �¼�</span></div>
        <div class="col3">�¼�</div>
      </div>					
      <ul>
        <li class="empty">
          ���� ������ ���°� �����ϴ�.
        </li>
      </ul>
    </div>

    <ul class="tbl_cautn">
      <li>����� ��Ʈ��ũȯ�濡 ���� ���� �ð� ������ ���� �� �ֽ��ϴ�.</li>
    </ul>
</div>
</div>
<!-- CSS -->
<link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/mypage.css" />
<style>
.cont_tit {font-size: 15px;margin: 0 0 7px;}
.cont_tit::after {content: "";display: block;clear: both;}
.cont_tit h3 {float: left; color:#000;}
.cont_tit .server_time {float: right; background: url(https://img.megagong.net/c/seatrsv/clock_icon.png) no-repeat 0 3px;padding: 2px 0 0px 24px; letter-spacing: 0.04em;    color: #000;}
.tblList_wrp {margin: 0 0 10px;}
.lst_head {display: block;width: 100%;vertical-align: middle;font-size: 0;border-top: 2px solid #222;text-align: center;font-weight: 600;}
.lst_head div {display: inline-block;padding: 10px 0;border: 0;border-bottom: 1px solid #ddd;font-size: 14px;background: #f7f7f7; color: #000;}
.lst_head .col1 {width: 25%;}
.lst_head .col2 {width: 55%;}
.lst_head .col3 {width: 20%;}
.lst_head div span { display: none;}
.tblList_wrp li {position: relative;font-size: 0;padding: 10px 0; border: 0;border-bottom: 1px solid #ddd; text-align: center;}
.tblList_wrp li.empty {font-size: 13px;padding: 40px 0;color: #888;}
.tbl_cautn li {position: relative;font-size: 11px; color: #adadad; padding: 0 0 2px 5px;}
.tbl_cautn li::before {content: "";display: block;position: absolute;top: 7px;left: 0;width: 2px;height: 2px;-webkit-border-radius: 100%;-moz-border-radius: 100%;border-radius: 100%;background: #d2d2d2;}

</style>


<!-- JS -->
<script>
var xmlHttp;
var st;
var currentDate;
function srvTime(){
	if (window.XMLHttpRequest) {//�б����� ������ IE������ �۵��ȴ�.
		xmlHttp = new XMLHttpRequest(); // IE 7.0 �̻�, ũ��, ���̾����� ��
		xmlHttp.open('HEAD',window.location.href.toString(),false);
		xmlHttp.setRequestHeader("Content-Type", "text/html");
		xmlHttp.send('');
		st = xmlHttp.getResponseHeader("Date");
		currentDate = new Date(st);
	}else if (window.ActiveXObject) {
		xmlHttp = new ActiveXObject('Msxml2.XMLHTTP');
		xmlHttp.open('HEAD',window.location.href.toString(),false);
		xmlHttp.setRequestHeader("Content-Type", "text/html");
		xmlHttp.send('');
		st = xmlHttp.getResponseHeader("Date");
		currentDate = new Date(st);
	}
	printClock();
};

function printClock() {
	var clock = document.getElementById("clock");            // ����� ��� ����
	currentDate.setSeconds(currentDate.getSeconds() + 1);
	var calendar = currentDate.getFullYear() + "-" + (currentDate.getMonth()+1) + "-" + currentDate.getDate() // ���� ��¥
	var amPm = 'AM'; // �ʱⰪ AM
	var currentHours = addZeros(currentDate.getHours(),2); 
	var currentMinute = addZeros(currentDate.getMinutes() ,2);
	var currentSeconds =  addZeros(currentDate.getSeconds(),2);
	
	if(currentHours >= 12){ // �ð��� 12���� Ŭ �� PM���� ����, 12�� ����
		amPm = 'PM';
		currentHours = addZeros(currentHours - 12,2);
	}

	if(currentSeconds >= 50){// 50�� �̻��� �� ���� ��ȯ�� �ش�.
	currentSeconds = '<span style="color:#de1951;">'+currentSeconds+'</span>'
	}
	clock.innerHTML = currentHours+":"+currentMinute+":"+currentSeconds +" "+ amPm; //��¥�� ����� ��
  setTimeout(printClock,1000);   // 1�ʸ��� printClock() �Լ� ȣ��
};

function addZeros(num, digit) { // �ڸ��� �����ֱ�
	var zero = '';
	num = num.toString();
	if (num.length < digit) {
		for (i = 0; i < digit - num.length; i++) {
		zero += '0';
		}
	}
	return zero + num;
};

srvTime();    
</script>

<p class="page_text">�ް��ҹ�ķ�۽� �������������� ���Ǵ� ���� �¼����� ����Դϴ�.<br> ���� ����ڰ� ���� ������ ���µ��� ����Ǹ� ��ܿ� ���� �ð� ���� ǥ���Ͽ��ְ� �ֽ��ϴ�.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-javascript act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="https://sobangcampus.megagong.net/mypage/seatrsv/state.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#�¼�����</p> </li>
                            <li><p>#Ÿ�̸�</p> </li>
                            <li><p>#����������</p> </li>
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
    .guide-aside {border-right: none; /* background:rgba(255,255,255,0.2);*/ backdrop-filter: blur( 11px );-webkit-backdrop-filter: blur( 11px );}
    .mypgC .wrap_content.my_state .mypageConditions .m_info {margin: 0 20%; width:60%
    
    }
    .mypgC .wrap_content.my_state .mypageConditions > div {    height: inherit;}
    .mypgC .wrap_content.my_state .mypageWrap {width:100%}

    @media (max-width: 1600px) {
      .mypgC .wrap_content.my_state .mypageWrap {width: 100%;}
      .mypgC .wrap_content.my_state .mypageConditions .m_info {margin: 0 0%;width: 100%;}
    }
    @media (max-width: 1200px) {
      .bookstore_wrap .book_ranking {display: block;}
    }
    @media (max-width: 576px) {

      .bookstore_wrap .book_ranking {width: 100%;}
    }

    </style>

    <script>

    $('.main_wrp .main_event .exhibi_wrap .more').on('click',function(){
      if ( $('.exhibi_wrap').hasClass('on')) {
        $('.main_wrp').css('overflow','hidden');
      } else {
        $('.main_wrp').css('overflow','inherit');
      }
    })

    </script>




<!-- #include virtual = "/inc/bottom.asp"-->