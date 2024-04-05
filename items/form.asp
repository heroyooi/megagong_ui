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
              <h3 class="page_name_sub">폼</h3>
              <p class="page_sub_text">메가공무원의 다양한 페이지에서 사용되는 폼 기능입니다.<br>
              사용자가 정보를 입력하여 메가공무원 사이트의 서버로 전송하면, 해당 정보를 바탕으로 사용자에게 필요한 다양한 서비스를 제공하고 있습니다.<br>
              별도의 요청이 있는 경우 외에는 기존 폼 양식을 바탕으로 작업하는 것을 원칙으로 합니다.</p>
              <div class="page_print"><input type="button" value="인쇄하기" id="print" onclick="window.print()"/></div>
            </div>

<pre class="language-html css"><code><link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/megagong_common_lab.css" /></code></pre>
<pre class="language-html js"><code><script src="<%=url_main%>/common/js/ui_lab.js"></script></code></pre>


            <!--<p class="page_sub_text">여기에 줄글로 설명을 적습니다. 여기에 줄글로 설명을 적습니다. 여기에 줄글로 설명을 적습니다.</p>
            <hr/>-->



            <div class="page_text_wrap">
                <p class="page_head">합격전략LAB 모집정보 - 셀렉트 박스 5개 나열</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/form1.png" alt='위치' ></div>
                

<!-- HTML -->
<div class="code-box html"><div class="select-wrp">
  <ul>
    <li class="choice-box">
      <span class="select-base">
        <span class="value"></span>
        <select id="exam_apptype" name="exam_apptype">
          <option value="1" selected>일반전형</option>
          <option value="2">장애인</option>
          <option value="3">저소득</option>
        </select>
      </span>								
    </li>
    <li class="choice-box">
      <span class="select-base">
        <span class="value"></span>
        <select id="exam_grp" name="exam_grp">
          <option value="101">행정직군</option>
          <option value="102">기술직군</option>
        </select>
      </span>								
    </li>
    <li class="choice-box">
      <span class="select-base">
        <span class="value"></span>
        <select id="exam_dpt" name="exam_dpt">
          <option value="011" selected>행정직</option>
          <option value="012">세무직</option>
          <option value="032">직업상담직</option>
          <option value="033">관세직</option>
          <option value="034">통계직</option>
          <option value="035">교정직</option>
          <option value="036">보호직</option>
          <option value="037">검찰직</option>
          <option value="038">마약수사직</option>
          <option value="039">출입국관리직</option>
          <option value="040">철도경찰직</option>
        </select>
      </span>								
    </li>
    <li class="choice-box">
      <span class="select-base">
        <span class="value"></span>
        <select id="exam_dpt2" name="exam_dpt2">
          <option value="004">고용노동</option>
          <option value="006">교육행정</option>
          <option value="033">선거행정</option>
          <option value="053" selected>일반행정</option>
          <option value="054">일반행정(경찰)</option>
          <option value="057">일반행정(우정)</option>
        </select>
      </span>								
    </li>
    <li class="choice-box" id="li_exam_area">
      <span class="select-base">
        <span class="value"></span>
        <select id="exam_area" name="exam_area">
          <option value="10">대한민국</option>
        </select>
      </span>								
    </li>
    <li class="choice-box">
      <span class="select-base">
        <span class="value"></span>
        <select id="exam_area2" name="exam_area2">
          <option value="111">강원</option>
          <option value="113">부산</option>
          <option value="114" selected>전국</option>
          <option value="115">전북</option>
          <option value="116">제주</option>
          <option value="118">울산·경남</option>
          <option value="120">광주·전남</option>
          <option value="121">대구·경북</option>
          <option value="122">대전·세종·충남·충북</option>
          <option value="123">서울·인천·경기</option>
        </select>
      </span>								
    </li>
  </ul>
</div></div>

<p class="page_text">메가공무원의 합격전략 연구소에서 사용되는 기능입니다.<br> 
선택박스를 통하여 사용자가 찾기를 희망하는 직렬, 직군의 모집정보 등을 찾아볼 수 있습니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=lab_main%>/l/gong/guide/series.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#합격전략</p> </li>
                            <li><p>#정보검색</p> </li>
                            <li><p>#모집공고</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->






            <div class="page_text_wrap">
                <p class="page_head">합격전략LAB - 난공TV</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/form1.png" alt='위치' ></div>
                

<!-- HTML -->
<div class="code-box html"><div class="select-wrp">
  <ul>
    <li class="choice-box">
      <span class="select-base">
        <span class="value"></span>
        <select>
          <option value="0" selected>제목</option>
          <option value="1">Value 1</option>
          <option value="2">Value 2</option>
          <option value="3">Value 3</option>
        </select>
      </span>								
    </li>
    <li class="text-box"><input type="text"></li>
    <li class="search-box"><a href="">검색</a></li>
  </ul>
</div></div>

<p class="page_text">메가공무원의 합격전략 연구소에서 사용되는 기능입니다.<br> 검색창을 통하여 사용자가 찾기를 희망하는 강의 관련 영상을 찾아볼 수 있습니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=lab_main%>/l/gong/nangongtv/list.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#난공TV</p> </li>
                            <li><p>#합격전략</p> </li>
                            <li><p>#정보검색</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->





            <div class="page_text_wrap" id="page_exp1">
                <p class="page_head">합격전략LAB - 과목별 합격전략</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/form1.png" alt='위치' ></div>
                

<!-- HTML -->
<div class="code-box html"><div class="select-wrp">
  <ul>
    <li class="choice-box">
      <span class="select-base">
        <span class="value"></span>
        <select>
          <option value="0" selected>전체</option>
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
          <option value="0" selected>제목</option>
          <option value="1">Value 1</option>
          <option value="2">Value 2</option>
          <option value="3">Value 3</option>
        </select>
      </span>								
    </li>
    <li class="text-box"><input type="text"></li>
    <li class="search-box"><a href="">검색</a></li>
  </ul>
</div></div>

<style>#page_exp1 .select-wrp ul li {padding:5px 15px;}</style>

<p class="page_text">메가공무원의 합격전략 연구소에서 사용되는 기능입니다.<br> 
검색창을 통하여 사용자가 찾기를 희망하는 학습전략 관련 영상을 찾아볼 수 있습니다. </p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=lab_main%>/l/gong/strategy/list.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#합격전략</p> </li>
                            <li><p>#정보검색</p> </li>
                            <li><p>#영상검색</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->




            <div class="page_text_wrap" id="page_exp2">
                <p class="page_head">합격전략LAB - 기출문제</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/form1.png" alt='위치' ></div>
                

<!-- HTML -->
<div class="code-box html"><div class="library-wrp">
  <div class="select-wrp">
    <ul>
      <li class="choice-box">
        <span class="select-base">
          <span class="value"></span>
          <select id="library_sel2" name="year">
            <option value="" selected>년도</option>
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
            <option selected value="">구분</option>
            <option value="1">국가직</option>
            <option value="2">지방직</option>
            <option value="7">법원직</option>
            <option value="8">계리직</option>
          </select>
        </span>								
      </li>
      <li class="choice-box">
        <span class="select-base">
          <span class="value"></span>
          <select id="library_sel5" name="grd" onchange="getSub(); resetSelector(2);">
            <option selected value="">계급</option>
            <option value="5">9급</option>
            <option value="6">7급</option>
          </select>
        </span>								
      </li>
      <li class="choice-box">
        <span class="select-base">
          <span class="value"></span>
          <select id="library_sel3" name="sub"><option value="">전체</option><option value="전과목">전과목</option><option value="국어">국어</option><option value="행정학">행정학</option><option value="간호관리">간호관리</option><option value="건축계획">건축계획</option><option value="건축구조">건축구조</option><option value="경제학개론">경제학개론</option><option value="공업화학">공업화학</option><option value="공직선거법">공직선거법</option><option value="관세법개론">관세법개론</option><option value="교육학개론">교육학개론</option><option value="교정학개론">교정학개론</option><option value="국제법개론">국제법개론</option><option value="기계설계">기계설계</option><option value="기계일반">기계일반</option><option value="네트워크보안">네트워크보안</option><option value="노동법개론">노동법개론</option><option value="무선공학개론">무선공학개론</option><option value="사회복지학개론">사회복지학개론</option><option value="상황판단">상황판단</option><option value="세법개론">세법개론</option><option value="식용작물">식용작물</option><option value="안전관리론">안전관리론</option><option value="영어">영어</option><option value="응용역학개론">응용역학개론</option><option value="임업경영">임업경영</option><option value="자료조직개론">자료조직개론</option><option value="재난관리론">재난관리론</option><option value="재배학개론">재배학개론</option><option value="전기기기">전기기기</option><option value="전기이론">전기이론</option><option value="전자공학개론">전자공학개론</option><option value="정보보호론">정보보호론</option><option value="정보봉사개론">정보봉사개론</option><option value="조경학">조경학</option><option value="조림">조림</option><option value="지방세법">지방세법</option><option value="지역사회간호">지역사회간호</option><option value="지적법규">지적법규</option><option value="지적전산학개론">지적전산학개론</option><option value="지적측량">지적측량</option><option value="직업상담·심리학개론">직업상담·심리학개론</option><option value="컴퓨터일반">컴퓨터일반</option><option value="토목설계">토목설계</option><option value="통계학개론">통계학개론</option><option value="통신이론">통신이론</option><option value="한국사">한국사</option><option value="행정법총론">행정법총론</option><option value="행정학개론">행정학개론</option><option value="형법">형법</option><option value="형법총론">형법총론</option><option value="형사소송법">형사소송법</option><option value="형사소송법개론">형사소송법개론</option><option value="화학">화학</option><option value="화학공학일반">화학공학일반</option><option value="환경공학개론">환경공학개론</option><option value="회계원리">회계원리</option><option value="회계학">회계학</option></select>
        </span>								
      </li>
      <li class="choice-box">
        <span class="select-base">
          <span class="value"></span>
          <select id="library_sel4" name="searchkey">
              <option value="subject">제목</option>
            </select>
        </span>								
      </li>
      <li class="text-box short"><input id="searchword" name="searchword" type="text" value="<%=searchword%>"></li>
      <li class="search-box" onclick="getList();"><a href="javascript:void(0);">검색</a></li>
    </ul>
  </div>
</div></div>

<style>#page_exp2 .select-wrp ul li{padding:5px 10px;}</style>

<p class="page_text">메가공무원의 합격전략 연구소에서 사용되는 기능입니다.<br> 검색창을 통하여 사용자가 찾기를 희망하는 년도의 과목 기출문제를 찾아볼 수 있습니다. </p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=lab_main%>/l/gong/library/list.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#합격전략</p> </li>
                            <li><p>#기출문제</p> </li>
                            <li><p>#정보검색</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->




            
            <div class="page_text_wrap">
                <p class="page_head">기간 검색 영역</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/table1.png" alt='위치' ></div>
                

<!-- HTML -->
<div class="code-box html"><div id="mContainer" class="wideC">
  <div class="payWrap">
    <div class="pay_sort">
      <p>조회 기간</p>
      <div class="month_area">
        <ul class="month_list clearfix">
          <li class="on">
            <a href="javascript:void(0);">1개월</a>
          </li>
          <li>
            <a href="javascript:void(0);">3개월</a>
          </li>
          <li class="last ">
            <a href="javascript:void(0);">기간설정</a>
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
          <span>조회하기</span>
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


<p class="page_text">교재 등의 주문/배송 현황을 확인할 수 있도록 돕는 폼 기능입니다.<br> 일정 기간을 선택하여 조회하면 해당 기간 동안에 주문 및 배송된 기록을 확인해볼 수 있습니다. </p>

<!-- Code View -->
<pre class="language-html html act direct"><code><div id="mContainer" class="wideC">
  <div class="payWrap">
    <div class="pay_sort">
      <p>조회 기간</p>
      <div class="month_area">
        <ul class="month_list clearfix">
          <li class="on">
            <a href="javascript:fncSetMonth(1);">1개월</a>
          </li>
          <li>
            <a href="javascript:fncSetMonth(3);">3개월</a>
          </li>
          <li class="last ">
            <a href="javascript:fncSetMonth(0);">기간설정</a>
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
          <span>조회하기</span>
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
                            <li><p>#기간검색</p> </li>
                            <li><p>#마이페이지</p> </li>
                            <li><p>#조회</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->






            <div class="page_text_wrap">
                <p class="page_head">신청 팝업 공통 폼</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/popup4.png" alt='위치' ></div>
                

<!-- HTML -->
<div class="code-box html"><div id="pop_wrap">
  <div class="cont">
    <form method="post" action>
      <div class="apply_zone">
        <div class="write_info">
          <strong>설명회 · 공개특강 신청</strong>
          <p class="subTitle">설명회 · 공개특강 · 모의고사 좌석 수가 한정되어 있습니다.</p>
          <p class="subTitle2"><strong>온라인 예약을 하시면 보다 편리하게 입장하실 수 있습니다.</strong></p>
          <div class="reservationInfo">
            <ul>
              <li><img src="<%=img_main %>/c/gongssel/presentation/icon_presentation.png" alt="" /> <strong>[간담회] 5/20(금) 15시 학습전략 간담회</strong></li>
              <li>· 일시: 2022-05-20(금) 오후 3시</li>
              <li>· 장소: 메가스터디타워 3층</li>
            </ul>
          </div>
          <table class="t_border1" title="간담회 예약하기">
            <colgroup>
              <col width="20%"/>
              <col width="80%"/>
            </colgroup>
            <tr>
              <th><label for="app_mem_name">이름<i>*</i></label></th>
              <td>
                <% If cook_id = "" Then %>
                <span><input type="text" id="app_mem_name" name="app_mem_name" value="" title="이름" maxlength="10"></span>
                <% Else %>
                <span class="readonly"><input type="text" id="app_mem_name" name="app_mem_name" value="<%=cook_name%>(<%=cook_id%>)" title="이름" readonly></span>
                <% End If %>
              </td>
            </tr>
            <tr>
              <th><label for="hp_no_1">연락처<i>*</i></label></th>
              <td class="numberbox">
                <ul>
                  <li>
                    <span>
                      <select id="hp_no_1" name="hp_no_1" title="휴대폰번호 앞자리 선택">
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
                    <span><input type="text" id="hp_no_2" name="hp_no_2" value="<%=hp_no_2%>" onkeyup="fncNumChk2(this);" maxlength="4" title="휴대폰번호 중간 4자리 입력"></span>
                  </li>
                  <li>
                    <span><input type="text" id="hp_no_3" name="hp_no_3" value="<%=hp_no_3%>" onkeyup="fncNumChk2(this);" maxlength="4" title="휴대폰번호 끝 4자리 입력"></span>
                  </li>
                </ul>
              </td>
            </tr>
            <tr>
              <th><label>관심 시험<i>*</i></label></th>
              <td>
                <ul class="relation">
                  <li><input type="checkbox" name="app_exam" value="9급" id="relation_1" /> <label for="relation_1">9급</label></li>
                  <li><input type="checkbox" name="app_exam" value="7급" id="relation_2" /> <label for="relation_2">7급</label></li>
                  <li><input type="checkbox" name="app_exam" value="군무원" id="relation_7" /> <label for="relation_7">군무원</label></li>
                  <li><input type="checkbox" name="app_exam" value="법원/검찰/교정직" id="relation_3" /> <label for="relation_3">법원/검찰/교정직</label></li>
                  <li><input type="checkbox" name="app_exam" value="세무/관세직" id="relation_4" /> <label for="relation_4">세무/관세직</label></li>
                  <li><input type="checkbox" name="app_exam" value="사회복지직" id="relation_5" /> <label for="relation_5">사회복지직</label></li>
                  <li><input type="checkbox" name="app_exam" value="기타" id="relation_6" /> <label for="relation_6">기타</label></li>
                  <li><input type="text" name="app_exam_desc" value="" id="app_exam_desc" style="border:1px solid gray; width:200px;" maxlength="200"/></li>
                </ul>
              </td>
            </tr>
            <tr>
              <th><label>지역<i>*</i></label></th>
              <td>
                <span>
                  <select id="app_lo" name="app_lo" title="지역 선택">
                    <option value="">지역</option>
                    <option value="서울">서울</option>
                    <option value="부산">부산</option>
                    <option value="대구">대구</option>
                    <option value="인천">인천</option>
                    <option value="광주">광주</option>
                    <option value="대전">대전</option>
                    <option value="울산">울산</option>
                    <option value="경기">경기</option>
                    <option value="강원">강원</option>
                    <option value="충남">충남</option>
                    <option value="충북">충북</option>
                    <option value="세종">세종</option>
                    <option value="전남">전남</option>
                    <option value="전북">전북</option>
                    <option value="경남">경남</option>
                    <option value="경북">경북</option>
                    <option value="제주">제주</option>
                    <option value="기타">기타</option>
                  </select>
                </span>
              </td>
            </tr>
            <tr>
              <th><label>유형<i>*</i></label></th>
              <td>
                <span>
                  <select id="app_type" name="app_type" title="유형 선택">
                    <option value="">유형</option>
                    <option value="대학생">대학생</option>
                    <option value="휴학생">휴학생</option>
                    <option value="직장인">직장인</option>
                    <option value="기타">기타</option>
                  </select>
                </span>
              </td>
            </tr>
            <tr>
              <th><label>준비기간<i>*</i></label></th>
              <td>
                <ul class="relation">
                  <li><input type="radio" name="app_term" value="0~6개월" id="ready_1" /> <label for="ready_1">0~6개월</label></li>
                  <li><input type="radio" name="app_term" value="1년 미만" id="ready_2" /> <label for="ready_2">1년 미만</label></li>
                  <li><input type="radio" name="app_term" value="2년 미만" id="ready_3" /> <label for="ready_3">2년 미만</label></li>
                  <li><input type="radio" name="app_term" value="3년 미만" id="ready_4" /> <label for="ready_4">3년 미만</label></li>
                  <li><input type="radio" name="app_term" value="4년 이상" id="ready_5" /> <label for="ready_5">4년 이상</label></li>
                </ul>
              </td>
            </tr>
            <tr>
              <th><label>응시횟수<i>*</i></label></th>
              <td>
                <ul class="relation">
                  <li><input type="radio" name="app_apply" value="0회" id="count_1" /> <label for="count_1">0회</label></li>
                  <li><input type="radio" name="app_apply" value="1회" id="count_2" /> <label for="count_2">1회</label></li>
                  <li><input type="radio" name="app_apply" value="2회" id="count_3" /> <label for="count_3">2회</label></li>
                  <li><input type="radio" name="app_apply" value="3회" id="count_4" /> <label for="count_4">3회</label></li>
                  <li><input type="radio" name="app_apply" value="4회 이상" id="count_5" /> <label for="count_5">4회 이상</label></li>
                </ul>
              </td>
            </tr>
            <% if PM_TYPE = "3" then 	' 모의고사 X %>
            <input type="radio" name="app_companion" value="0" checked style="display:none;" />
            <textarea id='app_mem_question' style="display:none;" ></textarea>
            <% else %>
            <tr>
              <th><label>동반인원<i>*</i></label></th>
              <td>
                <ul class="relation">
                  <li><input type="radio" name="app_companion" value="0" id="person_1" /> <label for="person_1">0명</label></li>
                  <li><input type="radio" name="app_companion" value="1" id="person_2" /> <label for="person_2">1명</label></li>
                  <li><input type="radio" name="app_companion" value="2" id="person_3" /> <label for="person_3">2명</label></li>
                  <li><input type="radio" name="app_companion" value="3" id="person_4" /> <label for="person_4">3명</label></li>
                  <li><input type="radio" name="app_companion" value="4" id="person_5" /> <label for="person_5">4명 이상</label></li>
                </ul>
              </td>
            </tr>
            <tr>
              <th><label>궁금한 내용</label></th>
              <td>
                <textarea id='app_mem_question' placeholder="- 듣고 싶은 내용이나 궁금한 내용을 자유롭게 작성해주세요.&#13;&#10;- 내용은 200자 이하로 작성해주세요."></textarea>
              </td>
            </tr>
            <% end if %>
          </table>
          <p>*신청자의 휴대폰으로 예약 내용이 발송되므로 연락처를 정확히 입력해주세요.</p>
        </div>

        <div class="privacy_box">
          <% If cook_id <> "" Then %>
          <!-- 회원 / -->
          <strong>1. 개인정보 수집 이용 목적</strong>
          <span>설명회 · 공개특강 · 모의고사 안내 및 SMS 발송 등에 활용</span>
          <strong>2. 개인정보 수집 항목 및 보유 기간</strong>
          <span>이름, 연락처, 관심 시험, 지역, 유형, 준비기간, 응시횟수, 동반인원, 궁금한 내용은 회원 탈퇴 전 회원자격이 유지되는 기간 동안</span>
          <strong>3. 개인정보제공 동의거부에 따른 불이익</strong>
          <span>귀하는 개인정보 제공 동의를 거부할 수 있으며 동의 거부에 따른 불이익은 없으나, 위 제공사항은 온라인 사전예약에 반드시 필요한 사항으로, 거부하실 경우 온라인 사전예약이 불가함을 알려드립니다.</span>
          <% Else %>
          <!-- 비회원 / -->
          <strong>1. 개인정보 수집 이용 목적</strong>
          <span>설명회 · 공개특강 · 모의고사 안내 및 SMS 발송 등에 활용</span>
          <strong>2. 개인정보 수집 항목 및 보유 기간</strong>
          <span>이름, 연락처, 관심 시험, 지역, 유형, 준비기간, 응시횟수, 동반인원, 궁금한 내용은 설명회 · 공개특강 · 모의고사 진행 한달 이후 기간 동안</span>
          <strong>3. 개인정보제공 동의거부에 따른 불이익</strong>
          <span>귀하는 개인정보 제공 동의를 거부할 수 있으며 동의 거부에 따른 불이익은 없으나, 위 제공사항은 온라인 사전예약에 반드시 필요한 사항으로, 거부하실 경우 온라인 사전예약이 불가함을 알려드립니다.</span>
          <% End If %>
        </div>

        <p class="privacy_check">
          <input type="checkbox" id="app_mem_agree_yn" name="app_mem_agree_yn" value="Y">
          <label for="app_mem_agree_yn">개인정보 수집 및 이용에 동의합니다.</label>
        </p>
      </div>
    </form>
  </div>
  <div class="btnbox">
    <a href="javascript:;" onclick="reservX();" class="reserv_ok" title="예약하기">예약하기</a>
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

<p class="page_text">설명회, 공개특강 및 모의고사 등의 상황에서 사용자의 참여를 접수 받는 신청 폼입니다.<br>
신청 폼의 디자인 및 코드 양식은 기존의 규격을 따르는 것을 원칙으로 합니다.
</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-html css act"></pre>


                <div class="page_bot_wrap">
                    <a class="use_link" href="https://ngbr.megagong.net/r/ngbr/apply/index.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#설명회</p> </li>
                            <li><p>#예약</p> </li>
                            <li><p>#제출</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->






              <div class="page_text_wrap">
                <p class="page_head">응시인증 - 글자 수 체크 </p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/popup4.png" alt='위치' ></div>
                

<!-- HTML -->
<div class="code-box html"><div class="content_area">
  <div class="content_inner">
    <a href="javascript:;" class="mg_popup_close" onclick="closeCertifiedPopup()"></a>
    <p class="b_tit">제63회 한국사능력검정시험 <br>응시 인증하기 </p>
    
    <div class="mg_tb_wrap">
      <table summary="인증 관련" class="mg_tb_form">
        <colgroup>
            <col width="25%">
            <col width="*">
        </colgroup>
        <tbody>
          <tr>
            <th scope="row">인증 이미지</th>
            <td>
              <div class="mg_filebox clfix">
                <div class="filename">
                  <input type="text" id="filename" name="filename" value="응시 이미지를 업로드해 주세요.">
                  <a id="btn_fileDel" href="javascript:void(0);" onclick="document.getElementById('filename').value='응시 이미지를 업로드해 주세요.';document.getElementById('attfile').value='';document.getElementById('attfile_ori_name').value=''; $('#btn_fileDel').show();" title="삭제">[삭제]</a>
                </div>
                <div class="filebtn">
                  <label for="attfile" style="cursor:pointer">파일 선택</label>
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
            <th scope="row">내용</th>
            <td class="text_box">
              <textarea class="mg_textarea" name="p_intro" id="edContent" cols="30" rows="10" maxlength="500" placeholder="응시 후기는 10자 이상 500자 이하로 작성 가능합니다."></textarea>
              <p class="rest_txt color_grey">
                [<span class="textCount" id="edContent_cnt">0</span><span class="textTotal">/500]</span>
              </p>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
    <ul class="mg_s_info">
      <li>※ 제 63회 한국사능력검정시험 인증 시에만 참여가 인정됩니다. </li>
      <li>※ 이미지는 5MB 이하의 jpg, jpeg, gif 또는 png 파일만 업로드 가능합니다.</li>
      <li>※ 내용은 10자 이상 500자 이하로 작성 가능합니다.</li>
      <li>※ 이벤트 목적과 관련 없는 글, 욕설·비방, 타 강사가 언급된 글 등은 별도의 고지 없이 삭제되며 당첨 대상에서 제외됩니다.</li>
    </ul>
    <div class="mg_btn_wrap">
      <a href="javascript:;" class="mg_btn_base xl" onclick="cert()">응시 인증하기 &gt;</a>
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
<script>// 글자 수 세기
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


<p class="page_text">다양한 이벤트 등의 페이지에서 사용되는 폼 양식입니다.<br> 내용란에 입력하는 글자 수가 바로 집계되어 표시되어집니다.</p>



<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css css act"></pre>
<pre class="language-javascript act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="https://www.megagong.net/event/2023/01100001/index.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#응시하기</p> </li>
                            <li><p>#제출</p> </li>
                            <li><p>#글자수</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->





                        <div class="page_text_wrap">
                <p class="page_head">설문조사</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/popup4.png" alt='위치' ></div>
                

<!-- HTML -->
<div class="code-box html"><div class="popInner">
  <!--<div class="mg_btn_wrap right top">
    <button class="close" onclick="closeSurvey()">닫기</button>
  </div>-->
  <div class="content_area eventInput">
    <h3>
    전효진 선생님 한권행정법 수강생 대상 설문조사
    </h3>

    <p class="txt">
      메가공무원은 보다 나은 강좌 서비스 제공을 위해 <br class="br_768"> 
      수강생 대상으로 설문조사를 진행하게 되었습니다. <br> 
      <strong class="red">설문에 적극적이고 객관적으로 참여해 주신 분들에게는 <br class="br_768"> 
      추첨을 통해 소정의 상품과 혜택을 제공합니다.<br> 
      (솔직하고 성실한 답변 시 확률 UP!!)</strong>
    </p>
    
    <dl class="schedule">
      <dt>설문조사 진행기간 : </dt>
      <dd> 2023년 2월 10일 (금) ~2월 24일 (금)</dd>
    </dl>
    <ul class="gift">
      <li><img src="https://img.megagong.net/m/2023/0210_zzang/gift1.png" alt="신세계 상품권 1만원권"></li>
      <li><img src="https://img.megagong.net/m/2023/0210_zzang/gift2.png" alt="맘스터치 싸이버거 세트"></li>
      <li><img src="https://img.megagong.net/m/2023/0210_zzang/gift3.png" alt="스타벅스 아메리카노 T"></li>
    </ul>
    <ul class="tiny_noti">
      <li>- 본 설문조사는 전효진 선생님 한권행정법 강좌를 수강한 회원 대상으로 진행됩니다.</li>
      <li>- 혜택은 설문조사 종료 후 추첨을 통해 2/27(월) 회원정보의 휴대폰번호로 발송됩니다.</li>
      <li>- 발송 상품의 브랜드는 발송대행사의 사정으로 변경될 수 있습니다.</li>
      <li>- SMS 수신 동의가 되어 있지 않은 경우 발송 대상에서 제외 되오니 반드시 SMS 수신에 동의해 주세요. <br> <a href="https://www.megagong.net/member/Account_Chk.asp" class="blue">&gt;SMS 수신 동의</a> </li>
      <li>- 경품은 비슷한 다른 상품으로 대체될 수 있으며, 경품 발송일은 내부 사정에 의해 변경될 수 있습니다.</li>
      <li>- 경품 발송 전 회원 탈퇴를 하는 경우에는 경품 지급이 불가합니다.</li>
    </ul>

    <p class="subtit">■ 설문에 응답하는 회원분의 정보를 확인해주세요.</p>
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
          <th class="noline">이름</th>
          <td class="aL"><input type="text" name="name" id="name" class="clickChk" value="홍길동" readonly=""></td>
          <th>아이디</th>
          <td colspan="3" class="aL none"><input type="text" name="id" id="id" class="clickChk" value="testid" readonly=""></td>
        </tr>
        <tr>
          <th class="noline">연락처</th>
          <td class="aL noline"><input type="text" name="phone" id="phone" class="clickChk" style="width:100%" value="010-1234-1234" readonly=""></td>
          <th class="none" colspan="2"><a href="https://www.megagong.net/member/Account_Chk.asp" class="blue">회원정보수정 &gt;</a></th>
          <!--<td class="ar noline"></td>-->
        </tr>
      </tbody>
    </table>
    <p class="tiny_noti">※ 회원정보 페이지 이동 시 작성한 내용은 모두 삭제되니, <br> 회원정보 수정이 필요한 경우, 회원정보를 먼저 수정하시기 바랍니다.</p>
    <p class="txt">설문은 약 5분 정도 소요 되며 최종 제출까지 완료하시면 참여가 완료됩니다. <br> 필수 항목을 모두 입력하셔야 제출이 가능하오니  <br> 설문 내용을 천천히 읽어보시고 소중한 의견 작성 부탁 드립니다.</p>

    <h4>전효진 한권 행정법 설문조사 </h4>
    <table class="tbl no">
      <colgroup>
        <col width="33.3333333%">
        <col width="33.3333333%">
        <col width="33.3333333%">
      </colgroup>
      <thead></thead>
      <tbody>
        <tr>
          <th colspan="3">1. 2023년 공무원 시험에 응시 할 예정인가요? <label id="g1_q1"></label></th>
        </tr>
        <tr>
          <td>
            <input type="radio" name="g1_q1" id="g1_q1_1" value="1">
            <label for="g1_q1_1">네</label>
          </td>
          <td>
            <input type="radio" name="g1_q1" id="g1_q1_2" value="2">
            <label for="g1_q1_2">아니오<input type="text" id="g1_q1_txt" maxlength="10" placeholder="최대10글자입력가능" class="position_re"></label>
          </td>
        </tr>
        <tr>
          <td class="wide_re" colspan="3">
            아니오일 경우 언제 응시 예정인지<br class="br_374"> 작성해 주세요.
          </td>
        </tr>

        <tr>
          <th colspan="3">2. 2023년 공무원 시험에 응시하면 몇 번째 응시인가요? </th>
        </tr>
        <tr>
          <td>
            <input type="radio" name="g1_q2" id="g1_q2_1" value="1">
            <label for="g1_q2_1">첫 번째 </label>
          </td>
          <td>
            <input type="radio" name="g1_q2" id="g1_q2_2" value="2">
            <label for="g1_q2_2">두 번째 </label>
          </td>
          <td>
            <input type="radio" name="g1_q2" id="g1_q2_3" value="3">
            <label for="g1_q2_3">세 번째 </label>
          </td>
        </tr>
        <tr>
          <td colspan="2">
            <input type="radio" name="g1_q2" id="g1_q2_4" value="4">
            <label for="g1_q2_4">기타 <span class="space"></span> 기타일 경우 몇 번째 응시인가요? <input type="text" id="g1_q2_txt" maxlength="10" placeholder="최대10글자입력가능" class="position_re2"></label>
          </td>
        </tr>

        <tr>
          <th colspan="3">3. 목표로 하는 급수 및 직렬을 선택해 주세요.</th>
        </tr>
        <tr>
          <td>
            <input type="radio" name="g1_q3" id="g1_q3_1" value="1" onclick="useYN(3, false);">
            <label for="g1_q3_1">9급</label>
          </td>
          <td>
            <input type="radio" name="g1_q3" id="g1_q3_2" value="2" onclick="useYN(3, false);">
            <label for="g1_q3_2">7급</label>
          </td>
          <td>
            <input type="radio" name="g1_q3" id="g1_q3_3" value="3" onclick="useYN(3, true);">
            <label for="g1_q3_3">소방</label>
          </td>
        </tr>
        <tr>
          <td>
            <input type="radio" name="g1_q3" id="g1_q3_4" value="4" onclick="useYN(3, true);">
            <label for="g1_q3_4">군무원</label>
          </td>
          <td>
            <input type="radio" name="g1_q3" id="g1_q3_5" value="5" onclick="useYN(3, true);">
            <label for="g1_q3_5">경찰</label>
          </td>
          <td>
            <input type="radio" name="g1_q3" id="g1_q3_6" value="6" onclick="useYN(3, true);">
            <label for="g1_q3_6">기타 <input type="text" id="g1_q3_txt" maxlength="10" placeholder="최대10글자입력가능"></label>
          </td>
        </tr>

        <tr>
          <th colspan="3">3-1. 9급, 7급인 경우 직렬을 선택해 주세요.</th>
        </tr>
        <tr>
          <td>
            <input type="radio" name="g1_q4" id="g1_q4_1" value="1" disabled="">
            <label for="g1_q4_1">일반행정직</label>
          </td>
          <td>
            <input type="radio" name="g1_q4" id="g1_q4_2" value="2" disabled="">
            <label for="g1_q4_2">교육행정직</label>
          </td>
          <td>
            <input type="radio" name="g1_q4" id="g1_q4_3" value="3" disabled="">
            <label for="g1_q4_3">사회복지직</label>
          </td>
        </tr>
        <tr>
          <td>
            <input type="radio" name="g1_q4" id="g1_q4_4" value="4" disabled="">
            <label for="g1_q4_4">고용노동직</label>
          </td>
          <td>
            <input type="radio" name="g1_q4" id="g1_q4_5" value="5" disabled="">
            <label for="g1_q4_5">선거행정직</label>
          </td>
          <td>
            <input type="radio" name="g1_q4" id="g1_q4_6" value="6" disabled="">
            <label for="g1_q4_6">기타 <input type="text" id="g1_q4_txt" maxlength="10" placeholder="최대10글자입력가능" disabled=""></label>
          </td>
        </tr>

        <tr>
          <th colspan="3">4. 공무원 준비 기간은 어느 정도 되었나요?</th>
        </tr>
        <tr>
          <td>
            <input type="radio" name="g1_q5" id="g1_q5_1" value="1">
            <label for="g1_q5_1">1년 미만</label>
          </td>
          <td>
            <input type="radio" name="g1_q5" id="g1_q5_2" value="2">
            <label for="g1_q5_2">1~2년</label>
          </td>
          <td>
            <input type="radio" name="g1_q5" id="g1_q5_3" value="3">
            <label for="g1_q5_3">2년 이상 </label>
          </td>
        </tr>
        <tr>
          <td>
            <input type="radio" name="g1_q5" id="g1_q5_4" value="4">
            <label for="g1_q5_4">3년 이상</label>
          </td>
        </tr>

        <tr>
          <th colspan="3">5. 어떤 경로로 전효진 선생님을 알게 되었나요? </th>
        </tr>
        <tr>
          <td>
            <input type="radio" name="g1_q6" id="g1_q6_1" value="1">
            <label for="g1_q6_1">포털사이트 검색</label>
          </td>
          <td>
            <input type="radio" name="g1_q6" id="g1_q6_2" value="2">
            <label for="g1_q6_2">카페 및 온라인 커뮤니티 </label>
          </td>
          <td>
            <input type="radio" name="g1_q6" id="g1_q6_3" value="3">
            <label for="g1_q6_3">지인 추천 </label>
          </td>
        </tr>
        <tr>
          <td>
            <input type="radio" name="g1_q6" id="g1_q6_4" value="4">
            <label for="g1_q6_4">메가공무원 사이트 </label>
          </td>
          <td>
            <input type="radio" name="g1_q6" id="g1_q6_5" value="5">
            <label for="g1_q6_5">유튜브 </label>
          </td>
          <td>
            <input type="radio" name="g1_q6" id="g1_q6_6" value="6">
            <label for="g1_q6_6">기타 <input type="text" id="g1_q6_txt" maxlength="10" placeholder="최대10글자입력가능"></label>
          </td>
        </tr>

        <tr>
          <th colspan="3">6. 한권행정법을 신청하여 수강한 이유는 무엇인가요?</th>
        </tr>
        <tr>
          <td colspan="3" class="pl">
            <textarea name="text_kind" id="g1_q7_txt" cols="30" rows="10" maxlength="100" placeholder="최소 10글자 부터 최대 100글자 입력 가능 "></textarea>
          </td>
        </tr>

        <tr>
          <th colspan="3">7. 한권행정법 강의 수강 후, 만족도는 어떤가요?</th>
        </tr>
        <tr>
          <td>
            <input type="radio" name="g1_q8" id="g1_q8_1" value="1">
            <label for="g1_q8_1">매우만족</label>
          </td>
          <td>
            <input type="radio" name="g1_q8" id="g1_q8_2" value="2">
            <label for="g1_q8_2">만족</label>
          </td>
          <td>
            <input type="radio" name="g1_q8" id="g1_q8_3" value="3">
            <label for="g1_q8_3">보통 </label>
          </td>
        </tr>
        <tr>
          <td>
            <input type="radio" name="g1_q8" id="g1_q8_4" value="4">
            <label for="g1_q8_4">불만</label>
          </td>
          <td>
            <input type="radio" name="g1_q8" id="g1_q8_5" value="5">
            <label for="g1_q8_5">매우불만</label>
          </td>
        </tr>
        
        <tr>
          <th colspan="3">7-1. 그렇게 생각하신 이유를 작성해 주세요.</th>
        </tr>
        <tr>
          <td colspan="3" class="pl">
            <textarea name="text_kind" id="g1_q9_txt" cols="30" rows="10" maxlength="100" placeholder="최소 10글자 부터 최대 100글자 입력 가능 "></textarea>
          </td>
        </tr>

        <tr>
          <th colspan="3">8. 행정법 과목의 타 강사 수강한 적이 있으신가요? 있으시다면 선생님 이름을 입력해 주세요.</th>
        </tr>
        <tr>
          <td colspan="2">
            <input type="radio" name="g1_q10" id="g1_q10_1" onclick="useYN(8, false);" value="1">
            <label for="g1_q10_1">있다 <input type="text" id="g1_q10_txt" maxlength="10" placeholder="최대10글자입력가능" disabled=""></label>
          </td>
          <td>
            <input type="radio" name="g1_q10" id="g1_q10_2" onclick="useYN(8, true);" value="2">
            <label for="g1_q10_2">없다</label>
          </td>
        </tr>

        <tr>
          <th colspan="3">8-1. 타 강사 강의를 수강한 이유를 작성해 주세요.</th>
        </tr>
        <tr>
          <td colspan="3" class="pl">
            <textarea name="text_kind" id="g1_q11_txt" cols="30" rows="10" maxlength="100" placeholder="최소 10글자 부터 최대 100글자 입력 가능" disabled=""></textarea>
          </td>
        </tr>

        <tr>
          <th colspan="3">9. 전효진 선생님이 구매한 교재를 선택해 주세요. (복수 선택 가능)</th>
        </tr>
        <tr>
          <td>
            <input type="checkbox" name="g1_q12" id="g1_q12_1" value="1">
            <label for="g1_q12_1">기본을 다지다(올인원)</label>
          </td>
          <td>
            <input type="checkbox" name="g1_q12" id="g1_q12_2" value="2">
            <label for="g1_q12_2">기출문제집 세트(기출올킬)</label>
          </td>
          <td>
            <input type="checkbox" name="g1_q12" id="g1_q12_3" value="3">
            <label for="g1_q12_3">한권 행정법총론</label>
          </td>
        </tr>
        <tr>
          <td>
            <input type="checkbox" name="g1_q12" id="g1_q12_4" value="4">
            <label for="g1_q12_4">핵심 기출 300제</label>
          </td>
          <td>
            <input type="checkbox" name="g1_q12" id="g1_q12_5" value="5">
            <label for="g1_q12_5">행정법 총론 조문집</label>
          </td>
          <td>
            <input type="checkbox" name="g1_q12" id="g1_q12_6" value="6">
            <label for="g1_q12_6">행정법총론 파이널</label>
          </td>
        </tr>
        <tr>
          <td>
            <input type="checkbox" name="g1_q12" id="g1_q12_7" value="7">
            <label for="g1_q12_7">행정법총론 8421 문제집</label>
          </td>
        </tr>

        <tr>
          <th colspan="3">10. 전효진 선생님의 교재로 공부했을 때, 여러분의 만족도는 어떤가요?</th>
        </tr>
        <tr>
          <td>
            <input type="radio" name="g1_q13" id="g1_q13_1" value="1">
            <label for="g1_q13_1">매우만족</label>
          </td>
          <td>
            <input type="radio" name="g1_q13" id="g1_q13_2" value="2">
            <label for="g1_q13_2">만족 </label>
          </td>
          <td>
            <input type="radio" name="g1_q13" id="g1_q13_3" value="3">
            <label for="g1_q13_3">보통 </label>
          </td>
        </tr>
        <tr>
          <td>
            <input type="radio" name="g1_q13" id="g1_q13_4" value="4">
            <label for="g1_q13_4">불만</label>
          </td>
          <td>
            <input type="radio" name="g1_q13" id="g1_q13_5" value="5">
            <label for="g1_q13_5">매우불만</label>
          </td>
        </tr>

        <tr>
          <th colspan="3">10-1. 그렇게 생각하신 이유를 작성해 주세요.</th>
        </tr>
        <tr>
          <td colspan="3" class="pl">
            <textarea name="text_kind" id="g1_q14_txt" cols="30" rows="10" maxlength="100" placeholder="최소 10글자 부터 최대 100글자 입력 가능 "></textarea>
          </td>
        </tr>

        <tr>
          <th colspan="3">11. 지인이 공무원 시험을 준비한다면, 전효진 선생님의 강의를 추천하실 생각이 있으신가요?</th>
        </tr>
        <tr>
          <td>
            <input type="radio" name="g1_q15" id="g1_q15_1" value="1">
            <label for="g1_q15_1">있다</label>
          </td>
          <td>
            <input type="radio" name="g1_q15" id="g1_q15_2" value="2">
            <label for="g1_q15_2">없다 </label>
          </td>
        </tr>

        <tr>
          <th colspan="3">11-1. 그렇게 생각하신 이유를 작성해 주세요.</th>
        </tr>
        <tr>
          <td colspan="3" class="pl">
            <textarea name="text_kind" id="g1_q16_txt" cols="30" rows="10" maxlength="100" placeholder="최소 10글자 부터 최대 100글자 입력 가능 "></textarea>
          </td>
        </tr>

        <tr>
          <th colspan="3">12. 마지막으로 선생님께 하고싶은 말을 자유롭게 작성해 주세요.</th>
        </tr>
        <tr>
          <td colspan="3" class="pl">
            <textarea name="text_kind" id="g1_q17_txt" cols="30" rows="10" maxlength="100" placeholder="최소 10글자 부터 최대 100글자 입력 가능 "></textarea>
          </td>
        </tr>

      </tbody>
    </table>

    <ul class="cautn">
      <li>※ 설문 내용은 강의 서비스 향상을 위한 객관적인 내부 데이터로만 사용되며 외부에 게시, 사용 되지 않습니다.</li>
      <li>※ 연락처는 당첨 시 경품 발송 용도이기에 정확하게 입력해주시길 바랍니다.<br> (연락처 오기입으로 인한 경품 오발송 시 경품 재발송 불가합니다.)</li>
      <li>※ 당첨자는 2월 27일에 쪽지로 개별 안내 및 기프티콘 일괄 발송 예정입니다.</li>
    </ul>

    <div class="okay_box"><strong><label><input type="checkbox" id="privacyYN"> 작성한 설문 내용에 대한 개인정보 수집/이용에 동의합니다.</label></strong></div>

    <p class="btn submit"><a href="javascript:void(0);" >제출하기 &gt;</a></p>
    
  </div>
  <!--<div class="mg_btn_wrap right top">
    <button class="todayClose" onclick="powerClose();">다시 보지 않기</button>
    <button class="todayClose" onclick="closeCmegaPopupToday();">오늘 하루 보지 않기</button>
  </div>-->
</div></div>

<link type="text/css" rel="stylesheet" href="<%=url_main%>/event/2023/02100009/style.css">


<p class="page_text">설문조사 등의 목적을 위해 메가공무원에서 사용되고 있는 조사 폼 양식입니다.<br> 
개발작업을 통해 선택지 조건부 활성화 및 필수 입력 체크 등의 기능을 적용할 수 있습니다.</p>

<!-- Code View -->
<pre class="language-html html act direct"><code><!--\event\2023\02100009\index.asp--></code></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="https://www.megagong.net/megagong.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#설문조사</p> </li>
                            <li><p>#제출팝업</p> </li>
                            <li><p>#조사양식</p> </li>
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