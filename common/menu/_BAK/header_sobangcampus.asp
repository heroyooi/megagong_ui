<div class="hd_wrp">
		
		
		<div class="hd_left_bnr n0405">
			<div>
				<div class="hd_slider">
					<%If CDate(lo_now_date) < CDate("2021-03-16") then%>
					<div>
						<a href="https://forms.gle/rojRLBPUAfecC7cDA" target="_blank" title="5�� ���۹� ��������">
							<img src="<%=img_main%>/m/2021/0305_sbcampus/left_1.jpg" class="" style="cursor:pointer;" alt="5�� ���۹� ��������">
						</a>
					</div>
					<%end if%>
					<%If CDate(lo_now_date) >= CDate("2021-03-16") and CDate(lo_now_date) < CDate("2021-03-27 15:00") then%>
					<div>
						<a href="/c/sobang/event/2020/04070003/index.asp#eventWrap" target="_blank" title="�ҹ� �հ� ����ȸ">
							<img src="<%=img_main%>/m/2021/0305_sbcampus/left_2.jpg" class="" style="cursor:pointer;" alt="�ҹ� �հ� ����ȸ">
						</a>
					</div>
					<%end if%>

					<%If CDate(lo_now_date) < CDate("2021-04-17 17:00") then%>
					<div>
						<a href="/s/sobang/event/2021/04020022/index.asp#eventWrap" target="_blank" title="�ҹ� �����м� ����ȸ">
							<img src="<%=img_main%>/m/2021/0405_sobang_briefbnr/head_bnr01.png" class="" style="cursor:pointer;" alt="�ҹ� �����м� ����ȸ">
						</a>
					</div>
					<div>
						<a href="/s/sobang/event/2021/04020022/index.asp#eventWrap" target="_blank" title="�ҹ� �����м� ����ȸ">
							<img src="<%=img_main%>/m/2021/0405_sobang_briefbnr/head_bnr02.png" class="" style="cursor:pointer;" alt="�ҹ� �����м� ����ȸ">
						</a>
					</div>
					<div>
						<a href="/s/sobang/event/2021/04020022/index.asp#eventWrap" target="_blank" title="�ҹ� �����м� ����ȸ">
							<img src="<%=img_main%>/m/2021/0405_sobang_briefbnr/head_bnr03.png" class="" style="cursor:pointer;" alt="�ҹ� �����м� ����ȸ">
						</a>
					</div>
					<%end if%>

					<%If CDate(lo_now_date) >= CDate("2021-04-01") then%>
					<div>
						<a href="/help/notice/view.asp?idx=3143" title="�п� �ǰ� �߰� ����">
							<img src="<%=img_main%>/m/2021/0331_premium/main_sky_ban_0331.png" class="" style="cursor:pointer;" alt="�п� �ǰ� �߰� ����">
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
			/* --- hd_slider �����̴�--- */
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
			/* --- // hd_slider �����̴�--- */

			/* 2���̹��� ��¦�� */
			setInterval(function () {
				$(".live_tag").toggleClass("on");
			}, 500);
		</script>
	

		<h1 class="hd_logo">
			<a href="<%=h_lnk %>" class="sobang_ac <% If CDate(lo_now_date) < CDate("2019-11-10") Then%>logoproject_sobang_pc<% End If %>" title="�����ҹ��п� ���������� �ٷΰ���"><img src="<%=img_main%>/s/sobangcampus/logo.png" alt="�ް��ҹ��п�"></a>
		</h1>


		<!-- hd_right_bnr / S -->
		<div class="hd_right_bnr n0105">
			<div>
				<div class="hd_slider">
					<div>
						<img src="<%=img_main%>/m/2021/0324_sobang_ban/header_ban_sobang.png" class="" alt="���� �������п��� �ް��ҹ��п����� ���Ӱ� �����մϴ�.">
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
			/* --- hd_slider �����̴�--- */
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
			/* --- // hd_slider �����̴�--- */
		</script>
		<!-- hd_right_bnr / E -->




		<a href="javascript:;" class="mobile_navbtn" title="����ϸ޴� ����">
	      <span>-</span>
	      <span>-</span>
	      <span>-</span>
	   </a>


		<div class="hd_utility sobangcampus">
			<h2 class="blindw">�ް��ҹ��п� GNB �޴�</h2>
			<nav role="navigation">
				<!-- �ȼ� GNB Ŭ���� : class="mnu_list police"-->

				<!-- �ҹ��п� -->
				<%If CDate(lo_now_date) < CDate("2021-03-16") then%>
				<i style='position:absolute; top:-35px; left:212px;'><img src="<%=img_main%>/m/2021/0118_sbcampus/gnb_bubble.gif" alt="3�� ���۹� OPEN"></i>
				<%elseif CDate(lo_now_date) < CDate("2021-05-17") then%>
				<i style='position:absolute; top:-35px; left:212px; z-index:2;'><img src="<%=img_main%>/m/2021/0316_premium/gnb_bubble.gif" alt="5�� ���۹� ������!"></i>
				<%else%>
				<i style='position:absolute; top:-35px; left:212px; z-index:2;'><img src="<%=img_main%>/m/2021/0514_sbburning/gnb_bubble.gif" alt="5�� ���۹� ������!"></i>
				<%end if%>

				<ul class="mnu_list gongssel sobangcampus">
					<li <% if gmenu = "1" Then %>class="on"<% End if %>><a class="mli_link" href="javascript:;" title="�п��Ұ�">�п��Ұ�</a>
						<ul>
							<li><a href="/c/sobang/intro/intro1.asp" title="�п� ���丮">�п� ���丮</a></li>
							<li><a href="/help/notice/list.asp" title="�п� �������� ">�п� �������� <img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></li>
							<li><a href="/c/sobang/intro/intro3.asp" title="�հ� ���� �ý���">�հ� ���� �ý���</a></li>
							<li><a href="/c/sobang/intro/intro5.asp" title="�ü� �� ȯ��">�ü� �� ȯ��</a></li>
							<li><a href="/c/sobang/intro/intro2.asp" title="���ô� ��">���ô� ��</a></li>
						</ul>
					</li>
					<li <% if gmenu = "5" Then %>class="on"<% End if %>><a class="mli_link" href="javascript:;" title="���չ�">���չ�</a><!-- <span class="hd_bubble"><img src="<%=img_main%>/c/sobang/main/hd_bubble.png" alt="�����̾� �н���"></span>-->
						<ul>
							<li class="dep2_pre"><a href="javascript:void(0);" >������ ���� CLASS</a></li>
							<li class="dep2">
								<a href="/c/sobang/academy/burning.asp">
									<%If CDate(lo_now_date) < CDate("2021-03-16") then%>
									��<span style="display: inline-block;vertical-align: top;"><b>22����</b><br>BURNING CLASS(3������)<br>(13����/6����/2����)
									<img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"></span>
									<%elseIf CDate(lo_now_date) < CDate("2021-05-17") then%>
									��<span style="display: inline-block;vertical-align: top;">BURNING CLASS<img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block">
										<br/>(11����/6����/2����)</span>
									<%else%>
									��<span style="display: inline-block;vertical-align: top;">BURNING CLASS<img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block">
									<br/>(9����/6����/2����)</span>
									<%end if%>
								</a>
							</li>
							<%If CDate(lo_now_date) < CDate("2021-03-16") then%>
							<li class="dep2_pre"><a href="/c/sobang/event/2020/12210006/index.asp"  title="Ư��">21����</a></li>
							<li class="dep2"><a href="/c/sobang/event/2020/12210006/index.asp" title="�����̾� ����CLASS">�������̾� ����CLASS</a></li>
							<li class="dep2"><a href="/help/notice/view.asp?idx=3075" title="����Ǯ�� ����CLASS">������Ǯ�� ����CLASS</a></li>
							<%elseIf CDate(lo_now_date) < CDate("2021-05-17") then%>
							<li class="dep2">
								<a href="/c/sobang/event/2020/12210006/index.asp" >
									��<span style="display: inline-block;vertical-align: top;">�����̾� ���� CLASS<img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block">
									<br/>(11����/2����)</span>
								</a>
							</li>
							<%else%>
							<li class="dep2">
								<a href="/c/sobang/event/2020/12210006/index.asp" >
									��<span style="display: inline-block;vertical-align: top;">�����̾� ���� CLASS<img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block">
									<br/>(9����/2����)</span>
								</a>
							</li>
							<%end if%>

							<%If CDate(lo_now_date) < CDate("2021-05-17") then%>
							<li class="dep2_pre"><a href="javascript:void(0);" >�絵������� ����</a></li>
							<li class="dep2">
								<a href="/c/sobang/academy/rechallenge.asp#eventWrap" >
									��<span style="display: inline-block;vertical-align: top;">��-ç���� CLASS<img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block">
									<br/>(11���� ����)</span>
								</a>
							</li>
							<li class="dep2_pre"><a href="javascript:void(0);" >������ ������</a></li>
							<li class="dep2">
								<a href="/c/sobang/event/2021/04020002/index.asp#eventWrap" >
									��<span style="display: inline-block;vertical-align: top;">�հݵ帲��<img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block">
									<br/>(1��/2�� ������)</span>
								</a>
							</li>
							<%end if%>
							<li class="dep2_pre"><a href="javascript:void(0);" >21�� ������ ������</a></li>
							<li class="dep2">
								<a href="/c/sobang/event/2021/04020002/index.asp#eventWrap" >
									��<span style="display: inline-block;vertical-align: top;">�հݵ帲��<img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block">
									</span>
								</a>
							</li>
						</ul>
					</li>

					<li <% if gmenu = "3" Then %>class="on"<% End if %>><a class="mli_link" href="javascript:;" title="���� �ð�ǥ">���� �ð�ǥ</a>
						<ul>
							<%If cdate(lo_now_date) < cdate("2021-06-03 18:00") then%>
							<li class="dep2_pre"><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=&cls=302" title="���԰���">���԰���</a></li>
							<li class="dep2"><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=&cls=302" title="5~6�� �⺻ �̷�">��11 5~6�� �⺻ �̷� <img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></li>
							<li class="dep2_pre"><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=3" title="Ư��">Ư��</a></li>
							<li class="dep2"><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=3" title="5~6�� Ư��">��5~6�� Ư�� <img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></li>
							<% else %>
							<li class="dep2_pre"><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=&cls=301" title="���԰���">���԰���</a></li>
							<li class="dep2"><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=&cls=301" title="7~8�� ��ȭ�̷�">��7~8�� ��ȭ�̷� <img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></li>
							<li class="dep2"><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=&cls=302" title="7~8�� �⺻�̷�">��7~8�� �⺻�̷� <img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></li>
							<li class="dep2_pre"><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=3" title="Ư��">Ư��</a></li>
							<li class="dep2"><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=3" title="7~8�� Ư��">��7~8�� Ư�� <img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></li>
							<% end if %>
						</ul>
					</li>

					<li <% if gmenu = "6" Then %>class="on"<% End if %>><a class="mli_link" href="javascript:;" title="�ҹ� ������">�ҹ漱����</a>
						<ul>
							<li><a href="/c/sobang/intro/intro4.asp?sub_code=0&tec_code=0#teacher_info_id" title="�ҹ���/�������">�ҹ���/�������</a></li>
							<li><a href="/c/sobang/intro/intro4.asp?sub_code=1&tec_code=0#teacher_info_id" title="�ҹ汹��">�ҹ汹��</a></li>
							<li><a href="/c/sobang/intro/intro4.asp?sub_code=2&tec_code=0#teacher_info_id" title="�ҹ濵��">�ҹ濵��</a></li>
							<li><a href="/c/sobang/intro/intro4.asp?sub_code=3&tec_code=0#teacher_info_id" title="�ҹ��ѱ���">�ҹ��ѱ���</a></li>
							<li><a href="/c/sobang/intro/intro4.asp?sub_code=4&tec_code=0#teacher_info_id" title="�ҹ�������">�ҹ�������</a></li>
						</ul>
					</li>
					<li <% if gmenu = "4" Then %>class="on"<% End if %>><a class="mli_link" href="javascript:;" title="1:1 ������">1:1 ������</a>
						<ul>
							<li><a href="/c/sobang/consult/index.asp" title="�п� �湮���">�п� �湮���</a></li>
							<li><a href="javascript:;" class="consults_sb" title="�п� ��ȭ���">�п� ��ȭ���</a></li>
							<li><a href="/help/notice/view.asp?idx=2165" title="�ǽð� īī���� ���">�ǽð� īī���� ���</a></li>
							<li><a href="/help/qna/write.asp" title="1:1 ��㹮��">1:1 ��㹮��</a></li>
						</ul>
					</li>

					<li <% if gmenu = "2" Then %>class="on"<% End if %>><a class="mli_link" href="javascript:;" title="��������">��������</a>
						<ul>
							<li class="dep2_pre"><a href="/c/sobang/examinfo/index.asp" title="��������">��������</a></li>
							<li class="dep2"><a href="/c/sobang/examinfo/guide.asp" title="�ҹ������ ���� ���̵�">���ҹ������ ���� ���̵�</a></li>
							<li class="dep2"><a href="/c/sobang/examinfo/schedule.asp" title="2021�� ���� ����">��2021�� ���� ����</a></li>
							<li class="dep2"><a href="/c/sobang/examinfo/pass.asp" title="����� �� �հݼ�">������� �� �հݼ�</a></li>
							<li class="dep2"><a href="/c/sobang/examinfo/series.asp" title="ä��оߺ� ���� ����">��ä��оߺ� ���� ����</a></li>
						
							<li class="dep2_pre"><a href="/c/sobang/examinfo/passstrategy/list.asp" title="�հ�����">�հ�����</a></li>
							<li class="dep2"><a href="/c/sobang/examinfo/passstrategy/list.asp" title="�հ�����">���հ�����</a></li>
							<li class="dep2"><a href="/c/sobang/examinfo/strategy/list.asp" title="���� �н�����">������ �н�����</a></li>
							<li class="dep2_pre"><a href="/c/sobang/examinfo/news/list.asp" title="��������">��������</a></li>
							<li class="dep2"><a href="/c/sobang/examinfo/news/list.asp" title="���� ����">������ ����</a></li>
							<li class="dep2"><a href="/c/sobang/examinfo/notice/list.asp" title="���� ����">������ ����</a></li>
							
							<li class="dep2_pre"><a href="/c/sobang/examinfo/library/list.asp" title="���⹮��&�ؼ�����">���⹮��&�ؼ�����</a></li>
							<li class="dep2"><a href="/c/sobang/examinfo/library/list.asp" title="���� ����">�����⹮��</a></li>
							<li class="dep2"><a href="/c/sobang/examinfo/guide/exam.asp" title="�ؼ�����&����">���ؼ�����&���� <%If cdate(lo_now_date) >= cdate("2021-04-08") then%><img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"><%end if%></a></li>
							
						</ul>
					</li>
				</ul>
				<!-- // �ҹ��п� -->


				<a href="javascript:;" class="menu_x" title="��ü�޴� �ݱ�">
					<span><img src="<%=img_main%>/c/gongssel/main/menu_x.png" alt="��ü�޴� �ݱ�"></span>
				</a>
			</nav>

			<div class="gnb_bgArea"><div class="bgArea sobangcampus" style="display: none;"></div></div>
		</div>

		<div class="mb_rightmenu">
			<a href="/mypage/study/my_study.asp" title="�� ���ǽ�">�� ���ǽ�</a>
		</div>
	</div>

	<!-- ����� �޴� -->
	<div class="mobile_navwrap">
		<div class="mobnav_inner">
				<div class="welcome_wrp">
					<div class="wc_inner">
						<% if cook_id = "" then %>
						<p class="wctit"><strong>�α����� ���ּ���.</strong></p>
						<% else %>
						<p class="wctit"><strong><%=cook_name %>��</strong></p>
						<% end if %>

						<div class="btn_place">
							<!-- �α׾ƿ��� lgout Ŭ���� �߰�-->
							<% if cook_id = "" then %>
							<a class="" href="/member/login.asp" >�α���</a>
							<% else %>
							<a class="lgout" href="/member/logout_sql.asp" >�α׾ƿ�</a>
							<% end if %>
						</div>
					</div>
				</div>
				<div class="mobile_navinner">
					<nav>
						<ul class="mobile_nav">
							<li class="more">
								<a href="javascript:;" title="�ް��ҹ��п�">�ް��ҹ��п�</a>
								<ul class="nextlst mbtea_all tit_none">
									<li>
										<dl>
                                            <dt class="blindw">Ÿ����Ʈ �̵�</dt>
											<%if hcode <> "gong" then%>
											<dd><a href="<%=url_main %>" title="�ް�������">�ް�������</a></dd>
											<%end if%>
											<%if hcode <> "gongssel" then%>
											<dd><a href="<%=gongssel_main %>" title="�ް��������п�">�ް��������п�</a></dd>
											<%end if%>
											<%if hcode <> "sobang" then%>
											<dd><a href="<%=sobang_main %>" title="�ް��ҹ�">�ް��ҹ�</a></dd>
											<%end if%>
											<%if hcode <> "sobangcampus" then%>
											<dd><a href="<%=sobangcampus_main %>" title="�ް��ҹ��п�">�ް��ҹ��п�</a></dd>
											<%end if%>
											<%if hcode <> "army" then%>
											<dd><a href="<%=army_main %>" title="�ް�������">�ް�������</a></dd>
											<%end if%>

											<%if hcode <> "army" then%>
											<dd><a href="<%=army_main %>/s/army/campus/index.asp" title="�ް��������п�">�ް��������п� <img src="<%=img_main%>/common/ic_new.gif" alt="New" style="vertical-align:middle;margin:-3px 0 0 3px;" /></a></dd>
											<%end if%>
											
											<%if hcode <> "ansung" then%>
											<dd><a href="<%=ansung_main %>" title="�ް������� ������ 24hr">�ް������� ������ 24hr</a></dd>
											<%end if%>
										</dl>
									</li>
								</ul>
							</li>
							<li><a href="/c/sobang/intro/intro1.asp" title="�п��Ұ�">�п��Ұ�</a></li>


						
							<li class="more">
								<a href="javascript:;" title="���չ�">���չ�</a>

								<ul class="nextlst subj_list sobangcampus">
									<li>
										<%If CDate(lo_now_date) < CDate("2021-03-16") then%>
										<a href="/c/sobang/academy/burning.asp"><b>22����</b><br>BURNING CLASS(3������)<br>(13����/6����/2����) 
											<img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block">
										</a>
										<%elseIf CDate(lo_now_date) < CDate("2021-05-17") then%>
										<a href="/c/sobang/academy/burning.asp"><b>BURNING CLASS</b><img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block">
											<br>(11����/6����/2����)
										</a>
										<%else%>
										<a href="/c/sobang/academy/burning.asp"><b>BURNING CLASS</b><img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block">
											<br>(9����/6����/2����)
										</a>
										<%end if%>
									</li>
									<li>
										<%If CDate(lo_now_date) < CDate("2021-03-16") then%>
										<span>
											<a href="/c/sobang/event/2020/12210006/index.asp"><b>21����</b></a>
											<a href="/c/sobang/event/2020/12210006/index.asp" title="�����̾� ����CLASS">- �����̾� ����CLASS</a>
											<a href="/help/notice/view.asp?idx=3075" title="����Ǯ�� ����CLASS">- ����Ǯ�� ����CLASS</a>
										</span>
										<%elseIf CDate(lo_now_date) < CDate("2021-05-17") then%>
										<a href="/c/sobang/event/2020/12210006/index.asp"><b>�����̾� ���� CLASS</b><img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block">
											<br>(11����/2����)
										</a>
										<%else%>
										<a href="/c/sobang/event/2020/12210006/index.asp"><b>�����̾� ���� CLASS</b><img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block">
											<br>(9����/2����)
										</a>
										<%end if%>
									</li>
									<%If CDate(lo_now_date) < CDate("2021-05-17") then%>
									<li>
										<a href="/c/sobang/academy/rechallenge.asp#eventWrap"><b>��-ç���� CLASS</b><img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block">
											<br>(11���� ����)</a>
									</li>
									<%end if%>
									<li>
										<a href="/c/sobang/event/2021/04020002/index.asp#eventWrap"><b>�հݵ帲��</b><img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block">
										</a>
									</li>
								</ul>
							</li>
							
							<li><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=&cls=302" title="���� �ð�ǥ">���� �ð�ǥ</a></li>
							<li class="more">
								<a href="javascript:;" title="�ҹ漱����">�ҹ漱����</a>

								<ul class="nextlst subj_list sobangcampus">
									<li><a href="/c/sobang/intro/intro4.asp?sub_code=0&tec_code=0#teacher_info_id" title="�ҹ���/�������">�ҹ���/�������</a></li>
									<li><a href="/c/sobang/intro/intro4.asp?sub_code=1&tec_code=0#teacher_info_id" title="�ҹ汹��">�ҹ汹��</a></li>
									<li class="third"><a href="/c/sobang/intro/intro4.asp?sub_code=2&tec_code=0#teacher_info_id" title="�ҹ濵��">�ҹ濵��</a></li>
									<li class="third"><a href="/c/sobang/intro/intro4.asp?sub_code=3&tec_code=0#teacher_info_id" title="�ҹ��ѱ���">�ҹ��ѱ���</a></li>
									<li class="third"><a href="/c/sobang/intro/intro4.asp?sub_code=4&tec_code=0#teacher_info_id" title="�ҹ�������">�ҹ�������</a></li>
								</ul>
							</li>
							<li><a href="/c/sobang/consult/index.asp" title="1:1 ������">1:1 ������</a></li>
							<li><a href="/c/sobang/examinfo/index.asp" title="��������">��������</a></li>
						</ul>
					</nav>
				</div>
				<div class="mbmenu_bottom">
					<div class="snsgo_wrp">
						<a href="https://blog.naver.com/gongcamp" target="_blank" class="naver_b" title="���̹���α�"><span>���̹���α�</span></a>
                        <a href="https://www.facebook.com/megagong/" target="_blank" class="faceb" title="���̽���"><span>���̽���</span></a>
                        <a href="https://www.instagram.com/megagong/" target="_blank" class="insta" title="�ν�Ÿ�׷�"><span>�ν�Ÿ�׷�</span></a>
                        <a href="https://www.youtube.com/channel/UCkY2Tq32Mpy8Qq-QljPFLag" target="_blank" class="ytube" title="��Ʃ��"><span>��Ʃ��</span></a>
                        <a href="https://tv.naver.com/gongcampus" target="_blank" class="naver_tv" title="���̹�TV"><span>���̹�TV</span></a>
					</div>
				</div>
		</div>
	</div>
	<span class="mbnav_back"></span>

	<!--  ����� �ϴ� ���� �޴� & TOP��ư -->
	<div class="glbal_menu">
		<div class="gm_inner">
			<ul>
				<li class="glb_key1"><a href="javascript:history.back(-1);" title="�ڷΰ���"><span>�ڷΰ���</span></a></li>
				<li class="glb_key2"><a href="/c/sobang/academy/schedule.asp" title="������û"><span>������û</span></a></li>
				<li class="glb_key3"><a href="/help/notice/list.asp" title="��������"><span>��������</span></a></li>
				<li class="glb_key4"><a href="/c/sobang/consult/index.asp" title="�湮���"><span>�湮���</span></a></li>
				<li class="glb_key5"><a href="/c/sobang/intro/intro2.asp" title="��ġ/����ó"><span>��ġ/����ó</span></a></li>
			</ul>
		</div>
		<div class="topgo">
			<a href="javascript:;" onclick="glb_movetop(); return false;" title="���ΰ���">���ΰ���</a>
		</div>
	</div>
	<!--  // ����� �ϴ� ���� �޴� & TOP��ư -->


	

	
	<!-- �ҹ� ���� ��� -->
	<% If fncRequestCookie("mainSPright_mr") = "" then %>
	<% End if %>
	<!--// �ҹ� ���� ��� -->


	
	<script type="text/javascript">
        $(document).ready(function () {

            /* ����ϸ޴� */
            $('.mobile_navbtn').click(function (e) {
                e.preventDefault();

                if ($(".mobile_navwrap").css("display") == "none") {
                    mbnav_show();
                } else {
                    mbnav_hide();
                }
                return false;
            });

            //�˾� ������� ������ ��
            $(".mbnav_back").click(function () {
                mbnav_hide();
            });

            // ����ϸ޴�, �� ��� ����
            function mbnav_show() {
                $(".mbnav_back").addClass('on');
                $('.mobile_navbtn').addClass('on');
                $('body').addClass('disabled');
                $(".mobile_navwrap").show("fast");
                return false;
            }
            // ����ϸ޴�, �� ��� �����
            function mbnav_hide() {
                $(".mbnav_back").removeClass('on');
                $('.mobile_navbtn').removeClass('on');
                $('body').removeClass('disabled');
                $(".mobile_navwrap").hide("fast");
                return false;
            }

            /* ����ϸ޴� */

            /* ��������Ʈ ���̱� */
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

        // ����� top ��ư (s)
        function glb_movetop() {
            $('html, body').animate({ scrollTop: 0 }, 400);
        }
   // ����� top ��ư (e)
	</script>
	<!-- // ����� �޴� -->




		
	<!-- ��ȭ��� ��û �˾�-->
	<div class="police_call_popwrp sobang" style="display:none">
		<div class="pcp_inner">
			<div class="pcp_titwrp">
				<p>1:1 ��ȭ��� ��û</p>
				<span>�ް��ҹ��п��� ���� �ñ��� ���� �����ø�<br /> �̸�, ����ó, ��ȭ���ɽð��� �����ּ���.</span>
				<a href="javascript:;" class="police_call_pop_clo" title="�ݱ�"><img src="<%=img_main%>/c/ansung/main/police_call_pop_clo.png" alt="�ݱ�"/></a>
			</div>
			<div class="pcp_form">
				<ul>
					<li><label><strong>�̸�</strong><span><input type="text" id="mem_nm" name="mem_nm"></span></label></li>
					<li><label><strong>����ó</strong><span><input type="text" id="mem_hp" name="mem_hp"></span></label></li>
					<li class="long"><label><strong>��ȭ���ɽð�</strong>
						<span>
							<select id="sel_time" name="sel_time" class="timeSelect">
								<option value="">��ȭ���ɽð�</option>
								<option value="���� 9��~12��">���� 9��~12��</option>
								<option value="���� 12��~15��">���� 12��~15��</option>
								<option value="���� 15��~18��">���� 15��~18��</option>
								<option value="���� 18��~21��">���� 18��~21��</option>
							</select>
						</span></label>
					</li>
					<li><label><strong>����</strong>
						<span><textarea id="contents_txt" name="contents_txt"></textarea></span></label>
					</li>
				</ul>
				<p class="agr_box"><input type="checkbox" id="check_yn" name="check_yn" value="Y"><label for="check_yn">�������� ���� �� �̿� ���� (�ʼ�)</label></p>
				<div class="agr_item">
					<span>�����׸� : �̸�, ����ó</span>
					<span>�������� : 1:1 ��ȭ ���</span>
					<span>�����Ⱓ : ��� �Ϸ� �� ����</span>
				</div>
				<a href="javascript:go_cons();" class="pcp_btn">����û</a>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		$(document).ready(function () {

			var policeCall_pop = $('.police_call_popwrp.sobang');
			// 1:1 ��ȭ��� �˾�
			$('.consults_sb').click(function () {
				
					policeCall_pop.css('display', 'block');
				//if (policeCall_pop.css("display") == "none") {
				//} else {
				//	policeCall_pop.css('display', 'none');
				//}
			});
			// 1:1 ��ȭ��� �˾� �ݱ��ư Ŭ��
			$('.police_call_pop_clo').click(function () {
					policeCall_pop.css('display', 'none');
			});

		});

		function go_cons() {
			if ($("#mem_nm").val() == "") {
				alert("�̸��� �Է��� �ּ���.");
				$("#mem_nm").focus();
				return;
			}

			if ($("#mem_hp").val() == "") {
				alert("����ó�� �Է��� �ּ���.");
				$("#mem_hp").focus();
				return;
			}

			if( ($("#mem_hp").val().length < 10) || !chkHpNo($("#mem_hp").val()) ) {
				alert("���Ŀ� ���� �ʴ� ��ȣ�Դϴ�" );
				$("#mem_hp").focus();
				return;
			}

			if ($("#sel_time").val() == "") {
				alert("���ð��� �Է��� �ּ���.");
				$("#sel_time").focus();
				return;
			}

			if ($("#contents_txt").val() == "") {
				alert("��� ������ �Է��� �ּ���.");
				$("#contents_txt").focus();
				return;
			}

			if ($("#check_yn").is(':checked') == false) {
				alert("�������� ���� �� �̿� ���Ǹ� ���ּ���.");
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
				data : { "mem_nm" : escape(mem_nm), "mem_hp" : escape(mem_hp), "sel_time" : escape(sel_time), "contents_txt" : escape(contents_txt), "check_yn" : "" , "dom_nm" : escape("�ҹ�")},
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

	<!-- // ��ȭ��� ��û �˾�-->



	
	<!--  ���� ��ü�޴� ȣ�� -->
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