    <div class="hd_wrp">
		
		<div class="hd_left_bnr n1014">
			<div>
				<div class="hd_slider">

					<% If cdate(lo_now_date) >= cdate("2021-12-09") and cdate(lo_now_date) < cdate("2021-12-21 18:30")then%></cdate>
					<div>
						<a href="<%=url_main %>/s/gong/event/2021/12090169/index.asp#eventWrap" target="_blank">
							<img src="<%=img_main%>/m/2021/1209_planner/gong/main_sky_ban.png" class="" style="cursor:pointer;" alt="거꾸로 플래너 무료">
						</a>
					</div>
					<% elseif cdate(lo_now_date) >= cdate("2021-12-22 12:34") then%>
					<div>
						<a href="/s/gong/event/2021/12090169/index.asp#eventWrap">
							<img src="<%=img_main%>/m/2021/1209_planner/gong/main_sky_ban_1222.png" class="" style="cursor:pointer;" alt="거꾸로 플래너 무료">
						</a>
					</div>
					<% end if %>


					<div>
						<a href="/s/army/event/2021/02020003/index.asp#eventWrap">
							<% if CDate(lo_now_date) < CDate("2021-10-23 17:00") then %>
							<img src="<%=img_main%>/m/2021/1007_army/hd_bnr_pass_free_army.png" style="cursor:pointer;" alt="군무원 메가패스 7일 무료체험">
							<% else %>
							<img src="<%=img_main%>/m/2021/1007_army/hd_bnr_pass_free_army.png" style="cursor:pointer;" alt="군무원 메가패스 7일 무료체험">
							<% end if %>
						</a>
					</div>

					<!--거꾸로 플래너 무료-->
					<div>
						<a href="<%=url_main%>/event/2021/12160013/index.asp#eventWrap" target="_blank">
							<img src="<%=img_main%>/m/2021/1216_goodnote/main_sky_ban.jpg" class="" style="cursor:pointer;" alt="거꾸로 플래너 무료">
						</a>
					</div>

					
				</div>
			</div>
		</div>
		<style>
			#headertop .hd_wrp .hd_left_bnr.new{margin-top: -40px;}
			#headertop .hd_wrp .hd_left_bnr{display:block;top:0;margin-top: 24px;width:218px}
			#headertop .hd_wrp .hd_left_bnr.slide > div{padding: 0;}
			#headertop .hd_wrp .hd_left_bnr {margin-left: -518px;}
			#headertop .hd_wrp.main .hd_left_bnr {margin-left: -577px;}

			#headertop .hd_wrp .hd_left_bnr .hd_slider .slick-arrow {position:absolute;top:50%;z-index:1;transform:translateY(-50%);display:block!important;font-size:0;}
			#headertop .hd_wrp .hd_left_bnr .hd_slider .slick-prev {left:-21px;width:7px;height:10px;background:url(https://design.megagong.net/image/m/2021/0105_planner/icon_L.png) no-repeat center;}
			#headertop .hd_wrp .hd_left_bnr .hd_slider .slick-next {right:-15px;width:7px;height:10px;background:url(https://design.megagong.net/image/m/2021/0105_planner/icon_R.png) no-repeat center;}

			@media (max-width: 1200px){
				#headertop .hd_wrp .hd_left_bnr{display: none;}
			}
			/* #headertop .hd_wrp .hd_left_bnr{display:block;top:0;margin-top: 25px;width:250px;height: auto;}
			#headertop .hd_wrp .hd_right_bnr{position: absolute;top: 50%;right: 50%;margin-right: -540px;z-index: 1;margin-top: -52px;height: 94px;}
			#headertop .hd_wrp .hd_left_bnr .hd_slider .slick-arrow {position: absolute;top: 50%;z-index: 1;transform: translateY(-50%);display: block !important;font-size: 0;}
			#headertop .hd_wrp .hd_left_bnr .hd_slider .slick-prev {left: 0;width: 7px;height: 10px;background: url(<%=img_main%>/m/2021/0105_planner/icon_L.png) no-repeat center;}
			#headertop .hd_wrp .hd_left_bnr .hd_slider .slick-next {right: 0;width: 7px;height: 10px;background: url(<%=img_main%>/m/2021/0105_planner/icon_R.png) no-repeat center;}

			@media (max-width: 1200px){
				#headertop .hd_wrp .hd_left_bnr{display: none;}
			} */
		</style>
		<script type="text/javascript">
			/* --- hd_slider 슬라이더--- */
			var hd_left_s = $('.hd_left_bnr .hd_slider div').length;
			if (hd_left_s > 1) {
				$('.hd_left_bnr .hd_slider').slick({
					slidesToShow: 1,
					slidesToScroll: 1,
					infinite: true,
					dots: false,
					arrow: true,
					speed: 0,
					autoplaySpeed: 3000,
					autoplay: true,
				});
			}
			/* --- // hd_slider 슬라이더--- */
		</script>
		
		
		

		<h1 class="hd_logo center">
			<a href="<%=h_lnk %>" class="army" title="메가군무원 메인페이지 바로가기"><img src="<%=img_main%>/s/army/logo.png" alt="메가군무원"></a>
		</h1>

		<a href="javascript:;" class="mobile_navbtn" title="모바일메뉴 열기">
	      <span>-</span>
	      <span>-</span>
	      <span>-</span>
	   </a>

		<% ' 수험정보 개편 공통(공무원,소방) 헤더 컨텐츠 S %>
		<!-- #include virtual = "/common/menu/header_examinfo.asp"-->
		<% ' // 수험정보 개편 공통(공무원,소방) 헤더 컨텐츠 E %>

		<div class="hd_utility">
            <h2 class="blindw">메가군무원학원 GNB 메뉴</h2>
			<nav role="navigation">
				<!-- 안성 GNB 클래스 : class="mnu_list police"-->
				<!-- 공무원,소방 온라인-->
				<ul class="mnu_list gong">
					<li <% if gmenu = "1" Then %>class="on"<% End if %> ><a class="mli_link" href="/teacher/index.asp" title="군무원선생님">군무원선생님</a></li>
					<li <% if gmenu = "2" Then %>class="on"<% End if %> ><a class="mli_link" href="/vod/vod_chr_list.asp?mcode=1" title="군무원강좌">군무원강좌 </a><%If cdate(lo_now_date) < cdate("2020-04-06") Then%><i style="left: 0;right: -2px;top: -20px;"><img src="<%=img_main%>/m/2020/0326_gong_new/bubble_1.png" alt="전 강좌 30% 할인"><!-- <span style="width:118px;">전 강좌 <font style="color:#f8ff39">30% 할인</font></span>--></i><%End if%></li>
					<li <% if gmenu = "3" Then %>class="on"<% End if %> ><a class="mli_link" href="/book/bookshop.asp" title="온라인서점">온라인서점</a></li>
					<li <% if gmenu = "6" Then %>class="on"<% End if %> ><a class="mli_link" href="/s/army/examinfo/guide.asp" title="수험정보">수험정보</a></li>
					<li <% if gmenu = "4" Then %>class="on"<% End if %> ><a class="mli_link" href="/help/faq/index.asp" title="학습지원센터">학습지원센터</a></li>
					<li><a class="mli_link chg_color" href="/s/army/pass/sale_2021.asp#eventWrap" title="9/7급 군무원 메가패스">9/7급 군무원 메가패스</a></li>
				</ul>
				<!-- // 공무원,소방 온라인-->

				<div class="right_btn online">
					<%If cdate(lo_now_date) < cdate("2021-04-01 00:00") then%>
                    <a href="javascript:;" title="난공 학원 바로가기">
						<span>난공 학원 바로가기</span>
					</a>
					<%elseif cdate(lo_now_date) < cdate("2021-12-08") Then%>
					<i style='position:absolute; top:-24px; left:94px; z-index:55;'><a href="/s/army/campus/schedule/overall_gather_7.asp#eventWrap" target="_blank"><img src="<%=img_main%>/m/2021/0705_army/gnb_bubble.gif" alt="5월 시작반 모집 중!"></a></i>
					<a href="/s/army/campus/index.asp" title="군무원학원 바로가기">
						<i style="position:absolute; top:-35px; left:50%;" class="label_evt">
							<!-- <img src="<%=img_main%>/m/2021/0401_army/gnb_bubble1.gif" class="img1" alt="5월반 모집중!"> -->
							<!-- <img src="<%=img_main%>/m/2021/0401_army/gnb_bubble2.gif" class="img2" alt="5월반 모집중!"> -->
						</i>
						<span>군무원학원</span>
					</a>
					<ul class="mnu_list2 army">
						<%If cdate(lo_now_date) < cdate("2021-11-15") then%>
						<li><a href="/s/army/campus/schedule/overall_gather_7.asp#eventWrap" class="mli_link" title="11월 개강반 바로가기">11월 개강반 ></a></li>
						<%else%>
						<li><a href="/s/army/campus/schedule/overall_gather_7.asp#eventWrap" class="mli_link" title="1월 개강반 바로가기">1월 개강반 ></a></li>
						<%end if%>
						<!-- <li><a href="/s/army/campus/schedule/overall_gather_5.asp" class="mli_link" title="6-7월 종합반 바로가기">6-7월 종합반 ></a></li> -->
						<!-- <li><a href="/s/army/campus/schedule/schedule.asp?mcode=1&tno=&cls=507" class="mli_link" title="5월 단과과정 바로가기">5월 단과과정 ></a></li> -->
					</ul>
					<script>
						setInterval(function () {
							$(".label_evt").toggleClass("on");
						}, 500);
					</script>
					<style>
						.label_evt .img1 {display:none;}
						.label_evt .img2 {display:block;}
						.label_evt.on .img1 {display:block;}
						.label_evt.on .img2 {display:none;}
						#headertop .hd_utility .right_btn.online > a {position:relative;}
						#headertop .hd_utility .right_btn.online > a i {margin-left:-46px;}
						#headertop .hd_utility .right_btn.online > a:before {content:'';z-index: 1;position:absolute;top:14px;left:-27px;width:1px;height:12px;background:#ddd;}
						#headertop .hd_utility .right_btn.online > a span {padding: 0 10px 0 30px;font-size:17px;color:#2642d1;}
						#headertop .hd_utility .right_btn.online > a span:after {content:none;}
						#headertop .hd_utility .right_btn.online a>span::before {content: "";display: block;position: absolute;top: -5px;left: 0;width: 22px;height: 23px;background: url(https://img.megagong.net/m/2021/0401_army/dirbtn_icon2.png) no-repeat 0 0;}

						#headertop .hd_utility .mnu_list2.army {float:right;overflow:hidden;}
						#headertop .hd_utility .mnu_list2.army li {float:left;padding:0 6px;}
						#headertop .hd_utility .mnu_list2.army li a {line-height: 40px;height: 40px;font-weight:bold;font-size:14px;color:#8d8d8d;}
					</style>
					<% Else %>
					<!-- 211208 수정 -->
					<div class="mnu_list3">
						<ul class="">
							<li  class="current"><a href="javascript:;"><span>군무원학원</span></a>
								<ul>
									<li><a href="<%=army_main%>/s/army/campus/index.asp" target="_blank">단과/종합반(노량진)</a></li>
									<li><a href="<%=ngbr_main%>" target="_blank">관리형 독서실(스파르타)</a></li>
								</ul>
							</li>
						</ul>
						</div>
					<style>
						.mnu_list3{float: right;}
						.mnu_list3 li.current { position: relative;padding: 14px 30px;font-size:16px;color:#000;font-weight: 900;height: auto;}
						#headertop .hd_utility .right_btn.online a>span::before{content: "";display: block;position: absolute;top:50%; transform: translateY(-50%); left: 0;width: 21px;height: 17px;background: url(https://img.megagong.net/m/2021/1207_test360/academy_icon.png) no-repeat 0 0; }
						#headertop .hd_utility .right_btn.online a>span::after{content: none;}
						
						.mnu_list3 li ul{background: #fff; display:none; position:absolute; top: 40px; left: -36px; z-index:50;width: 180px; padding: 22px 19px; border: 1px solid #ddd;box-sizing: border-box;}
						.mnu_list3 li:hover ul{display:block;}
						.mnu_list3 li ul li{display:block; float:none; margin-bottom:8px;}
						.mnu_list3 li ul li:last-child{margin-bottom: 0;}
						.mnu_list3 li ul li:last-child a{border-bottom: none;}
						.mnu_list3 li ul li a{position: relative; display:block; font-size:13px; margin:0px;  text-align:left; color: #707070;padding: 0 0 6px 4px;border-bottom: 1px solid #e0e0e0;}
						.mnu_list3 li ul a:hover, .mnu_list3 li ul li:hover a{display: block;color: #000;}
						
					</style>
					<%end if%>


					<ul class="depth2">
                        <li <% if hcode = "gongssel" Then %>class="on"<% End if %>><a href="<%=gongssel_main %>" class="focus" title="메가공무원학원">메가공무원학원</a></li>
                        <li <% if hcode = "sobangcampus" Then %>class="on"<% End if %>><a href="<%=sobangcampus_main %>" class="focus" title="메가소방학원">메가소방학원</a></li>
						<li <% if hcode = "army" Then %>class="on"<% End if %>><a href="<%=gongssel_main %>/c/gongssel/help/notice/view.asp?idx=2463&cate=01&searchkey=&searchword=&page=1#mContainer" class="focus" title="난공 군무원학원">난공 군무원학원</a></li>
						<li <% if hcode = "ansung" Then %>on"<% End if %>><a href="<%=ansung_main %>" class="focus" title="기숙학원(일행,경찰, 소방)">기숙학원 (일행, 경찰, 소방)</a></li>
                        <li>
							<a href="javascript:;" class="road2" title="메가공무원 스파르타">메가공무원 스파르타</a>
							<ul class="depth3">
								<li><a href="/r/ngbr/branch/gangnam/index.asp" target="_blank" title="강남">강남</a></li>
								<li><a href="/r/ngbr/branch/gangbuk/index.asp" target="_blank" title="강북">강북</a></li>
								<li><a href="/r/ngbr/branch/gwangsan/index.asp" target="_blank" title="광주(광산)">광주(광산)</a></li>
								<li><a href="/r/ngbr/branch/chonnam/index.asp" target="_blank" title="광주(전남대)">광주(전남대)<img src="<%=img_main%>/common/ic_new.gif" style="vertical-align:middle; margin-left:3px;"></a></li>
								<li><a href="/r/ngbr/branch/chungjangro/index.asp" target="_blank" title="광주(충장로)">광주(충장로)</a></li>
								<li><a href="/r/ngbr/branch/busan-seomyeon/index.asp" target="_blank" title="부산(서면)">부산(서면)</a></li>
								<li><a href="/r/ngbr/branch/bundang/index.asp" target="_blank" title="분당">분당</a></li>
								<li><a href="/r/ngbr/branch/incheon/index.asp" target="_blank" title="인천">인천</a></li>
							</ul>
						</li>
                    </ul>
				</div>

			</nav>

			<div class="gnb_bgArea"><div class="bgArea" style="display: none;"></div></div>
		</div>

		<div class="mb_rightmenu">
			<a href="/mypage/study/my_study.asp" title="내 강의실">내 강의실</a>
		</div>
	</div>



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
								<a href="javascript:;" title="메가군무원">메가군무원</a>
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
											
											<dd><a href="<%=army_main %>/s/army/campus/index.asp" title="메가군무원학원">메가군무원학원 <img src="<%=img_main%>/common/ic_new.gif" alt="New" style="vertical-align:middle;margin:-3px 0 0 3px;" /></a></dd>

											<%if hcode <> "ansung" then%>
											<dd><a href="<%=ansung_main %>" title="메가공무원 전문관 24hr">메가공무원 전문관 24hr</a></dd>
											<%end if%>

											<%if hcode <> "ngbr" then%>
											<dd><a href="<%=ngbr_main %>" title="메가공무원 스파르타">메가공무원 스파르타</a></dd>
											<%end if%>
											
										</dl>
									</li>
								</ul>
							</li>
							<li><a href="/teacher/index.asp" title="군무원선생님">군무원선생님</a></li>
		                    <li><a href="/vod/vod_chr_list.asp?mcode=1" title="군무원강좌">군무원강좌  <%If cdate(lo_now_date) < cdate("2020-04-06") Then%><img src="<%=img_main%>/m/2020/0214_chrbnr/hd_bubble.png" alt="전 강좌 30% 할인" style="margin-left:10px;vertical-align:middle"/><%End if%></a></li>
		                    <li><a href="/book/bookshop.asp" title="온라인서점">온라인서점</a></li>
							<li><a href="/s/army/examinfo/guide.asp" title="수험정보">수험정보</a></li>
							<li><a href="/mypage/index.asp" title="마이페이지">마이페이지</a></li>
							<li><a href="/mypage/study/my_study.asp" title="내 강의실">내 강의실</a></li>
							<li><a href="/help/faq/index.asp" title="학습지원센터">학습지원센터</a></li>
						</ul>
					</nav>
				</div>
				<div class="mbmenu_bottom <%If cdate(lo_now_date) >= cdate("2021-08-24") Then%>left_bnr<%End if%>">
					<div class="goodnote_wrp">
						<%If cdate(lo_now_date) < cdate("2021-10-19 12:34") Then%>
						<a href="/event/2021/08190009/index.asp#eventWrap" title="메가문구 바로가기"><strong>메가문구</strong> 바로가기<i></i></a>
						<%else%>
						<a href="/event/2021/10190010/index.asp#eventWrap" title="메가문구 바로가기"><strong>메가문구</strong> 바로가기<i></i></a>
						<%End if%>
					</div>
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
				<% If instr("123"&NowUrl, "/book/") > 0 Then %>
				<li class="glb_key2"><a href="/vod/vod_chr_list.asp?mcode=1" title="군무원강좌"><span>군무원강좌</span></a></li>
				<li class="glb_key3"><a href="/book/bookshop.asp" title="온라인서점"><span>온라인서점</span></a></li>
				<li class="glb_key4"><a href="/mypage/index.asp" title="마이페이지"><span>마이페이지</span></a></li>
				<li class="glb_key5"><a href="/mypage/study/my_study.asp" title="내 강의실"><span>내 강의실</span></a></li>
				<li class="glb_key6"><a href="/mypage/pay/my_cart.asp" title="장바구니"><span>장바구니</span></a></li>
				<% else %>
				<li class="glb_key1"><a href="javascript:history.back(-1);" title="뒤로가기"><span>뒤로가기</span></a></li>
				<li class="glb_key2"><a href="/vod/vod_chr_list.asp?mcode=1" title="군무원강좌"><span>군무원강좌</span></a></li>
				<li class="glb_key3"><a href="/book/bookshop.asp" title="온라인서점"><span>온라인서점</span></a></li>
				<li class="glb_key4"><a href="/mypage/index.asp" title="마이페이지"><span>마이페이지</span></a></li>
				<li class="glb_key5"><a href="/mypage/study/my_study.asp" title="내 강의실"><span>내 강의실</span></a></li>
				<% end if %>
			</ul>
		</div>
		<div class="topgo">
			<a href="javascript:;" onclick="glb_movetop(); return false;" title="위로가기">위로가기</a>
		</div>
	</div>
	<!--  // 모바일 하단 고정 메뉴 & TOP버튼 -->


	<!-- 전화상담 신청 팝업-->
	<div class="police_call_popwrp army" style="display:none">
		<div class="pcp_inner">
			<div class="pcp_titwrp">
				<p>1:1 전화상담 신청</p>
				<span>메가군무원학원에 대해 궁금한 점이 있으시면<br /> 이름, 연락처, 통화가능시간을 남겨주세요.</span>
				<a href="javascript:;" class="police_call_pop_clo" title="닫기"><img src="<%=img_main%>/c/ansung/main/police_call_pop_clo.png" alt="닫기"/></a>
			</div>
			<div class="pcp_form">
				<ul>
					<li><label><strong>이름</strong><span><input type="text" id="mem_nm" name="mem_nm"></span></label></li>
					<li><label><strong>연락처</strong><span><input type="text" id="mem_hp" name="mem_hp"></span></label></li>
					<li class="long"><label><strong>통화가능시간</strong>
						<span>
							<select id="sel_time" name="sel_time" class="timeSelect">
								<option value="">통화가능시간</option>
								<option value="오전 9시~12시">오전 9시~12시</option>
								<option value="오후 12시~15시">오후 12시~15시</option>
								<option value="오후 15시~18시">오후 15시~18시</option>
								<option value="오후 18시~21시">오후 18시~21시</option>
							</select>
						</span></label>
					</li>
					<li><label><strong>내용</strong>
						<span><textarea id="contents_txt" name="contents_txt"></textarea></span></label>
					</li>
				</ul>
				<p class="agr_box"><input type="checkbox" id="check_yn" name="check_yn" value="Y"><label for="check_yn">개인정보 수집 및 이용 동의 (필수)</label></p>
				<div class="agr_item">
					<span>수집항목 : 이름, 연락처</span>
					<span>수집목적 : 1:1 전화 상담</span>
					<span>보유기간 : 상담 완료 시 까지</span>
				</div>
				<a href="javascript:go_cons();" class="pcp_btn">상담신청</a>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		$(document).ready(function () {

			var policeCall_pop = $('.police_call_popwrp.army');
			// 1:1 전화상담 팝업
			$('.consults_sb.army').click(function () {
				
					policeCall_pop.css('display', 'block');
				//if (policeCall_pop.css("display") == "none") {
				//} else {
				//	policeCall_pop.css('display', 'none');
				//}
			});
			// 1:1 전화상담 팝업 닫기버튼 클릭
			$('.police_call_pop_clo').click(function () {
					policeCall_pop.css('display', 'none');
			});

		});

		function go_cons() {
			if ($("#mem_nm").val() == "") {
				alert("이름을 입력해 주세요.");
				$("#mem_nm").focus();
				return;
			}

			if ($("#mem_hp").val() == "") {
				alert("연락처를 입력해 주세요.");
				$("#mem_hp").focus();
				return;
			}

			if( ($("#mem_hp").val().length < 10) || !chkHpNo($("#mem_hp").val()) ) {
				alert("형식에 맞지 않는 번호입니다" );
				$("#mem_hp").focus();
				return;
			}

			if ($("#sel_time").val() == "") {
				alert("상담시간을 입력해 주세요.");
				$("#sel_time").focus();
				return;
			}

			if ($("#contents_txt").val() == "") {
				alert("상담 내용을 입력해 주세요.");
				$("#contents_txt").focus();
				return;
			}

			if ($("#check_yn").is(':checked') == false) {
				alert("개인정보 수집 및 이용 동의를 해주세요.");
				$("#check_yn").focus();
				return;
			}

			var mem_nm, mem_hp, sel_time, contents_txt;
			mem_nm = $.trim($("#mem_nm").val());
			mem_hp = $.trim($("#mem_hp").val());
			sel_time = $.trim($("#sel_time").val());
			contents_txt = $("#contents_txt").val();

			$.ajax({
				method: "POST",
				url : "/s/army/campus/consult/consult_tel_proc.asp",
				data : { "mem_nm" : escape(mem_nm), "mem_hp" : escape(mem_hp), "sel_time" : escape(sel_time), "contents_txt" : escape(contents_txt), "check_yn" : "", "dom_nm" : escape("군무원")},
				dataType: "json"
			}).done(function(data) {
				alert(data.msg);
				if(data.result == "no") {

				}
				else {
					$(".police_call_popwrp").css("display","none");
					$("#mem_nm").val("");
					$("#mem_hp").val("");
					$("#sel_time").val("");
					$("#contents_txt").val("");
					$('#check_yn').prop('checked', false);
				}
			});


		}

		
    </script>

	<!-- // 전화상담 신청 팝업-->


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



