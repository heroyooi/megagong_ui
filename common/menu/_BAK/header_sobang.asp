	<div class="hd_wrp">

		<%if false then%>
		<%end if%>
		<div class="hd_left_bnr sobang pc">
			<div>
				<div>
					<div class="sobang_bnr">
						<a href="javascript:;" class="main_rank_banner" title="�湮�ڼ� 1��"><img src="<%=img_main%>/m/2020/0326_sobang_new/main_ranking_1208.png" alt="�湮�ڼ� 1��"></a>
						<a href="javascript:;" class="main_rank_banner" title="10�� �� 6�� �հ�"><img src="<%=img_main%>/m/2020/0326_sobang_new/main_ranking2_1208.png" alt="10�� �� 6�� �հ�"></a>
					</div>
				</div>
			</div>
		</div>

		<div class="hd_left_bnr2 sobang mobile">
			<div class="sobang_bnr">
				<a href="javascript:;" class="main_rank_banner_mo" title="�湮�ڼ� 1��"><img src="<%=img_main%>/m/2020/0326_sobang_new/main_ranking_1208.png" alt="�湮�ڼ� 1��"></a>
				<a href="javascript:;" class="main_rank_banner_mo" title="10�� �� 6�� �հ�"><img src="<%=img_main%>/m/2020/0326_sobang_new/main_ranking2_1208.png" alt="10�� �� 6�� �հ�"></a>
			</div>
		</div>

		<script>
			$(function(){
				$('.sobang_bnr').slick({
					slidesToShow: 1,
					slidesToScroll: 1,
					infinite: true,
					dots: false,
					arrows: false,
					speed: 0,
					autoplaySpeed: 3000,
					autoplay: true
				});
				
			});
		</script>

		<style type="text/css">
			#headertop .hd_wrp .hd_left_bnr.sobang.pc { /*display:block;*/ visibility:visible; margin-top: -68px;}
			#headertop .hd_wrp .hd_left_bnr.sobang.pc .sobang_bnr { width:206px; height:80px; overflow:hidden; }
			.hd_left_bnr2.sobang.mobile { display:none; }
			
			#headertop .hd_wrp .hd_left_bnr a.main_rank_banner_mo {display:none;}
			@media (max-width: 1200px){
				#headertop .hd_wrp .hd_left_bnr.sobang.pc { /*display:none;*/ visibility:hidden; }
				.hd_left_bnr2.sobang.mobile { display:block; position:absolute;top:50%;right:2%;width:112px; height:43px; overflow:hidden; transform: translateY(-50%); z-index:1; }
				#headertop .hd_wrp .hd_left_bnr a.main_rank_banner{display: none}
				#headertop .hd_wrp .hd_left_bnr a.main_rank_banner_mo {display:block;}
				#headertop .hd_wrp .hd_left_bnr { left:inherit !important; width:150px; }
			}
			@media (max-width: 950px){
				#headertop .hd_wrp .hd_left_bnr { width:147px; }
			}
			@media (max-width: 770px){
				#headertop .hd_wrp .hd_left_bnr { width:115px; }
			}
			@media (max-width: 650px){
				#headertop .hd_wrp .hd_left_bnr { width:105px; }
			}
		</style>

		<h1 class="hd_logo center">
			<a href="<%=h_lnk %>" class="sobang <% If CDate(lo_now_date) < CDate("2019-11-10") Then%>logoproject_sobang_pc<% End If %>" title="�ް��ҹ� ���������� �ٷΰ���"><img src="<%=img_main%>/s/sobang/logo_v2.png" alt="�ް� �ҹ�"></a>
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
			<h2 class="blindw">�ް��ҹ� GNB �޴�</h2>
			<nav role="navigation">
				<!-- �ȼ� GNB Ŭ���� : class="mnu_list police"-->
				<!-- ������,�ҹ� �¶���-->
				<ul class="mnu_list sobang">
					<li <% if gmenu = "1" Then %>class="on"<% End if %>><a class="mli_link" href="/teacher/index.asp" title="�ҹ漱����">�ҹ漱����</a></li>
					<li <% if gmenu = "2" Then %>class="on"<% End if %>><a class="mli_link" href="/vod/vod_chr_list.asp?mcode=1" title="�ҹ氭��">�ҹ氭��</a> <%If cdate(lo_now_date) < cdate("2020-04-06") Then%><i style="left: -10px;right: -10px;top: -20px;"><img src="<%=img_main%>/m/2020/0326_sobang_new/bubble_1.png" alt="�� ���� 30% ����"><!-- <span style="width:118px;">�� ���� <font style="color:#f8ff39">30% ����</font></span>--></i><%End if%></li>
					<li <% if gmenu = "3" Then %>class="on"<% End if %>><a class="mli_link" href="/book/bookshop.asp" title="�¶��μ���">�¶��μ���</a></li>
					<li <% if gmenu = "6" Then %>class="on"<% End if %>><a class="mli_link" href="/s/sobang/examinfo/index.asp" title="��������">��������</a></li>
					<li <% if gmenu = "4" Then %>class="on"<% End if %>><a class="mli_link" href="/help/faq/index.asp" title="�н���������">�н���������</a></li>
					<li><a class="mli_link chg_color" href="/s/sobang/pass/sale.asp" title="0�� �ҹ� �ް��н�">0�� �ҹ� �ް��н�</a></li>
				</ul>
				<!-- // ������,�ҹ� �¶���-->

				<div class="right_btn online">
                    <a href="javascript:;" title="�ް��������п�">
						<i style="top: -20px;margin-left: -68px;"><img src="<%=img_main%>/m/2021/0118_sbcampus/bubble.gif" alt="3�� ���۹�"></i>

						<span>���� �п� �ٷΰ���</span>
					</a>
					<ul class="depth2">
                        <li <% if hcode = "sobangcampus" Then %>class="on"<% End if %>><a href="<%=sobangcampus_main %>" class="focus" title="�ް��ҹ��п�">�ް��ҹ��п�</a></li>
                        <li <% if hcode = "gongssel" Then %>class="on"<% End if %>><a href="<%=gongssel_main %>" class="focus" title="�ް��������п�">�ް��������п�</a></li>
						<li <% if hcode = "army" Then %>class="on"<% End if %>><a href="<%=gongssel_main %>/c/gongssel/help/notice/view.asp?idx=2463&cate=01&searchkey=&searchword=&page=1#mContainer" class="focus" title="���� �������п�">���� �������п�</a></li>
                        <li <% if hcode = "ansung" Then %>on"<% End if %>><a href="<%=ansung_main %>" class="focus" title="����п�(����,����, �ҹ�)">����п� (����, ����, �ҹ�)</a></li>
						<li>
							<a href="javascript:;" class="road2" title="�ް������� ���ĸ�Ÿ">�ް������� ���ĸ�Ÿ</a>
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
							<!-- �α׾ƿ��� lgout Ŭ���� �߰� -->
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

											<%If cdate(lo_now_date) >= cdate("2021-04-02 00:00") then%>
											<%if hcode <> "campus" then%>
											<dd><a href="<%=army_main %>/s/army/campus/index.asp" title="�ް��������п�">�ް��������п�</a></dd>
											<%end if%>
											<%end if%>
											
											<%if hcode <> "ansung" then%>
											<dd><a href="<%=ansung_main %>" title="�ް������� ������ 24hr">�ް������� ������ 24hr</a></dd>
											<%end if%>
										</dl>
									</li>
								</ul>
							</li>
							<li><a href="/teacher/index.asp" title="�ҹ漱����">�ҹ漱����</a></li>
		                    <li><a href="/vod/vod_chr_list.asp?mcode=1" title="�ҹ氭��">�ҹ氭�� <%If cdate(lo_now_date) < cdate("2020-04-06") Then%><img src="<%=img_main%>/m/2020/0214_chrbnr/hd_bubble.png" alt="�� ���� 30% ����" style="margin-left:10px;vertical-align:middle"/><%End if%></a></li>
		                    <li><a href="/book/bookshop.asp" title="�¶��μ���">�¶��μ���</a></li>
							<li><a href="/s/sobang/examinfo/index.asp" title="��������">��������</a></li>
							<li><a href="/mypage/index.asp" title="����������">����������</a></li>
							<li><a href="/mypage/study/my_study.asp" title="�� ���ǽ�">�� ���ǽ�</a></li>
							<li><a href="/help/faq/index.asp" title="�н���������">�н���������</a></li>
						</ul>
					</nav>
				</div>
				<div class="mbmenu_bottom">
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
				<li class="glb_key2"><a href="/vod/vod_chr_list.asp?mcode=1" title="�ҹ氭��"><span>�ҹ氭��</span></a></li>
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
		<div id="superRight_bnr_exten" class="superRight_bnr exten" style="margin-top:-40px;">
			<p>
				<img src="<%=img_main%>/m/2020/0303_exten/main_sobang_m.jpg" alt="�ҹ� ������ ���� ���⿡ ���� �����Ⱓ Ư������" />
				<a href="/help/notice/view.asp?idx=2102&cate=02&searchkey=&searchword=&page=1" style="height:144px;">�ҹ� ������ ���� ���⿡ ���� �����Ⱓ Ư������</a>
				<button onclick="clearSP_main_exten();" class="close_btn"><img src="<%=img_main%>/c/gongssel/main/pop_close.png" alt="�˾� �ݱ�"/></button>
				<!-- <button onclick="fncSPOffDay_exten();" class="dayclose_btn"><img src="<%=img_main%>/m/common/main_right_tdnone.png" alt="���� �Ϸ� �ݱ�"/></button> -->
				<i></i>
			</p>
		</div>
		<style type="text/css">
			.superRight_bnr.exten{display: none;}
			.superRight_bnr.exten .dayclose_btn{bottom: -20px;opacity: 1;background: none;height: auto;padding: 4px 0;display: none}
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


	<!-- �ҹ� ���� ��� -->
    <% If fncRequestCookie("mainSPright_mr") = "" then %>
	<%If cdate(lo_now_date) < cdate("2021-02-27 15:00") then%>
    <div id="superRight_bnr" class="superRight_bnr ansungbf presnt" style="margin-top: -190px;">
        <p>
			<img src="<%=img_main%>/m/2020/1106_encore/1202/flo_0205.png" alt="�հ����� ����ȸ ��û�ϱ�" />
			<a href="/c/sobang/event/2020/04070003/index.asp" target="_blank" style="height:132px">�հ����� ����ȸ ��û �ٷΰ���</a>
			<button onclick="clearSP_main();" class="close_btn"><img src="<%=img_main%>/c/gongssel/main/pop_close.png" alt="�˾� �ݱ�"></button>
            <button onclick="fncSPOffDay_mr();" class="dayclose_btn">���� �Ϸ� �ݱ�</button>
            <i></i>
        </p>
    </div>
	<style type="text/css">
		.superRight_bnr.ansungbf.presnt .dayclose_btn{bottom: 0;opacity: 1;background: none;height: auto;padding: 4px 0;}
		.superRight_bnr.ansungbf.presnt .close_btn{height:12px}
		.superRight_bnr.ansungbf.presnt .dayclose_btn{height:24px;}
		.superRight_bnr.ansungbf.presnt p a{height:160px;top:11px}
		@media all and (max-width:1200px){
			.superRight_bnr.ansungbf.presnt .dayclose_btn{display: block;}
		}
	</style>
    <script type="text/javascript">
    function fncSPOffDay_mr() {
        setCookie("mainSPright_mr", "close", 1);
        if ($("#superRight_bnr").css("display") == "block") {
            $("#superRight_bnr").hide("fast");
        }
    }

    function clearSP_main() {
        if($("#superRight_bnr").css("display") == "block"){
            $("#superRight_bnr").hide("fast");
        }
    }
    </script>
	<%end if%>
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
