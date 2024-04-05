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
              <h3 class="page_name_sub">리스트</h3>
              <p class="page_sub_text">리스트는 메가공무원 메인 등, 여러 페이지에서 사용되고 있는 기능입니다.<br>
              특정 항목이나 주제에 맞게 정리된 정보를 빠르고 포괄적인 개요를 통해 사용자에게 제공합니다.</p>
              <div class="page_print"><input type="button" value="인쇄하기" id="print" onclick="window.print()"/></div>
          </div>

            <!--<p class="page_sub_text">여기에 줄글로 설명을 적습니다. 여기에 줄글로 설명을 적습니다. 여기에 줄글로 설명을 적습니다.</p>
            <hr/>-->
            
            <div class="page_text_wrap">
              <p class="page_head">메인 - 랭킹 목록</p> 
              <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
              <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
              <div class="position_site"><img src="/images/list1.png" alt='리스트위치' ></div>
                

<!-- HTML -->
<div class="code-box html"><div class="bookstore_wrap">
  <div class="book_ranking">
    <div class="ranking_list">
      <ol id="ranking_list_ol">
        <li><a href="#none" title="2022 신용한 행정학(전 2권)"> <i>1</i>2022 신용한 행정학(전 2권)</a></li>
        <li><a href="#none" title="2022 신용한 행정학 최근 10년 단원별 기출문제집 (전 2권)"> <i>2</i>2022 신용한 행정학 최근 10년 단원별 기출문제집 (전 2권)</a></li>
        <li><a href="#none" title="2021 신용한 행정학 최근 10년 단원별 기출문제집 : 9·7급 공무원[전2권]"> <i>3</i>2021 신용한 행정학 최근 10년 단원별 기출문제집 : 9·7급 공무원[전2권]</a></li>
        <li><a href="#none" title="2021 신용한 행정학 세트:9·7급 공무원[전2권]"> <i>4</i>2021 신용한 행정학 세트:9·7급 공무원[전2권]</a></li>
        <li><a href="#none" title="황철곤 행정학 포켓 강의노트"> <i>5</i>황철곤 행정학 포켓 강의노트</a></li>
        <li><a href="#none" title="2021 황철곤 지방자치론"> <i>6</i>2021 황철곤 지방자치론</a></li>
        <li><a href="#none" title="2021 황철곤 행정학 기출문제집"> <i>7</i>2021 황철곤 행정학 기출문제집</a></li>
      </ol>
    </div>
  </div>
</div></div>

<!-- CSS -->
<style>
.bookstore_wrap .book_ranking {float:inherit; margin:auto;}
.bookstore_wrap .book_ranking .ranking_list ol li a {font-size:13px; font-family:'맑은 고딕'; color: #000;}
.bookstore_wrap .book_ranking .ranking_list ol li:hover a {font-weight: bold;}
</style>


<!-- JS -->
<script>

</script>

<p class="page_text">메가스터디 공무원 메인 페이지에서 사용되는 리스트 기능입니다.<br> 기준에 맞게 선정된 과목별 베스트 교재 목록을 사용자에게 제공해줍니다.<br> 베스트 교재 기준은 2주간 판매량을 기준으로 매월 1일과 15일 업데이트됩니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>


                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/megagong.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#교재목록</p> </li>
                            <li><p>#순위</p> </li>
                            <li><p>#리스트</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->





            <div class="page_text_wrap">
              <p class="page_head">마이페이지 - 나의 정보 보기</p> 
              <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
              <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
              <div class="position_site"><img src="/images/mypage1.png" alt='리스트위치' ></div>
                

<!-- HTML -->
<div class="code-box html"><div class="mypgC">
<div class="wrap_content my_state renewal">
  <div class="mypageWrap">
    <div class="mypageConditions">
      <div class="m_info">
        <h4>나의 정보 보기</h4>
          <div class="mypageMenu">
              <ul class="clearfix">                        
                  <li class="list1">
                      <a href="<%=url_main%>/mypage/study/my_study.asp" title="내 강의실" target="_blank">
                          <strong>내 강의실</strong>
                          <span>0</span>
                      </a>
                  </li>

                  <li class="list2">
                      <a href="<%=url_main%>/mypage/bonus/my_point.asp" title="메가캐쉬" target="_blank">
                          <strong>메가캐쉬</strong>
                          <span>0원</span>
                      </a>
                  </li>
                  <li class="list3">
                      <a href="<%=url_main%>/mypage/pay/my_cart.asp" title="장바구니" target="_blank">
                          <strong>장바구니</strong>
                          <span>0</span>
                      </a>
                  </li>
                  <li class="list4">
                      <a href="<%=url_main%>/mypage/bonus/my_point.asp?gbn=bonus" title="보너스캐쉬" target="_blank">
                          <strong>보너스캐쉬</strong>
                          <span>0원</span>
                      </a>
                  </li>                                           

                  <li class="list5">
                      <a href="<%=url_main%>/mypage/order/my_order.asp" title="주문배송조회" target="_blank">
                          <strong>주문배송조회</strong>
                          <span>0</span>
                      </a>
                  </li>
                  <li class="list6">
                      <a href="<%=url_main%>/mypage/bonus/my_coupon.asp" title="쿠폰" target="_blank">
                          <strong>쿠폰</strong>
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

<p class="page_text">메가공무원 마이페이지에서 사용되는 리스트 기능입니다.<br> 구매한 상품 및 잔여 캐쉬, 쿠폰 갯수 등을 확인할 수 있습니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>


                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/mypage/index.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#마이페이지</p> </li>
                            <li><p>#내정보</p> </li>
                            <li><p>#정보확인</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->




            <div class="page_text_wrap">
              <p class="page_head">마이페이지 - 공지사항</p> 
              <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
              <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
              <div class="position_site"><img src="/images/mypage2.png" alt='리스트위치' ></div>
                

<!-- HTML -->
<div class="code-box html"><div class="mypageNotice">
<h4 class="tit">
  <strong>공지사항</strong>
  <a href="/help/notice/list.asp" class="cont_more" title="더보기">더보기</a>
</h4>

  <div class="cont_box">
    <div class="notice_list">
      <ul>
        <li><a href="javascript:void(0);" title="공지사항 바로가기">[EVENT] 굿노트 필기노트 무료&amp;디지털 필기 콘테스트 (★애플펜슬 증정★)</a></li>
        <li><a href="javascript:void(0);" title="공지사항 바로가기">이용약관 개정 안내</a></li>
        <li><a href="javascript:void(0);" title="공지사항 바로가기">★OMG★ 메가공무원 G-TELP Level 2 목표점수 완성 전략 공개!</a></li>
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

<p class="page_text">메가공무원 마이페이지에서 사용되는 공지사항 리스트 기능입니다.<br> 다양한 중요 일정 및 이벤트 소식들 중, 최신 공지 3건이 노출됩니다.  </p>


<!-- Code View -->
<pre class="language-html html act"></pre>



                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/mypage/index.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#공지사항</p> </li>
                            <li><p>#소식전달</p> </li>
                            <li><p>#마이페이지</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->




            <div class="page_text_wrap">
              <p class="page_head">마이페이지 - 수강강좌 목록</p> 
              <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
              <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
              <div class="position_site"><img src="/images/mypage3.png" alt='리스트위치' ></div>
                

<!-- HTML -->
<div class="code-box html"><div class="mypagetLec renewal">
<h4 class="tit">최근 수강중인 강좌</h4>
  <a href="/mypage/study/my_study.asp" class="cont_more">더보기</a>
    <ul class="current">
      <li>
        <strong class="lecname"><span>행정법</span> 전효진&nbsp;선생님</strong>
        <a href="<%=url_main%>/mypage/study/studyroom.asp?app_no=24131&amp;app_seq=81262&amp;chr_cd=19425" class="direct_link">
          <span>[STEP 3] 2023 전효진 한권으로 정리하는 행정법총론</span>
          <em class="clsdate">최근수강일 : 2023-02-06 오후 5:31:51</em>
        </a>
            
        <span class="plus_link">
          <a href="<%=url_main%>/teacher/home.asp?bcode=wjsgywls1" class="btn_home" title="선생님 홈">선생님 홈</a>
          <a href="<%=url_main%>/teacher/review/review.asp?bcode=wjsgywls1" class="btn_cmmnt" title="수강후기 작성하기">수강후기 작성하기</a>
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

<p class="page_text">메가공무원 마이페이지에서 사용되는 강좌 리스트 기능입니다.<br> 현재 사용자가 수강중인 강좌들이 노출되며 해당 강좌의 '선생님 홈' 및 '수강후기 작성하기' 등의 바로가기 버튼을 제공합니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>


                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/mypage/index.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#마이페이지</p> </li>
                            <li><p>#수강강좌</p> </li>
                            <li><p>#리스트</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->





            <div class="page_text_wrap">
              <p class="page_head">마이페이지 - 좌석 예약 현황</p> 
              <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
              <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
              <div class="position_site"><img src="/images/mypage4.png" alt='리스트위치' ></div>
                

<!-- HTML -->
<div class="code-box html">
<div class="mypagetLec renewal">
    <div class="cont_tit">
      <h3>좌석 예약 현황</h3>
      <span class="server_time" id="clock"></span>
    </div>
    <div class="tblList_wrp">
      <div class="lst_head">
        <div class="col1">학원</div>
        <div class="col2"><span class="for_mb">학원 / </span>강좌 정보 <span>/ 좌석</span></div>
        <div class="col3">좌석</div>
      </div>					
      <ul>
        <li class="empty">
          예약 가능한 강좌가 없습니다.
        </li>
      </ul>
    </div>

    <ul class="tbl_cautn">
      <li>사용자 네트워크환경에 따라 예약 시간 오차가 있을 수 있습니다.</li>
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
	if (window.XMLHttpRequest) {//분기하지 않으면 IE에서만 작동된다.
		xmlHttp = new XMLHttpRequest(); // IE 7.0 이상, 크롬, 파이어폭스 등
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
	var clock = document.getElementById("clock");            // 출력할 장소 선택
	currentDate.setSeconds(currentDate.getSeconds() + 1);
	var calendar = currentDate.getFullYear() + "-" + (currentDate.getMonth()+1) + "-" + currentDate.getDate() // 현재 날짜
	var amPm = 'AM'; // 초기값 AM
	var currentHours = addZeros(currentDate.getHours(),2); 
	var currentMinute = addZeros(currentDate.getMinutes() ,2);
	var currentSeconds =  addZeros(currentDate.getSeconds(),2);
	
	if(currentHours >= 12){ // 시간이 12보다 클 때 PM으로 세팅, 12를 빼줌
		amPm = 'PM';
		currentHours = addZeros(currentHours - 12,2);
	}

	if(currentSeconds >= 50){// 50초 이상일 때 색을 변환해 준다.
	currentSeconds = '<span style="color:#de1951;">'+currentSeconds+'</span>'
	}
	clock.innerHTML = currentHours+":"+currentMinute+":"+currentSeconds +" "+ amPm; //날짜를 출력해 줌
  setTimeout(printClock,1000);   // 1초마다 printClock() 함수 호출
};

function addZeros(num, digit) { // 자릿수 맞춰주기
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

<p class="page_text">메가소방캠퍼스 마이페이지에서 사용되는 강좌 좌석예약 기능입니다.<br> 현재 사용자가 예약 가능한 강좌들이 노출되며 상단에 현재 시각 역시 표시하여주고 있습니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-javascript act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="https://sobangcampus.megagong.net/mypage/seatrsv/state.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#좌석예약</p> </li>
                            <li><p>#타이머</p> </li>
                            <li><p>#마이페이지</p> </li>
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