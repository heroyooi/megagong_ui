<!-- header -->
<header id="headertop">
	<div class="hd_top">
		<div class="inner">
			<ul class="homep_link">
				<!-- ���� Ȩ������ li�� Ŭ���� on-->
				<li class="on"><a href="javascript:;" title="������">������</a></li>
				<li><a href="javascript:;" title="�ҹ�">�ҹ�</a></li>
				<li><a href="javascript:;" title="������/����������">������/����������</a></li>
			</ul>
			<div class="login_wrap">
				<%If cook_id = "" then%>
					<!-- �α��� �� ���� ���� -->
					<form name="frmLogin_top" method="post" action="<%if inStr(hostnm, "dev") = 0 Then %>https://www.megacst.com<% End if %>/member/login_sql.asp?site_gubun=<%=hcode%>" >
						<ul class="login_after">
							<li><a href="<%=httpsnm%>/member/login.asp">�α���</a></li>
							<li><a href="<%=httpsnm%>/member/agree.asp">ȸ������</a></li>
							<li><a href="/member/memb_findid.asp?site_gubun=<%=hcode%>"> ���̵𡤺�й�ȣã��</a></li>
							<li><a href="<%=httpsnm%>/member/login.asp">����������</a></li>
						</ul>
					</form>
					<!-- �α��� �� ���� ���� -->
				<% Else %>
					<%
						'����
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
					<!-- �α��� �� ���� ���� -->
					<ul class="login_after">
						<li class="welcome"><span class="pointSt"><%=COOK_NAME %></span>��</li>
						<li class="mypagebox">
							<a class="mypage_txt" id="myTopBtn" style="cursor:pointer;">����������</a>
							<div class="mypage_infowrap" id="myTopLayer" >
								<ul class="mypage_list">
									<li><a href="/mypage/"><span class="txt" >����������</span></a></li>
									<li><a href="/mypage/pay/my_cart.asp"><span class="txt" >��ٱ���</span></a></li>
									<li><a href="/mypage/order/my_order.asp"><span class="txt" >�ֹ������ȸ</span></a></li>
									<li><a href="/mypage/order/my_campus.asp"><span class="txt" >�п�������ȸ</span></a></li>
									<li><a href="/mypage/bonus/my_coupon.asp"><span class="txt" >����</span></a></li>
									<li><a href="/member/Account_Chk.asp"><span class="txt" >��������</span></a></li>
								</ul>
							</div>
							<!--���� ����Ʈ��-->
						</li>
						<li><a href="/mypage/study/my_study.asp"> �����ǽ� </a></li>
						<li><a href="/mypage/paper/my_paper.asp">���� <% if p_new = "Y" Then %> <span class="pointSt"><strong>N</strong></span><% End if %></a></li>
						<li><a href="/member/logout_sql.asp"> �α׾ƿ� </a></li>
					</ul>
					<!-- �α��� �� ���� ���� -->
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
			<a href="/gongcampus.asp" class="gong" title="�ް�������"><img src="<%=img_main%>/s/gong/logo.png" alt="�ް�������"></a>
		</h1>

		<a href="javascript:;" class="mobile_navbtn" title="����ϸ޴� ����">
	      <span>-</span>
	      <span>-</span>
	      <span>-</span>
	   </a>

		<div class="hd_utility">
			<nav role="navigation">
				<!-- �ȼ� GNB Ŭ���� : class="mnu_list police"-->
				<!-- ������,�ҹ� �¶���-->
				<ul class="mnu_list">
					<li><a class="mli_link tc_view" href="javascript:;" title="������������">������������</a></li>
					<li><a class="mli_link" href="/vod/vod_chr_list.asp" title="��ü����">��ü����</a></li>
					<li><a class="mli_link" href="/book/bookshop.asp" title="�¶��μ���">�¶��μ���</a></li>
					<li><a class="mli_link" href="/help/notice/list.asp" title="�н���������">�н���������</a></li>
				</ul>
				<!-- // ������,�ҹ� �¶���-->

				<!-- �ҹ��п� -->
				<ul class="mnu_list">
					<li><a class="mli_link " href="javascript:;" title="�п��Ұ�">�п��Ұ�</a></li>
					<li><a class="mli_link tc_view" href="javascript:;" title="�ҹ� ������">�ҹ� ������</a></li>
					<li><a class="mli_link" href="javascript:;" title="�п�����">�п�����</a></li>
					<li><a class="mli_link" href="javascript:;" title="�н���������">�н���������</a></li>
				</ul>
				<!-- // �ҹ��п� -->

				<!-- �ȼ����� -->
				<ul class="mnu_list police">
					<li><a class="mli_link " href="javascript:;" title="�п��Ұ�">�п��Ұ�</a>
						<ul>
							<li><a href="/c/ansung/intro/intro1.asp">����ö��</a></li>
							<li><a href="/c/ansung/intro/intro3.asp">�п�Ư����</a></li>
							<li><a href="/c/ansung/intro/intro4_2019.asp">������ �Ұ�</a></li>
							<li><a href="/c/ansung/intro/intro5.asp">�п��ü�</a></li>
							<li><a href="/c/ansung/intro/intro6.asp">�п� ���ô±�</a></li>
						</ul>
					</li>
					<li><a class="mli_link" href="javascript:;" title="������������">������������</a>
						<ul>
							<li><a href="/c/ansung/info2/index.asp">������ ���α׷�</a></li>
							<li><a href="/c/ansung/info2/guide01.asp">������ ���� ���̵�</a></li>
							<li><a href="/c/ansung/info2/info2.asp">�л�����</a></li>
							<li><a href="/c/ansung/info2/info3.asp">�Ϸ� �ϰ�ǥ</a></li>
							<li><a href="/c/ansung/info2/info5.asp">�����غ�</a></li>
							<li><a href="/c/ansung/info2/info6.asp">ȯ�ұ���</a></li>
						</ul>
					</li>
					<li><a class="mli_link" href="javascript:;" title="����������">����������</a>
						<ul>
							<li><a href="/c/ansung/info">���� ���α׷�</a></li>
							<li><a href="/c/ansung/info/info2.asp">�л�����</a></li>
							<li><a href="/c/ansung/info/info3.asp">�Ϸ� �ϰ�ǥ</a></li>
							<li><a href="/c/ansung/info/info5.asp">���� �غ�</a></li>
							<li><a href="/c/ansung/info/info6.asp">ȯ�ұ���</a></li>
						</ul>
					</li>
					<li><a class="mli_link" href="javascript:;" title="������ ��Ȱ">��������Ȱ</a>
						<ul>
							<li><a href="/c/ansung/pass/pass1.asp">�հݰ��� �ý���</a></li>
							<li><a href="/c/ansung/pass/pass8_4.asp">���� ����</a></li>
						</ul>
					</li>
					<li><a class="mli_link" href="javascript:;" title="����� ����">���������</a>
						<ul>
							<li><a href="/c/ansung/community/notice/list.asp">�θ���� ���� ����</a></li>
							<li><a href="/c/ansung/community/today/list.asp">������ ���</a></li>
							<li><a href="/c/ansung/community/police_pds/list.asp">������ �ڷ�</a></li>
							<li><a href="/c/ansung/community/gong_pds/list.asp">�������� �ڷ�</a></li>
						</ul>
					</li>
					<li><a class="mli_link" href="javascript:;" title="�п����">�п����</a>
						<ul>
							<li><a href="/c/ansung/counselling/notice/list.asp">���� ����</a></li>
							<li><a href="/c/ansung/counselling/faq/list.asp">�����ϴ� ����</a></li>
							<li><a href="/c/ansung/counselling/qna/list.asp">1:1 ���</a></li>
							<li><a href="/c/ansung/counselling/guidebook/list.asp">�п� ���̵�� ��û</a></li>
						</ul>
					</li>
				</ul>
				<!-- // �ȼ����� -->


				<div class="right_btn">
					<!-- �¶��μҹ� ���� ��ũ (�ҹ��п�) -->
					<a href="javascript:;" title="�뷮���ҹ��п�"><span><img src="<%=img_main%>/s/sobang/main/sobang_ac_dirbtn.jpg" alt="�뷮���ҹ��п�"></span></a>>
				</div>

			</nav>

			<div class="gnb_bgArea"><div class="bgArea" style="display: none;"></div></div>
		</div>

		<div class="mb_rightmenu">
			<a href="/mypage/study/my_study.asp" title="�� ���ǽ�">�� ���ǽ�</a>
		</div>
	</div>

	<!-- �޴� ��� ȭ�� -->
	<div class="hd_bottom<% if instr(1, NowUrl, "/gongcampus_newmg.asp") > 0 Then %> mn<% End if %>">


		<div class="hdbt_wrp">


			<!-- ������ ������ -->
			<ul class="hdtea_all">
				<!-- 190410 DP ����-->
				<li>
					<dl>
						<dt>����</dt>
						<dd><a href="/teacher/home.asp?bcode=gilltoraebi" title="������">������</a></dd>
                        <dd><a href="/teacher/home.asp?bcode=thirdheaven" title="������">������</a></dd>
						<dd><a href="/teacher/home.asp?bcode=yw1122" title="������">������</a></dd>
					</dl>
				</li>
				<li class="eng_tea">
					<dl>
						<dt>����</dt>
						<dd><a href="/teacher/home.asp?bcode=powergrammar" title="������">������</a></dd>
						<dd><a href="/teacher/home.asp?bcode=megalara" title="���">���</a></dd>
						<dd><a href="/teacher/home.asp?bcode=sooyeon" title="�ڼ���">�ڼ���</a></dd>
						<dd><a href="/teacher/home.asp?bcode=jjangss78" title="��뿵">��뿵</a></dd>
						<dd><a href="/teacher/home.asp?bcode=ah02" title="�۾ƿ�">�۾ƿ�</a></dd>
						<dd><a href="/teacher/home.asp?bcode=kcross725" title="������">������</a></dd>
					</dl>
				</li>
				<!-- // 190410 DP ����-->
				<li>
					<dl>
						<dt>�ѱ���</dt>
						<dd><a href="/teacher/home.asp?bcode=megaggoarimy" title="��Ƹ�">��Ƹ�</a></dd>
						<dd><a href="/teacher/home.asp?bcode=pakkihun" title="�ڱ���">�ڱ���</a></dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>������</dt>
						<dd><a href="/teacher/home.asp?bcode=jhk5103" title="�����">�����</a></dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>��ȸ</dt>
						<dd><a href="/teacher/home.asp?bcode=sinki79" title="��ȣ��">��ȣ��</a></dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>ȸ����</dt>
						<dd><a href="/teacher/home.asp?bcode=huttoi" title="������">������</a></dd>
					</dl>
				</li>
			</ul>
			<!-- // ������ ������ -->


			<!-- �ҹ� ������ -->
			<ul class="hdtea_all sobang">
				<li>
					<dl>
						<dt>�ҹ���/�������</dt>
						<dd><a href="/teacher/home.asp?bcode=gilltoraebi" title="������">������</a></dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>�ҹ汹��</dt>
						<dd><a href="/teacher/home.asp?bcode=powergrammar" title="������">������</a></dd>
						<dd><a href="/teacher/home.asp?bcode=megalara" title="������">������</a></dd>
					</dl>
				</li>
				<li class="eng_tea">
					<dl>
						<dt>�ҹ濵��</dt>
						<dd><a href="/teacher/home.asp?bcode=megaggoarimy" title="�ڼ���">�ڼ���</a></dd>
						<dd><a href="/teacher/home.asp?bcode=pakkihun" title="������">������</a></dd>
						<dd><a href="/teacher/home.asp?bcode=pakkihun" title="�۾ƿ�">�۾ƿ�</a></dd>
						<dd><a href="/teacher/home.asp?bcode=pakkihun" title="���">���</a></dd>
						<dd><a href="/teacher/home.asp?bcode=pakkihun" title="��뿵">��뿵</a></dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>�ҹ��ѱ���</dt>
						<dd><a href="/teacher/home.asp?bcode=jhk5103" title="������">������</a></dd>
						<dd><a href="/teacher/home.asp?bcode=jhk5103" title="�ڱ���">�ڱ���</a></dd>
					</dl>
				</li>
			</ul>
			<!-- // �ҹ� ������ -->

		</div>




		<!-- ��� �Ʒ� �޴� �ݱ� -->
		<div class="hd_bottom_close">
			<a href="javascript:;" onclick="" title="�ݱ�">�ݱ�</a>
		</div>
		<!-- // ��� �Ʒ� �޴� �ݱ� -->


		<!-- // ��ķ������ ��� ȭ�� -->
		<script type="text/javascript">

			/* ---��ķ������ �����޴�--- */
			$('.tc_view').click(function(){
				/* --- Ŭ���� on ���--- */
				if($(this).hasClass('on')){
					$(this).removeClass('on');
				}else{
					$(this).addClass('on');
				}
			     $('.hd_bottom').slideToggle('10', function() {
			    });

				/* ---��ķ������ �����޴�--- */
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

			/* --- ���� GNB ���콺���� �̺�Ʈ --- */
			$('#headertop .hd_utility .mnu_list.police > li > ul').hide();
				//$('#headertop .hd_utility .mnu_list.police > li > ul').matchHeight();  //2���� ���� �����ϰ� ����
			$('#headertop .hd_utility .mnu_list.police').hover(function() {
				$('#headertop .hd_utility .mnu_list.police > li > ul').slideDown(350);
  			  $('.gnb_bgArea .bgArea').slideDown(350);
			}, function(){
				$('#headertop .hd_utility .mnu_list.police > li > ul').slideUp(150);
  			  $('.gnb_bgArea .bgArea').slideUp(150);
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
						<p class="wctit"><strong>�α����� ���ּ���.</strong><span>������ķ�۽��� ���� ���� ȯ���մϴ�!</span></p>
						<% else %>
						<p class="wctit"><strong><%=cook_name %>��</strong><span>������ķ�۽��� ���� ���� ȯ���մϴ�!</span></p>
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
								<a href="javascript:;" title="��ķ������">��ķ������</a>

								<ul class="nextlst mbtea_all">
									<li>
										<dl>
											<dt style="color:#4cb18f">����</dt>
                                            <dd><a href="/teacher/home.asp?bcode=gilltoraebi" title="������">������</a></dd>
                                            <dd><a href="/teacher/home.asp?bcode=thirdheaven" title="������">������</a></dd>
											<dd><a href="/teacher/home.asp?bcode=yw1122" title="������">������</a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt style="color:#b74671">����</dt>
                                            <dd><a href="/teacher/home.asp?bcode=powergrammar" title="������">������</a></dd>
                                            <dd><a href="/teacher/home.asp?bcode=sooyeon" title="�ڼ���">�ڼ���</a></dd>
                                            <dd><a href="/teacher/home.asp?bcode=ah02" title="�۾ƿ�">�۾ƿ�</a></dd>
                                            <dd><a href="/teacher/home.asp?bcode=megalara" title="���">���</a></dd>
                                            <dd><a href="/teacher/home.asp?bcode=jjangss78" title="��뿵">��뿵</a></dd>
                                            <dd><a href="/teacher/home.asp?bcode=kcross725" title="������">������</a></dd>

										</dl>
									</li>
									<li>
										<dl>
											<dt style="color:#4483ac">�ѱ���</dt>
											<dd><a href="/teacher/home.asp?bcode=megaggoarimy" title="��Ƹ�">��Ƹ�</a></dd>
											<dd><a href="/teacher/home.asp?bcode=pakkihun" title="�ڱ���">�ڱ���</a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt style="color:#6b6b6b">������</dt>
											<dd><a href="/teacher/home.asp?bcode=jhk5103" title="�����">�����</a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt style="color:#7943bd">��ȸ</dt>
											<dd><a href="/teacher/home.asp?bcode=sinki79" title="��ȣ��">��ȣ��</a></dd>
										</dl>
									</li>

									<li>
										<dl>
											<dt style="color:#ba6151">ȸ����</dt>
											<dd><a href="/teacher/home.asp?bcode=huttoi" title="������">������</a></dd>
										</dl>
									</li>
								</ul>


							</li>
		                    <li><a href="/vod/vod_chr_list.asp" title="��ķ�ΰ�">��ķ�ΰ�</a></li>
		                    <li><a href="/book/bookshop.asp" title="�¶��μ���">�¶��μ���</a></li>
							<li><a href="/mypage/index.asp" title="����������">����������</a></li>
							<li><a href="/mypage/study/my_study.asp" title="�� ���ǽ�">�� ���ǽ�</a></li>
							<li><a href="/help/notice/list.asp" title="�н���������">�н���������</a></li>
						</ul>
					</nav>
				</div>
				<div class="mbmenu_bottom">
					<div class="snsgo_wrp">
						<a href="https://www.facebook.com/Gongcampus-319566495305521" target="_blank" class="sns01"><span class="blind">���̽���</span></a>
						<a href="https://www.instagram.com/gongcampus" target="_blank" class="sns02"><span class="blind">�ν�Ÿ�׷�</span></a>
						<a href="https://www.youtube.com/channel/UCkY2Tq32Mpy8Qq-QljPFLag?view_as=subscriber" target="_blank" class="sns03"><span class="blind">������</span></a>
					</div>
					<div class="viewcontrl_wrp">
						<p class="vctit">���� ����</p>
						<ul>
							<!-- �����ִ� ���� Ŭ���� on �߰�. -->
							<li <% if set_view = "R" Then %>class="on"<% End if %>><a onclick="setCookie('set_view', 'R', 1000); document.location.reload();" style="cursor:pointer;" >������ ����</a></li>
							<li <% if set_view = "P" Then %>class="on"<% End if %>><a onclick="setCookie('set_view', 'P', 1000); document.location.reload();" style="cursor:pointer;" >PC ����</a></li>
						</ul>
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
				<li class="glb_key2"><a href="/vod/vod_chr_list.asp" title="��ķ����"><span>��ķ����</span></a></li>
				<li class="glb_key3"><a href="/book/bookshop.asp" title="�¶��μ���"><span>�¶��μ���</span></a></li>
				<li class="glb_key4"><a href="/mypage/index.asp" title="����������"><span>����������</span></a></li>
				<li class="glb_key5"><a href="/mypage/study/my_study.asp" title="�� ���ǽ�"><span>�� ���ǽ�</span></a></li>
			</ul>
		</div>
		<div class="topgo">
			<a href="javascript:;" onclick="glb_movetop(); return false;" title="���ΰ���">���ΰ���</a>
		</div>
	</div>
	<!--  // ����� �ϴ� ���� �޴� & TOP��ư -->














	<script type="text/javascript">

		/* ����ϸ޴� */
		$('.mobile_navbtn').click(function(e){
		  e.preventDefault();

		  if($(".mobile_navwrap").css("display") == "none"){
			  mbnav_show();
		  }else{
			  mbnav_hide();
		  }
		  return false;
		});

		//�˾� ������� ������ ��
	   $(".mbnav_back").click(function () {
		   mbnav_hide();
	   });

	   // ����ϸ޴�, �� ��� ����
	   function mbnav_show(){
			$(".mbnav_back").addClass('on');
			$('.mobile_navbtn').addClass('on');
			$('body').addClass('disabled');
			$(".mobile_navwrap").show("fast");
			return false;
		}
	   // ����ϸ޴�, �� ��� �����
	   function mbnav_hide(){
			$(".mbnav_back").removeClass('on');
			$('.mobile_navbtn').removeClass('on');
			$('body').removeClass('disabled');
			$(".mobile_navwrap").hide("fast");
			return false;
		}

 		/* ����ϸ޴� */

		/* ��������Ʈ ���̱� */
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

	// ����� top ��ư (s)
   function glb_movetop(){
	   $('html, body').animate({scrollTop : 0}, 400);
   }
   // ����� top ��ư (e)
	</script>
	<!-- // ����� �޴� -->







</header>
<!-- //header -->
