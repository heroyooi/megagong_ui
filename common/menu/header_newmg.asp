<!-- header -->
<header id="headertop">
	<div class="hd_top">
		<div class="inner">
			<ul class="homep_link">
				<!-- 현재 홈페이지 li에 클래스 on-->
				<li class="on"><a href="javascript:;" title="공무원">공무원</a></li>
				<li><a href="javascript:;" title="소방">소방</a></li>
				<li><a href="javascript:;" title="공무원/경찰전문관">공무원/경찰전문관</a></li>
			</ul>
			<div class="login_wrap">
				<%If cook_id = "" then%>
					<!-- 로그인 전 정보 영역 -->
					<form name="frmLogin_top" method="post" action="<%if inStr(hostnm, "dev") = 0 Then %>https://www.megacst.com<% End if %>/member/login_sql.asp?site_gubun=<%=hcode%>" >
						<ul class="login_after">
							<li><a href="<%=httpsnm%>/member/login.asp">로그인</a></li>
							<li><a href="<%=httpsnm%>/member/agree.asp">회원가입</a></li>
							<li><a href="/member/memb_findid.asp?site_gubun=<%=hcode%>"> 아이디·비밀번호찾기</a></li>
							<li><a href="<%=httpsnm%>/member/login.asp">마이페이지</a></li>
						</ul>
					</form>
					<!-- 로그인 전 정보 영역 -->
				<% Else %>
					<%
						'쪽지
						strSql = ""
						strSql = strSql & "SELECT	TOP 3 NM_MAS_NO, ND_IDX, NM_TITLE, NM_SEND_DT = (CASE WHEN ND_SEND_DT IS NULL THEN CONVERT(CHAR(10),NM_SEND_DT,126) ELSE CONVERT(CHAR(10),ND_SEND_DT,126) END), ND_KEEP_YN "
						strSql = strSql & "FROM     MS_NOTE_MAS WITH(NOLOCK) "
						strSql = strSql & "JOIN     MS_NOTE_DTL WITH(NOLOCK) ON NM_MAS_NO = ND_MAS_NO "
						strSql = strSql & "AND		ND_DEL_YN = 'N' "
						strSql = strSql & "AND		ND_READ_YN = 'N' "
						strSql = strSql & "AND		ND_MEM_ID = '" & cook_id & "' "
						strSql = strSql & "ORDER BY NM_SEND_DT DESC "
						Set Rs = DBexec(strSql, "study")
						If not Rs.Eof Then
							ar_paper = Rs.GetRows()
						End if
						RSClose(Rs)

						p_new = "N"
						if isArray(ar_paper) Then
							if DateDiff("D", ar_paper(3, 0), Date()) <= 7 Then
								p_new = "Y"
							End if
						End if
					%>
					<!-- 로그인 후 정보 영역 -->
					<ul class="login_after">
						<li class="welcome"><span class="pointSt"><%=COOK_NAME %></span>님</li>
						<li class="mypagebox">
							<a class="mypage_txt" id="myTopBtn" style="cursor:pointer;">마이페이지</a>
							<div class="mypage_infowrap" id="myTopLayer" >
								<ul class="mypage_list">
									<li><a href="/mypage/"><span class="txt" >마이페이지</span></a></li>
									<li><a href="/mypage/pay/my_cart.asp"><span class="txt" >장바구니</span></a></li>
									<li><a href="/mypage/order/my_order.asp"><span class="txt" >주문배송조회</span></a></li>
									<li><a href="/mypage/order/my_campus.asp"><span class="txt" >학원강좌조회</span></a></li>
									<li><a href="/mypage/bonus/my_coupon.asp"><span class="txt" >쿠폰</span></a></li>
									<li><a href="/member/Account_Chk.asp"><span class="txt" >정보수정</span></a></li>
								</ul>
							</div>
							<!--쪽지 리스트끝-->
						</li>
						<li><a href="/mypage/study/my_study.asp"> 내강의실 </a></li>
						<li><a href="/mypage/paper/my_paper.asp">쪽지 <% if p_new = "Y" Then %> <span class="pointSt"><strong>N</strong></span><% End if %></a></li>
						<li><a href="/member/logout_sql.asp"> 로그아웃 </a></li>
					</ul>
					<!-- 로그인 후 정보 영역 -->
				<% End if %>
			</div>
		</div>

		<script type="text/javascript">
		    $(document).ready(function () {
		        $("#myTopBtn").click(function () {
		            $("#myTopLayer").slideToggle("fast");
		        })
		    })
		</script>
	</div>
	<div class="hd_wrp">

		<h1 class="hd_logo">
			<a href="/gongcampus.asp" class="gong" title="메가공무원"><img src="<%=img_main%>/s/gong/logo.png" alt="메가공무원"></a>
		</h1>

		<a href="javascript:;" class="mobile_navbtn" title="모바일메뉴 열기">
	      <span>-</span>
	      <span>-</span>
	      <span>-</span>
	   </a>

		<div class="hd_utility">
			<nav role="navigation">
				<!-- 안성 GNB 클래스 : class="mnu_list police"-->
				<!-- 공무원,소방 온라인-->
				<ul class="mnu_list">
					<li><a class="mli_link tc_view" href="javascript:;" title="공무원선생님">공무원선생님</a></li>
					<li><a class="mli_link" href="/vod/vod_chr_list.asp" title="전체강좌">전체강좌</a></li>
					<li><a class="mli_link" href="/book/bookshop.asp" title="온라인서점">온라인서점</a></li>
					<li><a class="mli_link" href="/help/notice/list.asp" title="학습지원센터">학습지원센터</a></li>
				</ul>
				<!-- // 공무원,소방 온라인-->

				<!-- 소방학원 -->
				<ul class="mnu_list">
					<li><a class="mli_link " href="javascript:;" title="학원소개">학원소개</a></li>
					<li><a class="mli_link tc_view" href="javascript:;" title="소방 선생님">소방 선생님</a></li>
					<li><a class="mli_link" href="javascript:;" title="학원강의">학원강의</a></li>
					<li><a class="mli_link" href="javascript:;" title="학습지원센터">학습지원센터</a></li>
				</ul>
				<!-- // 소방학원 -->

				<!-- 안성경찰 -->
				<ul class="mnu_list police">
					<li><a class="mli_link " href="javascript:;" title="학원소개">학원소개</a>
						<ul>
							<li><a href="/c/ansung/intro/intro1.asp">교육철학</a></li>
							<li><a href="/c/ansung/intro/intro3.asp">학원특장점</a></li>
							<li><a href="/c/ansung/intro/intro4_2019.asp">교수진 소개</a></li>
							<li><a href="/c/ansung/intro/intro5.asp">학원시설</a></li>
							<li><a href="/c/ansung/intro/intro6.asp">학원 오시는길</a></li>
						</ul>
					</li>
					<li><a class="mli_link" href="javascript:;" title="공무원전문관">공무원전문관</a>
						<ul>
							<li><a href="/c/ansung/info2/index.asp">공무원 프로그램</a></li>
							<li><a href="/c/ansung/info2/guide01.asp">공무원 수험 가이드</a></li>
							<li><a href="/c/ansung/info2/info2.asp">학사일정</a></li>
							<li><a href="/c/ansung/info2/info3.asp">하루 일과표</a></li>
							<li><a href="/c/ansung/info2/info5.asp">입학준비물</a></li>
							<li><a href="/c/ansung/info2/info6.asp">환불규정</a></li>
						</ul>
					</li>
					<li><a class="mli_link" href="javascript:;" title="경찰전문관">경찰전문관</a>
						<ul>
							<li><a href="/c/ansung/info">경찰 프로그램</a></li>
							<li><a href="/c/ansung/info/info2.asp">학사일정</a></li>
							<li><a href="/c/ansung/info/info3.asp">하루 일과표</a></li>
							<li><a href="/c/ansung/info/info5.asp">입학 준비물</a></li>
							<li><a href="/c/ansung/info/info6.asp">환불규정</a></li>
						</ul>
					</li>
					<li><a class="mli_link" href="javascript:;" title="교육과 생활">교육과생활</a>
						<ul>
							<li><a href="/c/ansung/pass/pass1.asp">합격관리 시스템</a></li>
							<li><a href="/c/ansung/pass/pass8_4.asp">명예의 전당</a></li>
						</ul>
					</li>
					<li><a class="mli_link" href="javascript:;" title="소통과 공감">소통과공감</a>
						<ul>
							<li><a href="/c/ansung/community/notice/list.asp">부모님을 위한 공간</a></li>
							<li><a href="/c/ansung/community/today/list.asp">오늘의 명상</a></li>
							<li><a href="/c/ansung/community/police_pds/list.asp">경찰반 자료</a></li>
							<li><a href="/c/ansung/community/gong_pds/list.asp">공무원반 자료</a></li>
						</ul>
					</li>
					<li><a class="mli_link" href="javascript:;" title="학원상담">학원상담</a>
						<ul>
							<li><a href="/c/ansung/counselling/notice/list.asp">공지 사항</a></li>
							<li><a href="/c/ansung/counselling/faq/list.asp">자주하는 질문</a></li>
							<li><a href="/c/ansung/counselling/qna/list.asp">1:1 상담</a></li>
							<li><a href="/c/ansung/counselling/guidebook/list.asp">학원 가이드북 신청</a></li>
						</ul>
					</li>
				</ul>
				<!-- // 안성경찰 -->


				<div class="right_btn">
					<!-- 온라인소방 노출 링크 (소방학원) -->
					<a href="javascript:;" title="노량진소방학원"><span><img src="<%=img_main%>/s/sobang/main/sobang_ac_dirbtn.jpg" alt="노량진소방학원"></span></a>>
				</div>

			</nav>

			<div class="gnb_bgArea"><div class="bgArea" style="display: none;"></div></div>
		</div>

		<div class="mb_rightmenu">
			<a href="/mypage/study/my_study.asp" title="내 강의실">내 강의실</a>
		</div>
	</div>

	<!-- 메뉴 토글 화면 -->
	<div class="hd_bottom<% if instr(1, NowUrl, "/gongcampus_newmg.asp") > 0 Then %> mn<% End if %>">


		<div class="hdbt_wrp">


			<!-- 공무원 선생님 -->
			<ul class="hdtea_all">
				<!-- 190410 DP 수정-->
				<li>
					<dl>
						<dt>국어</dt>
						<dd><a href="/teacher/home.asp?bcode=gilltoraebi" title="이윤주">이윤주</a></dd>
                        <dd><a href="/teacher/home.asp?bcode=thirdheaven" title="강세진">강세진</a></dd>
						<dd><a href="/teacher/home.asp?bcode=yw1122" title="서영우">서영우</a></dd>
					</dl>
				</li>
				<li class="eng_tea">
					<dl>
						<dt>영어</dt>
						<dd><a href="/teacher/home.asp?bcode=powergrammar" title="강수정">강수정</a></dd>
						<dd><a href="/teacher/home.asp?bcode=megalara" title="라라">라라</a></dd>
						<dd><a href="/teacher/home.asp?bcode=sooyeon" title="박수연">박수연</a></dd>
						<dd><a href="/teacher/home.asp?bcode=jjangss78" title="장대영">장대영</a></dd>
						<dd><a href="/teacher/home.asp?bcode=ah02" title="송아영">송아영</a></dd>
						<dd><a href="/teacher/home.asp?bcode=kcross725" title="김태형">김태형</a></dd>
					</dl>
				</li>
				<!-- // 190410 DP 수정-->
				<li>
					<dl>
						<dt>한국사</dt>
						<dd><a href="/teacher/home.asp?bcode=megaggoarimy" title="고아름">고아름</a></dd>
						<dd><a href="/teacher/home.asp?bcode=pakkihun" title="박기훈">박기훈</a></dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>행정법</dt>
						<dd><a href="/teacher/home.asp?bcode=jhk5103" title="정희경">정희경</a></dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>사회</dt>
						<dd><a href="/teacher/home.asp?bcode=sinki79" title="서호성">서호성</a></dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>회계학</dt>
						<dd><a href="/teacher/home.asp?bcode=huttoi" title="박종하">박종하</a></dd>
					</dl>
				</li>
			</ul>
			<!-- // 공무원 선생님 -->


			<!-- 소방 선생님 -->
			<ul class="hdtea_all sobang">
				<li>
					<dl>
						<dt>소방학/관계법규</dt>
						<dd><a href="/teacher/home.asp?bcode=gilltoraebi" title="곽동진">곽동진</a></dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>소방국어</dt>
						<dd><a href="/teacher/home.asp?bcode=powergrammar" title="이윤주">이윤주</a></dd>
						<dd><a href="/teacher/home.asp?bcode=megalara" title="강세진">강세진</a></dd>
					</dl>
				</li>
				<li class="eng_tea">
					<dl>
						<dt>소방영어</dt>
						<dd><a href="/teacher/home.asp?bcode=megaggoarimy" title="박수연">박수연</a></dd>
						<dd><a href="/teacher/home.asp?bcode=pakkihun" title="김태형">김태형</a></dd>
						<dd><a href="/teacher/home.asp?bcode=pakkihun" title="송아영">송아영</a></dd>
						<dd><a href="/teacher/home.asp?bcode=pakkihun" title="라라">라라</a></dd>
						<dd><a href="/teacher/home.asp?bcode=pakkihun" title="장대영">장대영</a></dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>소방한국사</dt>
						<dd><a href="/teacher/home.asp?bcode=jhk5103" title="곽주현">곽주현</a></dd>
						<dd><a href="/teacher/home.asp?bcode=jhk5103" title="박기훈">박기훈</a></dd>
					</dl>
				</li>
			</ul>
			<!-- // 소방 선생님 -->

		</div>




		<!-- 헤더 아래 메뉴 닫기 -->
		<div class="hd_bottom_close">
			<a href="javascript:;" onclick="" title="닫기">닫기</a>
		</div>
		<!-- // 헤더 아래 메뉴 닫기 -->


		<!-- // 공캠선생님 토글 화면 -->
		<script type="text/javascript">

			/* ---공캠선생님 하위메뉴--- */
			$('.tc_view').click(function(){
				/* --- 클래스 on 토글--- */
				if($(this).hasClass('on')){
					$(this).removeClass('on');
				}else{
					$(this).addClass('on');
				}
			     $('.hd_bottom').slideToggle('10', function() {
			    });

				/* ---공캠선생님 하위메뉴--- */
				var hdtea_swpr = $('.hdbt_wrp .hdtea_slide').length;
				if (hdtea_swpr > 1) {
					var hd_slider= $('.hdbt_wrp').slick({
						slidesToShow: 1,
						slidesToScroll: 1,
				        infinite:true,
				        loop:false,
				        autoplay:false,
				        speed:500,
				        arrow:true,
				        dots:true,
				        easing:'easeOutElastic',
				        touchMove:true,
				        draggable:false,
						initialSlide: 3
				    });
				}
			});
			$('.hd_bottom_close').click(function(){
			     $('.hd_bottom').slideUp('10', function() {});
				 $('.tc_view').removeClass('on');
			});

			/* --- 경찰 GNB 마우스오버 이벤트 --- */
			$('#headertop .hd_utility .mnu_list.police > li > ul').hide();
				//$('#headertop .hd_utility .mnu_list.police > li > ul').matchHeight();  //2뎁스 높이 동일하게 맞춤
			$('#headertop .hd_utility .mnu_list.police').hover(function() {
				$('#headertop .hd_utility .mnu_list.police > li > ul').slideDown(350);
  			  $('.gnb_bgArea .bgArea').slideDown(350);
			}, function(){
				$('#headertop .hd_utility .mnu_list.police > li > ul').slideUp(150);
  			  $('.gnb_bgArea .bgArea').slideUp(150);
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
						<p class="wctit"><strong>로그인을 해주세요.</strong><span>공무원캠퍼스에 오신 것을 환영합니다!</span></p>
						<% else %>
						<p class="wctit"><strong><%=cook_name %>님</strong><span>공무원캠퍼스에 오신 것을 환영합니다!</span></p>
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
								<a href="javascript:;" title="공캠선생님">공캠선생님</a>

								<ul class="nextlst mbtea_all">
									<li>
										<dl>
											<dt style="color:#4cb18f">국어</dt>
                                            <dd><a href="/teacher/home.asp?bcode=gilltoraebi" title="이윤주">이윤주</a></dd>
                                            <dd><a href="/teacher/home.asp?bcode=thirdheaven" title="강세진">강세진</a></dd>
											<dd><a href="/teacher/home.asp?bcode=yw1122" title="서영우">서영우</a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt style="color:#b74671">영어</dt>
                                            <dd><a href="/teacher/home.asp?bcode=powergrammar" title="강수정">강수정</a></dd>
                                            <dd><a href="/teacher/home.asp?bcode=sooyeon" title="박수연">박수연</a></dd>
                                            <dd><a href="/teacher/home.asp?bcode=ah02" title="송아영">송아영</a></dd>
                                            <dd><a href="/teacher/home.asp?bcode=megalara" title="라라">라라</a></dd>
                                            <dd><a href="/teacher/home.asp?bcode=jjangss78" title="장대영">장대영</a></dd>
                                            <dd><a href="/teacher/home.asp?bcode=kcross725" title="김태형">김태형</a></dd>

										</dl>
									</li>
									<li>
										<dl>
											<dt style="color:#4483ac">한국사</dt>
											<dd><a href="/teacher/home.asp?bcode=megaggoarimy" title="고아름">고아름</a></dd>
											<dd><a href="/teacher/home.asp?bcode=pakkihun" title="박기훈">박기훈</a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt style="color:#6b6b6b">행정법</dt>
											<dd><a href="/teacher/home.asp?bcode=jhk5103" title="정희경">정희경</a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt style="color:#7943bd">사회</dt>
											<dd><a href="/teacher/home.asp?bcode=sinki79" title="서호성">서호성</a></dd>
										</dl>
									</li>

									<li>
										<dl>
											<dt style="color:#ba6151">회계학</dt>
											<dd><a href="/teacher/home.asp?bcode=huttoi" title="박종하">박종하</a></dd>
										</dl>
									</li>
								</ul>


							</li>
		                    <li><a href="/vod/vod_chr_list.asp" title="공캠인강">공캠인강</a></li>
		                    <li><a href="/book/bookshop.asp" title="온라인서점">온라인서점</a></li>
							<li><a href="/mypage/index.asp" title="마이페이지">마이페이지</a></li>
							<li><a href="/mypage/study/my_study.asp" title="내 강의실">내 강의실</a></li>
							<li><a href="/help/notice/list.asp" title="학습지원센터">학습지원센터</a></li>
						</ul>
					</nav>
				</div>
				<div class="mbmenu_bottom">
					<div class="snsgo_wrp">
						<a href="https://www.facebook.com/Gongcampus-319566495305521" target="_blank" class="sns01"><span class="blind">페이스북</span></a>
						<a href="https://www.instagram.com/gongcampus" target="_blank" class="sns02"><span class="blind">인스타그램</span></a>
						<a href="https://www.youtube.com/channel/UCkY2Tq32Mpy8Qq-QljPFLag?view_as=subscriber" target="_blank" class="sns03"><span class="blind">유투브</span></a>
					</div>
					<div class="viewcontrl_wrp">
						<p class="vctit">보기 설정</p>
						<ul>
							<!-- 들어와있는 곳에 클래스 on 추가. -->
							<li <% if set_view = "R" Then %>class="on"<% End if %>><a onclick="setCookie('set_view', 'R', 1000); document.location.reload();" style="cursor:pointer;" >반응형 버전</a></li>
							<li <% if set_view = "P" Then %>class="on"<% End if %>><a onclick="setCookie('set_view', 'P', 1000); document.location.reload();" style="cursor:pointer;" >PC 버전</a></li>
						</ul>
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
				<li class="glb_key2"><a href="/vod/vod_chr_list.asp" title="공캠강좌"><span>공캠강좌</span></a></li>
				<li class="glb_key3"><a href="/book/bookshop.asp" title="온라인서점"><span>온라인서점</span></a></li>
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
		$('.mobile_navbtn').click(function(e){
		  e.preventDefault();

		  if($(".mobile_navwrap").css("display") == "none"){
			  mbnav_show();
		  }else{
			  mbnav_hide();
		  }
		  return false;
		});

		//팝업 검은배경 눌렀을 때
	   $(".mbnav_back").click(function () {
		   mbnav_hide();
	   });

	   // 모바일메뉴, 블랙 배경 띄우기
	   function mbnav_show(){
			$(".mbnav_back").addClass('on');
			$('.mobile_navbtn').addClass('on');
			$('body').addClass('disabled');
			$(".mobile_navwrap").show("fast");
			return false;
		}
	   // 모바일메뉴, 블랙 배경 지우기
	   function mbnav_hide(){
			$(".mbnav_back").removeClass('on');
			$('.mobile_navbtn').removeClass('on');
			$('body').removeClass('disabled');
			$(".mobile_navwrap").hide("fast");
			return false;
		}

 		/* 모바일메뉴 */

		/* 다음리스트 보이기 */
		$(".mobile_nav > li.more ul").css('display','none');
		$('.mobile_nav > li.more > a').click(function(){
		var mbnav_nextlist = $(this).next(".nextlst");
		  if(mbnav_nextlist.css("display") == "none"){
			  $(this).addClass('on');
			  mbnav_nextlist.slideDown("fast");
		  }else{
			  mbnav_nextlist.slideUp("fast");
			  $(this).removeClass('on');
		  }
		  return false;
		});

	// 모바일 top 버튼 (s)
   function glb_movetop(){
	   $('html, body').animate({scrollTop : 0}, 400);
   }
   // 모바일 top 버튼 (e)
	</script>
	<!-- // 모바일 메뉴 -->







</header>
<!-- //header -->
