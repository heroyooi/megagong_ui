	<style type="text/css">
	#headertop .gnb_bgArea .bgArea{height:220px}
	</style>


	<div class="hd_wrp">
		<div class="hd_left_bnr ansung" style="width: 304px;">
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
			/* --- hd_slider �����̴�--- */
			var hdleft_s = $('.hd_left_bnr .hd_slider div').length;
			if (hdleft_s > 1) {
				$('.hd_left_bnr .hd_slider').slick({
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
			/* --- // hd_slider �����̴�--- */
		</script>
		<% if CDate(lo_now_date) >= CDate("2020-12-04") then %>
		<style>
			#headertop .hd_wrp .hd_left_bnr{height: 76px;margin-top: -58px;}
		</style>
		<% end if %>

		<h1 class="hd_logo">
			<a href="<%=h_lnk %>" class="ansung" title="�ް������� ������ 24hr ���������� �ٷΰ���"><img src="<%=img_main%>/c/ansung/logo_renewal.png" alt="�ް������� ������ 24hr"></a>
		</h1>

		<a href="javascript:;" class="mobile_navbtn" title="����ϸ޴� ����">
	      <span>-</span>
	      <span>-</span>
	      <span>-</span>
	   </a>

		<div class="hd_utility">
			<h2 class="blindw">�ް������� ������ 24hr GNB �޴�</h2>
			<nav role="navigation">
				<!-- �ȼ����� -->
				<ul class="mnu_list ansung police new">
					<li <% if gmenu = "1" Then %>class="on"<% End if %>><a class="mli_link" href="/c/ansung/intro/intro1.asp" title="�п��Ұ�">�п��Ұ�</a>
						<ul>
							<li><a href="/c/ansung/intro/intro1.asp" title="����ö��">����ö��</a></li>
							<li><a href="/c/ansung/intro/intro2.asp" title="�п�Ư����">�п�Ư����</a></li>
							<li><a href="/c/ansung/intro/intro6.asp" title="�հݰ��� �ý���">�հݰ��� �ý���</a></li>
							<li><a href="/c/ansung/intro/intro3.asp" title="������ �Ұ�">������ �Ұ�</a></li>
							<li><a href="/c/ansung/intro/intro4.asp" title="�п��ü�">�п��ü�</a></li>
							<li><a href="/c/ansung/intro/intro5.asp" title="�п� ���ô±�">�п� ���ô±�</a></li>
						</ul>
					</li>
					<li <% if gmenu = "7" Then %>class="on"<% End if %>><a class="mli_link" href="/c/ansung/pass/pass_index.asp" title="���� ����">���� ����</a>
						<ul>
							<li><a href="/c/ansung/pass/pass_index.asp" title="���� ����">���� ����</a></li>
							<li><a href="/c/ansung/pass/pass_final_index.asp" title="�հݻ� ��Ҹ�">�հݻ� ��Ҹ�</a></li>
							<li><a href="/c/ansung/pass/pass_report_final.asp" title="����� ���� �м�">����� ���� �м�</a></li>
						</ul>
					</li>
					<li <% if gmenu = "2" Then %>class="on"<% End if %>><a class="mli_link" href="/c/ansung/program/gong/index.asp" title="������������">������������</a>
						<ul>
							<li><a href="/c/ansung/program/gong/index.asp" title="������ ���α׷�">������ ���α׷�</a></li>
							<li><a href="/c/ansung/program/gong/guide1.asp" title="������ ��������">������ ��������</a></li>
							<li><a href="/c/ansung/program/gong/timetable.asp" title="�Ϸ� �ϰ�ǥ">�Ϸ� �ϰ�ǥ</a></li>
							<li><a href="/c/ansung/program/gong/prepare.asp" title="���� �غ�">���� �غ�</a></li>
							<li><a href="/c/ansung/program/gong/refund.asp" title="ȯ�ұ���">ȯ�ұ���</a></li>
						</ul>
					</li>
					<li <% if gmenu = "3" Then %>class="on"<% End if %>><a class="mli_link" href="/c/ansung/program/police/2020/index.asp" title="����������">����������</a>
						<ul>
							<li><a href="/c/ansung/program/police/2020/index.asp" title="���� ���α׷�">���� ���α׷�</a></li>
							<li><a href="/c/ansung/program/police/timetable.asp" title="�Ϸ� �ϰ�ǥ">�Ϸ� �ϰ�ǥ</a></li>
							<li><a href="/c/ansung/program/police/prepare.asp" title="���� �غ�">���� �غ�</a></li>
							<li><a href="/c/ansung/program/police/refund.asp" title="ȯ�ұ���">ȯ�ұ���</a></li>
						</ul>
					</li>
					<li <% if gmenu = "8" Then %>class="on"<% End if %>><a class="mli_link" href="/c/ansung/program/sobang/index.asp" title="�ҹ�������">�ҹ�������</a>
						<ul>
							<li><a href="/c/ansung/program/sobang/index.asp" title="�ҹ� ���α׷�">�ҹ� ���α׷�</a></li>
							<li><a href="/c/ansung/program/sobang/timetable.asp" title="�Ϸ� �ϰ�ǥ">�Ϸ� �ϰ�ǥ</a></li>
							<li><a href="/c/ansung/program/sobang/prepare.asp" title="���� �غ�">���� �غ�</a></li>
							<li><a href="/c/ansung/program/sobang/refund.asp" title="ȯ�ұ���">ȯ�ұ���</a></li>
						</ul>
					</li>
					<li <% if gmenu = "9" Then %>class="on"<% End if %>><a class="mli_link" href="/c/ansung/news/notice/list.asp" title="�п��ҽ�">�п��ҽ�</a>
						<ul>
							<li><a href="/c/ansung/news/notice/list.asp" title="��������">��������</a>
							<li><a href="/c/ansung/news/communicate/life/list.asp" title="����� ����">����� ����</a></li>
							<li><a href="/c/ansung/news/togather.asp" title="���� ������Ʈ">���� ������Ʈ</a></li>
							<li><a href="/c/ansung/news/data/list.asp" title="�ڷ��">�ڷ��</a></li>
						</ul>
					</li>

					<li <% if gmenu = "6" Then %>class="on"<% End if %>><a class="mli_link" href="/c/ansung/help/faq/index.asp" title="�п����">�п����</a>
						<ul>
							<li><a href="/c/ansung/help/faq/index.asp" title="FAQ">FAQ</a></li>
							<li><a href="/c/ansung/help/qna/write.asp" title="1:1 ���ǻ��">1:1 ���ǻ��</a></li>
							<li><a href="/c/ansung/help/guide/list.asp" title="�п� ���̵�� ��û">�п� ���̵�� ��û</a></li>
							<li><a href="/c/ansung/presentation/index.asp" title="����ȸ ���� �� �˸� ����">����ȸ ���� �� �˸� ����</a></li>
						</ul>
					</li>
					<li class="all_menu"><strong class="mli_link"><span>-</span><span>-</span><span>-</span></strong></li>
				</ul>
				<!-- // �ȼ����� -->

				<div class="right_btn">

				</div>

			</nav>

			<div class="gnb_bgArea"><div class="bgArea" style="display: none;"></div></div>
		</div>

	</div>

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

			/* --- ���� ��ü�޴� Ŭ�� �̺�Ʈ --- */
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
	<!-- // �޴� ��� ȭ�� -->



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
								<a href="javascript:;" title="�ް������� ������ 24hr">�ް������� ������ 24hr</a>
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
							<li><a href="/c/ansung/intro/intro1.asp" title="�п��Ұ�">�п��Ұ�</a></li>
							<li><a href="/c/ansung/pass/pass_index.asp" title="���� ����">���� ����</a></li>
		                    <li><a href="/c/ansung/program/gong/index.asp" title="������������">������������</a></li>
							<li><a href="/c/ansung/program/police/2020/index.asp" title="����������">����������</a></li>
							<li><a href="/c/ansung/program/sobang/index.asp" title="�ҹ�������">�ҹ�������<img src="<%=img_main%>/m/2020/0305_ansungSB/hd_bubble.png" alt="4�� ����!" style="margin-left:10px;vertical-align:middle"></a></li>
                            <li><a href="/c/ansung/news/notice/list.asp" title="�п��ҽ�">�п��ҽ�</a></li>
							<li><a href="/c/ansung/help/faq/index.asp" title="�п����">�п����</a></li>
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
				<li class="glb_key3"><a href="/c/ansung/intro/intro1.asp" title="�п��Ұ�"><span>�п��Ұ�</span></a></li>
				<li class="glb_key5"><a href="/c/ansung/program/gong/index.asp" title="������������"><span>������������</span></a></li>
				<li class="glb_key5"><a href="/c/ansung/program/police/2020/index.asp" title="����������"><span>����������</span></a></li>
				<li class="glb_key5"><a href="/c/ansung/program/sobang/index.asp" title="�ҹ�������"><span>�ҹ�������</span></a></li>
				<li class="glb_key4"><a href="/c/ansung/help/notice/list.asp" title="�� ���ǽ�"><span>�п����</span></a></li>
			</ul>
		</div>
		<div class="topgo">
			<a href="javascript:;" onclick="glb_movetop(); return false;" title="���ΰ���">���ΰ���</a>
		</div>
	</div>
	<!--  // ����� �ϴ� ���� �޴� & TOP��ư -->




	<script type="text/javascript">
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

        // ����� top ��ư (s)
        function glb_movetop() {
            $('html, body').animate({ scrollTop: 0 }, 400);
        }
   // ����� top ��ư (e)
	</script>
	<!-- // ����� �޴� -->
