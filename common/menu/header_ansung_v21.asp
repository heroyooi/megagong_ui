
	<!-- hd_wrp / S -->
	<div id="header_wrap" class="hd_wrp">
		<!-- 배너 1개일경우 "alone" -> gnb 시작점과 맞춤 -->
		<div class="hd_left_bnr n1014">
			<div>
				<div class="hd_slider">

					<% if 1=2 then%>
						
						<% if cdate(lo_now_date) >= cdate("2022-08-02") and cdate(lo_now_date) < cdate("2022-09-06") then %>
						<div>
							<a href="/c/ansung/news/notice/view.asp?idx=17822&cate=&searchkey=&searchword=&page=1" title="딱, 1년만 미쳐라! 8월 전국순회 설명회">
								<img src="<%=img_main%>/m/2022/0802_ansung/header_bnr1.jpg" class="" style="cursor:pointer;" alt="딱, 1년만 미쳐라!">
							</a>
						</div>
						<div>
							<a href="/c/ansung/news/notice/view.asp?idx=17822&cate=&searchkey=&searchword=&page=1" title="2023 메가공무원 전문관 전국 순회 설명회">
								<img src="<%=img_main%>/m/2022/0530_ansung/header_bnr2.jpg" class="" style="cursor:pointer;" alt="2023 메가공무원 전문관 전국 순회 설명회">
							</a>
						</div>
						<% elseif cdate(lo_now_date) >= cdate("2022-09-06") then %>
						<div>
							<a href="/c/ansung/news/notice/view.asp?idx=17822&cate=&searchkey=&searchword=&page=1" title="딱, 1년만 미쳐라! 9월 전국순회 설명회">
								<img src="<%=img_main%>/m/2022/0906_ansung/header_bnr1.jpg" class="" style="cursor:pointer;" alt="딱, 1년만 미쳐라!">
							</a>
						</div>
						<div>
							<a href="/c/ansung/news/notice/view.asp?idx=17822&cate=&searchkey=&searchword=&page=1" title="2023 메가공무원 전문관 전국 순회 설명회">
								<img src="<%=img_main%>/m/2022/0530_ansung/header_bnr2.jpg" class="" style="cursor:pointer;" alt="2023 메가공무원 전문관 전국 순회 설명회">
							</a>
						</div>
						<% else %>
						<!--
						<div>
							<a href="/c/ansung/news/notice/view.asp?idx=17738&cate=&searchkey=&searchword=&page=1" title="딱, 1년만 미쳐라!" target="_blank">
								<img src="<%=img_main%>/m/2022/0705_ansung/header_bnr1.jpg" class="" style="cursor:pointer;" alt="딱, 1년만 미쳐라!">
							</a>
						</div>
						-->
						<div>
							<a href="/c/ansung/news/notice/view.asp?idx=17822&cate=&searchkey=&searchword=&page=1" title="2023 메가공무원 전문관 전국 순회 설명회">
								<img src="<%=img_main%>/m/2022/0530_ansung/header_bnr2.jpg" class="" style="cursor:pointer;" alt="2023 메가공무원 전문관 전국 순회 설명회">
							</a>
						</div>
						<% end if %>
					<%end if %>

					<!--<%'If cdate(lo_now_date) < cdate("2022-09-29") then%>
					<div>
						<a href="/c/ansung/news/notice/view.asp?idx=17822&cate=&searchkey=&searchword=&page=1" title="딱, 1년만 미쳐라! 9월 전국순회 설명회">
							<img src="<%=img_main%>/m/2022/0906_ansung/header_bnr1.jpg" class="" style="cursor:pointer;" alt="딱, 1년만 미쳐라!">
						</a>
					</div>
					<div>
						<a href="/c/ansung/news/notice/view.asp?idx=17822&cate=&searchkey=&searchword=&page=1" title="2023 메가공무원 전문관 전국 순회 설명회">
							<img src="<%=img_main%>/m/2022/0530_ansung/header_bnr2.jpg" class="" style="cursor:pointer;" alt="2023 메가공무원 전문관 전국 순회 설명회">
						</a>
					</div>
					<%' else %>
					<div>
						<a href="/c/ansung/news/notice/view.asp?idx=18074&cate=&searchkey=&searchword=&page=1" title="딱, 1년만 미쳐라! 10월 전국순회 설명회">
							<img src="<%=img_main%>/m/2022/0929_ansung/header_bnr1.png" class="" style="cursor:pointer;" alt="딱, 1년만 미쳐라!">
						</a>
					</div>
					<div>
						<a href="/c/ansung/news/notice/view.asp?idx=18074&cate=&searchkey=&searchword=&page=1" title="2023 메가공무원 전문관 전국 순회 설명회">
							<img src="<%=img_main%>/m/2022/0530_ansung/header_bnr2.jpg" class="" style="cursor:pointer;" alt="2023 메가공무원 전문관 전국 순회 설명회">
						</a>
					</div>
					<%'end if%>-->


					<%If cdate(lo_now_date) >= cdate("2022-09-29") and cdate(lo_now_date) < cdate("2022-10-31") then%>
					<div>
						<a href="/c/ansung/news/notice/view.asp?idx=18074&cate=&searchkey=&searchword=&page=1" title="딱, 1년만 미쳐라! 10월 전국순회 설명회">
							<img src="<%=img_main%>/m/2022/0929_ansung/header_bnr1.png" class="" style="cursor:pointer;" alt="딱, 1년만 미쳐라!">
						</a>
					</div>
					<div>
						<a href="/c/ansung/news/notice/view.asp?idx=18074&cate=&searchkey=&searchword=&page=1" title="2023 메가공무원 전문관 전국 순회 설명회">
							<img src="<%=img_main%>/m/2022/0530_ansung/header_bnr2.jpg" class="" style="cursor:pointer;" alt="2023 메가공무원 전문관 전국 순회 설명회">
						</a>
					</div>
					<%end if%>


					<%If cdate(lo_now_date) >= cdate("2022-10-31") then%>
					<div>
						<a href="/c/ansung/news/notice/view.asp?idx=18147&cate=&searchkey=&searchword=&page=1" title="딱, 1년만 미쳐라! 11월 전국순회 설명회">
							<img src="<%=img_main%>/m/2022/1101_ansung/header_bnr1.png" class="" style="cursor:pointer;" alt="딱, 1년만 미쳐라!">
						</a>
					</div>
					<div>
						<a href="/c/ansung/news/notice/view.asp?idx=18147&cate=&searchkey=&searchword=&page=1" title="2023 메가공무원 전문관 전국 순회 설명회">
							<img src="<%=img_main%>/m/2022/0530_ansung/header_bnr2.jpg" class="" style="cursor:pointer;" alt="2023 메가공무원 전문관 전국 순회 설명회">
						</a>
					</div>
					<%end if%>

					
					<% if cdate(lo_now_date) >= cdate("2022-06-23") and cdate(lo_now_date) < cdate("2022-07-04 15:00") then%>
					<div>
						<a href="<%=url_main%>/s/gong/full/20220618/index.asp#eventWrap" title="6/18 지방직 9급 합격예측 풀서비스" target="_blank">
							<img src="<%=img_main%>/m/2022/0618_fullserv/header_bnr.jpg" class="" style="cursor:pointer;" alt="6/18 지방직 9급 합격예측 풀서비스">
						</a>
					</div>
					<% end if %>
					<% if cdate(lo_now_date) >= cdate("2022-04-29") and cdate(lo_now_date) < cdate("2022-05-09") then%>
					<div>
						<a href="/c/ansung/presentation/view.asp?idx=339" title="신청만하면 찾아가는 안성 메가클리닉">
							<img src="<%=img_main%>/m/2022/0426_ansung/header_bnr1.jpg" class="" style="cursor:pointer;" alt="신청만하면 찾아가는 안성 메가클리닉">
						</a>
					</div>
					<% elseif cdate(lo_now_date) < cdate("2022-05-23") then%>
					<div>
						<a href="/c/ansung/presentation/view.asp?idx=340" title="신청만하면 찾아가는 안성 메가클리닉">
							<img src="<%=img_main%>/m/2022/0426_ansung/header_bnr2.jpg" class="" style="cursor:pointer;" alt="신청만하면 찾아가는 안성 메가클리닉">
						</a>
					</div>
					<% elseif cdate(lo_now_date) < cdate("2022-06-30") then%>
					<div>
						<a href="/c/ansung/news/notice/view.asp?idx=17521&cate=&searchkey=&searchword=&page=1" title="공무원/경찰/소방시험 딱, 1년만 미쳐라!">
							<img src="<%=img_main%>/m/2022/0530_ansung/header_bnr1.jpg" class="" style="cursor:pointer;" alt="공무원/경찰/소방시험 딱, 1년만 미쳐라!">
						</a>
					</div>
					<div>
						<a href="/c/ansung/news/notice/view.asp?idx=17521&cate=&searchkey=&searchword=&page=1" title="2023 메가공무원 전문관 전국 순회 설명회">
							<img src="<%=img_main%>/m/2022/0530_ansung/header_bnr2.jpg" class="" style="cursor:pointer;" alt="2023 메가공무원 전문관 전국 순회 설명회">
						</a>
					</div>
					<% end if %>
			
				</div>
			</div>
		</div>
		<style>
			#headertop .hd_wrp .hd_left_bnr{display:block;height: auto;margin-left: -550px;width:220px;top:0;margin-top: 26px;}
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

		<!-- hd_right_bnr / E -->
		<div class="hd_right_bnr ansung" style="width: 304px;">
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
			var hdleft_s = $('.hd_right_bnr .hd_slider div').length;
			if (hdleft_s > 1) {
				$('.hd_right_bnr .hd_slider').slick({
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
			$('area').hover(function(){
				//Set your cursor to whatever
				$('body').css('cursor', 'help');
			}, function() {
				//set your cursor back to default
				$('body').css('cursor', 'initial');
			})
		</script>
		<style>
			#headertop .hd_wrp .hd_right_bnr{max-width: 233px;margin-right: -580px;margin-top: -50px;}
		</style>

		<h1 class="hd_logo center">
			<a href="<%=h_lnk %>" class="ansung" title="메가공무원 전문관 24hr 메인페이지 바로가기"><img src="<%=img_main%>/c/ansung/logo_renewal.png" alt="메가공무원 전문관 24hr"></a>
		</h1>

		<!-- hd_utility / S -->		
		<div id="header_utility" class="hd_utility">
			<h2 class="blindw">메가공무원 전문관 24hr GNB 메뉴</h2>
			<nav role="navigation">
				<!-- 안성경찰 -->
				<ul class="mnu_list ansung police new v21 <%if cdate(lo_now_date) >= cdate("2021-06-28") then%>con8<% end if %>">
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
					<%If cdate(lo_now_date) < cdate("2021-10-06") Then%>
						<i style="position: absolute; top: -25px; margin-left: -25px;"><img src="<%=img_main%>/m/2021/0730_ansung/bubble2.png" alt="마감 임박"/></i>
					<% ElseIf cdate(lo_now_date) < cdate("2021-11-30 15:00") Then%>
						<i style="position: absolute; top: -25px; margin-left: -25px;"><img src="<%=img_main%>/m/2021/1006_ansung/bubble.png" alt="11/8(월) 大개강"/></i>
					<% Elseif cdate(lo_now_date) < cdate("2022-02-04 00:00") then%>
						<i style="position: absolute; top: -25px; margin-left: -25px;"><img src="<%=img_main%>/m/2021/1130_ansung/bubble.png" alt="1/8(월) 大개강"/></i>
						<% Elseif cdate(lo_now_date) < cdate("2022-03-25 00:00") then%>
						<i style="position: absolute; top: -25px; margin-left: -25px;"><img src="<%=img_main%>/m/2022/0204_ansung/bubble.png" alt="3/7(월) 大개강"/></i>
						<% Elseif cdate(lo_now_date) < cdate("2022-03-25 00:00") then%>
						<i style="position: absolute; top: -25px; margin-left: -25px;"><img src="<%=img_main%>/m/2022/0329_ansung/bubble.png" alt="5/2(월) 大개강"/></i>
						<% Elseif cdate(lo_now_date) < cdate("2022-07-28") then%>
						<i style="position: absolute; top: -25px; margin-left: -25px;"><img src="<%=img_main%>/m/2022/0531_ansung/bubble.png" alt="7/4(월) 大개강"/></i>
						<%elseif cdate(lo_now_date) < cdate("2022-09-30") then%>
						<i style="position: absolute; top: -25px; margin-left: -25px;"><img src="<%=img_main%>/m/2022/0729_ansung/bubble.png" alt="9/5(월) 大개강"/></i>
						<% else %>
						<i style="position: absolute; top: -25px; margin-left: -25px;"><img src="<%=img_main%>/m/2022/0930_ansung/bubble.png" alt="11/7(월) 大개강"/></i>
					<%End if%>
					<li <% if gmenu = "2" Then %>class="on"<% End if %>><a class="mli_link" href="/c/ansung/program/gong/allcare.asp" title="공무원관">공무원관</a>
						<ul>
							<li><a href="/c/ansung/program/gong/index.asp" title="공무원 프로그램">공무원 프로그램</a></li>
							<li><a href="/c/ansung/program/gong/guide1.asp" title="공무원 수험정보">공무원 수험정보</a></li>
							<li><a href="/c/ansung/program/gong/timetable.asp" title="하루 일과표">하루 일과표</a></li>
							<li><a href="/c/ansung/program/gong/prepare.asp" title="입학 준비물">
								<% if cdate(lo_now_date) < cdate("2022-02-04 00:00") then%>
								입학 준비물
								<% else %>
								입학안내/준비물
								<% end if %>
							</a></li>
							<li><a href="/c/ansung/program/gong/refund.asp" title="환불규정">환불규정</a></li>
						</ul>
					</li>
					<%If cdate(lo_now_date) < cdate("2021-10-06") Then%>
						<i style="position: absolute; top: -25px; margin-left: -25px;"><img src="<%=img_main%>/m/2021/0730_ansung/bubble2.png" alt="마감 임박"/></i>
					<% ElseIf cdate(lo_now_date) < cdate("2021-11-30 15:00") Then%>
						<i style="position: absolute; top: -25px; margin-left: -25px;"><img src="<%=img_main%>/m/2021/1006_ansung/bubble.png" alt="11/8(월) 大개강"/></i>
					<% Elseif cdate(lo_now_date) < cdate("2022-02-04 00:00") then%>
						<i style="position: absolute; top: -25px; margin-left: -25px;"><img src="<%=img_main%>/m/2021/1130_ansung/bubble.png" alt="1/8(월) 大개강"/></i>
						<% Elseif cdate(lo_now_date) < cdate("2022-03-25 00:00") then%>
						<i style="position: absolute; top: -25px; margin-left: -25px;"><img src="<%=img_main%>/m/2022/0204_ansung/bubble.png" alt="3/7(월) 大개강"/></i>
						<% Elseif cdate(lo_now_date) < cdate("2022-03-25 00:00") then%>
						<i style="position: absolute; top: -25px; margin-left: -25px;"><img src="<%=img_main%>/m/2022/0329_ansung/bubble.png" alt="5/2(월) 大개강"/></i>
						<% Elseif cdate(lo_now_date) < cdate("2022-07-28") then%>
						<i style="position: absolute; top: -25px; margin-left: -25px;"><img src="<%=img_main%>/m/2022/0531_ansung/bubble.png" alt="7/4(월) 大개강"/></i>
						<%elseif cdate(lo_now_date) < cdate("2022-09-30") then%>
						<i style="position: absolute; top: -25px; margin-left: -25px;"><img src="<%=img_main%>/m/2022/0729_ansung/bubble.png" alt="9/5(월) 大개강"/></i>
						<% else %>
						<i style="position: absolute; top: -25px; margin-left: -25px;"><img src="<%=img_main%>/m/2022/0930_ansung/bubble.png" alt="11/7(월) 大개강"/></i>
					<%End if%>
					<li <% if gmenu = "3" Then %>class="on"<% End if %>><a class="mli_link" href="/c/ansung/program/police/2020/all_care_2.asp" title="경찰관">경찰관</a>
						<ul>
							<li><a href="/c/ansung/program/police/2020/index.asp" title="경찰 프로그램">경찰 프로그램</a></li>
							<li><a href="/c/ansung/program/police/timetable.asp" title="하루 일과표">하루 일과표</a></li>
							<li><a href="/c/ansung/program/police/prepare.asp" title="입학 준비물">
								<% if cdate(lo_now_date) < cdate("2022-02-04 00:00") then%>
								입학 준비물
								<% else %>
								입학안내/준비물
								<% end if %>
							</a></li>
							<li><a href="/c/ansung/program/police/refund.asp" title="환불규정">환불규정</a></li>
						</ul>
					</li>
					<%If cdate(lo_now_date) < cdate("2021-10-06") Then%>
						<i style="position: absolute; top: -25px; margin-left: -25px;"><img src="<%=img_main%>/m/2021/0730_ansung/bubble2.png" alt="마감 임박"/></i>
					<% ElseIf cdate(lo_now_date) < cdate("2021-11-30 15:00") Then%>
						<i style="position: absolute; top: -25px; margin-left: -25px;"><img src="<%=img_main%>/m/2021/1006_ansung/bubble.png" alt="11/8(월) 大개강"/></i>
					<% Elseif cdate(lo_now_date) < cdate("2022-02-04 00:00") then%>
						<i style="position: absolute; top: -25px; margin-left: -25px;"><img src="<%=img_main%>/m/2021/1130_ansung/bubble.png" alt="1/8(월) 大개강"/></i>
						<% Elseif cdate(lo_now_date) < cdate("2022-03-25 00:00") then%>
						<i style="position: absolute; top: -25px; margin-left: -25px;"><img src="<%=img_main%>/m/2022/0204_ansung/bubble.png" alt="3/7(월) 大개강"/></i>
						<% Elseif cdate(lo_now_date) < cdate("2022-03-25 00:00") then%>
						<i style="position: absolute; top: -25px; margin-left: -25px;"><img src="<%=img_main%>/m/2022/0329_ansung/bubble.png" alt="5/2(월) 大개강"/></i>
						<% Elseif cdate(lo_now_date) < cdate("2022-07-28") then%>
						<i style="position: absolute; top: -25px; margin-left: -25px;"><img src="<%=img_main%>/m/2022/0531_ansung/bubble.png" alt="7/4(월) 大개강"/></i>
						<%elseif cdate(lo_now_date) < cdate("2022-09-30") then%>
						<i style="position: absolute; top: -25px; margin-left: -25px;"><img src="<%=img_main%>/m/2022/0729_ansung/bubble.png" alt="9/5(월) 大개강"/></i>
						<% else %>
						<i style="position: absolute; top: -25px; margin-left: -25px;"><img src="<%=img_main%>/m/2022/0930_ansung/bubble.png" alt="11/7(월) 大개강"/></i>
					<%End if%>
					<li <% if gmenu = "8" Then %>class="on"<% End if %>><a class="mli_link" href="/c/ansung/program/sobang/2020/all_care_self2.asp" title="소방관">소방관</a>
						<ul>
							<li><a href="/c/ansung/program/sobang/index.asp" title="소방 프로그램">소방 프로그램</a></li>
							<li><a href="/c/ansung/program/sobang/timetable.asp" title="하루 일과표">하루 일과표</a></li>
							<li><a href="/c/ansung/program/sobang/prepare.asp" title="입학 준비물">
								<% if cdate(lo_now_date) < cdate("2022-02-04 00:00") then%>
								입학 준비물
								<% else %>
								입학안내/준비물
								<% end if %>
							</a></li>
							<li><a href="/c/ansung/program/sobang/refund.asp" title="환불규정">환불규정</a></li>
						</ul>
					</li>
					<%If cdate(lo_now_date) >= cdate("2021-07-29") Then%>
						<i style="position: absolute; top: -25px; margin-left: -25px;"><img src="<%=img_main%>/m/2021/0730_ansung/bubble2.png" alt="마감 임박"/></i>
					<%End if%>
					<%if cdate(lo_now_date) >= cdate("2021-06-28") then%>
					<li <% if gmenu = "10" Then %>class="on"<% End if %>><a class="mli_link" href="/c/ansung/program/self/index.asp" title="독학관">독학관</a>
						<ul>
							<li><a href="/c/ansung/program/self/index.asp" title="독학 프로그램">독학 프로그램</a></li>
							<li><a href="/c/ansung/program/self/timetable.asp" title="하루 일과표">하루 일과표</a></li>
							<li><a href="/c/ansung/program/self/prepare.asp" title="입학 준비물">
								<% if cdate(lo_now_date) < cdate("2022-02-04 00:00") then%>
								입학 준비물
								<% else %>
								입학안내/준비물
								<% end if %>
							</a></li>
							<li><a href="/c/ansung/program/self/refund.asp" title="환불규정">환불규정</a></li>
						</ul>
					</li>
					<% end if %>

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
							<%If cdate(lo_now_date) < cdate("2022-07-28") then%>
							<li><a href="/c/ansung/help/qna/write.asp" title="1:1 문의상담">1:1 문의상담</a></li>
							<% else %>
							<li><a href="/c/ansung/help/qna/write.asp" title="1:1 온라인 상담">1:1 온라인 상담</a></li>
							<% end if %>
							<%If cdate(lo_now_date) >= cdate("2022-08-09") then%>
							<li><a href="/c/ansung/consult/index.asp" title="1:1 방문 상담">1:1 방문 상담</a></li>
							<% end if %>
							<li><a href="/c/ansung/help/guide/list.asp" title="학원 가이드북 신청">학원 가이드북 신청</a></li>
							<li><a href="/c/ansung/presentation/index.asp" title="설명회 예약·알림 서비스">설명회 예약·알림 서비스</a></li>
						</ul>
					</li>
					<li class="all_menu"><strong class="mli_link"><span>-</span><span>-</span><span>-</span></strong></li>
				</ul>
				<!-- // 안성경찰 -->
			</nav>

			<div class="gnb_bgArea"><div class="bgArea" style="display: none;"></div></div>
		</div>
		<!-- hd_utility / E -->


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

		<!-- hd_mo_utility / S -->
		<div id="hd_MoUtility" class="hd_mo_utility">
			<div class="mo_gnb">
				<nav>
					<div class="slider">
						<div class="item"><a href="/c/ansung/intro/intro1.asp" <% if gmenu = "1" Then %>class="on"<% End if %> title="학원소개">학원소개</a></div>
						<div class="item"><a href="/c/ansung/pass/pass_index.asp" <% if gmenu = "7" Then %>class="on"<% End if %> title="명예의 전당">명예의 전당</a></div>
						<div class="item"><a href="/c/ansung/program/gong/allcare.asp" <% if gmenu = "2" Then %>class="on"<% End if %> title="공무원관">공무원관</a></div>
						<div class="item"><a href="/c/ansung/program/police/2020/all_care_2.asp" <% if gmenu = "3" Then %>class="on"<% End if %> title="경찰관">경찰관</a></div>
						<div class="item"><a href="/c/ansung/program/sobang/2020/all_care_self2.asp" <% if gmenu = "8" Then %>class="on"<% End if %> title="소방관">소방관</a></div>
						<%if cdate(lo_now_date) >= cdate("2021-06-28") then%>
						<div class="item"><a href="/c/ansung/program/self/index.asp" <% if gmenu = "10" Then %>class="on"<% End if %> title="독학관">독학관</a></div>
						<% end if %>
						<div class="item"><a href="/c/ansung/news/notice/list.asp" <% if gmenu = "9" Then %>class="on"<% End if %> title="학원소식">학원소식</a></div>
						<div class="item"><a href="/c/ansung/help/faq/index.asp" <% if gmenu = "6" Then %>class="on"<% End if %> title="학원상담">학원상담</a></div>
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
			<%if gmenu = "8" or gmenu = "9" or gmenu = "6" or gmenu = "10"  then %>
			$('#hd_MoUtility .mo_gnb .slider').slick('slickGoTo', 3);
			<%else%>
			//$('#hd_MoUtility .mo_gnb .slider').slick('slickGoTo', 0);
			<%end if%>
			
		</script>

	</div>
	<!-- hd_wrp / E -->

	<!-- 모바일 메뉴 S -->
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
										<dd><a href="https://www.megajob.co.kr/megajob.asp " title="메가공기업">메가공기업 <img src="<%=img_main%>/common/ic_new.gif" alt="New" style="vertical-align:middle;margin:-3px 0 0 3px;" /></a></dd>
									</dl>
								</li>
							</ul>
						</li>
						<li><a href="/c/ansung/intro/intro1.asp" title="학원소개">학원소개</a></li>
						<li><a href="/c/ansung/pass/pass_index.asp" title="명예의 전당">명예의 전당</a></li>
						<li><a href="/c/ansung/program/gong/allcare.asp" title="공무원관">공무원관</a></li>
						<li><a href="/c/ansung/program/police/2020/all_care_2.asp" title="경찰관">경찰관</a></li>
						<li><a href="/c/ansung/program/sobang/2020/all_care_self2.asp" title="소방관">소방관</a></li>
						<%if cdate(lo_now_date) >= cdate("2021-06-28") then%>
						<li><a href="/c/ansung/program/self/index.asp" title="독학관">독학관</a></li>
						<% end if %>
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
	<!-- 모바일 메뉴 E -->

	<!--  모바일 하단 고정 메뉴 & TOP버튼 -->
	<div id="mo_globalMenu" class="glbal_menu ansung fixed">
		<div class="gm_inner">
			<ul>
				<li class="all"><a href="javascript:;" title="전체"><span>전체</span></a></li>
				<li class="consult"><a href="/c/ansung/help/qna/write.asp" title="학원상담"><span>학원상담</span></a></li>
				<li class="home"><a href="<%=h_lnk %>" title="홈"><span>홈</span></a></li>
				<li class="noti"><a href="/c/ansung/news/notice/list.asp" title="공지사항"><span>공지사항</span></a></li>
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



	<!--결과를 보고 결정하자! 5월 개강반 大오픈! -->
	<%If cdate(lo_now_date) >= cdate("2022-04-25") and cdate(lo_now_date) < cdate("2022-05-30") then%>
	<% If instr(1, NowUrl, "/megagong.asp") > 0 Then %>
	<% If fncRequestCookie("mainPopup") = "" then %>
	<div id="briefing_pop02" class="briefing_layer02">
		<div id="modalLayer" class="briefing_pop_layer">
			<div class="brfpop_container">
				<div class="brflayer_content">
					<img src="<%=img_main%>/m/2022/0426_ansung/pop_ansung.png" alt="결과를 보고 결정하자! 5월 개강반 大오픈!" usemap="">
					<div class="pop_link">
						<a href="/c/ansung/program/gong/allcare.asp" alt="공무원 실강반 자세히보기"></a>
						<a href="/c/ansung/program/police/2020/all_care_2.asp" alt="경찰 실강반 자세히보기"></a>
						<a href="/c/ansung/program/sobang/2020/all_care_self2.asp" alt="소방 실강반 자세히보기"></a>
						<a href="/c/ansung/program/self/index.asp" alt="독학전문관 자세히보기"></a>
					</div>
					<!-- <map id="pop_main" name="pop_main">
						<area shape="rect" alt="공무원 실강 자세히보기" coords="25,176,339,254" href="/c/ansung/program/gong/allcare.asp" target="" />
						<area shape="rect" alt="경찰 실강 자세히보기" coords="26,271,339,350" href="/c/ansung/program/police/2020/all_care_2.asp" target="" />
						<area shape="rect" alt="소방 실강 자세히보기" coords="27,367,338,445" href="/c/ansung/program/sobang/2020/all_care_self2.asp" target="" />
						<area shape="rect" alt="독학 자세히보기" coords="27,367,338,445" href="/c/ansung/program/self/index.asp" target="" />
					</map> -->
				</div>
				<!-- <button onclick="brfDay();" class="btnClose">오늘 하루 닫기</button> -->
				<button onclick="brfOff02();" class="btnClose2"><img src="<%=img_main%>/m/2022/0426_ansung/pop_close.png" ></button>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		function brfOff02(){
			$(".briefing_layer02").hide();
			$(".briefing_layer02 .brflayer_content iframe").attr("src", "#;");
		}
		$('.briefing_layer02 .dimBg').on('click', function(){
			brfOff02();
		});
	</script>
	<%If cdate(lo_now_date) < cdate("2022-04-28") then%>
	<style>
		.briefing_layer02 { position:absolute; top:345px; left:50%; margin-left:555px; z-index:2; width:301px; }
		.brfpop_container,.brflayer_content {position: relative;height: 100%;}
		.brfpop_container:after {display: block;clear: both;content: '';}
		
		.pop_link{position: absolute;width: 92%;height: 17%;left: 5%;bottom: 4%;}
		.pop_link a{position: absolute;width: 49%;height: 44%;}
		.pop_link a:nth-child(1){left: 0;top: 0;}
		.pop_link a:nth-child(2){left: 51%;top: 0;}
		.pop_link a:nth-child(3){left: 0;top: 57%;}
		.pop_link a:nth-child(4){left: 51%;top: 57%;}

		.briefing_layer02 .btnClose{position: absolute;bottom: -31px;right: 31px;padding:6px 5px;color:#fff; background:#111; }
		.briefing_layer02 .btnClose2{position: absolute;top: -30px;right: -2px; background: none; padding: 0;width: 24px;height: 23px;}
		
		#briefing_pop2 { display: none;}
		#briefing_pop2 .btnClose { display:none; }

		@media (max-width: 1750px) {
			.briefing_layer02 { left:inherit; margin-left:inherit; right:2%; }

		}
		@media (max-width: 1200px) {
			.briefing_layer02 {display: none; position:fixed; top:50%; left:50%; margin-left:0; transform:translate(-50%, -50%); max-width:301px; width:90%; }
		}
		@media (max-width: 768px) {
			.briefing_layer02 .btnClose{position: absolute;bottom: -26px; right: 26px;padding:4px 8px; font-size:11px; height:25px;  }
			.briefing_layer02 .btnClose2{position: absolute;bottom: -26px;right: 0;padding: 1px; width:25px; height:25px; }
		}
	</style>
	<% else %>
	<style>
		.briefing_layer02 { position:absolute; top:295px; left:50%; margin-left:555px; z-index:2; width:301px; }
		.brfpop_container,.brflayer_content {position: relative;height: 100%;}
		.brfpop_container:after {display: block;clear: both;content: '';}
		
		.pop_link{position: absolute;width: 92%;height: 17%;left: 5%;bottom: 4%;}
		.pop_link a{position: absolute;width: 49%;height: 44%;}
		.pop_link a:nth-child(1){left: 0;top: 0;}
		.pop_link a:nth-child(2){left: 51%;top: 0;}
		.pop_link a:nth-child(3){left: 0;top: 57%;}
		.pop_link a:nth-child(4){left: 51%;top: 57%;}

		.briefing_layer02 .btnClose{position: absolute;bottom: -31px;right: 31px;padding:6px 5px;color:#fff; background:#111; }
		.briefing_layer02 .btnClose2{position: absolute;top: -30px;right: -2px; background: none; padding: 0;width: 24px;height: 23px;}
		
		#briefing_pop2 { display: none;}
		#briefing_pop2 .btnClose { display:none; }

		@media (max-width: 1750px) {
			.briefing_layer02 { left:inherit; margin-left:inherit; right:2%; }

		}
		@media (max-width: 1200px) {
			.briefing_layer02 {display: none; position:fixed; top:50%; left:50%; margin-left:0; transform:translate(-50%, -50%); max-width:301px; width:90%; }
		}
		@media (max-width: 768px) {
			.briefing_layer02 .btnClose{position: absolute;bottom: -26px; right: 26px;padding:4px 8px; font-size:11px; height:25px;  }
			.briefing_layer02 .btnClose2{position: absolute;bottom: -26px;right: 0;padding: 1px; width:25px; height:25px; }
		}
	</style>
	<% end if %>

	<% end if %>
	<% end if %>
	<% end if %>
	<!--// 결과를 보고 결정하자! 5월 개강반 大오픈!-->

	<!--2022대비 메가공무원 전국모의고사 팝업-->
	<% If cdate(lo_now_date) >= cdate("2022-07-05") and cdate(lo_now_date) < cdate("2022-07-18") then%>
	<% If instr(1, NowUrl, "/megagong.asp") > 0 Then %>
	<% If fncRequestCookie("mainPopup") = "" then %>
	<div id="briefing_pop01" class="briefing_layer01">
		<div id="modalLayer" class="briefing_pop_layer">
			<div class="brfpop_container">
				<div class="brflayer_content">
					<a href="/c/ansung/news/notice/view.asp?idx=17737&cate=&searchkey=&searchword=&page=1">
						<img src="<%=img_main%>/m/2022/0705_ansung/img_popup.png" alt="2022대비 메가공무원 전국모의고사" usemap="#pop_main">
					</a>
					<!-- <map id="pop_main" name="pop_main">
						<area shape="rect" alt="경찰 자세히보기" coords="25,176,339,254" href="/c/ansung/news/notice/view.asp?idx=17378&cate=&searchkey=&searchword=&page=1" target="" />
						<area shape="rect" alt="공무원 자세히보기" coords="26,271,339,350" href="/s/gong/event/2022/04200045/index.asp#eventWrap" target="" />
						<area shape="rect" alt="소방 자세히보기" coords="27,367,338,445" href="/c/ansung/news/notice/view.asp?idx=17378&cate=&searchkey=&searchword=&page=1" target="" />
					</map> -->
				</div>
				<button onclick="brfDay01();" class="btnClose">오늘 하루 닫기</button>
				<button onclick="brfOff01();" class="btnClose2">X</button>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		function brfDay01(){
			setCookie("mainPopup", "close", 1);
			if ($("#briefing_pop01").css("display") == "block") {
				$(".briefing_layer01 .brflayer_content iframe").attr("src", "#;");
				$("#briefing_pop01").hide();
			}
		}
		function brfOff01(){
			$(".briefing_layer01").hide();
			$(".briefing_layer01 .brflayer_content iframe").attr("src", "#;");
		}
		$('.briefing_layer01 .dimBg').on('click', function(){
			brfOff();
		});
	</script>
	<style>
		/* .briefing_layer01 {position: fixed;display:block;top: 0;left: 0;width: 100%;height: 100%;z-index: 102;}
		.briefing_layer01 .dimBg{position: fixed;left: 0;top: 0;width: 100%;height: 100%;background: #000;opacity: 0.9;cursor: pointer;} 
		.briefing_layer01 .briefing_pop_layer {display: block;width: 1280px;height: 700px;position: absolute;top: 50%;left: 50%;z-index: 10;transform: translate(-50%, -50%);} */
		.briefing_layer01 { position:absolute; top:315px; left:50%; margin-left:555px; z-index:2; width:220px; }
		/* .briefing_layer01 .briefing_pop_layer {display: block;width: 370px;height: 700px;position: absolute;top: 50%;left: 50%;z-index: 10;}  */
		.brfpop_container,.brflayer_content {position: relative;height: 100%;}
		.brfpop_container:after {display: block;clear: both;content: '';}
		.briefing_layer01 .btnClose{position: absolute;bottom: -31px;right: 31px;padding:6px 5px;color:#fff; background:#111; }
		.briefing_layer01 .btnClose2{position: absolute;bottom: -31px;right: 0;padding: 3px;color:#fff; background:#111; }
		#briefing_pop2 { display: none;}
		#briefing_pop2 .btnClose { display:none; }

		.pop_link2{position: absolute;width: 88%;height: 56%;left: 6%;bottom: 9%;}
		.pop_link2 a{position: absolute;width: 100%;height: 30%;left: 0;top: 0;}
		.pop_link2 a:nth-child(2){top: 36%;}
		.pop_link2 a:nth-child(3){top: 71%;}
		.pop_link2 a:nth-child(4){left: 51%;top: 57%;}

		@media (max-width: 1750px) {
			.briefing_layer01 { left:inherit; margin-left:inherit; right:2%; }

		}
		@media (max-width: 1200px) {
			.briefing_layer01 { display:none; position:fixed; top:50%; left:50%; margin-left:0; transform:translate(-50%, -50%); max-width:370px; width:90%; }
		}
		@media (max-width: 768px) {
			.briefing_layer01 .btnClose{position: absolute;bottom: -26px; right: 26px;padding:4px 8px; font-size:11px; height:25px;  }
			.briefing_layer01 .btnClose2{position: absolute;bottom: -26px;right: 0;padding: 1px; width:25px; height:25px; }
		}
		/*
		@media (max-width: 1280px) {
			.brflayer_content img{width: 100%;}
			.briefing_layer01 .briefing_pop_layer{width: 80%;height: 50vw;}

		}
		@media (max-width: 768px) {
			.brflayer_content img.pc{display: none;}
			.briefing_layer01 .briefing_pop_layer{width: 95%;}
		}*/
	</style>
	<% end if %>
	<% end if %>
	<% end if %>
	<!--//2022대비 메가공무원 전국모의고사 팝업-->



	