

<!-- hd_wrp / S -->
<div id="header_wrap" class="hd_wrp online v21_2 <% if instr(1, NowUrl, "/megagong.asp") > 0 then %>main<% end if %>">
		
	<!-- hd_left_bnr / S -->
	<div class="hd_left_bnr">
		<div>
			<div class="hd_slider">

				<% if cdate(lo_now_date) >= cdate("2022-10-06") and cdate(lo_now_date) < cdate("2022-11-01") then %>
				<div>
					<a href="/s/gong/event/2022/10060159/index.asp">
						<img src="<%=img_main%>/m/2022/1006_idpic/main_sky_ban.png" class="" style="cursor:pointer;" alt="시현하다 촬영권 증정! 공무원증 배경화면 다운로드">
					</a>
				</div>
				<% else %>
				<div>
					<a href="/s/gong/event/2022/10060159/index.asp">
						<img src="<%=img_main%>/m/2022/1006_idpic/1101/main_sky_ban.png" class="" style="cursor:pointer;" alt="나만의 컬러로 커스터마이징! 공무원증 배경화면 다운로드">
					</a>
				</div>
				<% end if %>
				
				<% if cdate(lo_now_date) >= cdate("2022-09-07") and cdate(lo_now_date) < cdate("2022-11-08") then %>
				<div>
					<a href="/exam/basic/gong_4/index.asp#eventWrap">
						<img src="<%=img_main%>/m/2022/0907_examinfo/main_sky_ban.png" class="" style="cursor:pointer;" alt="PSAT 기초역량 진단평가">
					</a>
				</div>
				<% end if %>


				<% if cdate(lo_now_date) >= cdate("2022-09-02") and cdate(lo_now_date) < cdate("2022-09-26") then %>
				<div>
					<a href="/help/notice/view.asp?idx=3970">
						<img src="<%=img_main%>/m/2022/0902_virus/header_left_bnr.png" class="" style="cursor:pointer;" alt="불법 바이럴 제보를 기다립니다.">
					</a>
				</div>
				<% end if %>

				<% if cdate(lo_now_date) >= cdate("2022-08-23") then %>
				<div>
					<a href="/s/gong/event/2022/08230131/index.asp#eventWrap" >
						<img src="<%=img_main%>/m/2022/0823_sticker/bn_sky.jpg" class="" style="cursor:pointer;" alt="다꾸 스티커팩 무료!">
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
				
				<% If cdate(lo_now_date) >= cdate("2022-08-22") and cdate(lo_now_date) < cdate("2022-09-20 00:00:00")  then%>
				<div>
					<a href="/event/2022/08220025/index.asp#eventWrap" title="100% 당첨 행운복권 증정! 회원정보 업데이트" >
						<img src="<%=img_main%>/m/2022/0822_update/main_sky_ban.png" class="" style="cursor:pointer;" alt="100% 당첨 행운복권 증정! 회원정보 업데이트">
					</a>
				</div>
				<% end if %> 

				<% if cdate(lo_now_date) >= cdate("2022-08-16") then %>
				<div>
					<a href="/s/gong/event/2022/06220083/index.asp#eventWrap" >
						<img src="<%=img_main%>/m/2022/0816_pass/bn_sky.jpg" class="" style="cursor:pointer;" alt="직렬별 PDF 무료다운! 2023 합격 키워드북">
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

				<div>
					<a href="/s/gong/event/2022/07190107/index.asp#eventWrap" title="채소 캐릭터로 알아보는 NEW 학습스타일 테스트" >
						<img src="<%=img_main%>/m/2022/0719_quiz/main_sky_ban.jpg" class="" style="cursor:pointer;" alt="2023 나의 합격 가능성은? 합격예측 진단평가">
					</a>
				</div>
				
				<% if cdate(lo_now_date) < cdate("2022-07-30 17:00") then %>
				<div>
					<a href="<%=ansung_main%>/c/ansung/news/notice/view.asp?idx=17738&cate=&searchkey=&searchword=&page=1" target="_blank">
						<img src="<%=img_main%>/m/2022/0705_ansung/header_bnr1.jpg" class="" style="cursor:pointer;" alt="공무원/경찰/소방시험 딱, 1년만 미쳐라!">
					</a>
				</div>
				<% end if %> 
				
				<% if cdate(lo_now_date) < cdate("2022-08-03") then %>
				<div>
					<a href="/s/gong/event/2022/07130106/index.asp#eventWrap" >
						<img src="<%=img_main%>/m/2022/0728_bn/gong/main_sky_ban.png" class="" style="cursor:pointer;" alt="2023 거꾸로 플래너">
					</a>
				</div>
				<% end if %>
				<% if cdate(lo_now_date) < cdate("2022-08-14") then %>
				<div>
					<a href="/s/gong/event/2022/06220083/index.asp#eventWrap" >
						<img src="<%=img_main%>/m/2022/0801_pass/bn_sky.jpg" class="" style="cursor:pointer;" alt="합격 키워드 북">
					</a>
				</div>
				<% end if %>
			</div>
		</div>
	</div>
	<style>
		#headertop .hd_wrp .hd_left_bnr.new{margin-top: -40px;}
		#headertop .hd_wrp .hd_left_bnr{display:block;top:0;margin-top: 24px;width:218px;max-width: 218px;height: auto;}
		#headertop .hd_wrp .hd_left_bnr.slide > div{padding: 0;}
		#headertop .hd_wrp .hd_left_bnr {margin-left: -518px;}
		#headertop .hd_wrp.main .hd_left_bnr {margin-left: -577px;}

		#headertop .hd_wrp .hd_left_bnr .hd_slider .slick-arrow {position:absolute;top:50%;z-index:1;transform:translateY(-50%);display:block!important;font-size:0;}
		#headertop .hd_wrp .hd_left_bnr .hd_slider .slick-prev {left:-21px;width:7px;height:10px;background:url(<%=img_main%>/m/2021/0105_planner/icon_L.png) no-repeat center;}
		#headertop .hd_wrp .hd_left_bnr .hd_slider .slick-next {right:-15px;width:7px;height:10px;background:url(<%=img_main%>/m/2021/0105_planner/icon_R.png) no-repeat center;}

		@media (max-width: 1200px){
			#headertop .hd_wrp .hd_left_bnr{display: none;}
		}
	</style>
	<script type="text/javascript">
		/* --- hd_slider 슬라이더--- */
		//var hd_left_s = $('.hd_left_bnr .hd_slider div').length;
		//if (hd_left_s > 1) {
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
		//}
		/* --- // hd_slider 슬라이더--- */
	</script>
	<!-- hd_left_bnr / E -->

	
	
	<!-- hd_logo / S -->
	<h1 class="hd_logo center">
		<a href="<%=h_lnk %>" class="gong" title="메가공무원 메인페이지 바로가기"><img src="<%=img_main%>/s/gong/logo_v2.png" alt="메가공무원"></a>
	</h1>
	<!-- hd_logo / E -->



	<!-- hd_subjlive_bnr / S -->
	<% If fncRequestCookie("subjlive_bnr") = "" then %>
	<% if cdate(lo_now_date) < cdate("2022-03-11 19:30") then %>
	<div id="hd_subjlive_bnr" class="hd_subjlive_bnr<% if instr(1, NowUrl, "/megagong.asp") > 0 then %> main<% end if %>">
		<div class="item">
			<%If cdate(lo_now_date) < cdate("2022-03-04 17:00:00") then%>
			<a href="/s/gong/event/2022/02240022/index.asp#eventWrap" title="과목별 공부법 LIVE">
				<img src="<%=img_main%>/m/2022/0224_live/main_sky1.jpg" class="" style="cursor:pointer;" alt="과목별 공부법 LIVE">
			</a>
			<%elseif cdate(lo_now_date) < cdate("2022-03-04 19:30") then %>
			<a href="/s/gong/event/2022/02240022/index.asp#eventWrap" title="과목별 공부법 LIVE">
				<img src="<%=img_main%>/m/2022/0224_live/main_sky2.gif" class="" style="cursor:pointer;" alt="과목별 공부법 LIVE">
			</a>
			<%elseif cdate(lo_now_date) < cdate("2022-03-08 18:30") then%>
			<a href="/s/gong/event/2022/02240022/index.asp#eventWrap" title="과목별 공부법 LIVE">
				<img src="<%=img_main%>/m/2022/0224_live/main_sky1.jpg" class="" style="cursor:pointer;" alt="과목별 공부법 LIVE">
			</a>
			<%elseif cdate(lo_now_date) < cdate("2022-03-08 20:30") then %>
			<a href="/s/gong/event/2022/02240022/index.asp#eventWrap" title="과목별 공부법 LIVE">
				<img src="<%=img_main%>/m/2022/0224_live/main_sky2.gif" class="" style="cursor:pointer;" alt="과목별 공부법 LIVE">
			</a>
			<%elseif cdate(lo_now_date) < cdate("2022-03-10 17:30") then%>
			<a href="/s/gong/event/2022/02240022/index.asp#eventWrap" title="과목별 공부법 LIVE">
				<img src="<%=img_main%>/m/2022/0224_live/main_sky1.jpg" class="" style="cursor:pointer;" alt="과목별 공부법 LIVE">
			</a>
			<%elseif cdate(lo_now_date) < cdate("2022-03-10 19:30") then %>
			<a href="/s/gong/event/2022/02240022/index.asp#eventWrap" title="과목별 공부법 LIVE">
				<img src="<%=img_main%>/m/2022/0224_live/main_sky2.gif" class="" style="cursor:pointer;" alt="과목별 공부법 LIVE">
			</a>
			<%elseif cdate(lo_now_date) < cdate("2022-03-11 17:30") then%>
			<a href="/s/gong/event/2022/02240022/index.asp#eventWrap" title="과목별 공부법 LIVE">
				<img src="<%=img_main%>/m/2022/0224_live/main_sky1.jpg" class="" style="cursor:pointer;" alt="과목별 공부법 LIVE">
			</a>
			<%elseif cdate(lo_now_date) < cdate("2022-03-11 19:30") then %>
			<a href="/s/gong/event/2022/02240022/index.asp#eventWrap" title="과목별 공부법 LIVE">
				<img src="<%=img_main%>/m/2022/0224_live/main_sky2.gif" class="" style="cursor:pointer;" alt="과목별 공부법 LIVE">
			</a>
			<%end if%>
		</div>
		<ul class="subjlive_btn">
			<li><button onclick="subjlive_brfDay();">오늘 하루 닫기</button></li>
			<li><button onclick="subjlive_brfOff();" class="btnClose">닫기</button></li>
		</ul>
		
	</div>
	<style>
		#headertop .hd_wrp .hd_subjlive_bnr{position: absolute;right: 50%;z-index: 1;max-width: 300px;height: 70px;display: block;top: 0;margin-top: 36px;width: 240px;margin-right: -540px;background: #fff;z-index: 2;}
		#headertop .hd_wrp .hd_subjlive_bnr.main{margin-right: -600px;}

		#headertop .hd_wrp .hd_subjlive_bnr .subjlive_btn {float:right;position:absolute;top: -19px;right: 0px;}
		#headertop .hd_wrp .hd_subjlive_bnr .subjlive_btn li {float:left;margin-left: 2px;}
		#headertop .hd_wrp .hd_subjlive_bnr .subjlive_btn li button {color: #a7a7a7;background: #fff;padding: 0 10px;box-sizing:border-box;height: 20px;border: 1px solid #cfcfcf;font-size: 11px;line-height: 20px;vertical-align: top;cursor: pointer;}
		#headertop .hd_wrp .hd_subjlive_bnr .subjlive_btn li button.btnClose {font-size:0;position:relative;width: 22px;padding: 0;/* vertical-align: top; */}
		#headertop .hd_wrp .hd_subjlive_bnr .subjlive_btn li button.btnClose:before {content:"";display:block;width: 12px;height:1px;background: #a7a7a7;position:absolute;top: 9px;left:4px;transform:rotate(45deg);}
		#headertop .hd_wrp .hd_subjlive_bnr .subjlive_btn li button.btnClose:after {content:"";display:block;width: 12px;height:1px;background: #a7a7a7;position:absolute;top: 9px;left:4px;transform:rotate(-45deg);}
		
		@media (max-width: 1200px){
			#headertop .hd_wrp .hd_subjlive_bnr{display: none;}
		}
	</style>
	<% end if %>
	<%end if%>
	<script type="text/javascript">
		function subjlive_brfOff(){
			$("#hd_subjlive_bnr").hide();
		}
		function subjlive_brfDay() {
			setCookie("subjlive_bnr", "close", 1);
			subjlive_brfOff();
		}
	</script>
	<!-- hd_subjlive_bnr / E -->




	<% ' 수험정보 개편 공통(공무원,소방) 헤더 컨텐츠 S %>
	<!-- #include virtual = "/common/menu/header_examinfo.asp"-->
	<% ' // 수험정보 개편 공통(공무원,소방) 헤더 컨텐츠 E %>

	<%If cdate(lo_now_date) >= cdate("2022-07-16 14:00") and cdate(lo_now_date) < cdate("2022-07-21") then%>
	<% If fncRequestCookie("army_fullserv")="" then %>
	<div id="army_full_bn" class="army_full_bn <% if instr(1, NowUrl, "/megagong.asp") > 0 Then %>main<%end if%>">
		<a href="/s/army/full/20220716/index.asp?go=full_tab" title="메가군무원 풀서비스">
			<img src="<%=img_main%>/m/2022/0716_fullserv/hd_r_bn.png" class="" style="cursor:pointer;" alt="메가군무원 풀서비스">
		</a>
		<button type="button" class="btn_day_close" onClick="full_day_close();">오늘 하루 보지 않기</button>
		<button type="button" class="btn_close" onclick="full_close();">닫기</button>
	</div>
	<style>
		.army_full_bn {position:absolute;top:38px;left:50%;margin-left:295px;z-index:5;}
		.army_full_bn.main {margin-left:350px;}
		.army_full_bn .btn_close {position:absolute;top:-19px;right:0;width:22px;height:20px;line-height:18px;padding:0 5px;font-size:0;background:#fff url(<%=img_main%>/m/2022/0503_interviewMock/icon_x_03.png) no-repeat center;border:1px solid #cfcfcf;box-sizing:border-box;}
		.army_full_bn .btn_close img {vertical-align: middle;display:inline-block;}
		.army_full_bn .btn_day_close {position:absolute;top:-19px;right:24px;height:20px;line-height:18px;padding:0 8px;font-weight:bold;font-size:11px;color:#a7a7a7;background:#fff;border:1px solid #cfcfcf;box-sizing:border-box;}
		@media (max-width: 1200px) {
			.army_full_bn {display:none;}
		}
	</style>
	<script>
		function full_close() {
			$("#army_full_bn").hide();
		}
		function full_day_close() {
			setCookie("army_fullserv", "close", 1);
			full_close();
		}
	</script>
	<%end if%>
	<%end if%>


	<!-- 2022/5/6 오픈예정 -->
    <%If cdate(lo_now_date) >= cdate("2022-05-06 00:00:00") and cdate(lo_now_date) < cdate("2022-06-17 17:00") then%>
	<% If fncRequestCookie("mok_hd_pop_one")="" then %>
	<div id="mok_hd_pop" class="mok_hd_pop <% if instr(1, NowUrl, "/megagong.asp") > 0 Then %>main<%end if%>">
		<a href="/s/gong/interviewMock/20220503/index.asp#eventWrap" title="메가공무원 모의면접">
			<img src="<%=img_main%>/m/2022/0503_interviewMock/pop_mok.png" class="" style="cursor:pointer;" alt="메가공무원 모의면접">
		</a>
		<button type="button" class="btn_day_close" onClick="mok_day_close();">오늘 하루 보지 않기</button>
		<button type="button" class="btn_close" onclick="mok_close();">닫기</button>
	</div>
	<style>
		.mok_hd_pop {position:absolute;top:38px;left:50%;margin-left:295px;z-index:5;}
		.mok_hd_pop.main {margin-left:350px;}
		.mok_hd_pop .btn_close {position:absolute;top:-19px;right:0;width:22px;height:20px;line-height:18px;padding:0 5px;font-size:0;background:#fff url(<%=img_main%>/m/2022/0503_interviewMock/icon_x_03.png) no-repeat center;border:1px solid #cfcfcf;box-sizing:border-box;}
		.mok_hd_pop .btn_close img {vertical-align: middle;display:inline-block;}
		.mok_hd_pop .btn_day_close {position:absolute;top:-19px;right:24px;height:20px;line-height:18px;padding:0 8px;font-weight:bold;font-size:11px;color:#a7a7a7;background:#fff;border:1px solid #cfcfcf;box-sizing:border-box;}
		@media (max-width: 1200px) {
			.mok_hd_pop {display:none;}
		}
	</style>
	<script>
		function mok_close() {
			$("#mok_hd_pop").hide();
		}
		// function setCookieToday( name, value, expiredays ) {
		// 	var todayDate = new Date();
		// 	todayDate = new Date(parseInt(todayDate.getTime() / 86400000) * 86400000 + 54000000);
		// 	if ( todayDate > new Date() ){
		// 		expiredays = expiredays - 1;
		// 	}
		// 	todayDate.setDate( todayDate.getDate() + expiredays );
		// 	document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";"
		// }
		function mok_day_close() {
			setCookie("mok_hd_pop_one", "close", 1);
			// setCookieToday('mok_hd_pop_one', 'close', 1);
			mok_close();
		}
	</script>
	<%end if%>
	<%end if%>

	<!-- hd_utility / S -->
	<div id="header_utility" class="hd_utility v21_2 <%If cdate(lo_now_date) >= cdate("2021-12-08") Then%>d1208<%end if %>">
		<h2 class="blindw">메가공무원 메뉴</h2>
		<nav role="navigation">
			
			<ul class="mnu_list online off <% if instr(1, NowUrl, "/megagong.asp") = 0 Then %>sub <%If cdate(lo_now_date) >= cdate("2021-10-16 00:00") and cdate(lo_now_date) < cdate("2021-10-28 15:00") then%> n0927<% end if %><%end if%> ">
				<%If cdate(lo_now_date) < cdate("2022-07-28") Then%>
				<li <% if gmenu = "1" Then %>class="on"<% End if %> ><a class="mli_link" href="/teacher/index.asp" title="선생님">선생님</a></li>
				<li class="depview<% if gmenu = "2" Then %> on<% End if %>" >
					<a class="mli_link" href="javascript:;" title="전체강좌">전체강좌 </a>
					<ul class="depth_hover" style="display:none">
						<li><a class="" href="/vod/vod_chr_list.asp?mcode=1&grd_fg=9" title="9급 강좌">9급 강좌</a></li>
						<li><a class="" href="/vod/vod_chr_list.asp?mcode=1&grd_fg=7" title="7급 강좌">7급 강좌</a></li>
					</ul>
					<ul class="depth2">
						<li><a class="" href="/vod/vod_chr_list.asp?mcode=1&grd_fg=9" title="9급 강좌">9급 강좌</a></li>
						<li><a class="" href="/vod/vod_chr_list.asp?mcode=1&grd_fg=7" title="7급 강좌">7급 강좌</a></li>
					</ul>
				</li>
				<%else %>
				<li <% if gmenu = "7" Then %>class="on"<% End if %> ><a class="mli_link series" href="javascript:;" title="직렬보기">직렬보기</a></li>
				<li class="depview<% if gmenu = "2" Then %> on<% End if %>" >
					<a class="mli_link" href="/vod/vod_chr_list.asp?mcode=5&grd_fg=9" title="수강신청">수강신청 </a>
					<!-- <ul class="depth_hover" style="display:none">
						<li><a class="" href="/vod/vod_chr_list.asp?mcode=1&grd_fg=9" title="9급 강좌">9급 강좌</a></li>
						<li><a class="" href="/vod/vod_chr_list.asp?mcode=1&grd_fg=7" title="7급 강좌">7급 강좌</a></li>
					</ul>
					<ul class="depth2">
						<li><a class="" href="/vod/vod_chr_list.asp?mcode=1&grd_fg=9" title="9급 강좌">9급 강좌</a></li>
						<li><a class="" href="/vod/vod_chr_list.asp?mcode=1&grd_fg=7" title="7급 강좌">7급 강좌</a></li>
					</ul> -->
				</li>
				<li <% if gmenu = "1" Then %>class="on"<% End if %> ><a class="mli_link" href="/teacher/index.asp" title="선생님">선생님</a></li>
				<%end if %>
				
				<% If cdate(lo_now_date) < cdate("2022-04-20") then%>
				<li <% if gmenu = "3" Then %>class="on"<% End if %> ><a class="mli_link" href="/book/bookshop.asp" title="온라인서점">온라인서점</a></li>
				<%end if %>
				
				
				<li <% if gmenu = "6" Then %>class="on"<% End if %> >
					
					<a class="mli_link" href="/s/gong/examinfo/index.asp" title="합격전략 LAB">합격전략 LAB</a>
					<% if 1=2 then%>
					<a class="mli_link" href="/s/gong/examinfo/index.asp" title="수험정보">수험정보</a>
					<%end if %>
				</li>
				<li <% if gmenu = "4" Then %>class="on"<% End if %> ><a class="mli_link" href="/help/faq/" title="학습지원센터">학습지원센터</a></li>
				
				<% If cdate(lo_now_date) >= cdate("2022-10-15") and cdate(lo_now_date) < cdate("2022-10-27 14:00") then%>
				<!-- 20221015 풀서비스 -->
				<li class="exam_go">
					<a class="mli_link" href="/s/gong/full/20221015/index.asp" title="합격예측 풀서비스">합격예측 풀서비스</a>
				</li>
				<style>
					#headertop .hd_utility .mnu_list.online.on .exam_go {display: none;}
					#headertop .hd_utility .mnu_list.online .exam_go a {color: #0082ff;}
					#headertop .hd_utility.fixed .mnu_list>li i {display: none;}
					#headertop .hd_utility.fixed .mnu_list.online>li.exam_go>a {color: #fff;}
				</style>
				<!-- // 20221015 풀서비스 -->
				<% end if %>

				<% If cdate(lo_now_date) >= cdate("2022-10-29") and cdate(lo_now_date) < cdate("2022-11-10 14:00") then%>
				<!-- 20221029 풀서비스 -->
				<li class="exam_go">
					<a class="mli_link" href="/s/gong/full/20221029/index.asp" title="합격예측 풀서비스">합격예측 풀서비스</a>
				</li>
				<style>
					#headertop .hd_utility .mnu_list.online.on .exam_go {display: none;}
					#headertop .hd_utility .mnu_list.online .exam_go a {color: #0082ff;}
					#headertop .hd_utility.fixed .mnu_list>li i {display: none;}
					#headertop .hd_utility.fixed .mnu_list.online>li.exam_go>a {color: #fff;}
				</style>
				<!-- // 20221029 풀서비스 -->
				<% end if %>


				<% if cdate(lo_now_date) >= cdate("2022-04-20")  and cdate(lo_now_date) < cdate("2022-06-10") then %>
				<li <% if gmenu = "8" Then %>class="on"<% End if %> >
					<% if cdate(lo_now_date) < cdate("2022-05-21") then %>
					<i class="d0420"><img src="<%=img_main%>/m/2022/0420_mock/gnb_bubble.gif" alt="지방직 신청 중"></i>
					<% elseif cdate(lo_now_date) >= cdate("2022-05-21 10:00") and cdate(lo_now_date) < cdate("2022-05-23") then %>
					<i class="d0420"><img src="<%=img_main%>/m/2022/0420_mock/gnb_bubble2.gif" alt="지방직 응시 중"></i>
					<% end if %>
					<a class="mli_link" href="/s/gong/event/2022/04200045/index.asp#eventWrap" title="모의고사">모의고사</a>
				</li>
				<% end if %>
				<%If CDate(lo_now_date) < CDate("2022-04-01 17:00") then%>
				<%If cdate(lo_now_date) >= cdate("2021-11-17") then%>
				<li class="exam_go">
					<%If CDate(lo_now_date) < CDate("2021-12-20") then%>
					<a class="mli_link" href="/s/gong/mockexam/2022_1/index.asp#eventWrap" title="모의고사">모의고사</a>
					<%elseIf CDate(lo_now_date) < CDate("2022-01-24") then%>
					<a class="mli_link" href="/s/gong/mockexam/2022_2/index.asp#eventWrap" title="모의고사">모의고사</a>
					<%elseIf CDate(lo_now_date) < CDate("2022-02-21") then%>
					<a class="mli_link" href="/s/gong/mockexam/2022_3/index.asp#eventWrap" title="모의고사">모의고사</a>
					<% else %>
					<a class="mli_link" href="/s/gong/mockexam/2022_4/index.asp#eventWrap" title="모의고사">모의고사</a>
					<% end if %>
								
					<span class="mock <%If CDate(lo_now_date) >= CDate("2021-12-08") then%>d1208<% end if %>">
						<%If CDate(lo_now_date) < CDate("2021-12-18") then%>
						<img src="<%=img_main%>/m/2021/1117_exam/header_mock1_1.png" alt="1회 신청 중" class="on1">
						<img src="<%=img_main%>/m/2021/1117_exam/header_mock1_2.png" alt="1회 신청 중" class="on2">
						<%elseIf CDate(lo_now_date) >= CDate("2021-12-18 10:00") and CDate(lo_now_date) < CDate("2021-12-20") then%>
						<img src="<%=img_main%>/m/2021/1117_exam/header_mock2_1.png" alt="1회 응시 중" class="on1">
						<img src="<%=img_main%>/m/2021/1117_exam/header_mock2_2.png" alt="1회 응시 중" class="on2">
						<%elseIf CDate(lo_now_date) >= CDate("2021-12-20") and CDate(lo_now_date) < CDate("2022-01-22") then%>
						<img src="<%=img_main%>/m/2021/1117_exam/1218/header_mock1_1_v2.png" alt="2회 신청 중" class="on1">
						<img src="<%=img_main%>/m/2021/1117_exam/1218/header_mock1_2_v2.png" alt="2회 신청 중" class="on2">
						<%elseIf CDate(lo_now_date) >= CDate("2022-01-22 10:00") and CDate(lo_now_date) < CDate("2022-01-24") then%>
						<img src="<%=img_main%>/m/2021/1117_exam/1218/header_mock2_1_v2.png" alt="2회 응시 중" class="on1">
						<img src="<%=img_main%>/m/2021/1117_exam/1218/header_mock2_2_v2.png" alt="2회 응시 중" class="on2">
						<%elseIf CDate(lo_now_date) >= CDate("2022-01-24 00:00") and CDate(lo_now_date) < CDate("2022-02-19") then%>
						<img src="<%=img_main%>/m/2021/1117_exam/0121/header_mock1_1_v3.png" alt="3회 신청 중" class="on1">
						<img src="<%=img_main%>/m/2021/1117_exam/0121/header_mock1_2_v3.png" alt="3회 신청 중" class="on2">
						<%elseIf CDate(lo_now_date) >= CDate("2022-02-19 10:00") and CDate(lo_now_date) < CDate("2022-02-21") then%>
						<img src="<%=img_main%>/m/2021/1117_exam/0121/header_mock2_1_v3.png" alt="3회 응시 중" class="on1">
						<img src="<%=img_main%>/m/2021/1117_exam/0121/header_mock2_2_v3.png" alt="3회 응시 중" class="on2">
						<%elseIf CDate(lo_now_date) >= CDate("2022-02-21 00:00") and CDate(lo_now_date) < CDate("2022-03-19") then%>
						<img src="<%=img_main%>/m/2021/1117_exam/0219/header_mock1_1_v4.png" alt="4회 신청 중" class="on1">
						<img src="<%=img_main%>/m/2021/1117_exam/0219/header_mock1_2_v4.png" alt="4회 신청 중" class="on2">
						<%elseIf CDate(lo_now_date) >= CDate("2022-03-19 10:00") and CDate(lo_now_date) < CDate("2022-03-21") then%>
						<img src="<%=img_main%>/m/2021/1117_exam/0219/header_mock2_1_v4.png" alt="4회 응시 중" class="on1">
						<img src="<%=img_main%>/m/2021/1117_exam/0219/header_mock2_2_v4.png" alt="4회 응시 중" class="on2">
						<% else %>
						
						<% end if %>
					</span>
				</li>
				<% end if %>
				<style>
					#headertop .hd_utility .mnu_list.online.on .exam_go {display: none;}
					#headertop .hd_utility .mnu_list.online .exam_go a {color: #0082ff;}
					#headertop .hd_utility.fixed .mnu_list>li i {display: none;}
					#headertop .hd_utility.fixed .mnu_list.online>li.exam_go>a {color: #fff;}

					/* 초시생 때문에 추가 */
					#headertop .hd_wrp.v21_2 .hd_utility .mnu_list.online > li > a, 
					#headertop .hd_wrp.v21_2 .hd_utility .mnu_list.ansung > li > a, 
					#headertop .hd_wrp.v21_2 .hd_utility .mnu_list.sobangcampus > li > a,
					#headertop .hd_wrp.v21_2 .hd_utility .mnu_list.online.sub > li > a {padding:0 19px;}
					#headertop .hd_wrp.v21_2 .hd_utility .mnu_list.online > li.myhome > a {padding:0 15px;}
					#headertop .hd_wrp.v21_2 .hd_utility .mnu_list.online > li.myhome > a::before {content:none;}
					#headertop .hd_wrp.v21_2 .hd_utility.fixed .mnu_list.online > li > a {padding:0 18px;}

					/* 211208 추가 */
					#headertop .hd_wrp.v21_2 .hd_utility.d1208 .mnu_list.online{margin-left: 0;}
					#headertop .hd_wrp.v21_2 .hd_utility.d1208 .mnu_list.online > li{text-align: left;}
					#headertop .hd_wrp.v21_2 .hd_utility.d1208 .mnu_list.online > li > a{margin: 0 45px 0 0;padding: 0;}
					#headertop .hd_wrp.v21_2 .hd_utility.d1208 .mnu_list.online > li:nth-child(1) > a{width: 75px;margin: 0 40px 0 0;}
					#headertop .hd_wrp.v21_2 .hd_utility.d1208 .mnu_list.online > li.last > a{margin: 0;}
				</style>
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
					.twinkle.on > span span.txt { color:#2642d1; }
					.twinkle > span span.bg { margin-top:4px; display:inline-block; width:100px; height:25px; background:#2642d1; border:1px solid #2642d1; border-radius:12px;  }
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

				
				<%if cdate(lo_now_date) < cdate("2021-12-08") Then%>
				<li class="myhome twobtn">
					<a class="mli_link" href="<%=gongssel_main%>" target="_blank" title="노량진 학원">노량진 학원</a>
					<a class="mli_link" href="<%=ansung_main%>" target="_blank" title="기숙 전문관">기숙 전문관</a>
					<%If cdate(lo_now_date) >= cdate("2021-08-26") then%>
					<a class="mli_link" href="<%=ngbr_main%>" target="_blank" title="관리형 독서실">관리형 독서실</a>
					<% end if %>
				</li>
				<% else %>
				<!-- 211208 수정 -->
				<ul class="mnu_list3 <% If cdate(lo_now_date) >= cdate("2022-04-20") then%>d0420<% end if %>">
					<% If cdate(lo_now_date) >= cdate("2022-04-20") then%>
					<li  class="book"><a href="/book/bookshop.asp"><span>온라인서점</span></a></li>
					<% end if %>
					<li  class="current"><a href="javascript:;"><span>공무원학원</span></a>
						<ul>
							<li><a href="<%=gongssel_main%>" target="_blank">단과/종합반(노량진)</a></li>
							<li><a href="<%=ansung_main%>" target="_blank">기숙 전문관(안성)</a></li>
							<li class="last"><a href="<%=ngbr_main%>" target="_blank">관리형 독서실(스파르타)</a></li>
						</ul>
					</li>
				</ul>
				
				<style>
					.mnu_list3{float: right;}
					.mnu_list3.d0420 > li{position: relative;padding: 14px 30px;font-size:16px; color:#000;font-weight: 900;height: auto;}
					.mnu_list3 li.current {position: relative; padding: 14px 30px;font-size:16px; color:#000;font-weight: 900;height: auto;}
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
					

					/*220420  온라인 서점 리뉴얼*/
					.mnu_list3.d0420 li{float: left; }
					.mnu_list3.d0420 li.current{padding: 14px 0 14px 30px;}
					.mnu_list3 li.book::before{content: "";display: block;position: absolute;top: 50%; transform: translateY(-50%); left: 0;width: 16px;height: 18px;background: url(https://img.megagong.net/m/common/book/book_icon.png);}
					#headertop .hd_utility.fixed .mnu_list3 li.book::before{background: url(https://img.megagong.net/m/common/book/book_icon_w.png);}
					/*//220420  온라인 서점 리뉴얼*/
				</style>
				<% end if %>
			</ul>
			<div class="right_btn online">

			</div>

		</nav>

		<div class="gnb_bgArea"><div class="bgArea" style="display: none;height: 95px;border-top:0"></div></div>
	
		<%If cdate(lo_now_date) >= cdate("2021-12-08") Then%>
		<!-- <div class="gnb_series <% if instr(1, NowUrl, "/megagong.asp" )> 0 Then %>on<%else %>sub<%end if %>"> -->
		<!-- 220621 변경 -->
		<div class="gnb_series <% if cdate(lo_now_date) < cdate("2022-06-20") Then %>on<%elseif instr(1, NowUrl, "/megagong.asp" )> 0 Then %><%else %>sub<%end if %>">
			<div class="">
				<% If cdate(lo_now_date) < cdate("2022-05-03 09:00") then%>
				<ul>
					<li><a href="/vod/vod_chr_list.asp?mcode=5&grd_fg=9&grp_dom=01">전체강좌</a></li>
					<li><a href="/s/gong/pass/gov_sale_2022.asp#eventWrap">일반행정직</a></li>
					<li><a href="/s/gong/pass/gov_sale_2022.asp#eventWrap">고용노동직</a></li>
					<li><a href="/s/gong/pass/edu_sale_2022.asp#eventWrap">교육행정직</a></li>
					<li><a href="/s/gong/pass/gov_sale_2022.asp#eventWrap">선거행정직</a></li>
					<li><a href="/s/gong/pass/sale_2022.asp#eventWrap">직업상담직</a></li>
					<li><a href="/s/gong/pass/security_sale_2022.asp#eventWrap">교정직</a></li>
					<li><a href="/s/gong/pass/security_sale_2022.asp#eventWrap">보호직</a></li>
					<li><a href="/s/gong/pass/security_sale_2022.asp#eventWrap">검찰직</a></li>
					<li><a href="/s/gong/pass/security_sale_2022.asp#eventWrap">마약수사직</a></li>
					
					<li><a href="/s/gong/pass/security_sale_2022.asp#eventWrap">출입국관리직</a></li>
					<li><a href="/s/gong/pass/security_sale_2022.asp#eventWrap">철도경찰직</a></li>
					<li><a href="/s/gong/pass/tax_sale_2022.asp#eventWrap">세무직</a></li>
					<li><a href="/s/gong/pass/tax_sale_2022.asp#eventWrap">관세직</a></li>
					<li><a href="/s/gong/pass/welfare_sale_2022.asp#eventWrap">사회복지직</a></li>
					<% if cdate(lo_now_date) >= cdate("2022-02-15 00:00") then %>
					<li><a href="/s/gong/pass/sale_2022.asp#eventWrap ">외무영사직 <%if cdate(lo_now_date) < cdate("2022-06-15") then%><img src="<%=img_main%>/common/ic_new.gif" alt="New"><% end if %></a></li>
					<% end if %>
					<li><a href="/s/gong/pass/court_sale_2022.asp#eventWrap">법원직</a></li>
					<li><a href="/s/gong/pass/tech_sale_2022.asp#eventWrap">전산직 <%if cdate(lo_now_date) < cdate("2022-04-07") then%><img src="<%=img_main%>/common/ic_new.gif" alt="New"><% end if %></a></li>
					<% if cdate(lo_now_date) < cdate("2021-12-15") then %>
					<li><a href="javascript:alert('곧 공개됩니다.');">토목직 <%if cdate(lo_now_date) < cdate("2022-04-07") then%><img src="<%=img_main%>/common/ic_new.gif" alt="New"><% end if %></a></li>
					<% else %>
					<li><a href="/s/gong/pass/engi_sale_2022.asp#eventWrap">토목직 <%if cdate(lo_now_date) < cdate("2022-04-07") then%><img src="<%=img_main%>/common/ic_new.gif" alt="New"><% end if %></a></li>
					<% end if %>
					<li><a href="<%=sobang_main %>" target="_blank">소방공무원</a></li>
					<li><a href="<%=army_main %>" target="_blank">군무원</a></li>
					
					<li><a href="/s/gong/pass/sale_2022.asp#eventWrap">PSAT</a></li>
					<li><a href="/vod/vod_chr_list.asp?mcode=5&grd_fg=9&cate_cd=1&grp_dom=01&scode=84">면접</a></li>
				</ul>
				<% elseIf cdate(lo_now_date) < cdate("2022-06-07 09:00") then%>
				<ul>
					<li><a href="/vod/vod_chr_list.asp?mcode=5&grd_fg=9&grp_dom=01">전체강좌</a></li>
					<li><a href="/s/gong/pass/gov_sale_2023.asp#eventWrap">일반행정직</a></li>
					<li><a href="/s/gong/pass/gov_sale_2023.asp#eventWrap">고용노동직</a></li>
					<li><a href="/s/gong/pass/edu_sale_2023.asp#eventWrap">교육행정직</a></li>
					<li><a href="/s/gong/pass/gov_sale_2023.asp#eventWrap">선거행정직</a></li>
					<li><a href="/s/gong/pass/sale_2023.asp#eventWrap">직업상담직</a></li>
					<li><a href="/s/gong/pass/security_sale_2023.asp#eventWrap">교정직</a></li>
					<li><a href="/s/gong/pass/security_sale_2023.asp#eventWrap">보호직</a></li>
					<li><a href="/s/gong/pass/security_sale_2023.asp#eventWrap">검찰직</a></li>
					<li><a href="/s/gong/pass/security_sale_2023.asp#eventWrap">마약수사직</a></li>
					
					<li><a href="/s/gong/pass/security_sale_2023.asp#eventWrap">출입국관리직</a></li>
					<li><a href="/s/gong/pass/security_sale_2023.asp#eventWrap">철도경찰직</a></li>
					<li><a href="/s/gong/pass/tax_sale_2023.asp#eventWrap">세무직</a></li>
					<li><a href="/s/gong/pass/tax_sale_2023.asp#eventWrap">관세직</a></li>
					<li><a href="/s/gong/pass/welfare_sale_2023.asp#eventWrap">사회복지직</a></li>
					<li><a href="/s/gong/pass/sale_2023.asp#eventWrap ">외무영사직 <%if cdate(lo_now_date) < cdate("2022-06-15") then%><img src="<%=img_main%>/common/ic_new.gif" alt="New"><% end if %></a></li>
					<li><a href="/s/gong/pass/court_sale_2023.asp#eventWrap">법원직</a></li>
					<li><a href="/s/gong/pass/tech_sale_2023.asp#eventWrap">전산직</a></li>
					<li><a href="/s/gong/pass/engi_sale_2023.asp#eventWrap">토목직</a></li>
					<li><a href="<%=sobang_main %>" target="_blank">소방공무원</a></li>
					<li><a href="<%=army_main %>" target="_blank">군무원</a></li>
					<li><a href="/s/gong/pass/sale_2023.asp#eventWrap">PSAT</a></li>
					<li><a href="/vod/vod_chr_list.asp?mcode=5&grd_fg=9&cate_cd=1&grp_dom=01&scode=84">면접</a></li>
				</ul>
				<% else %>
				<ul>
					<li><a href="/vod/vod_chr_list.asp?mcode=5&grd_fg=9&grp_dom=01">전체강좌</a></li>
					<li><a href="/s/gong/pass/sale_2023.asp?tab_num=2">일반행정직</a></li>
					<li><a href="/s/gong/pass/sale_2023.asp?tab_num=2">고용노동직</a></li>
					<li><a href="/s/gong/pass/sale_2023.asp?tab_num=4">교육행정직</a></li>
					<li><a href="/s/gong/pass/sale_2023.asp?tab_num=2">선거행정직</a></li>
					<li><a href="/s/gong/pass/sale_2023.asp?tab_num=1">직업상담직</a></li>
					<li><a href="/s/gong/pass/sale_2023.asp?tab_num=6">교정직</a></li>
					<li><a href="/s/gong/pass/sale_2023.asp?tab_num=6">보호직</a></li>
					<li><a href="/s/gong/pass/sale_2023.asp?tab_num=6">검찰직</a></li>
					<li><a href="/s/gong/pass/sale_2023.asp?tab_num=6">마약수사직</a></li>
					
					<li><a href="/s/gong/pass/sale_2023.asp?tab_num=6">출입국관리직</a></li>
					<li><a href="/s/gong/pass/sale_2023.asp?tab_num=6">철도경찰직</a></li>
					<li><a href="/s/gong/pass/sale_2023.asp?tab_num=3">세무직</a></li>
					<li><a href="/s/gong/pass/sale_2023.asp?tab_num=3">관세직</a></li>
					<li><a href="/s/gong/pass/sale_2023.asp?tab_num=5">사회복지직</a></li>
					<li><a href="/s/gong/pass/sale_2023.asp?tab_num=1">외무영사직 <%if cdate(lo_now_date) < cdate("2022-06-15") then%><img src="<%=img_main%>/common/ic_new.gif" alt="New"><% end if %></a></li>
					<li><a href="/s/gong/pass/sale_2023.asp?tab_num=7">법원직</a></li>

					<% If cdate(lo_now_date) < cdate("2022-06-21 09:00") then%>
					<li><a href="/s/gong/pass/total_tech_sale_2023.asp?tab_num=2">전산직</a></li>
					<li><a href="/s/gong/pass/total_tech_sale_2023.asp?tab_num=1">토목직</a></li>
					<% elseIf cdate(lo_now_date) < cdate("2022-06-28 09:00") then%>
					<li><a href="/s/gong/pass/total_tech_sale_2023.asp?tab_num=3">건축직<img src="<%=img_main%>/common/ic_new.gif" alt="New"></a></li>
					<li><a href="/s/gong/pass/total_tech_sale_2023.asp?tab_num=1">토목직</a></li>
					<li><a href="javascript:alert('곧 공개됩니다.')">간호직</a></li>
					<li><a href="javascript:alert('곧 공개됩니다.')">농업직</a></li>
					<li><a href="/s/gong/pass/total_tech_sale_2023.asp?tab_num=2">전산직</a></li>
					<% elseIf cdate(lo_now_date) < cdate("2022-10-18 09:00") then%>
					<li><a href="/s/gong/pass/total_tech_sale_2023.asp?tab_num=1">건축직<img src="<%=img_main%>/common/ic_new.gif" alt="New"></a></li>
					<li><a href="/s/gong/pass/total_tech_sale_2023.asp?tab_num=2">토목직</a></li>
					<li><a href="/s/gong/pass/total_tech_sale_2023.asp?tab_num=3">간호직<img src="<%=img_main%>/common/ic_new.gif" alt="New"></a></li>
					<li><a href="/s/gong/pass/total_tech_sale_2023.asp?tab_num=4">농업직<img src="<%=img_main%>/common/ic_new.gif" alt="New"></a></li>
					<li><a href="/s/gong/pass/total_tech_sale_2023.asp?tab_num=5">전산직</a></li>
					<% elseIf cdate(lo_now_date) < cdate("2022-10-25 09:00") then%>
					<li><a href="/s/gong/pass/total_tech_sale_2023.asp?tab_num=1">건축직</a></li>
					<li><a href="/s/gong/pass/total_tech_sale_2023.asp?tab_num=2">토목직</a></li>
					<li><a href="/s/gong/pass/total_tech_sale_2023.asp?tab_num=3">간호직<img src="<%=img_main%>/common/ic_new.gif" alt="New"></a></li>
					<li><a href="/s/gong/pass/total_tech_sale_2023.asp?tab_num=4">농업직<img src="<%=img_main%>/common/ic_new.gif" alt="New"></a></li>
					<li><a href="/s/gong/pass/total_tech_sale_2023.asp?tab_num=5">전산직</a></li>
					<% else %>
					<li><a href="/s/gong/pass/total_tech_sale_2023.asp?tab_num=1">건축직</a></li>
					<li><a href="/s/gong/pass/total_tech_sale_2023.asp?tab_num=2">토목직</a></li>
					<li><a href="/s/gong/pass/total_tech_sale_2023.asp?tab_num=3">간호직</a></li>
					<li><a href="/s/gong/pass/total_tech_sale_2023.asp?tab_num=4">농업직</a></li>
					<li><a href="/s/gong/pass/total_tech_sale_2023.asp?tab_num=5">전산직</a></li>
					<% end if %>
					<li><a href="<%=sobang_main %>" target="_blank">소방공무원</a></li>
					<li><a href="<%=army_main %>" target="_blank">군무원</a></li>
					<li><a href="/s/gong/pass/sale_2023.asp?tab_num=1">PSAT</a></li>
					<li><a href="/vod/vod_chr_list.asp?mcode=5&grd_fg=9&cate_cd=1&grp_dom=01&scode=84">면접</a></li>
				</ul>
				<% end if %>
			</div>
		</div>
		<%end if %>

	</div>
	<!-- hd_utility / E -->





	<!-- 초시생 클릭 S -->

	<% if instr(1, NowUrl, "/megagong.asp" )> 0 Then %>
	<span class="new_st_mo twinkle">
		<a href="javascript:st_pop_open();">
			<img src="<%=img_main%>/m/2022/0728_bn/gong/new_st_label_mo_gong.png" alt="초시생 click!" class="on1">
			<img src="<%=img_main%>/m/2022/0728_bn/gong/new_st_label_mo_gong_on.png" alt="초시생 click!" class="on2">
		</a>
		<button type="button" class="close">닫기</button>
	</span>
	<%end if%> 

	<div class="new_st_pop" style="display:none">
		<div>
			<button type="button" class="close">
				<img src="<%=img_main%>/m/2022/0728_bn/img_button_close.png" alt="닫기" class="">
			</button>
			<h3>
				<img src="<%=img_main%>/m/2022/0728_bn/gong/st_pop_pc_tit.png" alt="공무원 준비가 처음이라면?" class="pc">
				<img src="<%=img_main%>/m/2022/0728_bn/gong/st_pop_mo_tit.png" alt="공무원 준비가 처음이라면?" class="mo">
			</h3>
			<ul>
				<% if cdate(lo_now_date) < cdate("2022-08-14") then %>
				<li>
					<a href="/s/gong/event/2022/06220083/index.asp#eventWrap">
						<img src="<%=img_main%>/m/2022/0728_bn/gong/st_pop_pc_bn1.png" alt="공무원 합격 키워드북 무료" class="pc">
						<img src="<%=img_main%>/m/2022/0728_bn/gong/st_pop_mo_bn1.png" alt="공무원 합격 키워드북 무료" class="mo">
					</a>
				</li>
				<% elseif cdate(lo_now_date) >= cdate("2022-08-16") then  %>
				<li>
					<a href="/s/gong/event/2022/06220083/index.asp#eventWrap">
						<img src="<%=img_main%>/m/2022/0816_pass/st_pop_pc_bn1.png" alt="2023 직렬별 합격 키워드북" class="pc">
						<img src="<%=img_main%>/m/2022/0816_pass/st_pop_mo_bn1.png" alt="2023 직렬별 합격 키워드북" class="mo">
					</a>
				</li>
				<% end if %>
				<li>
					<a href="/exam/basic/gong_3/index.asp#eventWrap">
						<img src="<%=img_main%>/m/2022/0728_bn/gong/st_pop_pc_bn2.png" alt="2023 합격예측 진단평가" class="pc">
						<img src="<%=img_main%>/m/2022/0728_bn/gong/st_pop_mo_bn2.png" alt="2023 합격예측 진단평가" class="mo">
					</a>
				</li>
				<li>
					<a href="/s/gong/event/2021/02020022/index.asp#eventWrap">
						<img src="<%=img_main%>/m/2022/0728_bn/gong/st_pop_pc_bn3.png" alt="메가패스 7일 무료체험" class="pc">
						<img src="<%=img_main%>/m/2022/0728_bn/gong/st_pop_mo_bn3.png" alt="메가패스 7일 무료체험" class="mo">
					</a>
				</li>
				<li>
					<a href="/s/gong/examinfo/pass_opinion/index.asp#mContent">
						<img src="<%=img_main%>/m/2022/0728_bn/gong/st_pop_pc_bn4.png" alt="메가공무원 BEST 합격수기" class="pc">
						<img src="<%=img_main%>/m/2022/0728_bn/gong/st_pop_mo_bn4.png" alt="메가공무원 BEST 합격수기" class="mo">
					</a>
				</li>
				<li>
					<a href="/s/gong/event/2022/07150109/index.asp#eventWrap">
						<img src="<%=img_main%>/m/2022/0728_bn/gong/st_pop_pc_bn5.png" alt="2023 전지적 직렬 탐구 시점" class="pc">
						<img src="<%=img_main%>/m/2022/0728_bn/gong/st_pop_mo_bn5.png" alt="2023 전지적 직렬 탐구 시점" class="mo">
					</a>
				</li>
				
				<% if cdate(lo_now_date) >= cdate("2022-09-07") then %>
				<li>
					<a href="/exam/basic/gong_4/index.asp#eventWrap">
						<img src="<%=img_main%>/m/2022/0907_examinfo/st_pop_pc_bn6.png" alt="PSAT 기초역량 진단평가" class="pc">
						<img src="<%=img_main%>/m/2022/0907_examinfo/st_pop_mo_bn6.png" alt="PSAT 기초역량 진단평가" class="mo">
					</a>
				</li>
				<% end if %>

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
		#headertop .new_st_pop {display:none;position:fixed;z-index:10;top:538px;left:50%;margin-top:-330px;margin-left:-22px;width:280px; border:1px solid #d0d0d0; background:#fff; box-sizing:border-box; padding:19px; }
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
			#headertop .new_st_pop .pc { display:none; }
			#headertop .new_st_pop .mo { display:block; width:100%; height:auto; }
			#headertop .new_st_pop { top:50%; left:50%; transform:translate(-50%, -50%); margin:0; }
		}
		@media (max-width: 768px){
			#headertop .new_st_mo {right:20px;}
			#headertop .new_st_pop .close { right:20px; width:auto; }
		}
		@media (max-width: 576px){
			#headertop .new_st_mo { bottom:65px; width: 20%; }
		}
	</style>

	<!-- // 초시생 클릭 E -->



	
	<div class="mb_rightmenu">
		<a href="/mypage/study/my_study.asp" title="노량진 학원">노량진 학원</a>
		<a href="/mypage/study/my_study.asp" title="기숙 전문관">기숙 전문관</a>
	</div>


	<!-- hd_mo_utility / S -->
	<div id="hd_MoUtility" class="hd_mo_utility">
		<div class="mo_gnb">
			<nav>
				<div class="slider">
					<%If cdate(lo_now_date) < cdate("2021-12-08") Then%>
					<div class="item"><a href="/teacher/index.asp" <% if gmenu = "1" Then %>class="on" <% End if %>  title="선생님">선생님</a></div>
					<div class="item"><a href="/vod/vod_chr_list.asp?mcode=1&grd_fg=9" <% if gmenu = "2" Then %>class="on" <% End if %> title="전체강좌">전체강좌</a></div>
					<%else %>
					<div class="item"><a href="/vod/vod_chr_list.asp?mcode=5&grd_fg=9" <% if gmenu = "2" Then %>class="on" <% End if %> title="수강신청">수강신청</a></div>
					<div class="item"><a href="/teacher/index.asp" <% if gmenu = "1" Then %>class="on" <% End if %>  title="선생님">선생님</a></div>
					<%end if %>

					<% 'If cdate(lo_now_date) < cdate("2022-04-21") then%>
					<div class="item"><a href="/book/bookshop.asp" <% if gmenu = "3" Then %>class="on" <% End if %> title="온라인서점">온라인서점</a></div>
					<%'else %>
					<!-- <div class="item"><a href="/book/v22/index.asp" <% if gmenu = "3" Then %>class="on" <% End if %> title="온라인서점">온라인서점</a></div> -->
					<%'end if %>


					<div class="item"><a href="/s/gong/examinfo/index.asp" <% if gmenu = "6" Then %>class="on" <% End if %> title="합격전략 LAB">합격전략 LAB</a></div>

					<div class="item"><a href="/help/faq/index.asp" <% if gmenu = "4" Then %>class="on" <% End if %> title="학습지원센터">학습지원센터</a></div>

					<% If cdate(lo_now_date) >= cdate("2022-10-15") and cdate(lo_now_date) < cdate("2022-10-27 14:00") then%>
					<!-- 20221015 풀서비스 -->
					<div class="item">
						<a href="/s/gong/full/20221015/index.asp" <% if gmenu = "8" Then %>class="on" <% End if %> title="합격예측 풀서비스">합격예측 풀서비스</a>
					</div>
					<!-- // 20221015 풀서비스 -->
					<% end if %>
					
					<% If cdate(lo_now_date) >= cdate("2022-10-29") and cdate(lo_now_date) < cdate("2022-11-10 14:00") then%>
					<!-- 20221029 풀서비스 -->
					<div class="item">
						<a href="/s/gong/full/20221029/index.asp" <% if gmenu = "8" Then %>class="on" <% End if %> title="합격예측 풀서비스">합격예측 풀서비스</a>
					</div>
					<!-- // 20221029 풀서비스 -->
					<% end if %>
		
					<%If CDate(lo_now_date) < CDate("2022-04-01 17:00") and cdate(lo_now_date) < cdate("2022-06-10") then%>
					<%If cdate(lo_now_date) < cdate("2021-12-20") Then%>
					<div class="item"><a href="/s/gong/mockexam/2022_1/index.asp#eventWrap" <% if gmenu = "7" Then %>class="on" <% End if %> title="모의고사">모의고사</a></div>
					<%elseIf cdate(lo_now_date) < cdate("2022-01-24") Then%>
					<div class="item"><a href="/s/gong/mockexam/2022_2/index.asp#eventWrap" <% if gmenu = "7" Then %>class="on" <% End if %> title="모의고사">모의고사</a></div>
					<%elseIf cdate(lo_now_date) < cdate("2022-02-21") Then%>
					<div class="item"><a href="/s/gong/mockexam/2022_3/index.asp#eventWrap" <% if gmenu = "7" Then %>class="on" <% End if %> title="모의고사">모의고사</a></div>
					<%else%>
					<div class="item"><a href="/s/gong/mockexam/2022_4/index.asp#eventWrap" <% if gmenu = "7" Then %>class="on" <% End if %> title="모의고사">모의고사</a></div>
					<% end if %>
					<% end if %>
					
					<% if cdate(lo_now_date) >= cdate("2022-04-20") and cdate(lo_now_date) < cdate("2022-06-10") then %>
					<div class="item"><a href="/s/gong/event/2022/04200045/index.asp#eventWrap" <% if gmenu = "7" Then %>class="on" <% End if %> title="모의고사">모의고사</a></div>
					<% end if %>
				</div>
			</nav>
		</div>

	</div>
		
	<script type="text/javascript">
		var seriesmenu = $('.gnb_series');
		$(".series").click(function (e) {
			e.preventDefault();
			if(seriesmenu.hasClass('on')){
				seriesmenu.toggleClass('on').slideUp(150);
				$(this).toggleClass('on');
				//$('.gnb_bgArea .bgArea').slideUp(150);
				
			}else{
				seriesmenu.toggleClass('on').slideDown(150);
				$(this).toggleClass('on');
				//$('.gnb_bgArea .bgArea').slideDown(150);
			}
		});
		
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
		<%if gmenu = "3" or gmenu = "4" or gmenu = "6" or gmenu = "8"  then %>
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
							<!-- 합격예측풀서비스 -->
							<% If cdate(lo_now_date) >= cdate("2022-10-15") and cdate(lo_now_date) < cdate("2022-10-27 14:00") then%>
							<li class="hd_mock">
								<a href="/s/gong/full/20221015/index.asp" title="합격예측 풀서비스">합격예측 풀서비스</a>
							</li>
							<style>
								.mobile_nav>li.hd_mock {background: linear-gradient(135deg, rgba(2, 191, 153) 0%, rgba(0, 120, 222) 100%);}
								#headertop .hd_wrp.v21_2 .hd_utility .mnu_list.online.sub.n0927 > li > a {font-size:14.5px;padding:0 14px;}/* 풀서비스 서브 */
							</style>
							<% end if %>

							<% If cdate(lo_now_date) >= cdate("2022-10-29") and cdate(lo_now_date) < cdate("2022-11-10 14:00") then%>
							<li class="hd_mock">
								<a href="/s/gong/full/20221029/index.asp" title="합격예측 풀서비스">합격예측 풀서비스</a>
							</li>
							<style>
								.mobile_nav>li.hd_mock {background: linear-gradient(135deg, rgba(2, 191, 153) 0%, rgba(0, 120, 222) 100%);}
								#headertop .hd_wrp.v21_2 .hd_utility .mnu_list.online.sub.n0927 > li > a {font-size:14.5px;padding:0 14px;}/* 풀서비스 서브 */
							</style>
							<% end if %>

							<!-- //합격예측풀서비스 -->
						    <li class="more">
								<a href="javascript:;" title="메가공무원">메가공무원</a>
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

											<%if hcode <> "ngbr" then%>
											<dd><a href="<%=ngbr_main %>" title="메가공무원 스파르타">메가공무원 스파르타</a></dd>
											<%end if%>
											<dd><a href="https://www.megajob.co.kr/megajob.asp " title="메가공기업">메가공기업 <img src="<%=img_main%>/common/ic_new.gif" alt="New" style="vertical-align:middle;margin:-3px 0 0 3px;" /></a></dd>
										</dl>
									</li>
								</ul>
							</li>
							
							<%If cdate(lo_now_date) < cdate("2021-12-08") Then%>
							<li><a href="/teacher/index.asp" title="선생님">선생님</a></li>
		                    <li><a href="/vod/vod_chr_list.asp?mcode=1" title="전체강좌">전체강좌  <%If cdate(lo_now_date) < cdate("2020-04-06") Then%><img src="<%=img_main%>/m/2020/0214_chrbnr/hd_bubble.png" alt="전 강좌 30% 할인" style="margin-left:10px;vertical-align:middle"/><%End if%></a></li>
		                    <%else %>
							<li><a href="/vod/vod_chr_list.asp?mcode=5&grd_fg=9" title="수강신청">수강신청  <%If cdate(lo_now_date) < cdate("2020-04-06") Then%><img src="<%=img_main%>/m/2020/0214_chrbnr/hd_bubble.png" alt="전 강좌 30% 할인" style="margin-left:10px;vertical-align:middle"/><%End if%></a></li>
							<li><a href="/teacher/index.asp" title="선생님">선생님</a></li>
							<%end if %>
							

							<% 'If cdate(lo_now_date) < cdate("2022-04-21") then%>
							<li><a href="/book/bookshop.asp" title="온라인서점">온라인서점</a></li>
							<%'else %>
							<!-- <li><a href="/book/v22/index.asp" title="온라인서점">온라인서점</a></li> -->
							<%'end if %>
							
							<li><a href="/s/gong/examinfo/index.asp" title="합격전략 LAB">합격전략 LAB</a></li>
						
							<li><a href="/mypage/index.asp" title="마이페이지">마이페이지</a></li>
							<li><a href="/mypage/study/my_study.asp" title="내 강의실">내 강의실</a></li>
							<li><a href="/help/faq/index.asp" title="학습지원센터">학습지원센터</a></li>
							<% if cdate(lo_now_date) >= cdate("2022-04-20") and cdate(lo_now_date) < cdate("2022-06-10") then %>
							<li>
								<% if cdate(lo_now_date) < cdate("2022-05-21") then %>
								<i class="d0420"><img src="<%=img_main%>/m/2022/0420_mock/gnb_bubble_mo.gif" alt="지방직 신청 중"></i>
								<% elseif cdate(lo_now_date) >= cdate("2022-05-21 10:00") and cdate(lo_now_date) < cdate("2022-05-23") then %>
								<i class="d0420"><img src="<%=img_main%>/m/2022/0420_mock/gnb_bubble2_mo.gif" alt="지방직 응시 중"></i>
								<% end if %>
								<a href="/s/gong/event/2022/04200045/index.asp#eventWrap" title="모의고사">모의고사</a>
							</li>
							<% end if %>

							<%If CDate(lo_now_date) < CDate("2022-04-01 17:00") then%>
							<%If CDate(lo_now_date) >= CDate("2021-11-17") then%>
							<li>
								<%If CDate(lo_now_date) < CDate("2021-12-20") then%>
								<a href="/s/gong/mockexam/2022_1/index.asp#eventWrap" title="모의고사">모의고사</a>
								<%elseIf CDate(lo_now_date) < CDate("2022-01-24") then%>
								<a href="/s/gong/mockexam/2022_2/index.asp#eventWrap" title="모의고사">모의고사</a>
								<%elseIf CDate(lo_now_date) < CDate("2022-02-21") then%>
								<a href="/s/gong/mockexam/2022_3/index.asp#eventWrap" title="모의고사">모의고사</a>
								<% else %>
								<a href="/s/gong/mockexam/2022_4/index.asp#eventWrap" title="모의고사">모의고사</a>
								<% end if %>
								<span class="mock">
									<%If CDate(lo_now_date) < CDate("2021-12-18") then%>
									<img src="<%=img_main%>/m/2021/1117_exam/mo_header_mock1_1.png" alt="1회 신청 중" class="on1">
									<img src="<%=img_main%>/m/2021/1117_exam/mo_header_mock1_2.png" alt="1회 신청 중" class="on2">
									<%elseIf CDate(lo_now_date) >= CDate("2021-12-18 10:00") and CDate(lo_now_date) < CDate("2021-12-20") then%>
									<img src="<%=img_main%>/m/2021/1117_exam/mo_header_mock2_1.png" alt="1회 응시 중" class="on1">
									<img src="<%=img_main%>/m/2021/1117_exam/mo_header_mock2_2.png" alt="1회 응시 중" class="on2">
									<%elseIf CDate(lo_now_date) >= CDate("2021-12-20") and CDate(lo_now_date) < CDate("2022-01-22") then%>
									<img src="<%=img_main%>/m/2021/1117_exam/1218/mo_header_mock1_1_v2.png" alt="2회 신청 중" class="on1">
									<img src="<%=img_main%>/m/2021/1117_exam/1218/mo_header_mock1_2_v2.png" alt="2회 신청 중" class="on2">
									<%elseIf CDate(lo_now_date) >= CDate("2022-01-22 10:00") and CDate(lo_now_date) < CDate("2022-01-24") then%>
									<img src="<%=img_main%>/m/2021/1117_exam/1218/mo_header_mock2_1_v2.png" alt="1회 응시 중" class="on1">
									<img src="<%=img_main%>/m/2021/1117_exam/1218/mo_header_mock2_2_v2.png" alt="1회 응시 중" class="on2">
									<%elseIf CDate(lo_now_date) >= CDate("2022-01-24 00:00") and CDate(lo_now_date) < CDate("2022-02-19") then%>
									<img src="<%=img_main%>/m/2021/1117_exam/0121/mo_header_mock1_1_v3.png" alt="3회 신청 중" class="on1">
									<img src="<%=img_main%>/m/2021/1117_exam/0121/mo_header_mock1_2_v3.png" alt="3회 신청 중" class="on2">
									<%elseIf CDate(lo_now_date) >= CDate("2022-02-19 10:00") and CDate(lo_now_date) < CDate("2022-02-21") then%>
									<img src="<%=img_main%>/m/2021/1117_exam/0121/mo_header_mock2_1_v3.png" alt="3회 응시 중" class="on1">
									<img src="<%=img_main%>/m/2021/1117_exam/0121/mo_header_mock2_2_v3.png" alt="3회 응시 중" class="on2">
									<%elseIf CDate(lo_now_date) >= CDate("2022-02-21 00:00") and CDate(lo_now_date) < CDate("2022-03-19") then%>
									<img src="<%=img_main%>/m/2021/1117_exam/0219/mo_header_mock1_1_v4.png" alt="4회 신청 중" class="on1">
									<img src="<%=img_main%>/m/2021/1117_exam/0219/mo_header_mock1_2_v4.png" alt="4회 신청 중" class="on2">
									<%elseIf CDate(lo_now_date) >= CDate("2022-03-19 10:00") and CDate(lo_now_date) < CDate("2022-03-21") then%>
									<img src="<%=img_main%>/m/2021/1117_exam/0219/mo_header_mock2_1_v4.png" alt="4회 응시 중" class="on1">
									<img src="<%=img_main%>/m/2021/1117_exam/0219/mo_header_mock2_2_v4.png" alt="4회 응시 중" class="on2">
									<% else %>
									<% end if %>
								</span>
							</li>
							<% end if %>
							<% end if %>

						</ul>
					</nav>
				</div>
				<div class="mbmenu_bottom <%If cdate(lo_now_date) >= cdate("2021-08-24") Then%>left_bnr<%End if%>">
					<div class="goodnote_wrp">
						<%If cdate(lo_now_date) < cdate("2022-03-10 18:00") Then%>
						<a href="/event/2021/12160013/index.asp#eventWrap" title="메가문구 바로가기"><strong>메가문구</strong> 바로가기<i></i></a>
						<%elseIf cdate(lo_now_date) < cdate("2022-08-23") Then%>
						<a href="/s/gong/event/2022/03100029/index.asp#eventWrap" title="메가문구 바로가기"><strong>메가문구</strong> 바로가기<i></i></a>
						<%else%>
						<a href="/s/gong/event/2022/08230131/index.asp#eventWrap" title="메가문구 바로가기"><strong>메가문구</strong> 바로가기<i></i></a>
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


	
	<!--풀서비스 상단우측배너-->
	<% If CDate(lo_now_date) >= CDate("2022-10-18") and CDate(lo_now_date) < CDate("2022-11-10 14:00") then%>
	<% if instr(1, NowUrl, "/megagong.asp") = 1 Then %>
	<% If fncRequestCookie("main_top_bn_fullsrv") = "" then %>

	<% If CDate(lo_now_date) >= CDate("2022-10-18") and CDate(lo_now_date) < CDate("2022-10-27 14:00") then%>
	<div class="main_top_bn_fullsrv">
		<ul class="close">
			<li class="day"><a href="javascript:brfDay_main_top_bn_fullsrv();">오늘 하루 보지 않기</a></li>
			<li><a href="javascript:brfOff_main_top_bn_fullsrv();"><img src="<%=img_main%>/m/2022/0811_basicexam/btn_close.png" alt="닫기"/></a></li>
		</ul>
		<div>
			<a href="/s/gong/full/20221015/index.asp#eventWrap">
				<img src="<%=img_main%>/m/2022/1015_fullsrv/main_bnr6.png" alt="10/15 국가직 7급 합격예측 풀서비스">
			</a>
		</div>
	</div>  
	<% end if %>

	<% If CDate(lo_now_date) >= CDate("2022-11-03") and CDate(lo_now_date) < CDate("2022-11-10 14:00") then%>
	<div class="main_top_bn_fullsrv noBnr">
		<ul class="close">
			<li class="day"><a href="javascript:brfDay_main_top_bn_fullsrv();">오늘 하루 보지 않기</a></li>
			<li><a href="javascript:brfOff_main_top_bn_fullsrv();"><img src="<%=img_main%>/m/2022/0811_basicexam/btn_close.png" alt="닫기"/></a></li>
		</ul>

		<div>
			<a href="/s/gong/full/20221029/index.asp#eventWrap">
				<img src="<%=img_main%>/m/2022/1029_fullsrv/main_header_bnr.png" alt="10/29 지방직 7급 합격예측 풀서비스">
			</a>
		</div>
	</div>  
	<% end if %>
	<style>
		.main_top_bn_fullsrv{position: absolute;top: 125px;left: 50%;margin-left: 340px;z-index: 10;}
		.main_top_bn_fullsrv.noBnr{top: 56px;}
		.main_top_bn_fullsrv .close{overflow:hidden; text-align:right; font-size:0;}
		.main_top_bn_fullsrv .close li{display:inline-block; vertical-align:top; margin-left:3px;}
		.main_top_bn_fullsrv .close li.day{}
		.main_top_bn_fullsrv .close li.day a{display: block;border: 1px solid #d0d0d0;font-size: 11px;color: #a5a5a5;height: 18px;line-height: 18px;padding: 0 7px;}

		@media (max-width:1200px){
			.main_top_bn_fullsrv { display:none !important; }
		}
	</style>
	<script type="text/javascript">
		function brfDay_main_top_bn_fullsrv(){
			setCookie("main_top_bn_fullsrv", "close", 1);
			if ($(".main_top_bn_fullsrv").css("display") == "block") {
				$(".main_top_bn_fullsrv").hide();
			}
		}
		function brfOff_main_top_bn_fullsrv(){
			$(".main_top_bn_fullsrv").hide();
		}
	</script>
	<% end if %>
	<% End if %>
	<% End if %>
	<!--// 풀서비스 상단우측배너-->

	
                
    <!-- 메가패스 20% 할인 프로모션 배너-->
	<% If CDate(lo_now_date) >= CDate("2022-03-22") and CDate(lo_now_date) < CDate("2022-04-05 09:00") then%>
    <% If fncRequestCookie("mega_pop") = "" then %>
        <!--공무원-->
		<div class="mega_pop">
			<a href="/s/gong/pass/sale_2022.asp#eventWrap" target="_blank">
				<% If CDate(lo_now_date) < CDate("2022-03-29 09:00") then%>
				<img src="<%=img_main%>/m/2022/0322_pass/gong/bn_right.png" alt="공무원 메가패스" usemap="#mega_pop" />
				<% else %>
				<img src="<%=img_main%>/m/2022/0322_pass/gong/bn_right2.png" alt="공무원 메가패스" usemap="#mega_pop" />
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
					location.href.match('/s/gong/examinfo/index.asp') ||
					location.href.match('/help/faq/') ||
					location.href.match('/teacher/home.asp') ||
					(location.href.match('/vod/vod_chr_list.asp') && location.href.match('mcode=5&grd_fg=9'))
					//location.href.match('&grd_fg=9')
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

    <%end if%>
	<% end if %>
    <!--// 메가패스 20% 할인 프로모션 배너-->