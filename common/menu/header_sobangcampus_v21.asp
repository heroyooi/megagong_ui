<%
'BOS_BID 값 변경 (gongcam_news -> news_and_strategy) 및 게시판 노출인 조건 추가 (2021.07.27)
gongcam_news_new = false
strSql = ""
strSql = strSql & " SELECT TOP 1 CONVERT(VARCHAR(10), BOS_WRITE_DATE, 102) FROM MS_BRD_ON_SL with (nolock) WHERE BOS_BID='news_and_strategy' AND BOS_SITE_SHOW IN ('all', '3') AND BOS_EXTRA2 = '0' ORDER BY BOS_WRITE_DATE DESC "
Set objrs = dbexec(strsql, "study")
If Not (objrs.eof And objrs.bof) Then 
    bos_write_date = objrs(0)
    If DATEDIFF("D",(Replace(bos_write_date,".","-")),DATE) <= 7 Then
        gongcam_news_new = true
    End If	
End If 
Call dbclose(objrs)
%>

<div id="header_wrap" class="hd_wrp">
		<!-- 배너 1개일경우 "alone" -> gnb 시작점과 맞춤 -->
		<div class="hd_left_bnr n1014 alone">
			<div>
				<div class="hd_slider">

				
					
					<div>
						<a href="/help/notice/view.asp?idx=3521" title="놓치면 안되는 학원 실강 추가 할인">
							<img src="<%=img_main%>/m/2021/0331_premium/main_sky_ban_0331.png" class="" style="cursor:pointer;" alt="놓치면 안되는 학원 실강 추가 할인">
						</a>
					</div>
					
				</div>
			</div>
		</div>
		<style>
			#headertop .hd_wrp .hd_left_bnr{display:block;margin-top: -58px;width:250px;height: auto;}
			#headertop .hd_wrp .hd_left_bnr.n1014 {margin-left: -519px;width:200px;top:0;margin-top: 20px;}
			/* 배너 1개일경우 "alone" -> gnb 시작점과 맞춤 */
			#headertop .hd_wrp .hd_left_bnr.n1014.alone{margin-left: -520px;}
			#headertop .hd_wrp .hd_left_bnr.n1014 .hd_slider .slick-arrow {position:absolute;top:50%;z-index:1;transform:translateY(-50%);display:block!important;font-size:0;}
			#headertop .hd_wrp .hd_left_bnr.n1014 .hd_slider .slick-prev {left:-21px;width:7px;height:10px;background:url(<%=img_main%>/m/2021/0105_planner/icon_L.png) no-repeat center;}
			#headertop .hd_wrp .hd_left_bnr.n1014 .hd_slider .slick-next {right:-15px;width:7px;height:10px;background:url(<%=img_main%>/m/2021/0105_planner/icon_R.png) no-repeat center;}
			
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
					autoplaySpeed: 2000,
					autoplay: true,
				});
			}
			/* --- // hd_slider 슬라이더--- */

			/* 2개이미지 반짝이 */
			setInterval(function () {
				$(".live_tag").toggleClass("on");
			}, 500);
		</script>
	
		<h1 class="hd_logo center">
			<a href="<%=h_lnk %>" class="sobang_ac <% If CDate(lo_now_date) < CDate("2019-11-10") Then%>logoproject_sobang_pc<% End If %>" title="난공소방학원 메인페이지 바로가기"><img src="<%=img_main%>/s/sobangcampus/logo.png" alt="메가소방학원"></a>
		</h1>

		<!-- hd_right_bnr / S -->
		<%If cdate(lo_now_date) >= cdate("2021-08-17") then%>
		<%If cdate(lo_now_date) < cdate("2022-10-31") then%>
		<div class="hd_right_bnr n1014">
			<div>
				<div class="hd_slider">
					<div>
						<a href="javascript:mv_pop();">
							<img src="<%=img_main%>/m/2021/0730_sb/header_ban_sobang.jpg" class="" alt="합격에 대한 진심 All-care 메가소방학원">
						</a>
					</div>
				</div>
			</div>
		</div>
		<% end if %>

		<%If cdate(lo_now_date) >= cdate("2022-10-31") then%>
		<div class="hd_right_bnr n1014 d1101">
			<div>
				<div class="hd_slider">
					<div>
						<a href="/c/sobang/consult/index.asp">
							<img src="<%=img_main%>/m/2022/1101_sobang/1101_bnr.png" class="" alt="상담신청 02-6964-8119 방문상담 예약">
						</a>
					</div>
				</div>
			</div>
		</div>
		<% end if %>

		
		<!--동영상팝업-->
		<div class="dimMv">
			<video id="movie" playsinline controls><!-- autoplay  -->
				<source src="<%=img_main%>/m/2021/0730_sb/video.mp4" type="video/mp4">
			</video>
			<button onClick="mv_pop_close();">닫기</button>
			<div class="bg" onClick="mv_pop_close();"></div>
		</div>
		<!--//동영상팝업-->

		<style>
			#headertop .hd_wrp .hd_right_bnr{display:block;top:0;margin-top: 30px;width:250px}
			#headertop .hd_wrp .hd_right_bnr.slide > div{padding: 0;}
			#headertop .hd_wrp .hd_right_bnr.n1014 {margin-left: -519px;}
			#headertop .hd_wrp .hd_right_bnr.n1014.d1101 {margin-top: 23px;}
			#headertop .hd_wrp .hd_right_bnr.n1014 .hd_slider .slick-arrow {position:absolute;top:50%;z-index:1;transform:translateY(-50%);display:block!important;font-size:0;}
			#headertop .hd_wrp .hd_right_bnr.n1014 .hd_slider .slick-prev {left:-21px;width:7px;height:10px;background:url(<%=img_main%>/m/2021/0105_planner/icon_L.png) no-repeat center;}
			#headertop .hd_wrp .hd_right_bnr.n1014 .hd_slider .slick-next {right:-21px;width:7px;height:10px;background:url(<%=img_main%>/m/2021/0105_planner/icon_R.png) no-repeat center;}
			#headertop .hd_wrp .hd_right_bnr .hd_slider {text-align: right;}
			#headertop .hd_wrp .hd_right_bnr .hd_slider img{display: inline-block;}
			@media (max-width: 1200px){
				#headertop .hd_wrp .hd_right_bnr{display: none;}
			}

			/*동영상팝업*/
			.dimMv { display:none; position:fixed; top:0; left:0; width:100%; height:100%; z-index:3; }
			.dimMv video { width:800px; position:absolute; top:50%; left:50%; transform:translate(-50%, -50%); z-index:5; }
			.dimMv button { cursor:pointer; display:inline-block; position:absolute; top:50%; left:50%; transform:translate(365px, -260px); z-index:5; font-size:12px; padding:5px; border:1px solid #bfbfbf; color:#bfbfbf; }
			.dimMv .bg { cursor:pointer; position:fixed; top:0; left:0; width:100%; height:100%; background:rgba(0,0,0,.5); }

			@media (max-width:1200px) {
				.dimMv { display:none !important; }
			}
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

			//video popup 
			function mv_pop(){
				$(".dimMv").show();
				$(".dimMv #movie").get(0).play();
				$(window).on('resize onload', function () {
					if($(window).width() < 1200) {
						$(".dimMv #movie").get(0).pause();
					} else {
						$(".dimMv #movie").get(0).play();

					}
				});
			}
			function mv_pop_close(){
				$(".dimMv #movie").get(0).pause();

				setTimeout(function(){
					$(".dimMv").hide();
				}, 300)
			}
		</script>
		<%end if%>
		<!-- hd_right_bnr / E -->

		<div id="header_utility" class="hd_utility sobangcampus">
			<h2 class="blindw">메가소방학원 GNB 메뉴</h2>
			<nav role="navigation">
				<!-- 소방학원 -->
				<%If cdate(lo_now_date) < cdate("2022-07-18") then%>
				<i style='position:absolute; top:-30px; left:120px; z-index:2;' class="toggle_img">
					<img src="<%=img_main%>/m/2022/0429_sbcampus/gnb_bubble1.png" alt="7월 시작반 모집중!">
					<img src="<%=img_main%>/m/2022/0429_sbcampus/gnb_bubble2.png" alt="7월 시작반 모집중!">
				</i>
				<% else %>
				<i style='position:absolute; top:-30px; left:120px; z-index:2;'>
					<%If cdate(lo_now_date) < cdate("2022-09-19") then%>
					<img src="<%=img_main%>/m/2022/0718_sobang/bubble_top.gif" alt="">
					<% else %>
					<img src="<%=img_main%>/m/2022/0919_sbc/bubble_top.gif" alt="11월 시작반 모집중!">
					<% end if %>
				</i>
				<% end if %>
				<script>
					setInterval(function () {
						$(".toggle_img").toggleClass("on");
					}, 700);
				</script>
				<style>
					.toggle_img img:first-child { display:block; }
					.toggle_img img:last-child { display:none; }
					.toggle_img.on img:first-child { display:none; }
					.toggle_img.on img:last-child { display:block; }
				</style>

				<% if cdate(lo_now_date) >= cdate("2022-07-07") then %>
				<i style='position:absolute; right: 70px; top: 8.45px; z-index:2; cursor: pointer;' class="toggle_img" onclick="pop_show()">
					<img src="<%=img_main%>/m/2022/0706_sbcps/gnb_bubble1.png" alt="첫 방문자 Click">
					<img src="<%=img_main%>/m/2022/0706_sbcps/gnb_bubble2.png" alt="첫 방문자 Click">
				</i>
				<% end if %> 
				

				<ul class="mnu_list gongssel sobangcampus new v21">
					<li <% if gmenu = "1" Then %>class="on"<% End if %>><a class="mli_link" href="javascript:;" title="학원소개">학원소개</a>
						<ul>
							<li><a href="/c/sobang/intro/intro1.asp" title="학원 스토리">학원 스토리</a></li>
							<li><a href="/help/notice/list.asp" title="학원 공지사항 ">학원 공지사항 <img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></li>
							<li><a href="/c/sobang/intro/intro3.asp" title="합격 관리 시스템">합격 관리 시스템</a></li>
							<li><a href="/c/sobang/intro/intro5.asp" title="시설 및 환경">시설 및 환경</a></li>
							<li><a href="/c/sobang/intro/intro2.asp" title="오시는 길">오시는 길</a></li>
						</ul>
					</li>
					<li <% if gmenu = "5" Then %>class="on"<% End if %>><a class="mli_link" href="javascript:;" title="종합반">종합반</a><!-- <span class="hd_bubble"><img src="<%=img_main%>/c/sobang/main/hd_bubble.png" alt="프리미엄 학습관"></span>-->
						<ul>
							<li class="dep2_pre">
								<a href="/c/sobang/academy/burning.asp#eventWrap" >관리형 종합반 CLASS</a>
							</li>
							<li class="dep2">
								<a href="/c/sobang/academy/burning.asp#eventWrap">
                            		<% if cdate(lo_now_date) < cdate("2022-09-19") then %>
									ㆍ<span style="display: inline-block;vertical-align: top;">BURNING CLASS 2.0<img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block"></span>
									<% else %>
									ㆍ<span style="display: inline-block;vertical-align: top;letter-spacing:-.12em;margin-left:-3px">BURNING CLASS (기출시작)<img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block"></span>
									<% end if %>
								</a>
							</li>

                            <% if cdate(lo_now_date) < cdate("2022-09-19") then %>
							<li class="dep2">
								<a href="/c/sobang/event/2022/05160007/index.asp" >
									ㆍ<span style="display: inline-block;vertical-align: top;">프리미엄 독학 CLASS<img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block">
								</a>
							</li>
							<li class="dep2">
								<a href="/c/sobang/event/2022/03080003/index.asp#eventWrap">
									<%If cdate(lo_now_date) < cdate("2022-07-18") then%>
									ㆍ<span style="display: inline-block;vertical-align: top;">기본이론종합반(7~8월)<img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block"></span>
									<% else %>
									ㆍ<span style="display: inline-block;vertical-align: top;">기본이론종합반(9~10월)<img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block"></span>
									<% end if %>
								</a>
							</li>
							<% else %>
							<li class="dep2">
								<a href="/c/sobang/event/2022/03080003/index.asp#eventWrap">
									ㆍ<span style="display: inline-block;vertical-align: top;letter-spacing:-.12em;margin-left:-3px">기본이론종합반(11~12월)<img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block"></span>
								</a>
							</li>
							
							<li class="dep2">
								<a href="/c/sobang/event/2022/05160007/index.asp" >
									ㆍ<span style="display: inline-block;vertical-align: top;letter-spacing:-.12em;margin-left:-3px">프리미엄 독학 CLASS<img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block">
								</a>
							</li>
							<% end if %>

                            <% if cdate(lo_now_date) >= cdate("2022-09-19") then %>
							<li class="dep2_pre"><a href="javascript:void(0);" >경채 초시생 강추 (NEW)</a></li>
							<li class="dep2">
								<a href="/c/sobang/event/2022/09190014/index.asp#eventWrap" >
									ㆍ<span style="display: inline-block;vertical-align: top;letter-spacing:-.15em;margin-left:-3px">5개월 경채 단독반(이론시작)<img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block"></span>
								</a>
							</li>
							<% end if %>


							
							<%If cdate(lo_now_date) < cdate("2022-09-11") then %>
							<li class="dep2_pre"><a href="javascript:void(0);" >재도전 수험생 전용</a></li>
							<li class="dep2">
								<a href="/c/sobang/event/2022/04250006/index.asp#eventWrap" >
									ㆍ<span style="display: inline-block;vertical-align: top;">리챌린지 시즌3<img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block"></span>
								</a>
							</li>
							<%End if%>
						</ul>
					</li>

					<%If cdate(lo_now_date) < cdate("2022-05-23") then%>
					<li <% if gmenu = "3" Then %>class="on"<% End if %>><a class="mli_link" href="javascript:;" title="강의 시간표">강의 시간표</a>
						<ul>
							<li class="dep2"><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=&cls=" title="5-6월 기본이론과정" style='letter-spacing:-2.5px;'>ㆍ5-6월 기본이론과정 <img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></li>
							<li class="dep2_pre"><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=4" title="특강">특강</a></li>
							<li class="dep2"><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=4" title="과목별 주요특강">ㆍ과목별 주요특강 <img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></li>
						</ul>
					</li>
					<%else%>
					<li <% if gmenu = "3" Then %>class="on"<% End if %>><a class="mli_link" href="javascript:;" title="단과&시간표">단과&시간표</a>
						<ul>
							<li class="dep2_pre"><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=&cls=" >단과강좌</a></li>
							<%If cdate(lo_now_date) >= cdate("2022-10-14") then%>
							<li class="dep2"><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=&cls=304" title="11-12월 기출분석과정" style='letter-spacing:-2.5px;'>ㆍ11-12월 기출분석과정 <%Call SetNewIcon("2022-10-14")%></a></li>
							<li class="dep2"><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=&cls=302" title="11-12월 기본이론과정" style='letter-spacing:-2.5px;'>ㆍ11-12월 기본이론과정 <%Call SetNewIcon("2022-10-14")%></a></li>
							<% end if %>
							<%If cdate(lo_now_date) >= cdate("2022-07-27") and cdate(lo_now_date) < cdate("2022-10-14") then%>
							<li class="dep2"><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=&cls=304" title="9-10월 기출분석과정" style='letter-spacing:-2.5px;'>ㆍ9-10월 기출분석과정 <%Call SetNewIcon("2022-07-27")%></a></li>
							<li class="dep2"><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=&cls=302" title="9-10월 기본이론과정" style='letter-spacing:-2.5px;'>ㆍ9-10월 기본이론과정 <%Call SetNewIcon("2022-07-27")%></a></li>
							<% elseif cdate(lo_now_date) < cdate("2022-07-27") then %>
							<li class="dep2"><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=&cls=" title="7-8월 기본이론과정" style='letter-spacing:-2.5px;'>ㆍ7-8월 기본이론과정 <%Call SetNewIcon("2022-07-02")%></a></li>
							<% end if %>
							<%'If cdate(lo_now_date) < cdate("2023-01-01") then%>
                            <% if cdate(lo_now_date) < cdate("2022-09-19") then %>
							<li class="dep2"><a href="/c/sobang/event/2022/05230008/index.asp#eventWrap" title="스마트 버닝 T-PASS" style='letter-spacing:-2.5px;'>ㆍ스마트 버닝 T-PASS <img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></li>
							<%end if%>
							<li class="dep2_pre"><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=3" title="특강">특강</a></li>
							<li class="dep2"><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=3" title="과목별 주요특강">ㆍ과목별 주요특강 <img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></li>
						</ul>
					</li>
					<%end if%>
					
					
					<li <% if gmenu = "6" Then %>class="on"<% End if %>><a class="mli_link" href="javascript:;" title="소방 선생님">소방선생님</a>
						<ul>
							<li><a href="/c/sobang/intro/intro4.asp?sub_code=0&tec_code=0#teacher_info_id" title="소방학/관계법규">소방학/관계법규</a></li>
							<li><a href="/c/sobang/intro/intro4.asp?sub_code=1&tec_code=0#teacher_info_id" title="소방행정법">소방행정법</a></li>
							<li><a href="/c/sobang/intro/intro4.asp?sub_code=2&tec_code=0#teacher_info_id" title="응급처치학개론">응급처치학개론</a></li>
							<li><a href="/c/sobang/intro/intro4.asp?sub_code=3&tec_code=0#teacher_info_id" title="검정제&가산점">검정제&가산점</a></li>
						</ul>
					</li>
					
					<li <% if gmenu = "4" Then %>class="on"<% End if %>><a class="mli_link" href="javascript:;" title="1:1 맞춤상담">1:1 맞춤상담</a>
						<ul>
							<% if cdate(lo_now_date) >= cdate("2022-07-07") then %>
							<li><a href="/c/sobang/review/list.asp" title="학원 방문상담">학원 수강후기</a></li>
							<% end if %>
							<li><a href="/c/sobang/consult/index.asp" title="학원 방문상담">학원 방문상담</a></li>
							<li><a href="javascript:;" class="consults_sb" title="학원 전화상담">학원 전화상담</a></li>
							<li><a href="/help/notice/view.asp?idx=2165" title="실시간 카카오톡 상담">실시간 카카오톡 상담</a></li>
							<li><a href="/c/sobang/qna/list.asp" title="1:1 상담문의">1:1 상담문의</a></li>
						</ul>
					</li>

					
					<li <% if gmenu = "2" Then %>class="on"<% End if %>><a class="mli_link" href="javascript:;" title="합격전략 LAB">합격전략 LAB</a>
						<ul>
							<li class="dep2_pre"><a href="/c/sobang/examinfo/index.asp" title="합격전략">합격전략</a></li>
							<li class="dep2"><a href="/c/sobang/examinfo/guide.asp" title="합격가이드">ㆍ합격가이드<img src="<%=img_main%>/common/ic_new.gif" alt="New" style="vertical-align:middle;margin:-3px 0 0 3px;" /></a></li>
							<li class="dep2"><a href="/c/sobang/examinfo/schedule.asp" title="2022년 시험 일정">ㆍ2022년 시험 일정</a></li>
							<li class="dep2"><a href="/c/sobang/examinfo/pass.asp" title="경쟁률 · 합격선">ㆍ경쟁률 · 합격선<img src="<%=img_main%>/common/ic_new.gif" alt="New" style="vertical-align:middle;margin:-3px 0 0 3px;" /></a></li>
							<li class="dep2"><a href="/c/sobang/examinfo/series.asp" title="채용분야별 모집 정보">ㆍ채용분야별 모집 정보<img src="<%=img_main%>/common/ic_new.gif" alt="New" style="vertical-align:middle;margin:-3px 0 0 3px;" /></a></li>
						
							<li class="dep2_pre"><a href="/c/sobang/examinfo/passstrategy/list.asp" title="수험정보센터">수험정보센터</a></li>
							<li class="dep2"><a href="/c/sobang/examinfo/news/list.asp" title="뉴스&합격전략">ㆍ뉴스&합격전략<%If gongcam_news_new then%><img src="<%=img_main%>/common/ic_new.gif" alt="New" style="vertical-align:middle;margin:-3px 0 0 3px;" /><%End if%></a></li>
							<li class="dep2"><a href="/c/sobang/examinfo/strategy/list.asp" title="과목별 학습전략">ㆍ과목별 학습전략</a></li>
							
							<li class="dep2_pre"><a href="/c/sobang/examinfo/library/list.asp" title="기출문제&해설강의">기출문제&해설강의</a></li>
							<li class="dep2"><a href="/c/sobang/examinfo/library/list.asp" title="기출문제 자료실">ㆍ기출문제 자료실</a></li>
							<li class="dep2"><a href="/c/sobang/examinfo/guide/exam.asp" title="해설강의&총평">ㆍ해설강의&총평 <%If cdate(lo_now_date) >= cdate("2021-04-08") then%><img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block"><%end if%></a></li>
							<li class="dep2"><a href="/c/sobang/examinfo/analysis/index.asp#eventWrap" title="기출 심층 분석">ㆍ기출 심층 분석 <%If cdate(lo_now_date) < cdate("2022-05-02") then%><img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block"><%end if%></a></li>
						</ul>
					</li>
				
					<li class="all_menu"><strong class="mli_link"><span>-</span><span>-</span><span>-</span></strong></li>
				</ul>
				<!-- // 소방학원 -->


				<!-- <a href="javascript:;" class="menu_x" title="전체메뉴 닫기">
					<span><img src="<%=img_main%>/c/gongssel/main/menu_x.png" alt="전체메뉴 닫기"></span>
				</a> -->
			</nav>

			<div class="gnb_bgArea"><div class="bgArea sobangcampus" style="display: none;"></div></div>
		</div> <!-- //hd_utility -->

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

				/* --- 소방학원 전체메뉴 클릭 이벤트 --- */
				var policeAllmenu = $('#headertop .hd_utility .mnu_list.sobangcampus > li > ul');
				$(".all_menu").click(function (e) {
					e.preventDefault();
					if(policeAllmenu.css("display") == "none"){
						policeAllmenu.slideDown(150);
						$('.gnb_bgArea .bgArea').slideDown(150);
					}else{
						policeAllmenu.slideUp(150);
						$('.gnb_bgArea .bgArea').slideUp(150);
					}
				});

			</script>
		</div>
		<!-- // 메뉴 토글 화면 -->

		<!-- hd_mo_utility / S -->
		<div id="hd_MoUtility" class="hd_mo_utility sobangcampus">
			<div class="mo_gnb">
				<nav>
					<div class="slider">
						<div class="item"><a href="/c/sobang/intro/intro1.asp" <% if gmenu = "1" Then %>class="on"<% End if %> title="학원소개">학원소개</a></div>
						<div class="item"><a href="/c/sobang/academy/burning.asp" <% if gmenu = "5" Then %>class="on"<% End if %> title="종합반">종합반</a></div>
						<div class="item"><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=&cls=304" <% if gmenu = "3" Then %>class="on"<% End if %> title="강의 시간표">강의 시간표</a></div>
						<div class="item"><a href="/c/sobang/intro/intro4.asp?sub_code=0&tec_code=0#teacher_info_id" <% if gmenu = "6" Then %>class="on"<% End if %> title="소방선생님">소방선생님</a></div>
						<div class="item"><a href="/c/sobang/consult/index.asp" <% if gmenu = "4" Then %>class="on"<% End if %> title="1:1 맞춤상담">1:1 맞춤상담</a></div>
						<div class="item"><a href="/c/sobang/examinfo/index.asp" <% if gmenu = "2" Then %>class="on"<% End if %> title="수험정보">수험정보</a></div>
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
			<%if gmenu = "6" or gmenu = "4" or gmenu = "2"  then %>
			$('#hd_MoUtility .mo_gnb .slider').slick('slickGoTo', 3);
			<%else%>
			//$('#hd_MoUtility .mo_gnb .slider').slick('slickGoTo', 0);
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
								<a href="javascript:;" title="메가소방학원">메가소방학원</a>
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
							<li><a href="/c/sobang/intro/intro1.asp" title="학원소개">학원소개</a></li>


						
							<li class="more">
								<a href="javascript:;" title="종합반">종합반</a>

								<ul class="nextlst subj_list sobangcampus">
										<%If cdate(lo_now_date) < cdate("2022-09-19") then%>
											<li>
												<a href="/c/sobang/academy/burning.asp#eventWrap"><b>BURNING CLASS 2.0</b><img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block"></a>
											</li>
											<li>
												<a href="/c/sobang/event/2022/05160007/index.asp"><b>프리미엄 독학 CLASS</b><img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block"></a>
											</li>
											<%If cdate(lo_now_date) < cdate("2022-07-18") then%>
											<li>
												<a href="/c/sobang/event/2022/03080003/index.asp#eventWrap">
													<b>기본이론종합반(7~8월)</b>
													<img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block">
												</a>
											</li>
											<li>
												<a href="/c/sobang/event/2022/04250006/index.asp#eventWrap">
													<b>리-챌린지 시즌2</b><img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block">
												</a>
											</li>
											<% else %>
											<li>
												<a href="/c/sobang/event/2022/03080003/index.asp#eventWrap">
													<b>기본이론종합반 (9~10월)</b>
													<img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block">
												</a>
											</li>
											<li>
												<a href="/c/sobang/event/2022/04250006/index.asp#eventWrap">
													<b>리-챌린지 시즌3</b><img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block">
												</a>
											</li>
											<% end if %>
										<% else %>
										<li><a href="/c/sobang/academy/burning.asp#eventWrap"><b>BURNING CLASS (기출시작)</b><img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></li>
										<li><a href="/c/sobang/event/2022/03080003/index.asp#eventWrap"><b>기본이론종합반 (11~12월)</b><img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></li>
										<li><a href="/c/sobang/event/2022/05160007/index.asp"><b>프리미엄 독학 CLASS</b><img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></li>
										<li><a href="/c/sobang/event/2022/09190014/index.asp#eventWrap"><b>5개월 경채 단독반(이론시작)</b><img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></li>										
										<% end if %>

								</ul>
							</li>
							<%If cdate(lo_now_date) < cdate("2022-05-23") then%>
							<li><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=&cls=" title="강의 시간표">강의 시간표</a></li>
							<%elseIf cdate(lo_now_date) < cdate("2022-07-05")  then%>
							<li><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=&cls=" title="단과&시간표">단과&시간표</a></li>
							<%elseIf cdate(lo_now_date) < cdate("2022-07-27")  then%>
							<li><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=&cls=" title="단과&시간표">단과&시간표</a></li>
							<%else%>
							<li><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=&cls=304" title="단과&시간표">단과&시간표</a></li>
							<%end if%>

							<li class="more">
								<a href="javascript:;" title="소방선생님">소방선생님</a>
							
								<ul class="nextlst subj_list sobangcampus">
									<li><a href="/c/sobang/intro/intro4.asp?sub_code=0&tec_code=0#teacher_info_id" title="소방학/관계법규">소방학/관계법규</a></li>
									<li><a href="/c/sobang/intro/intro4.asp?sub_code=1&tec_code=0#teacher_info_id" title="소방행정법">소방행정법</a></li>
									<li><a href="/c/sobang/intro/intro4.asp?sub_code=2&tec_code=0#teacher_info_id" title="응급처치학개론">응급처치학개론</a></li>
									<li><a href="/c/sobang/intro/intro4.asp?sub_code=3&tec_code=0#teacher_info_id" title="검정제&가산점">검정제&가산점</a></li>
								</ul>
							
							</li>
							<li><a href="/c/sobang/consult/index.asp" title="1:1 맞춤상담">1:1 맞춤상담</a></li>

							
							<li><a href="/c/sobang/examinfo/index.asp" title="합격전략 LAB">합격전략 LAB</a></li>
							<% if 1=2 then%>
							<li><a href="/c/sobang/examinfo/index.asp" title="수험정보">수험정보</a></li>
							<%end if %>
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
	<div class="glbal_menu sobangcampus">
		<!-- 첫 방문자 배너 -->
		
		<% if instr(1, NowUrl, "/megagong.asp" )> 0 Then %>

		<% if cdate(lo_now_date) >= cdate("2022-07-07") then %>
		<div class="m_quick_bnr">
			<i style='cursor: pointer;' class="toggle_img" onclick="pop_show()">
				<img src="<%=img_main%>/m/2022/0706_sbcps/gnb_bubble1_mo.png" alt="첫 방문자 Click">
				<img src="<%=img_main%>/m/2022/0706_sbcps/gnb_bubble2_mo.png" alt="첫 방문자 Click"> 
			</i>
			<a href="javascript:allClearPop();" class="close"><img src="<%=img_main%>/m/2022/0706_sbcps/gnb_bubble_mo_close.png" alt="닫기"></a> 
		</div>
		<% end if %>
		<style>
			.m_quick_bnr {position:absolute; right: 20px; top: -111px; z-index:2;}
			.m_quick_bnr .close {position: absolute; top: 0; right: -8px;}

			@media (max-width:576px) {
				.m_quick_bnr{width: 80px; top: -85px;}
				.m_quick_bnr .close {right: -12px;}
			}
		</style>
		<script>
			function allClearPop () {
				pop_close();
				$('.m_quick_bnr').hide();
			}
		</script>
		
		<%end if%> 
		<!-- //첫 방문자 배너 -->


		<div class="gm_inner">
			<ul>
				<li class="all"><a href="javascript:;" title="전체"><span>전체</span></a></li>
				<li class="course"><a href="/c/sobang/academy/schedule.asp" title="수강신청"><span>수강신청</span></a></li>
				<li class="home"><a href="<%=h_lnk %>" title="홈"><span>홈</span></a></li>
				<li class="noti"><a href="/help/notice/list.asp" title="공지사항"><span>공지사항</span></a></li>
				<!-- <li class="top"><a href="javascript:glb_movetop();" title="맨위로"><span>맨위로</span></a></li> -->
				<li class="my"><a href="/mypage/index.asp" title="MY"><span>MY</span></a></li>
			</ul>
		</div>
	</div>
	<!--  // 모바일 하단 고정 메뉴 & TOP버튼 -->
	

	
	<!-- 소방 우측 배너 -->
	<% If fncRequestCookie("mainSPright_mr") = "" then %>
	<% End if %>
	<!--// 소방 우측 배너 -->


	
	<script type="text/javascript">
        $(document).ready(function () {
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

        });

        // 모바일 top 버튼 (s)
        function glb_movetop() {
            $('html, body').animate({ scrollTop: 0 }, 400);
        }
   // 모바일 top 버튼 (e)
	</script>
	<!-- // 모바일 메뉴 -->

	<!-- 첫 방문자 click 팝업 -->
	<div class="first_visitor_guide" style="display: none;"> 
		<div class="bg" onclick="pop_close();"></div>
		<div class="pop_inner pc">
			<img src="<%=img_main%>/m/2022/0706_sbcps/main_bnr.png" alt="-">]
			<ul>
				<li><a href="/c/sobang/review/list.asp">메가소방학원 수강후기</a></li>
				<li><a href="/c/sobang/event/2021/03030001/index.asp#eventWrap">전문 1:1 학습컨설팅</a></li>
				<li><a href="/c/sobang/academy/burning.asp#eventWrap">BURNING CLASS 2.0</a></li>
				<li><a href="/help/notice/view.asp?idx=3521">수강료 추가할인GUIDE</a></li>
			</ul>
			<a href="javascript:pop_close();" class="close"><img src="<%=img_main%>/m/2022/0706_sbcps/main_bnr_close.png" alt="닫기"></a>
		</div>
		<div class="pop_inner mo">
			<img src="<%=img_main%>/m/2022/0706_sbcps/main_bnr_mo.png" alt="-">
			<a href="javascript:pop_close();" class="close"><img src="<%=img_main%>/m/2022/0706_sbcps/main_bnr_close.png" alt="닫기"></a>
			<ul>
				<li><a href="/c/sobang/review/list.asp">메가소방학원 수강후기</a></li>
				<li><a href="/c/sobang/event/2021/03030001/index.asp#eventWrap">전문 1:1 학습컨설팅</a></li>
				<li><a href="/c/sobang/academy/burning.asp#eventWrap">BURNING CLASS 2.0</a></li>
				<li><a href="/help/notice/view.asp?idx=3521">수강료 추가할인GUIDE</a></li>
			</ul>
		</div>
	</div>
	<style>
		.first_visitor_guide{position: fixed; top: 0; bottom: 0; left: 0; right: 0; z-index: 10;}
		.first_visitor_guide .bg{width: 100%; height: 100%;}
		.first_visitor_guide .pop_inner{position: absolute; z-index: 100;}
		.first_visitor_guide .pop_inner.pc{right: 50%; top: 0; transform: translate(472px, 199px); width: 280px;}
		.first_visitor_guide .pop_inner.mo{display: none;}
		.first_visitor_guide .pop_inner.pc ul{position: absolute;width: 86%;top: 94px;left: 50%;transform: translate(-50%, 0);}
		.first_visitor_guide .pop_inner.pc ul li a{font-size: 0;display: block;height: 77px;margin: 0 0 11px;}
		.first_visitor_guide .pop_inner.pc .close{position: absolute; top: 10px; right: 10px; z-index: 10;}

		@media (max-width:1200px) {
		 .first_visitor_guide .pop_inner.pc{display: none;}
		 .first_visitor_guide .pop_inner.mo{display: block; top: 50%; left: 50%; transform: translate(-50%, -50%); width: 80%; max-width: 444px;}
		 .first_visitor_guide .pop_inner.mo .close{position: absolute; top: 3.5%; right: 7%; z-index: 10;}
		 .first_visitor_guide .pop_inner.mo ul{position: absolute;width: 81%;top: 20%;left: 50%;transform: translate(-52%, 0);height: 100%;}
		 .first_visitor_guide .pop_inner.mo ul li {height: 17%;margin: 0 0 3%;}
		 .first_visitor_guide .pop_inner.mo ul li a{font-size: 0;display: block;height: 100%;}
		}
	
	</style>
	<script>
		function pop_close () {
			$('.first_visitor_guide').hide();
		}
		function pop_show () {
			$('.first_visitor_guide').show();
		}
		
	</script>
	<!-- //첫 방문자 click 팝업 -->
	

		
	<!-- 전화상담 신청 팝업-->
	<div class="police_call_popwrp sobang" style="display:none">
		<div class="pcp_inner">
			<div class="pcp_titwrp">
				<p>1:1 전화상담 신청</p>
				<span>메가소방학원에 대해 궁금한 점이 있으시면<br /> 이름, 연락처, 통화가능시간을 남겨주세요.</span>
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
					<span>보유기간<br>
						-  회원은 회원 탈퇴 전 회원자격이 유지되는 기간 동안<br>
						-  비회원은 접수일로부터 1년
					</span>
				</div>
				<a href="javascript:go_cons();" class="pcp_btn">상담신청</a>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		$(document).ready(function () {

			var policeCall_pop = $('.police_call_popwrp.sobang');
			// 1:1 전화상담 팝업
			$('.consults_sb').click(function () {
				
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
				url : "/c/sobang/consult/consult_tel_proc.asp",
				data : { "mem_nm" : escape(mem_nm), "mem_hp" : escape(mem_hp), "sel_time" : escape(sel_time), "contents_txt" : escape(contents_txt), "check_yn" : "" , "dom_nm" : escape("소방")},
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



	
	<!--  공셀 전체메뉴 호버 -->
	<script type="text/javascript">

		$(document).ready(function () {

			var sobangcampusAllmenu = $('#headertop .hd_utility .mnu_list.sobangcampus > li > ul');
			//sobangcampusAllmenu.hide();
			$("#headertop .hd_utility .mnu_list > li a").click(function () {
				if(sobangcampusAllmenu.css("display") == "none"){
					sobangcampusAllmenu.slideDown(150);
					$('.gnb_bgArea .bgArea').slideDown(150);
					$(this).parents().parents().addClass("on");
					$('.menu_x').addClass("on");
					$('#headertop .hd_utility .right_btn').hide();
				}else{
					sobangcampusAllmenu.slideUp(150);
					$('.gnb_bgArea .bgArea').slideUp(150);
					$(this).parents().parents().removeClass("on");
					$('.menu_x').removeClass("on");
					$('#headertop .hd_utility .right_btn').show();
				}
			});
			$("#headertop .hd_utility .menu_x").click(function () {
				if(sobangcampusAllmenu.css("display") == "none"){
					sobangcampusAllmenu.slideDown(150);
					$('.gnb_bgArea .bgArea').slideDown(150);
					$('#headertop .hd_utility .mnu_list').addClass("on");
					$('.menu_x').addClass("on");
					$('#headertop .hd_utility .right_btn').hide();
				}else{
					sobangcampusAllmenu.slideUp(150);
					$('.gnb_bgArea .bgArea').slideUp(150);
					$('#headertop .hd_utility .mnu_list').removeClass("on");
					$('.menu_x').removeClass("on");
					$('#headertop .hd_utility .right_btn').show();
				}
			});
		});


	</script>