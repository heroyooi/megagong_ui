	<style type="text/css">
	#headertop .gnb_bgArea .bgArea{height:220px}
	</style>


	<div class="hd_wrp">
		<div class="hd_left_bnr ansung" style="width: 304px;">
			<div>
				<div class="hd_slider">
					<div><img src="<%=img_main%>/m/2020/1204_ansung/head_bnr_1.png" alt=""></div>
					<div><img src="<%=img_main%>/m/2020/1204_ansung/head_bnr_2.png" alt=""></div>
					<div><img src="<%=img_main%>/m/2020/1204_ansung/head_bnr_3.png" alt=""></div>
					<div><img src="<%=img_main%>/m/2020/1204_ansung/head_bnr_4.png" alt=""></div>
					<div><img src="<%=img_main%>/m/2020/1204_ansung/head_bnr_5.png" alt=""></div>
					<div><img src="<%=img_main%>/m/2020/1204_ansung/head_bnr_6.png" alt=""></div>
					<div><img src="<%=img_main%>/m/2020/1204_ansung/head_bnr_7.png" alt=""></div>
				</div>
			</div>
		</div>
		<script type="text/javascript">
			/* --- hd_slider 슬라이더--- */
			var hdleft_s = $('.hd_left_bnr .hd_slider div').length;
			if (hdleft_s > 1) {
				$('.hd_left_bnr .hd_slider').slick({
					slidesToShow: 1,
					slidesToScroll: 1,
					infinite: true,
					dots: false,
					arrow: false,
					speed: 0,
					autoplaySpeed: 3000,
					autoplay: true,
				});
			}
			/* --- // hd_slider 슬라이더--- */
		</script>
		<% if CDate(lo_now_date) >= CDate("2020-12-04") then %>
		<style>
			#headertop .hd_wrp .hd_left_bnr{height: 76px;margin-top: -58px;}
		</style>
		<% end if %>

		<h1 class="hd_logo">
			<a href="<%=h_lnk %>" class="ansung" title="메가공무원 전문관 24hr 메인페이지 바로가기"><img src="<%=img_main%>/c/ansung/logo_renewal.png" alt="메가공무원 전문관 24hr"></a>
		</h1>

		<a href="javascript:;" class="mobile_navbtn" title="모바일메뉴 열기">
	      <span>-</span>
	      <span>-</span>
	      <span>-</span>
	   </a>

		<div class="hd_utility">
			<h2 class="blindw">메가공무원 전문관 24hr GNB 메뉴</h2>
			<nav role="navigation">
				<!-- 안성경찰 -->
				<ul class="mnu_list ansung police new">
					<li <% if gmenu = "1" Then %>class="on"<% End if %>><a class="mli_link" href="/c/ansung/intro/intro1.asp" title="학원소개">학원소개</a>
						<ul>
							<li><a href="/c/ansung/intro/intro1.asp" title="교육철학">교육철학</a></li>
							<li><a href="/c/ansung/intro/intro2.asp" title="학원특장점">학원특장점</a></li>
							<li><a href="/c/ansung/intro/intro6.asp" title="합격관리 시스템">합격관리 시스템</a></li>
							<li><a href="/c/ansung/intro/intro3.asp" title="선생님 소개">선생님 소개</a></li>
							<li><a href="/c/ansung/intro/intro4.asp" title="학원시설">학원시설</a></li>
							<li><a href="/c/ansung/intro/intro5.asp" title="학원 오시는길">학원 오시는길</a></li>
						</ul>
					</li>
					<li <% if gmenu = "7" Then %>class="on"<% End if %>><a class="mli_link" href="/c/ansung/pass/pass_index.asp" title="명예의 전당">명예의 전당</a>
						<ul>
							<li><a href="/c/ansung/pass/pass_index.asp" title="명예의 전당">명예의 전당</a></li>
							<li><a href="/c/ansung/pass/pass_final_index.asp" title="합격생 목소리">합격생 목소리</a></li>
							<li><a href="/c/ansung/pass/pass_report_final.asp" title="수험생 성적 분석">수험생 성적 분석</a></li>
						</ul>
					</li>
					<li <% if gmenu = "2" Then %>class="on"<% End if %>><a class="mli_link" href="/c/ansung/program/gong/index.asp" title="공무원전문관">공무원전문관</a>
						<ul>
							<li><a href="/c/ansung/program/gong/index.asp" title="공무원 프로그램">공무원 프로그램</a></li>
							<li><a href="/c/ansung/program/gong/guide1.asp" title="공무원 수험정보">공무원 수험정보</a></li>
							<li><a href="/c/ansung/program/gong/timetable.asp" title="하루 일과표">하루 일과표</a></li>
							<li><a href="/c/ansung/program/gong/prepare.asp" title="입학 준비물">입학 준비물</a></li>
							<li><a href="/c/ansung/program/gong/refund.asp" title="환불규정">환불규정</a></li>
						</ul>
					</li>
					<li <% if gmenu = "3" Then %>class="on"<% End if %>><a class="mli_link" href="/c/ansung/program/police/2020/index.asp" title="경찰전문관">경찰전문관</a>
						<ul>
							<li><a href="/c/ansung/program/police/2020/index.asp" title="경찰 프로그램">경찰 프로그램</a></li>
							<li><a href="/c/ansung/program/police/timetable.asp" title="하루 일과표">하루 일과표</a></li>
							<li><a href="/c/ansung/program/police/prepare.asp" title="입학 준비물">입학 준비물</a></li>
							<li><a href="/c/ansung/program/police/refund.asp" title="환불규정">환불규정</a></li>
						</ul>
					</li>
					<li <% if gmenu = "8" Then %>class="on"<% End if %>><a class="mli_link" href="/c/ansung/program/sobang/index.asp" title="소방전문관">소방전문관</a>
						<ul>
							<li><a href="/c/ansung/program/sobang/index.asp" title="소방 프로그램">소방 프로그램</a></li>
							<li><a href="/c/ansung/program/sobang/timetable.asp" title="하루 일과표">하루 일과표</a></li>
							<li><a href="/c/ansung/program/sobang/prepare.asp" title="입학 준비물">입학 준비물</a></li>
							<li><a href="/c/ansung/program/sobang/refund.asp" title="환불규정">환불규정</a></li>
						</ul>
					</li>
					<li <% if gmenu = "9" Then %>class="on"<% End if %>><a class="mli_link" href="/c/ansung/news/notice/list.asp" title="학원소식">학원소식</a>
						<ul>
							<li><a href="/c/ansung/news/notice/list.asp" title="공지사항">공지사항</a>
							<li><a href="/c/ansung/news/communicate/life/list.asp" title="소통과 공감">소통과 공감</a></li>
							<li><a href="/c/ansung/news/togather.asp" title="동행 프로젝트">동행 프로젝트</a></li>
							<li><a href="/c/ansung/news/data/list.asp" title="자료실">자료실</a></li>
						</ul>
					</li>

					<li <% if gmenu = "6" Then %>class="on"<% End if %>><a class="mli_link" href="/c/ansung/help/faq/index.asp" title="학원상담">학원상담</a>
						<ul>
							<li><a href="/c/ansung/help/faq/index.asp" title="FAQ">FAQ</a></li>
							<li><a href="/c/ansung/help/qna/write.asp" title="1:1 문의상담">1:1 문의상담</a></li>
							<li><a href="/c/ansung/help/guide/list.asp" title="학원 가이드북 신청">학원 가이드북 신청</a></li>
							<li><a href="/c/ansung/presentation/index.asp" title="설명회 예약 · 알림 서비스">설명회 예약 · 알림 서비스</a></li>
						</ul>
					</li>
					<li class="all_menu"><strong class="mli_link"><span>-</span><span>-</span><span>-</span></strong></li>
				</ul>
				<!-- // 안성경찰 -->

				<div class="right_btn">

				</div>

			</nav>

			<div class="gnb_bgArea"><div class="bgArea" style="display: none;"></div></div>
		</div>

	</div>

	<!-- 메뉴 토글 화면 -->
	<div class="hd_bottom mn">


		<div class="hdbt_wrp">

		</div>




		<!-- 헤더 아래 메뉴 닫기 -->
		<div class="hd_bottom_close">
			<a href="javascript:;" onclick="" title="닫기">닫기</a>
		</div>
		<!-- // 헤더 아래 메뉴 닫기 -->


		<!-- // 공캠선생님 토글 화면 -->
		<script type="text/javascript">

			/* --- 경찰 전체메뉴 클릭 이벤트 --- */
			var policeAllmenu = $('#headertop .hd_utility .mnu_list.ansung > li > ul');
			//policeAllmenu.hide();
			$(".all_menu").click(function (e) {
				e.preventDefault();
				if(policeAllmenu.css("display") == "none"){
					policeAllmenu.slideDown(150);
					$('.gnb_bgArea .bgArea').slideDown(150);
					console.log(1);
				}else{
					policeAllmenu.slideUp(150);
					$('.gnb_bgArea .bgArea').slideUp(150);
					console.log(2);
				}
			});


		</script>
	</div>
	<!-- // 메뉴 토글 화면 -->



	<!-- 모바일 메뉴 -->
	<div class="mobile_navwrap">
		<div class="mobnav_inner">
				<div class="welcome_wrp">
					<div class="wc_inner">
						<% if cook_id = "" then %>
						<p class="wctit"><strong>로그인을 해주세요.</strong></p>
						<% else %>
						<p class="wctit"><strong><%=cook_name %>님</strong></p>
						<% end if %>

						<div class="btn_place">
							<!-- 로그아웃시 lgout 클래스 추가-->
							<% if cook_id = "" then %>
							<a class="" href="/member/login.asp" >로그인</a>
							<% else %>
							<a class="lgout" href="/member/logout_sql.asp" >로그아웃</a>
							<% end if %>
						</div>
					</div>
				</div>
				<div class="mobile_navinner">
					<nav>
						<ul class="mobile_nav">
							<li class="more">
								<a href="javascript:;" title="메가공무원 전문관 24hr">메가공무원 전문관 24hr</a>
								<ul class="nextlst mbtea_all tit_none">
									<li>
										<dl>
                                            <dt class="blindw">타사이트 이동</dt>
											<%if hcode <> "gong" then%>
											<dd><a href="<%=url_main %>" title="메가공무원">메가공무원</a></dd>
											<%end if%>
											<%if hcode <> "gongssel" then%>
											<dd><a href="<%=gongssel_main %>" title="메가공무원학원">메가공무원학원</a></dd>
											<%end if%>
											<%if hcode <> "sobang" then%>
											<dd><a href="<%=sobang_main %>" title="메가소방">메가소방</a></dd>
											<%end if%>
											<%if hcode <> "sobangcampus" then%>
											<dd><a href="<%=sobangcampus_main %>" title="메가소방학원">메가소방학원</a></dd>
											<%end if%>
											<%if hcode <> "army" then%>
											<dd><a href="<%=army_main %>" title="메가군무원">메가군무원</a></dd>
											<%end if%>
											
											<%if hcode <> "army" then%>
											<dd><a href="<%=army_main %>/s/army/campus/index.asp" title="메가군무원학원">메가군무원학원 <img src="<%=img_main%>/common/ic_new.gif" alt="New" style="vertical-align:middle;margin:-3px 0 0 3px;" /></a></dd>
											<%end if%>

											<%if hcode <> "ansung" then%>
											<dd><a href="<%=ansung_main %>" title="메가공무원 전문관 24hr">메가공무원 전문관 24hr</a></dd>
											<%end if%>
										</dl>
									</li>
								</ul>
							</li>
							<li><a href="/c/ansung/intro/intro1.asp" title="학원소개">학원소개</a></li>
							<li><a href="/c/ansung/pass/pass_index.asp" title="명예의 전당">명예의 전당</a></li>
		                    <li><a href="/c/ansung/program/gong/index.asp" title="공무원전문관">공무원전문관</a></li>
							<li><a href="/c/ansung/program/police/2020/index.asp" title="경찰전문관">경찰전문관</a></li>
							<li><a href="/c/ansung/program/sobang/index.asp" title="소방전문관">소방전문관<img src="<%=img_main%>/m/2020/0305_ansungSB/hd_bubble.png" alt="4월 오픈!" style="margin-left:10px;vertical-align:middle"></a></li>
                            <li><a href="/c/ansung/news/notice/list.asp" title="학원소식">학원소식</a></li>
							<li><a href="/c/ansung/help/faq/index.asp" title="학원상담">학원상담</a></li>
						</ul>
					</nav>
				</div>
				<div class="mbmenu_bottom">
					<div class="snsgo_wrp">
						<a href="https://blog.naver.com/gongcamp" target="_blank" class="naver_b" title="네이버블로그"><span>네이버블로그</span></a>
                        <a href="https://www.facebook.com/megagong/" target="_blank" class="faceb" title="페이스북"><span>페이스북</span></a>
                        <a href="https://www.instagram.com/megagong/" target="_blank" class="insta" title="인스타그램"><span>인스타그램</span></a>
                        <a href="https://www.youtube.com/channel/UCkY2Tq32Mpy8Qq-QljPFLag" target="_blank" class="ytube" title="유튜브"><span>유튜브</span></a>
                        <a href="https://tv.naver.com/gongcampus" target="_blank" class="naver_tv" title="네이버TV"><span>네이버TV</span></a>
					</div>
				</div>
		</div>
	</div>
	<span class="mbnav_back"></span>

	<!--  모바일 하단 고정 메뉴 & TOP버튼 -->
	<div class="glbal_menu">
		<div class="gm_inner">
			<ul>
				<li class="glb_key3"><a href="/c/ansung/intro/intro1.asp" title="학원소개"><span>학원소개</span></a></li>
				<li class="glb_key5"><a href="/c/ansung/program/gong/index.asp" title="공무원전문관"><span>공무원전문관</span></a></li>
				<li class="glb_key5"><a href="/c/ansung/program/police/2020/index.asp" title="경찰전문관"><span>경찰전문관</span></a></li>
				<li class="glb_key5"><a href="/c/ansung/program/sobang/index.asp" title="소방전문관"><span>소방전문관</span></a></li>
				<li class="glb_key4"><a href="/c/ansung/help/notice/list.asp" title="내 강의실"><span>학원상담</span></a></li>
			</ul>
		</div>
		<div class="topgo">
			<a href="javascript:;" onclick="glb_movetop(); return false;" title="위로가기">위로가기</a>
		</div>
	</div>
	<!--  // 모바일 하단 고정 메뉴 & TOP버튼 -->




	<script type="text/javascript">
		/* 모바일메뉴 */
		$('.mobile_navbtn').click(function (e) {
			e.preventDefault();

			if ($(".mobile_navwrap").css("display") == "none") {
				mbnav_show();
			} else {
				mbnav_hide();
			}
			return false;
		});

		//팝업 검은배경 눌렀을 때
		$(".mbnav_back").click(function () {
			mbnav_hide();
		});

		// 모바일메뉴, 블랙 배경 띄우기
		function mbnav_show() {
			$(".mbnav_back").addClass('on');
			$('.mobile_navbtn').addClass('on');
			$('body').addClass('disabled');
			$(".mobile_navwrap").show("fast");
			return false;
		}
		// 모바일메뉴, 블랙 배경 지우기
		function mbnav_hide() {
			$(".mbnav_back").removeClass('on');
			$('.mobile_navbtn').removeClass('on');
			$('body').removeClass('disabled');
			$(".mobile_navwrap").hide("fast");
			return false;
		}

		/* 모바일메뉴 */

		/* 다음리스트 보이기 */
		$(".mobile_nav > li.more ul").css('display', 'none');
		$('.mobile_nav > li.more > a').click(function () {
			var mbnav_nextlist = $(this).next(".nextlst");
			if (mbnav_nextlist.css("display") == "none") {
				$(this).addClass('on');
				mbnav_nextlist.slideDown("fast");
			} else {
				mbnav_nextlist.slideUp("fast");
				$(this).removeClass('on');
			}
			return false;
		});

        // 모바일 top 버튼 (s)
        function glb_movetop() {
            $('html, body').animate({ scrollTop: 0 }, 400);
        }
   // 모바일 top 버튼 (e)
	</script>
	<!-- // 모바일 메뉴 -->
