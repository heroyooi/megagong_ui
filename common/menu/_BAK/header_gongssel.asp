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
							<img src="<%=img_main%>/m/2021/0607_gong/exhibi_live_bnr.png" class="" style="cursor:pointer;" alt="2022 9�� ��� �հ����� ����ȸ">
						</a>
					</div>
					<%end if%> -->
					<%If cdate(lo_now_date) < cdate("2021-06-19 14:00") then%>
					<div>
						<a href="/c/gongssel/event/2021/02190001/index.asp#eventWrap">
							<img src="<%=img_main%>/m/2021/0415_presentation/pc_bnr.png" class="" style="cursor:pointer;" alt="2022 ������ ���� ��� �հ����� ����ȸ �����ϱ�">
						</a>
					</div>
					<% end if %>
					
					<%If cdate(lo_now_date) < cdate("2021-07-03 17:00") then%>
					<div>
						<a href="/c/gongssel/event/2021/02190001/index.asp#eventWrap">
							<img src="<%=img_main%>/m/2021/0507_97brief/main_sky_ban_0628.png" class="" style="cursor:pointer;" alt="2022 9�� ��� �հ����� ����ȸ">
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

		<h1 class="hd_logo">
			<a href="<%=gongssel_main %>" class="gongssel" title="�ް��������п� ���������� �ٷΰ���"><img src="<%=img_main%>/c/gongssel/logo_nk.png" alt="�ް����͵� ���� �������п� �ް��������п�"></a>
		</h1>

		<% if 1=2 then%>
		<!-- hd_right_bnr / S -->
		<div class="hd_right_bnr n0105">
			<div>
				<div class="hd_slider">
					<div>
						<img src="<%=img_main%>/m/2021/0324_sobang_ban/header_ban_gong.png" class="" alt="���� �������п��� �ް��������п����� ���Ӱ� �����մϴ�.">
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
		<%end if %>


		<a href="javascript:;" class="mobile_navbtn" title="����ϸ޴� ����">
	      <span>-</span>
	      <span>-</span>
	      <span>-</span>
	   </a>

		
		<div class="hd_utility gongssel">
			<h2 class="blindw">���� GNB �޴�</h2>
			<nav role="navigation">
				<%If cdate(lo_now_date) < cdate("2021-05-27 00:00") then%>
				<i style='position:absolute; top:-24px; left:185px; z-index:55;'><img src="<%=img_main%>/m/2021/0520_gongssel/gnb_bubble.gif" alt="5�� ���۹� ���� ��!"></i>
				<%else%>
				<i style='position:absolute; top:-24px; left:185px; z-index:55;'><img src="<%=img_main%>/m/2021/0528_gongssel/gnb_bubble_01.gif" alt="7�� ���۹� ���� ��!"></i>
				<%end if%>
				
				<%If cdate(lo_now_date) < cdate("2021-05-25 00:00") then%>
				<i style='position:absolute; top:-24px; left:335px; z-index:55;'><img src="<%=img_main%>/m/2021/0409_gongssel/gnb_bubble_5.gif" alt="5�� ���۹� ���� ��!"></i>
				<%elseIf cdate(lo_now_date) < cdate("2021-05-27 00:00") then%>
				<i style='position:absolute; top:-24px; left:335px; z-index:55;'><img src="<%=img_main%>/m/2021/0525_gongssel/gnb_bubble_7.gif" alt="7�� ���۹� ���� ��!"></i>
				<%else%>
				<i style='position:absolute; top:-24px; left:335px; z-index:55;'><img src="<%=img_main%>/m/2021/0528_gongssel/gnb_bubble_01.gif" alt="7�� ���۹� ���� ��!"></i>
				<%end if%>

				<%If cdate(lo_now_date) < cdate("2021-05-27 00:00") then%>
				<i style='position:absolute; top:-24px; left:490px; z-index:55;'><img src="<%=img_main%>/m/2021/0409_gongssel/gnb_bubble_4.gif" alt="4�� ���۹� ���� ��!"></i>
				<%else%>
				<i style='position:absolute; top:-24px; left:490px; z-index:55;'><img src="<%=img_main%>/m/2021/0528_gongssel/gnb_bubble_02.gif" alt="������ ���й� ���� ��!"></i>
				<%end if%>
				<!-- ����-->
				<ul class="mnu_list gongssel">
					<li <% if gmenu = "1" Then %>class="on"<% End if %> ><a class="mli_link" href="javascript:;" title="�п��Ұ�">�п��Ұ�</a>
						<ul>
							<!-- Ŭ���� a�±׿� class="on" -->
							<li><a href="/c/gongssel/intro/intro6.asp">���� �λ縻</a></li>
							<li><a href="/c/gongssel/help/notice/list.asp">�������� <img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></li>
							<li><a href="/c/gongssel/consult/index.asp">�湮 ��� ����</a></li>
							<li><a href="/c/gongssel/qna/list.asp">�¶��� ���</a></li>
							<li><a href="/c/gongssel/intro/intro7.asp">���� ���� ����(FAQ)</a></li>
							<li><a href="/c/gongssel/intro/intro8.asp">����� �����ϱ�</a></li>
							<li><a href="/c/gongssel/presentation/index.asp" style="letter-spacing:-0.08em;">����ȸ �� ����Ư�� ��û</a></li>
							<% If 1=2 Then %>
							<li><a href="/c/gongssel/intro/intro3_online.asp" style="letter-spacing:-0.17em;">�¶��� �¼� ���� �ý��� <img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></a></li>
							<% end if %>
							<li><a href="/c/gongssel/intro/intro3.asp">���� �н� �ý���</a></li>
							<li><a href="/c/gongssel/intro/intro9.asp">�п��ü� </a></li>
							<li><a href="/c/gongssel/intro/intro5.asp">���ô� ��</a></li>
						</ul>
					</li>
					
					<li <% if gmenu = "4" Then %>class="on"<% End if %> ><a class="mli_link" href="javascript:;" title="9�� �ð�ǥ">9�� �ð�ǥ</a><!-- <span class="hd_bubble"><img src="<%=img_main%>/c/gongssel/main/gongssel_dirbtn_icon2.png" alt="���� �����Դϴ�." style="margin-left:9px"></span> -->
						<ul class="timeTable">
							<!-- <li class="dep2_pre"><a href="/c/gongssel/schedule/2021/overall/overall_03_all_9.asp" >���չ�</a></li>
								<li class="dep2"><a href="/c/gongssel/schedule/2021/overall/overall_03_all_9.asp" >��3~4�� ���չ�<%if CDate(lo_now_date) < CDate("2021-02-03") then%><img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block" /><% End if %></a></li> -->
							<li class="dep2_pre"><a href="/c/gongssel/schedule/2021/overall/overall_05_all_9.asp" >�ް� ���չ�</a></li>
							<%If cdate(lo_now_date) < cdate("2021-05-25") then%>
							<li class="dep2"><a href="/c/gongssel/schedule/2021/overall/overall_05_all_9.asp" >��5~6�� �ް� ��ȯ���չ�<%if CDate(lo_now_date) < CDate("2021-04-25") then%><img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block" /><% End if %></a></li>	
							<%else%>
							<li class="dep2"><a href="/c/gongssel/schedule/2021/overall/overall_05_all_9.asp" >��7~8�� �ް� ��ȯ���չ�<%if CDate(lo_now_date) < CDate("2021-04-25") then%><img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block" /><% End if %></a></li>	
							<% end if %>

							<%If cdate(lo_now_date) < cdate("2021-05-25") then%>
							<li class="dep2_pre"><a href="/c/gongssel/schedule/2021/schedule2.asp?mcode=11&gcd=9" >�ܰ� ����</a></li>
							<li class="dep2"><a href="/c/gongssel/schedule/2021/schedule2.asp?mcode=11&gcd=9" >��6�� ����Ư��<img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block" /></a></li>
							<li class="dep2"><a href="/c/gongssel/schedule/2021/am/am_en_4_9.asp">��6�� ���� ���߹�<% If cdate(lo_now_date) < cdate("2021-05-15") Then %><img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block" /><% End if %></a></li>
							<li class="dep2"><a href="/c/gongssel/schedule/2021/schedule.asp?mcode=11&gcd=9" >��5~6�� �⺻�̷дܰ�<% If cdate(lo_now_date) < cdate("2021-04-25") Then %><img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block" /><% End if %></a></li>
							<li class="dep2"><a href="/c/gongssel/schedule/2021/am/am_final.asp">��5�� ���̳� ����<% If cdate(lo_now_date) < cdate("2021-04-28") Then %><img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block" /><% End if %></a></li>
							<%else%>
							<li class="dep2_pre"><a href="/c/gongssel/schedule/2021/schedule2.asp?mcode=11&gcd=9" >�ܰ� ����</a></li>
							<li class="dep2"><a href="/c/gongssel/schedule/2021/schedule.asp?mcode=11&gcd=9" >��7~8�� �⺻�̷дܰ�<% If cdate(lo_now_date) < cdate("2021-06-09") Then %><img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block" /><% End if %></a></li>
							<li class="dep2"><a href="/c/gongssel/schedule/2021/schedule2.asp?mcode=11&gcd=9" >��6�� ����Ư��<img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block" /></a></li>
							<li class="dep2"><a href="/c/gongssel/schedule/2021/am/am_en_4_9.asp">��6�� ���� ���߹�<% If cdate(lo_now_date) < cdate("2021-05-15") Then %><img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block" /><% End if %></a></li>
							<%If cdate(lo_now_date) < cdate("2021-05-27") then%>
							<li class="dep2"><a href="/c/gongssel/schedule/2021/am/am_final.asp">��5�� ���̳� ����<% If cdate(lo_now_date) < cdate("2021-04-28") Then %><img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block" /><% End if %></a></li>
							<% end if %>
							<% end if %>

							<li class="dep2_pre"><a href="<%=gongssel_main %>/c/gongssel/schedule/2021/interview/index.asp">���� ����</a></li>
							<%If cdate(lo_now_date) < cdate("2021-05-31 00:00") then%>
							<li class="dep2"><a href="<%=gongssel_main %>/c/gongssel/schedule/2021/interview/index.asp" >�������� ������<% If cdate(lo_now_date) < cdate("2021-05-01") Then %><img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block" /><% End if %></a></li>
							<% else %>
							<li class="dep2"><a href="<%=gongssel_main %>/c/gongssel/schedule/2021/interview/index.asp" >�������/������ ��� <br/>&ensp;&ensp;������<% If cdate(lo_now_date) < cdate("2021-07-01") Then %><img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block" /><% End if %></a></li>
							<% end if %>

							<!-- <li class="dep2_pre"><a href="/c/gongssel/schedule/2021/en/en_01.asp" >Ư����</a></li>
								<li class="dep2"><a href="/c/gongssel/schedule/2021/en/en_01.asp" >������ Ư����</a></li> -->
							</ul>
						</li>
						
						<li <% if gmenu = "9" Then %>class="on" <% End if %>><a class="mli_link" href="javascript:;" title="7�� �ð�ǥ">7�� �ð�ǥ</a><% if false Then %><i class="gongssel_i self"><img src="<%=img_main%>/c/gongssel/self/gongssel_gnb_self.png" alt="ü��ܸ�����!"></i><% End if %>
							<ul class="timeTable">
								<!-- <li class="dep2_pre"><a href="/c/gongssel/schedule/2021/overall/overall_03_all_7.asp?grd_code=7" title="���չ�">���չ�</a></li>
								<li class="dep2"><a href="/c/gongssel/schedule/2021/overall/overall_03_all_7.asp?grd_code=7" style="letter-spacing: -2px;" title="3~4�� ���� ������ ���չ�">��3~4�� ���� ������ ���չ�<%if CDate(lo_now_date) < CDate("2021-02-03") then%><img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block" /><% End if %></a></li> -->
								<li class="dep2_pre"><a href="/c/gongssel/schedule/2021/overall/overall_05_all_7.asp" >�ް� ���չ�</a></li>
								<%If cdate(lo_now_date) < cdate("2021-05-25") then%>
								<li class="dep2"><a href="/c/gongssel/schedule/2021/overall/overall_05_all_7.asp" >��5~6�� �ް� ��ȯ���չ�<%if CDate(lo_now_date) < CDate("2021-04-25") then%><img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block" /><% End if %></a></li>
								<%else%>
								<li class="dep2"><a href="/c/gongssel/schedule/2021/overall/overall_05_all_7.asp" >��7~8�� �ް� ��ȯ���չ�<%if CDate(lo_now_date) < CDate("2021-04-25") then%><img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block" /><% End if %></a></li>
								<% end if %>
									
								<%If cdate(lo_now_date) < cdate("2021-05-25") then%>
								<li class="dep2_pre"><a href="/c/gongssel/schedule/2021/am/am_3_7.asp" >�ܰ� ����</a></li>
								<li class="dep2"><a href="/c/gongssel/schedule/2021/schedule.asp?mcode=11&gcd=7" >��5~6�� �⺻/��Ǯ �ܰ�<% If cdate(lo_now_date) < cdate("2021-04-25") Then %><img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block" /><% End if %></a></li>
								<% else %>
								<li class="dep2_pre"><a href="/c/gongssel/schedule/2021/schedule.asp?mcode=11&gcd=7" >�ܰ� ����</a></li>
								<li class="dep2"><a href="/c/gongssel/schedule/2021/schedule.asp?mcode=11&gcd=7" >��7~8�� �⺻�̷�<br/>&ensp;&ensp;/���̳� �ܰ�<% If cdate(lo_now_date) < cdate("2021-06-09") Then %><img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block" /><% End if %></a></li>
								<% end if %>							
							<!--li class="dep2"><a href="/c/gongssel/schedule/2020/am_12_7_psat.asp">��PSAT �ܰ�<% If cdate(lo_now_date) < cdate("2020-12-01") Then %><img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block" /><% End if %></a></li-->
							
						</ul>
					</li>
					
					<%If cdate(lo_now_date) < cdate("2021-04-01") then%>  
					<li <% if gmenu = "10" Then %>class="on" <% End if %>><a class="mli_link" href="javascript:;" title="������ �ð�ǥ">������ �ð�ǥ</a>
						<ul class="timeTable">
							<li class="dep2_pre"><a href="/c/gongssel/schedule/2021/army/overall_gather_3.asp" title="�ް� ���չ�">�ް� ���չ�</a></li>
							<li class="dep2"><a href="/c/gongssel/schedule/2021/army/overall_gather_3.asp" style="letter-spacing: -2px;" title="3~4�� �ܿ���Ǯ ���չ� ">��3~4�� �ܿ���Ǯ ���չ� <%if CDate(lo_now_date) < CDate("2021-02-03") then%><img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block" /><% End if %></a></li>

							<li class="dep2_pre"><a href="/c/gongssel/schedule/2021/army/am_3.asp" title="���� ����">���� ����</a></li>
							<li class="dep2"><a style="letter-spacing: -0.09em;" href="/c/gongssel/schedule/2021/army/am_3.asp" title="3~4�� ���� ����">��3~4�� ���� ����<% If cdate(lo_now_date) < cdate("2021-02-04") Then %><img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block" /><% End if %></a></li>
							
						</ul>
					</li>
					<% else %>
					<li <% if gmenu = "10" Then %>class="on" <% End if %>><a class="mli_link" href="javascript:;" title="������ �ð�ǥ">������ �ð�ǥ</a>
						<ul class="timeTable">
							<li class="dep2_pre"><a href="/c/gongssel/schedule/2021/low/low01.asp" title="���չ�">���չ�</a></li>
							<li class="dep2"><a href="/c/gongssel/schedule/2021/low/low01.asp" style="letter-spacing: -2px;" title="4~7�� ������ ��ȯ��">��4~7�� ������ ��ȯ�� <%if CDate(lo_now_date) < CDate("2021-05-01") then%><img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block" /><% End if %></a></li>
							<%If cdate(lo_now_date) >= cdate("2021-05-27") then%>  
							<li class="dep2"><a href="/c/gongssel/schedule/2021/low/low_self.asp" style="letter-spacing: -2px;" title="������ ���й�">�������� ���й� <%if CDate(lo_now_date) < CDate("2021-06-11") then%><img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block" /><% End if %></a></li>
							<% end if %>
							<li class="dep2_pre"><a href="/c/gongssel/schedule/2021/low/low02.asp" title="�ܰ� ����">�ܰ� ����</a></li>
							<li class="dep2"><a style="letter-spacing: -0.09em;" href="/c/gongssel/schedule/2021/low/low02.asp" title="4~7�� �⺻�̷� �ܰ�">��4~7�� �⺻�̷� �ܰ� <% If cdate(lo_now_date) < cdate("2021-04-29") Then %><img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block" /><% End if %></a></li>
						</ul>
					</li>
					<% end if %>

					<li <% if gmenu = "3" Then %>class="on"<% End if %> ><a class="mli_link" href="javascript:;" title="�����̾� ������ �ڽ���">�����̾��������ڽ���</a><% if false Then %><i class="gongssel_i self"><img src="<%=img_main%>/c/gongssel/self/gongssel_gnb_self.png" alt="ü��ܸ�����!"></i><% End if %>
						<ul>
							<li><a href="/c/gongssel/self/index.asp" target="_blank">�����̾� ������ �ڽ���</a></li>
							<li><a href="/c/gongssel/pass/index.asp">���� ���� </a></li>
							<li><a href="/c/gongssel/interview/list.asp">�հݻ� ���ͺ� <% if is_aca_interview_new then %><img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"><% end if %></a></li>
							<li><a href="/c/gongssel/review/list.asp">�̿��ı� <img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block" /></a></li>
							<li><a href="/c/gongssel/review/list.asp?review_gbn=2">ü����� <img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block" /></a></li>
						</ul>
					</li>
					<li <% if gmenu = "2" Then %>class="on"<% End if %> ><a class="mli_link" href="javascript:;" title="������ Ŀ��ŧ��">������ Ŀ��ŧ��</a>
						
						<ul>
							<li><a href="/c/gongssel/teacher/index.asp?sub_code=all&tec_code=0#teacher_info_id" title="��ü">��ü</a></li>
							<li><a href="/c/gongssel/teacher/index.asp?sub_code=0&tec_code=0#teacher_info_id" title="����">����</a></li>
							<li><a href="/c/gongssel/teacher/index.asp?sub_code=1&tec_code=0#teacher_info_id" title="����">����</a></li>
							
							<li><a href="/c/gongssel/teacher/index.asp?sub_code=2&tec_code=0#teacher_info_id" title="�ѱ���">�ѱ���</a></li>
							<li><a href="/c/gongssel/teacher/index.asp?sub_code=3&tec_code=0#teacher_info_id" title="������">������</a></li>
							<li><a href="/c/gongssel/teacher/index.asp?sub_code=4&tec_code=0#teacher_info_id" title="������">������</a></li>
							<li><a href="/c/gongssel/teacher/index.asp?sub_code=5&tec_code=0#teacher_info_id" title="���ð���">���ð���</a></li>
							<li><a href="/c/gongssel/assessmnt/eval.asp">������ </a></li>
						</ul>
					</li>
					<li <% if gmenu = "8" Then %>class="on"<% End if %> ><a class="mli_link" href="javascript:;" title="�հ����� LAB">�հ����� LAB</a>
						<ul>
							<li><a href="/c/gongssel/examinfo/index.asp#mContainer" title="������ �հ����� LAB">������ �հ����� LAB</a></li>
						</ul>
					</li>
					<% if 1=2 then%>
					<li <% if gmenu = "8" Then %>class="on"<% End if %> ><a class="mli_link" href="javascript:;" title="��������">��������</a>
						<ul>
							<li><a href="/c/gongssel/examinfo/index.asp#mContainer" title="������ ��������">������ ��������</a></li>
						</ul>
					</li>
					<%end if %>
				</ul>
				<!-- // ����-->

				<a href="javascript:;" class="menu_x" title="��ü�޴� �ݱ�">
					<span><img src="<%=img_main%>/c/gongssel/main/menu_x.png" alt="��ü�޴� �ݱ�"></span>
				</a>

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
										</dl>
									</li>
								</ul>
							</li>
							<li><a href="/c/gongssel/intro/intro6.asp" title="�п��Ұ�">�п��Ұ�</a></li>

							<!-- <li><a href="/c/gongssel/schedule/2021/overall/overall_03_all_9.asp" title="9�� �ð�ǥ">9�� �ð�ǥ</a></li> -->
							<!-- <li><a href="/c/gongssel/schedule/2021/overall/overall_03_all_7.asp?grd_code=7" title="7�� �ð�ǥ">7�� �ð�ǥ</a></li> -->
							<li><a href="/c/gongssel/schedule/2021/overall/overall_05_all_9.asp" title="9�� �ð�ǥ">9�� �ð�ǥ</a></li>							
							<li><a href="/c/gongssel/schedule/2021/overall/overall_05_all_7.asp" title="7�� �ð�ǥ">7�� �ð�ǥ</a></li>

							<%If cdate(lo_now_date) < cdate("2021-04-01") then%>  
							<li><a href="/c/gongssel/schedule/2021/army/overall_gather_3.asp" title="������ �ð�ǥ">������ �ð�ǥ</a></li>
							<% else %>
							<li><a href="/c/gongssel/schedule/2021/low/low01.asp" title="������ �ð�ǥ">������ �ð�ǥ</a></li>
							<% end if %>
		                    <li><a href="/c/gongssel/self/index.asp" title="�����̾� ������ �ڽ���">�����̾� ������ �ڽ���</a></li>
							
							<li class="more">
								<a href="javascript:;" title="������ Ŀ��ŧ��">������ Ŀ��ŧ��</a>
								<ul class="nextlst subj_list gongssel">
									<li><a href="/c/gongssel/teacher/index.asp?sub_code=all&tec_code=0#teacher_info_id" title="��ü">��ü</a></li>
									<li><a href="/c/gongssel/teacher/index.asp?sub_code=0&tec_code=0#teacher_info_id" title="����">����<% If cdate(lo_now_date) < cdate("2020-11-19") Then %><img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block" /><% End if %></a></li>
									<li><a href="/c/gongssel/teacher/index.asp?sub_code=1&tec_code=0#teacher_info_id" title="����">����<% If CDate(lo_now_date) < CDate("2020-10-06") Then %><img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"><%End if%></a></li>
									<li><a href="/c/gongssel/teacher/index.asp?sub_code=2&tec_code=0#teacher_info_id" title="�ѱ���">�ѱ���</a></li>
									<li><a href="/c/gongssel/teacher/index.asp?sub_code=3&tec_code=0#teacher_info_id" title="������">������</a></li>
									<li><a href="/c/gongssel/teacher/index.asp?sub_code=4&tec_code=0#teacher_info_id" title="������">������</a></li>
									<li><a href="/c/gongssel/teacher/index.asp?sub_code=5&tec_code=0#teacher_info_id" title="���ð���">���ð���</a></li>
									<li><a href="/c/gongssel/assessmnt/eval.asp" title="������">������</a></li>
								</ul>
							</li>

							<li><a href="/c/gongssel/examinfo/index.asp" title="�հ����� LAB">�հ����� LAB</a></li>
							<% if 1=2 then%>
							<li><a href="/c/gongssel/examinfo/index.asp" title="��������">��������</a></li>
							<%end if %>
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
				<li class="glb_key2"><a href="/c/gongssel/schedule/2021/overall/overall_05_all_9.asp" title="���غ� �ð�ǥ"><span>���غ� �ð�ǥ</span></a></li>
				<li class="glb_key3"><a href="/c/gongssel/help/notice/list.asp" title="��������"><span>��������</span></a></li>
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




	<!--  ���� ��ü�޴� ȣ�� -->
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
