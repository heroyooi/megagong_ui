<!-- #include virtual = "/inc/top.asp"-->
<%
dp1 = 2
dp2 = 2
%>
    <!-- #include virtual = "/inc/aside.asp"-->
    
    <div class="page_wrap" id="page_wrap">

        <div class="page_inner">
            <div class="page_name_wrap">
              <h3 class="page_name">TAB</h3>
              <h3 class="page_name_sub">탭</h3>
              <p class="page_sub_text">메가공무원 사이트에서 공통적으로 사용되고 있는 탭 요소 컴포넌트입니다.<br>
              사용자 경험을 높이기 위해, 탭 버튼을 클릭할 경우 직관적인 색상의 변화를 통해 현재 탭의 정보를 사용자에게 전달합니다.
              </p>
              <div class="page_print"><input type="button" value="인쇄하기" id="print" onclick="window.print()"/></div>
            </div>

            <div class="page_text_wrap">
                <p class="page_head">합격전략LAB 반응형 탭 메뉴</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/tab1.png" alt='탭위치' ></div>
                
<!-- HTML -->
<div class="code-box html tp2"><div class="tab-upper">
  <div class="inner">
    <div class="tab-upper-swiper swiper-container">
      <div class="swiper-wrapper">
        <div class="swiper-slide<%If Request.QueryString("tab") <= 1 then%> on<%End if%>"><a href="javascript:;" title="공무원이란">공무원이란</a></div>
        <div class="swiper-slide<%If Request.QueryString("tab") = 2 then%> on<%End if%>"><a href="javascript:;" title="채용절차">채용절차</a></div>
        <div class="swiper-slide<%If Request.QueryString("tab") = 3 then%> on<%End if%>"><a href="javascript:;" title="응시자격">응시자격</a></div>
        <div class="swiper-slide<%If Request.QueryString("tab") = 4 then%> on<%End if%>"><a href="javascript:;" title="필기시험">필기시험</a></div>
        <div class="swiper-slide<%If Request.QueryString("tab") = 5 then%> on<%End if%>"><a href="javascript:;" title="가산점">가산점</a></div>
        <div class="swiper-slide<%If Request.QueryString("tab") = 6 then%> on<%End if%>"><a href="javascript:;" title="면접시험">면접시험</a></div>
      </div>
      <div class="swiper-scrollbar mo-view"></div>
    </div>
  </div>
</div></div>
<div class="code-box css"><link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/megagong_common_lab.css"></div>
<div class="code-box js"><script src="<%=url_main%>/common/js/ui_lab.js"></script></div>

<!-- CSS -->
<style>.test{margin:0;padding:0;}
.test .test1{color:red;}
.test .test2{font-size:30px;}</style>

<!-- JS -->
<script>LUI.tabUI();</script>


<p class="page_text">메가공무원 합격전략 연구소에서 사용하는 탭 요소입니다.<br> 
탭을 클릭할 경우, 해당 탭의 글씨와 상단 Border의 색상이 변경되면서 어떠한 탭 항목의 정보를 보고 있는 중인지,<br> 
사용자에게 명확한 정보를 전달해줍니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-html css act"></pre>
<pre class="language-html js act"></pre>
<pre class="language-css act"></pre>
<pre class="language-javascript act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=lab_main%>/l/gong/guide/guide.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE<!--- 사용처 : 합격전략LAB 공무원 가이드 --></a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#합격전략</p> </li>
                            <li><p>#사각형</p> </li>
                            <li><p>#탭</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->



            
            <div class="page_text_wrap">
                <p class="page_head">커리큘럼 내부 탭</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/tab1.png" alt='탭위치' ></div>
                
<!-- HTML -->
<div class="code-box html"><div class="curr_zone" id="sample">
  <div class="tab_wrap">
    <ul class="tab_btn">
      <li class="on"><a href="javascript:;" title="사회복지학개론">사회복지학개론</a></li>
      <li><a href="javascript:;" title="직업상담심리학개론">직업상담심리학개론</a></li>
      <li><a href="javascript:;" title="심리학개론">심리학개론</a></li>
    </ul>
  </div>
</div></div>

<!-- CSS -->
<style>.curr_zone#sample .tab_wrap .tab_btn li{width: 33.3%;border-right:1px solid #ddd;box-sizing: border-box;text-align:center;}
.curr_zone#sample .tab_wrap .tab_btn li:last-child{border-right:none;}
</style>
<link type="text/css" rel="stylesheet" href="<%=url_main%>/teacher/curr/curr.css">
<!-- JS -->
<script>
$('.tab_btn li').on('click',function(){
  $('.tab_btn li').removeClass('on');
  $(this).addClass('on');
})
</script>

<p class="page_text">강사홈 페이지에서 수업 커리큘럼 정보들을 구분할 때에 사용되는 탭 요소입니다.<br> 
탭을 클릭할 경우, 해당 탭의 Background 색상이 전체적으로 변경되면서 어떠한 탭 항목의 정보를 보고 있는 중인지, 사용자에게 명확한 정보를 전달해줍니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/teacher/home.asp?bcode=pt1969" target="_blank"><i class='bx bx-link'></i>EXAMPLE<!--- 사용처 : 선생님 커리큘럼--></a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#커리큘럼</p> </li>
                            <li><p>#사각형</p> </li>
                            <li><p>#강사홈</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->






            <div class="page_text_wrap">
                <p class="page_head">링크이동 탭</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/tab2.png" alt='탭위치' ></div>
                
<!-- HTML -->
<div class="code-box html"><div class="gob_tab_wrap">
  <ul class="tab_list clearfix">
    <li class="on">
      <a href="javascript:void(0);">행정직군</a>
    </li>
    <li>
      <a href="javascript:void(0);">기술직군</a>
    </li>
  </ul>
</div></div>

<!-- CSS -->
<style>.gob_tab_wrap .tab_list{overflow: hidden;width:100%;margin-bottom: 40px;}
.gob_tab_wrap .tab_list li{float: left;width:50%; height: 58px; color: #777; background: #f5f5f5; border: 1px solid #e3e3e3;box-sizing: border-box;}
.gob_tab_wrap .tab_list li.on{background:#26b7bc;border: 1px solid #26b7bc; color: #fff;} 
.gob_tab_wrap .tab_list li a{text-align: center;padding:20px 0;display: block;font-size: 17px;}

.gob_tab_wrap .tab_cont{display: none;padding: 23px 0 35px; position: relative;} 
.gob_tab_wrap .tab_cont.on{display: block;}

@media (max-width:768px){
  .gob_tab_wrap .tab_list li{height: auto;}
  .gob_tab_wrap .tab_list li a{padding: 5% 0; font-size: 15px;}
}
</style>

<!-- JS -->
<script>
$('.tab_list li').on('click',function(){
  $('.tab_list li').removeClass('on');
  $(this).addClass('on');
})
</script>

<p class="page_text">강좌추천 페이지 등에서 주로 사용되는 탭 요소입니다.<br>
탭 항목에는 &lt;a&gt; 태그로 링크가 연결되어 있어 탭 항목을 클릭할 경우, 미리 지정된 링크 주소로 페이지가 이동하게 됩니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/vod/vod_chr_list.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE<!--- 사용처 : 선생님 커리큘럼--></a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#강좌추천</p> </li>
                            <li><p>#사각형</p> </li>
                            <li><p>#링크이동</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->






            <div class="page_text_wrap">
                <p class="page_head">온라인 서점 검색</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/tab3.png" alt='탭위치' ></div>
                
<!-- HTML -->
<div class="code-box html"><div class="search_zone main">
  <div id="sortTab_box">
    <ul class="sortTab">
      <li class="on" onclick="chgSub(4)"><a href="javascript:;" title="9/7급">9/7급</a></li>
      <li onclick="chgSub(3)"><a href="javascript:;" title="소방">소방</a></li>
      <li onclick="chgSub(5)"><a href="javascript:;" title="군무원">군무원</a></li>
    </ul>
  </div>
</div></div>

<!-- CSS -->
<div class="code-box css"><link type="text/css" rel="stylesheet" href="<%=url_main%>/book/style.css" /> 
</div>


<!-- JS -->
<script src="<%=url_main%>/book/front.js"></script> 


<p class="page_text">온라인 서점 페이지 등에서 사용되는 탭 요소입니다.<br> 
탭을 클릭할 경우, 해당 탭과 관련된 책의 정보들을 불러와 사용자에게 제공합니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-html css act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/book/bookshop.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE<!--- 사용처 : 선생님 커리큘럼--></a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#온라인서점</p> </li>
                            <li><p>#라운드</p> </li>
                            <li><p>#과목별</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->




            <div class="page_text_wrap">
                <p class="page_head">자동 롤링 탭</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/tab1.png" alt='탭위치' ></div>
                
<!-- HTML -->
<div class="code-box html"><div class="bg_top">
  <div class="inner">
      <nav>
          <ul class="tab_base">
              <li class="on">
                  <a href="#tab1">
                      <p><span>2개월</span>기본이론 종합반</p>
                  </a>
              </li>
              <li>
                  <a href="#tab2">
                      <p><span>13개월</span>순환 종합반</p>
                  </a>
              </li>
              <li>
                  <a href="#tab3">
                      <p><span>13개월</span>프리미엄 종합반</p>
                  </a>
              </li>
          </ul>
      </nav>
  </div>
</div>

<div class="bg_bot">
  <div class="inner">
    <div class="tabCont">
      <div id="tab1" class="tabc">
          <div class="tab_content_wrap">
              <img src="<%=img_main %>/m/2023/0201_overall/tab_img1.png" alt="기본이론 종합반">
          </div>
          <div class="tab_pic_wrap">
              <img src="<%=img_main %>/m/2023/0201_overall/tab_img2.png" alt="기본이론 종합반">
          </div>
      </div>
      <div id="tab2" class="tabc">
          <div class="tab_content_wrap">
              <img src="<%=img_main %>/m/2023/0201_overall/tab2_img1.png" alt="순환 종합반">
              <span class="tag"><img src="<%=img_main %>/m/2023/0201_overall/tab_tag.png" alt="2개월 추가 이벤트 24.05.31.지방직까지"></span>
          </div>
          <div class="tab_pic_wrap">
              <img src="<%=img_main %>/m/2023/0201_overall/tab2_img2.png" alt="순환 종합반">
          </div>
      </div>
      <div id="tab3" class="tabc">
          <div class="tab_content_wrap">
              <img src="<%=img_main %>/m/2023/0201_overall/tab3_img1.png" alt="프리미엄 종합반">
              <span class="tag"><img src="<%=img_main %>/m/2023/0201_overall/tab_tag.png" alt="2개월 추가 이벤트 24.05.31.지방직까지"></span>
          </div>
          <div class="tab_pic_wrap">
              <img src="<%=img_main %>/m/2023/0201_overall/tab3_img2.png" alt="프리미엄 종합반">
          </div>
      </div>
    </div>
  </div>
</div></div>

<!-- CSS -->
<style>.bg_top {background: #f5f5f5;border-bottom: 2px solid #000; font-family: 'NotoSans KR';}
.inner { position: relative;width: 100%;margin: 0 auto;}
.inner::after { content: "";display: block;clear: both;}
.tab_base { margin: 50px auto 0;overflow: hidden;}
.tab_base li {float: left;width: 33.3%; height: 110px; background: #fff; display: table; position: relative;}
.tab_base li.on { background: #1e25f0;}
.tab_base li:first-child {margin-left: 0;}
.tab_base li a {display: table; width: 100%;height: 100%;text-align: center;}
.tab_base > li a {transition: background-color 0.2s, color 0.2s;}
.tab_base li a p { display: table-cell;vertical-align: middle; color: #999; font-size: 34px;  line-height: 25px;  font-weight: 600;}
.tab_base li.on a p {color: #fff;}
.tab_base li a p span {display: block;font-size: 16px;background: #999;width: 22%; margin: 0 auto 12px; border-radius: 50px;  color: #fff; font-weight: 400;}
.tab_base li.on a p span { background: #000;}
.bg_bot {background: #fff; }
.tabCont {padding-top: 60px;min-height: 890px;}
.tab_content_wrap { margin-bottom: 30px; position: relative;}
.bg_bot .tag { position: absolute; right: 0px; top: 30px;}

@media screen and (max-width: 1200px) {
  .inner {width:96%}
  .tab_base li {height: 78px;}
  .tabCont {padding: 3% 0 0;min-height: inherit;}
  .tab_content_wrap {margin-bottom: 3%;}
  .bg_bot .tag {top: 6%;}
  .tab_base li a p {font-size: 23px;}
  .tab_base li a p span {margin: 0 auto 2%;font-size: 13px;}

}
@media screen and (max-width: 992px) {
  .tab_base li { height: 65px; padding-bottom: 0.5%;}
  .tab_base li a p {font-size: 20px; line-height: 8px; font-weight: 600;}
  .tab_base li a p span { width: 27%;margin: 0 auto 5%; padding: 2% 6%;text-align: center;}
  .bg_bot .tag {width: 17%;}
}
@media screen and (max-width: 768px) {
  .tab_base li {min-height: inherit;padding-bottom: 1.5%;}
  .tab_base li a p {font-size: 16px;}
  .tab_base li a p span { width: 35%; padding: 3% 6%;}
  .bg_bot .tag {width: 25%;top: 4%;} 
}
@media screen and (max-width: 576px) {
  .evCon1 .tab_base li { height: 52px;  box-sizing: border-box; padding: 5px;}
  .tab_base li a p {font-size: 12px;}
  .tab_base li a p span { width: 45%;padding: 4% 6%;line-height: 8px;font-size: 10px;}
}
</style>

<!-- JS -->
<script>
var bannerNum = 0
var roll = setInterval(rolling, 3000);
$('.tabCont .tabc').hide()
  $('.tab_base li').eq(bannerNum).addClass('on');
  $('.tab_base li').eq(bannerNum).show();

function rolling() {
  if (bannerNum >= 2) {
    bannerNum = 0;
    $('.tab_base li').removeClass('on');
    $('.tabCont .tabc').hide()
    $('.tab_base li').eq(bannerNum).addClass('on');
    target = $('.tabCont .tabc').eq(bannerNum)
    $(target).show();

  } else {
  $('.tab_base li').removeClass('on');
  $('.tabCont .tabc').hide()
  bannerNum++;
      $('.tab_base li').eq(bannerNum).addClass('on');
  target = $('.tabCont .tabc').eq(bannerNum)
  $(target).show();
  }
}

$('.tab_base li').on('click',function(){
  clearInterval(roll); 
  $('.tabCont .tabc').hide();
  let nownum = $('.tab_base li').index(this)
  $('.tabCont .tabc').eq(nownum).show();
  bannerNum = nownum;
  roll = setInterval(rolling, 3500);
  });
</script>

<p class="page_text">이벤트 페이지 등에서 사용되는 탭 요소입니다.<br>
2~3초 간격으로 탭이 자동 롤링되며 탭과 관련된 이미지 및 정보를 제공합니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>
<pre class="language-javascript act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="https://gongssel.megagong.net/c/gongssel/schedule/2022/overall9/index.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE<!--- 사용처 : 선생님 커리큘럼--></a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#자동롤링</p> </li>
                            <li><p>#이벤트</p> </li>
                            <li><p>#첫번째탭부터</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->





            <div class="page_text_wrap">
                <p class="page_head">자동 롤링 랜덤 탭</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/tab1.png" alt='탭위치' ></div>
                
<!-- HTML -->
<div class="code-box html"><div class="evSection evCon4">
<div class="con_box">
  <ul id="tab1" class="tab_base2">
    <li><a href="#tab1_1"><span>수험생을 위한 책임과 진심</span>전한길</a></li>
    <li><a href="#tab1_2"><span>합격을 위한 빠른 길</span>고종훈</a></li>
    <li><a href="#tab1_3"><span>출제자를 앞서는 최고의 퀄리티</span>라영환</a></li>
    <li><a href="#tab1_4"><span>출제 경향 바탕 자동 회독 시스템</span>최영재</a></li>
    <li><a href="#tab1_5"><span>디테일한 한국사 심플한 합격</span>김진재</a></li>
  </ul>
  <ul class="panel_base">
    <!-- 전한길 S -->

    <li id="tab1_1" class="jeonhangil tea_tab">
      <div class="cont_top">
        <div class="cont_l">
          <img src="<%=img_main%>/profphoto/gong/jeonhangil/prof.png" alt="한국사 전한길 선생님">
          <a href="<%=url_main%>/teacher/home.asp?bcode=jeonhangil" target="_blank">
            <img src="<%=img_main%>/m/2023/0126_history/con4_img01.png" alt="한국사 전한길 선생님">
          </a>
        </div>
        <div class="cont_r">
          <p>내 실력의 정점을 찍을 <br class="mo_hide">최상의 파이널을 경험하라</p>
          <div class="eventVideo video_renewal">
            <div class="video_box">
              <%
                evt_no = ""
                vod_KBN = "40" '40:맛보기, 55:OT 
                playerKBN = ""
                CHR_CD = "19976"
                LEC_CD = "210819"
                IMG_URL = img_main & "/m/2023/0126_history/tab_video1.jpg"
                P_WIDTH = "600"
                P_HEIGHT = "338"
                AutoPlay = "N"
              %>
              <!-- #include virtual="/Player/kollus/play/play_inc.asp"-->
            </div>
          </div>
        </div>
      </div>
      <div class="cont_mid">
        <p>RIGHT NOW! 전한길 선생님 파이널 커리큘럼</p>
      </div>
      <div class="cont_btm">
        <div class="cont_l flex4">
          <p><span>파이널 압축 특강</span></p>
          <ul>
            <li>
              <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19422" title="5.0 주제별 최종점검">
                <div class="kind_tit">5.0 주제별<br>최종점검</div>
                <div class="kind_cont">
                  시대별,주제별<br>최종점검<br>
                  <span>GO</span>
                </div>
              </a>
            </li>
            <li>
              <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19423" title="연표 사료 노트 특강">
                <div class="kind_tit">연표 사료<br>노트 특강</div>
                <div class="kind_cont">
                  사료 집중<br>완성<br>
                  <span>GO</span>
                </div>
              </a>
            </li>
            <li>
              <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19191" title="현대사 특강">
                <div class="kind_tit">현대사<br>특강</div>
                <div class="kind_cont">
                  현대사 파트<br>완벽 정리<br>
                  <span>GO</span>
                </div>
              </a>
            </li>
            <li>
              <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19978" title="문화사 특강">
                <div class="kind_tit">문화사<br>특강</div>
                <div class="kind_cont">
                  문화사 파트<br>완벽 정리<br>
                  <span>GO</span>
                </div>
              </a>
            </li>
          </ul>
        </div>
        <div class="cont_r flex2">
          <p><span>동형 모의고사</span></p>
          <ul>
            <li>
              <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19424" title="기출 회독 트레이닝 모의고사">
                <div class="kind_tit">기출 회독<br>트레이닝 모의고사</div>
                <div class="kind_cont">
                  시대별 회독 포인트로<br>실전 대비<br>
                  <span>GO</span>
                </div>
              </a>
            </li>
            <li>
              <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19976" title="4.0 실전 동형  모의고사">
                <div class="kind_tit">4.0 실전 동형 <br>모의고사</div>
                <div class="kind_cont">
                  고퀄리티 예상문제로<br>합격 점수 완성<br>
                  <span>GO</span>
                </div>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </li>

    <!-- 전한길 E -->
    <!-- 고종훈 S -->
    <li id="tab1_2" class="gosabu88 tea_tab">
      <div class="cont_top">
        <div class="cont_l">
          <img src="<%=img_main%>/profphoto/gong/gosabu88/prof.png" alt="한국사 고종훈 선생님">
          <a href="<%=url_main%>/teacher/home.asp?bcode=gosabu88" target="_blank">
            <img src="<%=img_main%>/m/2023/0126_history/con4_img02.png" alt="한국사 고종훈 선생님">
          </a>
        </div>
        <div class="cont_r">
          <p>지금 이 시기, 수험생에게 제시하는 <br class="mo_hide">가장 완벽한 한국사 전략</p>
          <div class="eventVideo video_renewal">
            <div class="video_box">
              <%
                evt_no = ""
                vod_KBN = "40" '40:맛보기, 55:OT 
                playerKBN = ""
                CHR_CD = "19948"
                LEC_CD = "211794"
                IMG_URL = img_main & "/m/2023/0126_history/tab_video2.jpg"
                P_WIDTH = "600"
                P_HEIGHT = "338"
                AutoPlay = "N"
              %>
              <!-- #include virtual="/Player/kollus/play/play_inc.asp"-->
            </div>
          </div>
        </div>
      </div>
      <div class="cont_mid">
        <i>
          <a href="javascript:;" onclick="GongcampusFreePlay('E', 4421, '', '');" >
            <img src="<%=img_main%>/m/2023/0126_history/final_btn.png" alt="파이널 영상 커리큘럼" />
          </a>
        </i>
        <p>RIGHT NOW! 고종훈 선생님 파이널 커리큘럼</p>
      </div>
      <div class="cont_btm">
        <div class="cont_l flex2">
          <p><span>파이널 압축 특강</span></p>
          <ul>
            <li>
              <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19379" title="파이널 압축정리">
                <div class="kind_tit">파이널 압축정리</div>
                <div class="kind_cont">
                  마무리 점검 추천!<br><br>
                  <span>GO</span>
                </div>
              </a>
            </li>
            <li>
              <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=20003 " title="분류사 빈칸노트">
                <div class="kind_tit">분류사 빈칸노트</div>
                <div class="kind_cont">
                  문화/정치/사회경제/<br>근현대 키워드 정리<br>
                  <span>GO</span>
                </div>
              </a>
            </li>
          </ul>
        </div>
        <div class="cont_r flex4">
          <p><span>동형 모의고사</span></p>
          <ul>
            <li>
              <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19306" title="기출문제를 섞어 만든 모의고사">
                <div class="kind_tit">기출문제를<br>섞어 만든<br>모의고사</div>
                <div class="kind_cont">
                  초시 추천!<br><br>
                  <span>GO</span>
                </div>
              </a>
            </li>
            <li>
              <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19468" title="동형 모의고사  시즌1">
                <div class="kind_tit">동형 모의고사 <br>시즌1</div>
                <div class="kind_cont">
                  9급 일행 추천!<br><br>
                  <span>GO</span>
                </div>
              </a>
            </li>
            <li>
              <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19948" title="동형 모의고사 시즌2">
                <div class="kind_tit">동형 모의고사 <br>시즌2</div>
                <div class="kind_cont">
                  9급 일행 추천!<br><br>
                  <span>GO</span>
                </div>
              </a>
            </li>
            <li>
              <a href="javascript:;" onclick="alert('곧 공개될 예정입니다. 잠시만 기다려 주세요.');" title="리메이크 모의고사">
                <div class="kind_tit">리메이크 <br>모의고사</div>
                <div class="kind_cont">
                  최신 기출<br>재구성<br>
                  <span>GO</span>
                </div>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </li>
    <!-- 고종훈 E -->
    <!-- 라영환 S -->
    <li id="tab1_3" class="vision0911 tea_tab">
      <div class="cont_top">
        <div class="cont_l">
          <img src="<%=img_main%>/profphoto/gong/vision0911/prof.png" alt="한국사 라영환 선생님">
          <a href="<%=url_main%>/teacher/home.asp?bcode=vision0911" target="_blank">
            <img src="<%=img_main%>/m/2023/0126_history/con4_img03.png" alt="한국사 라영환 선생님">
          </a>
        </div>
        <div class="cont_r">
          <p>시험 직전, 뛰어난 적중률로 <br class="mo_hide">합격의 문을 넘다</p>
          <div class="eventVideo video_renewal">
            <div class="video_box">
              <%
                evt_no = ""
                vod_KBN = "40" '40:맛보기, 55:OT 
                playerKBN = ""
                CHR_CD = "19929"
                LEC_CD = "211270"
                IMG_URL = img_main & "/m/2023/0126_history/tab_video3.jpg"
                P_WIDTH = "600"
                P_HEIGHT = "338"
                AutoPlay = "N"
              %>
              <!-- #include virtual="/Player/kollus/play/play_inc.asp"-->
            </div>
          </div>
        </div>
      </div>
      <div class="cont_mid">
        <i>
          <a href="javascript:;" onclick="GongcampusFreePlay('E', 4408, '', '');" >
            <img src="<%=img_main%>/m/2023/0126_history/final_btn.png" alt="파이널 영상 커리큘럼" />
          </a>
        </i>
        <p>RIGHT NOW! 라영환 선생님 파이널 커리큘럼</p>
      </div>
      <div class="cont_btm">
        <div class="cont_l flex2">
          <p><span>파이널 압축 특강</span></p>
          <ul>
            <li>
              <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19929" title="마지막 심폐소생">
                <div class="kind_tit">마지막 심폐소생</div>
                <div class="kind_cont">
                  부족한 개념을 채우는<br>전범위 압축강좌<br>
                  <span>GO</span>
                </div>
              </a>
            </li>
            <li>
              <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19274" title="4시간 총정리 특강">
                <div class="kind_tit">4시간 총정리 특강</div>
                <div class="kind_cont">
                  4시간 만에 끝내는<br>분류사 특강<br>
                  <span>GO</span>
                </div>
              </a>
            </li>
          </ul>
        </div>
        <div class="cont_r flex2">
          <p><span>동형 모의고사</span></p>
          <ul>
            <li>
              <a href="javascript:;" onclick="alert('곧 공개될 예정입니다. 잠시만 기다려 주세요.');" title="기출 데자뷰 모의고사">
                <div class="kind_tit">기출 데자뷰 모의고사</div>
                <div class="kind_cont">
                  기출 회독 효과 &<br>모의고사 훈련<br>
                  <span>GO</span>
                </div>
              </a>
            </li>
            <li>
              <a href="javascript:;" onclick="alert('곧 공개될 예정입니다. 잠시만 기다려 주세요.');" title="기적의 모의고사">
                <div class="kind_tit">기적의 모의고사</div>
                <div class="kind_cont">
                  실제 시험과 <br>동일 난이도 및 구성<br>
                  <span>GO</span>
                </div>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </li>
    <!-- 라영환 E -->
    <!-- 최영재 S -->
    <li id="tab1_4" class="duwo20405 tea_tab">
      <div class="cont_top">
        <div class="cont_l">
          <img src="<%=img_main%>/profphoto/gong/duwo20405/prof.png" alt="한국사 최영재 선생님">
          <a href="<%=url_main%>/teacher/home.asp?bcode=duwo20405" target="_blank">
            <img src="<%=img_main%>/m/2023/0126_history/con4_img04.png" alt="한국사 최영재 선생님">
          </a>
        </div>
        <div class="cont_r">
          <p>공무원 수험에 알맞은 시험적합성으로 <br class="mo_hide">빠른 합격 공략</p>
          <div class="eventVideo video_renewal">
            <div class="video_box">
              <%
                evt_no = ""
                vod_KBN = "40" '40:맛보기, 55:OT 
                playerKBN = ""
                CHR_CD = "19593"
                LEC_CD = "211468"
                IMG_URL = img_main & "/m/2023/0126_history/tab_video4.jpg"
                P_WIDTH = "600"
                P_HEIGHT = "338"
                AutoPlay = "N"
              %>
              <!-- #include virtual="/Player/kollus/play/play_inc.asp"-->
            </div>
          </div>
        </div>
      </div>
      <div class="cont_mid">
        <p>RIGHT NOW! 최영재 선생님 파이널 커리큘럼</p>
      </div>
      <div class="cont_btm">
        <div class="cont_l flex2">
          <p><span>파이널 압축 특강</span></p>
          <ul>
            <li>
              <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19593" title="스피드 총정리/사료분석/단원별 문풀">
                <div class="kind_tit">스피드 총정리/<br>사료분석/단원별 문풀</div>
                <div class="kind_cont">
                  핵심 개념 + 핵심사료<br>+ 핵심문제까지 총정리<br>
                  <span>GO</span>
                </div>
              </a>
            </li>
          </ul>
        </div>
        <div class="cont_r flex2">
          <p><span>동형 모의고사</span></p>
          <ul>
            <li>
              <a href="javascript:;" onclick="alert('곧 공개될 예정입니다. 잠시만 기다려 주세요.');" title="실전 동형 모의고사">
                <div class="kind_tit">실전 동형 모의고사</div>
                <div class="kind_cont">
                  한국사 출제 경향을<br>반영한 완벽한 구성<br>
                  <span>GO</span>
                </div>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </li>
    <!-- 최영재 E -->
    <!-- 김진재 S -->
    <li id="tab1_5" class="k1mj1njae tea_tab">
      <div class="cont_top">
        <div class="cont_l">
          <img src="<%=img_main%>/profphoto/gong/k1mj1njae/prof.png" alt="한국사 김진재 선생님">
          <a href="<%=url_main%>/teacher/home.asp?bcode=k1mj1njae" target="_blank">
            <img src="<%=img_main%>/m/2023/0126_history/con4_img05.png" alt="한국사 김진재 선생님">
          </a>
        </div>
        <div class="cont_r">
          <p>이해하고자 하는 심플한 열정만 있다면 <br class="mo_hide">디테일한 한국사 완성</p>
          <div class="eventVideo video_renewal" onclick="javascript: alert('추후 공개될 예정입니다. 잠시만 기다려 주세요.');">
            <img src="<%=img_main%>/m/2023/0126_history/tab_video5.jpg" alt="">
            <!-- <div class="video_box">
              <%
                evt_no = ""
                vod_KBN = "40" '40:맛보기, 55:OT 
                playerKBN = ""
                CHR_CD = "19948"
                LEC_CD = "211794"
                IMG_URL = img_main & "/m/2023/0126_history/tab_video5.jpg"
                P_WIDTH = "600"
                P_HEIGHT = "338"
                AutoPlay = "N"
              %>
              include virtual="/Player/kollus/play/play_inc.asp"
            </div> -->
          </div>
        </div>
      </div>
      <div class="cont_mid">
        <p>RIGHT NOW! 김진재 선생님 파이널 커리큘럼</p>
      </div>
      <div class="cont_btm">
        <div class="cont_l flex2">
          <p><span>파이널 압축 특강</span></p>
          <ul>
            <li>
              <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=18414" title="압축요약 사료강화 특강">
                <div class="kind_tit">압축요약<br>사료강화 특강</div>
                <div class="kind_cont">
                  빈출도 중심으로<br>중요 개념 잡기<br>
                  <span>GO</span>
                </div>
              </a>
            </li>
          </ul>
        </div>
        <div class="cont_r flex2">
          <p><span>동형 모의고사</span></p>
          <ul>
            <li>
              <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=18324" title="리바이벌 전범위 모의고사">
                <div class="kind_tit">리바이벌 <br>전범위 모의고사</div>
                <div class="kind_cont">
                  다량의 실전 문제로 <br>한국사 점수 향상<br>
                  <span>GO</span>
                </div>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </li>
    <!-- 김진재 E -->
  </ul>
</div>
</div>
</div>

<!-- CSS -->
<style>
.evCon4 {background: #fff;text-align: center;font-family: 'NotoSans KR';}
.evCon4 .tab_base2 {}
.evCon4 .tab_base2 .slick-track {transform: none !important;}
.evCon4 .tab_base2 .slick-slide {width: 20%; background: #eee; color: #999; font-size: 23px; margin: 0 2px 0 0;}
.evCon4 .tab_base2 .slick-current {background: #000; color: #fff;}
.evCon4 .tab_base2 .slick-current li a {color:#fff;}
.evCon4 .tab_base2 li a {display: block; padding: 16px 0;}
.evCon4 .tab_base2 li span {display: block; font-size: 14px;}
.evCon4 .panel_base {}
.evCon4 .panel_base .slick-slide {opacity: 0 !important;}
.evCon4 .panel_base .slick-active {opacity: 1 !important; transition: opacity .5s ease-in;}
.evCon4 .panel_base .slick-slide > div {width: calc(100% - 2px);}
.evCon4 .panel_base li {}
.evCon4 .panel_base li .cont_top {margin: 40px 0 60px; display: flex; justify-content: space-between; align-items: center;}
.evCon4 .panel_base li .cont_top .cont_l {position: relative;}
.evCon4 .panel_base li .cont_top .cont_l::after {content: ''; width: 100%; height: 30%; background: linear-gradient(to top, #fff 20%, #ffffff70 60%, transparent); position: absolute; left: 0; bottom: -2px;}
.evCon4 .panel_base li .cont_top .cont_l a {position: absolute; bottom: 36px; left: 50%; transform: translateX(-50%); z-index: 1;}
.evCon4 .panel_base li .cont_top .cont_r {flex: 1; max-width: 600px;}
.evCon4 .panel_base li .cont_top .cont_r p {font-size: 30px; font-weight: bold; line-height: 1.2; margin: 0 0 46px;    color: #000;}
.evCon4 .panel_base li .cont_top .cont_r .eventVideo {}
.evCon4 .panel_base li .cont_mid {position: relative; margin: 0 0 45px;}
.evCon4 .panel_base li .cont_mid i {position: absolute; top: -56%; right: 10px; z-index: 2;}
.evCon4 .panel_base li .cont_mid p {background: #513fe7; color: #fff; font-size: 26px; font-weight: bold; padding: 16px 0;}
.evCon4 .panel_base li .cont_btm {display: flex; justify-content: center;}
.evCon4 .panel_base .duwo20405 .cont_btm .cont_l,
.evCon4 .panel_base .duwo20405 .cont_btm .cont_r,
.evCon4 .panel_base .k1mj1njae .cont_btm .cont_l,
.evCon4 .panel_base .k1mj1njae .cont_btm .cont_r {flex: 0 0 25%;}
.evCon4 .panel_base li .cont_btm .cont_l {flex: 1; margin: 0 10px 0 0;}
.evCon4 .panel_base li .cont_btm .cont_r {flex: 1;}
.evCon4 .panel_base li .cont_btm p {position: relative; z-index: 1; margin: 0 0 20px;}
.evCon4 .panel_base li .cont_btm p::after {content: ''; position: absolute; width: 100%; height: 20px; border: 1px solid #000; border-bottom: none; top: 50%; left: 0; z-index: -1;}
.evCon4 .panel_base li .cont_btm p span {background: #fff; padding: 0 30px; font-size: 23px; font-weight: bold;color: #000;}
.evCon4 .panel_base li .cont_btm ul {display: flex; justify-content: space-between;}
.evCon4 .panel_base li .cont_btm ul li {flex: 1; height: 240px; background: #eee; margin: 0 5px 0 0; flex: 1;}
.evCon4 .panel_base li .cont_btm ul li:last-child {margin: 0;}
.evCon4 .panel_base li .cont_btm ul li a {height: 100%; display: flex; flex-direction: column; justify-content: flex-end; padding: 35px 10px;}
.evCon4 .panel_base li .cont_btm ul li .kind_tit {font-weight: bold;color: #000;}
.evCon4 .panel_base li .cont_btm .flex4 ul li .kind_tit {font-size: 18px;}
.evCon4 .panel_base li .cont_btm .flex2 ul li .kind_tit {font-size: 21px;}
.evCon4 .panel_base li .cont_btm ul li .kind_tit::after {content: ''; display: block; width: 80%; height: 1px; background: #dcdcdc; margin: 18px 10%;}
.evCon4 .panel_base .gosabu88 .cont_btm .cont_l ul li .kind_tit::after,
.evCon4 .panel_base .vision0911 .cont_btm ul li .kind_tit::after,
.evCon4 .panel_base .duwo20405 .cont_btm .cont_r ul li .kind_tit::after {margin: 30px 10% 18px;}
.evCon4 .panel_base .gosabu88 .cont_btm .cont_r ul li:first-child .kind_tit::after {margin: 10px 10% 18px;}
.evCon4 .panel_base li .cont_btm ul li .kind_cont {font-size: 16px; font-weight: 300; color: #333;}
.evCon4 .panel_base li .cont_btm ul li .kind_cont span {font-size: 14px; background: #555; color: #fff; border-radius: 14px; line-height: 1; padding: 2px 18px; margin: 20px 0 0; display: inline-block;}

@media screen and (max-width: 1200px) {
  .evCon4 .panel_base li .cont_top {margin: 2% 0 4%;}
  .evCon4 .panel_base li .cont_top .cont_r p {margin: 0 0 6%;}
  .evCon4 .panel_base li .cont_mid i {width: 18%; top: -70%;}
}

@media screen and (max-width: 992px) {
  .evCon4 .tab_base2 li a {padding: 10px 0; font-size: 18px;}
  .evCon4 .tab_base2 li span {display: none;}
  .evCon4 .panel_base li .cont_top .cont_l {flex-basis: 40%;}
  .evCon4 .panel_base li .cont_top .cont_r {flex-basis: 58%; margin: 0 0 0 2%;}
  .evCon4 .panel_base li .cont_top .cont_r p {font-size: 26px;}
  .evCon4 .panel_base li .cont_mid {margin: 0 0 4%;}
  .evCon4 .panel_base li .cont_mid p {font-size: 20px; padding: 10px 0;}
  .evCon4 .panel_base li .cont_btm {flex-direction: column;}
  .evCon4 .panel_base li .cont_btm p span {font-size: 20px;}
  .evCon4 .panel_base li .cont_btm .cont_l {margin: 0 0 2%;}
  .evCon4 .panel_base .duwo20405 .cont_btm .cont_l,
  .evCon4 .panel_base .duwo20405 .cont_btm .cont_r,
  .evCon4 .panel_base .k1mj1njae .cont_btm .cont_l,
  .evCon4 .panel_base .k1mj1njae .cont_btm .cont_r {flex: 1;}
  .evCon4 .panel_base li .cont_btm ul li a {padding: 30px 5px;}
}

@media screen and (max-width: 768px) {
  .evCon4 .panel_base li .cont_top {flex-direction: column; margin: 2% 0 6%;}
  .evCon4 .panel_base li .cont_top .cont_l {width: 40%;}
  .evCon4 .panel_base li .cont_top .cont_l a {width: 60%; bottom: 10px;}
  .evCon4 .panel_base li .cont_top .cont_r {width: 100%; margin: 2% 0 0;}
  .evCon4 .panel_base li .cont_top .cont_r p {font-size: 20px; margin: 0 0 4%;}
  .evCon4 .panel_base li .cont_mid p {font-size: 16px;}
  .evCon4 .panel_base li .cont_btm {flex-direction: column;}
  .evCon4 .panel_base li .cont_btm .flex4,
  .evCon4 .panel_base li .cont_btm .flex2 {width: 98%; margin: 0 auto;}
  .evCon4 .panel_base li .cont_btm .cont_l {margin: 0 auto 4%;}
}

@media screen and (max-width: 576px) {
  .evCon4 .tab_base2 li a {font-size: 14px; padding: 6px 0 8px;}
  .evCon4 .panel_base li .cont_top .cont_l a {width: 90%;}
  .evCon4 .panel_base li .cont_top .cont_r p {font-size: 16px;}
  .evCon4 .panel_base li .cont_top .cont_r p .mo_hide {display: block;}
  .evCon4 .panel_base li .cont_mid p {font-size: 14px;}
  .evCon4 .panel_base li .cont_mid i {top: -150%; width: 22%; right: 0;}
  .evCon4 .panel_base li .cont_btm p::after {height: 10px;}
  .evCon4 .panel_base li .cont_btm p span {font-size: 18px; padding: 0 20px;}
  .evCon4 .panel_base li .cont_btm ul li {height: 190px;}
  .evCon4 .panel_base li .cont_btm .flex2 ul li .kind_tit {font-size: 16px;}
  .evCon4 .panel_base li .cont_btm .flex4 ul li .kind_tit {font-size: 13px;}
  .evCon4 .panel_base li .cont_btm ul li .kind_cont {font-size: 12px;}
  .evCon4 .panel_base li .cont_btm ul li .kind_tit::after {margin: 10px 10%;}
  .evCon4 .panel_base .gosabu88 .cont_btm .cont_r ul li:first-child .kind_tit::after {margin: 6px 10% 10px;}
  .evCon4 .panel_base .gosabu88 .cont_btm .cont_l ul li .kind_tit::after,
  .evCon4 .panel_base .vision0911 .cont_btm ul li .kind_tit::after,
  .evCon4 .panel_base .duwo20405 .cont_btm .cont_r ul li .kind_tit::after {margin: 18px 10% 10px;}
  .evCon4 .panel_base li .cont_btm ul li .kind_cont span {font-size: 12px;}

  .evCon4 .panel_base li .cont_top .cont_r .eventVideo {position: relative;width: auto;height: auto;background: #000;}
  .evCon4  .video_box {position: relative; top: unset; left: unset; width: auto; height: auto;padding-bottom: 56.2%;}
  .evCon4  .video_box .play_area {width: 100% !important;height: 100% !important;position: absolute;}
}
</style>

<!-- JS -->
<script>
var panelLength = $('.evCon4 .panel_base .tea_tab').length;
// var rand = Math.floor(Math.random() * panelLength);

$('.evCon4 .panel_base').slick({
  slidesToShow: 1,
  slidesToScroll: 1,
  arrows: false,
  // autoplay: true,
  fade: true,
  // initialSlide: rand,
  initialSlide: 0,
  asNavFor: '.evCon4 .tab_base2',
});
$('.evCon4 .tab_base2').slick({
  slidesToShow: 5,
  asNavFor: '.evCon4 .panel_base',
  dots: true,
  focusOnSelect: true,
  // initialSlide: rand,
  initialSlide: 0,
});

$('.evCon4 .panel_base').on('afterChange', function(event, slick, currentSlide, nextSlide) {
  iframePause();
});

$('.evCon4 .tab_base2 li').click(function() {
  iframePause();
})

function iframePause() {
  if (typeof (controller) != 'undefined') {
    controller.pause();            
  }

  var autoV = $('.evCon4 .panel_base').get(0).slick.options.autoplay;
  if (autoV == false) {
    $('.evCon4 .panel_base').slick("slickSetOption","autoplay",true);
    $('.evCon4 .panel_base').slick("slickPlay");
  }

  var ifrm = $('.evCon4 .panel_base .slick-active').find("iframe");
  if (ifrm.length != 0) {
    $('.evCon4 .panel_base').slick("slickPause");
    $('.evCon4 .panel_base').slick("slickSetOption","autoplay",false);
  }
}

$('.tea_tab .video_renewal').click(function(){
  $('.evCon4 .panel_base').slick("slickPause");
  $('.evCon4 .panel_base').slick("slickSetOption","autoplay",false);
});
</script>

<p class="page_text">이벤트 페이지 등에서 사용되는 탭 요소입니다.<br>
랜덤한 탭에서부터 2~3초 간격으로 탭이 자동 롤링되고 탭과 관려된 이미지 및 정보를 제공합니다.<br>
또한 탭 내부에서 동영상을 재생할 경우, 롤링이 자동으로 중단됩니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>
<pre class="language-javascript act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="https://www.megagong.net/s/gong/event/2023/01260015/index.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE<!--- 사용처 : 선생님 커리큘럼--></a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#자동롤링</p> </li>
                            <li><p>#랜덤탭</p> </li>
                            <li><p>#탭안에동영상</p> </li>
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
    .tab_btn li a {color:#000}
    .tab_btn li.on a {color:#fff}
    .tab_btn li a:hover  {color:#000}
    .tab_btn li.on a:hover  {color:#fff}
    

    .gob_tab_wrap .tab_list li.on a {color:#fff}
    .gob_tab_wrap .tab_list li a {line-height: 15px;color: #777;}
    .gob_tab_wrap .tab_list li a:hover {color: #777;}
    .gob_tab_wrap .tab_list li.on a:hover {color:#fff}


    .sortTab li a {color:#000}
    .sortTab li.on a {color:#fff}
    .sortTab li a:hover {color:#000}
    .sortTab li.on a:hover {color:#fff}

    div#sample, .gob_tab_wrap {margin: 30px 0;}
    #sortTab_box {float:inherit;}
    #sortTab_box .sortTab {float:inherit; display: flex;justify-content: center;}

    .evCon4 .tab_base2 li a {color: inherit;}

    @media screen and (max-width: 768px) {
      .code-box {padding: 0%}
    }
    @media screen and (max-width: 576px) {
      .search_zone.main {width: 256px;margin: 0% auto;}
      .curr_zone .tab_wrap .tab_btn li a {font-size:10px}
    }
    

    </style>

<!-- #include virtual = "/inc/bottom.asp"-->