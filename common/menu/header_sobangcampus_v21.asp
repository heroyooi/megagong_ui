<%
'BOS_BID �� ���� (gongcam_news -> news_and_strategy) �� �Խ��� ������ ���� �߰� (2021.07.27)
gongcam_news_new = false
strSql = ""
strSql = strSql & " SELECT TOP 1 CONVERT(VARCHAR(10), BOS_WRITE_DATE, 102) FROM MS_BRD_ON_SL with (nolock) WHERE BOS_BID='news_and_strategy' AND BOS_SITE_SHOW IN ('all', '3') AND BOS_EXTRA2 = '0' ORDER BY BOS_WRITE_DATE DESC "
Set objrs = dbexec(strsql, "study")
If Not (objrs.eof And objrs.bof) Then 
    bos_write_date = objrs(0)
    If DATEDIFF("D",(Replace(bos_write_date,".","-")),DATE) <= 7 Then
        gongcam_news_new = true
    End If	
End If 
Call dbclose(objrs)
%>

<div id="header_wrap" class="hd_wrp">
		<!-- ��� 1���ϰ�� "alone" -> gnb �������� ���� -->
		<div class="hd_left_bnr n1014 alone">
			<div>
				<div class="hd_slider">

				
					
					<div>
						<a href="/help/notice/view.asp?idx=3521" title="��ġ�� �ȵǴ� �п� �ǰ� �߰� ����">
							<img src="<%=img_main%>/m/2021/0331_premium/main_sky_ban_0331.png" class="" style="cursor:pointer;" alt="��ġ�� �ȵǴ� �п� �ǰ� �߰� ����">
						</a>
					</div>
					
				</div>
			</div>
		</div>
		<style>
			#headertop .hd_wrp .hd_left_bnr{display:block;margin-top: -58px;width:250px;height: auto;}
			#headertop .hd_wrp .hd_left_bnr.n1014 {margin-left: -519px;width:200px;top:0;margin-top: 20px;}
			/* ��� 1���ϰ�� "alone" -> gnb �������� ���� */
			#headertop .hd_wrp .hd_left_bnr.n1014.alone{margin-left: -520px;}
			#headertop .hd_wrp .hd_left_bnr.n1014 .hd_slider .slick-arrow {position:absolute;top:50%;z-index:1;transform:translateY(-50%);display:block!important;font-size:0;}
			#headertop .hd_wrp .hd_left_bnr.n1014 .hd_slider .slick-prev {left:-21px;width:7px;height:10px;background:url(<%=img_main%>/m/2021/0105_planner/icon_L.png) no-repeat center;}
			#headertop .hd_wrp .hd_left_bnr.n1014 .hd_slider .slick-next {right:-15px;width:7px;height:10px;background:url(<%=img_main%>/m/2021/0105_planner/icon_R.png) no-repeat center;}
			
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
	
		<h1 class="hd_logo center">
			<a href="<%=h_lnk %>" class="sobang_ac <% If CDate(lo_now_date) < CDate("2019-11-10") Then%>logoproject_sobang_pc<% End If %>" title="�����ҹ��п� ���������� �ٷΰ���"><img src="<%=img_main%>/s/sobangcampus/logo.png" alt="�ް��ҹ��п�"></a>
		</h1>

		<!-- hd_right_bnr / S -->
		<%If cdate(lo_now_date) >= cdate("2021-08-17") then%>
		<%If cdate(lo_now_date) < cdate("2022-10-31") then%>
		<div class="hd_right_bnr n1014">
			<div>
				<div class="hd_slider">
					<div>
						<a href="javascript:mv_pop();">
							<img src="<%=img_main%>/m/2021/0730_sb/header_ban_sobang.jpg" class="" alt="�հݿ� ���� ���� All-care �ް��ҹ��п�">
						</a>
					</div>
				</div>
			</div>
		</div>
		<% end if %>

		<%If cdate(lo_now_date) >= cdate("2022-10-31") then%>
		<div class="hd_right_bnr n1014 d1101">
			<div>
				<div class="hd_slider">
					<div>
						<a href="/c/sobang/consult/index.asp">
							<img src="<%=img_main%>/m/2022/1101_sobang/1101_bnr.png" class="" alt="����û 02-6964-8119 �湮��� ����">
						</a>
					</div>
				</div>
			</div>
		</div>
		<% end if %>

		
		<!--�������˾�-->
		<div class="dimMv">
			<video id="movie" playsinline controls><!-- autoplay  -->
				<source src="<%=img_main%>/m/2021/0730_sb/video.mp4" type="video/mp4">
			</video>
			<button onClick="mv_pop_close();">�ݱ�</button>
			<div class="bg" onClick="mv_pop_close();"></div>
		</div>
		<!--//�������˾�-->

		<style>
			#headertop .hd_wrp .hd_right_bnr{display:block;top:0;margin-top: 30px;width:250px}
			#headertop .hd_wrp .hd_right_bnr.slide > div{padding: 0;}
			#headertop .hd_wrp .hd_right_bnr.n1014 {margin-left: -519px;}
			#headertop .hd_wrp .hd_right_bnr.n1014.d1101 {margin-top: 23px;}
			#headertop .hd_wrp .hd_right_bnr.n1014 .hd_slider .slick-arrow {position:absolute;top:50%;z-index:1;transform:translateY(-50%);display:block!important;font-size:0;}
			#headertop .hd_wrp .hd_right_bnr.n1014 .hd_slider .slick-prev {left:-21px;width:7px;height:10px;background:url(<%=img_main%>/m/2021/0105_planner/icon_L.png) no-repeat center;}
			#headertop .hd_wrp .hd_right_bnr.n1014 .hd_slider .slick-next {right:-21px;width:7px;height:10px;background:url(<%=img_main%>/m/2021/0105_planner/icon_R.png) no-repeat center;}
			#headertop .hd_wrp .hd_right_bnr .hd_slider {text-align: right;}
			#headertop .hd_wrp .hd_right_bnr .hd_slider img{display: inline-block;}
			@media (max-width: 1200px){
				#headertop .hd_wrp .hd_right_bnr{display: none;}
			}

			/*�������˾�*/
			.dimMv { display:none; position:fixed; top:0; left:0; width:100%; height:100%; z-index:3; }
			.dimMv video { width:800px; position:absolute; top:50%; left:50%; transform:translate(-50%, -50%); z-index:5; }
			.dimMv button { cursor:pointer; display:inline-block; position:absolute; top:50%; left:50%; transform:translate(365px, -260px); z-index:5; font-size:12px; padding:5px; border:1px solid #bfbfbf; color:#bfbfbf; }
			.dimMv .bg { cursor:pointer; position:fixed; top:0; left:0; width:100%; height:100%; background:rgba(0,0,0,.5); }

			@media (max-width:1200px) {
				.dimMv { display:none !important; }
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

			//video popup 
			function mv_pop(){
				$(".dimMv").show();
				$(".dimMv #movie").get(0).play();
				$(window).on('resize onload', function () {
					if($(window).width() < 1200) {
						$(".dimMv #movie").get(0).pause();
					} else {
						$(".dimMv #movie").get(0).play();

					}
				});
			}
			function mv_pop_close(){
				$(".dimMv #movie").get(0).pause();

				setTimeout(function(){
					$(".dimMv").hide();
				}, 300)
			}
		</script>
		<%end if%>
		<!-- hd_right_bnr / E -->

		<div id="header_utility" class="hd_utility sobangcampus">
			<h2 class="blindw">�ް��ҹ��п� GNB �޴�</h2>
			<nav role="navigation">
				<!-- �ҹ��п� -->
				<%If cdate(lo_now_date) < cdate("2022-07-18") then%>
				<i style='position:absolute; top:-30px; left:120px; z-index:2;' class="toggle_img">
					<img src="<%=img_main%>/m/2022/0429_sbcampus/gnb_bubble1.png" alt="7�� ���۹� ������!">
					<img src="<%=img_main%>/m/2022/0429_sbcampus/gnb_bubble2.png" alt="7�� ���۹� ������!">
				</i>
				<% else %>
				<i style='position:absolute; top:-30px; left:120px; z-index:2;'>
					<%If cdate(lo_now_date) < cdate("2022-09-19") then%>
					<img src="<%=img_main%>/m/2022/0718_sobang/bubble_top.gif" alt="">
					<% else %>
					<img src="<%=img_main%>/m/2022/0919_sbc/bubble_top.gif" alt="11�� ���۹� ������!">
					<% end if %>
				</i>
				<% end if %>
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

				<% if cdate(lo_now_date) >= cdate("2022-07-07") then %>
				<i style='position:absolute; right: 70px; top: 8.45px; z-index:2; cursor: pointer;' class="toggle_img" onclick="pop_show()">
					<img src="<%=img_main%>/m/2022/0706_sbcps/gnb_bubble1.png" alt="ù �湮�� Click">
					<img src="<%=img_main%>/m/2022/0706_sbcps/gnb_bubble2.png" alt="ù �湮�� Click">
				</i>
				<% end if %> 
				

				<ul class="mnu_list gongssel sobangcampus new v21">
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
							<li class="dep2_pre">
								<a href="/c/sobang/academy/burning.asp#eventWrap" >������ ���չ� CLASS</a>
							</li>
							<li class="dep2">
								<a href="/c/sobang/academy/burning.asp#eventWrap">
                            		<% if cdate(lo_now_date) < cdate("2022-09-19") then %>
									��<span style="display: inline-block;vertical-align: top;">BURNING CLASS 2.0<img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"></span>
									<% else %>
									��<span style="display: inline-block;vertical-align: top;letter-spacing:-.12em;margin-left:-3px">BURNING CLASS (�������)<img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"></span>
									<% end if %>
								</a>
							</li>

                            <% if cdate(lo_now_date) < cdate("2022-09-19") then %>
							<li class="dep2">
								<a href="/c/sobang/event/2022/05160007/index.asp" >
									��<span style="display: inline-block;vertical-align: top;">�����̾� ���� CLASS<img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block">
								</a>
							</li>
							<li class="dep2">
								<a href="/c/sobang/event/2022/03080003/index.asp#eventWrap">
									<%If cdate(lo_now_date) < cdate("2022-07-18") then%>
									��<span style="display: inline-block;vertical-align: top;">�⺻�̷����չ�(7~8��)<img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"></span>
									<% else %>
									��<span style="display: inline-block;vertical-align: top;">�⺻�̷����չ�(9~10��)<img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"></span>
									<% end if %>
								</a>
							</li>
							<% else %>
							<li class="dep2">
								<a href="/c/sobang/event/2022/03080003/index.asp#eventWrap">
									��<span style="display: inline-block;vertical-align: top;letter-spacing:-.12em;margin-left:-3px">�⺻�̷����չ�(11~12��)<img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"></span>
								</a>
							</li>
							
							<li class="dep2">
								<a href="/c/sobang/event/2022/05160007/index.asp" >
									��<span style="display: inline-block;vertical-align: top;letter-spacing:-.12em;margin-left:-3px">�����̾� ���� CLASS<img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block">
								</a>
							</li>
							<% end if %>

                            <% if cdate(lo_now_date) >= cdate("2022-09-19") then %>
							<li class="dep2_pre"><a href="javascript:void(0);" >��ä �ʽû� ���� (NEW)</a></li>
							<li class="dep2">
								<a href="/c/sobang/event/2022/09190014/index.asp#eventWrap" >
									��<span style="display: inline-block;vertical-align: top;letter-spacing:-.15em;margin-left:-3px">5���� ��ä �ܵ���(�̷н���)<img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"></span>
								</a>
							</li>
							<% end if %>


							
							<%If cdate(lo_now_date) < cdate("2022-09-11") then %>
							<li class="dep2_pre"><a href="javascript:void(0);" >�絵�� ����� ����</a></li>
							<li class="dep2">
								<a href="/c/sobang/event/2022/04250006/index.asp#eventWrap" >
									��<span style="display: inline-block;vertical-align: top;">��ç���� ����3<img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"></span>
								</a>
							</li>
							<%End if%>
						</ul>
					</li>

					<%If cdate(lo_now_date) < cdate("2022-05-23") then%>
					<li <% if gmenu = "3" Then %>class="on"<% End if %>><a class="mli_link" href="javascript:;" title="���� �ð�ǥ">���� �ð�ǥ</a>
						<ul>
							<li class="dep2"><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=&cls=" title="5-6�� �⺻�̷а���" style='letter-spacing:-2.5px;'>��5-6�� �⺻�̷а��� <img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></li>
							<li class="dep2_pre"><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=4" title="Ư��">Ư��</a></li>
							<li class="dep2"><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=4" title="���� �ֿ�Ư��">������ �ֿ�Ư�� <img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></li>
						</ul>
					</li>
					<%else%>
					<li <% if gmenu = "3" Then %>class="on"<% End if %>><a class="mli_link" href="javascript:;" title="�ܰ�&�ð�ǥ">�ܰ�&�ð�ǥ</a>
						<ul>
							<li class="dep2_pre"><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=&cls=" >�ܰ�����</a></li>
							<%If cdate(lo_now_date) >= cdate("2022-10-14") then%>
							<li class="dep2"><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=&cls=304" title="11-12�� ����м�����" style='letter-spacing:-2.5px;'>��11-12�� ����м����� <%Call SetNewIcon("2022-10-14")%></a></li>
							<li class="dep2"><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=&cls=302" title="11-12�� �⺻�̷а���" style='letter-spacing:-2.5px;'>��11-12�� �⺻�̷а��� <%Call SetNewIcon("2022-10-14")%></a></li>
							<% end if %>
							<%If cdate(lo_now_date) >= cdate("2022-07-27") and cdate(lo_now_date) < cdate("2022-10-14") then%>
							<li class="dep2"><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=&cls=304" title="9-10�� ����м�����" style='letter-spacing:-2.5px;'>��9-10�� ����м����� <%Call SetNewIcon("2022-07-27")%></a></li>
							<li class="dep2"><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=&cls=302" title="9-10�� �⺻�̷а���" style='letter-spacing:-2.5px;'>��9-10�� �⺻�̷а��� <%Call SetNewIcon("2022-07-27")%></a></li>
							<% elseif cdate(lo_now_date) < cdate("2022-07-27") then %>
							<li class="dep2"><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=&cls=" title="7-8�� �⺻�̷а���" style='letter-spacing:-2.5px;'>��7-8�� �⺻�̷а��� <%Call SetNewIcon("2022-07-02")%></a></li>
							<% end if %>
							<%'If cdate(lo_now_date) < cdate("2023-01-01") then%>
                            <% if cdate(lo_now_date) < cdate("2022-09-19") then %>
							<li class="dep2"><a href="/c/sobang/event/2022/05230008/index.asp#eventWrap" title="����Ʈ ���� T-PASS" style='letter-spacing:-2.5px;'>������Ʈ ���� T-PASS <img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></li>
							<%end if%>
							<li class="dep2_pre"><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=3" title="Ư��">Ư��</a></li>
							<li class="dep2"><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=3" title="���� �ֿ�Ư��">������ �ֿ�Ư�� <img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></li>
						</ul>
					</li>
					<%end if%>
					
					
					<li <% if gmenu = "6" Then %>class="on"<% End if %>><a class="mli_link" href="javascript:;" title="�ҹ� ������">�ҹ漱����</a>
						<ul>
							<li><a href="/c/sobang/intro/intro4.asp?sub_code=0&tec_code=0#teacher_info_id" title="�ҹ���/�������">�ҹ���/�������</a></li>
							<li><a href="/c/sobang/intro/intro4.asp?sub_code=1&tec_code=0#teacher_info_id" title="�ҹ�������">�ҹ�������</a></li>
							<li><a href="/c/sobang/intro/intro4.asp?sub_code=2&tec_code=0#teacher_info_id" title="����óġ�а���">����óġ�а���</a></li>
							<li><a href="/c/sobang/intro/intro4.asp?sub_code=3&tec_code=0#teacher_info_id" title="������&������">������&������</a></li>
						</ul>
					</li>
					
					<li <% if gmenu = "4" Then %>class="on"<% End if %>><a class="mli_link" href="javascript:;" title="1:1 ������">1:1 ������</a>
						<ul>
							<% if cdate(lo_now_date) >= cdate("2022-07-07") then %>
							<li><a href="/c/sobang/review/list.asp" title="�п� �湮���">�п� �����ı�</a></li>
							<% end if %>
							<li><a href="/c/sobang/consult/index.asp" title="�п� �湮���">�п� �湮���</a></li>
							<li><a href="javascript:;" class="consults_sb" title="�п� ��ȭ���">�п� ��ȭ���</a></li>
							<li><a href="/help/notice/view.asp?idx=2165" title="�ǽð� īī���� ���">�ǽð� īī���� ���</a></li>
							<li><a href="/c/sobang/qna/list.asp" title="1:1 ��㹮��">1:1 ��㹮��</a></li>
						</ul>
					</li>

					
					<li <% if gmenu = "2" Then %>class="on"<% End if %>><a class="mli_link" href="javascript:;" title="�հ����� LAB">�հ����� LAB</a>
						<ul>
							<li class="dep2_pre"><a href="/c/sobang/examinfo/index.asp" title="�հ�����">�հ�����</a></li>
							<li class="dep2"><a href="/c/sobang/examinfo/guide.asp" title="�հݰ��̵�">���հݰ��̵�<img src="<%=img_main%>/common/ic_new.gif" alt="New" style="vertical-align:middle;margin:-3px 0 0 3px;" /></a></li>
							<li class="dep2"><a href="/c/sobang/examinfo/schedule.asp" title="2022�� ���� ����">��2022�� ���� ����</a></li>
							<li class="dep2"><a href="/c/sobang/examinfo/pass.asp" title="����� �� �հݼ�">������� �� �հݼ�<img src="<%=img_main%>/common/ic_new.gif" alt="New" style="vertical-align:middle;margin:-3px 0 0 3px;" /></a></li>
							<li class="dep2"><a href="/c/sobang/examinfo/series.asp" title="ä��оߺ� ���� ����">��ä��оߺ� ���� ����<img src="<%=img_main%>/common/ic_new.gif" alt="New" style="vertical-align:middle;margin:-3px 0 0 3px;" /></a></li>
						
							<li class="dep2_pre"><a href="/c/sobang/examinfo/passstrategy/list.asp" title="������������">������������</a></li>
							<li class="dep2"><a href="/c/sobang/examinfo/news/list.asp" title="����&�հ�����">������&�հ�����<%If gongcam_news_new then%><img src="<%=img_main%>/common/ic_new.gif" alt="New" style="vertical-align:middle;margin:-3px 0 0 3px;" /><%End if%></a></li>
							<li class="dep2"><a href="/c/sobang/examinfo/strategy/list.asp" title="���� �н�����">������ �н�����</a></li>
							
							<li class="dep2_pre"><a href="/c/sobang/examinfo/library/list.asp" title="���⹮��&�ؼ�����">���⹮��&�ؼ�����</a></li>
							<li class="dep2"><a href="/c/sobang/examinfo/library/list.asp" title="���⹮�� �ڷ��">�����⹮�� �ڷ��</a></li>
							<li class="dep2"><a href="/c/sobang/examinfo/guide/exam.asp" title="�ؼ�����&����">���ؼ�����&���� <%If cdate(lo_now_date) >= cdate("2021-04-08") then%><img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"><%end if%></a></li>
							<li class="dep2"><a href="/c/sobang/examinfo/analysis/index.asp#eventWrap" title="���� ���� �м�">������ ���� �м� <%If cdate(lo_now_date) < cdate("2022-05-02") then%><img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"><%end if%></a></li>
						</ul>
					</li>
				
					<li class="all_menu"><strong class="mli_link"><span>-</span><span>-</span><span>-</span></strong></li>
				</ul>
				<!-- // �ҹ��п� -->


				<!-- <a href="javascript:;" class="menu_x" title="��ü�޴� �ݱ�">
					<span><img src="<%=img_main%>/c/gongssel/main/menu_x.png" alt="��ü�޴� �ݱ�"></span>
				</a> -->
			</nav>

			<div class="gnb_bgArea"><div class="bgArea sobangcampus" style="display: none;"></div></div>
		</div> <!-- //hd_utility -->

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

				/* --- �ҹ��п� ��ü�޴� Ŭ�� �̺�Ʈ --- */
				var policeAllmenu = $('#headertop .hd_utility .mnu_list.sobangcampus > li > ul');
				$(".all_menu").click(function (e) {
					e.preventDefault();
					if(policeAllmenu.css("display") == "none"){
						policeAllmenu.slideDown(150);
						$('.gnb_bgArea .bgArea').slideDown(150);
					}else{
						policeAllmenu.slideUp(150);
						$('.gnb_bgArea .bgArea').slideUp(150);
					}
				});

			</script>
		</div>
		<!-- // �޴� ��� ȭ�� -->

		<!-- hd_mo_utility / S -->
		<div id="hd_MoUtility" class="hd_mo_utility sobangcampus">
			<div class="mo_gnb">
				<nav>
					<div class="slider">
						<div class="item"><a href="/c/sobang/intro/intro1.asp" <% if gmenu = "1" Then %>class="on"<% End if %> title="�п��Ұ�">�п��Ұ�</a></div>
						<div class="item"><a href="/c/sobang/academy/burning.asp" <% if gmenu = "5" Then %>class="on"<% End if %> title="���չ�">���չ�</a></div>
						<div class="item"><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=&cls=304" <% if gmenu = "3" Then %>class="on"<% End if %> title="���� �ð�ǥ">���� �ð�ǥ</a></div>
						<div class="item"><a href="/c/sobang/intro/intro4.asp?sub_code=0&tec_code=0#teacher_info_id" <% if gmenu = "6" Then %>class="on"<% End if %> title="�ҹ漱����">�ҹ漱����</a></div>
						<div class="item"><a href="/c/sobang/consult/index.asp" <% if gmenu = "4" Then %>class="on"<% End if %> title="1:1 ������">1:1 ������</a></div>
						<div class="item"><a href="/c/sobang/examinfo/index.asp" <% if gmenu = "2" Then %>class="on"<% End if %> title="��������">��������</a></div>
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
					slidesToShow: 6,
					slidesToScroll: 6,
					variableWidth: false,
				}
				}, {
					breakpoint: 992,
					settings: {
						slidesToShow: 3,
						slidesToScroll: 3,
						variableWidth: true,
					}
				}]
			});
			
			$(window).on('load resize', function() {
				$('#hd_MoUtility .mo_gnb .slider').slick('refresh');	
			});
			<%if gmenu = "6" or gmenu = "4" or gmenu = "2"  then %>
			$('#hd_MoUtility .mo_gnb .slider').slick('slickGoTo', 3);
			<%else%>
			//$('#hd_MoUtility .mo_gnb .slider').slick('slickGoTo', 0);
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
											<dd><a href="https://www.megajob.co.kr/megajob.asp " title="�ް������">�ް������ <img src="<%=img_main%>/common/ic_new.gif" alt="New" style="vertical-align:middle;margin:-3px 0 0 3px;" /></a></dd>
										</dl>
									</li>
								</ul>
							</li>
							<li><a href="/c/sobang/intro/intro1.asp" title="�п��Ұ�">�п��Ұ�</a></li>


						
							<li class="more">
								<a href="javascript:;" title="���չ�">���չ�</a>

								<ul class="nextlst subj_list sobangcampus">
										<%If cdate(lo_now_date) < cdate("2022-09-19") then%>
											<li>
												<a href="/c/sobang/academy/burning.asp#eventWrap"><b>BURNING CLASS 2.0</b><img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"></a>
											</li>
											<li>
												<a href="/c/sobang/event/2022/05160007/index.asp"><b>�����̾� ���� CLASS</b><img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"></a>
											</li>
											<%If cdate(lo_now_date) < cdate("2022-07-18") then%>
											<li>
												<a href="/c/sobang/event/2022/03080003/index.asp#eventWrap">
													<b>�⺻�̷����չ�(7~8��)</b>
													<img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block">
												</a>
											</li>
											<li>
												<a href="/c/sobang/event/2022/04250006/index.asp#eventWrap">
													<b>��-ç���� ����2</b><img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block">
												</a>
											</li>
											<% else %>
											<li>
												<a href="/c/sobang/event/2022/03080003/index.asp#eventWrap">
													<b>�⺻�̷����չ� (9~10��)</b>
													<img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block">
												</a>
											</li>
											<li>
												<a href="/c/sobang/event/2022/04250006/index.asp#eventWrap">
													<b>��-ç���� ����3</b><img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block">
												</a>
											</li>
											<% end if %>
										<% else %>
										<li><a href="/c/sobang/academy/burning.asp#eventWrap"><b>BURNING CLASS (�������)</b><img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></li>
										<li><a href="/c/sobang/event/2022/03080003/index.asp#eventWrap"><b>�⺻�̷����չ� (11~12��)</b><img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></li>
										<li><a href="/c/sobang/event/2022/05160007/index.asp"><b>�����̾� ���� CLASS</b><img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></li>
										<li><a href="/c/sobang/event/2022/09190014/index.asp#eventWrap"><b>5���� ��ä �ܵ���(�̷н���)</b><img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></li>										
										<% end if %>

								</ul>
							</li>
							<%If cdate(lo_now_date) < cdate("2022-05-23") then%>
							<li><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=&cls=" title="���� �ð�ǥ">���� �ð�ǥ</a></li>
							<%elseIf cdate(lo_now_date) < cdate("2022-07-05")  then%>
							<li><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=&cls=" title="�ܰ�&�ð�ǥ">�ܰ�&�ð�ǥ</a></li>
							<%elseIf cdate(lo_now_date) < cdate("2022-07-27")  then%>
							<li><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=&cls=" title="�ܰ�&�ð�ǥ">�ܰ�&�ð�ǥ</a></li>
							<%else%>
							<li><a href="/c/sobang/academy/schedule.asp?mcode=1&tno=&cls=304" title="�ܰ�&�ð�ǥ">�ܰ�&�ð�ǥ</a></li>
							<%end if%>

							<li class="more">
								<a href="javascript:;" title="�ҹ漱����">�ҹ漱����</a>
							
								<ul class="nextlst subj_list sobangcampus">
									<li><a href="/c/sobang/intro/intro4.asp?sub_code=0&tec_code=0#teacher_info_id" title="�ҹ���/�������">�ҹ���/�������</a></li>
									<li><a href="/c/sobang/intro/intro4.asp?sub_code=1&tec_code=0#teacher_info_id" title="�ҹ�������">�ҹ�������</a></li>
									<li><a href="/c/sobang/intro/intro4.asp?sub_code=2&tec_code=0#teacher_info_id" title="����óġ�а���">����óġ�а���</a></li>
									<li><a href="/c/sobang/intro/intro4.asp?sub_code=3&tec_code=0#teacher_info_id" title="������&������">������&������</a></li>
								</ul>
							
							</li>
							<li><a href="/c/sobang/consult/index.asp" title="1:1 ������">1:1 ������</a></li>

							
							<li><a href="/c/sobang/examinfo/index.asp" title="�հ����� LAB">�հ����� LAB</a></li>
							<% if 1=2 then%>
							<li><a href="/c/sobang/examinfo/index.asp" title="��������">��������</a></li>
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
	<div class="glbal_menu sobangcampus">
		<!-- ù �湮�� ��� -->
		
		<% if instr(1, NowUrl, "/megagong.asp" )> 0 Then %>

		<% if cdate(lo_now_date) >= cdate("2022-07-07") then %>
		<div class="m_quick_bnr">
			<i style='cursor: pointer;' class="toggle_img" onclick="pop_show()">
				<img src="<%=img_main%>/m/2022/0706_sbcps/gnb_bubble1_mo.png" alt="ù �湮�� Click">
				<img src="<%=img_main%>/m/2022/0706_sbcps/gnb_bubble2_mo.png" alt="ù �湮�� Click"> 
			</i>
			<a href="javascript:allClearPop();" class="close"><img src="<%=img_main%>/m/2022/0706_sbcps/gnb_bubble_mo_close.png" alt="�ݱ�"></a> 
		</div>
		<% end if %>
		<style>
			.m_quick_bnr {position:absolute; right: 20px; top: -111px; z-index:2;}
			.m_quick_bnr .close {position: absolute; top: 0; right: -8px;}

			@media (max-width:576px) {
				.m_quick_bnr{width: 80px; top: -85px;}
				.m_quick_bnr .close {right: -12px;}
			}
		</style>
		<script>
			function allClearPop () {
				pop_close();
				$('.m_quick_bnr').hide();
			}
		</script>
		
		<%end if%> 
		<!-- //ù �湮�� ��� -->


		<div class="gm_inner">
			<ul>
				<li class="all"><a href="javascript:;" title="��ü"><span>��ü</span></a></li>
				<li class="course"><a href="/c/sobang/academy/schedule.asp" title="������û"><span>������û</span></a></li>
				<li class="home"><a href="<%=h_lnk %>" title="Ȩ"><span>Ȩ</span></a></li>
				<li class="noti"><a href="/help/notice/list.asp" title="��������"><span>��������</span></a></li>
				<!-- <li class="top"><a href="javascript:glb_movetop();" title="������"><span>������</span></a></li> -->
				<li class="my"><a href="/mypage/index.asp" title="MY"><span>MY</span></a></li>
			</ul>
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

	<!-- ù �湮�� click �˾� -->
	<div class="first_visitor_guide" style="display: none;"> 
		<div class="bg" onclick="pop_close();"></div>
		<div class="pop_inner pc">
			<img src="<%=img_main%>/m/2022/0706_sbcps/main_bnr.png" alt="-">]
			<ul>
				<li><a href="/c/sobang/review/list.asp">�ް��ҹ��п� �����ı�</a></li>
				<li><a href="/c/sobang/event/2021/03030001/index.asp#eventWrap">���� 1:1 �н�������</a></li>
				<li><a href="/c/sobang/academy/burning.asp#eventWrap">BURNING CLASS 2.0</a></li>
				<li><a href="/help/notice/view.asp?idx=3521">������ �߰�����GUIDE</a></li>
			</ul>
			<a href="javascript:pop_close();" class="close"><img src="<%=img_main%>/m/2022/0706_sbcps/main_bnr_close.png" alt="�ݱ�"></a>
		</div>
		<div class="pop_inner mo">
			<img src="<%=img_main%>/m/2022/0706_sbcps/main_bnr_mo.png" alt="-">
			<a href="javascript:pop_close();" class="close"><img src="<%=img_main%>/m/2022/0706_sbcps/main_bnr_close.png" alt="�ݱ�"></a>
			<ul>
				<li><a href="/c/sobang/review/list.asp">�ް��ҹ��п� �����ı�</a></li>
				<li><a href="/c/sobang/event/2021/03030001/index.asp#eventWrap">���� 1:1 �н�������</a></li>
				<li><a href="/c/sobang/academy/burning.asp#eventWrap">BURNING CLASS 2.0</a></li>
				<li><a href="/help/notice/view.asp?idx=3521">������ �߰�����GUIDE</a></li>
			</ul>
		</div>
	</div>
	<style>
		.first_visitor_guide{position: fixed; top: 0; bottom: 0; left: 0; right: 0; z-index: 10;}
		.first_visitor_guide .bg{width: 100%; height: 100%;}
		.first_visitor_guide .pop_inner{position: absolute; z-index: 100;}
		.first_visitor_guide .pop_inner.pc{right: 50%; top: 0; transform: translate(472px, 199px); width: 280px;}
		.first_visitor_guide .pop_inner.mo{display: none;}
		.first_visitor_guide .pop_inner.pc ul{position: absolute;width: 86%;top: 94px;left: 50%;transform: translate(-50%, 0);}
		.first_visitor_guide .pop_inner.pc ul li a{font-size: 0;display: block;height: 77px;margin: 0 0 11px;}
		.first_visitor_guide .pop_inner.pc .close{position: absolute; top: 10px; right: 10px; z-index: 10;}

		@media (max-width:1200px) {
		 .first_visitor_guide .pop_inner.pc{display: none;}
		 .first_visitor_guide .pop_inner.mo{display: block; top: 50%; left: 50%; transform: translate(-50%, -50%); width: 80%; max-width: 444px;}
		 .first_visitor_guide .pop_inner.mo .close{position: absolute; top: 3.5%; right: 7%; z-index: 10;}
		 .first_visitor_guide .pop_inner.mo ul{position: absolute;width: 81%;top: 20%;left: 50%;transform: translate(-52%, 0);height: 100%;}
		 .first_visitor_guide .pop_inner.mo ul li {height: 17%;margin: 0 0 3%;}
		 .first_visitor_guide .pop_inner.mo ul li a{font-size: 0;display: block;height: 100%;}
		}
	
	</style>
	<script>
		function pop_close () {
			$('.first_visitor_guide').hide();
		}
		function pop_show () {
			$('.first_visitor_guide').show();
		}
		
	</script>
	<!-- //ù �湮�� click �˾� -->
	

		
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
					<span>�����Ⱓ<br>
						-  ȸ���� ȸ�� Ż�� �� ȸ���ڰ��� �����Ǵ� �Ⱓ ����<br>
						-  ��ȸ���� �����Ϸκ��� 1��
					</span>
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