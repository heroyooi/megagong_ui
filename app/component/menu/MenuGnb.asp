<script type="text/babel">
  'use strict';

  function MenuGnb({ title, onChange }) {

const html = `<header id="headertop" class="gong">
  <div id="header_wrap" class="hd_wrp online v21_2 main fullser_wrap">
    <div id="header_utility" class="hd_utility v21_2 d1208 v23_1 w1200">
      <h2 class="blindw">메가공무원 메뉴</h2>
      <nav role="navigation">
        <ul class="mnu_list online off hover_list">
          <li><a class="mli_link series on" href="javascript:;" onclick="mainToggle('.gnb_series, .gnb_bgArea, #headertop .hd_wrp.v21_2 .hd_utility.d1208 .mnu_list.online > li > a.series');" title="직렬보기">직렬보기</a></li>
          <li class="depview"><a class="mli_link" href="/vod/vod_chr_list.asp?mcode=5&amp;grd_fg=9" title="수강신청">수강신청 </a></li>
          <li><a class="mli_link" href="/teacher/index.asp" title="선생님">선생님</a></li>
          <li>
            <a class="mli_link" href="https://labdev.megagong.net/l/gong.asp" target="_blank" title="수험정보">수험정보</a>
            <ul class="custom">
              <li><a href="https://labdev.megagong.net/l/gong/pass_opinion/index.asp" title="합격수기">합격수기</a></li>
              <li><a href="https://labdev.megagong.net/l/gong/guide/guide.asp" title="수험 가이드">수험 가이드</a></li>
              <li><a href="https://labdev.megagong.net/l/gong/guide/schedule.asp" title="시험 일정">시험 일정</a></li>
              <li><a href="https://labdev.megagong.net/l/gong/statistic/pass.asp" title="경쟁률 &amp; 합격선">경쟁률 &amp; 합격선</a></li>
              <li><a href="https://labdev.megagong.net/l/share/quizbank/index.asp" title="문제은행 서비스">문제은행 서비스</a></li>
              <li><a href="https://labdev.megagong.net/l/share/exam/gong/2024/index.asp#eventWrap" title="9급 기초진단평가">9급 기초진단평가</a></li>
            </ul>
          </li>
          <li>
            <span class="menu_icn mockexam toggleImg2" style="left:5px;">
              <img src="https://design.megagong.net/image/m/2024/0429_gongexam/icon_gong1_1.png" alt="지방직 신청 중!" class="on">
              <img src="https://design.megagong.net/image/m/2024/0429_gongexam/icon_gong1_2.png" alt="지방직 신청 중!" class="off">
            </span>
            <a class="mli_link" href="/s/gong/mockexam/2024_1/?top=mainCon1" title="전국 모의고사">전국 모의고사</a>
          </li>
          <li>
            <a class="mli_link" href="https://labdev.megagong.net/l/gong/explain/explain.asp?dt=20240323" title="기출해설">기출해설</a>
          </li>
          <li class="last">
            <a class="mli_link new_popup_open v2" href="javascript:mainShow('.new_popup.gong');" title="초시생 추천!"><span class="start_txt">초시생 추천!</span></a>
          </li>
          <ul class="mnu_list3 d0420">
            <li class="pass pass_mini_slide">
              <div class="item"><a href="/s/gong/pass/sale_2025.asp#eventWrap" title="공무원 메가패스"><span>공무원 메가패스</span></a></div>
              <div class="item"><a href="/s/gong/event/2023/12260149/index.asp#eventWrap" title="공무원 T패스"><span>공무원 T패스</span></a></div>
            </li>
            <li class="book">
              <a href="javascript:;" title="e-교재 & 서점"><span>e-교재 & 서점</span></a>
              <ul class="custom w145">
                <li><a href="<%=url_main %>/event/2024/03140015/index.asp#eventWrap" target="_blank" title="e-교재">e-교재</a></li>
                <li><a href="<%=url_main %>/book/bookshop.asp" target="_blank" title="온라인서점">온라인서점</a></li>
              </ul>
            </li>
            <li class="current"><a href="javascript:;" title="공무원학원"><span>공무원학원</span></a>
              <ul>
                <li><a href="<%=gongssel_main%>" target="_blank" title="단과/종합반(노량진)">단과/종합반(노량진)</a></li>
                <li><a href="<%=ansung_main%>" target="_blank" title="기숙 전문관(안성)">기숙 전문관(안성)</a></li>
                <li class="last"><a href="<%=ngbr_main%>" target="_blank" title="관리형 독서실(스파르타)">관리형 독서실(스파르타)</a></li>
              </ul>
            </li>
          </ul>
      </nav>
      <div class="gnb_bgArea"><div class="bgArea" style="display: none;height: 95px;border-top:0"></div></div>
      <div class="gnb_series">
        <div class="">
          <ul>
            <li><a href="/vod/vod_chr_list.asp?mcode=5&amp;grd_fg=9&amp;grp_dom=01">전체강좌</a></li>
            <li><a href="/s/gong/pass/sale_2024.asp#con4">일반행정직</a></li>
            <li><a href="/s/gong/pass/sale_2024.asp#con4">고용노동직</a></li>
            <li><a href="/s/gong/pass/sale_2024.asp#con4">교육행정직</a></li>
            <li><a href="/s/gong/pass/sale_2024.asp#con4">선거행정직</a></li>
            <li><a href="/s/gong/pass/sale_2024.asp#con4">직업상담직</a></li>
            <li><a href="/s/gong/pass/sale_2024.asp#con4">교정직</a></li>
            <li><a href="/s/gong/pass/sale_2024.asp#con4">보호직</a></li>
            <li><a href="/s/gong/pass/sale_2024.asp#con4">검찰직</a></li>
            <li><a href="/s/gong/pass/sale_2024.asp#con4">마약수사직</a></li>
            <li><a href="/s/gong/pass/sale_2024.asp#con4">출입국관리직</a></li>
            <li><a href="/s/gong/pass/sale_2024.asp#con4">철도경찰직</a></li>
            <li><a href="/s/gong/pass/sale_2024.asp#con4">세무직</a></li>
            <li><a href="/s/gong/pass/sale_2024.asp#con4">관세직</a></li>
            <li><a href="/s/gong/pass/sale_2024.asp#con4">사회복지직</a></li>
            <li><a href="/s/gong/pass/sale_2024.asp#con4">외무영사직</a></li>
            <li><a href="/s/gong/pass/sale_2024.asp#con4">법원직</a></li>
            <li><a href="/s/gong/pass/total_tech_sale_2024.asp?tab_num=2">건축직</a></li>
            <li><a href="/s/gong/pass/total_tech_sale_2024.asp?tab_num=3">토목직</a></li>
            <li><a href="/s/gong/pass/total_tech_sale_2024.asp?tab_num=4">간호직</a></li>
            <li><a href="/s/gong/pass/total_tech_sale_2024.asp?tab_num=5">농업직</a></li>
            <li><a href="/s/gong/pass/total_tech_sale_2024.asp?tab_num=6">전산직</a></li>
            <li><a href="/s/gong/pass/total_tech_sale_2024.asp?tab_num=7">보건직</a></li>
            <li><a href="/s/gong/pass/total_tech_sale_2024.asp?tab_num=8">보건진료직 </a></li>
            <li><a href="https://sobangdev.megagong.net" target="_blank">소방공무원</a></li>
            <li><a href="https://armydev.megagong.net" target="_blank">군무원</a></li>
            <li><a href="/s/gong/pass/sale_2024.asp#con4">PSAT</a></li>
            <li><a href="/vod/vod_chr_list.asp?mcode=5&amp;grd_fg=9&amp;cate_cd=1&amp;grp_dom=01&amp;scode=84">면접</a></li>
          </ul>
        </div>
      </div>
    </div>
    <div id="hd_MoUtility" class="hd_mo_utility">
      <div class="mo_gnb">
        <nav>
          <% if hcode = "gong" then %>
            <div class="slider">
              <div class="item"><a href="<%=url_main%>/vod/vod_chr_list.asp?mcode=5&grd_fg=9" <% if gmenu = "2" Then %>class="on" <% End if %> title="수강신청">수강신청</a></div>
              <div class="item"><a href="<%=url_main%>/teacher/index.asp" <% if gmenu = "1" Then %>class="on" <% End if %>  title="선생님">선생님</a></div>
              <div class="item hasMenu" data-depth2="lab"><a href="<%=lab_main%>/l/gong.asp" target="_blank" title="수험정보">수험정보</a></div>
              <div class="item"><a href="<%=lab_main %>/l/gong/explain/explain.asp?dt=20240323" <% if gmenu = "6" Then %>class="on"<% End if %> title="기출해설">기출해설</a></div>
              <% if cdate(lo_now_date) >= cdate("2024-03-23 10:30") and cdate(lo_now_date) < cdate("2024-04-25 14:00") then %>
              <div class="item fullservice"><a href="<%=url_main%>/s/gong/full/20240323/index.asp#fullContainer" target="_blank" title="합격예측 풀서비스">합격예측 풀서비스</a></div>
              <% end if %>
              <div class="item hasMenu" data-depth2="ebook"><a href="/event/2024/03140015/index.asp#eventWrap" title="e-교재">e-교재&서점</a></div>
            </div>
          <% elseif hcode = "sobang" then %>
            <div class="slider">
              <div class="item"><a href="<%=sobang_main%>/vod/vod_chr_list.asp?mcode=1" <% if gmenu = "1" Then %>class="on" <% End if %> title="수강신청">수강신청</a></div>
              <div class="item"><a href="<%=sobang_main%>/teacher/index.asp" <% if gmenu = "2" Then %>class="on" <% End if %> title="선생님">선생님</a></div>
              <div class="item hasMenu" data-depth2="lab"><a href="<%=lab_main%>/l/sobang.asp" target="_blank" title="수험정보">수험정보</a></div>
              <div class="item"><a href="<%=lab_main%>/l/sobang/explain/exam.asp" <% if gmenu = "3" Then %>class="on" <% End if %> title="기출해설">기출해설</a></div>
              <% if cdate(lo_now_date) >= cdate("2024-03-30") then %>
              <div class="item fullservice"><a href="<%=url_main%>/s/sobang/full/20240330/index.asp#fullContainer" target="_blank" title="합격예측 풀서비스">합격예측 풀서비스</a></div>
              <% end if %>
              <div class="item hasMenu" data-depth2="ebook"><a href="<%=sobang_main%>/event/2024/03140015/index.asp#eventWrap" title="e-교재">e-교재&서점</a></div>
            </div>
          <% elseif hcode = "army" or hcode = "armycampus" then %>
            <div class="slider">
              <div class="item"><a href="<%=army_main%>/vod/vod_chr_list.asp?mcode=1" <% if gmenu = "1" Then %>class="on" <% End if %> title="수강신청">수강신청</a></div>
              <div class="item"><a href="<%=army_main%>/teacher/index.asp" <% if gmenu = "2" Then %>class="on" <% End if %>  title="선생님">선생님</a></div>
              <div class="item hasMenu" data-depth2="lab"><a href="<%=lab_main%>/l/army.asp" target="_blank"title="수험정보">수험정보</a></div>		
              <div class="item"><a href="<%=lab_main%>/l/army/explain/explain.asp?dt=20230715" <% if gmenu = "3" Then %>class="on"<% End if %> title="기출해설">기출해설</a></div>
              <div class="item hasMenu" data-depth2="ebook"><a href="<%=army_main%>/book/bookshop.asp" <% if gmenu = "5" Then %>class="on" <% End if %> title="온라인서점">e-교재&서점</a></div>
            </div>
          <% end if %>
        </nav>
      </div><!-- // .mo_gnb -->
      <%
      pinfo = fncRequestVariables("PATH_INFO")
      %>
      <div class="mo_depth2_wrap">
          <% if hcode = "gong" then %>
          <div class="mo_depth2" id="mo_depth2_lab">
            <div class="swiper-wrapper">
              <div class="swiper-slide"><a href="<%=lab_main%>/l/gong/pass_opinion/index.asp">합격수기</a></div>
              <div class="swiper-slide"><a href="<%=lab_main%>/l/gong/guide/guide.asp">수험 가이드</a></div>
              <div class="swiper-slide"><a href="<%=lab_main%>/l/gong/guide/schedule.asp">시험일정</a></div>
              <div class="swiper-slide"><a href="<%=lab_main%>/l/gong/statistic/pass.asp">경쟁률&합격선</a></div>
              <div class="swiper-slide"><a href="<%=lab_main%>/l/share/quizbank/index.asp">문제은행서비스</a></div>
              <div class="swiper-slide"><a href="<%=lab_main%>/l/share/exam/gong/2024/index.asp#eventWrap">9급 기초진단평가</a></div>
            </div>
          </div>

          <div class="mo_depth2" id="mo_depth2_ebook">
            <div class="swiper-wrapper">
              <div class="swiper-slide<%if inStr(pinfo, "/event/2024/03140015") > 0 then%> active<%end if%>"><a href="<%=url_main%>/event/2024/03140015/index.asp#eventWrap">e-교재</a></div>
              <div class="swiper-slide<%if inStr(pinfo, "/book") > 0 then%> active<%end if%>"><a href="<%=url_main%>/book/bookshop.asp">온라인서점</a></div>
            </div>
          </div>
          <% elseif hcode = "sobang" then %>
          <div class="mo_depth2" id="mo_depth2_lab">
            <div class="swiper-wrapper">
              <div class="swiper-slide"><a href="<%=lab_main%>/l/sobang/pass_opinion/index.asp">합격수기</a></div>
              <div class="swiper-slide"><a href="<%=lab_main%>/l/sobang/guide/guide.asp">수험 가이드</a></div>
              <div class="swiper-slide"><a href="<%=lab_main%>/l/sobang/guide/schedule.asp">시험일정</a></div>
              <div class="swiper-slide"><a href="<%=lab_main%>/l/sobang/statistic/pass.asp">경쟁률&합격선</a></div>
              <div class="swiper-slide"><a href="<%=lab_main%>/l/sobang/news/list.asp?schExtra1=2">합격전략 칼럼</a></div>
              <div class="swiper-slide"><a href="<%=lab_main%>/l/sobang/strategy/list.asp">과목별 학습전략</a></div>
            </div>
          </div>

          <div class="mo_depth2" id="mo_depth2_ebook">
            <div class="swiper-wrapper">
              <div class="swiper-slide<%if inStr(pinfo, "/event/2024/03140015") > 0 then%> active<%end if%>"><a href="<%=sobang_main%>/event/2024/03140015/index.asp#eventWrap">e-교재</a></div>
              <div class="swiper-slide<%if inStr(pinfo, "/book") > 0 then%> active<%end if%>"><a href="<%=sobang_main%>/book/bookshop.asp">온라인서점</a></div>
            </div>
          </div>
          <% elseif hcode = "army" or hcode = "armycampus" then %>
          <div class="mo_depth2" id="mo_depth2_lab">
            <div class="swiper-wrapper">
              <div class="swiper-slide"><a href="<%=lab_main%>/l/army/pass_opinion/index.asp">합격수기</a></div>
              <div class="swiper-slide"><a href="<%=lab_main%>/l/army/guide/guide.asp">수험 가이드</a></div>
              <div class="swiper-slide"><a href="<%=lab_main%>/l/army/guide/schedule.asp">시험일정</a></div>
              <div class="swiper-slide"><a href="<%=lab_main%>/l/army/statistic/pass.asp">경쟁률&합격선</a></div>
              <div class="swiper-slide"><a href="<%=lab_main%>/l/army/news/list.asp?schExtra1=2">합격전략 칼럼</a></div>
              <div class="swiper-slide"><a href="<%=lab_main%>/l/army/strategy/list.asp">과목별 학습전략</a></div>
            </div>
          </div>

          <div class="mo_depth2" id="mo_depth2_ebook">
            <div class="swiper-wrapper">
              <div class="swiper-slide<%if inStr(pinfo, "/event/2024/03140015") > 0 then%> active<%end if%>"><a href="<%=army_main%>/event/2024/03140015/index.asp#eventWrap">e-교재</a></div>
              <div class="swiper-slide<%if inStr(pinfo, "/book") > 0 then%> active<%end if%>"><a href="<%=army_main%>/book/bookshop.asp">온라인서점</a></div>
            </div>
          </div>
          <% end if %>
      </div>
    </div>
  </div>
</header>`;

const css = `#headertop .hd_utility.v23_1 nav{width: 1080px !important;} /*서브페이지 너비*/
#headertop .hd_utility.v23_1.w1200 nav{width: 1200px !important;} /*메인페이지 너비*/
#headertop .hd_utility.v23_1 .mnu_list3 li.book::before,#headertop .hd_utility.v23_1 .mnu_list3 li.current::before{display: none;}
#headertop .hd_utility.v23_1 .mnu_list3 li.book,#headertop .hd_utility.v23_1 .mnu_list3 li.current,#headertop .hd_utility.v23_1 .mnu_list3.d0420 li{padding: 14px 15px;}
#headertop .hd_utility.v23_1 .mnu_list3.d0420 > li{font-size: 14.5px;}
#headertop .hd_utility.v23_1 .mnu_list3 li ul{width: 180px;padding: 20px 20px;}
#headertop .hd_utility.v23_1 .mnu_list3 li li{margin: 0 0 20px;}
#headertop .hd_utility.v23_1 .mnu_list3 li ul li{padding: 0 !important; width: 100%;}
#headertop .hd_utility.v23_1 .mnu_list3 li li:last-child{margin-bottom: 0;}
#headertop .hd_utility.v23_1 .mnu_list3 li ul a{padding:0 0 10px;}
#headertop .hd_utility.v23_1 .mnu_list3 li ul li.last a{border-bottom: 1px solid #e0e0e0;}

/* 풀서비스 header_wrap에 fullser_wrap 추가*/
#headertop .fullser_wrap .hd_utility.fixed .mnu_list.online > li > a{padding: 0 19px !important;}
#headertop .fullser_wrap .hd_utility .mnu_list > li.fullservice a{letter-spacing: -.1rem;color: #0082ff}
#headertop .fullser_wrap .hd_utility.fixed .mnu_list > li.fullservice a {color: #fff;}
#headertop .hd_wrp.v21_2 .hd_utility .mnu_list.online.sub > li > a{padding:0 13px !important;}
#headertop .fullser_wrap .hd_utility.v23_1 .mnu_list3.d0420 li{padding-left:10px;padding-right: 10px;}
#headertop .mobile_navinner .fullservice > a{background: linear-gradient(135deg, rgba(2, 191, 153) 0%, rgba(0, 120, 222) 100%);color: #fff;}

.toggleImg2 img:nth-child(1) {display: none;}
.toggleImg2.on img:nth-child(1) {display: block;}
.toggleImg2 img:nth-child(2) {display: block;}
.toggleImg2.on img:nth-child(2) {display: none;}

@media screen and (max-width: 1200px){
  #headertop .hd_utility.v23_1 nav,#headertop .hd_logo.w1200,#headertop .hd_utility.v23_1.w1200 nav{width: auto !important;} 
  #headertop .hd_mo_utility .mo_gnb nav .slider .item.fullservice a{letter-spacing: -.1rem;color: #0082ff}
  #headertop .hd_mo_utility.fixed .mo_gnb nav .slider .item.fullservice a {color: #fff;}
}`;

const excCss = `#headertop{font-family:'맑은 고딕','Malgun Gothic','돋움','Dotum',sans-serif;}
#headertop .hd_utility.v23_1 .mnu_list3 li.book,
#headertop .hd_utility.v23_1 .mnu_list3 li.current,
#headertop .hd_utility.v23_1 .mnu_list3.d0420 li{padding:11px 15px;}`;

const js = `function inifiniteLoop() {
  $('#headertop .fullser_wrap .hd_utility.v23_1 .mnu_list3.d0420 li.pass').toggleClass('on');
  $("#header_utility .mnu_list .toggleImg2").toggleClass("on");
  timeout = setTimeout(inifiniteLoop, 500);
}
inifiniteLoop();

$('.pass_mini_slide').not('.slick-initialized').slick({
  autoplay: true,
  autoplaySpeed: 2000,
  arrows: false,
  dots: false,
  infinite: true,
  vertical: true,
  verticalSwiping: true,
});

$('#hd_MoUtility .mo_gnb .slider').not('.slick-initialized').slick({
		infinite:false,
		rows: 1,
		swipeToSlide:true,
		focusOnSelect: false,
		centerMode: false,
		responsive: [{
		breakpoint: 1201,
		settings: {
			slidesToShow: 6,
			slidesToScroll: 6,
			variableWidth: false,
		}
		}, {
			breakpoint: 992,
			settings: {
				slidesToShow: 3,
				slidesToScroll: 3,
				variableWidth: true,
			}
		}]
	});
  
  $(window).on('load resize', function() {
  $('#hd_MoUtility .mo_gnb .slider').slick('refresh');	
});
  
$('#hd_MoUtility .mo_depth2').each(function(){
	let dp2Swiper = new Swiper(this, {
		slidesPerView: "auto",
		spaceBetween: 0,
		observer: true,
		observeParents: true,
		observeSlideChildren: true
	});
	if ($(this).find('.swiper-slide.active').length) {
		var dp2SwiperIndex = $(this).find('.swiper-slide.active').index();
		dp2Swiper.slideTo(dp2SwiperIndex, 0);
	}
});

$(document).on('click', '#hd_MoUtility .mo_gnb nav .item.hasMenu', function(e){
	e.preventDefault();
	if (!$(this).find('a').hasClass('on')) {
		$('#hd_MoUtility .mo_gnb nav .item.hasMenu a.on').removeClass('on');
		$(this).find('a').addClass('on');
		var dp2 = $(this).data('depth2');
		if (!$('.mo_depth2_wrap').hasClass('on')) {
			$('.mo_depth2_wrap').addClass('on');
		}
		$('.mo_depth2_wrap .mo_depth2.on').removeClass('on');
		$('#mo_depth2_' + dp2).addClass('on');
	} else {
		$(this).find('a').removeClass('on');
		$('.mo_depth2_wrap.on').removeClass('on')
		$('.mo_depth2_wrap .mo_depth2.on').removeClass('on');
	}
	
})`;

const outJs = `clearTimeout(timeout);`;

    return (
      <PageContent
        title={title}
        desc="메뉴 컴포넌트는 메가공무원 사이트를 이용하는 학생들이 필요로 하는 정보와 서비스를 쉽게 찾을 수 있도록 구성되어 있습니다."
        // image="/images/btn.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        outJs={outJs}
        items={["GNB","2뎁스","PC, 모바일 별도"]}
        link="<%=url_main%>/teacher/qna/qna.asp"
        onChange={onChange}
        version="no-padding"
      />
    )
  }
</script>