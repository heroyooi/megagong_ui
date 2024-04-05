<div class="hd_wrp">
		
		
		<div class="hd_left_bnr n0405">
			<div>
				<div class="hd_slider">
					<%If CDate(lo_now_date) < CDate("2021-03-16") then%>
					<div>
						<a href="https://forms.gle/rojRLBPUAfecC7cDA" target="_blank" title="5월 시작반 사전예약">
							<img src="<%=img_main%>/m/2021/0305_sbcampus/left_1.jpg" class="" style="cursor:pointer;" alt="5월 시작반 사전예약">
						</a>
					</div>
					<%end if%>
					<%If CDate(lo_now_date) >= CDate("2021-03-16") and CDate(lo_now_date) < CDate("2021-03-27 15:00") then%>
					<div>
						<a href="/c/sobang/event/2020/04070003/index.asp#eventWrap" target="_blank" title="소방 합격 설명회">
							<img src="<%=img_main%>/m/2021/0305_sbcampus/left_2.jpg" class="" style="cursor:pointer;" alt="소방 합격 설명회">
						</a>
					</div>
					<%end if%>

					<%If CDate(lo_now_date) < CDate("2021-04-17 17:00") then%>
					<div>
						<a href="/s/sobang/event/2021/04020022/index.asp#eventWrap" target="_blank" title="소방 심층분석 설명회">
							<img src="<%=img_main%>/m/2021/0405_sobang_briefbnr/head_bnr01.png" class="" style="cursor:pointer;" alt="소방 심층분석 설명회">
						</a>
					</div>
					<div>
						<a href="/s/sobang/event/2021/04020022/index.asp#eventWrap" target="_blank" title="소방 심층분석 설명회">
							<img src="<%=img_main%>/m/2021/0405_sobang_briefbnr/head_bnr02.png" class="" style="cursor:pointer;" alt="소방 심층분석 설명회">
						</a>
					</div>
					<div>
						<a href="/s/sobang/event/2021/04020022/index.asp#eventWrap" target="_blank" title="소방 심층분석 설명회">
							<img src="<%=img_main%>/m/2021/0405_sobang_briefbnr/head_bnr03.png" class="" style="cursor:pointer;" alt="소방 심층분석 설명회">
						</a>
					</div>
					<%end if%>

					<%If CDate(lo_now_date) >= CDate("2021-04-01") then%>
					<div>
						<a href="/help/notice/view.asp?idx=3143" title="학원 실강 추가 할인">
							<img src="<%=img_main%>/m/2021/0331_premium/main_sky_ban_0331.png" class="" style="cursor:pointer;" alt="학원 실강 추가 할인">
						</a>
					</div>
					<%end if%>
				</div>
			</div>
		</div>
		<style>
			#headertop .hd_wrp .hd_left_bnr.new{margin-top: -40px;}
			#headertop .hd_wrp .hd_left_bnr{display:block;/*margin-top: -60px;width:220px*/margin-top: -58px;width:250px}
			#headertop .hd_wrp .hd_left_bnr.slide > div{padding: 0;}

			#headertop .hd_wrp .hd_left_bnr.n0405 {margin-left: -519px;width:200px;}
			/* #headertop .hd_wrp .hd_left_bnr.n0105.n0112 {margin-left: -540px;} */
			#headertop .hd_wrp .hd_left_bnr.n0405 .hd_slider .slick-arrow {position:absolute;top:50%;z-index:1;transform:translateY(-50%);display:block!important;font-size:0;}
			#headertop .hd_wrp .hd_left_bnr.n0405 .hd_slider .slick-prev {left:-21px;width:7px;height:10px;background:url(<%=img_main%>/m/2021/0105_planner/icon_L.png) no-repeat center;}
			#headertop .hd_wrp .hd_left_bnr.n0405 .hd_slider .slick-next {right:-15px;width:7px;height:10px;background:url(<%=img_main%>/m/2021/0105_planner/icon_R.png) no-repeat center;}
			
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
	

		<h1 class="hd_logo">
			<a href="<%=h_lnk %>" class="sobang_ac <% If CDate(lo_now_date) < CDate("2019-11-10") Then%>logoproject_sobang_pc<% End If %>" title="난공소방학원 메인페이지 바로가기"><img src="<%=img_main%>/s/sobangcampus/logo.png" alt="메가소방학원"></a>
		</h1>


		<!-- hd_right_bnr / S -->
		<div class="hd_right_bnr n0105">
			<div>
				<div class="hd_slider">
					<div>
						<img src="<%=img_main%>/m/2021/0324_sobang_ban/header_ban_sobang.png" class="" alt="난공 공무원학원이 메가소방학원으로 새롭게 시작합니다.">
					</div>
				</div>
			</div>
		</div>
		<style>
			#headertop .hd_wrp .hd_right_bnr.new{margin-top: -40px;}
			#headertop .hd_wrp .hd_right_bnr{display:block;top:0;margin-top: 30px;width:250px}
			#headertop .hd_wrp .hd_right_bnr.slide > div{padding: 0;}
			#headertop .hd_wrp .hd_right_bnr.n0105 {margin-left: -519px;}
			#headertop .hd_wrp .hd_right_bnr.n0105.n0112 {margin-left: -540px;}
			#headertop .hd_wrp .hd_right_bnr.n0105 .hd_slider .slick-arrow {position:absolute;top:50%;z-index:1;transform:translateY(-50%);display:block!important;font-size:0;}
			#headertop .hd_wrp .hd_right_bnr.n0105 .hd_slider .slick-prev {left:-21px;width:7px;height:10px;background:url(<%=img_main%>/m/2021/0105_planner/icon_L.png) no-repeat center;}
			#headertop .hd_wrp .hd_right_bnr.n0105 .hd_slider .slick-next {right:-21px;width:7px;height:10px;background:url(<%=img_main%>/m/2021/0105_planner/icon_R.png) no-repeat center;}
			#headertop .hd_wrp .hd_right_bnr .hd_slider {text-align: right;}
			#headertop .hd_wrp .hd_right_bnr .hd_slider img{display: inline-block;}
			@media (max-width: 1200px){
				#headertop .hd_wrp .hd_right_bnr{display: none;}
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
		</script>
		<!-- hd_right_bnr / E -->




		<a href="javascript:;" class="mobile_navbtn" title="모바일메뉴 열기">
	      <span>-</span>
	      <span>-</span>
	      <span>-</span>
	   </a>


		<div class="hd_utility sobangcampus">
			<h2 class="blindw">메가소방학원 GNB 메뉴</h2>
			<nav role="navigation">
				<!-- 안성 GNB 클래스 : class="mnu_list police"-->

				<!-- 소방학원 -->
				<%If CDate(lo_now_date) < CDate("2021-03-16") then%>
				<i style='position:absolute; top:-35px; left:212px;'><img src="<%=img_main%>/m/2021/0118_sbcampus/gnb_bubble.gif" alt="3월 시작반 OPEN"></i>
				<%elseif CDate(lo_now_date) < CDate("2021-05-17") then%>
				<i style='position:absolute; top:-35px; left:212px; z-index:2;'><img src="<%=img_main%>/m/2021/0316_premium/gnb_bubble.gif" alt="5월 시작반 모집중!"></i>
				<%else%>
				<i style='position:absolute; top:-35px; left:212px; z-index:2;'><img src="<%=img_main%>/m/2021/0514_sbburning/gnb_bubble.gif" alt="5월 시작반 모집중!"></i>
				<%end if%>

				<ul class="mnu_list gongssel sobangcampus">
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
							<li class="dep2_pre"><a href="javascript:void(0);" >관리형 종합 CLASS</a></li>
							<li class="dep2">
								<a href="/c/sobang/academy/burning.asp">
									<%If CDate(lo_now_date) < CDate("2021-03-16") then%>
									ㆍ<span style="display: inline-block;vertical-align: top;"><b>22년대비</b><br>BURNING CLASS(3월시작)<br>(13개월/6개월/2개월)
									<img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block"></span>
									<%elseIf CDate(lo_now_date) < CDate("2021-05-17") then%>
									ㆍ<span style="display: inline-block;vertical-align: top;">BURNING CLASS<img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block">
										<br/>(11개월/6개월/2개월)</span>
									<%else%>
									ㆍ<span style="display: inline-block;vertical-align: top;">BURNING CLASS<img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block">
									<br/>(9개월/6개월/2개월)</span>
									<%end if%>
								</a>
							</li>
							<%If CDate(lo_now_date) < CDate("2021-03-16") then%>
							<li class="dep2_pre"><a href="/c/sobang/event/2020/12210006/index.asp"  title="특강">21년대비</a></li>
							<li class="dep2"><a href="/c/sobang/event/2020/12210006/index.asp" title="프리미엄 독학CLASS">ㆍ프리미엄 독학CLASS</a></li>
							<li class="dep2"><a href="/help/notice/view.asp?idx=3075" title="문제풀이 버닝CLASS">ㆍ문제풀이 버닝CLASS</a></li>
							<%elseIf CDate(lo_now_date) < CDate("2021-05-17") then%>
							<li class="dep2">
								<a href="/c/sobang/event/2020/12210006/index.asp" >
									ㆍ<span style="display: inline-block;vertical-align: top;">프리미엄 독학 CLASS<img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block">
									<br/>(11개월/2개월)</span>
								</a>
							</li>
							<%else%>
							<li class="dep2">
								<a href="/c/sobang/event/2020/12210006/index.asp" >
									ㆍ<span style="display: inline-block;vertical-align: top;">프리미엄 독학 CLASS<img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block">
									<br/>(9개월/2개월)</span>
								</a>
							</li>
							<%end if%>

							<%If CDate(lo_now_date) < CDate("2021-05-17") then%>
							<li class="dep2_pre"><a href="javascript:void(0);" >재도전수험생 전용</a></li>
							<li class="dep2">
								<a href="/c/sobang/academy/rechallenge.asp#eventWrap" >
									ㆍ<span style="display: inline-block;vertical-align: top;">리-챌린지 CLASS<img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block">
									<br/>(11개월 과정)</span>
								</a>
							</li>
							<li class="dep2_pre"><a href="javascript:void(0);" >관리형 면접반</a></li>
							<li class="dep2">
								<a href="/c/sobang/event/2021/04020002/index.asp#eventWrap" >
									ㆍ<span style="display: inline-block;vertical-align: top;">합격드림팀<img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block">
									<br/>(1차/2차 개강반)</span>
								</a>
							</li>
							<%end if%>
							<li class="dep2_pre"><a href="javascript:void(0);" >21년 관리형 면접반</a></li>
							<li class="dep2">
								<a href="/c/sobang/event/2021/04020002/index.asp#eventWrap" >
									ㆍ<span style="display: inline-block;vertical-align: top;">합격드림팀<img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block">
									</span>
								</a>
							</li>
						</ul>
					</li>

					<li <% if gmenu = "3" Then %>class="on"<% End if %>><a class="mli_link" href="javascript:;" title="강의 시간표">강의 시간표</a>
						<ul>
							<%If cdate(lo_now_date) < cdate("2021-06-03 18:00") then%>
							<li class="dep2_pre"><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=&cls=302" title="정규강의">정규강의</a></li>
							<li class="dep2"><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=&cls=302" title="5~6월 기본 이론">ㆍ11 5~6월 기본 이론 <img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></li>
							<li class="dep2_pre"><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=3" title="특강">특강</a></li>
							<li class="dep2"><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=3" title="5~6월 특강">ㆍ5~6월 특강 <img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></li>
							<% else %>
							<li class="dep2_pre"><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=&cls=301" title="정규강의">정규강의</a></li>
							<li class="dep2"><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=&cls=301" title="7~8월 심화이론">ㆍ7~8월 심화이론 <img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></li>
							<li class="dep2"><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=&cls=302" title="7~8월 기본이론">ㆍ7~8월 기본이론 <img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></li>
							<li class="dep2_pre"><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=3" title="특강">특강</a></li>
							<li class="dep2"><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=3" title="7~8월 특강">ㆍ7~8월 특강 <img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></li>
							<% end if %>
						</ul>
					</li>

					<li <% if gmenu = "6" Then %>class="on"<% End if %>><a class="mli_link" href="javascript:;" title="소방 선생님">소방선생님</a>
						<ul>
							<li><a href="/c/sobang/intro/intro4.asp?sub_code=0&tec_code=0#teacher_info_id" title="소방학/관계법규">소방학/관계법규</a></li>
							<li><a href="/c/sobang/intro/intro4.asp?sub_code=1&tec_code=0#teacher_info_id" title="소방국어">소방국어</a></li>
							<li><a href="/c/sobang/intro/intro4.asp?sub_code=2&tec_code=0#teacher_info_id" title="소방영어">소방영어</a></li>
							<li><a href="/c/sobang/intro/intro4.asp?sub_code=3&tec_code=0#teacher_info_id" title="소방한국사">소방한국사</a></li>
							<li><a href="/c/sobang/intro/intro4.asp?sub_code=4&tec_code=0#teacher_info_id" title="소방행정법">소방행정법</a></li>
						</ul>
					</li>
					<li <% if gmenu = "4" Then %>class="on"<% End if %>><a class="mli_link" href="javascript:;" title="1:1 맞춤상담">1:1 맞춤상담</a>
						<ul>
							<li><a href="/c/sobang/consult/index.asp" title="학원 방문상담">학원 방문상담</a></li>
							<li><a href="javascript:;" class="consults_sb" title="학원 전화상담">학원 전화상담</a></li>
							<li><a href="/help/notice/view.asp?idx=2165" title="실시간 카카오톡 상담">실시간 카카오톡 상담</a></li>
							<li><a href="/help/qna/write.asp" title="1:1 상담문의">1:1 상담문의</a></li>
						</ul>
					</li>

					<li <% if gmenu = "2" Then %>class="on"<% End if %>><a class="mli_link" href="javascript:;" title="수험정보">수험정보</a>
						<ul>
							<li class="dep2_pre"><a href="/c/sobang/examinfo/index.asp" title="수험정보">수험정보</a></li>
							<li class="dep2"><a href="/c/sobang/examinfo/guide.asp" title="소방공무원 시험 가이드">ㆍ소방공무원 시험 가이드</a></li>
							<li class="dep2"><a href="/c/sobang/examinfo/schedule.asp" title="2021년 시험 일정">ㆍ2021년 시험 일정</a></li>
							<li class="dep2"><a href="/c/sobang/examinfo/pass.asp" title="경쟁률 · 합격선">ㆍ경쟁률 · 합격선</a></li>
							<li class="dep2"><a href="/c/sobang/examinfo/series.asp" title="채용분야별 모집 정보">ㆍ채용분야별 모집 정보</a></li>
						
							<li class="dep2_pre"><a href="/c/sobang/examinfo/passstrategy/list.asp" title="합격전략">합격전략</a></li>
							<li class="dep2"><a href="/c/sobang/examinfo/passstrategy/list.asp" title="합격전략">ㆍ합격전략</a></li>
							<li class="dep2"><a href="/c/sobang/examinfo/strategy/list.asp" title="과목별 학습전략">ㆍ과목별 학습전략</a></li>
							<li class="dep2_pre"><a href="/c/sobang/examinfo/news/list.asp" title="시험정보">시험정보</a></li>
							<li class="dep2"><a href="/c/sobang/examinfo/news/list.asp" title="수험 뉴스">ㆍ수험 뉴스</a></li>
							<li class="dep2"><a href="/c/sobang/examinfo/notice/list.asp" title="시험 공고">ㆍ시험 공고</a></li>
							
							<li class="dep2_pre"><a href="/c/sobang/examinfo/library/list.asp" title="기출문제&해설강의">기출문제&해설강의</a></li>
							<li class="dep2"><a href="/c/sobang/examinfo/library/list.asp" title="시험 공고">ㆍ기출문제</a></li>
							<li class="dep2"><a href="/c/sobang/examinfo/guide/exam.asp" title="해설강의&총평">ㆍ해설강의&총평 <%If cdate(lo_now_date) >= cdate("2021-04-08") then%><img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block"><%end if%></a></li>
							
						</ul>
					</li>
				</ul>
				<!-- // 소방학원 -->


				<a href="javascript:;" class="menu_x" title="전체메뉴 닫기">
					<span><img src="<%=img_main%>/c/gongssel/main/menu_x.png" alt="전체메뉴 닫기"></span>
				</a>
			</nav>

			<div class="gnb_bgArea"><div class="bgArea sobangcampus" style="display: none;"></div></div>
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
										</dl>
									</li>
								</ul>
							</li>
							<li><a href="/c/sobang/intro/intro1.asp" title="학원소개">학원소개</a></li>


						
							<li class="more">
								<a href="javascript:;" title="종합반">종합반</a>

								<ul class="nextlst subj_list sobangcampus">
									<li>
										<%If CDate(lo_now_date) < CDate("2021-03-16") then%>
										<a href="/c/sobang/academy/burning.asp"><b>22년대비</b><br>BURNING CLASS(3월시작)<br>(13개월/6개월/2개월) 
											<img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block">
										</a>
										<%elseIf CDate(lo_now_date) < CDate("2021-05-17") then%>
										<a href="/c/sobang/academy/burning.asp"><b>BURNING CLASS</b><img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block">
											<br>(11개월/6개월/2개월)
										</a>
										<%else%>
										<a href="/c/sobang/academy/burning.asp"><b>BURNING CLASS</b><img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block">
											<br>(9개월/6개월/2개월)
										</a>
										<%end if%>
									</li>
									<li>
										<%If CDate(lo_now_date) < CDate("2021-03-16") then%>
										<span>
											<a href="/c/sobang/event/2020/12210006/index.asp"><b>21년대비</b></a>
											<a href="/c/sobang/event/2020/12210006/index.asp" title="프리미엄 독학CLASS">- 프리미엄 독학CLASS</a>
											<a href="/help/notice/view.asp?idx=3075" title="문제풀이 버닝CLASS">- 문제풀이 버닝CLASS</a>
										</span>
										<%elseIf CDate(lo_now_date) < CDate("2021-05-17") then%>
										<a href="/c/sobang/event/2020/12210006/index.asp"><b>프리미엄 독학 CLASS</b><img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block">
											<br>(11개월/2개월)
										</a>
										<%else%>
										<a href="/c/sobang/event/2020/12210006/index.asp"><b>프리미엄 독학 CLASS</b><img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block">
											<br>(9개월/2개월)
										</a>
										<%end if%>
									</li>
									<%If CDate(lo_now_date) < CDate("2021-05-17") then%>
									<li>
										<a href="/c/sobang/academy/rechallenge.asp#eventWrap"><b>리-챌린지 CLASS</b><img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block">
											<br>(11개월 과정)</a>
									</li>
									<%end if%>
									<li>
										<a href="/c/sobang/event/2021/04020002/index.asp#eventWrap"><b>합격드림팀</b><img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block">
										</a>
									</li>
								</ul>
							</li>
							
							<li><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=&cls=302" title="강의 시간표">강의 시간표</a></li>
							<li class="more">
								<a href="javascript:;" title="소방선생님">소방선생님</a>

								<ul class="nextlst subj_list sobangcampus">
									<li><a href="/c/sobang/intro/intro4.asp?sub_code=0&tec_code=0#teacher_info_id" title="소방학/관계법규">소방학/관계법규</a></li>
									<li><a href="/c/sobang/intro/intro4.asp?sub_code=1&tec_code=0#teacher_info_id" title="소방국어">소방국어</a></li>
									<li class="third"><a href="/c/sobang/intro/intro4.asp?sub_code=2&tec_code=0#teacher_info_id" title="소방영어">소방영어</a></li>
									<li class="third"><a href="/c/sobang/intro/intro4.asp?sub_code=3&tec_code=0#teacher_info_id" title="소방한국사">소방한국사</a></li>
									<li class="third"><a href="/c/sobang/intro/intro4.asp?sub_code=4&tec_code=0#teacher_info_id" title="소방행정법">소방행정법</a></li>
								</ul>
							</li>
							<li><a href="/c/sobang/consult/index.asp" title="1:1 맞춤상담">1:1 맞춤상담</a></li>
							<li><a href="/c/sobang/examinfo/index.asp" title="수험정보">수험정보</a></li>
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
				<li class="glb_key1"><a href="javascript:history.back(-1);" title="뒤로가기"><span>뒤로가기</span></a></li>
				<li class="glb_key2"><a href="/c/sobang/academy/schedule.asp" title="수강신청"><span>수강신청</span></a></li>
				<li class="glb_key3"><a href="/help/notice/list.asp" title="공지사항"><span>공지사항</span></a></li>
				<li class="glb_key4"><a href="/c/sobang/consult/index.asp" title="방문상담"><span>방문상담</span></a></li>
				<li class="glb_key5"><a href="/c/sobang/intro/intro2.asp" title="위치/연락처"><span>위치/연락처</span></a></li>
			</ul>
		</div>
		<div class="topgo">
			<a href="javascript:;" onclick="glb_movetop(); return false;" title="위로가기">위로가기</a>
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

        });

        // 모바일 top 버튼 (s)
        function glb_movetop() {
            $('html, body').animate({ scrollTop: 0 }, 400);
        }
   // 모바일 top 버튼 (e)
	</script>
	<!-- // 모바일 메뉴 -->




		
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
					<span>보유기간 : 상담 완료 시 까지</span>
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