	<style type="text/css">
	#headertop .gnb_bgArea .bgArea{height:330px;}
	</style>
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
	
	<div class="hd_wrp">
		<!-- hd_left_bnr / S -->
		<div class="hd_left_bnr n0415">
			<div>
				<div class="hd_slider">
					<!-- <%If  cdate(lo_now_date) >= cdate("2021-06-07 18:30") and cdate(lo_now_date) < cdate("2021-06-26 17:00") then%>
					<div>
						<a href="/s/gong/event/2021/06070070/index.asp#eventWrap">
							<img src="<%=img_main%>/m/2021/0607_gong/exhibi_live_bnr.png" class="" style="cursor:pointer;" alt="2022 9급 대비 합격전략 설명회">
						</a>
					</div>
					<%end if%> -->
					<%If cdate(lo_now_date) < cdate("2021-06-19 14:00") then%>
					<div>
						<a href="/c/gongssel/event/2021/02190001/index.asp#eventWrap">
							<img src="<%=img_main%>/m/2021/0415_presentation/pc_bnr.png" class="" style="cursor:pointer;" alt="2022 공무원 시험 대비 합격전략 설명회 예약하기">
						</a>
					</div>
					<% end if %>
					
					<%If cdate(lo_now_date) < cdate("2021-07-03 17:00") then%>
					<div>
						<a href="/c/gongssel/event/2021/02190001/index.asp#eventWrap">
							<img src="<%=img_main%>/m/2021/0507_97brief/main_sky_ban_0628.png" class="" style="cursor:pointer;" alt="2022 9급 대비 합격전략 설명회">
						</a>
					</div>
					<% end if %>
				</div>
			</div>
		</div>
		<style>
			#headertop .hd_wrp .hd_left_bnr{display:block;height: auto;margin-top: -45px;}
			#headertop .hd_wrp .hd_left_bnr >div{padding: 0;}
			#headertop .hd_wrp .hd_left_bnr.slide > div{padding: 0;}
			#headertop .hd_wrp .hd_left_bnr.n0415 {margin-left: -519px;}
			#headertop .hd_wrp .hd_left_bnr.n0415 .hd_slider .slick-arrow {position:absolute;top:50%;z-index:1;transform:translateY(-50%);display:block!important;font-size:0;}
			#headertop .hd_wrp .hd_left_bnr.n0415 .hd_slider .slick-prev {left:-21px;width:7px;height:10px;background:url(https://design.megagong.net/image/m/2021/0105_planner/icon_L.png) no-repeat center;}
			#headertop .hd_wrp .hd_left_bnr.n0415 .hd_slider .slick-next {right:-21px;width:7px;height:10px;background:url(https://design.megagong.net/image/m/2021/0105_planner/icon_R.png) no-repeat center;}

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

		<h1 class="hd_logo">
			<a href="<%=gongssel_main %>" class="gongssel" title="메가공무원학원 메인페이지 바로가기"><img src="<%=img_main%>/c/gongssel/logo_nk.png" alt="메가스터디가 만든 공무원학원 메가공무원학원"></a>
		</h1>

		<% if 1=2 then%>
		<!-- hd_right_bnr / S -->
		<div class="hd_right_bnr n0105">
			<div>
				<div class="hd_slider">
					<div>
						<img src="<%=img_main%>/m/2021/0324_sobang_ban/header_ban_gong.png" class="" alt="난공 공무원학원이 메가공무원학원으로 새롭게 시작합니다.">
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
		<%end if %>


		<a href="javascript:;" class="mobile_navbtn" title="모바일메뉴 열기">
	      <span>-</span>
	      <span>-</span>
	      <span>-</span>
	   </a>

		
		<div class="hd_utility gongssel">
			<h2 class="blindw">공셀 GNB 메뉴</h2>
			<nav role="navigation">
				<%If cdate(lo_now_date) < cdate("2021-05-27 00:00") then%>
				<i style='position:absolute; top:-24px; left:185px; z-index:55;'><img src="<%=img_main%>/m/2021/0520_gongssel/gnb_bubble.gif" alt="5월 시작반 모집 중!"></i>
				<%else%>
				<i style='position:absolute; top:-24px; left:185px; z-index:55;'><img src="<%=img_main%>/m/2021/0528_gongssel/gnb_bubble_01.gif" alt="7월 시작반 모집 중!"></i>
				<%end if%>
				
				<%If cdate(lo_now_date) < cdate("2021-05-25 00:00") then%>
				<i style='position:absolute; top:-24px; left:335px; z-index:55;'><img src="<%=img_main%>/m/2021/0409_gongssel/gnb_bubble_5.gif" alt="5월 시작반 모집 중!"></i>
				<%elseIf cdate(lo_now_date) < cdate("2021-05-27 00:00") then%>
				<i style='position:absolute; top:-24px; left:335px; z-index:55;'><img src="<%=img_main%>/m/2021/0525_gongssel/gnb_bubble_7.gif" alt="7월 시작반 모집 중!"></i>
				<%else%>
				<i style='position:absolute; top:-24px; left:335px; z-index:55;'><img src="<%=img_main%>/m/2021/0528_gongssel/gnb_bubble_01.gif" alt="7월 시작반 모집 중!"></i>
				<%end if%>

				<%If cdate(lo_now_date) < cdate("2021-05-27 00:00") then%>
				<i style='position:absolute; top:-24px; left:490px; z-index:55;'><img src="<%=img_main%>/m/2021/0409_gongssel/gnb_bubble_4.gif" alt="4월 시작반 모집 중!"></i>
				<%else%>
				<i style='position:absolute; top:-24px; left:490px; z-index:55;'><img src="<%=img_main%>/m/2021/0528_gongssel/gnb_bubble_02.gif" alt="법원직 독학반 모집 중!"></i>
				<%end if%>
				<!-- 공셀-->
				<ul class="mnu_list gongssel">
					<li <% if gmenu = "1" Then %>class="on"<% End if %> ><a class="mli_link" href="javascript:;" title="학원소개">학원소개</a>
						<ul>
							<!-- 클릭된 a태그에 class="on" -->
							<li><a href="/c/gongssel/intro/intro6.asp">원장 인사말</a></li>
							<li><a href="/c/gongssel/help/notice/list.asp">공지사항 <img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></li>
							<li><a href="/c/gongssel/consult/index.asp">방문 상담 예약</a></li>
							<li><a href="/c/gongssel/qna/list.asp">온라인 상담</a></li>
							<li><a href="/c/gongssel/intro/intro7.asp">자주 묻는 질문(FAQ)</a></li>
							<li><a href="/c/gongssel/intro/intro8.asp">원장과 소통하기</a></li>
							<li><a href="/c/gongssel/presentation/index.asp" style="letter-spacing:-0.08em;">설명회 · 공개특강 신청</a></li>
							<% If 1=2 Then %>
							<li><a href="/c/gongssel/intro/intro3_online.asp" style="letter-spacing:-0.17em;">온라인 좌석 예약 시스템 <img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></a></li>
							<% end if %>
							<li><a href="/c/gongssel/intro/intro3.asp">완전 학습 시스템</a></li>
							<li><a href="/c/gongssel/intro/intro9.asp">학원시설 </a></li>
							<li><a href="/c/gongssel/intro/intro5.asp">오시는 길</a></li>
						</ul>
					</li>
					
					<li <% if gmenu = "4" Then %>class="on"<% End if %> ><a class="mli_link" href="javascript:;" title="9급 시간표">9급 시간표</a><!-- <span class="hd_bubble"><img src="<%=img_main%>/c/gongssel/main/gongssel_dirbtn_icon2.png" alt="공개 예정입니다." style="margin-left:9px"></span> -->
						<ul class="timeTable">
							<!-- <li class="dep2_pre"><a href="/c/gongssel/schedule/2021/overall/overall_03_all_9.asp" >종합반</a></li>
								<li class="dep2"><a href="/c/gongssel/schedule/2021/overall/overall_03_all_9.asp" >ㆍ3~4월 종합반<%if CDate(lo_now_date) < CDate("2021-02-03") then%><img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block" /><% End if %></a></li> -->
							<li class="dep2_pre"><a href="/c/gongssel/schedule/2021/overall/overall_05_all_9.asp" >메가 종합반</a></li>
							<%If cdate(lo_now_date) < cdate("2021-05-25") then%>
							<li class="dep2"><a href="/c/gongssel/schedule/2021/overall/overall_05_all_9.asp" >ㆍ5~6월 메가 순환종합반<%if CDate(lo_now_date) < CDate("2021-04-25") then%><img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block" /><% End if %></a></li>	
							<%else%>
							<li class="dep2"><a href="/c/gongssel/schedule/2021/overall/overall_05_all_9.asp" >ㆍ7~8월 메가 순환종합반<%if CDate(lo_now_date) < CDate("2021-04-25") then%><img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block" /><% End if %></a></li>	
							<% end if %>

							<%If cdate(lo_now_date) < cdate("2021-05-25") then%>
							<li class="dep2_pre"><a href="/c/gongssel/schedule/2021/schedule2.asp?mcode=11&gcd=9" >단과 과정</a></li>
							<li class="dep2"><a href="/c/gongssel/schedule/2021/schedule2.asp?mcode=11&gcd=9" >ㆍ6월 전략특강<img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block" /></a></li>
							<li class="dep2"><a href="/c/gongssel/schedule/2021/am/am_en_4_9.asp">ㆍ6월 영어 집중반<% If cdate(lo_now_date) < cdate("2021-05-15") Then %><img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block" /><% End if %></a></li>
							<li class="dep2"><a href="/c/gongssel/schedule/2021/schedule.asp?mcode=11&gcd=9" >ㆍ5~6월 기본이론단과<% If cdate(lo_now_date) < cdate("2021-04-25") Then %><img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block" /><% End if %></a></li>
							<li class="dep2"><a href="/c/gongssel/schedule/2021/am/am_final.asp">ㆍ5월 파이널 과정<% If cdate(lo_now_date) < cdate("2021-04-28") Then %><img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block" /><% End if %></a></li>
							<%else%>
							<li class="dep2_pre"><a href="/c/gongssel/schedule/2021/schedule2.asp?mcode=11&gcd=9" >단과 과정</a></li>
							<li class="dep2"><a href="/c/gongssel/schedule/2021/schedule.asp?mcode=11&gcd=9" >ㆍ7~8월 기본이론단과<% If cdate(lo_now_date) < cdate("2021-06-09") Then %><img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block" /><% End if %></a></li>
							<li class="dep2"><a href="/c/gongssel/schedule/2021/schedule2.asp?mcode=11&gcd=9" >ㆍ6월 전략특강<img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block" /></a></li>
							<li class="dep2"><a href="/c/gongssel/schedule/2021/am/am_en_4_9.asp">ㆍ6월 영어 집중반<% If cdate(lo_now_date) < cdate("2021-05-15") Then %><img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block" /><% End if %></a></li>
							<%If cdate(lo_now_date) < cdate("2021-05-27") then%>
							<li class="dep2"><a href="/c/gongssel/schedule/2021/am/am_final.asp">ㆍ5월 파이널 과정<% If cdate(lo_now_date) < cdate("2021-04-28") Then %><img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block" /><% End if %></a></li>
							<% end if %>
							<% end if %>

							<li class="dep2_pre"><a href="<%=gongssel_main %>/c/gongssel/schedule/2021/interview/index.asp">면접 과정</a></li>
							<%If cdate(lo_now_date) < cdate("2021-05-31 00:00") then%>
							<li class="dep2"><a href="<%=gongssel_main %>/c/gongssel/schedule/2021/interview/index.asp" >ㆍ관리형 면접반<% If cdate(lo_now_date) < cdate("2021-05-01") Then %><img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block" /><% End if %></a></li>
							<% else %>
							<li class="dep2"><a href="<%=gongssel_main %>/c/gongssel/schedule/2021/interview/index.asp" >ㆍ서울시/지방직 대비 <br/>&ensp;&ensp;면접반<% If cdate(lo_now_date) < cdate("2021-07-01") Then %><img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block" /><% End if %></a></li>
							<% end if %>

							<!-- <li class="dep2_pre"><a href="/c/gongssel/schedule/2021/en/en_01.asp" >특별반</a></li>
								<li class="dep2"><a href="/c/gongssel/schedule/2021/en/en_01.asp" >ㆍ영어 특별반</a></li> -->
							</ul>
						</li>
						
						<li <% if gmenu = "9" Then %>class="on" <% End if %>><a class="mli_link" href="javascript:;" title="7급 시간표">7급 시간표</a><% if false Then %><i class="gongssel_i self"><img src="<%=img_main%>/c/gongssel/self/gongssel_gnb_self.png" alt="체험단모집중!"></i><% End if %>
							<ul class="timeTable">
								<!-- <li class="dep2_pre"><a href="/c/gongssel/schedule/2021/overall/overall_03_all_7.asp?grd_code=7" title="종합반">종합반</a></li>
								<li class="dep2"><a href="/c/gongssel/schedule/2021/overall/overall_03_all_7.asp?grd_code=7" style="letter-spacing: -2px;" title="3~4월 기출 마스터 종합반">ㆍ3~4월 기출 마스터 종합반<%if CDate(lo_now_date) < CDate("2021-02-03") then%><img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block" /><% End if %></a></li> -->
								<li class="dep2_pre"><a href="/c/gongssel/schedule/2021/overall/overall_05_all_7.asp" >메가 종합반</a></li>
								<%If cdate(lo_now_date) < cdate("2021-05-25") then%>
								<li class="dep2"><a href="/c/gongssel/schedule/2021/overall/overall_05_all_7.asp" >ㆍ5~6월 메가 순환종합반<%if CDate(lo_now_date) < CDate("2021-04-25") then%><img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block" /><% End if %></a></li>
								<%else%>
								<li class="dep2"><a href="/c/gongssel/schedule/2021/overall/overall_05_all_7.asp" >ㆍ7~8월 메가 순환종합반<%if CDate(lo_now_date) < CDate("2021-04-25") then%><img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block" /><% End if %></a></li>
								<% end if %>
									
								<%If cdate(lo_now_date) < cdate("2021-05-25") then%>
								<li class="dep2_pre"><a href="/c/gongssel/schedule/2021/am/am_3_7.asp" >단과 과정</a></li>
								<li class="dep2"><a href="/c/gongssel/schedule/2021/schedule.asp?mcode=11&gcd=7" >ㆍ5~6월 기본/문풀 단과<% If cdate(lo_now_date) < cdate("2021-04-25") Then %><img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block" /><% End if %></a></li>
								<% else %>
								<li class="dep2_pre"><a href="/c/gongssel/schedule/2021/schedule.asp?mcode=11&gcd=7" >단과 과정</a></li>
								<li class="dep2"><a href="/c/gongssel/schedule/2021/schedule.asp?mcode=11&gcd=7" >ㆍ7~8월 기본이론<br/>&ensp;&ensp;/파이널 단과<% If cdate(lo_now_date) < cdate("2021-06-09") Then %><img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block" /><% End if %></a></li>
								<% end if %>							
							<!--li class="dep2"><a href="/c/gongssel/schedule/2020/am_12_7_psat.asp">ㆍPSAT 단과<% If cdate(lo_now_date) < cdate("2020-12-01") Then %><img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block" /><% End if %></a></li-->
							
						</ul>
					</li>
					
					<%If cdate(lo_now_date) < cdate("2021-04-01") then%>  
					<li <% if gmenu = "10" Then %>class="on" <% End if %>><a class="mli_link" href="javascript:;" title="군무원 시간표">군무원 시간표</a>
						<ul class="timeTable">
							<li class="dep2_pre"><a href="/c/gongssel/schedule/2021/army/overall_gather_3.asp" title="메가 종합반">메가 종합반</a></li>
							<li class="dep2"><a href="/c/gongssel/schedule/2021/army/overall_gather_3.asp" style="letter-spacing: -2px;" title="3~4월 단원문풀 종합반 ">ㆍ3~4월 단원문풀 종합반 <%if CDate(lo_now_date) < CDate("2021-02-03") then%><img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block" /><% End if %></a></li>

							<li class="dep2_pre"><a href="/c/gongssel/schedule/2021/army/am_3.asp" title="정규 과정">정규 과정</a></li>
							<li class="dep2"><a style="letter-spacing: -0.09em;" href="/c/gongssel/schedule/2021/army/am_3.asp" title="3~4월 정규 과정">ㆍ3~4월 정규 과정<% If cdate(lo_now_date) < cdate("2021-02-04") Then %><img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block" /><% End if %></a></li>
							
						</ul>
					</li>
					<% else %>
					<li <% if gmenu = "10" Then %>class="on" <% End if %>><a class="mli_link" href="javascript:;" title="법원직 시간표">법원직 시간표</a>
						<ul class="timeTable">
							<li class="dep2_pre"><a href="/c/gongssel/schedule/2021/low/low01.asp" title="종합반">종합반</a></li>
							<li class="dep2"><a href="/c/gongssel/schedule/2021/low/low01.asp" style="letter-spacing: -2px;" title="4~7월 법원직 순환반">ㆍ4~7월 법원직 순환반 <%if CDate(lo_now_date) < CDate("2021-05-01") then%><img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block" /><% End if %></a></li>
							<%If cdate(lo_now_date) >= cdate("2021-05-27") then%>  
							<li class="dep2"><a href="/c/gongssel/schedule/2021/low/low_self.asp" style="letter-spacing: -2px;" title="법원직 독학반">ㆍ법원직 독학반 <%if CDate(lo_now_date) < CDate("2021-06-11") then%><img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block" /><% End if %></a></li>
							<% end if %>
							<li class="dep2_pre"><a href="/c/gongssel/schedule/2021/low/low02.asp" title="단과 과정">단과 과정</a></li>
							<li class="dep2"><a style="letter-spacing: -0.09em;" href="/c/gongssel/schedule/2021/low/low02.asp" title="4~7월 기본이론 단과">ㆍ4~7월 기본이론 단과 <% If cdate(lo_now_date) < cdate("2021-04-29") Then %><img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block" /><% End if %></a></li>
						</ul>
					</li>
					<% end if %>

					<li <% if gmenu = "3" Then %>class="on"<% End if %> ><a class="mli_link" href="javascript:;" title="프리미엄 관리형 자습관">프리미엄관리형자습관</a><% if false Then %><i class="gongssel_i self"><img src="<%=img_main%>/c/gongssel/self/gongssel_gnb_self.png" alt="체험단모집중!"></i><% End if %>
						<ul>
							<li><a href="/c/gongssel/self/index.asp" target="_blank">프리미엄 관리형 자습관</a></li>
							<li><a href="/c/gongssel/pass/index.asp">명예의 전당 </a></li>
							<li><a href="/c/gongssel/interview/list.asp">합격생 인터뷰 <% if is_aca_interview_new then %><img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block"><% end if %></a></li>
							<li><a href="/c/gongssel/review/list.asp">이용후기 <img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block" /></a></li>
							<li><a href="/c/gongssel/review/list.asp?review_gbn=2">체험수기 <img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block" /></a></li>
						</ul>
					</li>
					<li <% if gmenu = "2" Then %>class="on"<% End if %> ><a class="mli_link" href="javascript:;" title="선생님 커리큘럼">선생님 커리큘럼</a>
						
						<ul>
							<li><a href="/c/gongssel/teacher/index.asp?sub_code=all&tec_code=0#teacher_info_id" title="전체">전체</a></li>
							<li><a href="/c/gongssel/teacher/index.asp?sub_code=0&tec_code=0#teacher_info_id" title="국어">국어</a></li>
							<li><a href="/c/gongssel/teacher/index.asp?sub_code=1&tec_code=0#teacher_info_id" title="영어">영어</a></li>
							
							<li><a href="/c/gongssel/teacher/index.asp?sub_code=2&tec_code=0#teacher_info_id" title="한국사">한국사</a></li>
							<li><a href="/c/gongssel/teacher/index.asp?sub_code=3&tec_code=0#teacher_info_id" title="행정학">행정학</a></li>
							<li><a href="/c/gongssel/teacher/index.asp?sub_code=4&tec_code=0#teacher_info_id" title="행정법">행정법</a></li>
							<li><a href="/c/gongssel/teacher/index.asp?sub_code=5&tec_code=0#teacher_info_id" title="선택과목">선택과목</a></li>
							<li><a href="/c/gongssel/assessmnt/eval.asp">강의평가 </a></li>
						</ul>
					</li>
					<li <% if gmenu = "8" Then %>class="on"<% End if %> ><a class="mli_link" href="javascript:;" title="합격전략 LAB">합격전략 LAB</a>
						<ul>
							<li><a href="/c/gongssel/examinfo/index.asp#mContainer" title="공무원 합격전략 LAB">공무원 합격전략 LAB</a></li>
						</ul>
					</li>
					<% if 1=2 then%>
					<li <% if gmenu = "8" Then %>class="on"<% End if %> ><a class="mli_link" href="javascript:;" title="수험정보">수험정보</a>
						<ul>
							<li><a href="/c/gongssel/examinfo/index.asp#mContainer" title="공무원 수험정보">공무원 수험정보</a></li>
						</ul>
					</li>
					<%end if %>
				</ul>
				<!-- // 공셀-->

				<a href="javascript:;" class="menu_x" title="전체메뉴 닫기">
					<span><img src="<%=img_main%>/c/gongssel/main/menu_x.png" alt="전체메뉴 닫기"></span>
				</a>

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
										</dl>
									</li>
								</ul>
							</li>
							<li><a href="/c/gongssel/intro/intro6.asp" title="학원소개">학원소개</a></li>

							<!-- <li><a href="/c/gongssel/schedule/2021/overall/overall_03_all_9.asp" title="9급 시간표">9급 시간표</a></li> -->
							<!-- <li><a href="/c/gongssel/schedule/2021/overall/overall_03_all_7.asp?grd_code=7" title="7급 시간표">7급 시간표</a></li> -->
							<li><a href="/c/gongssel/schedule/2021/overall/overall_05_all_9.asp" title="9급 시간표">9급 시간표</a></li>							
							<li><a href="/c/gongssel/schedule/2021/overall/overall_05_all_7.asp" title="7급 시간표">7급 시간표</a></li>

							<%If cdate(lo_now_date) < cdate("2021-04-01") then%>  
							<li><a href="/c/gongssel/schedule/2021/army/overall_gather_3.asp" title="군무원 시간표">군무원 시간표</a></li>
							<% else %>
							<li><a href="/c/gongssel/schedule/2021/low/low01.asp" title="법원직 시간표">법원직 시간표</a></li>
							<% end if %>
		                    <li><a href="/c/gongssel/self/index.asp" title="프리미엄 관리형 자습관">프리미엄 관리형 자습관</a></li>
							
							<li class="more">
								<a href="javascript:;" title="선생님 커리큘럼">선생님 커리큘럼</a>
								<ul class="nextlst subj_list gongssel">
									<li><a href="/c/gongssel/teacher/index.asp?sub_code=all&tec_code=0#teacher_info_id" title="전체">전체</a></li>
									<li><a href="/c/gongssel/teacher/index.asp?sub_code=0&tec_code=0#teacher_info_id" title="국어">국어<% If cdate(lo_now_date) < cdate("2020-11-19") Then %><img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block" /><% End if %></a></li>
									<li><a href="/c/gongssel/teacher/index.asp?sub_code=1&tec_code=0#teacher_info_id" title="영어">영어<% If CDate(lo_now_date) < CDate("2020-10-06") Then %><img src="<%=img_main%>/common/ic_new.gif" alt="새로운 게시글" style="vertical-align:middle;margin-left:3px;display:inline-block"><%End if%></a></li>
									<li><a href="/c/gongssel/teacher/index.asp?sub_code=2&tec_code=0#teacher_info_id" title="한국사">한국사</a></li>
									<li><a href="/c/gongssel/teacher/index.asp?sub_code=3&tec_code=0#teacher_info_id" title="행정학">행정학</a></li>
									<li><a href="/c/gongssel/teacher/index.asp?sub_code=4&tec_code=0#teacher_info_id" title="행정법">행정법</a></li>
									<li><a href="/c/gongssel/teacher/index.asp?sub_code=5&tec_code=0#teacher_info_id" title="선택과목">선택과목</a></li>
									<li><a href="/c/gongssel/assessmnt/eval.asp" title="강의평가">강의평가</a></li>
								</ul>
							</li>

							<li><a href="/c/gongssel/examinfo/index.asp" title="합격전략 LAB">합격전략 LAB</a></li>
							<% if 1=2 then%>
							<li><a href="/c/gongssel/examinfo/index.asp" title="수험정보">수험정보</a></li>
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
	<div class="glbal_menu">
		<div class="gm_inner">
			<ul>
				<li class="glb_key1"><a href="javascript:history.back(-1);" title="뒤로가기"><span>뒤로가기</span></a></li>
				<li class="glb_key2"><a href="/c/gongssel/schedule/2021/overall/overall_05_all_9.asp" title="수준별 시간표"><span>수준별 시간표</span></a></li>
				<li class="glb_key3"><a href="/c/gongssel/help/notice/list.asp" title="공지사항"><span>공지사항</span></a></li>
				<li class="glb_key4"><a href="/mypage/index.asp" title="마이페이지"><span>마이페이지</span></a></li>
				<li class="glb_key5"><a href="/mypage/study/my_study.asp" title="내 강의실"><span>내 강의실</span></a></li>
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




	<!--  공셀 전체메뉴 호버 -->
	<script type="text/javascript">


		var gongsselAllmenu = $('#headertop .hd_utility .mnu_list.gongssel > li > ul');
		$("#headertop .hd_utility .mnu_list > li a").click(function () {
			if(gongsselAllmenu.css("display") == "none"){
				gongsselAllmenu.slideDown(150);
				$('.gnb_bgArea .bgArea').slideDown(150);
				$(this).parents().parents().addClass("on");
				$('.menu_x').addClass("on");
				$('#headertop .hd_utility .right_btn').hide();
			}else{
				gongsselAllmenu.slideUp(150);
				$('.gnb_bgArea .bgArea').slideUp(150);
				$(this).parents().parents().removeClass("on");
				$('.menu_x').removeClass("on");
				$('#headertop .hd_utility .right_btn').show();
			}
		});
		$("#headertop .hd_utility .menu_x").click(function () {
			if(gongsselAllmenu.css("display") == "none"){
				gongsselAllmenu.slideDown(150);
				$('.gnb_bgArea .bgArea').slideDown(150);
				$('#headertop .hd_utility .mnu_list').addClass("on");
				$('.menu_x').addClass("on");
				$('#headertop .hd_utility .right_btn').hide();
			}else{
				gongsselAllmenu.slideUp(150);
				$('.gnb_bgArea .bgArea').slideUp(150);
				$('#headertop .hd_utility .mnu_list').removeClass("on");
				$('.menu_x').removeClass("on");
				$('#headertop .hd_utility .right_btn').show();
			}
		});


	</script>
