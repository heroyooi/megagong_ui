<!-- hd_wrp / S -->
<div id="header_wrap" class="hd_wrp online <%If CDate(lo_now_date) >= CDate("2021-08-25") then%>v21_2 <% if instr(1, NowUrl, "/megagong.asp") > 0 then %>main<% end if %><% end if %>">

	<!-- hd_left_bnr / S -->
	<div class="hd_left_bnr n0105 <% if instr(1, NowUrl, "/megagong.asp") > 0 then %>main<% end if %>">
		<div>
			<div class="hd_slider">
				<%If cdate(lo_now_date) >= cdate("2022-11-04") then%>
				<div>
					<a href="/s/sobang/event/2022/11030046/index.asp#eventWrap">
						<img src="<%=img_main%>/m/2022/1103_sobangday/bnr1.jpg" class="" style="cursor:pointer;" alt="�ҹ�� ����, �Բ��ؿ�!">
					</a>
				</div>
				<% end if %>

				<% if cdate(lo_now_date) >= cdate("2022-09-02") and cdate(lo_now_date) < cdate("2022-09-26") then %>
				<div>
					<a href="/help/notice/view.asp?idx=3971">
						<img src="<%=img_main%>/m/2022/0902_virus/header_left_bnr.png" class="" style="cursor:pointer;" alt="�ҹ� ���̷� ������ ��ٸ��ϴ�.">
					</a>
				</div>
				<% end if %>

				<% if cdate(lo_now_date) >= cdate("2022-08-03") and cdate(lo_now_date) < cdate("2022-08-16") then %>
				<div>
					<a href="/s/gong/event/2022/06280086/index.asp#eventWrap" >
						<img src="<%=img_main%>/m/2022/0628_planner/main_sky_ban_gong.jpg" class="" style="cursor:pointer;" alt="�Ųٷ� �÷��� ����!">
					</a>
				</div>
				<% end if %>
			
				<% If cdate(lo_now_date) >= cdate("2022-06-30") and cdate(lo_now_date) < cdate("2022-07-30") then%>
				<div>
					<a href="/s/sobang/event/2022/06300034/index.asp#eventWrap" title="������Ʈ ç����" >
						<img src="<%=img_main%>/m/2022/0630_sobang/main_sky_ban_sobang.png" class="" style="cursor:pointer;" alt="������Ʈ ç����">
					</a>
				</div>
				<% end if %>
				<% if cdate(lo_now_date) < cdate("2022-08-03") then %>
				<div>
					<a href="/s/sobang/event/2022/07130037/index.asp#eventWrap" title="�³�Ʈ ���� ���� �ٿ�ε�! 2023 �Ųٷ� �÷���" >
						<img src="<%=img_main%>/m/2022/0713_planner/main_sky_ban_sobang.jpg" class="" style="cursor:pointer;" alt="�³�Ʈ ���� ���� �ٿ�ε�! 2023 �Ųٷ� �÷���">
					</a>
				</div>
				<% end if %>

				<% if cdate(lo_now_date) >= cdate("2022-08-29") and cdate(lo_now_date) < cdate("2022-09-07 17:30:00") then %>
				<div>
					<a href="/s/sobang/event/2022/08290039/index.asp#eventWrap" title="�ҹ��հ����� LIVE" >
						<img src="<%=img_main%>/m/2022/0829_sobang/main_sky_ban_live1.png" style="cursor:pointer;" alt="�ҹ��հ����� LIVE">
					</a>
				</div>
				<% end if %>
				<% if cdate(lo_now_date) >= cdate("2022-09-07 17:30:00") and cdate(lo_now_date) < cdate("2022-09-07 20:00:00") then %>
				<div class="hd_motion2">
					<a href="/s/sobang/event/2022/08290039/index.asp#eventWrap" title="�ҹ��հ����� LIVE" >
						<img src="<%=img_main%>/m/2022/0829_sobang/main_sky_ban_live3.png" style="cursor:pointer;" alt="�ҹ��հ����� LIVE" class="mot3">
						<img src="<%=img_main%>/m/2022/0829_sobang/main_sky_ban_live2.png" style="cursor:pointer;" alt="�ҹ��հ����� LIVE" class="mot4">
					</a>
				</div>
				<% end if %>

				<% If cdate(lo_now_date) >= cdate("2022-08-22") and cdate(lo_now_date) < cdate("2022-09-20 00:00:00")  then%>
				<div>
					<a href="<%=url_main %>/event/2022/08220025/index.asp#eventWrap" target="_blank" title="100% ��÷ ���� ����! ȸ������ ������Ʈ" >
						<img src="<%=img_main%>/m/2022/0822_update/main_sky_ban.png" class="" style="cursor:pointer;" alt="100% ��÷ ���� ����! ȸ������ ������Ʈ">
					</a>
				</div>
				<% end if %> 
				
				<% if cdate(lo_now_date) >= cdate("2022-08-23") and cdate(lo_now_date) < cdate("2022-08-25") then %>
				<div>
					<a href="/event/2022/08180022/index.asp#eventWrap" >
						<img src="<%=img_main%>/m/2022/0818_ebook/bn_sky.jpg" class="" style="cursor:pointer;" alt="e-����&�ʱ��">
					</a>
				</div>
				<% end if %>
				<% if cdate(lo_now_date) < cdate("2022-08-18") then %>
				<div>
					<a href="/exam/basic/sobang_2/index.asp#eventWrap" title="����Up �հݿ��� �ַ��" >
						<img src="<%=img_main%>/m/2022/0728_bn/sobang/main_sky_ban.png" style="cursor:pointer;" alt="����Up �հݿ��� �ַ��">
					</a>
				</div>
				<% end if %>
			</div>
		</div>
	</div>
	<style>
		#headertop .hd_wrp .hd_left_bnr.new{margin-top: -40px;}
		#headertop .hd_wrp .hd_left_bnr{display:block;top:0;margin-top: 24px;width:220px}
		#headertop .hd_wrp .hd_left_bnr.slide > div{padding: 0;}
		#headertop .hd_wrp .hd_left_bnr {margin-left: -518px;}
		#headertop .hd_wrp.main .hd_left_bnr {margin-left: -577px;}

		#headertop .hd_wrp .hd_left_bnr .hd_slider .slick-arrow {position:absolute;top:50%;z-index:1;transform:translateY(-50%);display:block!important;font-size:0;}
		#headertop .hd_wrp .hd_left_bnr .hd_slider .slick-prev {left:-21px;width:7px;height:10px;background:url(https://design.megagong.net/image/m/2021/0105_planner/icon_L.png) no-repeat center;}
		#headertop .hd_wrp .hd_left_bnr .hd_slider .slick-next {right:-15px;width:7px;height:10px;background:url(https://design.megagong.net/image/m/2021/0105_planner/icon_R.png) no-repeat center;}
		.air_on .type1 {display: inline-block;}
		.air_on .type2 {display: none;}
		.air_on.on .type1 {display: none;}
		.air_on.on .type2 {display: inline-block;}
		@media (max-width: 1200px) {
			#headertop .hd_wrp .hd_left_bnr {display: none;}
		}
	</style>
	
	<% if cdate(lo_now_date) < cdate("2022-02-22 20:00") then %>
	<style>
		.hd_motion .mot1 {display:block;}
		.hd_motion .mot2 {display:none;}
		.hd_motion.on .mot1 {display:none;}
		.hd_motion.on .mot2 {display:block;}
	</style>
	<script>
		playAlert = setInterval(function () {
			$(".hd_motion").toggleClass("on");
		}, 500);
	</script>
	<% end if %>

	<% if cdate(lo_now_date) >= cdate("2022-09-07 17:30:00") and cdate(lo_now_date) < cdate("2022-09-07 20:00:00") then %>
	<style>
		.hd_motion2 .mot3 {display:block;}
		.hd_motion2 .mot4 {display:none;}
		.hd_motion2.on .mot3 {display:none;}
		.hd_motion2.on .mot4 {display:block;}
	</style>
	<script>
		playAlert2 = setInterval(function () {
			$(".hd_motion2").toggleClass("on");
		}, 500);
	</script>
	<% end if %>
	
	<%if cdate(lo_now_date) < cdate("2021-02-25 20:30") then%>
	<script type="text/javascript">
		setInterval(function () {
			$(".air_on").toggleClass("on");
		}, 500);
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
	</script>
	<%elseif cdate(lo_now_date) < cdate("2021-04-03") then%>
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
	</script>
	<%elseif cdate(lo_now_date) < cdate("2021-04-17 17:00") then%>
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
	</script>
	<%else%>
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
	</script>
	<%end if%>
	<!-- hd_left_bnr / E -->

	<!-- hd_logo / S -->
	<h1 class="hd_logo center">
		<a href="<%=h_lnk %>"
			class="sobang <% If CDate(lo_now_date) < CDate("2019-11-10") Then%>logoproject_sobang_pc<% End If %>"
			title="�ް��ҹ� ���������� �ٷΰ���"><img src="<%=img_main%>/s/sobang/logo_v2.png" alt="�ް� �ҹ�">
		</a>
	</h1>
	<!-- hd_logo / E -->


	<% ' �������� ���� ����(������,�ҹ�) ��� ������ S %>
	<!-- #include virtual = "/common/menu/header_examinfo.asp"-->
	<% ' // �������� ���� ����(������,�ҹ�) ��� ������ E %>


	<!-- hd_utility / S -->
	<div id="header_utility" class="hd_utility <%If CDate(lo_now_date) >= CDate("2021-08-25") then%>v21_2<% end if %>">
		<h2 class="blindw">�ް��ҹ� �޴�</h2>
		<nav role="navigation">
			<ul class="mnu_list online off <% if instr(1, NowUrl, "/megagong.asp") = 0 Then %>sub<%end if%>">
				<%If CDate(lo_now_date) < CDate("2021-08-25") then%>
				<li><a class="mli_link chg_color" href="/s/sobang/pass/sale_2021.asp#eventWrap" title="0�� �ҹ� �ް��н�">0�� �ҹ�
						�ް��н�</a>
					<ul class="depth2">
						<li><a href="/s/sobang/pass/sale_2021.asp#eventWrap" title="�ҹ� �ް��н�">�ҹ� �ް��н�</a></li>
						<!-- <li><a href="/s/sobang/pass/final_2021.asp#eventWrap" title="FINAL �ް��н�">FINAL �ް��н�</a></li> -->
					</ul>
				</li>
				<%end if %>

				<li <% if gmenu = "1" Then %>class="on" <% End if %>><a class="mli_link" href="/teacher/index.asp"
						title="������">������</a></li>
				<li <% if gmenu = "2" Then %>class="on" <% End if %>><a class="mli_link"
						href="/vod/vod_chr_list.asp?mcode=1" title="��ü����">��ü����</a></li>


				<% If cdate(lo_now_date) < cdate("2022-04-20") then%>
				<li <% if gmenu = "3" Then %>class="on" <% End if %>><a class="mli_link" href="/book/bookshop.asp"
						title="�¶��μ���">�¶��μ���</a>
					<ul class="depth2">
						<li><a href="/book/book_all.asp" title="���� ��ü ����">���� ��ü ����</a></li>
					</ul>
				</li>
				<%end if %>

				<li <% if gmenu = "6" Then %>class="on" <% End if %>><a class="mli_link" href="/s/sobang/examinfo/index.asp" title="�հ����� LAB">�հ����� LAB</a>
					<ul class="depth2">
						<li><a href="/s/sobang/examinfo/guide.asp" title="�հݰ��̵�">�հݰ��̵�</a></li>
						<li><a href="/s/sobang/examinfo/news/list.asp" title="������������">������������</a></li>
						<li><a href="/s/sobang/examinfo/library/list.asp" title="���⹮��&�ؼ�����">���⹮��&�ؼ�����</a></li>
					</ul>
				</li>
				<% if 1=2 then%>
				<li <% if gmenu = "6" Then %>class="on" <% End if %>><a class="mli_link" href="/s/sobang/examinfo/index.asp" title="��������">��������</a>
					<ul class="depth2">
						<li><a href="/s/sobang/examinfo/passstrategy/list.asp" title="�հ�����">�հ�����</a></li>
						<li><a href="/s/sobang/examinfo/news/list.asp" title="��������">��������</a></li>
						<li><a href="/s/sobang/examinfo/library/list.asp" title="���⹮��&�ؼ�����">���⹮��&�ؼ�����</a></li>
					</ul>
				</li>
				<%end if %>
				<li <% if gmenu = "4" Then %>class="on" <% End if %>><a class="mli_link" href="/help/faq/" title="�н���������">�н���������</a>
					<ul class="depth2">
						<li><a href="/help/faq/" title="���� ���� ����(FAQ)">���� ���� ����(FAQ)</a></li>
						<li><a href="/help/qna/write.asp" title="1:1 ���ǻ��">1:1 ���ǻ��</a></li>
						<li><a href="/help/notice/list.asp" title="��������">��������</a></li>
						<li><a href="/help/hope/write.asp" title="�ް��� �ٶ���">�ް��� �ٶ���</a></li>
					</ul>
				</li>
				
				<% if cdate(lo_now_date) < cdate("2022-04-22 15:00") then%>
				<li><a class="mli_link" href="/s/sobang/full/20220409/index.asp#fullContainer" title="�հݿ��� Ǯ����" style="color:#0082ff;">�հݿ��� Ǯ����</a></li>
				<%end if%>
				<%If CDate(lo_now_date) < CDate("2022-03-25") then%>
				<%If CDate(lo_now_date) >= CDate("2021-11-10") then%>
				<li>
					<span class="mock">
						<%If CDate(lo_now_date) < CDate("2021-12-04") then%>
						<img src="<%=img_main%>/m/2021/1110_exam/header_mock1_1.png" alt="1ȸ ��û ��" class="on1">
						<img src="<%=img_main%>/m/2021/1110_exam/header_mock1_2.png" alt="1ȸ ��û ��" class="on2">
						<%elseIf CDate(lo_now_date) < CDate("2021-12-04 10:00") then%>
						
						<%elseIf CDate(lo_now_date) < CDate("2021-12-06") then%>
						<img src="<%=img_main%>/m/2021/1110_exam/header_mock2_1.png" alt="1ȸ ���� ��" class="on1">
						<img src="<%=img_main%>/m/2021/1110_exam/header_mock2_2.png" alt="1ȸ ���� ��" class="on2">
						<%elseIf CDate(lo_now_date) >= CDate("2021-12-06") and cdate(lo_now_date) < cdate("2022-01-08") then%>
						<img src="<%=img_main%>/m/2021/1110_exam/1203/header_mock1_1_v2.png" alt="2ȸ ��û ��" class="on1">
						<img src="<%=img_main%>/m/2021/1110_exam/1203/header_mock1_2_v2.png" alt="2ȸ ��û ��" class="on2">
						<%elseIf cdate(lo_now_date) >= cdate("2022-01-08") and cdate(lo_now_date) < cdate("2022-01-08 10:00") then%>
					
						<%elseIf cdate(lo_now_date) >= cdate("2022-01-08 10:00") and cdate(lo_now_date) < cdate("2022-01-10") then%>
						<img src="<%=img_main%>/m/2021/1110_exam/0107/header_mock2_1_v2.png" alt="2ȸ ���� ��" class="on1">
						<img src="<%=img_main%>/m/2021/1110_exam/0107/header_mock2_2_v2.png" alt="2ȸ ���� ��" class="on2">
						
						<%elseIf cdate(lo_now_date) >= cdate("2022-01-10") and cdate(lo_now_date) < cdate("2022-02-05") then%>
						<img src="<%=img_main%>/m/2021/1110_exam/0107/header_mock1_1_v3.png" alt="3ȸ ��û ��" class="on1">
						<img src="<%=img_main%>/m/2021/1110_exam/0107/header_mock1_2_v3.png" alt="3ȸ ��û ��" class="on2">
						<%elseIf CDate(lo_now_date) < CDate("2022-02-05 10:00") then%>
						
						<%elseIf cdate(lo_now_date) >= cdate("2022-02-05 10:00") and cdate(lo_now_date) < cdate("2022-02-07") then%>
						<img src="<%=img_main%>/m/2021/1110_exam/0204/header_mock2_1_v3.png" alt="3ȸ ���� ��" class="on1">
						<img src="<%=img_main%>/m/2021/1110_exam/0204/header_mock2_2_v3.png" alt="3ȸ ���� ��" class="on2">
						<%elseIf cdate(lo_now_date) >= cdate("2022-02-07") and cdate(lo_now_date) < cdate("2022-03-05") then%>
						<img src="<%=img_main%>/m/2021/1110_exam/0204/header_mock1_1_v4.png" alt="4ȸ ��û ��" class="on1">
						<img src="<%=img_main%>/m/2021/1110_exam/0204/header_mock1_2_v4.png" alt="4ȸ ��û ��" class="on2">
						<%elseIf CDate(lo_now_date) < CDate("2022-03-05 10:00") then%>

						<%elseIf cdate(lo_now_date) >= cdate("2022-03-05 10:00") and cdate(lo_now_date) < cdate("2022-03-07") then%>
						<img src="<%=img_main%>/m/2021/1110_exam/0204/header_mock2_1_v4.png" alt="4ȸ ���� ��" class="on1">
						<img src="<%=img_main%>/m/2021/1110_exam/0204/header_mock2_2_v4.png" alt="4ȸ ���� ��" class="on2">
						<% end if %>
					</span>
					<a class="mli_link" 
					<%If CDate(lo_now_date) < CDate("2021-12-06") then%>
					href="/s/sobang/mockexam/2022_1/index.asp#eventWrap"
					<%elseIf CDate(lo_now_date) < CDate("2022-01-10") then%>
					href="/s/sobang/mockexam/2022_2/index.asp#eventWrap"
					<%elseIf CDate(lo_now_date) < CDate("2022-02-07") then%>
					href="/s/sobang/mockexam/2022_3/index.asp#eventWrap"
					<% else %>
					href="/s/sobang/mockexam/2022_4/index.asp#eventWrap"
					<% end if %>
					title="���ǰ��" style="color:#da2738">���ǰ��</a>
				</li>
				<% end if %>
				<%end if %>

				
				<% If cdate(lo_now_date) >= cdate("2022-07-28 18:00") then%>
				<li class="last">
					<a class="mli_link twinkle new_st_pop_open" href="javascript:st_pop_open();" title="�ʽû� Click!" <% if instr(1, NowUrl, "/megagong.asp") = 0 Then %>style="padding:0;"<%end if%>>
						<span>
							<span class="txt">�ʽû� Click!</span>
							<span class="bg"></span>
						</span>
					</a>
				</li>
				<%end if%>

				<% If cdate(lo_now_date) >= cdate("2022-11-04") then%>
				<li><a class="mli_link" href="/s/sobang/event/2022/11030046/index.asp#eventWrap" title="�ҹ�� ���� ķ����">�ҹ�� ���� ķ����</a></li>
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
					.twinkle.on > span span.txt { color:#b9200d; }
					.twinkle > span span.bg { margin-top:4px; display:inline-block; width:100px; height:25px; background:#b9200d; border:1px solid #b9200d; border-radius:12px;  }
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


				<%If CDate(lo_now_date) < CDate("2021-08-25") then%>
				<li class="myhome"><a class="mli_link" href="/mypage/study/my_study.asp" title="�� ���ǽ�">�� ���ǽ�</a></li>
				<li class="all_menu"><strong class="mli_link"><span>-</span><span>-</span><span>-</span></strong></li>
				<%elseif cdate(lo_now_date) < cdate("2021-12-08") Then%>
				<li class="myhome twobtn">
					<a class="mli_link" href="<%=sobangcampus_main%>" target="_blank" title="�뷮�� �п�">�뷮�� �п�</a>
					<a class="mli_link" href="<%=ansung_main%>" target="_blank" title="��� ������">��� ������</a>
				</li>
				<% else %>
				<!-- 211208 ���� -->
				<ul class="mnu_list3 <% If cdate(lo_now_date) >= cdate("2022-04-20") then%>d0420<% end if %>">
					<% If cdate(lo_now_date) >= cdate("2022-04-20") then%>
					<li  class="book"><a href="/book/bookshop.asp"><span>�¶��μ���</span></a></li>
					<% end if %>
					<li  class="current"><a href="javascript:;"><span>�ҹ��п�</span></a>
						<ul>
							<li><a href="https://sobangcampus.megagong.net/megagong.asp" target="_blank">�ܰ�/���չ�(�뷮��)</a></li>
							<li><a href="https://ansung.megagong.net/megagong.asp" target="_blank">��� ������(�ȼ�)</a></li>
							<li><a href="https://ngbr.megagong.net/megagong.asp" target="_blank">������ ������(���ĸ�Ÿ)</a></li>
						</ul>
					</li>
				</ul>
				
				<style>
					.mnu_list3{float: right;}
					.mnu_list3.d0420 li.book,
					.mnu_list3.d0420 li.current{position: relative;padding: 14px 30px;font-size:16px; color:#000;font-weight: 900;height: auto;}
					.mnu_list3 li.current { position: relative;padding: 14px 30px;font-size:16px; color:#000;font-weight: 900;height: auto;}
					.mnu_list3 li.current::before {content: "";display: block;position: absolute;top: 13px; left: 0;width: 21px;height: 17px;background: url(https://img.megagong.net/m/2021/1207_test360/academy_icon.png) no-repeat 0 0; }
					
					.mnu_list3 li ul{background: #fff; display:none; position:absolute; top: 40px; right: -15px; z-index:50;width: 180px; padding: 22px 19px; border: 1px solid #ddd;box-sizing: border-box;}
					.mnu_list3 li:hover ul{display:block;}
					.mnu_list3 li ul li{display:block; float:none; margin-bottom:8px;}
					.mnu_list3 li ul li:last-child{margin-bottom: 0;}
					.mnu_list3 li ul li:last-child a{border-bottom: none;}
					.mnu_list3 li ul a{position: relative; display:block; font-size:13px; text-align:left; color: #707070;padding: 0 0 6px 4px;border-bottom: 1px solid #e0e0e0;}
					.mnu_list3 li ul a:hover, .mnu_list3 li ul li:hover a{display: block;color: #000;}

					#headertop .hd_utility.fixed .mnu_list3 li a{color: #fff;}
					#headertop .hd_utility.fixed .mnu_list3 li ul li a{color: #000;}
					#headertop .hd_utility.fixed .mnu_list3 li ul{top: 44px;}
					#headertop .hd_utility.fixed .mnu_list3 li.current::before{background: url(https://img.megagong.net/m/2021/1207_test360/academy_icon_w.png);}
					

					/*220420  �¶��� ���� ������*/
					.mnu_list3.d0420 li{float: left; }
					.mnu_list3.d0420 li.current{padding: 14px 0 14px 30px;}
					.mnu_list3 li.book::before{content: "";display: block;position: absolute;top: 50%; transform: translateY(-50%); left: 0;width: 16px;height: 18px;background: url(https://img.megagong.net/m/common/book/book_icon.png);}
					#headertop .hd_utility.fixed .mnu_list3 li.book::before{background: url(https://img.megagong.net/m/common/book/book_icon_w.png);}
					/*//220420  �¶��� ���� ������*/
				</style>
				<% end if %>
			</ul>
			<%if CDate(lo_now_date) < CDate("2022-05-16") then%>
			<i style='position:absolute; top:-26px; right:-16px; z-index:2;'>
				<img src="<%=img_main%>/m/2022/0203_sbc/gnb_bubble.gif" alt="23�� ��� ����">
			</i>
			<% elseif CDate(lo_now_date) < CDate("2022-07-18") then%>
			<i style='position:absolute; top:-26px; right:-16px; z-index:2;' class="toggle_img">
				<img src="<%=img_main%>/m/2022/0429_sbcampus/gnb_bubble1.png" alt="7�� ���۹� ������!">
				<img src="<%=img_main%>/m/2022/0429_sbcampus/gnb_bubble2.png" alt="7�� ���۹� ������!">
			</i>
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
			<% elseif CDate(lo_now_date) < CDate("2022-09-20") then%>
			<i style='position:absolute; top:-26px; right:-16px; z-index:2;'>
				<img src="<%=img_main%>/m/2022/0718_sobang/bubble_top.gif" alt="9�� ���۹� ������!">
			</i>
			<% else %>
			<i style='position:absolute; top:-26px; right:-16px; z-index:2;'>
				<img src="<%=img_main%>/m/2022/0919_sbc/bubble_top.gif" alt="9�� ���۹� ������!">
			</i>
			<% end if %>

			<div class="right_btn online">
			</div>
		</nav>

		<div class="gnb_bgArea">
			<div class="bgArea" style="display: none;height: 95px;border-top:0"></div>
		</div>
	</div>
	<!-- hd_utility / E -->




	<!-- �ʽû� Ŭ�� S -->

	<% if instr(1, NowUrl, "/megagong.asp" )> 0 Then %>
	<span class="new_st_mo twinkle">
		<a href="javascript:st_pop_open();">
			<img src="<%=img_main%>/m/2022/0728_bn/sobang/new_st_label_mo_sobang.png" alt="�ʽû� click!" class="on1">
			<img src="<%=img_main%>/m/2022/0728_bn/sobang/new_st_label_mo_sobang_on.png" alt="�ʽû� click!" class="on2">
		</a>
		<button type="button" class="close">�ݱ�</button>
	</span>
	<%end if%> 

	<div class="new_st_pop" style="display:none">
		<div>
			<button type="button" class="close">
				<img src="<%=img_main%>/m/2022/0728_bn/img_button_close.png" alt="�ݱ�" class="">
			</button>
			<h3>
				<img src="<%=img_main%>/m/2022/0728_bn/sobang/st_pop_pc_tit.png" alt="�ҹ������ �غ� ó���̶��?" class="pc">
				<img src="<%=img_main%>/m/2022/0728_bn/sobang/st_pop_mo_tit.png" alt="�ҹ������ �غ� ó���̶��?" class="mo">
			</h3>
			<ul>
				<li>
					<a href="/s/sobang/event/2022/06240032/index.asp#eventWrap">
						<img src="<%=img_main%>/m/2022/0728_bn/sobang/st_pop_pc_bn1.png" alt="2023 �ҹ� Ʈ���帮��Ʈ" class="pc">
						<img src="<%=img_main%>/m/2022/0728_bn/sobang/st_pop_mo_bn1.png" alt="2023 �ҹ� Ʈ���帮��Ʈ" class="mo">
					</a>
				</li>
				<li>
					<a href="/s/sobang/event/2021/02020006/index.asp#eventWrap">
						<img src="<%=img_main%>/m/2022/0728_bn/sobang/st_pop_pc_bn2.png" alt="�ް��н� 7�� ����ü��" class="pc">
						<img src="<%=img_main%>/m/2022/0728_bn/sobang/st_pop_mo_bn2.png" alt="�ް��н� 7�� ����ü��" class="mo">
					</a>
				</li>
				<li>
					<a href="/s/sobang/examinfo/pass_opinion/index.asp#mContent">
						<img src="<%=img_main%>/m/2022/0728_bn/sobang/st_pop_pc_bn3.png" alt="�ް��ҹ� BEST �հݼ���" class="pc">
						<img src="<%=img_main%>/m/2022/0728_bn/sobang/st_pop_mo_bn3.png" alt="�ް��ҹ� BEST �հݼ���" class="mo">
					</a>
				</li>
				<li>
					<a href="/s/sobang/event/2022/04220024/index.asp#eventWrap">
						<img src="<%=img_main%>/m/2022/0728_bn/sobang/st_pop_pc_bn4.png" alt="2023 ALL NEW Ŀ��ŧ��" class="pc">
						<img src="<%=img_main%>/m/2022/0728_bn/sobang/st_pop_mo_bn4.png" alt="2023 ALL NEW Ŀ��ŧ��" class="mo">
					</a>
				</li>
				<%if CDate(lo_now_date) >= CDate("2022-09-16") then%>
				<li>
					<a href="/exam/basic/sobang_3/index.asp#eventWrap">
						<img src="<%=img_main%>/m/2022/0728_bn/sobang/st_pop_pc_bn5.png" alt="�ް��ҹ�  Fast �հ� �ַ��" class="pc">
						<img src="<%=img_main%>/m/2022/0728_bn/sobang/st_pop_mo_bn5.png" alt="�ް��ҹ�  Fast �հ� �ַ��" class="mo">
					</a>
				</li>
				<%end if%>
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
		#headertop .new_st_pop {display:none;position:fixed;z-index:10;top:538px;left:50%;margin-top:-330px; margin-left:-120px; width:280px; border:1px solid #d0d0d0; background:#fff; box-sizing:border-box; padding:19px; }
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
			#headertop .new_st_pop { top:50%; left:50%; transform:translate(-50%, -50%); margin:0;  }
		}
		@media (max-width: 768px){
			#headertop .new_st_mo {right:20px;}
			#headertop .new_st_pop .close { right:20px; width:auto; }
		}
		@media (max-width: 576px){
			#headertop .new_st_mo { bottom:65px; width: 20%; }
		}
	</style>
	<!-- // �ʽû� Ŭ�� E -->








	<!-- �޴� ��� ȭ�� -->
	<div class="hd_bottom mn">

		<div class="hdbt_wrp">

		</div>

		<!-- ��� �Ʒ� �޴� �ݱ� -->
		<div class="hd_bottom_close">
			<a href="javascript:;" onclick="" title="�ݱ�">�ݱ�</a>
		</div>
		<!-- // ��� �Ʒ� �޴� �ݱ� -->


		<!-- // ��ķ������ ��� ȭ�� -->
		<script type="text/javascript">
			$(document).ready(function () {

				/* --- ���� ��ü�޴� Ŭ�� �̺�Ʈ --- */
				var sobangAllmenu = $('#headertop .hd_utility .mnu_list.online .depth2');
				//policeAllmenu.hide();
				$(".all_menu").click(function (e) {
					e.preventDefault();
					if (sobangAllmenu.css("display") == "none") {
						sobangAllmenu.show(0);
						//$('.gnb_bgArea .bgArea').slideDown(150);
						$("#headertop .hd_utility").addClass("on");
						$("#headertop .hd_utility .mnu_list.online").removeClass("off");
						$("#headertop .hd_utility .mnu_list.online").addClass("on");
					} else {
						sobangAllmenu.hide(0);
						//$('.gnb_bgArea .bgArea').slideUp(150);
						$("#headertop .hd_utility").removeClass("on");
						$("#headertop .hd_utility .mnu_list.online").removeClass("on");
						$("#headertop .hd_utility .mnu_list.online").addClass("off");
					}
				});
			});
		</script>
	</div>
	<!-- // �޴� ��� ȭ�� -->


	<div class="mb_rightmenu">
		<a href="/mypage/study/my_study.asp" title="�� ���ǽ�">�� ���ǽ�</a>
	</div>


	<!-- hd_mo_utility / S -->
	<div id="hd_MoUtility" class="hd_mo_utility">
		<div class="mo_gnb">
			<nav>
				<div class="slider">
					<%If CDate(lo_now_date) < CDate("2021-08-25") then%>
					<div class="item"><a href="/s/sobang/pass/sale_2021.asp#eventWrap" class="chg_color" title="0�� �ҹ� �ް��н�">0�� �ҹ� �ް��н�</a></div>
					<%end if %>
					<div class="item"><a href="/teacher/index.asp" <% if gmenu = "1" Then %>class="on" <% End if %> title="������">������</a></div>
					<div class="item"><a href="/vod/vod_chr_list.asp?mcode=1" <% if gmenu = "2" Then %>class="on" <% End if %> title="��ü����">��ü����</a></div>
					
					<%'If CDate(lo_now_date) < CDate("2022-04-21") then%>
					<div class="item"><a href="/book/bookshop.asp" <% if gmenu = "3" Then %>class="on" <% End if %> title="�¶��μ���">�¶��μ���</a></div>
					<%'else %>
					<!-- <div class="item"><a href="/book/v22/index.asp" <% if gmenu = "3" Then %>class="on" <% End if %> title="�¶��μ���">�¶��μ���</a></div> -->
					<%'end if %>

					<div class="item"><a href="/s/sobang/examinfo/index.asp" <% if gmenu = "6" Then %>class="on" <% End if %> title="�հ����� LAB">�հ����� LAB</a></div>
					<div class="item"><a href="/help/faq/index.asp" <% if gmenu = "4" Then %>class="on" <% End if %> title="�н���������">�н���������</a></div>

					<% if cdate(lo_now_date) < cdate("2022-04-22 15:00") then%>
					<div class="item"><a href="/s/sobang/full/20220409/index.asp#fullContainer" <% if gmenu = "5" Then %>class="on" <% End if %> title="�հݿ��� Ǯ����">�հݿ��� Ǯ����</a></div>
					<%end if%>

					<%If CDate(lo_now_date) < CDate("2022-03-25") then%>
					<%If CDate(lo_now_date) >= CDate("2021-11-10") then%>
					<div class="item">
						<%If CDate(lo_now_date) < CDate("2021-12-06") then%>
						<a href="/s/sobang/mockexam/2022_1/index.asp#eventWrap" <% if gmenu = "4" Then %>class="on" <% End if %> title="���ǰ��" style="color:#da2738">���ǰ��</a>
						<%elseIf CDate(lo_now_date) < CDate("2022-01-10") then%>
						<a href="/s/sobang/mockexam/2022_2/index.asp#eventWrap" <% if gmenu = "4" Then %>class="on" <% End if %> title="���ǰ��" style="color:#da2738">���ǰ��</a>
						<%elseIf CDate(lo_now_date) < CDate("2022-02-07") then%>
						<a href="/s/sobang/mockexam/2022_3/index.asp#eventWrap" <% if gmenu = "4" Then %>class="on" <% End if %> title="���ǰ��" style="color:#da2738">���ǰ��</a>
						<%else %>
						<a href="/s/sobang/mockexam/2022_4/index.asp#eventWrap" <% if gmenu = "4" Then %>class="on" <% End if %> title="���ǰ��" style="color:#da2738">���ǰ��</a>
						<%end if %>
					</div>
					<%end if %>
					<%end if %>
	
					<% If cdate(lo_now_date) >= cdate("2022-11-04") then%>
					<div class="item"><a href="/s/sobang/event/2022/11030046/index.asp#eventWrap" title="�ҹ�� ���� ķ����">�ҹ�� ���� ķ����</a></div>
					<%end if%>
				</div>
			</nav>
		</div>
	</div>



	<script type="text/javascript">
		$(document).ready(function () {
			$('#hd_MoUtility .mo_gnb .slider').slick({
				infinite: false,
				rows: 1,
				swipeToSlide: true,
				focusOnSelect: false,
				centerMode: false,
				responsive: [{
					breakpoint: 1200,
					settings: {
						slidesToShow: 6,
						slidesToScroll: 6,
						variableWidth: false,
					}
				}, {
					breakpoint: 992,
					settings: {
						slidesToShow: 4,
						slidesToScroll: 4,
						variableWidth: true,
					}
				}]
			});


			$(window).on('load resize', function () {
				$('#hd_MoUtility .mo_gnb .slider').slick('refresh');
			}); 
			<%if gmenu = "3" or gmenu = "4" or gmenu = "6" then %>
				$('#hd_MoUtility .mo_gnb .slider').slick('slickGoTo', 2); 
			<%else %>
				//$('#hd_MoUtility .mo_gnb .slider').slick('slickGoTo', 0);
			<% end if %>
		});
	</script>

	<!-- hd_mo_utility / E -->



</div>

<!-- hd_wrp / E -->







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
					<a class="" href="/member/login.asp">�α���</a>
					<% else %>
					<a class="lgout" href="/member/logout_sql.asp">�α׾ƿ�</a>
					<% end if %>
				</div>
			</div>
		</div>
		<div class="mobile_navinner">
			<nav>
				<ul class="mobile_nav">

					<% if cdate(lo_now_date) < cdate("2022-04-22 15:00") then%>
					<li class="hd_mock"><a href="/s/sobang/full/20220409/index.asp#fullContainer" title="�հݿ��� Ǯ����">�հݿ��� Ǯ����</a></li>
					<style>
						.mobile_nav>li.hd_mock {background: linear-gradient(135deg, rgba(190, 80, 180) 0%, rgba(48, 48, 235) 100%);}
						#headertop .hd_wrp.v21_2 .hd_utility .mnu_list.online.sub.n0927 > li > a {font-size:14.5px;padding:0 14px;}/* Ǯ���� ���� */
					</style>
					<%end if%>

					<li class="more">
						<a href="javascript:;" title="�ް��ҹ�">�ް��ҹ�</a>
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
									<dd><a href="<%=army_main %>/s/army/campus/index.asp" title="�ް��������п�">�ް��������п� <img
												src="<%=img_main%>/common/ic_new.gif" alt="New"
												style="vertical-align:middle;margin:-3px 0 0 3px;" /></a></dd>
									<%end if%>

									<%if hcode <> "ansung" then%>
									<dd><a href="<%=ansung_main %>" title="�ް������� ������ 24hr">�ް������� ������ 24hr</a></dd>
									<%end if%>

									<%if hcode <> "ngbr" then%>
									<dd><a href="<%=ngbr_main %>" title="�ް������� ���ĸ�Ÿ">�ް������� ���ĸ�Ÿ</a></dd>
									<%end if%>
									<dd><a href="https://www.megajob.co.kr/megajob.asp " title="�ް������">�ް������ <img src="<%=img_main%>/common/ic_new.gif" alt="New" style="vertical-align:middle;margin:-3px 0 0 3px;" /></a></dd>
								</dl>
							</li>
						</ul>
					</li>
					<%If cdate(lo_now_date) < cdate("2021-08-25") Then%>
					<li><a href="/teacher/index.asp" title="�ҹ漱����">�ҹ漱����</a></li>
					<li><a href="/vod/vod_chr_list.asp?mcode=1" title="�ҹ氭��">�ҹ氭��
							<%If cdate(lo_now_date) < cdate("2020-04-06") Then%><img
								src="<%=img_main%>/m/2020/0214_chrbnr/hd_bubble.png" alt="�� ���� 30% ����"
								style="margin-left:10px;vertical-align:middle" /><%End if%></a></li>
					<%else%>
					<li><a href="/teacher/index.asp" title="������">������</a></li>
					<li><a href="/vod/vod_chr_list.asp?mcode=1" title="��ü����">��ü����</a></li>
					<%end if%>


					<%'If CDate(lo_now_date) < CDate("2022-04-21") then%>
					<li><a href="/book/bookshop.asp" title="�¶��μ���">�¶��μ���</a></li>
					<%'else %>
					<!-- <li><a href="/book/v22/index.asp" title="�¶��μ���">�¶��μ���</a></li> -->
					<%'end if %>
					
					
					<%If cdate(lo_now_date) < cdate("2021-08-25") Then%>
					<li><a href="/s/sobang/examinfo/index.asp" title="��������">��������</a></li>
					<%else%>
					<li><a href="/s/sobang/examinfo/index.asp" title="�հ����� LAB">�հ����� LAB</a></li>
					<%end if%>
					<li><a href="/mypage/index.asp" title="����������">����������</a></li>
					<li><a href="/mypage/study/my_study.asp" title="�� ���ǽ�">�� ���ǽ�</a></li>
					<li><a href="/help/faq/index.asp" title="�н���������">�н���������</a></li>
					<%If cdate(lo_now_date) >= cdate("2022-11-04") then%>
					<li><a href="/s/sobang/event/2022/11030046/index.asp#eventWrap" title="�ҹ�� ���� ķ����">�ҹ�� ���� ķ����</a></li>
					<%end if%>

					
					<%If CDate(lo_now_date) < CDate("2022-03-25") then%>
					<%If CDate(lo_now_date) >= CDate("2021-11-10") then%>
					<li>
						<a 
						<%If CDate(lo_now_date) < CDate("2021-12-06") then%>
						href="/s/sobang/mockexam/2022_1/index.asp#eventWrap" 
						<%elseIf CDate(lo_now_date) < CDate("2022-01-10") then%>
						href="/s/sobang/mockexam/2022_2/index.asp#eventWrap" 
						<%elseIf CDate(lo_now_date) < CDate("2022-02-07") then%>
						href="/s/sobang/mockexam/2022_3/index.asp#eventWrap" 
						<% else %>
						href="/s/sobang/mockexam/2022_4/index.asp#eventWrap" 
						<% end if %>
						title="���ǰ��">���ǰ��</a>
						<span class="mock">
							<%If CDate(lo_now_date) < CDate("2021-12-04") then%>
							<img src="<%=img_main%>/m/2021/1110_exam/mo_header_mock1_1.png" alt="1ȸ ��û ��" class="on1">
							<img src="<%=img_main%>/m/2021/1110_exam/mo_header_mock1_2.png" alt="1ȸ ��û ��" class="on2">
							
							<%elseIf CDate(lo_now_date) < CDate("2021-12-04 10:00") then%>

							<%elseIf CDate(lo_now_date) < CDate("2021-12-06") then%>
							<img src="<%=img_main%>/m/2021/1110_exam/mo_header_mock2_1.png" alt="1ȸ ���� ��" class="on1">
							<img src="<%=img_main%>/m/2021/1110_exam/mo_header_mock2_2.png" alt="1ȸ ���� ��" class="on2">
							<%elseIf CDate(lo_now_date) >= CDate("2021-12-06") and cdate(lo_now_date) < cdate("2022-01-08") then%>
							<img src="<%=img_main%>/m/2021/1110_exam/1203/mo_header_mock1_1_v2.png" alt="2ȸ ��û ��" class="on1">
							<img src="<%=img_main%>/m/2021/1110_exam/1203/mo_header_mock1_2_v2.png" alt="2ȸ ��û ��" class="on2">
							<%elseIf cdate(lo_now_date) >= cdate("2022-01-08") and cdate(lo_now_date) < cdate("2022-01-08 10:00") then%>
						
							<%elseIf cdate(lo_now_date) >= cdate("2022-01-08 10:00") and cdate(lo_now_date) < cdate("2022-01-10") then%>
							<img src="<%=img_main%>/m/2021/1110_exam/0107/mo_header_mock2_1_v2.png" alt="2ȸ ���� ��" class="on1">
							<img src="<%=img_main%>/m/2021/1110_exam/0107/mo_header_mock2_2_v2.png" alt="2ȸ ���� ��" class="on2">

							<%elseIf cdate(lo_now_date) >= cdate("2022-01-10 ") and cdate(lo_now_date) < cdate("2022-02-05") then%>
							<img src="<%=img_main%>/m/2021/1110_exam/0107/mo_header_mock1_1_v3.png" alt="3ȸ ��û ��" class="on1">
							<img src="<%=img_main%>/m/2021/1110_exam/0107/mo_header_mock1_2_v3.png" alt="3ȸ ��û ��" class="on2">
							<%elseIf CDate(lo_now_date) < CDate("2022-02-05 10:00") then%>

							<%elseIf cdate(lo_now_date) >= cdate("2022-02-05 10:00") and cdate(lo_now_date) < cdate("2022-02-07") then%>
							<img src="<%=img_main%>/m/2021/1110_exam/0204/mo_header_mock2_1_v3.png" alt="3ȸ ���� ��" class="on1">
							<img src="<%=img_main%>/m/2021/1110_exam/0204/mo_header_mock2_2_v3.png" alt="3ȸ ���� ��" class="on2">

							<%elseIf cdate(lo_now_date) >= cdate("2022-02-07 ") and cdate(lo_now_date) < cdate("2022-03-05") then%>
							<img src="<%=img_main%>/m/2021/1110_exam/0204/mo_header_mock1_1_v4.png" alt="4ȸ ��û ��" class="on1">
							<img src="<%=img_main%>/m/2021/1110_exam/0204/mo_header_mock1_2_v4.png" alt="4ȸ ��û ��" class="on2">
							<%elseIf CDate(lo_now_date) < CDate("2022-03-05 10:00") then%>

							<%elseIf cdate(lo_now_date) >= cdate("2022-03-05 10:00") and cdate(lo_now_date) < cdate("2022-03-07") then%>
							<img src="<%=img_main%>/m/2021/1110_exam/0204/mo_header_mock2_1_v4.png" alt="4ȸ ���� ��" class="on1">
							<img src="<%=img_main%>/m/2021/1110_exam/0204/mo_header_mock2_2_v4.png" alt="4ȸ ���� ��" class="on2">
							<% end if %>
						</span>
					</li>
					<% end if %>
					<%end if %>
				</ul>
			</nav>
		</div>
		<div class="mbmenu_bottom <%If cdate(lo_now_date) >= cdate("2021-08-24") Then%>left_bnr<%End if%>">
			<div class="goodnote_wrp">
				<%If cdate(lo_now_date) < cdate("2022-03-10 18:00") Then%>
				<a href="/event/2021/12160013/index.asp#eventWrap" title="�ް����� �ٷΰ���"><strong>�ް�����</strong> �ٷΰ���<i></i></a>
				<%else%>
				<a href="/s/sobang/event/2022/03100017/index.asp#eventWrap" title="�ް����� �ٷΰ���"><strong>�ް�����</strong> �ٷΰ���<i></i></a>
				<%End if%>
			</div>
			<div class="snsgo_wrp">
				<a href="https://blog.naver.com/megasobang" target="_blank" class="naver_b" title="���̹���α�"><span>���̹���α�</span></a>
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
<div id="mo_globalMenu" class="glbal_menu online fixed">
	<div class="gm_inner">
		<ul>
			<li class="all"><a href="javascript:;" title="��ü"><span>��ü</span></a></li>
			<li class="lect"><a href="/mypage/study/my_study.asp" title="���ǽ�"><span>���ǽ�</span></a></li>
			<li class="home"><a href="<%=h_lnk %>" title="Ȩ"><span>Ȩ</span></a></li>
			<li class="my"><a href="/mypage/index.asp" title="MY"><span>MY</span></a></li>
			<li class="top"><a href="javascript:glb_movetop();" title="������"><span>������</span></a></li>
		</ul>
	</div>
</div>
<!--  // ����� �ϴ� ���� �޴� & TOP��ư -->




<script type="text/javascript">
	$(document).ready(function () {

		/* ����ϸ޴� */
		$('.glbal_menu .all').click(function (e) {
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
			$('.glbal_menu .all').addClass('on');
			$('body').addClass('disabled');
			$(".mobile_navwrap").show("fast");
			return false;
		}
		// ����ϸ޴�, �� ��� �����
		function mbnav_hide() {
			$(".mbnav_back").removeClass('on');
			$('.glbal_menu .all').removeClass('on');
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
		$('html, body').animate({
			scrollTop: 0
		}, 0);
	}
	// ����� top ��ư (e)
</script>
<!-- // ����� �޴� -->


	<!--�ҹ��ܿ������-->
	<% If CDate(lo_now_date) >= CDate("2022-08-11") and CDate(lo_now_date) < CDate("2022-09-12") then%>
	<% if instr(1, NowUrl, "/megagong.asp") = 1 Then %>
	<% If fncRequestCookie("main_top_bn") = "" then %>
	<div class="main_top_bn">
		<ul class="close">
			<li><a href="javascript:brfDay_main_top_bn();"><img src="<%=img_main%>/m/2022/0811_basicexam/btn_close_today.png" alt="���� �Ϸ� �ݱ�"/></a></li>
			<li><a href="javascript:brfOff_main_top_bn();"><img src="<%=img_main%>/m/2022/0811_basicexam/btn_close.png" alt="�ݱ�"/></a></li>
		</ul>
		<div>
			<a href="/exam/basic/sobang_3/index.asp#eventWrap" target="_blank">
				<img src="<%=img_main%>/m/2022/0811_basicexam/bn_top.png" alt="�ް��ҹ� fast �հ� �ַ��">
			</a>
		</div>
	</div>  
	<style>
		.main_top_bn { position:absolute; top:120px; left:50%; margin-left:280px; z-index:2; }
		.main_top_bn .close { overflow:hidden; text-align:right; font-size:0; }
		.main_top_bn .close li { display:inline-block; vertical-align:top; margin-left:3px; }

		@media (max-width:1200px){
			.main_top_bn { display:none !important; }
		}
	</style>
	<script type="text/javascript">
		function brfDay_main_top_bn(){
			setCookie("main_top_bn", "close", 1);
			if ($(".main_top_bn").css("display") == "block") {
				$(".main_top_bn").hide();
			}
		}
		function brfOff_main_top_bn(){
			$(".main_top_bn").hide();
		}
	</script>
	<% end if %>
	<% End if %>
	<% End if %>
	<!--//�ҹ��ܿ������-->

    <!-- �ް��н� 20% ���� ���θ�� ���-->
	<% If CDate(lo_now_date) >= CDate("2022-03-22") and CDate(lo_now_date) < CDate("2022-04-12 09:00") then%>
    <% If fncRequestCookie("mega_pop") = "" then %>
        <!--�ҹ�-->
		<div class="mega_pop">
			<a href="/s/sobang/pass/sale_2021.asp#eventWrap" target="_blank">
				<% If CDate(lo_now_date) < CDate("2022-04-05 09:00") then%>
				<img src="<%=img_main%>/m/2022/0322_pass/sobang/bn_right.png" alt="�ҹ� �ް��н�" usemap="#mega_pop" />
				<% else %>
				<img src="<%=img_main%>/m/2022/0322_pass/sobang/bn_right2.png" alt="�ҹ� �ް��н�" usemap="#mega_pop" />
				<% end if %>
			</a>
			<map id="mega_pop" name="mega_pop">
				<area shape="rect" alt="�����Ϸ翭���ʱ�" coords="3,188,91,202" href="javascript:brfDay_megapop();" />
				<area shape="rect" alt="�ݱ�" coords="80,4,90,14" href="javascript:brfOff_megapop();" />
			</map>
		</div>  
        <style>
            .mega_pop {  position:fixed; top:285px; right:0; z-index:2; }
        </style>
        <script type="text/javascript">
			if ( location.href.match('/teacher/index.asp') ||
				location.href.match('/book/bookshop.asp') ||
				location.href.match('/s/sobang/examinfo/index.asp') ||
				location.href.match('/help/faq/') ||
				location.href.match('/teacher/home.asp') ||
				(location.href.match('/vod/vod_chr_list.asp') && location.href.match('mcode=1'))
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
	<% end if %>
	<% end if %>

    <!--// �ް��н� 20% ���� ���θ�� ���-->