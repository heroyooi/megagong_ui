<!-- hd_wrp / S -->
<div id="header_wrap" class="hd_wrp army v21_2 <% if instr(1, NowUrl, "/megagong.asp") > 0 then %>main<% end if %>">
		
	<div class="hd_left_bnr n1014">
		<div>
			<div class="hd_slider">
				<% if cdate(lo_now_date) >= cdate("2022-09-22") and cdate(lo_now_date) < cdate("2022-10-15") then %>
				<div>
					<a href="/exam/basic/army/index.asp#eventWrap" title="나의 합격 가능성은? 기초학습 진단평가">
						<img src="<%=img_main%>/m/2022/0922_armybasicexam/bnr_1.jpg" class="" style="cursor:pointer;" alt="나의 합격 가능성은? 기초학습 진단평가">
					</a>
				</div>
				<% end if %>

				<% if cdate(lo_now_date) >= cdate("2022-09-02") and cdate(lo_now_date) < cdate("2022-09-26") then %>
				<div>
					<a href="/help/notice/view.asp?idx=3972">
						<img src="<%=img_main%>/m/2022/0902_virus/header_left_bnr.png" class="" style="cursor:pointer;" alt="불법 바이럴 제보를 기다립니다.">
					</a>
				</div>
				<% end if %>

				<% if cdate(lo_now_date) >= cdate("2022-08-03") and cdate(lo_now_date) < cdate("2022-08-16") then %>
				<div>
					<a href="/s/gong/event/2022/06280086/index.asp#eventWrap" >
						<img src="<%=img_main%>/m/2022/0628_planner/main_sky_ban_gong.jpg" class="" style="cursor:pointer;" alt="거꾸로 플래너 무료!">
					</a>
				</div>
				<% end if %>

				<% if cdate(lo_now_date) < cdate("2022-08-04 15:00") then%>
				<div>
					<a href="/s/army/full/20220716/index.asp#fullContainer" title="" >
						<img src="<%=img_main%>/m/2022/0716_fullserv/bn_sky.jpg" class="" style="cursor:pointer;" alt="">
					</a>
				</div>
				<% end if %>
				
				<% if cdate(lo_now_date) >= cdate("2022-07-13") and cdate(lo_now_date) < cdate("2022-08-03") then%>
				<div>
					<a href="<%=url_main%>/s/gong/event/2022/07130106/index.asp#eventWrap" title="굿노트 속지 무료 다운로드! 2023 거꾸로 플래너" >
						<img src="<%=img_main%>/m/2022/0713_planner/main_sky_bnr.jpg" class="" style="cursor:pointer;" alt="굿노트 속지 무료 다운로드! 2023 거꾸로 플래너">
					</a>
				</div>
				<% end if %>

				<% If cdate(lo_now_date) >= cdate("2022-08-22") and cdate(lo_now_date) < cdate("2022-09-20 00:00:00")  then%>
				<div>
					<a href="<%=url_main %>/event/2022/08220025/index.asp#eventWrap" target="_blank" title="100% 당첨 행운복권 증정! 회원정보 업데이트" >
						<img src="<%=img_main%>/m/2022/0822_update/main_sky_ban.png" class="" style="cursor:pointer;" alt="100% 당첨 행운복권 증정! 회원정보 업데이트">
					</a>
				</div>
				<% end if %>
				
				<% if cdate(lo_now_date) >= cdate("2022-08-23") and cdate(lo_now_date) < cdate("2022-08-25") then %>
				<div>
					<a href="/event/2022/08180022/index.asp#eventWrap" >
						<img src="<%=img_main%>/m/2022/0818_ebook/bn_sky.jpg" class="" style="cursor:pointer;" alt="e-교재&필기앱">
					</a>
				</div>
				<% end if %>	
									
				<div>
					<a href="<%=url_main%>/event/2021/12160013/index.asp#eventWrap" target="_blank">
						<img src="<%=img_main%>/m/2021/1216_goodnote/main_sky_ban.jpg" class="" style="cursor:pointer;" alt="굿노트">
					</a>
				</div>

				<div>
					<a href="/s/gong/event/2022/07190107/index.asp#eventWrap" title="채소 캐릭터로 알아보는 NEW 학습스타일 테스트" >
						<img src="<%=img_main%>/m/2022/0719_quiz/main_sky_ban.jpg" class="" style="cursor:pointer;" alt="2023 나의 합격 가능성은? 합격예측 진단평가">
					</a>
				</div>
			</div>
		</div>
	</div>
	
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
	<% If hcode = "armycampus" Then %>
		<a href="<%=h_lnk %>" class="army" title="메가군무원학원 메인페이지 바로가기"><img src="<%=img_main%>/s/army/campus/logo.png" alt="메가군무원학원"></a>
	<% Else %>
		<a href="<%=h_lnk %>" class="army" title="메가군무원 메인페이지 바로가기"><img src="<%=img_main%>/s/army/logo.png" alt="메가군무원"></a>
	<% End If %>
	</h1>


	<!-- 군무원학원 전용 우측 배너 변경건 S -->
	<% If hcode = "armycampus" and cdate(lo_now_date) >= cdate("2022-10-31") then %>
	<div class="hd_right_bnr d1101">
		<div>
			<div class="hd_slider">
				<div>
					<a href="/s/army/campus/consult/index.asp">
						<img src="<%=img_main%>/m/2022/1101_sobang/1101_army_bnr.png" class="" alt="상담신청 02-2162-5671 방문상담 예약">
					</a>
				</div>
			</div>
		</div>
	</div>
	<style>
			#headertop .hd_wrp .hd_right_bnr {margin-right: -545px;}
	</style>
	<script type="text/javascript">
			/* --- hd_slider 슬라이더--- */
			var hd_left_s = $('.hd_right_bnr .hd_slider div').length;
			if (hd_left_s > 1) {
				$('.hd_right_bnr .hd_slider').slick({
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
	<% End If %>
	<!-- // 군무원학원 전용 우측 배너 변경건 E -->


	<% if cdate(lo_now_date) < cdate("2022-10-31") then %>
	<% ' 수험정보 개편 공통(공무원,소방) 헤더 컨텐츠 S %>
	<!-- #include virtual = "/common/menu/header_examinfo.asp"-->
	<% ' // 수험정보 개편 공통(공무원,소방) 헤더 컨텐츠 E %>
	<% End If %>

	<% if cdate(lo_now_date) >= cdate("2022-10-31") then %>
	<% If hcode = "army" Then %>
	<% ' 수험정보 개편 공통(공무원,소방) 헤더 컨텐츠 S %>
	<!-- #include virtual = "/common/menu/header_examinfo.asp"-->
	<% ' // 수험정보 개편 공통(공무원,소방) 헤더 컨텐츠 E %>
	<% Else %>
	<% End If %>
	<% End If %>

	<div id="header_utility" class="hd_utility">
		<h2 class="blindw">메가군무원 메뉴</h2>
		<nav role="navigation">
			<% if cdate(lo_now_date) >= cdate("2022-07-27") and cdate(lo_now_date) < cdate("2022-08-16")then%>
			<i class="toggleImg1" style='position:absolute; top:-24px; right:-5px; z-index:1;'>
				<img src="<%=img_main%>/m/2022/0727_army/gnb_twinkle_tooltip.gif" alt="23년 대비 OPEN">
			</i>
			<% end if %>
			<% if cdate(lo_now_date) >= cdate("2022-08-16") and cdate(lo_now_date) < cdate("2022-09-19") then %>
			<i style='position:absolute; top:-24px; right:-5px; z-index:1;'>
				<img src="<%=img_main%>/m/2022/0727_army/0812/bubble.gif" alt="">
			</i>
			<% elseif cdate(lo_now_date) >= cdate("2022-09-19") then %>
			<i style='position:absolute; top:-24px; right:-5px; z-index:1;'>
				<img src="<%=img_main%>/m/2022/0919_army/bubble.gif" alt="">
			</i>
			<% end if %>
			<ul class="mnu_list <% if instr(1, NowUrl, "/megagong.asp") = 0 Then %>sub<%end if%>">
				<li <% if gmenu = "1" Then %>class="on"<% End if %> ><a class="mli_link" href="/teacher/index.asp" title="선생님">선생님</a></li>
				<li <% if gmenu = "2" Then %>class="on"<% End if %> ><a class="mli_link" href="/vod/vod_chr_list.asp?mcode=1" title="전체강좌">전체강좌 </a></li>
				<% If cdate(lo_now_date) < cdate("2022-04-20") then%>
				<li <% if gmenu = "3" Then %>class="on"<% End if %> ><a class="mli_link" href="/book/bookshop.asp" title="온라인서점">온라인서점</a></li>
				<%end if %>
				<li <% if gmenu = "6" Then %>class="on"<% End if %> ><a class="mli_link" href="/s/army/examinfo/guide.asp" title="합격전략 LAB">합격전략 LAB</a></li>
				<li <% if gmenu = "4" Then %>class="on"<% End if %> ><a class="mli_link" href="/help/faq/index.asp" title="학습지원센터">학습지원센터</a></li>
				<%If cdate(lo_now_date) < cdate("2022-07-16") then%>
				<li class="exam_go">
					<a class="mli_link" href="/s/army/mockexam/2022_1/index.asp#eventWrap" title="모의고사">모의고사</a>
								
					<span class="mock">
						<%If CDate(lo_now_date) < CDate("2022-07-02") then%>
						<img src="<%=img_main%>/m/2022/0610_mock/header_mock_on.png" alt="1회 신청 중" class="on1">
						<img src="<%=img_main%>/m/2022/0610_mock/header_mock_off.png" alt="1회 신청 중" class="on2">
						<%elseIf CDate(lo_now_date) >= CDate("2022-07-02 13:30") and CDate(lo_now_date) < CDate("2022-07-04") then%>
						<img src="<%=img_main%>/m/2022/0610_mock/header_mock_ing_on.png" alt="1회 응시 중" class="on1">
						<img src="<%=img_main%>/m/2022/0610_mock/header_mock_ing_off.png" alt="1회 응시 중" class="on2">
						<% else %>
						
						<% end if %>
					</span>
				</li>
				<style>
					/* 220610 추가 */
					.mock {position:absolute;top:-25px;left: 50%;right:0;width: 78px;transform: translateX(-50%);}
					.mock img {width:78px;}
					.mock img.on1 {display:inline-block;}
					.mock img.on2 {display:none;}
					.mock.on img.on1 {display:none;}
					.mock.on img.on2 {display:inline-block;}

					.mock.mo {position:absolute;top:10px;left: 80px;right:auto;width: 108px;transform: initial;}
					.mock.mo img {width:108px;}
					.mock.mo img.on1 {display:inline-block;}
					.mock.mo img.on2 {display:none;}
					.mock.mo.on img.on1 {display:none;}
					.mock.mo.on img.on2 {display:inline-block;}
				</style>
				<% end if %>
				<% if cdate(lo_now_date) < cdate("2022-08-04 15:00") then%>
				<li><a class="mli_link" style="color:green" href="/s/army/full/20220716/index.asp?go=full_tab" title="합격예측 풀서비스">합격예측 풀서비스</a></li>
				<% end if %>
				
				<% If cdate(lo_now_date) >= cdate("2022-07-28 18:00") then%>
				<li class="last">
					<a class="mli_link twinkle new_st_pop_open" href="javascript:st_pop_open();" title="초시생 Click!" <% if instr(1, NowUrl, "/megagong.asp") = 0 Then %>style="padding:0;"<%end if%>>
						<span>
							<span class="txt">초시생 Click!</span>
							<span class="bg"></span>
						</span>
					</a>
				</li>
				<%end if%>
				
				<script>
					setInterval(function () {
						$(".mock").toggleClass("on");
					}, 500);

					setInterval(function () {
						$(".twinkle").toggleClass("on");
					}, 500);
				</script>
				<style>
					.twinkle > span {position:relative;display:inline-block;vertical-align: middle;padding-top:4px; }
					.twinkle > span span.txt { position:absolute;top:0;left:0;right:0;font-weight:500;font-size:14px;line-height:43px;color:#fff;text-align: center; font-weight:700; }
					.twinkle.on > span span.txt { color:#088d1b; }
					.twinkle > span span.bg { margin-top:4px; display:inline-block; width:100px; height:25px; background:#088d1b; border:1px solid #088d1b; border-radius:12px;  }
					.twinkle.on > span span.bg { background:#fff;  }
					.twinkle img.on1 {display:inline-block;}
					.twinkle img.on2 {display:none;}
					.twinkle.on img.on1 {display:none;}
					.twinkle.on img.on2 {display:inline-block;}


					.mock {position:absolute;top:-25px;left:0;right:0;width: 98px;}
					.mock.d1208{left:-20px}
					.mock img {width:98px;}
					.mock img.on1 {display:inline-block;}
					.mock img.on2 {display:none;}
					.mock.on img.on1 {display:none;}
					.mock.on img.on2 {display:inline-block;}

					@media (max-width: 1200px){
						/* .mock {top: -16%;width: 98px;left: 50%;transform: translateX(-50%);-webkit-transform: translateX(-50%);-moz-transform: translateX(-50%);z-index: 2;}
						.mock img {width: 100%;} */
						.mobile_nav li .mock {top: 50%;left: 140px;width: 98px;transform: translate(-50%,-50%);-webkit-transform: translate(-50%,-50%);-moz-transform: translate(-50%,-50%);z-index: 2;}
					}
				</style>

			</ul>
			
			<script>
				setInterval(function () {
					$(".mock").toggleClass("on");
				}, 500);
				
				setInterval(function () {
					$(".main_bubble").toggleClass("on");
				}, 500);
				
			</script>
			
			<div class="right_btn online">
				<ul class="mnu_list3 <% If cdate(lo_now_date) >= cdate("2022-04-20") then%>d0420<% end if %>">
					<% If cdate(lo_now_date) >= cdate("2022-04-20") then%>
					<li  class="book"><a href="/book/bookshop.asp"><span>온라인서점</span></a></li>
					<% end if %>


					<li  class="current"><a href="/s/army/campus/index.asp" target="_blank" ><span>군무원학원</span></a>
				</ul>
			</div>

		</nav>

		<div class="gnb_bgArea"><div class="bgArea" style="display: none;"></div></div>
	</div>






	<!-- 초시생 클릭 S -->
	
	<% if instr(1, NowUrl, "/megagong.asp" )> 0 Then %>
	<span class="new_st_mo twinkle">
		<a href="javascript:st_pop_open();">
			<img src="<%=img_main%>/m/2022/0728_bn/army/new_st_label_mo_army.png" alt="초시생 click!" class="on1">
			<img src="<%=img_main%>/m/2022/0728_bn/army/new_st_label_mo_army_on.png" alt="초시생 click!" class="on2">
		</a>
		<button type="button" class="close">닫기</button>
	</span>
	<%end if%> 

	<div class="new_st_pop" style="display: none">
		<div>
			<button type="button" class="close">
				<img src="<%=img_main%>/m/2022/0728_bn/img_button_close.png" alt="닫기" class="">
			</button>
			<h3>
				<img src="<%=img_main%>/m/2022/0728_bn/army/st_pop_pc_tit.png" alt="군무원 준비가 처음이라면?" class="pc">
				<img src="<%=img_main%>/m/2022/0728_bn/army/st_pop_mo_tit.png" alt="군무원 준비가 처음이라면?" class="mo">
			</h3>
			<ul>
				<li>
					<a href="/s/army/event/2022/01180003/index.asp#eventWrap">
						<img src="<%=img_main%>/m/2022/0728_bn/army/st_pop_pc_bn1.png" alt="2023 군무원 수험 GUIDE" class="pc">
						<img src="<%=img_main%>/m/2022/0728_bn/army/st_pop_mo_bn1.png" alt="2023 군무원 수험 GUIDE" class="mo">
					</a>
				</li>
				<li>
					<a href="/exam/basic/army/index.asp#eventWrap">
						<img src="<%=img_main%>/m/2022/0728_bn/army/st_pop_pc_bn6.png" alt="기초학습 진단평가" class="pc">
						<img src="<%=img_main%>/m/2022/0728_bn/army/st_pop_mo_bn6.png" alt="기초학습 진단평가" class="mo">
					</a>
				</li>
				<li>
					<a href="/s/army/event/2021/02020003/index.asp#eventWrap">
						<img src="<%=img_main%>/m/2022/0728_bn/army/st_pop_pc_bn2.png" alt="메가패스 7일 무료체험" class="pc">
						<img src="<%=img_main%>/m/2022/0728_bn/army/st_pop_mo_bn2.png" alt="메가패스 7일 무료체험" class="mo">
					</a>
				</li>
				<li>
					<a href="/event/2022/05100008/index.asp#eventWrap">
						<img src="<%=img_main%>/m/2022/0728_bn/army/st_pop_pc_bn3.png" alt="메가한능검 완벽 라인업" class="pc">
						<img src="<%=img_main%>/m/2022/0728_bn/army/st_pop_mo_bn3.png" alt="메가한능검 완벽 라인업" class="mo">
					</a>
				</li>
				<li>
					<a href="/s/army/event/2020/11100010/index.asp#eventWrap">
						<img src="<%=img_main%>/m/2022/0728_bn/army/st_pop_pc_bn4.png" alt="G-TELP 맞춤 전략" class="pc">
						<img src="<%=img_main%>/m/2022/0728_bn/army/st_pop_mo_bn4.png" alt="G-TELP 맞춤 전략" class="mo">
					</a>
				</li>
				<li>
					<a href="/s/army/event/2022/07270011/index.asp#eventWrap">
						<img src="<%=img_main%>/m/2022/0728_bn/army/st_pop_pc_bn5.png" alt="2023 ALL NEW 커리큘럼" class="pc">
						<img src="<%=img_main%>/m/2022/0728_bn/army/st_pop_mo_bn5.png" alt="2023 ALL NEW 커리큘럼" class="mo">
					</a>
				</li>
			</ul>
		</div>
		
	</div>
	<span class="new_st_pop_dim"></span>
	<script>
		function st_pop_open() {
			$(".new_st_pop, .new_st_pop_dim").show();
		}
		$(".new_st_pop_dim, .new_st_pop .close").on('click', function () {
			$(".new_st_pop, .new_st_pop_dim").hide();
		})
		$(".new_st_mo .close").on('click', function () {
			$(".new_st_mo").hide();
		})
	</script>
	<style>
		#headertop .new_st_pop {display:none;position:fixed;z-index:10;top:538px;left:50%;margin-top:-330px;margin-left:20px;width:280px; border:1px solid #d0d0d0; background:#fff; box-sizing:border-box; padding:19px; }
		#headertop .new_st_pop .close { position:absolute; top:12px; right:19px; width:15px; }
		#headertop .new_st_pop .close img { width:100%; }
		#headertop .new_st_pop ul { margin-top:20px; }
		#headertop .new_st_pop li { margin-bottom:10px; }
		#headertop .new_st_pop .pc { display:block; }
		#headertop .new_st_pop .mo { display:none; }

		#headertop .new_st_mo { display:none; position:fixed; bottom:75px; right:70px; z-index:10; }
		#headertop .new_st_mo .close { font-size:0;  width:17px; height:17px; position:absolute; right:0; }
		.new_st_pop_dim { display:none; position:fixed; top:0; left:0; z-index:5; width:100%; height:100%; }

		@media (max-width: 1200px){
			#headertop .new_st_mo {display:block;}
			#headertop .new_st_pop { top:50%; left:50%; transform:translate(-50%, -50%); margin:0; }
			#headertop .new_st_pop .pc { display:none; }
			#headertop .new_st_pop .mo { display:block; width:100%; height:auto; }
		}
		@media (max-width: 768px){
			 #headertop .new_st_mo {right:20px;}
			#headertop .new_st_pop .close { right:20px; width:auto; }
		}
		@media (max-width: 576px){
			#headertop .new_st_mo { bottom:65px; width: 20%; }
			#headertop .new_st_pop { top:50%; }
		}
	</style>
	<!-- // 초시생 클릭 E -->



	


	<div class="mb_rightmenu">
		<a href="/mypage/study/my_study.asp" title="내 강의실">내 강의실</a>
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

		.mnu_list3{float: right;}
		.mnu_list3 li{ position: relative;padding: 14px 30px;font-size:16px; color:#000;font-weight: 900;height: auto;margin-right: -30px;}
		/* .mnu_list3 li.current { position: relative;padding: 14px 30px;font-size:16px; color:#000;font-weight: 900;height: auto;margin-right: -30px;} */
		.mnu_list3 li.current::before {content: "";display: block;position: absolute;top: 13px; left: 0;width: 21px;height: 17px;background: url(https://img.megagong.net/m/2021/1207_test360/academy_icon.png) no-repeat 0 0; }
		
		.mnu_list3 li ul{background: #fff;display:none;position:absolute;top: 40px;right: -14px;z-index:50;width: 182px;padding: 16px 20px;border: 1px solid #ddd;box-sizing: border-box;}
		.mnu_list3 li:hover ul{display:block;}
		.mnu_list3 li li{display:block;float:none;}
		.mnu_list3 li li:last-child{margin-bottom: 0;}
		.mnu_list3 li ul a{position: relative;display:block;font-size:13px;text-align:left;color: #707070;padding: 6px 0 6px 5px;border-bottom: 1px solid #e0e0e0;}
		.mnu_list3 li ul a:hover, .mnu_list3 li ul li:hover a{display: block;color: #000;}
		.mnu_list3 li ul li.last a{border-bottom: none;}
		
		#headertop .hd_utility.fixed .mnu_list3 li a{color: #fff;}
		#headertop .hd_utility.fixed .mnu_list3 li ul li a{color: #000;}
		#headertop .hd_utility.fixed .mnu_list3 li ul{top: 44px;}
		#headertop .hd_utility.fixed .mnu_list3 li.current::before{background: url(https://img.megagong.net/m/2021/1207_test360/academy_icon_w.png);}
		#headertop .hd_utility .right_btn.online a>span::before,
		#headertop .hd_utility .right_btn.online a>span::after{display: none;}

		/*220420  온라인 서점 리뉴얼*/
		.mnu_list3.d0420 li{float: left; margin-right: 0;}
		.mnu_list3.d0420 li.current{padding: 14px 0 14px 30px;}
		.mnu_list3 li.book::before{content: "";display: block;position: absolute;top: 50%; transform: translateY(-50%); left: 0;width: 16px;height: 18px;background: url(https://img.megagong.net/m/common/book/book_icon.png);}
		#headertop .hd_utility.fixed .mnu_list3 li.book::before{background: url(https://img.megagong.net/m/common/book/book_icon_w.png);}
		/*//220420  온라인 서점 리뉴얼*/

		@media (max-width: 1200px){
			#headertop .hd_wrp .hd_left_bnr{display: none;}
		}
	
	</style>


	<!-- hd_mo_utility / S -->
	<div id="hd_MoUtility" class="hd_mo_utility">
		<div class="mo_gnb">
			<nav>
				<div class="slider">
					<div class="item"><a href="/teacher/index.asp" <% if gmenu = "1" Then %>class="on" <% End if %>  title="선생님">선생님</a></div>
					<div class="item"><a href="/vod/vod_chr_list.asp?mcode=1" <% if gmenu = "2" Then %>class="on" <% End if %> title="전체강좌">전체강좌</a></div>
					<% 'If cdate(lo_now_date) < cdate("2022-04-21") then%>
					<div class="item"><a href="/book/bookshop.asp" <% if gmenu = "3" Then %>class="on" <% End if %> title="온라인서점">온라인서점</a></div>
					<% 'else %>
					<!-- <div class="item"><a href="/book/v22/index.asp" <% if gmenu = "3" Then %>class="on" <% End if %> title="온라인서점">온라인서점</a></div> -->
					<% 'End if %>
					<div class="item"><a href="/s/army/examinfo/guide.asp" <% if gmenu = "6" Then %>class="on" <% End if %> title="합격전략 LAB">합격전략 LAB</a></div>
					<div class="item"><a href="/help/faq/index.asp" <% if gmenu = "4" Then %>class="on" <% End if %> title="학습지원센터">학습지원센터</a></div>
					<%If cdate(lo_now_date) < cdate("2022-07-16") then%>
					<div class="item"><a href="/s/army/mockexam/2022_1/index.asp#eventWrap" <% if gmenu = "4" Then %>class="on" <% End if %> title="모의고사">모의고사</a></div>
					<%End if %>
				</div>
			</nav>
		</div>

	</div>
		
	<script type="text/javascript">
		$('#hd_MoUtility .mo_gnb .slider').slick({
			infinite:false,
			rows: 1,
			swipeToSlide:true,
			focusOnSelect: false,
			centerMode: false,
			responsive: [{
			breakpoint: 1200,
			settings: {
				slidesToShow: 5,
				slidesToScroll: 5,
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
		<%if gmenu = "3" or gmenu = "4" or gmenu = "6"  then %>
		$('#hd_MoUtility .mo_gnb .slider').slick('slickGoTo', 2);
		<%else%>
		//$('#hd_MoUtility .mo_gnb .slider').slick('slickGoTo', 0);
		<%end if%>
		
	</script>


	<!-- hd_mo_utility / E -->
</div>
<!-- hd_wrp / E -->



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
							<% If hcode = "armycampus" Then %>
							<a href="javascript:;" title="메가군무원학원">메가군무원학원</a>
							<% Else %>
							<a href="javascript:;" title="메가군무원">메가군무원</a>
							<% End If %>
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
										<%if hcode <> "armycampus" then%>
										<dd><a href="<%=army_main %>/s/army/campus/index.asp" title="메가군무원학원">메가군무원학원 <img src="<%=img_main%>/common/ic_new.gif" alt="New" style="vertical-align:middle;margin:-3px 0 0 3px;" /></a></dd>
										<%end if%>
										<%if hcode <> "ansung" then%>
										<dd><a href="<%=ansung_main %>" title="메가공무원 전문관 24hr">메가공무원 전문관 24hr</a></dd>
										<%end if%>
										<%if hcode <> "ngbr" then%>
										<dd><a href="<%=ngbr_main %>" title="메가공무원 스파르타">메가공무원 스파르타</a></dd>
										<%end if%>
										<dd><a href="https://www.megajob.co.kr/megajob.asp " title="메가공기업">메가공기업 <img src="<%=img_main%>/common/ic_new.gif" alt="New" style="vertical-align:middle;margin:-3px 0 0 3px;" /></a></dd>
									</dl>
								</li>
							</ul>
						</li>
						<% if cdate(lo_now_date) < cdate("2022-08-04 15:00") then%>
						<li class="exam_go"><a href="/s/army/full/20220716/index.asp?go=full_tab" title="합격예측 풀서비스">합격예측 풀서비스</a></li>
						<% end if %>
						<li><a href="/teacher/index.asp" title="선생님">선생님</a></li>
						<li><a href="/vod/vod_chr_list.asp?mcode=1" title="전체강좌">전체강좌</a></li>
						<% 'If cdate(lo_now_date) < cdate("2022-04-21") then%>
						<li><a href="/book/bookshop.asp" title="온라인서점">온라인서점</a></li>
						<% 'else %>
						<!-- <li><a href="/book/v22/index.asp" title="온라인서점">온라인서점</a></li> -->
						<% 'End if %>
						<li><a href="/s/army/examinfo/guide.asp" title="합격전략 LAB">합격전략 LAB</a></li>
						<li><a href="/help/faq/index.asp" title="학습지원센터">학습지원센터</a></li>
						<li><a href="/mypage/index.asp" title="마이페이지">마이페이지</a></li>
						<li><a href="/mypage/study/my_study.asp" title="내 강의실">내 강의실</a></li>
						<%If cdate(lo_now_date) < cdate("2022-07-16") then%>
							<li>
								<a href="/s/army/mockexam/2022_1/index.asp#eventWrap" title="모의고사">모의고사</a>
								<span class="mock mo">
									<%If CDate(lo_now_date) < CDate("2022-07-02") then%>
									<img src="<%=img_main%>/m/2022/0610_mock/gnb_bubble_apply_off.png" alt="신청 중" class="on1">
									<img src="<%=img_main%>/m/2022/0610_mock/gnb_bubble_apply_on.png" alt="신청 중" class="on2">
									<%elseIf CDate(lo_now_date) >= CDate("2022-07-02 13:30") and CDate(lo_now_date) < CDate("2022-07-04") then%>
									<img src="<%=img_main%>/m/2022/0610_mock/gnb_bubble_ing_off.png" alt="응시 중" class="on1">
									<img src="<%=img_main%>/m/2022/0610_mock/gnb_bubble_ing_on.png" alt="응시 중" class="on2">
									<% else %>
									<% end if %>
								</span>
							</li>
						<% end if %>
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
<div id="mo_globalMenu" class="glbal_menu online fixed">

	<!--군무원학원 모바일 하단 배너 -->
	<% if cdate(lo_now_date) >= cdate("2022-10-31") and hcode="armycampus" then %>
	<% if instr(1, NowUrl, "/s/army/campus/index.asp") > 0 Then %>
		<%If fncRequestCookie("todayPopupCookie") = "" then%>
		<div class="m_quick_bnr">
			<div class="cmg_popup_wrap mg_today" id="popupToday" style="position: relative; margin: 0;">
				<div class="img_area">
					<a href="/s/army/campus/consult/index.asp" title="상담신청">
						<img class src="<%=img_main%>/m/2022/1101_sobang/1101_army_bnr_mo.png" alt="상담신청">
					</a>
				</div>
				<div class="mg_btn_wrap right top">
					<button class="mg_btn_base sm" onclick="closeCmegaPopupToday();">오늘 하루 보지 않기</button>
					<button class="mg_btn_base sm" onclick="closeCmegaPopup('popupToday')">닫기</button>
				</div>
			</div>
		</div>

		<style>
			.m_quick_bnr {position:absolute; right: 10px;bottom: 119%;z-index:2;}
			.m_quick_bnr .close {position: absolute; top: 0; right: -8px;}
			.m_quick_bnr button.mg_btn_base.sm {font-size: 15px;font-weight: 300;}
			.m_quick_bnr .mg_btn_wrap.right.top {margin-top: 7px;}

			@media (max-width:576px) {
				.m_quick_bnr{width: 42%}
				.m_quick_bnr button.mg_btn_base.sm {padding: 7.5px 7px;font-size: 11px}
			}
			@media (max-width:375px) {
				.m_quick_bnr {width: 55%;}
			}
		</style>
		<script>
			if(getCookie('todayPopupCookie') == 'close'){
				closeCmegaPopup('popupToday');
			}
			function closeCmegaPopupToday() {
				setCookiePopupToday('todayPopupCookie', 'close', 1);
				closeCmegaPopup('popupToday');
			}
		</script>
		<%End if%>
	<% end if %>	
	<% end if %>

	<div class="gm_inner">
		<ul>
			<li class="all"><a href="javascript:;" title="전체"><span>전체</span></a></li>
			<li class="lect"><a href="/mypage/study/my_study.asp" title="강의실"><span>강의실</span></a></li>
			<li class="home"><a href="<%=h_lnk %>" title="홈"><span>홈</span></a></li>
			<li class="my"><a href="/mypage/index.asp" title="MY"><span>MY</span></a></li>
			<li class="top"><a href="javascript:glb_movetop();" title="맨위로"><span>맨위로</span></a></li>
		</ul>
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
	$('.glbal_menu .all').click(function (e) {
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
		$('.glbal_menu .all').addClass('on');
		$('body').addClass('disabled');
		$(".mobile_navwrap").show("fast");
		return false;
	}
	// 모바일메뉴, 블랙 배경 지우기
	function mbnav_hide() {
		$(".mbnav_back").removeClass('on');
		$('.glbal_menu .all').removeClass('on');
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
		$('html, body').animate({ scrollTop: 0 }, 0);
	}
// 모바일 top 버튼 (e)
</script>
<!-- // 모바일 메뉴 -->


    <!-- 메가패스 20% 할인 프로모션 배너-->
	<% If CDate(lo_now_date) >= CDate("2022-03-22") and CDate(lo_now_date) < CDate("2022-04-05 09:00") then%>
    <% If fncRequestCookie("mega_pop") = "" then %>
        <!--군무원-->
		<div class="mega_pop">
			<a href="/s/army/pass/sale_2021.asp#eventWrap" target="_blank">
				<% If CDate(lo_now_date) < CDate("2022-03-29 09:00") then%>
				<img src="<%=img_main%>/m/2022/0322_pass/army/bn_right.png" alt="군무원 메가패스" usemap="#mega_pop" />
				<% else %>
				<img src="<%=img_main%>/m/2022/0322_pass/army/bn_right2.png" alt="군무원 메가패스" usemap="#mega_pop" />
				<% end if %>
			</a>
			<map id="mega_pop" name="mega_pop">
				<area shape="rect" alt="오늘하루열지않기" coords="3,188,91,202" href="javascript:brfDay_megapop();" />
				<area shape="rect" alt="닫기" coords="80,4,90,14" href="javascript:brfOff_megapop();" />
			</map>
		</div>  
        <style>
            .mega_pop {  position:fixed; top:285px; right:0; z-index:2; }
        </style>
        <script type="text/javascript">
			if ( location.href.match('/teacher/index.asp') ||
				location.href.match('/book/bookshop.asp') ||
				location.href.match('/s/army/examinfo/guide.asp') ||
				location.href.match('/help/faq/') ||
				location.href.match('/teacher/home.asp') ||
				(location.href.match('/vod/vod_chr_list.asp') && location.href.match('mcode=1'))
			) {	
				$(".mega_pop").show();
			} else {
				$(".mega_pop").hide();
			}

            function brfDay_megapop(){
                setCookie("mega_pop", "close", 1);
                if ($(".mega_pop").css("display") == "block") {
                    $(".mega_pop").hide();
                }
            }
            function brfOff_megapop(){
                $(".mega_pop").hide();
            }
        </script>
    <% end if%>
	<% end if %>
    <!--// 메가패스 20% 할인 프로모션 배너-->