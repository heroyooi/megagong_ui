	<%If cdate(lo_now_date) < cdate("2022-08-01") then%>
	<% else %>
	<style type="text/css">
		#headertop .gnb_bgArea .bgArea{height: 480px !important;}
	</style>
	<% end if %>

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

	<%
		'N������ ���� ��å : ������ ���� 14�� ���� / ���� �̳��� ó��
		Sub SetNewIcon(sdate)
			If Not IsDate(sdate) then Exit Sub
			If Datediff("d", CDate(sdate), CDate(lo_now_date)) < 14 Then Response.Write "<img src="""&img_main&"/common/ic_new.gif"" style=""vertical-align:middle; margin-left:3px;"" />"
		End Sub

		Sub SetNewIcon_m(mm, sdate) 'mm�� ����
			If Not IsDate(sdate) then Exit Sub
			If Not isnumeric(mm) then Exit Sub
			if CDate(lo_now_date) < CDate(dateadd("m",mm,sdate)) Then Response.Write "<img src="""&img_main&"/common/ic_new.gif"" style=""vertical-align:middle; margin-left:3px;"" />"
		End Sub
	%>
	
	<div id="header_wrap" class="hd_wrp">
	<!-- ���� gnb ���Ľ� class�� ����-->
	<!-- <div id="header_wrap" class="hd_wrp v21_2 main"> -->
	<!-- //���� gnb ���Ľ� class�� ����-->
		
		<!-- hd_left_bnr / S -->
		<div class="hd_left_bnr n1014 <% If cdate(lo_now_date) >= cdate("2021-10-28 15:00") then%>n1028<% end if %>">
			<div>
				<div class="hd_slider">
					<% if cdate(lo_now_date) >= cdate("2022-06-23")  and cdate(lo_now_date) < cdate("2022-07-04 15:00") then%>
					<div>
						<a href="<%=url_main%>/s/gong/full/20220618/index.asp#eventWrap" title="6/18 ������ 9�� �հݿ��� Ǯ����" target="_blank">
							<img src="<%=img_main%>/m/2022/0618_fullserv/header_bnr.jpg" class="" style="cursor:pointer;" alt="6/18 ������ 9�� �հݿ��� Ǯ����">
						</a>
					</div>
					<% end if %>
					<% If cdate(lo_now_date) >= cdate("2022-04-29 11:00") and cdate(lo_now_date) < cdate("2022-06-07") then%>
					<div>
						<a href="/c/gongssel/schedule/2021/am/am_en_12_9.asp">
							<img src="<%=img_main%>/m/2022/0328_gongssel/sho_bn_0429.jpg" class="" style="cursor:pointer;" alt="���� ���� �ܱ�ϼ� 6�� �������߹� ���� ��">
						</a>
					</div>
					<% end if %>
					
					<% If cdate(lo_now_date) >= cdate("2022-05-09") then%>
					<div>
						<a href="/c/gongssel/help/notice/view.asp?idx=3917&cate=01&searchkey=&searchword=&page=1">
							<img src="<%=img_main%>/m/2022/0509_gongssel/sho_bn.png" class="" style="cursor:pointer;" alt="�̴��� �׸�Ư��">
						</a>
					</div>
					<% end if %>

					<% If cdate(lo_now_date) >= cdate("2022-09-29") then%>
					<div>
						<a href="/c/gongssel/event/2022/10310009/index.asp#eventWrap" target="_blank">
							<img src="<%=img_main%>/m/2022/0929_gongssel/sho_bn1.png" class="" style="cursor:pointer;" alt="2023 9/7�� �հ����� ����ȸ">
						</a>
					</div>
					<% end if %>

					<% If cdate(lo_now_date) >= cdate("2022-09-29") then%>
					<div>
						<a href="/c/gongssel/event/2021/10050011/index.asp#eventWrap" target="_blank">
							<img src="<%=img_main%>/m/2022/0929_gongssel/sho_bn2.png" class="" style="cursor:pointer;" alt="2023 �ܹ������� �հ����� ����ȸ">
						</a>
					</div>
					<% end if %>

					
				<% If cdate(lo_now_date) >= cdate("2022-05-30 00:00") and cdate(lo_now_date) < cdate("2022-06-25 17:00") then%>
				<div>
					<a href="/s/gong/event/2022/05300062/index.asp#eventWrap" target="_blank">
						<img src="<%=img_main%>/m/2022/0530_online/main_sky_ban.png" class="" style="cursor:pointer;" alt="2022 ������ ����ȸ">
					</a>
				</div>
				<% end if %>

					<% If cdate(lo_now_date) < cdate("2022-05-09") then%>
					<div>
						<a href="/c/gongssel/event/2021/10050011/index.asp#eventWrap">
							<img src="<%=img_main%>/m/2022/0328_gongssel/sho_bn.jpg" class="" style="cursor:pointer;" alt="9��7�� 2023 �հ����� ����ȸ">
						</a>
					</div>
					<% end if %>

					<% If cdate(lo_now_date) < cdate("2022-04-19 15:00") then%>
					<div>
						<a href="https://www.megagong.net/s/gong/full/20220402/index.asp#eventWrap" target="_blank">
							<img src="<%=img_main%>/m/2022/0402_fullserv/main_sky_ban.jpg" class="" style="cursor:pointer;" alt="�հݿ��� Ǯ����">
						</a>
					</div>
					<% end if %>
				</div>
			</div>
		</div>
		<style>
			#headertop .hd_wrp .hd_left_bnr{display:block;height: auto;top:0;margin-top:25px;width:218px;height: auto;}
			#headertop .hd_wrp .hd_left_bnr >div{padding: 0;}
			#headertop .hd_wrp .hd_left_bnr.n1014 {margin-left: -519px;}
			#headertop .hd_wrp .hd_left_bnr.n1014 .hd_slider .slick-arrow {position:absolute;top:50%;z-index:1;transform:translateY(-50%);display:block!important;font-size:0;}
			#headertop .hd_wrp .hd_left_bnr.n1014 .hd_slider .slick-prev {left:-21px;width:7px;height:10px;background:url(https://design.megagong.net/image/m/2021/0105_planner/icon_L.png) no-repeat center;}
			#headertop .hd_wrp .hd_left_bnr.n1014 .hd_slider .slick-next {right:-21px;width:7px;height:10px;background:url(https://design.megagong.net/image/m/2021/0105_planner/icon_R.png) no-repeat center;}
			
			#headertop .hd_wrp .hd_left_bnr.n1028 {margin-left: -540px;}

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
		</script>
		<!-- hd_left_bnr / E -->

		<h1 class="hd_logo center">
			<a href="<%=gongssel_main %>" class="gongssel" title="�ް��������п� ���������� �ٷΰ���"><img src="<%=img_main%>/c/gongssel/logo_nk.png" alt="�ް����͵� ���� �������п� �ް��������п�"></a>
		</h1>

		<!-- hd_right_bnr / S -->
		<%If cdate(lo_now_date) >= cdate("2022-01-17") and cdate(lo_now_date) < cdate("2022-02-08") then%>
		<div class="hd_right_bnr">
			<div>
				<div class="hd_slider">
					<div>
						<a href="/c/gongssel/schedule/2021/am/am_en_12_9.asp" title="2022 �հ��� �⺻ ���־�����! 2�� �������߹� ���� ��">
							<% if Cdate(lo_now_date) < Cdate("2022-01-31") then %>
							<img src="<%=img_main%>/m/2022/0117_gongssel/main_sky_ban_right.png" class=""  alt="2022 �հ��� �⺻ ���־�����! 2�� �������߹� ���� ��">
							<% else %>
							<img src="<%=img_main%>/m/2022/0117_gongssel/main_sky_ban_right_220131.png" class=""  alt="2022 �հ��� �⺻ ���־�����! 2�� �������߹� ���� ��">
							<% end if %>
						</a>
					</div>
				</div>
			</div>
		</div>
		
		<style>
			#headertop .hd_wrp .hd_right_bnr{display:block;height: auto;top:0;margin-top:25px;width:238px;height: auto;}

			@media (max-width: 1200px){
				#headertop .hd_wrp .hd_right_bnr{display: none;}
			}
		</style>
		<%end if%>
		<!-- hd_right_bnr / E -->

		

		<!-- ����/���ҹ� �ű��Լ� ��� S -->
		<%If hcode = "gongssel" and instr(1, NowUrl, "/megagong.asp") > 0 Then %>
			<!-- <ul class="bn_container <%if cdate(lo_now_date) >= cdate("2022-04-23 15:00") then%> v0423<% end if %> <%if cdate(lo_now_date) >= cdate("2022-04-29 14:00") then%> v0429<% end if %>"> -->

			<% if cdate(lo_now_date) >= cdate("2022-08-22") and cdate(lo_now_date) < cdate("2022-09-12") then %>
			<div id="bncircle_ch" class="bncircle_ch">
				<a href="/c/gongssel/help/notice/view.asp?idx=3896&cate=01&searchkey=&searchword=&page=1">
					<img src="<%=img_main%>/m/2022/0822_chuseok/gongssel_bnr_round.png" alt="2022 �߼�Ư��">
				</a>
				<button onclick="clear_bncircle_ch();" class="close">
					<img src="<%=img_main%>/m/2021/1206_gongssel/main_bnr_close.png" alt="�˾� �ݱ�"/>
				</button>
			</div>
			<style>
				.bncircle_ch { position:absolute; top:0; left:50%; margin:200px 0 0 560px; z-index: 1; width: 170px; }
				.bncircle_ch .close { right:0; top: -10px; position: absolute; }

				@media (max-width: 1200px){
					.bncircle_ch{display: none;}
				}
			</style>
			<script>
				function clear_bncircle_ch() {
					if ($("#bncircle_ch").css("display") == "block") {
						$("#bncircle_ch").hide();
					}
				}
			</script>
			<%end if%>

			
			<%if cdate(lo_now_date) >= cdate("2022-08-22") and cdate(lo_now_date) < cdate("2022-08-31") then%>
			<div id="bncircle_tech" class="bncircle_tech">
				<img src="<%=img_main%>/m/2022/0704_bnr/gongssel_bnr.png" alt="�ް��������п� ����� OPEN">
				<a href="/c/gongssel/help/notice/view.asp?idx=3771" class="lnk1" title="����� �ڼ��� ���� >">����� �ڼ��� ����</a>
				<a href="/c/gongssel/help/notice/view.asp?idx=3770" class="lnk2" title="������ �ڼ��� ���� >">������ �ڼ��� ����</a>
				<a href="/c/gongssel/help/notice/view.asp?idx=3772" class="lnk3" title="��ȣ�� �ڼ��� ���� >">��ȣ�� �ڼ��� ����</a>
				<button onclick="clear_bncircle_tech();" class="close"><img src="<%=img_main%>/m/2021/1206_gongssel/main_bnr_close.png" alt="�˾� �ݱ�"/></button>
			</div>
			<style>
				.bncircle_ch { position:absolute; top:0; left:50%; margin:200px 0 0 560px; z-index: 1; width: 170px; }
				.bncircle_ch .close { right:0; top: -10px; position: absolute; }

				.bncircle_tech{position: absolute;top: 0;left: 50%;margin: 260px 0 0 560px;z-index: 1;width: 170px;}
				.bncircle_tech a{position: absolute;left: 0;width: 100%;height: 62px;font-size: 0;background: #000;opacity: 0;}
				.bncircle_tech a.lnk1{top: 65px;}
				.bncircle_tech a.lnk2{top: 129px;}
				.bncircle_tech a.lnk3{top: 193px;}
				.bncircle_tech .close{right: -34px;top: 44px;position: absolute;}

				/* 220704 */
				.bncircle_tech.d0704 a{height: 40px; width: 85%; left: 50%; transform: translateX(-50%);}
				.bncircle_tech.d0704 a.lnk1{top: 124px;}
				.bncircle_tech.d0704 a.lnk2{top: 169px;}
				.bncircle_tech.d0704 a.lnk3{top: 214px;}
				.bncircle_tech .close {top: 0;}

				/*220822*/
				.bncircle_tech { margin-top:390px; }

				@media (max-width: 1200px){
					.bncircle_ch{display: none;}
					.bncircle_tech{display:none;}
				}
			</style>
			<script>
				function clear_bncircle_ch() {
					if ($("#bncircle_ch").css("display") == "block") {
						$("#bncircle_ch").hide();
					}
				}
				function clear_bncircle_tech() {
					if ($("#bncircle_tech").css("display") == "block") {
						$("#bncircle_tech").hide();
					}
				}
			</script>
			<%end if%>


			<!-- 9 �� ���ո��ǰ�� ��� S -->
			<% if cdate(lo_now_date) >= cdate("2022-08-31") and cdate(lo_now_date) < cdate("2022-09-24 10:00") then%>
				<div class="bncircle_totalmo">
					<img src="<%=img_main%>/m/2022/0831_mainbnr/gongssel_bnr.jpg" alt="�ް������� �������ǰ��">
					<a href="https://gongssel.megagong.net/c/gongssel/help/notice/view.asp?idx=3919&cate=01&searchkey=&searchword=&page=1" title="�������ǰ�� �ڼ�������" target="_blank">�������ǰ�� �ڼ�������</a>
					</a>
				</div>
			<style>
				.bncircle_totalmo {position: absolute; top: 0; left: 50%; margin: 690px 0 0 560px; z-index: 1; width: 150px;}
				.bncircle_totalmo a{position: absolute;top: 204px;left: 14px;width: 122px;height: 31px;font-size: 0;background: #000;opacity: 0;}
				@media (max-width: 1200px){
					.bncircle_totalmo{display: none;}
				}
			</style>
			<%end if%>
			<!-- 9 �� ���ո��ǰ�� ��� E -->

			<div id="bncircle_final" class="bncircle_final">
				<!-- �ܹ������� �÷��� ��� S -->
				<% if cdate(lo_now_date) >= cdate("2022-08-31") and cdate(lo_now_date) < cdate("2022-09-30") then%>
				<div class="item">
					<a href="/c/gongssel/help/notice/view.asp?idx=3955&cate=01&searchkey=&searchword=&page=1" title="���̳� �ܹ������� ���">
						<img src="<%=img_main%>/m/2022/0831_mainbnr/gongssel_bnr_round.png" alt="���̳� �ܹ������� ���">
					</a>
					<button class="close">
						<img src="<%=img_main%>/m/2021/1206_gongssel/main_bnr_close.png" alt="�˾� �ݱ�"/>
					</button>
				</div>
				<%end if%>
				<!-- �ܹ������� �÷��� ��� E -->

				<!-- ��ȸ�� 9�� �÷��� ��� S -->
				<% if cdate(lo_now_date) >= cdate("2022-09-27") and cdate(lo_now_date) < cdate("2022-10-13") then%>
				<div class="item">
					<a href="/c/gongssel/help/notice/view.asp?idx=4009&cate=01&searchkey=&searchword=&page=1" title="�ް��������� ��ȸ�� 9�� ���">
						<img src="<%=img_main%>/m/2022/0831_mainbnr/gongssel_bnr_round2.png" alt="�ް��������� ��ȸ�� 9�� ���">
					</a>
					<button class="close">
						<img src="<%=img_main%>/m/2021/1206_gongssel/main_bnr_close.png" alt="�˾� �ݱ�"/>
					</button>
				</div>
				<%end if%>
				<!-- ��ȸ�� 9�� �÷��� ��� E -->
				<!-- 10�� ���� ���ǰ�� �÷��� ��� S -->
				<% if cdate(lo_now_date) >= cdate("2022-09-30") and cdate(lo_now_date) < cdate("2022-10-29 10:00") then%>
				<div class="item">
					<a href="/c/gongssel/help/notice/view.asp?idx=3998" title="2023 ��� �ް������� �������ǰ��" target="_blank">
						<!-- <img src="<%=img_main%>/m/2022/1004_exam/gongssel_bnr.png" alt="2023 ��� �ް������� �������ǰ��"> -->
						<img src="<%=img_main%>/m/2022/1017_gongssel/gongssel_bnr1.png" alt="2023 ��� �ް������� �������ǰ��">
					</a>
					<button class="close exam_close">
						<img src="<%=img_main%>/m/2021/1206_gongssel/main_bnr_close.png" alt="�˾� �ݱ�"/>
					</button>
				</div>
				<style>
					.bncircle_final .close.exam_close {top: -30px;}
					.bncircle_final .item:nth-child(2) {margin-top: 40px;}
				</style>
				<%end if%>
				<!-- 10�� ���� ���ǰ�� �÷��� ��� E -->


				<!-- 11�� ���� ���ǰ�� �÷��� ��� S -->
				<% if cdate(lo_now_date) >= cdate("2022-11-01") and cdate(lo_now_date) < cdate("2022-11-26 10:00") then%>
				<div class="item <%if cdate(lo_now_date) >= cdate("2022-11-03") then%>d1103<%end if%>">
					<a href="/c/gongssel/help/notice/view.asp?idx=4059&cate=01&searchkey=&searchword=&page=1" title="2023 ��� �ް������� �������ǰ��" target="_blank">
						<img src="<%=img_main%>/m/2022/1101_gongssel_b/gongssel_banner.png" alt="2023 ��� �ް������� �������ǰ��">
					</a>
					<button class="close exam_close">
						<img src="<%=img_main%>/m/2021/1206_gongssel/main_bnr_close.png" alt="�˾� �ݱ�"/>
					</button>
				</div>
				<style>
					.bncircle_final .close.exam_close {top: -30px;}
					.bncircle_final .item:nth-child(1) {margin-top: 0px;}
					.bncircle_final .item.d1103:nth-child(1){margin-top: -100px;}
					
				</style>
				<%end if%>
				<!-- 11�� ���� ���ǰ�� �÷��� ��� E -->

				
				<!-- 10�� ���� ���ǰ�� �÷��� ��� S -->
				<% if cdate(lo_now_date) >= cdate("2022-10-17") and cdate(lo_now_date) < cdate("2022-11-14 14:00") then%>
				<div class="item">
					<a href="/c/gongssel/help/notice/view.asp?idx=4030&cate=01&searchkey=&searchword=&page=1" title="�ް������п�" target="_blank">
						<img src="<%=img_main%>/m/2022/1017_gongssel/gongssel_bnr2.png" alt="�ް������п� 11.5 ������ ����ȸ">
					</a>
					<button class="close exam_close">
						<img src="<%=img_main%>/m/2021/1206_gongssel/main_bnr_close.png" alt="�˾� �ݱ�"/>
					</button>
				</div>
				<style>
					.bncircle_final .close.exam_close {top: -30px;}
					.bncircle_final .item:nth-child(3) {margin-top: 60px;}
					
					<% if cdate(lo_now_date) >= cdate("2022-10-29 10:00") and cdate(lo_now_date) < cdate("2022-11-14 14:00") then%>
					.bncircle_final .item { margin-top:-125px; }
					<%end if%>
				</style>
				<%end if%>
				<!-- 10�� ���� ���ǰ�� �÷��� ��� E -->



			</div>
			<style>
				.bncircle_final {position: absolute; top: 0; right: 1.5%; margin: 335px 0 0 560px; z-index: 1; width: 170px;}
				.bncircle_final .item{position: relative;margin-bottom: 15px;}
				.bncircle_final .item a{display: block;}
				.bncircle_final .close { right:0; top: -10px; position: absolute; z-index: 2;}
				@media (max-width: 1200px){.bncircle_final {display: none;}}
			</style>
			<script>
				$('.bncircle_final button').click(function(){
					$(this).parents(".item").css('visibility', 'hidden');
				});			
			</script>


			<% if cdate(lo_now_date) < cdate("2022-06-22") then%>
			<ul class="bn_container">
				<% if cdate(lo_now_date) >= cdate("2022-06-10 18:00") and cdate(lo_now_date) < cdate("2022-06-22") then%>
				<li>
					<div id="reserv_bn" class="reserv_bn">
						<div id="reservRoll">
							<div class="item">
								<a href="/c/gongssel/event/2022/06100005/index.asp#eventWrap">
									<img src="<%=img_main%>/m/2022/0119_guide/tech/flt_bn1.png" alt="�����/��ȣ�� �ű� open">
								</a>
							</div>
						</div>
						<button onclick="clear_reservebn();" class="reserv_cls"><img src="<%=img_main%>/m/2021/1206_gongssel/main_bnr_close.png" alt="�˾� �ݱ�"/></button>
					</div>
				</li>
				<%end if%>

				<%if cdate(lo_now_date) >= cdate("2022-05-23") then%>
				<li>
					<div id="reserv_bn3" class="reserv_bn">
						<div id="reservRoll">
							<div class="item">
								<a href="/c/gongssel/schedule/2021/overall/challenge_05_7.asp">
									<img src="<%=img_main%>/m/2022/0317_gongssel_ban/flt_bn3.png" alt="7�� ç������">
								</a>
							</div>
						</div>						
						<button onclick="clear_reservebn3();" class="reserv_cls">
							<img src="<%=img_main%>/m/2021/1206_gongssel/main_bnr_close.png" alt="�˾� �ݱ�"/>
						</button>
					</div>
				</li>
				<%end if%>
				<% if cdate(lo_now_date) >= cdate("2022-04-21") and  cdate(lo_now_date) < cdate("2022-06-25") then%>
				<li>
					<div id="reserv_bn2" class="reserv_bn">
						<div id="reservRoll">
							<div class="item">
								<% if cdate(lo_now_date) < cdate("2022-05-21 13:00") then%>
								<a href="/c/gongssel/help/notice/view.asp?idx=3695&cate=01&searchkey=&searchword=&page=1">
								<% else %>
								<a href="/c/gongssel/help/notice/view.asp?idx=3698&cate=01&searchkey=&searchword=&page=1">
								<%end if%>
									<img src="<%=img_main%>/m/2022/0317_gongssel_ban/flt_bn_psat.png" alt="�ٸ� PSAT ���� ���ǰ��">
								</a>
							</div>
						</div>
						<button onclick="clear_reservebn2();" class="reserv_cls">
							<img src="<%=img_main%>/m/2021/1206_gongssel/main_bnr_close.png" alt="�˾� �ݱ�"/>
						</button>
					</div>
				</li>
				<%end if%>
				
			</ul>


			<style type="text/css">
				.bn_container{position: absolute;top: 200px;left: 50%;/*margin:505px 0 0 630px;*/margin:0 0 0 630px;width: 170px;z-index: 3;}
				.bn_container.v0423{top: 390px;}
				.bn_container.v0429{top: 580px;}
				.bn_container li{margin: 0 0 20px;text-align: center;}
				.reserv_bn {position: relative;}
				.reserv_bn .reserv_cls{position:absolute;top: 0;right: -2px;font-size: 0;}
				.reserv_bn .slick-arrow{display: none !important;}
				.reserv_bn .slick-dots{font-size: 0;text-align: center;padding: 9px 0 0;opacity: 0.7;}
				.reserv_bn .slick-dots li.slick-active{}
				.reserv_bn .slick-dots li{display: inline-block;margin: 0 3px;}
				.reserv_bn .slick-dots li button{display: block;width: 7px;height: 7px;border: 1px solid #fff;border-radius: 100%;}
				.reserv_bn .slick-dots li.slick-active button{background: #fff;}
				.reserv_bn5{margin: 36px 0 0;}
				.reserv_bn5 .reserv_cls{right: 10px;top: -30px;}

				@media screen and (max-width: 1650px) {
					.bn_container{left:initial;right:20px;}
				}
			
				@media (max-width: 1400px){
					/* .bn_container{margin: 0;left: auto;right: 2%;} */
				}

				@media (max-width: 1200px){
					.bn_container{display:none;}
					.courtnew_brn{display: none;}
				}
			</style>

			<script type="text/javascript">
				function clear_reservebn() {
					if ($("#reserv_bn").css("display") == "block") {
						$("#reserv_bn").hide();
					}
				}
				function clear_reservebn1() {
					if ($("#reserv_bn1").css("display") == "block") {
						$("#reserv_bn1").hide();
					}
				}
				function clear_reservebn2() {
					if ($("#reserv_bn2").css("display") == "block") {
						$("#reserv_bn2").hide();
					}
				}
				function clear_reservebn3() {
					if ($("#reserv_bn3").css("display") == "block") {
						$("#reserv_bn3").hide();
					}
				}
				function clear_reservebn4() {
					if ($("#reserv_bn4").css("display") == "block") {
						$("#reserv_bn4").hide();
					}
				}
				function clear_reservebn5() {
					if ($("#reserv_bn5").css("display") == "block") {
						$("#reserv_bn5").hide();
					}
				}
			</script>
			<%end if%>

			


		<% End if %>
		<!-- // ����/���ҹ� �ű��Լ� ��� E -->

		<div id="header_utility" class="hd_utility gongssel">
			<h2 class="blindw">���� GNB �޴�</h2>
			<nav role="navigation">
				<!-- ���� gnb ���Ľ� �ش� �±׷� ����-->
				<!-- <i class="hd_toggleIcon ver1"><img src="<%=img_main%>/m/2021/0929_gongssel/gnb_bubble_01.gif" alt="11�� ���۹� ���� ��!"></i>
				<i class="hd_toggleIcon ver2"><img src="<%=img_main%>/m/2021/0929_gongssel/gnb_bubble_02.gif" alt="2���� �߰����θ��!"></i> -->
				<!-- //���� gnb ���Ľ� �ش� �±׷� ����-->
				<% if cdate(lo_now_date) >= cdate("2022-09-30") then %>
				<i class="toggleImg1" style='position:absolute; top:-24px; left:150px; z-index:1;'>
					<img src="<%=img_main%>/m/2022/0930_gongssel/tooltip.gif" alt="11�� ���۹� ���� ��!">
				</i>			
				<% elseif cdate(lo_now_date) >= cdate("2022-08-01") and cdate(lo_now_date) < cdate("2022-09-30") then %>
				<i class="toggleImg1" style='position:absolute; top:-24px; left:155px; z-index:1;'>
					<img src="<%=img_main%>/m/2022/0801_tclass/tclass9_tooltip.gif" alt="9�� �Թ��� ���� ��!">
				</i>
				<% else %>
				<i class="toggleImg1" style='position:absolute; top:-24px; left:155px; z-index:1;'>
					<img src="<%=img_main%>/m/2022/0530_gongssel/gnb_bubble.gif" alt="7�� �Թ��� ���� ��!">
				</i>
				<% end if %>

				<% if cdate(lo_now_date) < cdate("2022-05-16") then %>
				<i class="toggleImg2" style='position:absolute; top:-24px; left:370px; z-index:1;'><img src="<%=img_main%>/c/gongssel/self/220117/gnb_bubble_feb0224.gif" alt="2�� ���й� ���� ��!"></i>
				<% end if %>

				<ul class="mnu_list gongssel new v21">
					<li <% if gmenu = "1" Then %>class="on"<% End if %> ><a class="mli_link" href="/c/gongssel/intro/intro6.asp" title="�п��Ұ�">�п��Ұ�</a>
						<ul>
							<!-- Ŭ���� a�±׿� class="on" -->
							<% if cdate(lo_now_date) >= cdate("2022-10-28") then %>
								<li><a href="/c/gongssel/intro/intro6.asp">���� �λ縻/�����ϱ�</a></li>
								<li class="dep2_pre">
									<a href="javascript:;">�п����</a>
								</li>
								<li class="dep2">
									<a href="/c/gongssel/consult/index.asp" >���湮 ���(�ű�)����</a>
									<a href="/c/gongssel/intro/intro7.asp" >������ ���� ����(FAQ)</a>
									<a href="/c/gongssel/qna/list.asp" >��1:1 ���� �Խ���</a>
								</li>
								<li><a href="/c/gongssel/intro/intro9.asp">�п��ü�/���α׷�</a></li>
								<li><a href="/c/gongssel/help/notice/list.asp">�������� <!-- <img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"> --></a></li>
								<li><a href="/c/gongssel/intro/intro5.asp">���ô� ��</a></li>
							<% else %>
								<% if cdate(lo_now_date) < cdate("2022-10-25") then %>
								<li><a href="/c/gongssel/intro/intro6.asp">���� �λ縻</a></li>
								<% elseif cdate(lo_now_date) >= cdate("2022-10-25") then %>
								<li><a href="/c/gongssel/intro/intro6.asp">���� �λ縻/�����ϱ�</a></li>
								<% end if %>
								<li><a href="/c/gongssel/help/notice/list.asp">�������� <img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></li>
								<li><a href="/c/gongssel/consult/index.asp">�湮 ��� ����</a></li>
								<li><a href="/c/gongssel/qna/list.asp">�¶��� ���</a></li>
								<li><a href="/c/gongssel/intro/intro7.asp">���� ���� ����(FAQ)</a></li>
								<% if cdate(lo_now_date) < cdate("2022-10-25") then %>
								<li><a href="/c/gongssel/intro/intro8.asp">����� �����ϱ�</a></li>
								<% end if %>
								<% If 1=2 Then %>
								<li><a href="/c/gongssel/intro/intro3.asp">���� �н� �ý���</a></li>
								<%end if %>
								<li><a href="/c/gongssel/intro/intro9.asp">�п��ü� </a></li>
								<li><a href="/c/gongssel/intro/intro5.asp">���ô� ��</a></li>
							<% end if %>

							
						</ul>
					</li>

					<li class="<% if gmenu = "4" or gmenu = "9" or gmenu = "10" Then %>on<% End if %> schedule_link" >
						<a class="mli_link" href="javascript:;" title="���� �ð�ǥ">���� �ð�ǥ</a>
						<ul class="tit_nav_list">
							<li><a href="/c/gongssel/schedule/2021/overall/overall_05_all_9.asp">9��</a></li>
							<li><a href="/c/gongssel/schedule/2021/overall/overall_05_all_7.asp">7��</a></li>
							<li><a href="/c/gongssel/schedule/2021/low/low01.asp">������</a></li>
						</ul>
						<ul class="timeTable">
							<li class="dep2_pre">
								<a href="javascript:;" >
									<%If cdate(lo_now_date) < cdate("2022-08-01") then%>
									9�� (7��~8��)
									<% elseif cdate(lo_now_date) < cdate("2022-09-30") then %>
									9�� (9��~10��)
									<% else %>
									9�� (11��~12��)
									<% end if %>									
								</a>
							</li>
					
							<li class="dep2">
								<%If cdate(lo_now_date) >= cdate("2022-09-30") then%>
								<a href="/c/gongssel/schedule/2021/overall/overall_05_all_9.asp" >��2023 �ް� ��ȯ���չ�<%Call SetNewIcon("2022-09-30")%></a>
								<%elseIf cdate(lo_now_date) >= cdate("2022-08-01") and cdate(lo_now_date) < cdate("2022-09-30") then%>
								<a href="/c/gongssel/schedule/2021/overall/overall_05_all_9.asp" >��2023 �ް� ��ȯ���չ�<%Call SetNewIcon("2022-08-01")%></a>
								<%Else%>
								<a href="/c/gongssel/schedule/2021/overall/overall_05_all_9.asp" >���ް���ȯ���չ�<%Call SetNewIcon("2022-06-14")%></a>
								<%End if%>
							</li>

							<%If cdate(lo_now_date) < cdate("2022-08-01") then%>
							<li class="dep2"><a href="/c/gongssel/schedule/2021/schedule.asp?mcode=11&gcd=9&lcd=402" >���⺻�̷� �ܰ�<%Call SetNewIcon("2022-01-26")%></a></li>
							<li class="dep2"><a href="/c/gongssel/schedule/2021/schedule.asp?mcode=11&gcd=9&lcd=407" >������/���̳� �ܰ�<%Call SetNewIcon("2022-01-26")%></a></li>
							<% else %>
							<li class="dep2"><a href="/c/gongssel/schedule/2021/schedule.asp?mcode=11&gcd=9&lcd=402" >���⺻�̷� �ܰ�<%Call SetNewIcon("2022-08-01")%></a></li>
							<li class="dep2"><a href="/c/gongssel/schedule/2021/schedule.asp?mcode=11&gcd=9&lcd=403" >����ȭ/���� �ܰ�<%Call SetNewIcon("2022-08-01")%></a></li>
							<% end if %>

							<li class="dep2"><a href="/c/gongssel/schedule/2021/schedule.asp?mcode=13&gcd=9&lcd=408" >������ �ٽ� Ư��<%Call SetNewIcon("2022-01-26")%></a></li>
							
							<% If cdate(lo_now_date) >= cdate("2022-07-18") and cdate(lo_now_date) < cdate("2022-08-19 00:01") then%>
							<li class="dep2"><a href="/c/gongssel/schedule/2021/am/am_en_12_9.asp" >��8�� �������߹�<%Call SetNewIcon("2022-07-18")%></a></li>
							<% elseif cdate(lo_now_date) < cdate("2022-10-26") then%>
							<li class="dep2"><a href="/c/gongssel/schedule/2021/am/am_en_12_9.asp" >��10�� �������߹�</a></li>
							<% end if %>

							<!-- <li class="dep2"><a href="/c/gongssel/schedule/2021/am/am_en_12_9.asp">��2�� �������߹�<%Call SetNewIcon("2021-11-08")%></a></li> -->
							
							<li class="dep2_pre">
								<a href="javascript:;" >
									<%If cdate(lo_now_date) < cdate("2022-05-30") then%>			
									7�� (5��~6��)
									<%elseIf cdate(lo_now_date) < cdate("2022-08-01") then%>
									7�� (7��~8��)
									<% elseif cdate(lo_now_date) < cdate("2022-09-30") then %>			
									7�� (9��~10��)
									<% else %>			
									7�� (11��~12��)
									<% end if %>
								</a>
							</li>
						
							<li class="dep2">
								<%If cdate(lo_now_date) >= cdate("2022-09-30") then%>
								<a href="/c/gongssel/schedule/2021/overall/overall_05_all_7.asp" >��2023 �ް� ��ȯ���չ�<%Call SetNewIcon("2022-09-30")%></a>
								<%elseIf cdate(lo_now_date) >= cdate("2022-08-01") and cdate(lo_now_date) < cdate("2022-09-30") then%>
								<a href="/c/gongssel/schedule/2021/overall/overall_05_all_7.asp" >��2023 �ް� ��ȯ���չ�<%Call SetNewIcon("2022-08-01")%></a>
								<%Else%>
								<a href="/c/gongssel/schedule/2021/overall/overall_05_all_7.asp" >���ް���ȯ���չ�<%Call SetNewIcon("2022-06-14")%></a>
								<%End if%>
							</li>
							<% if cdate(lo_now_date) >= cdate("2022-05-13") and cdate(lo_now_date) < cdate("2022-09-30") then%>
							<li class="dep2"><a href="/c/gongssel/schedule/2021/overall/challenge_05_7.asp" >��7�� ç������<%Call SetNewIcon("2022-05-04")%></a></li>
							<% end if %>

							<%If cdate(lo_now_date) < cdate("2022-08-01") then%>
							<li class="dep2"><a href="/c/gongssel/schedule/2021/schedule.asp?mcode=11&gcd=7&lcd=402" >���⺻�̷� �ܰ�<%Call SetNewIcon("2022-01-26")%></a></li>
							<li class="dep2"><a href="/c/gongssel/schedule/2021/schedule.asp?mcode=11&gcd=7&lcd=407" >������/��Ǯ �ܰ�<%Call SetNewIcon("2022-01-26")%></a></li>
							<% else %>
							<li class="dep2"><a href="/c/gongssel/schedule/2021/schedule.asp?mcode=11&gcd=7&lcd=402" >���⺻�̷� �ܰ�<%Call SetNewIcon("2022-08-01")%></a></li>
							<li class="dep2"><a href="/c/gongssel/schedule/2021/schedule.asp?mcode=11&gcd=7&lcd=403" >����ȭ/���� �ܰ�<%Call SetNewIcon("2022-08-01")%></a></li>
							<% if cdate(lo_now_date) < cdate("2022-09-30") then %>
							<li class="dep2"><a href="/c/gongssel/schedule/2021/schedule.asp?mcode=11&gcd=7&lcd=407" >������/���̳� �ܰ�<%Call SetNewIcon("2022-08-01")%></a></li>
							<% end if %>
							<% end if %>

							<li class="dep2"><a href="/c/gongssel/schedule/2021/schedule.asp?mcode=13&gcd=9&lcd=408" >������ �ٽ� Ư��<%Call SetNewIcon("2022-01-26")%></a></li>
							
							<% if cdate(lo_now_date) >= cdate("2022-11-02 16:00") then %>
								<li class="dep2_pre"><a href="javascript:;">������ (12��)</a></li>
								<li class="dep2"><a href="/c/gongssel/schedule/2021/low/low01.asp"  title="12�� ��ȭ�̷� ���չ�">��12�� ��ȭ�̷� ���չ� <%Call SetNewIcon("2022-11-02 16:00")%></a></li>
								<li class="dep2"><a href="/c/gongssel/schedule/2021/low/low_synthesis.asp"  title="�ް� ������ ��ȯ ���չ�" style="letter-spacing:-1.8px;">���ް� ������ ��ȯ ���չ� <%Call SetNewIcon("2022-11-02 16:00")%></a></li>
								<li class="dep2"><a style="letter-spacing: -0.09em;" href="/c/gongssel/schedule/2021/low/low02.asp" title="12�� ��ȭ�̷� �ܰ�">��12�� ��ȭ�̷� �ܰ� <%Call SetNewIcon("2022-11-02 16:00")%></a></li>
							<% end if %>
							<% if cdate(lo_now_date) >= cdate("2022-07-01") and cdate(lo_now_date) < cdate("2022-11-02 16:00") then %>
								<li class="dep2_pre"><a href="javascript:;">������ (8��)</a></li>
								<li class="dep2"><a href="/c/gongssel/schedule/2021/low/low01.asp"  title="8�� �⺻�̷� ���չ�">��8�� �⺻�̷� ���չ� <%Call SetNewIcon("2022-07-01")%></a></li>
								<li class="dep2"><a href="/c/gongssel/schedule/2021/low/low_synthesis.asp"  title="�ް� ������ ��ȯ ���չ�" style="letter-spacing:-1.8px;">���ް� ������ ��ȯ ���չ� <%Call SetNewIcon("2022-07-01")%></a></li>
								<li class="dep2"><a style="letter-spacing: -0.09em;" href="/c/gongssel/schedule/2021/low/low02.asp" title="8�� �⺻�̷� �ܰ�">��8�� �⺻�̷� �ܰ� <%Call SetNewIcon("2022-07-01")%></a></li>
							<% elseif cdate(lo_now_date) < cdate("2022-07-01") then %>
								<li class="dep2_pre"><a href="javascript:;">������ (4��)</a></li>
								<li class="dep2"><a href="/c/gongssel/schedule/2021/low/low01.asp"  title="�ް� ������ ���չ�">���ް� ������ ���չ� <%Call SetNewIcon("2022-04-11")%></a></li>
								<li class="dep2"><a href="/c/gongssel/schedule/2021/low/low_synthesis.asp"  title="2023 ��� �ް� ������ ���չ�" style="letter-spacing:-1.8px;">��2023 ��� �ް� ������ ���չ� <%Call SetNewIcon("2022-04-03")%></a></li>
								<li class="dep2"><a style="letter-spacing: -0.09em;" href="/c/gongssel/schedule/2021/low/low02.asp" title="�� ���� ���� ���ǰ�� �ܰ�">���� ���� ���� ���ǰ�� �ܰ� <%Call SetNewIcon("2022-04-11")%></a></li>
							<% end if %>
						</ul>
					</li>
					<li <% if gmenu = "3" Then %>class="on"<% End if %> >
						<a class="mli_link long_txt" href="/c/gongssel/self/index.asp" title="�����̾� �н�����">�����̾� �н�����</a><% if false Then %><i class="gongssel_i self"><img src="<%=img_main%>/c/gongssel/self/gongssel_gnb_self.png" alt="ü��ܸ�����!"></i><% End if %>
						
						<ul>
							<li><a href="/c/gongssel/self/index.asp" target="_blank">�����̾� �н�����</a></li>
							<%If cdate(lo_now_date) < cdate("2022-06-17 11:00") then%>
							<li><a href="/c/gongssel/pass/index.asp">���� ���� </a></li>
							<li><a href="/c/gongssel/interview/list.asp">�հݻ� ���ͺ� <% if is_aca_interview_new then %><img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"><% end if %></a></li>
							<li><a href="/c/gongssel/review/list.asp">�̿��ı� <img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block" /></a></li>
							<li><a href="/c/gongssel/review/list.asp?review_gbn=2">ü����� <img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block" /></a></li>
							<%end if%>
						</ul>
					</li>
					<li <% if gmenu = "2" Then %>class="on"<% End if %> ><a class="mli_link" href="/c/gongssel/teacher/index.asp#mContent" title="������ ������">������ ������</a>
						<ul>
							<li><a href="/c/gongssel/teacher/index.asp?sub_code=0&tec_code=0#teacher_info_id" title="����">����</a></li>
							<li><a href="/c/gongssel/teacher/index.asp?sub_code=1&tec_code=0#teacher_info_id" title="����">����</a></li>
							<li><a href="/c/gongssel/teacher/index.asp?sub_code=2&tec_code=0#teacher_info_id" title="�ѱ���">�ѱ���</a></li>
							<li><a href="/c/gongssel/teacher/index.asp?sub_code=3&tec_code=0#teacher_info_id" title="������">������</a></li>
							<li><a href="/c/gongssel/teacher/index.asp?sub_code=4&tec_code=0#teacher_info_id" title="������">������</a></li>
							<li><a href="/c/gongssel/teacher/index.asp?sub_code=sel&tec_code=0#teacher_info_id" title="��������">��������</a></li>
						</ul>
					</li>
					<!-- ���� gnb ���Ľ� style ����-->
					<style>
						/* /common/css/megagong_common.css - �޴�1�� �߰��ʿ� ���� ���� �߰����� �ϱ� */
						#headertop .hd_utility.gongssel .mnu_list.gongssel.new > li:not(.all_menu) { width:16% !important }
						#headertop .hd_utility .mnu_list.gongssel.new.v21 li .tit_nav_list{transform: translateX(-90%);}
					</style>
					<!-- //���� gnb ���Ľ� style ����-->
					<li <% if gmenu = "8" Then %>class="on"<% End if %> ><a class="mli_link" href="/c/gongssel/examinfo/index.asp#mContainer" title="�հ����� LAB">�հ����� LAB</a>
						<ul>
							<li><a href="/c/gongssel/examinfo/index.asp#mContainer" title="������ �հ����� LAB">������ �հ����� LAB</a></li>
							<li><a href="/c/gongssel/examinfo/statistic_2020.asp" title="������������">������������</a></li>
							<li><a href="/c/gongssel/examinfo/library/list.asp" title="���⹮��&�ؼ�����">���⹮��&�ؼ�����</a></li>
						</ul>
					</li>

					<li <% if gmenu = "11" Then %>class="on"<% End if %> ><a class="mli_link long_txt" href="/c/gongssel/presentation/index.asp" title="����ȸ������Ư��">����ȸ �� ����Ư�� <img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�"
						style="vertical-align:middle;margin-left:3px;display:inline-block"></a>
						<ul>
							<li><a href="/c/gongssel/presentation/index.asp" title="����ȸ �� ����Ư�� ��û">����ȸ �� ����Ư�� ��û <img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block" /></a></li>
						</ul>
					</li>
					<li class="all_menu"><strong class="mli_link"><span>-</span><span>-</span><span>-</span></strong></li>
				</ul>
				<!-- // ����-->

				<!-- <a href="javascript:;" class="menu_x" title="��ü�޴� �ݱ�">
					<span><img src="<%=img_main%>/c/gongssel/main/menu_x.png" alt="��ü�޴� �ݱ�"></span>
				</a> -->

			</nav>

			<div class="gnb_bgArea"><div class="bgArea" style="display: none;"></div></div>

		</div><!-- hd_utility / E -->

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
				var gongsselAllmenu = $('#headertop .hd_utility .mnu_list.gongssel > li > ul:not(.tit_nav_list)');
				//policeAllmenu.hide();
				$(".all_menu").click(function (e) {
					e.preventDefault();
					gongsselAllmenu.toggleClass("on");
					if(gongsselAllmenu.css("display") == "none"){
						$('.hd_utility.gongssel .mnu_list.gongssel li .tit_nav_list').slideUp(0);
						gongsselAllmenu.slideDown(150);
						$('.gnb_bgArea .bgArea').slideDown(150);
						$('.courtnew_brn').hide();
						$('.flt_brn_1229').hide();
					}else{
						gongsselAllmenu.slideUp(150);
						$('.gnb_bgArea .bgArea').slideUp(150);
						$('.courtnew_brn').show();
						$('.flt_brn_1229').show();
					}
				});

				$(".schedule_link").hover(function(e) {
					e.preventDefault();
					if (!gongsselAllmenu.hasClass("on")) {
						if ($('.hd_utility.gongssel .mnu_list.gongssel li .tit_nav_list').css("display") == "none") {
							gongsselAllmenu.slideUp(0);
							$('.gnb_bgArea .bgArea').slideUp(0);
							$('.hd_utility.gongssel .mnu_list.gongssel li .tit_nav_list').slideDown(150);
							console.log(1);
						} else {
							$('.hd_utility.gongssel .mnu_list.gongssel li .tit_nav_list').slideUp(150);
							console.log(2);
						}
					}
				});

			</script>
		</div>
		<!-- // �޴� ��� ȭ�� -->

		<!-- hd_mo_utility / S -->
		<div id="hd_MoUtility" class="hd_mo_utility gongssel">
			<div class="mo_gnb">
				<nav>
					<div class="slider">
						<div class="item"><a href="/c/gongssel/intro/intro6.asp" <% if gmenu = "1" Then %>class="on"<% End if %> title="�п��Ұ�">�п��Ұ�</a></div>
						<div class="item"><a href="/c/gongssel/schedule/2021/overall/overall_05_all_9.asp" <% if gmenu = "4" Then %>class="on"<% End if %> title="9�� �ð�ǥ">9�� �ð�ǥ</a></div>
						<div class="item"><a href="/c/gongssel/schedule/2021/overall/overall_05_all_7.asp" <% if gmenu = "9" Then %>class="on"<% End if %> title="7�� �ð�ǥ">7�� �ð�ǥ</a></div>
						<div class="item"><a href="/c/gongssel/schedule/2021/low/low01.asp" <% if gmenu = "10" Then %>class="on"<% End if %> title="������ �ð�ǥ">������ �ð�ǥ</a></div>
					
						<div class="item"><a href="/c/gongssel/self/index.asp" <% if gmenu = "3" Then %>class="on"<% End if %> title="�����̾� �н�����">�����̾� �н�����</a></div>
						<div class="item"><a href="/c/gongssel/teacher/index.asp#mContent" <% if gmenu = "2" Then %>class="on"<% End if %> title="������ ������">������ ������</a></div>
						<div class="item"><a href="/c/gongssel/examinfo/index.asp#mContainer" <% if gmenu = "8" Then %>class="on"<% End if %> title="�հ����� LAB">�հ����� LAB</a></div>
						<div class="item"><a href="/c/gongssel/presentation/index.asp" <% if gmenu = "11" Then %>class="on"<% End if %> title="����ȸ �� ����Ư��">����ȸ �� ����Ư�� <img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block" /></a></div>
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
					slidesToShow: 5,
					slidesToScroll: 5,
					variableWidth: false,
				}
				}, {
					breakpoint: 992,
					settings: {
						slidesToShow: 3,
						slidesToScroll: 3,
						variableWidth: true,
					}
				}, {
					breakpoint: 421,
					settings: {
						slidesToShow: 2,
						slidesToScroll: 2,
						variableWidth: true,
					}
				}]
			});

			$(window).on('load resize', function() {
				$('#hd_MoUtility .mo_gnb .slider').slick('refresh');
			});
			<%if gmenu = "10"  then %>
			$('#hd_MoUtility .mo_gnb .slider').slick('slickGoTo', 3);
			<% end if%>
			<%if gmenu = "3" or gmenu = "8" or gmenu = "11"  then %>
			$('#hd_MoUtility .mo_gnb .slider').slick('slickGoTo', 4);
			<%end if%>


		</script>


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
								<a href="javascript:;" title="�ް��������п�">�ް��������п�</a>
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

											<dd><a href="https://www.megajob.co.kr/megajob.asp " title="�ް������">�ް������ <img src="<%=img_main%>/common/ic_new.gif" alt="New" style="vertical-align:middle;margin:-3px 0 0 3px;" /></a></dd>
										</dl>
									</li>
								</ul>
							</li>
							<li><a href="/c/gongssel/intro/intro6.asp" title="�п��Ұ�">�п��Ұ�</a></li>
							<li class="more">
								<a href="javascript:;" title="���� �ð�ǥ">���� �ð�ǥ</a>
								<ul class="nextlst mbtea_all tit_none">
									<li>
										<dl>
                                            <dt class="blindw">�ð�ǥ �̵�</dt>
											<dd><a href="/c/gongssel/schedule/2021/overall/overall_05_all_9.asp" title="9��">9��</a></dd>
											<dd><a href="/c/gongssel/schedule/2021/overall/overall_05_all_7.asp" title="7��">7��</a></dd>
											<dd><a href="/c/gongssel/schedule/2021/low/low01.asp" title="������">������</a></dd>
										</dl>
									</li>
								</ul>
							</li>

		                    <li><a href="/c/gongssel/self/index.asp" title="�����̾� �н�����">�����̾� �н�����</a></li>
		                    <li><a href="/c/gongssel/teacher/index.asp#mContent" title="������ ������">������ ������</a></li>
							<li><a href="/c/gongssel/examinfo/index.asp" title="�հ����� LAB">�հ����� LAB</a></li>
							<li><a href="/c/gongssel/presentation/index.asp" title="����ȸ &#183; ����Ư��">����ȸ &#183; ����Ư�� <img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block" /></a></li>
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
	<div id="mo_globalMenu" class="glbal_menu gongssel fixed">
		<div class="gm_inner">
			<ul>
				<li class="all"><a href="javascript:;" title="��ü"><span>��ü</span></a></li>
				<li class="schedule"><a href="/c/gongssel/schedule/2021/overall/overall_05_all_9.asp" title="�ð�ǥ"><span>�ð�ǥ</span></a></li>
				<li class="home"><a href="<%=h_lnk %>" title="Ȩ"><span>Ȩ</span></a></li>
				<li class="noti"><a href="/c/gongssel/help/notice/list.asp" title="��������"><span>��������</span></a></li>
				<!-- <li class="top"><a href="javascript:glb_movetop();" title="������"><span>������</span></a></li> -->
				<li class="my"><a href="/mypage/index.asp" title="MY"><span>MY</span></a></li>
			</ul>
		</div>
	</div>
	<!--  // ����� �ϴ� ���� �޴� & TOP��ư -->


	<script type="text/javascript">

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

		// ����� top ��ư (s)
		function glb_movetop() {
			$('html, body').animate({ scrollTop: 0 }, 0);
		}
	   // ����� top ��ư (e)
	</script>
	<!-- // ����� �޴� -->
	
	<!--����û ��ܿ������-->
	<% if instr(1, NowUrl, "/megagong.asp") >= 0 Then %>
	<div class="main_top_bn">
		<div>
			<a href="/c/gongssel/consult/index.asp">
				<img src="<%=img_main%>/m/2022/1019_gongssel/main_top_bnr.png" alt="����û 02-3280-1010 �湮��� �����ϱ�">
			</a>
		</div>
	</div>  
	<style>
		.main_top_bn {position: absolute; top: 140px; left: 46%; margin-left: 340px;z-index: 2;}

		@media (max-width:1200px){
			.main_top_bn { display:none !important; }
		}
	</style>
	<% End if %>
	<!--// ����û ��ܿ������-->

	<!-- ����û ������ ��� -->
	<% if instr(1, NowUrl, "/megagong.asp" ) > 0 Then %>
	<% If fncRequestCookie("main_bnr_mo") = "" then %>
	<span class="main_bnr_mo consult_bnr">
		<a href="/c/gongssel/consult/index.asp">
			<img src="<%=img_main%>/m/2022/1019_gongssel/main_bnr_mo.png" alt="����û 02-3280-1010 �湮��� �����ϱ�">
		</a>
		<ul class="close">
			<li class="day"><a href="javascript:bnrDay_main_bnr_mo();">���� �Ϸ� ���� �ʱ�</a></li>
			<li><a href="javascript:bnrOff_main_bnr_mo();">�ݱ�</a></li>
		</ul>
	</span>
	<style>
		.main_bnr_mo {display: none; position: fixed; right: 15px; bottom: 100px; z-index: 10;}
		.main_bnr_mo .close {margin: 5px 0 0 0;}
		.main_bnr_mo .close li {display: inline-block; width: 30%; background: #333; color: #fff; text-align: center; font-size: 15px; padding: 10px 0;}
		.main_bnr_mo .close li.day {width: 68%;}

		@media (max-width: 1200px){
			.main_bnr_mo {display: block;}
		}
		@media (max-width: 768px){
			.main_bnr_mo {width: 198px; bottom: 80px;}
			.main_bnr_mo .close li {font-size: 13px;}
			#headertop .new_st_mo {right:20px;}
			#headertop .new_st_pop .close { right:20px; width:auto; }
		}
		@media (max-width: 576px){
			.main_bnr_mo {width: 160px; bottom: 70px;}
			.main_bnr_mo .close li {width: 29%; font-size: 12px; margin: 0;}
			.main_bnr_mo .close li.day {width: 68%;}
		}
	</style>
	<script>
		function bnrDay_main_bnr_mo(){
			setCookie("main_bnr_mo", "close", 1);
			if ($(".main_bnr_mo").css("display") == "block") {
				$(".main_bnr_mo").hide();
			}
		}
		function bnrOff_main_bnr_mo(){
			$(".main_bnr_mo").hide();
		}
	</script>
	<%end if%>
	<%end if%>
	<!--// ����û ������ ��� -->