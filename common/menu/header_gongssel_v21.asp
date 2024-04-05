	<%If cdate(lo_now_date) < cdate("2022-08-01") then%>
	<% else %>
	<style type="text/css">
		#headertop .gnb_bgArea .bgArea{height: 480px !important;}
	</style>
	<% end if %>

	<%
		is_aca_interview_new = false
		strSql = ""
		strsql = strsql & "	SELECT TOP 1 BOS_IDX "
		strsql = strsql & "	FROM MS_BRD_ON_SL SL WITH(NOLOCK) "
		strsql = strsql & "	WHERE BOS_RN = 0 AND BOS_BID = 'ACA_INTERVIEW' AND BOS_EXTRA2='0' AND BOS_SITE_SHOW IN ('all','"&h_dcd&"') "
		strsql = strsql & "	AND DATEDIFF(D, BOS_WRITE_DATE, GETDATE()) <= 7 "
		Set Rs = DBExec(strSql,"study")
		If Not RS.EOF Then
			is_aca_interview_new = true
		End If
		Call DBClose(Rs)
	%>

	<%
		'N아이콘 노출 정책 : 오픈일 포함 14일 노출 / 이후 미노출 처리
		Sub SetNewIcon(sdate)
			If Not IsDate(sdate) then Exit Sub
			If Datediff("d", CDate(sdate), CDate(lo_now_date)) < 14 Then Response.Write "<img src="""&img_main&"/common/ic_new.gif"" style=""vertical-align:middle; margin-left:3px;"" />"
		End Sub

		Sub SetNewIcon_m(mm, sdate) 'mm달 기준
			If Not IsDate(sdate) then Exit Sub
			If Not isnumeric(mm) then Exit Sub
			if CDate(lo_now_date) < CDate(dateadd("m",mm,sdate)) Then Response.Write "<img src="""&img_main&"/common/ic_new.gif"" style=""vertical-align:middle; margin-left:3px;"" />"
		End Sub
	%>
	
	<div id="header_wrap" class="hd_wrp">
	<!-- 추후 gnb 정렬시 class명 변경-->
	<!-- <div id="header_wrap" class="hd_wrp v21_2 main"> -->
	<!-- //추후 gnb 정렬시 class명 변경-->
		
		<!-- hd_left_bnr / S -->
		<div class="hd_left_bnr n1014 <% If cdate(lo_now_date) >= cdate("2021-10-28 15:00") then%>n1028<% end if %>">
			<div>
				<div class="hd_slider">
					<% if cdate(lo_now_date) >= cdate("2022-06-23")  and cdate(lo_now_date) < cdate("2022-07-04 15:00") then%>
					<div>
						<a href="<%=url_main%>/s/gong/full/20220618/index.asp#eventWrap" title="6/18 지방직 9급 합격예측 풀서비스" target="_blank">
							<img src="<%=img_main%>/m/2022/0618_fullserv/header_bnr.jpg" class="" style="cursor:pointer;" alt="6/18 지방직 9급 합격예측 풀서비스">
						</a>
					</div>
					<% end if %>
					<% If cdate(lo_now_date) >= cdate("2022-04-29 11:00") and cdate(lo_now_date) < cdate("2022-06-07") then%>
					<div>
						<a href="/c/gongssel/schedule/2021/am/am_en_12_9.asp">
							<img src="<%=img_main%>/m/2022/0328_gongssel/sho_bn_0429.jpg" class="" style="cursor:pointer;" alt="영어 기초 단기완성 6월 영어집중반 모집 중">
						</a>
					</div>
					<% end if %>
					
					<% If cdate(lo_now_date) >= cdate("2022-05-09") then%>
					<div>
						<a href="/c/gongssel/help/notice/view.asp?idx=3917&cate=01&searchkey=&searchword=&page=1">
							<img src="<%=img_main%>/m/2022/0509_gongssel/sho_bn.png" class="" style="cursor:pointer;" alt="이달의 테마특강">
						</a>
					</div>
					<% end if %>

					<% If cdate(lo_now_date) >= cdate("2022-09-29") then%>
					<div>
						<a href="/c/gongssel/event/2022/10310009/index.asp#eventWrap" target="_blank">
							<img src="<%=img_main%>/m/2022/0929_gongssel/sho_bn1.png" class="" style="cursor:pointer;" alt="2023 9/7급 합격전략 설명회">
						</a>
					</div>
					<% end if %>

					<% If cdate(lo_now_date) >= cdate("2022-09-29") then%>
					<div>
						<a href="/c/gongssel/event/2021/10050011/index.asp#eventWrap" target="_blank">
							<img src="<%=img_main%>/m/2022/0929_gongssel/sho_bn2.png" class="" style="cursor:pointer;" alt="2023 외무영사직 합격전략 설명회">
						</a>
					</div>
					<% end if %>

					
				<% If cdate(lo_now_date) >= cdate("2022-05-30 00:00") and cdate(lo_now_date) < cdate("2022-06-25 17:00") then%>
				<div>
					<a href="/s/gong/event/2022/05300062/index.asp#eventWrap" target="_blank">
						<img src="<%=img_main%>/m/2022/0530_online/main_sky_ban.png" class="" style="cursor:pointer;" alt="2022 공무원 설명회">
					</a>
				</div>
				<% end if %>

					<% If cdate(lo_now_date) < cdate("2022-05-09") then%>
					<div>
						<a href="/c/gongssel/event/2021/10050011/index.asp#eventWrap">
							<img src="<%=img_main%>/m/2022/0328_gongssel/sho_bn.jpg" class="" style="cursor:pointer;" alt="9ㆍ7급 2023 합격전략 설명회">
						</a>
					</div>
					<% end if %>

					<% If cdate(lo_now_date) < cdate("2022-04-19 15:00") then%>
					<div>
						<a href="https://www.megagong.net/s/gong/full/20220402/index.asp#eventWrap" target="_blank">
							<img src="<%=img_main%>/m/2022/0402_fullserv/main_sky_ban.jpg" class="" style="cursor:pointer;" alt="합격예측 풀서비스">
						</a>
					</div>
					<% end if %>
				</div>
			</div>
		</div>
		<style>
			#headertop .hd_wrp .hd_left_bnr{display:block;height: auto;top:0;margin-top:25px;width:218px;height: auto;}
			#headertop .hd_wrp .hd_left_bnr >div{padding: 0;}
			#headertop .hd_wrp .hd_left_bnr.n1014 {margin-left: -519px;}
			#headertop .hd_wrp .hd_left_bnr.n1014 .hd_slider .slick-arrow {position:absolute;top:50%;z-index:1;transform:translateY(-50%);display:block!important;font-size:0;}
			#headertop .hd_wrp .hd_left_bnr.n1014 .hd_slider .slick-prev {left:-21px;width:7px;height:10px;background:url(https://design.megagong.net/image/m/2021/0105_planner/icon_L.png) no-repeat center;}
			#headertop .hd_wrp .hd_left_bnr.n1014 .hd_slider .slick-next {right:-21px;width:7px;height:10px;background:url(https://design.megagong.net/image/m/2021/0105_planner/icon_R.png) no-repeat center;}
			
			#headertop .hd_wrp .hd_left_bnr.n1028 {margin-left: -540px;}

			@media (max-width: 1200px){
				#headertop .hd_wrp .hd_left_bnr{display: none;}
			}
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
		<!-- hd_left_bnr / E -->

		<h1 class="hd_logo center">
			<a href="<%=gongssel_main %>" class="gongssel" title="메가공무원학원 메인페이지 바로가기"><img src="<%=img_main%>/c/gongssel/logo_nk.png" alt="메가스터디가 만든 공무원학원 메가공무원학원"></a>
		</h1>

		<!-- hd_right_bnr / S -->
		<%If cdate(lo_now_date) >= cdate("2022-01-17") and cdate(lo_now_date) < cdate("2022-02-08") then%>
		<div class="hd_right_bnr">
			<div>
				<div class="hd_slider">
					<div>
						<a href="/c/gongssel/schedule/2021/am/am_en_12_9.asp" title="2022 합격은 기본 워밍업부터! 2월 영어집중반 모집 중">
							<% if Cdate(lo_now_date) < Cdate("2022-01-31") then %>
							<img src="<%=img_main%>/m/2022/0117_gongssel/main_sky_ban_right.png" class=""  alt="2022 합격은 기본 워밍업부터! 2월 영어집중반 모집 중">
							<% else %>
							<img src="<%=img_main%>/m/2022/0117_gongssel/main_sky_ban_right_220131.png" class=""  alt="2022 합격은 기본 워밍업부터! 2월 영어집중반 모집 중">
							<% end if %>
						</a>
					</div>
				</div>
			</div>
		</div>
		
		<style>
			#headertop .hd_wrp .hd_right_bnr{display:block;height: auto;top:0;margin-top:25px;width:238px;height: auto;}

			@media (max-width: 1200px){
				#headertop .hd_wrp .hd_right_bnr{display: none;}
			}
		</style>
		<%end if%>
		<!-- hd_right_bnr / E -->

		

		<!-- 형법/형소법 신규입성 배너 S -->
		<%If hcode = "gongssel" and instr(1, NowUrl, "/megagong.asp") > 0 Then %>
			<!-- <ul class="bn_container <%if cdate(lo_now_date) >= cdate("2022-04-23 15:00") then%> v0423<% end if %> <%if cdate(lo_now_date) >= cdate("2022-04-29 14:00") then%> v0429<% end if %>"> -->

			<% if cdate(lo_now_date) >= cdate("2022-08-22") and cdate(lo_now_date) < cdate("2022-09-12") then %>
			<div id="bncircle_ch" class="bncircle_ch">
				<a href="/c/gongssel/help/notice/view.asp?idx=3896&cate=01&searchkey=&searchword=&page=1">
					<img src="<%=img_main%>/m/2022/0822_chuseok/gongssel_bnr_round.png" alt="2022 추석특강">
				</a>
				<button onclick="clear_bncircle_ch();" class="close">
					<img src="<%=img_main%>/m/2021/1206_gongssel/main_bnr_close.png" alt="팝업 닫기"/>
				</button>
			</div>
			<style>
				.bncircle_ch { position:absolute; top:0; left:50%; margin:200px 0 0 560px; z-index: 1; width: 170px; }
				.bncircle_ch .close { right:0; top: -10px; position: absolute; }

				@media (max-width: 1200px){
					.bncircle_ch{display: none;}
				}
			</style>
			<script>
				function clear_bncircle_ch() {
					if ($("#bncircle_ch").css("display") == "block") {
						$("#bncircle_ch").hide();
					}
				}
			</script>
			<%end if%>

			
			<%if cdate(lo_now_date) >= cdate("2022-08-22") and cdate(lo_now_date) < cdate("2022-08-31") then%>
			<div id="bncircle_tech" class="bncircle_tech">
				<img src="<%=img_main%>/m/2022/0704_bnr/gongssel_bnr.png" alt="메가공무원학원 기술직 OPEN">
				<a href="/c/gongssel/help/notice/view.asp?idx=3771" class="lnk1" title="토목직 자세히 보기 >">토목직 자세히 보기</a>
				<a href="/c/gongssel/help/notice/view.asp?idx=3770" class="lnk2" title="건축직 자세히 보기 >">건축직 자세히 보기</a>
				<a href="/c/gongssel/help/notice/view.asp?idx=3772" class="lnk3" title="간호직 자세히 보기 >">간호직 자세히 보기</a>
				<button onclick="clear_bncircle_tech();" class="close"><img src="<%=img_main%>/m/2021/1206_gongssel/main_bnr_close.png" alt="팝업 닫기"/></button>
			</div>
			<style>
				.bncircle_ch { position:absolute; top:0; left:50%; margin:200px 0 0 560px; z-index: 1; width: 170px; }
				.bncircle_ch .close { right:0; top: -10px; position: absolute; }

				.bncircle_tech{position: absolute;top: 0;left: 50%;margin: 260px 0 0 560px;z-index: 1;width: 170px;}
				.bncircle_tech a{position: absolute;left: 0;width: 100%;height: 62px;font-size: 0;background: #000;opacity: 0;}
				.bncircle_tech a.lnk1{top: 65px;}
				.bncircle_tech a.lnk2{top: 129px;}
				.bncircle_tech a.lnk3{top: 193px;}
				.bncircle_tech .close{right: -34px;top: 44px;position: absolute;}

				/* 220704 */
				.bncircle_tech.d0704 a{height: 40px; width: 85%; left: 50%; transform: translateX(-50%);}
				.bncircle_tech.d0704 a.lnk1{top: 124px;}
				.bncircle_tech.d0704 a.lnk2{top: 169px;}
				.bncircle_tech.d0704 a.lnk3{top: 214px;}
				.bncircle_tech .close {top: 0;}

				/*220822*/
				.bncircle_tech { margin-top:390px; }

				@media (max-width: 1200px){
					.bncircle_ch{display: none;}
					.bncircle_tech{display:none;}
				}
			</style>
			<script>
				function clear_bncircle_ch() {
					if ($("#bncircle_ch").css("display") == "block") {
						$("#bncircle_ch").hide();
					}
				}
				function clear_bncircle_tech() {
					if ($("#bncircle_tech").css("display") == "block") {
						$("#bncircle_tech").hide();
					}
				}
			</script>
			<%end if%>


			<!-- 9 월 연합모의고사 배너 S -->
			<% if cdate(lo_now_date) >= cdate("2022-08-31") and cdate(lo_now_date) < cdate("2022-09-24 10:00") then%>
				<div class="bncircle_totalmo">
					<img src="<%=img_main%>/m/2022/0831_mainbnr/gongssel_bnr.jpg" alt="메가공무원 전국모의고사">
					<a href="https://gongssel.megagong.net/c/gongssel/help/notice/view.asp?idx=3919&cate=01&searchkey=&searchword=&page=1" title="전국모의고사 자세히보기" target="_blank">전국모의고사 자세히보기</a>
					</a>
				</div>
			<style>
				.bncircle_totalmo {position: absolute; top: 0; left: 50%; margin: 690px 0 0 560px; z-index: 1; width: 150px;}
				.bncircle_totalmo a{position: absolute;top: 204px;left: 14px;width: 122px;height: 31px;font-size: 0;background: #000;opacity: 0;}
				@media (max-width: 1200px){
					.bncircle_totalmo{display: none;}
				}
			</style>
			<%end if%>
			<!-- 9 월 연합모의고사 배너 E -->

			<div id="bncircle_final" class="bncircle_final">
				<!-- 외무영사직 플로팅 배너 S -->
				<% if cdate(lo_now_date) >= cdate("2022-08-31") and cdate(lo_now_date) < cdate("2022-09-30") then%>
				<div class="item">
					<a href="/c/gongssel/help/notice/view.asp?idx=3955&cate=01&searchkey=&searchword=&page=1" title="파이널 외무영사직 대비">
						<img src="<%=img_main%>/m/2022/0831_mainbnr/gongssel_bnr_round.png" alt="파이널 외무영사직 대비">
					</a>
					<button class="close">
						<img src="<%=img_main%>/m/2021/1206_gongssel/main_bnr_close.png" alt="팝업 닫기"/>
					</button>
				</div>
				<%end if%>
				<!-- 외무영사직 플로팅 배너 E -->

				<!-- 국회직 9급 플로팅 배너 S -->
				<% if cdate(lo_now_date) >= cdate("2022-09-27") and cdate(lo_now_date) < cdate("2022-10-13") then%>
				<div class="item">
					<a href="/c/gongssel/help/notice/view.asp?idx=4009&cate=01&searchkey=&searchword=&page=1" title="메가면접센터 국회직 9급 대비">
						<img src="<%=img_main%>/m/2022/0831_mainbnr/gongssel_bnr_round2.png" alt="메가면접센터 국회직 9급 대비">
					</a>
					<button class="close">
						<img src="<%=img_main%>/m/2021/1206_gongssel/main_bnr_close.png" alt="팝업 닫기"/>
					</button>
				</div>
				<%end if%>
				<!-- 국회직 9급 플로팅 배너 E -->
				<!-- 10월 전국 모의고사 플로팅 배너 S -->
				<% if cdate(lo_now_date) >= cdate("2022-09-30") and cdate(lo_now_date) < cdate("2022-10-29 10:00") then%>
				<div class="item">
					<a href="/c/gongssel/help/notice/view.asp?idx=3998" title="2023 대비 메가공무원 전국모의고사" target="_blank">
						<!-- <img src="<%=img_main%>/m/2022/1004_exam/gongssel_bnr.png" alt="2023 대비 메가공무원 전국모의고사"> -->
						<img src="<%=img_main%>/m/2022/1017_gongssel/gongssel_bnr1.png" alt="2023 대비 메가공무원 전국모의고사">
					</a>
					<button class="close exam_close">
						<img src="<%=img_main%>/m/2021/1206_gongssel/main_bnr_close.png" alt="팝업 닫기"/>
					</button>
				</div>
				<style>
					.bncircle_final .close.exam_close {top: -30px;}
					.bncircle_final .item:nth-child(2) {margin-top: 40px;}
				</style>
				<%end if%>
				<!-- 10월 전국 모의고사 플로팅 배너 E -->


				<!-- 11월 전국 모의고사 플로팅 배너 S -->
				<% if cdate(lo_now_date) >= cdate("2022-11-01") and cdate(lo_now_date) < cdate("2022-11-26 10:00") then%>
				<div class="item <%if cdate(lo_now_date) >= cdate("2022-11-03") then%>d1103<%end if%>">
					<a href="/c/gongssel/help/notice/view.asp?idx=4059&cate=01&searchkey=&searchword=&page=1" title="2023 대비 메가공무원 전국모의고사" target="_blank">
						<img src="<%=img_main%>/m/2022/1101_gongssel_b/gongssel_banner.png" alt="2023 대비 메가공무원 전국모의고사">
					</a>
					<button class="close exam_close">
						<img src="<%=img_main%>/m/2021/1206_gongssel/main_bnr_close.png" alt="팝업 닫기"/>
					</button>
				</div>
				<style>
					.bncircle_final .close.exam_close {top: -30px;}
					.bncircle_final .item:nth-child(1) {margin-top: 0px;}
					.bncircle_final .item.d1103:nth-child(1){margin-top: -100px;}
					
				</style>
				<%end if%>
				<!-- 11월 전국 모의고사 플로팅 배너 E -->

				
				<!-- 10월 전국 모의고사 플로팅 배너 S -->
				<% if cdate(lo_now_date) >= cdate("2022-10-17") and cdate(lo_now_date) < cdate("2022-11-14 14:00") then%>
				<div class="item">
					<a href="/c/gongssel/help/notice/view.asp?idx=4030&cate=01&searchkey=&searchword=&page=1" title="메가면접학원" target="_blank">
						<img src="<%=img_main%>/m/2022/1017_gongssel/gongssel_bnr2.png" alt="메가면접학원 11.5 면접반 설명회">
					</a>
					<button class="close exam_close">
						<img src="<%=img_main%>/m/2021/1206_gongssel/main_bnr_close.png" alt="팝업 닫기"/>
					</button>
				</div>
				<style>
					.bncircle_final .close.exam_close {top: -30px;}
					.bncircle_final .item:nth-child(3) {margin-top: 60px;}
					
					<% if cdate(lo_now_date) >= cdate("2022-10-29 10:00") and cdate(lo_now_date) < cdate("2022-11-14 14:00") then%>
					.bncircle_final .item { margin-top:-125px; }
					<%end if%>
				</style>
				<%end if%>
				<!-- 10월 전국 모의고사 플로팅 배너 E -->



			</div>
			<style>
				.bncircle_final {position: absolute; top: 0; right: 1.5%; margin: 335px 0 0 560px; z-index: 1; width: 170px;}
				.bncircle_final .item{position: relative;margin-bottom: 15px;}
				.bncircle_final .item a{display: block;}
				.bncircle_final .close { right:0; top: -10px; position: absolute; z-index: 2;}
				@media (max-width: 1200px){.bncircle_final {display: none;}}
			</style>
			<script>
				$('.bncircle_final button').click(function(){
					$(this).parents(".item").css('visibility', 'hidden');
				});			
			</script>


			<% if cdate(lo_now_date) < cdate("2022-06-22") then%>
			<ul class="bn_container">
				<% if cdate(lo_now_date) >= cdate("2022-06-10 18:00") and cdate(lo_now_date) < cdate("2022-06-22") then%>
				<li>
					<div id="reserv_bn" class="reserv_bn">
						<div id="reservRoll">
							<div class="item">
								<a href="/c/gongssel/event/2022/06100005/index.asp#eventWrap">
									<img src="<%=img_main%>/m/2022/0119_guide/tech/flt_bn1.png" alt="기술직/간호직 신규 open">
								</a>
							</div>
						</div>
						<button onclick="clear_reservebn();" class="reserv_cls"><img src="<%=img_main%>/m/2021/1206_gongssel/main_bnr_close.png" alt="팝업 닫기"/></button>
					</div>
				</li>
				<%end if%>

				<%if cdate(lo_now_date) >= cdate("2022-05-23") then%>
				<li>
					<div id="reserv_bn3" class="reserv_bn">
						<div id="reservRoll">
							<div class="item">
								<a href="/c/gongssel/schedule/2021/overall/challenge_05_7.asp">
									<img src="<%=img_main%>/m/2022/0317_gongssel_ban/flt_bn3.png" alt="7급 챌린지반">
								</a>
							</div>
						</div>						
						<button onclick="clear_reservebn3();" class="reserv_cls">
							<img src="<%=img_main%>/m/2021/1206_gongssel/main_bnr_close.png" alt="팝업 닫기"/>
						</button>
					</div>
				</li>
				<%end if%>
				<% if cdate(lo_now_date) >= cdate("2022-04-21") and  cdate(lo_now_date) < cdate("2022-06-25") then%>
				<li>
					<div id="reserv_bn2" class="reserv_bn">
						<div id="reservRoll">
							<div class="item">
								<% if cdate(lo_now_date) < cdate("2022-05-21 13:00") then%>
								<a href="/c/gongssel/help/notice/view.asp?idx=3695&cate=01&searchkey=&searchword=&page=1">
								<% else %>
								<a href="/c/gongssel/help/notice/view.asp?idx=3698&cate=01&searchkey=&searchword=&page=1">
								<%end if%>
									<img src="<%=img_main%>/m/2022/0317_gongssel_ban/flt_bn_psat.png" alt="바른 PSAT 전국 모의고사">
								</a>
							</div>
						</div>
						<button onclick="clear_reservebn2();" class="reserv_cls">
							<img src="<%=img_main%>/m/2021/1206_gongssel/main_bnr_close.png" alt="팝업 닫기"/>
						</button>
					</div>
				</li>
				<%end if%>
				
			</ul>


			<style type="text/css">
				.bn_container{position: absolute;top: 200px;left: 50%;/*margin:505px 0 0 630px;*/margin:0 0 0 630px;width: 170px;z-index: 3;}
				.bn_container.v0423{top: 390px;}
				.bn_container.v0429{top: 580px;}
				.bn_container li{margin: 0 0 20px;text-align: center;}
				.reserv_bn {position: relative;}
				.reserv_bn .reserv_cls{position:absolute;top: 0;right: -2px;font-size: 0;}
				.reserv_bn .slick-arrow{display: none !important;}
				.reserv_bn .slick-dots{font-size: 0;text-align: center;padding: 9px 0 0;opacity: 0.7;}
				.reserv_bn .slick-dots li.slick-active{}
				.reserv_bn .slick-dots li{display: inline-block;margin: 0 3px;}
				.reserv_bn .slick-dots li button{display: block;width: 7px;height: 7px;border: 1px solid #fff;border-radius: 100%;}
				.reserv_bn .slick-dots li.slick-active button{background: #fff;}
				.reserv_bn5{margin: 36px 0 0;}
				.reserv_bn5 .reserv_cls{right: 10px;top: -30px;}

				@media screen and (max-width: 1650px) {
					.bn_container{left:initial;right:20px;}
				}
			
				@media (max-width: 1400px){
					/* .bn_container{margin: 0;left: auto;right: 2%;} */
				}

				@media (max-width: 1200px){
					.bn_container{display:none;}
					.courtnew_brn{display: none;}
				}
			</style>

			<script type="text/javascript">
				function clear_reservebn() {
					if ($("#reserv_bn").css("display") == "block") {
						$("#reserv_bn").hide();
					}
				}
				function clear_reservebn1() {
					if ($("#reserv_bn1").css("display") == "block") {
						$("#reserv_bn1").hide();
					}
				}
				function clear_reservebn2() {
					if ($("#reserv_bn2").css("display") == "block") {
						$("#reserv_bn2").hide();
					}
				}
				function clear_reservebn3() {
					if ($("#reserv_bn3").css("display") == "block") {
						$("#reserv_bn3").hide();
					}
				}
				function clear_reservebn4() {
					if ($("#reserv_bn4").css("display") == "block") {
						$("#reserv_bn4").hide();
					}
				}
				function clear_reservebn5() {
					if ($("#reserv_bn5").css("display") == "block") {
						$("#reserv_bn5").hide();
					}
				}
			</script>
			<%end if%>

			


		<% End if %>
		<!-- // 형법/형소법 신규입성 배너 E -->

		<div id="header_utility" class="hd_utility gongssel">
			<h2 class="blindw">공셀 GNB 메뉴</h2>
			<nav role="navigation">
				<!-- 추후 gnb 정렬시 해당 태그로 변경-->
				<!-- <i class="hd_toggleIcon ver1"><img src="<%=img_main%>/m/2021/0929_gongssel/gnb_bubble_01.gif" alt="11월 시작반 모집 중!"></i>
				<i class="hd_toggleIcon ver2"><img src="<%=img_main%>/m/2021/0929_gongssel/gnb_bubble_02.gif" alt="2개월 추가프로모션!"></i> -->
				<!-- //추후 gnb 정렬시 해당 태그로 변경-->
				<% if cdate(lo_now_date) >= cdate("2022-09-30") then %>
				<i class="toggleImg1" style='position:absolute; top:-24px; left:150px; z-index:1;'>
					<img src="<%=img_main%>/m/2022/0930_gongssel/tooltip.gif" alt="11월 시작반 모집 중!">
				</i>			
				<% elseif cdate(lo_now_date) >= cdate("2022-08-01") and cdate(lo_now_date) < cdate("2022-09-30") then %>
				<i class="toggleImg1" style='position:absolute; top:-24px; left:155px; z-index:1;'>
					<img src="<%=img_main%>/m/2022/0801_tclass/tclass9_tooltip.gif" alt="9월 입문반 모집 중!">
				</i>
				<% else %>
				<i class="toggleImg1" style='position:absolute; top:-24px; left:155px; z-index:1;'>
					<img src="<%=img_main%>/m/2022/0530_gongssel/gnb_bubble.gif" alt="7월 입문반 모집 중!">
				</i>
				<% end if %>

				<% if cdate(lo_now_date) < cdate("2022-05-16") then %>
				<i class="toggleImg2" style='position:absolute; top:-24px; left:370px; z-index:1;'><img src="<%=img_main%>/c/gongssel/self/220117/gnb_bubble_feb0224.gif" alt="2월 독학반 모집 중!"></i>
				<% end if %>

				<ul class="mnu_list gongssel new v21">
					<li <% if gmenu = "1" Then %>class="on"<% End if %> ><a class="mli_link" href="/c/gongssel/intro/intro6.asp" title="학원소개">학원소개</a>
						<ul>
							<!-- 클릭된 a태그에 class="on" -->
							<% if cdate(lo_now_date) >= cdate("2022-10-28") then %>
								<li><a href="/c/gongssel/intro/intro6.asp">원장 인사말/소통하기</a></li>
								<li class="dep2_pre">
									<a href="javascript:;">학원상담</a>
								</li>
								<li class="dep2">
									<a href="/c/gongssel/consult/index.asp" >ㆍ방문 상담(신규)에약</a>
									<a href="/c/gongssel/intro/intro7.asp" >ㆍ자주 묻는 질문(FAQ)</a>
									<a href="/c/gongssel/qna/list.asp" >ㆍ1:1 문의 게시판</a>
								</li>
								<li><a href="/c/gongssel/intro/intro9.asp">학원시설/프로그램</a></li>
								<li><a href="/c/gongssel/help/notice/list.asp">공지사항 <!-- <img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block"> --></a></li>
								<li><a href="/c/gongssel/intro/intro5.asp">오시는 길</a></li>
							<% else %>
								<% if cdate(lo_now_date) < cdate("2022-10-25") then %>
								<li><a href="/c/gongssel/intro/intro6.asp">원장 인사말</a></li>
								<% elseif cdate(lo_now_date) >= cdate("2022-10-25") then %>
								<li><a href="/c/gongssel/intro/intro6.asp">원장 인사말/소통하기</a></li>
								<% end if %>
								<li><a href="/c/gongssel/help/notice/list.asp">공지사항 <img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></li>
								<li><a href="/c/gongssel/consult/index.asp">방문 상담 예약</a></li>
								<li><a href="/c/gongssel/qna/list.asp">온라인 상담</a></li>
								<li><a href="/c/gongssel/intro/intro7.asp">자주 묻는 질문(FAQ)</a></li>
								<% if cdate(lo_now_date) < cdate("2022-10-25") then %>
								<li><a href="/c/gongssel/intro/intro8.asp">원장과 소통하기</a></li>
								<% end if %>
								<% If 1=2 Then %>
								<li><a href="/c/gongssel/intro/intro3.asp">완전 학습 시스템</a></li>
								<%end if %>
								<li><a href="/c/gongssel/intro/intro9.asp">학원시설 </a></li>
								<li><a href="/c/gongssel/intro/intro5.asp">오시는 길</a></li>
							<% end if %>

							
						</ul>
					</li>

					<li class="<% if gmenu = "4" or gmenu = "9" or gmenu = "10" Then %>on<% End if %> schedule_link" >
						<a class="mli_link" href="javascript:;" title="강의 시간표">강의 시간표</a>
						<ul class="tit_nav_list">
							<li><a href="/c/gongssel/schedule/2021/overall/overall_05_all_9.asp">9급</a></li>
							<li><a href="/c/gongssel/schedule/2021/overall/overall_05_all_7.asp">7급</a></li>
							<li><a href="/c/gongssel/schedule/2021/low/low01.asp">법원직</a></li>
						</ul>
						<ul class="timeTable">
							<li class="dep2_pre">
								<a href="javascript:;" >
									<%If cdate(lo_now_date) < cdate("2022-08-01") then%>
									9급 (7월~8월)
									<% elseif cdate(lo_now_date) < cdate("2022-09-30") then %>
									9급 (9월~10월)
									<% else %>
									9급 (11월~12월)
									<% end if %>									
								</a>
							</li>
					
							<li class="dep2">
								<%If cdate(lo_now_date) >= cdate("2022-09-30") then%>
								<a href="/c/gongssel/schedule/2021/overall/overall_05_all_9.asp" >ㆍ2023 메가 순환종합반<%Call SetNewIcon("2022-09-30")%></a>
								<%elseIf cdate(lo_now_date) >= cdate("2022-08-01") and cdate(lo_now_date) < cdate("2022-09-30") then%>
								<a href="/c/gongssel/schedule/2021/overall/overall_05_all_9.asp" >ㆍ2023 메가 순환종합반<%Call SetNewIcon("2022-08-01")%></a>
								<%Else%>
								<a href="/c/gongssel/schedule/2021/overall/overall_05_all_9.asp" >ㆍ메가순환종합반<%Call SetNewIcon("2022-06-14")%></a>
								<%End if%>
							</li>

							<%If cdate(lo_now_date) < cdate("2022-08-01") then%>
							<li class="dep2"><a href="/c/gongssel/schedule/2021/schedule.asp?mcode=11&gcd=9&lcd=402" >ㆍ기본이론 단과<%Call SetNewIcon("2022-01-26")%></a></li>
							<li class="dep2"><a href="/c/gongssel/schedule/2021/schedule.asp?mcode=11&gcd=9&lcd=407" >ㆍ동형/파이널 단과<%Call SetNewIcon("2022-01-26")%></a></li>
							<% else %>
							<li class="dep2"><a href="/c/gongssel/schedule/2021/schedule.asp?mcode=11&gcd=9&lcd=402" >ㆍ기본이론 단과<%Call SetNewIcon("2022-08-01")%></a></li>
							<li class="dep2"><a href="/c/gongssel/schedule/2021/schedule.asp?mcode=11&gcd=9&lcd=403" >ㆍ심화/기출 단과<%Call SetNewIcon("2022-08-01")%></a></li>
							<% end if %>

							<li class="dep2"><a href="/c/gongssel/schedule/2021/schedule.asp?mcode=13&gcd=9&lcd=408" >ㆍ과목별 핵심 특강<%Call SetNewIcon("2022-01-26")%></a></li>
							
							<% If cdate(lo_now_date) >= cdate("2022-07-18") and cdate(lo_now_date) < cdate("2022-08-19 00:01") then%>
							<li class="dep2"><a href="/c/gongssel/schedule/2021/am/am_en_12_9.asp" >ㆍ8월 영어집중반<%Call SetNewIcon("2022-07-18")%></a></li>
							<% elseif cdate(lo_now_date) < cdate("2022-10-26") then%>
							<li class="dep2"><a href="/c/gongssel/schedule/2021/am/am_en_12_9.asp" >ㆍ10월 영어집중반</a></li>
							<% end if %>

							<!-- <li class="dep2"><a href="/c/gongssel/schedule/2021/am/am_en_12_9.asp">ㆍ2월 영어집중반<%Call SetNewIcon("2021-11-08")%></a></li> -->
							
							<li class="dep2_pre">
								<a href="javascript:;" >
									<%If cdate(lo_now_date) < cdate("2022-05-30") then%>			
									7급 (5월~6월)
									<%elseIf cdate(lo_now_date) < cdate("2022-08-01") then%>
									7급 (7월~8월)
									<% elseif cdate(lo_now_date) < cdate("2022-09-30") then %>			
									7급 (9월~10월)
									<% else %>			
									7급 (11월~12월)
									<% end if %>
								</a>
							</li>
						
							<li class="dep2">
								<%If cdate(lo_now_date) >= cdate("2022-09-30") then%>
								<a href="/c/gongssel/schedule/2021/overall/overall_05_all_7.asp" >ㆍ2023 메가 순환종합반<%Call SetNewIcon("2022-09-30")%></a>
								<%elseIf cdate(lo_now_date) >= cdate("2022-08-01") and cdate(lo_now_date) < cdate("2022-09-30") then%>
								<a href="/c/gongssel/schedule/2021/overall/overall_05_all_7.asp" >ㆍ2023 메가 순환종합반<%Call SetNewIcon("2022-08-01")%></a>
								<%Else%>
								<a href="/c/gongssel/schedule/2021/overall/overall_05_all_7.asp" >ㆍ메가순환종합반<%Call SetNewIcon("2022-06-14")%></a>
								<%End if%>
							</li>
							<% if cdate(lo_now_date) >= cdate("2022-05-13") and cdate(lo_now_date) < cdate("2022-09-30") then%>
							<li class="dep2"><a href="/c/gongssel/schedule/2021/overall/challenge_05_7.asp" >ㆍ7급 챌린지반<%Call SetNewIcon("2022-05-04")%></a></li>
							<% end if %>

							<%If cdate(lo_now_date) < cdate("2022-08-01") then%>
							<li class="dep2"><a href="/c/gongssel/schedule/2021/schedule.asp?mcode=11&gcd=7&lcd=402" >ㆍ기본이론 단과<%Call SetNewIcon("2022-01-26")%></a></li>
							<li class="dep2"><a href="/c/gongssel/schedule/2021/schedule.asp?mcode=11&gcd=7&lcd=407" >ㆍ기출/문풀 단과<%Call SetNewIcon("2022-01-26")%></a></li>
							<% else %>
							<li class="dep2"><a href="/c/gongssel/schedule/2021/schedule.asp?mcode=11&gcd=7&lcd=402" >ㆍ기본이론 단과<%Call SetNewIcon("2022-08-01")%></a></li>
							<li class="dep2"><a href="/c/gongssel/schedule/2021/schedule.asp?mcode=11&gcd=7&lcd=403" >ㆍ심화/기출 단과<%Call SetNewIcon("2022-08-01")%></a></li>
							<% if cdate(lo_now_date) < cdate("2022-09-30") then %>
							<li class="dep2"><a href="/c/gongssel/schedule/2021/schedule.asp?mcode=11&gcd=7&lcd=407" >ㆍ동형/파이널 단과<%Call SetNewIcon("2022-08-01")%></a></li>
							<% end if %>
							<% end if %>

							<li class="dep2"><a href="/c/gongssel/schedule/2021/schedule.asp?mcode=13&gcd=9&lcd=408" >ㆍ과목별 핵심 특강<%Call SetNewIcon("2022-01-26")%></a></li>
							
							<% if cdate(lo_now_date) >= cdate("2022-11-02 16:00") then %>
								<li class="dep2_pre"><a href="javascript:;">법원직 (12월)</a></li>
								<li class="dep2"><a href="/c/gongssel/schedule/2021/low/low01.asp"  title="12월 심화이론 종합반">ㆍ12월 심화이론 종합반 <%Call SetNewIcon("2022-11-02 16:00")%></a></li>
								<li class="dep2"><a href="/c/gongssel/schedule/2021/low/low_synthesis.asp"  title="메가 법원직 순환 종합반" style="letter-spacing:-1.8px;">ㆍ메가 법원직 순환 종합반 <%Call SetNewIcon("2022-11-02 16:00")%></a></li>
								<li class="dep2"><a style="letter-spacing: -0.09em;" href="/c/gongssel/schedule/2021/low/low02.asp" title="12월 심화이론 단과">ㆍ12월 심화이론 단과 <%Call SetNewIcon("2022-11-02 16:00")%></a></li>
							<% end if %>
							<% if cdate(lo_now_date) >= cdate("2022-07-01") and cdate(lo_now_date) < cdate("2022-11-02 16:00") then %>
								<li class="dep2_pre"><a href="javascript:;">법원직 (8월)</a></li>
								<li class="dep2"><a href="/c/gongssel/schedule/2021/low/low01.asp"  title="8월 기본이론 종합반">ㆍ8월 기본이론 종합반 <%Call SetNewIcon("2022-07-01")%></a></li>
								<li class="dep2"><a href="/c/gongssel/schedule/2021/low/low_synthesis.asp"  title="메가 법원직 순환 종합반" style="letter-spacing:-1.8px;">ㆍ메가 법원직 순환 종합반 <%Call SetNewIcon("2022-07-01")%></a></li>
								<li class="dep2"><a style="letter-spacing: -0.09em;" href="/c/gongssel/schedule/2021/low/low02.asp" title="8월 기본이론 단과">ㆍ8월 기본이론 단과 <%Call SetNewIcon("2022-07-01")%></a></li>
							<% elseif cdate(lo_now_date) < cdate("2022-07-01") then %>
								<li class="dep2_pre"><a href="javascript:;">법원직 (4월)</a></li>
								<li class="dep2"><a href="/c/gongssel/schedule/2021/low/low01.asp"  title="메가 법원직 종합반">ㆍ메가 법원직 종합반 <%Call SetNewIcon("2022-04-11")%></a></li>
								<li class="dep2"><a href="/c/gongssel/schedule/2021/low/low_synthesis.asp"  title="2023 대비 메가 법원직 종합반" style="letter-spacing:-1.8px;">ㆍ2023 대비 메가 법원직 종합반 <%Call SetNewIcon("2022-04-03")%></a></li>
								<li class="dep2"><a style="letter-spacing: -0.09em;" href="/c/gongssel/schedule/2021/low/low02.asp" title="전 범위 동형 모의고사 단과">ㆍ전 범위 동형 모의고사 단과 <%Call SetNewIcon("2022-04-11")%></a></li>
							<% end if %>
						</ul>
					</li>
					<li <% if gmenu = "3" Then %>class="on"<% End if %> >
						<a class="mli_link long_txt" href="/c/gongssel/self/index.asp" title="프리미엄 학습공간">프리미엄 학습공간</a><% if false Then %><i class="gongssel_i self"><img src="<%=img_main%>/c/gongssel/self/gongssel_gnb_self.png" alt="체험단모집중!"></i><% End if %>
						
						<ul>
							<li><a href="/c/gongssel/self/index.asp" target="_blank">프리미엄 학습공간</a></li>
							<%If cdate(lo_now_date) < cdate("2022-06-17 11:00") then%>
							<li><a href="/c/gongssel/pass/index.asp">명예의 전당 </a></li>
							<li><a href="/c/gongssel/interview/list.asp">합격생 인터뷰 <% if is_aca_interview_new then %><img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block"><% end if %></a></li>
							<li><a href="/c/gongssel/review/list.asp">이용후기 <img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block" /></a></li>
							<li><a href="/c/gongssel/review/list.asp?review_gbn=2">체험수기 <img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block" /></a></li>
							<%end if%>
						</ul>
					</li>
					<li <% if gmenu = "2" Then %>class="on"<% End if %> ><a class="mli_link" href="/c/gongssel/teacher/index.asp#mContent" title="공무원 선생님">공무원 선생님</a>
						<ul>
							<li><a href="/c/gongssel/teacher/index.asp?sub_code=0&tec_code=0#teacher_info_id" title="국어">국어</a></li>
							<li><a href="/c/gongssel/teacher/index.asp?sub_code=1&tec_code=0#teacher_info_id" title="영어">영어</a></li>
							<li><a href="/c/gongssel/teacher/index.asp?sub_code=2&tec_code=0#teacher_info_id" title="한국사">한국사</a></li>
							<li><a href="/c/gongssel/teacher/index.asp?sub_code=3&tec_code=0#teacher_info_id" title="행정학">행정학</a></li>
							<li><a href="/c/gongssel/teacher/index.asp?sub_code=4&tec_code=0#teacher_info_id" title="행정법">행정법</a></li>
							<li><a href="/c/gongssel/teacher/index.asp?sub_code=sel&tec_code=0#teacher_info_id" title="직렬전문">직렬전문</a></li>
						</ul>
					</li>
					<!-- 추후 gnb 정렬시 style 삭제-->
					<style>
						/* /common/css/megagong_common.css - 메뉴1개 추가됨에 따라 추후 추가삽입 하기 */
						#headertop .hd_utility.gongssel .mnu_list.gongssel.new > li:not(.all_menu) { width:16% !important }
						#headertop .hd_utility .mnu_list.gongssel.new.v21 li .tit_nav_list{transform: translateX(-90%);}
					</style>
					<!-- //추후 gnb 정렬시 style 삭제-->
					<li <% if gmenu = "8" Then %>class="on"<% End if %> ><a class="mli_link" href="/c/gongssel/examinfo/index.asp#mContainer" title="합격전략 LAB">합격전략 LAB</a>
						<ul>
							<li><a href="/c/gongssel/examinfo/index.asp#mContainer" title="공무원 합격전략 LAB">공무원 합격전략 LAB</a></li>
							<li><a href="/c/gongssel/examinfo/statistic_2020.asp" title="수험정보센터">수험정보센터</a></li>
							<li><a href="/c/gongssel/examinfo/library/list.asp" title="기출문제&해설강의">기출문제&해설강의</a></li>
						</ul>
					</li>

					<li <% if gmenu = "11" Then %>class="on"<% End if %> ><a class="mli_link long_txt" href="/c/gongssel/presentation/index.asp" title="설명회·공개특강">설명회 · 공개특강 <img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글"
						style="vertical-align:middle;margin-left:3px;display:inline-block"></a>
						<ul>
							<li><a href="/c/gongssel/presentation/index.asp" title="설명회 · 공개특강 신청">설명회 · 공개특강 신청 <img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block" /></a></li>
						</ul>
					</li>
					<li class="all_menu"><strong class="mli_link"><span>-</span><span>-</span><span>-</span></strong></li>
				</ul>
				<!-- // 공셀-->

				<!-- <a href="javascript:;" class="menu_x" title="전체메뉴 닫기">
					<span><img src="<%=img_main%>/c/gongssel/main/menu_x.png" alt="전체메뉴 닫기"></span>
				</a> -->

			</nav>

			<div class="gnb_bgArea"><div class="bgArea" style="display: none;"></div></div>

		</div><!-- hd_utility / E -->

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
				var gongsselAllmenu = $('#headertop .hd_utility .mnu_list.gongssel > li > ul:not(.tit_nav_list)');
				//policeAllmenu.hide();
				$(".all_menu").click(function (e) {
					e.preventDefault();
					gongsselAllmenu.toggleClass("on");
					if(gongsselAllmenu.css("display") == "none"){
						$('.hd_utility.gongssel .mnu_list.gongssel li .tit_nav_list').slideUp(0);
						gongsselAllmenu.slideDown(150);
						$('.gnb_bgArea .bgArea').slideDown(150);
						$('.courtnew_brn').hide();
						$('.flt_brn_1229').hide();
					}else{
						gongsselAllmenu.slideUp(150);
						$('.gnb_bgArea .bgArea').slideUp(150);
						$('.courtnew_brn').show();
						$('.flt_brn_1229').show();
					}
				});

				$(".schedule_link").hover(function(e) {
					e.preventDefault();
					if (!gongsselAllmenu.hasClass("on")) {
						if ($('.hd_utility.gongssel .mnu_list.gongssel li .tit_nav_list').css("display") == "none") {
							gongsselAllmenu.slideUp(0);
							$('.gnb_bgArea .bgArea').slideUp(0);
							$('.hd_utility.gongssel .mnu_list.gongssel li .tit_nav_list').slideDown(150);
							console.log(1);
						} else {
							$('.hd_utility.gongssel .mnu_list.gongssel li .tit_nav_list').slideUp(150);
							console.log(2);
						}
					}
				});

			</script>
		</div>
		<!-- // 메뉴 토글 화면 -->

		<!-- hd_mo_utility / S -->
		<div id="hd_MoUtility" class="hd_mo_utility gongssel">
			<div class="mo_gnb">
				<nav>
					<div class="slider">
						<div class="item"><a href="/c/gongssel/intro/intro6.asp" <% if gmenu = "1" Then %>class="on"<% End if %> title="학원소개">학원소개</a></div>
						<div class="item"><a href="/c/gongssel/schedule/2021/overall/overall_05_all_9.asp" <% if gmenu = "4" Then %>class="on"<% End if %> title="9급 시간표">9급 시간표</a></div>
						<div class="item"><a href="/c/gongssel/schedule/2021/overall/overall_05_all_7.asp" <% if gmenu = "9" Then %>class="on"<% End if %> title="7급 시간표">7급 시간표</a></div>
						<div class="item"><a href="/c/gongssel/schedule/2021/low/low01.asp" <% if gmenu = "10" Then %>class="on"<% End if %> title="법원직 시간표">법원직 시간표</a></div>
					
						<div class="item"><a href="/c/gongssel/self/index.asp" <% if gmenu = "3" Then %>class="on"<% End if %> title="프리미엄 학습공간">프리미엄 학습공간</a></div>
						<div class="item"><a href="/c/gongssel/teacher/index.asp#mContent" <% if gmenu = "2" Then %>class="on"<% End if %> title="공무원 선생님">공무원 선생님</a></div>
						<div class="item"><a href="/c/gongssel/examinfo/index.asp#mContainer" <% if gmenu = "8" Then %>class="on"<% End if %> title="합격전략 LAB">합격전략 LAB</a></div>
						<div class="item"><a href="/c/gongssel/presentation/index.asp" <% if gmenu = "11" Then %>class="on"<% End if %> title="설명회 · 공개특강">설명회 · 공개특강 <img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block" /></a></div>
					</div>
				</nav>
			</div>
		</div>
		<!-- hd_mo_utility / E -->
		<script type="text/javascript">
			$('#hd_MoUtility .mo_gnb .slider').slick({
				infinite:false,
				rows: 1,
				swipeToSlide:true,
				focusOnSelect: false,
				centerMode: false,
				responsive: [{
				breakpoint: 1201,
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
				}, {
					breakpoint: 421,
					settings: {
						slidesToShow: 2,
						slidesToScroll: 2,
						variableWidth: true,
					}
				}]
			});

			$(window).on('load resize', function() {
				$('#hd_MoUtility .mo_gnb .slider').slick('refresh');
			});
			<%if gmenu = "10"  then %>
			$('#hd_MoUtility .mo_gnb .slider').slick('slickGoTo', 3);
			<% end if%>
			<%if gmenu = "3" or gmenu = "8" or gmenu = "11"  then %>
			$('#hd_MoUtility .mo_gnb .slider').slick('slickGoTo', 4);
			<%end if%>


		</script>


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
								<a href="javascript:;" title="메가공무원학원">메가공무원학원</a>
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

											<dd><a href="https://www.megajob.co.kr/megajob.asp " title="메가공기업">메가공기업 <img src="<%=img_main%>/common/ic_new.gif" alt="New" style="vertical-align:middle;margin:-3px 0 0 3px;" /></a></dd>
										</dl>
									</li>
								</ul>
							</li>
							<li><a href="/c/gongssel/intro/intro6.asp" title="학원소개">학원소개</a></li>
							<li class="more">
								<a href="javascript:;" title="강의 시간표">강의 시간표</a>
								<ul class="nextlst mbtea_all tit_none">
									<li>
										<dl>
                                            <dt class="blindw">시간표 이동</dt>
											<dd><a href="/c/gongssel/schedule/2021/overall/overall_05_all_9.asp" title="9급">9급</a></dd>
											<dd><a href="/c/gongssel/schedule/2021/overall/overall_05_all_7.asp" title="7급">7급</a></dd>
											<dd><a href="/c/gongssel/schedule/2021/low/low01.asp" title="법원직">법원직</a></dd>
										</dl>
									</li>
								</ul>
							</li>

		                    <li><a href="/c/gongssel/self/index.asp" title="프리미엄 학습공간">프리미엄 학습공간</a></li>
		                    <li><a href="/c/gongssel/teacher/index.asp#mContent" title="공무원 선생님">공무원 선생님</a></li>
							<li><a href="/c/gongssel/examinfo/index.asp" title="합격전략 LAB">합격전략 LAB</a></li>
							<li><a href="/c/gongssel/presentation/index.asp" title="설명회 &#183; 공개특강">설명회 &#183; 공개특강 <img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block" /></a></li>
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
	<div id="mo_globalMenu" class="glbal_menu gongssel fixed">
		<div class="gm_inner">
			<ul>
				<li class="all"><a href="javascript:;" title="전체"><span>전체</span></a></li>
				<li class="schedule"><a href="/c/gongssel/schedule/2021/overall/overall_05_all_9.asp" title="시간표"><span>시간표</span></a></li>
				<li class="home"><a href="<%=h_lnk %>" title="홈"><span>홈</span></a></li>
				<li class="noti"><a href="/c/gongssel/help/notice/list.asp" title="공지사항"><span>공지사항</span></a></li>
				<!-- <li class="top"><a href="javascript:glb_movetop();" title="맨위로"><span>맨위로</span></a></li> -->
				<li class="my"><a href="/mypage/index.asp" title="MY"><span>MY</span></a></li>
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
	
	<!--상담신청 상단우측배너-->
	<% if instr(1, NowUrl, "/megagong.asp") >= 0 Then %>
	<div class="main_top_bn">
		<div>
			<a href="/c/gongssel/consult/index.asp">
				<img src="<%=img_main%>/m/2022/1019_gongssel/main_top_bnr.png" alt="상담신청 02-3280-1010 방문상담 예약하기">
			</a>
		</div>
	</div>  
	<style>
		.main_top_bn {position: absolute; top: 140px; left: 46%; margin-left: 340px;z-index: 2;}

		@media (max-width:1200px){
			.main_top_bn { display:none !important; }
		}
	</style>
	<% End if %>
	<!--// 상담신청 상단우측배너-->

	<!-- 상담신청 반응형 배너 -->
	<% if instr(1, NowUrl, "/megagong.asp" ) > 0 Then %>
	<% If fncRequestCookie("main_bnr_mo") = "" then %>
	<span class="main_bnr_mo consult_bnr">
		<a href="/c/gongssel/consult/index.asp">
			<img src="<%=img_main%>/m/2022/1019_gongssel/main_bnr_mo.png" alt="상담신청 02-3280-1010 방문상담 예약하기">
		</a>
		<ul class="close">
			<li class="day"><a href="javascript:bnrDay_main_bnr_mo();">오늘 하루 보지 않기</a></li>
			<li><a href="javascript:bnrOff_main_bnr_mo();">닫기</a></li>
		</ul>
	</span>
	<style>
		.main_bnr_mo {display: none; position: fixed; right: 15px; bottom: 100px; z-index: 10;}
		.main_bnr_mo .close {margin: 5px 0 0 0;}
		.main_bnr_mo .close li {display: inline-block; width: 30%; background: #333; color: #fff; text-align: center; font-size: 15px; padding: 10px 0;}
		.main_bnr_mo .close li.day {width: 68%;}

		@media (max-width: 1200px){
			.main_bnr_mo {display: block;}
		}
		@media (max-width: 768px){
			.main_bnr_mo {width: 198px; bottom: 80px;}
			.main_bnr_mo .close li {font-size: 13px;}
			#headertop .new_st_mo {right:20px;}
			#headertop .new_st_pop .close { right:20px; width:auto; }
		}
		@media (max-width: 576px){
			.main_bnr_mo {width: 160px; bottom: 70px;}
			.main_bnr_mo .close li {width: 29%; font-size: 12px; margin: 0;}
			.main_bnr_mo .close li.day {width: 68%;}
		}
	</style>
	<script>
		function bnrDay_main_bnr_mo(){
			setCookie("main_bnr_mo", "close", 1);
			if ($(".main_bnr_mo").css("display") == "block") {
				$(".main_bnr_mo").hide();
			}
		}
		function bnrOff_main_bnr_mo(){
			$(".main_bnr_mo").hide();
		}
	</script>
	<%end if%>
	<%end if%>
	<!--// 상담신청 반응형 배너 -->