    <div class="hd_wrp">
		
		<%'If cdate(lo_now_date) < cdate("2021-01-21 19:00") then%>
		<div class="hd_left_bnr n0105">
		<%'else%>
		<!-- <div class="hd_left_bnr n0105 n0112"> -->
		<%'end if%>
			<div>
				<div class="hd_slider">
					<%If cdate(lo_now_date) >= cdate("2021-02-09") and cdate(lo_now_date) < cdate("2021-02-15") then%>
					<div>
						<a href="/s/gong/event/2021/02090024/index.asp#eventWrap">
							<img src="<%=img_main%>/m/2021/0209_newyear/nine/main_ranking.png" class="" style="cursor:pointer;" alt="2021 �ް� ��Ư��">
						</a>
					</div>
					<%end if%>
					<div>
						<a href="/s/gong/event/2021/02020022/index.asp#eventWrap">
							<img src="<%=img_main%>/m/2021/0202_pass_free/hd_bnr_pass_free_gong.png" class="" style="cursor:pointer;" alt="���� �ް��н� 7�� ����ü��">
						</a>
					</div>
					<%If cdate(lo_now_date) >= cdate("2021-02-09 19:30") and cdate(lo_now_date) < cdate("2021-02-09 21:00") then%>
					<div class="live_tag">
						<a href="/s/gong/event/2021/01280020/index.asp#eventWrap">
							<img src="<%=img_main%>/m/2021/0128_tjenglish08/hd_bnr_0209_1_1.jpg" class="type1" style="cursor:pointer;" alt="������ �հ����� ���̺�">
							<img src="<%=img_main%>/m/2021/0128_tjenglish08/hd_bnr_0209_1_2.jpg" class="type2" style="cursor:pointer;" alt="������ �հ����� ���̺�">
						</a>
					</div>
					<%end if %>
					<%If cdate(lo_now_date) < cdate("2021-02-09 19:30") then%>
					<div class="live_tag">
						<a href="/s/gong/event/2021/01280020/index.asp#eventWrap">
							<img src="<%=img_main%>/m/2021/0128_tjenglish08/hd_bnr_1_1.png" class="type1" style="cursor:pointer;" alt="������ �հ����� ���̺�">
							<img src="<%=img_main%>/m/2021/0128_tjenglish08/hd_bnr_1_2.png" class="type2" style="cursor:pointer;" alt="������ �հ����� ���̺�">
						</a>
					</div>
					<%end if %>
					
					<%If cdate(lo_now_date) >= cdate("2021-01-22 00:00") and cdate(lo_now_date) < cdate("2021-01-30 00:00") then%>
					<div>
						<a href="/s/gong/event/2021/01220016/index.asp#event">
							<img src="<%=img_main%>/m/2021/0122_planner/hd_bnr_0122.png" style="cursor:pointer;" alt="�Ųٷ� �÷��� ����">
						</a>
					</div>
					<%end if%>
					<%If cdate(lo_now_date) < cdate("2021-01-19 20:01") then%>
					<div>
						<a href="/s/gong/event/2021/01140010/index.asp#event">
							<img src="<%=img_main%>/m/2021/0114_tjenglish08/hd_bnr_0119.png" style="cursor:pointer;" alt="������ ���� ���߸� 100% ���� �̺�Ʈ ����">
						</a>
					</div>
					<%end if%>
					<%If cdate(lo_now_date) < cdate("2021-01-19 18:00") then%>
					<div>
						<a href="/s/gong/event/2021/01120006/index.asp#event">
							<img src="<%=img_main%>/m/2021/0105_planner/hd_bnr_0114_1.png" style="cursor:pointer;" alt="�ѱ� ���̳� 4.0 �̺�Ʈ ����">
						</a>
					</div>
					<%end if%>
					<%If cdate(lo_now_date) < cdate("2021-01-21 19:00") then%>
					<div>
						<a href="/s/gong/event/2021/01130009/index.asp#event">
							<img src="<%=img_main%>/m/2021/0105_planner/hd_bnr_0114_2.png" style="cursor:pointer;" alt="�ſ��� ���ǰ�� ������ ��Ŭ">
						</a>
					</div>
					<%end if%>
					<% if 1=2 then%>
					<div>
						<a href="/s/gong/event/2020/12230131/index.asp#eventWrap">
							<img src="<%=img_main%>/m/2021/0105_planner/hd_bnr_0105_2.png" style="cursor:pointer;" alt="2022 Trand Report">
						</a>
					</div>
					<%end if%>
					<%If 1=2 then%>
					<div>
						<a href="/s/gong/event/2021/01210015/index.asp#con1">
							<img src="<%=img_main%>/m/2021/0105_planner/hd_bnr_0115.png" style="cursor:pointer;" alt="2022 �հ����� ���� ����">
						</a>
					</div>
					<%end if%>
				</div>
			</div>
		</div>
		<style>
			#headertop .hd_wrp .hd_left_bnr.new{margin-top: -40px;}
			#headertop .hd_wrp .hd_left_bnr{display:block;/*margin-top: -60px;width:220px*/margin-top: -56px;width:250px}
			#headertop .hd_wrp .hd_left_bnr.slide > div{padding: 0;}
			#headertop .hd_wrp .hd_left_bnr.n0105 {margin-left: -519px;}
			#headertop .hd_wrp .hd_left_bnr.n0105.n0112 {margin-left: -540px;}
			#headertop .hd_wrp .hd_left_bnr.n0105 .hd_slider .slick-arrow {position:absolute;top:50%;z-index:1;transform:translateY(-50%);display:block!important;font-size:0;}
			#headertop .hd_wrp .hd_left_bnr.n0105 .hd_slider .slick-prev {left:-21px;width:7px;height:10px;background:url(<%=img_main%>/m/2021/0105_planner/icon_L.png) no-repeat center;}
			#headertop .hd_wrp .hd_left_bnr.n0105 .hd_slider .slick-next {right:-21px;width:7px;height:10px;background:url(<%=img_main%>/m/2021/0105_planner/icon_R.png) no-repeat center;}

			.live_tag img {display:none;}
			.live_tag .type1 {display:block;}
			.live_tag .type2 {display:none;}
			.live_tag.on .type1 {display:none;}
			.live_tag.on .type2 {display:block;}
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
					autoplaySpeed: 3000,
					autoplay: true,
				});
			}
			/* --- // hd_slider �����̴�--- */

			/* 2���̹��� ��¦�� */
			setInterval(function () {
				$(".live_tag").toggleClass("on");
			}, 500);
		</script>
		
		

		<h1 class="hd_logo center">
			<%If cdate(lo_now_date) >= cdate("2021-01-07 00:00") and cdate(lo_now_date) < cdate("2021-01-08 00:00") then%>
			<a href="<%=h_lnk %>" class="gong" title="�ް������� ���������� �ٷΰ���"><img src="<%=img_main%>/m/2021/0107_national/logo_0107.png" alt="�ް������� ������ D-100 ����� ������ �����մϴ�!"></a>
			<%else%>
			<a href="<%=h_lnk %>" class="gong" title="�ް������� ���������� �ٷΰ���"><img src="<%=img_main%>/s/gong/logo_v2.png" alt="�ް�������"></a>
			<%end if%>
		</h1>

		<a href="javascript:;" class="mobile_navbtn" title="����ϸ޴� ����">
	      <span>-</span>
	      <span>-</span>
	      <span>-</span>
	   </a>


		<% ' �������� ���� ����(������,�ҹ�) ��� ������ S %>
		<!-- #include virtual = "/common/menu/header_examinfo.asp"-->
		<% ' // �������� ���� ����(������,�ҹ�) ��� ������ E %>


		<div class="hd_utility">
            <h2 class="blindw">�ް������� GNB �޴�</h2>
			<nav role="navigation">
				<!-- �ȼ� GNB Ŭ���� : class="mnu_list police"-->
				<!-- ������,�ҹ� �¶���-->
				<ul class="mnu_list gong">
					<li <% if gmenu = "1" Then %>class="on"<% End if %> ><a class="mli_link" href="/teacher/index.asp" title="������������">������������</a></li>
					<% if 1=2 then %>
					<li <% if gmenu = "2" Then %>class="on"<% End if %> ><a class="mli_link" href="/vod/vod_chr_list.asp?mcode=1" title="����������">���������� </a><%If cdate(lo_now_date) < cdate("2020-04-06") Then%><i style="left: 0;right: -2px;top: -20px;"><img src="<%=img_main%>/m/2020/0326_gong_new/bubble_1.png" alt="�� ���� 30% ����"><!-- <span style="width:118px;">�� ���� <font style="color:#f8ff39">30% ����</font></span>--></i><%End if%></li>
					<% end if %>
					<li class="depview<% if gmenu = "2" Then %> on<% End if %>" >
						<a class="mli_link" href="javascript:;" title="����������">���������� </a>
						<ul class="depth2" style="display:none">
							<li><a class="" href="/vod/vod_chr_list.asp?mcode=1&grd_fg=9" title="9�� ��� ����">9�� ��� ����</a></li>
							<li><a class="" href="/vod/vod_chr_list.asp?mcode=1&grd_fg=7" title="7�� ��� ����">7�� ��� ����</a></li>
						</ul>
					</li>
					<li <% if gmenu = "3" Then %>class="on"<% End if %> ><a class="mli_link" href="/book/bookshop.asp" title="�¶��μ���">�¶��μ���</a></li>
					<li <% if gmenu = "6" Then %>class="on"<% End if %> ><a class="mli_link" href="/s/gong/examinfo/index.asp" title="��������">��������</a></li>
					<li <% if gmenu = "4" Then %>class="on"<% End if %> ><a class="mli_link" href="/help/faq/index.asp" title="�н���������">�н���������</a></li>

					<% if CDate(lo_now_date) < CDate("2021-01-29") then %>
					<li><a class="mli_link chg_color" href="/s/gong/pass/sale_2021.asp" title="������ �ް��н� WE">������ �ް��н� WE</a></li>
					<li class="hd_mock">
						<% if CDate(lo_now_date) >= CDate("2021-01-15") and CDate(lo_now_date) < CDate("2021-01-18") then %>
						<i style="top: -20px;margin-left: 0;">
							<img src="<%=img_main%>/m/2020/1212_exam/header_bubble.gif" alt="�¶��� ���ǰ��">
						</i>
						<% end if %>
						<% if CDate(lo_now_date) < CDate("2021-01-15") then %>
						<a class="mli_link" href="/s/gong/mockexam/2021_1/index.asp#conTop" title="���ǰ��">���ǰ��</a>
						<% else %>
						<a class="mli_link" href="/s/gong/mockexam/2021_2/index.asp#conTop" title="���ǰ��">���ǰ��</a>
						<% end if %>
					</li>
					<style>
						#headertop .hd_utility .mnu_list.gong > li.hd_mock::before{content: "";position: absolute;top: 50%;left: 0;width: 1px;height: 15px;background-color: #555;margin-top: -6px;}
						#headertop .hd_utility .mnu_list.gong > li.hd_mock{padding: 0 24px}
					</style>

					<% else %>
					<li><a class="mli_link chg_color" href="/s/gong/pass/sale_2021.asp" title="������ �ް��н� WE">������ �ް��н� WE</a></li>
					<% end if %>
					<!-- Ǯ���� -->
                    <!--<li><a class="mli_link" href="/s/gong/full/20190615/index.asp" title="�հݿ��� Ǯ����">�հݿ��� Ǯ����</a></li>-->
                    <!-- // Ǯ���� -->
				</ul>
				<!-- // ������,�ҹ� �¶���-->

				<div class="right_btn online">
                    <a href="javascript:;" title="���� �������п�">
						<!-- 
						<i style="top: -20px;margin-left: -50px;">
							<img src="<%=img_main%>/m/2020/1125_gongssel/am/main_left_1125.gif" alt="12��~1�� ���� ��">
						</i>-->
						<span>���� �п� �ٷΰ���</span>
					</a>
					<ul class="depth2">
                        <li <% if hcode = "gongssel" Then %>class="on"<% End if %>><a href="<%=gongssel_main %>" class="focus" title="���� �������п�">���� �������п�</a></li>
                        <li <% if hcode = "sobangcampus" Then %>class="on"<% End if %>><a href="<%=sobangcampus_main %>" class="focus" title="���� �ҹ��п�">���� �ҹ��п�</a></li>
						<li <% if hcode = "army" Then %>class="on"<% End if %>><a href="<%=gongssel_main %>/c/gongssel/help/notice/view.asp?idx=2463&cate=01&searchkey=&searchword=&page=1#mContainer" class="focus" title="���� �������п�">���� �������п�</a></li>
						<li <% if hcode = "ansung" Then %>on"<% End if %>><a href="<%=ansung_main %>" class="focus" title="����п�(����,����, �ҹ�)">����п� (����, ����, �ҹ�)</a></li>
                        <li>
							<a href="javascript:;" class="road2" title="�����Ҷ� ���ĸ�Ÿ">�����Ҷ� ���ĸ�Ÿ</a>
							<ul class="depth3">
								<li><a href="/r/ngbr/branch/gangnam/index.asp" target="_blank" title="����">����</a></li>
								<li><a href="/r/ngbr/branch/gangbuk/index.asp" target="_blank" title="����">����</a></li>
								<li><a href="/r/ngbr/branch/gwangsan/index.asp" target="_blank" title="����(����)">����(����)</a></li>
								<li><a href="/r/ngbr/branch/chonnam/index.asp" target="_blank" title="����(������)">����(������)<img src="<%=img_main%>/common/ic_new.gif" style="vertical-align:middle; margin-left:3px;"></a></li>
								<li><a href="/r/ngbr/branch/chungjangro/index.asp" target="_blank" title="����(�����)">����(�����)</a></li>
								<li><a href="/r/ngbr/branch/busan-seomyeon/index.asp" target="_blank" title="�λ�(����)">�λ�(����)</a></li>
								<li><a href="/r/ngbr/branch/bundang/index.asp" target="_blank" title="�д�">�д�</a></li>
								<li><a href="/r/ngbr/branch/incheon/index.asp" target="_blank" title="��õ">��õ</a></li>
							</ul>
						</li>
                    </ul>
				</div>

			</nav>

			<div class="gnb_bgArea"><div class="bgArea" style="display: none;"></div></div>
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

							<!-- ���ǰ�� ��ũ -->
							<% if CDate(lo_now_date) < CDate("2021-01-29") then %>
							<li class="hd_mock">
								<a href="/s/gong/mockexam/2021_2/index.asp#conTop" title="���ǰ��">���ǰ��</a>
							</li>
							<style>
								.mobile_nav >li.hd_mock{background: linear-gradient(135deg, rgba(190,80,180) 0%, rgba(48,48,235) 100%);}
							</style>
							<% end if %>
							
							<!-- //���ǰ�� ��ũ -->

                            <li class="more">
								<a href="javascript:;" title="�ް�������">�ް�������</a>
								<ul class="nextlst mbtea_all tit_none">
									<li>
										<dl>
                                            <dt class="blindw">Ÿ����Ʈ �̵�</dt>
											<%if hcode <> "gong" then%>
											<dd><a href="<%=url_main %>" title="�ް�������">�ް�������</a></dd>
											<%end if%>
											<%if hcode <> "gongssel" then%>
											<dd><a href="<%=gongssel_main %>" title="���� �������п�">���� �������п�</a></dd>
											<%end if%>
											<%if hcode <> "sobang" then%>
											<dd><a href="<%=sobang_main %>" title="�ް��ҹ�">�ް��ҹ�</a></dd>
											<%end if%>
											<%if hcode <> "sobangcampus" then%>
											<dd><a href="<%=sobangcampus_main %>" title="���� �ҹ��п�">���� �ҹ��п�</a></dd>
											<%end if%>
											<%if hcode <> "army" then%>
											<dd><a href="<%=army_main %>" title="�ް�������">�ް�������</a></dd>
											<%end if%>
											<%if hcode <> "ansung" then%>
											<dd><a href="<%=ansung_main %>" title="�ް������� ������ 24hr">�ް������� ������ 24hr</a></dd>
											<%end if%>
										</dl>
									</li>
								</ul>
							</li>
							<li><a href="/teacher/index.asp" title="������������">������������</a></li>
		                    <li><a href="/vod/vod_chr_list.asp?mcode=1" title="����������">����������  <%If cdate(lo_now_date) < cdate("2020-04-06") Then%><img src="<%=img_main%>/m/2020/0214_chrbnr/hd_bubble.png" alt="�� ���� 30% ����" style="margin-left:10px;vertical-align:middle"/><%End if%></a></li>
		                    <li><a href="/book/bookshop.asp" title="�¶��μ���">�¶��μ���</a></li>
							<li><a href="/s/gong/examinfo/index.asp" title="�¶��μ���">��������</a></li>
							<li><a href="/mypage/index.asp" title="����������">����������</a></li>
							<li><a href="/mypage/study/my_study.asp" title="�� ���ǽ�">�� ���ǽ�</a></li>
							<li><a href="/help/faq/index.asp" title="�н���������">�н���������</a></li>
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
				<% If instr("123"&NowUrl, "/book/") > 0 Then %>
				<li class="glb_key2"><a href="/vod/vod_chr_list.asp?mcode=1" title="����������"><span>����������</span></a></li>
				<li class="glb_key3"><a href="/book/bookshop.asp" title="�¶��μ���"><span>�¶��μ���</span></a></li>
				<li class="glb_key4"><a href="/mypage/index.asp" title="����������"><span>����������</span></a></li>
				<li class="glb_key5"><a href="/mypage/study/my_study.asp" title="�� ���ǽ�"><span>�� ���ǽ�</span></a></li>
				<li class="glb_key6"><a href="/mypage/pay/my_cart.asp" title="��ٱ���"><span>��ٱ���</span></a></li>
				<% else %>
				<li class="glb_key1"><a href="javascript:history.back(-1);" title="�ڷΰ���"><span>�ڷΰ���</span></a></li>
				<li class="glb_key2"><a href="/vod/vod_chr_list.asp?mcode=1" title="����������"><span>����������</span></a></li>
				<li class="glb_key3"><a href="/book/bookshop.asp" title="�¶��μ���"><span>�¶��μ���</span></a></li>
				<li class="glb_key4"><a href="/mypage/index.asp" title="����������"><span>����������</span></a></li>
				<li class="glb_key5"><a href="/mypage/study/my_study.asp" title="�� ���ǽ�"><span>�� ���ǽ�</span></a></li>
				<% end if %>
			</ul>
		</div>
		<div class="topgo">
			<a href="javascript:;" onclick="glb_movetop(); return false;" title="���ΰ���">���ΰ���</a>
		</div>
	</div>
	<!--  // ����� �ϴ� ���� �޴� & TOP��ư -->

	<!-- ���迬�� ������ ��� -->

	<% If fncRequestCookie("mainSPright_mr_3") = "" and 1=2 then %>
	<div id="superRight_bnr_exten" class="superRight_bnr exten" style="margin-top:-190px;">
		<p>
			<img src="<%=img_main%>/m/2020/0303_exten/main_gong_m.jpg" alt="������ ������ ���� ���⿡ ���� �����Ⱓ Ư������" />
			<a href="/help/notice/view.asp?idx=2101&cate=02&searchkey=&searchword=&page=1" style="height:144px;">������ ������ ���� ���⿡ ���� �����Ⱓ Ư������</a>
			<button onclick="clearSP_main_exten();" class="close_btn"><img src="<%=img_main%>/c/gongssel/main/pop_close.png" alt="�˾� �ݱ�"/></button>
			<!-- <button onclick="fncSPOffDay_exten();" class="dayclose_btn"><img src="<%=img_main%>/m/common/main_right_tdnone.png" alt="���� �Ϸ� �ݱ�"/></button> -->
			<i></i>
		</p>
	</div>
	<style type="text/css">
		.superRight_bnr.exten{display: none;}
		.superRight_bnr.exten .day��close_btn{bottom: -20px;opacity: 1;background: none;height: auto;padding: 4px 0;display: none}
		@media all and (max-width:1200px){
			/* .superRight_bnr.exten{display: none} */
			.superRight_bnr.exten{display: block;}
			.superRight_bnr.exten .dayclose_btn{display: block;}
		}
	</style>
	<script type="text/javascript">
		function fncSPOffDay_exten() {
			setCookie("mainSPright_exten", "close", 1);
			if ($("#superRight_bnr_exten").css("display") == "block") {
				$("#superRight_bnr_exten").hide("fast");
			}
		}

		function clearSP_main_exten() {
			if($("#superRight_bnr_exten").css("display") == "block"){
				$("#superRight_bnr_exten").hide("fast");
			}
		}
	</script>
	<% End if %>

	<!-- // ���迬�� ������ ��� -->


	<%if CDate(lo_now_date) < CDate("2020-07-04 14:00:00") Then%>
	<%'if 1=2 Then%>
		<% if fncRequestCookie("mainSPright_presentation") = "" and fncRequestVariables("path_info") <> "/c/gongssel/event/2020/06160001/index.asp#eventWrap" then %>
		<div id="superRight_bnr_presentation" class="superRight_bnr presentation" style="margin-top:-160px;">
			<p>
				<img src="<%=img_main%>/m/2020/0616_presentation/sky_bnr_common.png" alt="2021 9�� ������ �հ����� ����ȸ" />
				<a href="<%=gongssel_main%>/c/gongssel/event/2020/06160001/index.asp#eventWrap" target="_blank" style="height:135px;">2021 9�� ������ �հ����� ����ȸ</a>
				<button onclick="clearSP_main_presentation();" class="close_btn"><img src="<%=img_main%>/c/gongssel/main/pop_close.png" alt="�˾� �ݱ�"/></button>
				<button onclick="fncSPOffDay_presentation();" class="dayclose_btn">���� �Ϸ� �ݱ�</button>
				<i></i>
			</p>
		</div>
		<style type="text/css">
			.superRight_bnr.presentation .dayclose_btn{bottom: 0;opacity: 1;background: none;height: auto;padding: 4px 0;}
			.superRight_bnr.presentation .close_btn{height:12px}
			.superRight_bnr.presentation .dayclose_btn{height:24px;}
			.superRight_bnr.presentation p a{height:160px;top:11px}
			@media all and (max-width:1200px){
				/* .superRight_bnr.presentation{display: none} */
				.superRight_bnr.presentation .dayclose_btn{display: block;}
			}
		</style>
		<script type="text/javascript">
    		function fncSPOffDay_presentation() {
    			setCookie("mainSPright_presentation", "close", 1);
    			if ($("#superRight_bnr_presentation").css("display") == "block") {
    				$("#superRight_bnr_presentation").hide("fast");
    			}
    		}

    		function clearSP_main_presentation() {
    			if($("#superRight_bnr_presentation").css("display") == "block"){
    				$("#superRight_bnr_presentation").hide("fast");
    			}
    		}
		</script>
		<% end if %>
	<%End if%>



	<%if 1=2 Then%>
		<% if instr(1, NowUrl, "/megagong.asp") > 0 Then %>
		<%if CDate(lo_now_date) >= CDate("2020-07-11 10:30:00") Then%>
			<% if fncRequestCookie("mainSPright_fullsrvmain") = "" and fncRequestVariables("path_info") <> "/s/gong/event/2020/01310012/index.asp#eventWrap" then %>
			<div id="superRight_bnr_fullsrvmain" class="superRight_bnr fullsrvmain" style="margin-top:-190px;">
				<div class="m_superRight_bnr_slider">
					<div>
						<p>
							<img src="<%=img_main%>/m/2020/0714_shin242/main_flo_bnr2.png" alt="���û����� ���� �ڼ�������" />
							<a href="/s/gong/event/2020/07140067/index.asp#conTop" style="height: 185px;top: 12px;">���û����� ���� �ڼ�������</a>
							<button onclick="clearSP_main_fullsrvmain();" class="close_btn"><img src="<%=img_main%>/c/gongssel/main/pop_close.png" alt="�˾� �ݱ�"/></button>
							<button onclick="fncSPOffDay_fullsrvmain();" class="dayclose_btn"><img src="<%=img_main%>/m/common/main_right_tdnone.png" alt="���� �Ϸ� �ݱ�"/></button>
							<i></i>
						</p>
					</div>
					<%if CDate(lo_now_date) < CDate("2020-07-21 17:00:00") Then%>
					<div>
						<p>
							<img src="<%=img_main%>/m/2020/0709_fullsrv/main_flo_bnr.png" alt="2020.07.11 ������ 9�� �հݿ��� Ǯ����" />
							<a href="/s/gong/full/20200711/index.asp#fullContainer" style="height: 185px;top: 12px;">2020.07.11 ������ 9�� �հݿ��� Ǯ����</a>
							<button onclick="clearSP_main_fullsrvmain();" class="close_btn"><img src="<%=img_main%>/c/gongssel/main/pop_close.png" alt="�˾� �ݱ�"/></button>
							<button onclick="fncSPOffDay_fullsrvmain();" class="dayclose_btn"><img src="<%=img_main%>/m/common/main_right_tdnone.png" alt="���� �Ϸ� �ݱ�"/></button>
							<i></i>
						</p>
					</div>
					<% end if %>
				</div>
			</div>
			<style type="text/css">
				.superRight_bnr.fullsrvmain {display:none;}
				.superRight_bnr.fullsrvmain .dayclose_btn{bottom: -20px;opacity: 1;background: none;height: auto;padding: 4px 0;display: none}
				@media all and (max-width:1200px){
					/* .superRight_bnr.fullsrvmain{display: none} */
					.superRight_bnr.fullsrvmain {display:block;}
					.m_superRight_bnr_slider {width:99px;}
					.superRight_bnr .m_superRight_bnr_slider p {margin-bottom:17px;}
					.superRight_bnr.fullsrvmain .dayclose_btn{display: block;}
				}
			</style>
			<script type="text/javascript">
				function fncSPOffDay_fullsrvmain() {
					setCookie("mainSPright_fullsrvmain", "close", 1);
					if ($("#superRight_bnr_fullsrvmain").css("display") == "block") {
						$("#superRight_bnr_fullsrvmain").hide("fast");
					}
				}

				function clearSP_main_fullsrvmain() {
					if($("#superRight_bnr_fullsrvmain").css("display") == "block"){
						$("#superRight_bnr_fullsrvmain").hide("fast");
					}
				}
				$(function() {
					$('.m_superRight_bnr_slider').slick({
						rows: 0,
						infinite: true,
						dots: false,
						arrows: false,
						speed: 150,
						autoplaySpeed: 5000,
						fade: true,
						autoplay: true
					});
				})
			</script>
			<% end if %>
		<%End if%>
		<%End if%>
	<%End if%>
	


    <% if CDate(lo_now_date) < CDate("2019-12-22 15:00:00") Then %>
		<% If fncRequestCookie("mainSPright_mr_3") = "" and fncRequestVariables("path_info") <> "/event/2019/11270004/index.asp#eventWrap" then %>
		<div id="superRight_bnr_3" class="superRight_bnr scholar present">
			<p>
				<img src="<%=img_main%>/m/2019/1127_present/main_right.png" alt="�ް������� ���� ����ȸ" />
				<a href="/event/2019/11270004/index.asp#eventWrap" style="height:222px;">�ް������� ���� ����ȸ</a>
				<button onclick="clearSP_main_mr_3();" class="close_btn"><img src="<%=img_main%>/c/gongssel/main/pop_close.png" alt="�˾� �ݱ�"/></button>
				<button onclick="fncSPOffDay_mr_3();" class="dayclose_btn">���� �Ϸ� �ݱ�</button>
				<i></i>
			</p>
		</div>
		<style type="text/css">
			@media all and (max-width:1200px){
				.superRight_bnr.present{display: none}
			}
		</style>
		<script type="text/javascript">
		function fncSPOffDay_mr_3() {
			setCookie("mainSPright_mr_3", "close", 1);
			if ($("#superRight_bnr_3").css("display") == "block") {
				$("#superRight_bnr_3").hide("fast");
			}
		}

		function clearSP_main_mr_3() {
			if($("#superRight_bnr_3").css("display") == "block"){
				$("#superRight_bnr_3").hide("fast");
			}
		}
		</script>
		<% End if %>
	<%End if%>


    <% if CDate(lo_now_date) < CDate("2019-12-09 00:00") Then %>
		<% If fncRequestCookie("mainSPright_mr") = "" and fncRequestVariables("path_info") <> "/event/2019/11120003/index.asp#mContainer" then %>
		<div id="superRight_bnr" class="superRight_bnr scholar" style="margin-top:45px">
			<p>
				<img src="<%=img_main%>/m/2019/1112_scholarship/main_right.png" alt="���л� ������" />
				<a href="/event/2019/11120003/index.asp#mContainer" style="height:222px;">���л� ������</a>
				<button onclick="clearSP_main_mr();" class="close_btn"><img src="<%=img_main%>/c/gongssel/main/pop_close.png" alt="�˾� �ݱ�"/></button>
				<button onclick="fncSPOffDay_mr();" class="dayclose_btn">���� �Ϸ� �ݱ�</button>
				<i></i>
			</p>
		</div>
		<style type="text/css">
			@media all and (max-width:1200px){
				.superRight_bnr{margin-top:-190px !important}
			}
		</style>
		<script type="text/javascript">
		function fncSPOffDay_mr() {
			setCookie("mainSPright_mr", "close", 1);
			if ($("#superRight_bnr").css("display") == "block") {
				$("#superRight_bnr").hide("fast");
			}
		}

		function clearSP_main_mr() {
			if($("#superRight_bnr").css("display") == "block"){
				$("#superRight_bnr").hide("fast");
			}
		}
		</script>
		<% End if %>
	<%End if%>

    <% if CDate(lo_now_date) < CDate("2019-11-26 09:00") Then %>

		<% If fncRequestCookie("mainSPright_mr_big") = "" and (fncRequestVariables("path_info") = "/vod/vod_chr_list.asp" or fncRequestVariables("path_info") = "/teacher/home.asp") then %>
		<div id="superRight_bnr_big" class="superRight_bnr big" style="z-index:101;margin-top:208px;">
			<p>
				<img src="<%=img_main%>/m/2019/1119_big/main_right.png" alt="BIG 3 5" />
				<a href="/s/gong/event/2019/11050068/index.asp">BIG 3 5</a>
				<button onclick="clearSP_main_mr_big();" class="close_btn"><img src="<%=img_main%>/c/gongssel/main/pop_close.png" alt="�˾� �ݱ�"/></button>
				<button onclick="fncSPOffDay_mr_big();" class="dayclose_btn">���� �Ϸ� �ݱ�</button>
				<i></i>
			</p>
		</div>
		<style type="text/css">
			@media all and (max-width:1200px){
				.superRight_bnr.big{margin-top:100px !important}
			}
		</style>
		<script type="text/javascript">
		function fncSPOffDay_mr_big() {
			setCookie("mainSPright_mr_big", "close", 1);
			if ($("#superRight_bnr_big").css("display") == "block") {
				$("#superRight_bnr_big").hide("fast");
			}
		}

		function clearSP_main_mr_big() {
			if($("#superRight_bnr_big").css("display") == "block"){
				$("#superRight_bnr_big").hide("fast");
			}
		}
		</script>
		<% End if %>

	<% End if%>







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
