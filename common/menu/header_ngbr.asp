    <div class="hd_wrp">

		<h1 class="hd_logo center">
			<a href="<%=h_lnk %>" title="�ް������� ���ĸ�Ÿ ���������� �ٷΰ���"><img src="<%=img_main%>/r/ngbr/common/logo.png" alt="�ް������� ���ĸ�Ÿ"></a>
		</h1>

		<div class="hd_left_bnr">
			<div>
				<div class="hd_slider">
					<%if cdate(lo_now_date) >= cdate("2022-06-30") then%>
					<div>
						<a href="/r/ngbr/event/2022/06300002/index.asp#eventWrap" title="�հݻ��� ��õ�ϴ� ���ĸ�Ÿ!, 2022 �̿��ı�">
							<img src="<%=img_main%>/m/2022/0630_ngbr/main_sky_ban.jpg" class="" style="cursor:pointer;" alt="�հݻ��� ��õ�ϴ� ���ĸ�Ÿ!, 2022 �̿��ı�">
						</a>
					</div>
					<%end if%>
				</div>
			</div>
		</div>
		<style>
			#headertop .hd_wrp .hd_left_bnr{display:block;height: auto;top:0; margin-top:30px;width:248px;height: auto;margin-left:-518px}
			#headertop .hd_wrp .hd_left_bnr >div{ padding: 0; }
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

		<!-- hd_right_bnr / S -->
		<div class="hd_right_bnr">
			<div>
				<div class="hd_slider">
					<% if cdate(lo_now_date) >= cdate("2022-11-19") then %>
					<div><a href="/r/ngbr/branch/deajeon-dunsan/index.asp"><img src="<%=img_main%>/m/2022/1013_ngbr/main_sky_deajeon.png" class="" style="cursor:pointer;" alt="����(�л�)����, �ű� ����"></a></div>
					<% end if %>
					<div><a href="/r/ngbr/branch/changwon/index.asp"><img src="<%=img_main%>/m/2022/0708_ngbr/main_sky_ban1.jpg" class="" style="cursor:pointer;" alt="â��(����ȣ��)����, �ű� ����"></a></div>
					<div><a href="/r/ngbr/branch/daegu-banwoldang/index.asp"><img src="<%=img_main%>/m/2022/0812_ngbr/main_sky_ban1.png" class="" style="cursor:pointer;" alt="�뱸(�ݿ���)����, �ű� ����"></a></div>
					<div><a href="/r/ngbr/branch/daegu-siji/index.asp"><img src="<%=img_main%>/m/2022/0812_ngbr/main_sky_ban2.png" class="" style="cursor:pointer;" alt="�뱸(����)����, �ű� ����"></a></div>
					<div><a href="/r/ngbr/branch/wonju-gaeun/index.asp"><img src="<%=img_main%>/m/2022/0812_ngbr/main_sky_ban3.png" class="" style="cursor:pointer;" alt="����(����)����, �ű� ����"></a></div>
					<div><a href="/r/ngbr/branch/jinhae-jangcheon/index.asp"><img src="<%=img_main%>/m/2022/0812_ngbr/main_sky_ban4.png" class="" style="cursor:pointer;" alt="����(��õ)����, �ű� ����"></a></div>
					<div><a href="/r/ngbr/branch/chuncheon/index.asp"><img src="<%=img_main%>/m/2022/0812_ngbr/main_sky_ban5.png" class="" style="cursor:pointer;" alt="��õ(����)����, �ű� ����"></a></div>
					<% if cdate(lo_now_date) >= cdate("2022-09-15") and cdate(lo_now_date) < cdate("2022-09-22") then %>
					<div><a href="/r/ngbr/branch/deajeon/index.asp"><img src="<%=img_main%>/m/2022/0915_ngbr/main_sky_deajeon.png" class="" style="cursor:pointer;" alt="����(�߾ӷ�)����, �ű� ����"></a></div>
					<div><a href="/r/ngbr/branch/cheongju/index.asp"><img src="<%=img_main%>/m/2022/0915_ngbr/main_sky_cheongju.png" class="" style="cursor:pointer;" alt="û��(������Ƽ)����, �ű� ����"></a></div>
					<% end if %>
					<% if cdate(lo_now_date) >= cdate("2022-09-22") then %>
					<div><a href="/r/ngbr/branch/deajeon/index.asp"><img src="<%=img_main%>/m/2022/0915_ngbr/main_sky_deajeon.png" class="" style="cursor:pointer;" alt="����(�߾ӷ�)����, �ű� ����"></a></div>
					<div><a href="javascript:alert('�غ����Դϴ�.');"><img src="<%=img_main%>/m/2022/0915_ngbr/main_sky_cheongju.png" class="" style="cursor:pointer;" alt="û��(������Ƽ)����, �ű� ����"></a></div>
					<% end if %>
					<% if cdate(lo_now_date) >= cdate("2022-10-27") then %>
					<div><a href="/r/ngbr/branch/masan/index.asp"><img src="<%=img_main%>/m/2022/1027_ngbr/main_sky_masan.png" class="" style="cursor:pointer;" alt="���꼾��, �ű� ����"></a></div>
					<% end if %>
				</div>
			</div>
		</div>
		<style>
			#headertop .hd_wrp .hd_right_bnr{display:block;top:0;margin-top: 34px;width: 250px;}
			#headertop .hd_wrp .hd_right_bnr.slide > div{padding: 0;}
			#headertop .hd_wrp .hd_right_bnr {margin-right: -524px;}

			#headertop .hd_wrp .hd_right_bnr .hd_slider .slick-arrow {position:absolute;top:50%;z-index:1;transform:translateY(-50%);display:block!important;font-size:0;}
			#headertop .hd_wrp .hd_right_bnr .hd_slider .slick-prev {left:-21px;width:7px;height:10px;background:url(<%=img_main%>/m/2021/0105_planner/icon_L.png) no-repeat center;}
			#headertop .hd_wrp .hd_right_bnr .hd_slider .slick-next {right:-15px;width:7px;height:10px;background:url(<%=img_main%>/m/2021/0105_planner/icon_R.png) no-repeat center;}

			@media (max-width: 1200px){
				#headertop .hd_wrp .hd_right_bnr{display: none;}
			}
		</style>
		<script type="text/javascript">
			/* --- hd_slider �����̴�--- */
			//var hd_right_s = $('.hd_right_bnr .hd_slider div').length;
			//if (hd_right_s > 1) {
				$('.hd_right_bnr .hd_slider').slick({
					slidesToShow: 1,
					slidesToScroll: 1,
					infinite: true,
					dots: false,
					arrow: true,
					speed: 0,
					autoplaySpeed: 2000,
					autoplay: true,
				});
			//}
			/* --- // hd_slider �����̴�--- */
		</script>
		<!-- hd_right_bnr / E -->

		<a href="javascript:;" class="mobile_navbtn" title="����ϸ޴� ����">
	      <span>-</span>
	      <span>-</span>
	      <span>-</span>
	   </a>

	   <style>
		   /* �ް������� ���ĸ�Ÿ - ���θ޴� */
			#headertop .hd_utility.ngbr .mnu_list.ngbr > li {position:relative;padding:0;text-align:center;}
			/* �޴� 6���϶�
			#headertop .hd_utility.ngbr .mnu_list.ngbr > li:nth-child(1) {width:202px;}
			#headertop .hd_utility.ngbr .mnu_list.ngbr > li:nth-child(2) {width:145px;}
			#headertop .hd_utility.ngbr .mnu_list.ngbr > li:nth-child(3) {width:152px;}
			#headertop .hd_utility.ngbr .mnu_list.ngbr > li:nth-child(4) {width:109px;}
			#headertop .hd_utility.ngbr .mnu_list.ngbr > li:nth-child(5) {width:155px;}
			#headertop .hd_utility.ngbr .mnu_list.ngbr > li:nth-child(6) {width:142px;}
			#headertop .hd_utility.ngbr .mnu_list.ngbr > li:nth-child(7) {width:175px;} */
			/* �޴� 5���϶� */
			#headertop .hd_utility.ngbr .mnu_list.ngbr > li:nth-child(1) {width:200px;}
			#headertop .hd_utility.ngbr .mnu_list.ngbr > li:nth-child(2) {width:204px;}
			#headertop .hd_utility.ngbr .mnu_list.ngbr > li:nth-child(3) {width:139px;}
			#headertop .hd_utility.ngbr .mnu_list.ngbr > li:nth-child(4) {width:186px;}
			#headertop .hd_utility.ngbr .mnu_list.ngbr > li:nth-child(5) {width:136px;}
			#headertop .hd_utility.ngbr .mnu_list.ngbr > li:nth-child(6) {width:215px;}
			
			<% If Cdate(lo_now_date) >= Cdate("2022-05-09") then %>
			#headertop .hd_utility.ngbr .mnu_list.ngbr > li {position:relative;padding:0;text-align:center;}
			#headertop .hd_utility.ngbr .mnu_list.ngbr > li:nth-child(1) {width: 185px;}
			#headertop .hd_utility.ngbr .mnu_list.ngbr > li:nth-child(2) {width: 184px;}
			#headertop .hd_utility.ngbr .mnu_list.ngbr > li:nth-child(3) {width: 130px;}
			#headertop .hd_utility.ngbr .mnu_list.ngbr > li:nth-child(4) {width: 130px;}
			#headertop .hd_utility.ngbr .mnu_list.ngbr > li:nth-child(5) {width: 130px;}
			#headertop .hd_utility.ngbr .mnu_list.ngbr > li:nth-child(6) {width: 175px;}
			#headertop .hd_utility.ngbr .mnu_list.ngbr > li:nth-child(7) {width:215px;}
			<% end if %>

			#headertop .hd_utility.ngbr .mnu_list.ngbr > li > a {position:relative;}
			#headertop .hd_utility.ngbr .mnu_list.ngbr > li > a.ico:before {content:'';position:absolute;top:0;bottom:0;left:138px;margin:auto 0;width:9px;height:5px;background:url('<%=img_main%>/r/ngbr/common/menu_arrow.png') no-repeat center;}

			#headertop .hd_utility.ngbr .mnu_list.ngbr li a + ul.depth2 {display:none;}
			#headertop .hd_utility.ngbr .mnu_list.ngbr li a.on + ul.depth2 {display:block;}
			#headertop .hd_utility.ngbr .mnu_list.ngbr li .depth2 {position: absolute;top: 45px;right: 13px;width: 142px;padding:11px 16px;background: #fff;z-index: 2;border: 1px solid #dddddd;border-top:0;text-align: left;box-sizing: border-box;}
			#headertop .hd_utility.ngbr .mnu_list.ngbr li .depth2 li a {display:block;font-weight:400;font-size:13px;line-height:1.6;color:#666;padding:2px 0}
			#headertop .hd_utility.ngbr .mnu_list.ngbr li .depth2 li:hover a,
			#headertop .hd_utility.ngbr .mnu_list.ngbr li .depth2 li.on a {font-weight:bold;color:#000;text-decoration: underline;}
			#headertop .chg_color{text-decoration:none;animation:changeColor_GO 0.5s ease 0.5s infinite alternate;color:#007af3;}
			@keyframes changeColor_GO {
				0% {color:#333333}
				50% {color:#333333}
				51% {color:#007af3}
				100% {color:#007af3}
			}
		   	/* �ް������� ���ĸ�Ÿ - �����ʸ޴� */
			#headertop .hd_utility.ngbr .right_btn {}
			#headertop .hd_utility.ngbr .right_btn > a {padding-top:0;line-height: 39px;}
			#headertop .hd_utility.ngbr .right_btn > a span{padding: 0 33px 0 30px;}
			#headertop .hd_utility.ngbr .right_btn a>span::after{content:"";display:block;position:absolute;top: 1px;bottom:0;right: 0;margin:auto 0;width: 20px;height: 20px;background: url(https://img.megagong.net/m/2020/0701_teaser/header/dirbtn_icon.png) no-repeat -26px 100%;}
			#headertop .hd_utility.ngbr .right_btn ul.depth2{display:none;position: absolute;top: 45px;right: 0;width: 142px;padding:11px 16px;background: #fff;z-index: 2;border: 1px solid #dddddd;border-width: 0 1px 1px 1px;margin: 0 -1px 0 0px;text-align: left;box-sizing: border-box;}
			#headertop .hd_utility.ngbr .right_btn > a.on + ul.depth2{display:block;}
			#headertop .hd_utility.ngbr .right_btn > a + ul.depth2 li a {display:block;font-size:13px;line-height:1.6;color:#666;padding:2px 0}
			#headertop .hd_utility.ngbr .right_btn > a + ul.depth2 li:hover a,
			#headertop .hd_utility.ngbr .right_btn > a + ul.depth2 li.on a {font-weight:bold;color:#000;text-decoration: underline;}


			/* �����Ҷ� - footer */
			#footer.ngbr {width:100%;}
			#footer.ngbr .ft_wrp.ngbr {text-align:center;width:1080px;margin:0 auto;}
			#footer.ngbr .ft_wrp.ngbr strong {font-weight:400;font-size:11px;line-height:1.4;color:#aaa;}
			#footer.ngbr .ft_wrp.ngbr ul {}
			#footer.ngbr .ft_wrp.ngbr ul li {float:none;padding:0;margin:0;font-size:11px;line-height:1.4;color:#aaa;}
			#footer.ngbr .ft_wrp.ngbr ul li.copyrt {margin-top:3px;}

			@media (max-width: 1200px){
				#footer.ngbr .ft_wrp.ngbr {width:100%;}
				#footer.ngbr .ft_wrp.ngbr ul li {display:block!important;}
			}
	   </style>
	   <script>
		   $(function() {
				$(".hd_utility.ngbr .right_btn a").on('click', function() {
					$(this).toggleClass("on");
				});
			   $("#headertop .hd_utility.ngbr .mnu_list.ngbr li a").on('click', function () {
				   $(this).toggleClass("on");
			   });
		   });
	   </script>
		<div class="hd_utility ngbr">
            <h2 class="blindw">�ް������� ���ĸ�Ÿ GNB �޴�</h2>
			<nav role="navigation">
				<!-- �ȼ� GNB Ŭ���� : class="mnu_list police"-->
				<!-- ������,�ҹ� �¶���-->
				<ul class="mnu_list ngbr">
					<li <% if gmenu = "1" Then %>class="on"<% End if %> ><a class="mli_link" href="/r/ngbr/intro/index.asp" title="�ް������� ���ĸ�Ÿ">�ް������� ���ĸ�Ÿ</a></li>
					<li <% if gmenu = "2" Then %>class="on"<% End if %> >
						<a class="mli_link ico" href="javascript:;" title="���� �ȳ�">���� �ȳ�</a>
						<ul class="depth2">
							<li><a href="/r/ngbr/branch/gangnam/index.asp" title="����">����</a></li>
							<li><a href="/r/ngbr/branch/gangbuk/index.asp" title="����">����</a></li>
							<li><a href="/r/ngbr/branch/gwangsan/index.asp" title="����(����)">����(����)</a></li>
							<li><a href="/r/ngbr/branch/chonnam/index.asp" title="����(������)����">����(������) </a></li>
							<li><a href="/r/ngbr/branch/chungjangro/index.asp" title="����(�����)">����(�����)</a></li>
							<li><a href="/r/ngbr/branch/daegu-banwoldang/index.asp" title="�뱸(�ݿ���)">�뱸(�ݿ���)<img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></li>
							<li><a href="/r/ngbr/branch/daegu-siji/index.asp" title="�뱸(����)">�뱸(����)<img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></li>
							<% if cdate(lo_now_date) >= cdate("2022-11-19") then %>
							<li><a href="/r/ngbr/branch/deajeon-dunsan/index.asp" title="����(�л�)">����(�л�)<%Call SetNewIcon_m(1,"2022-11-19")%></a></li>
							<% end if %>
							<% if cdate(lo_now_date) >= cdate("2022-09-15") then %>
							<li><a href="/r/ngbr/branch/deajeon/index.asp" title="����(�߾ӷ�)">����(�߾ӷ�)<%Call SetNewIcon_m(1,"2022-09-16")%></a></li>
							<% end if %>
							<% if cdate(lo_now_date) >= cdate("2022-10-27") then %>
							<li><a href="/r/ngbr/branch/masan/index.asp" title="����">����<%Call SetNewIcon_m(1,"2022-10-27")%></a></li>
							<% end if %>
							<li><a href="/r/ngbr/branch/busan-seomyeon/index.asp" title="�λ�(����)">�λ�(����)</a></li>
							<li><a href="/r/ngbr/branch/bundang/index.asp" title="�д�">�д�</a></li>
							<li><a href="/r/ngbr/branch/wonju-gaeun/index.asp" title="����(����)">����(����)<img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></li>
							<li><a href="/r/ngbr/branch/incheon/index.asp" title="��õ">��õ</a></li>
							<li><a href="/r/ngbr/branch/jeonbuk/index.asp" title="����(���ϴ�)">����(���ϴ�)<img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></li>
							<li><a href="/r/ngbr/branch/jinhae-jangcheon/index.asp" title="����(��õ)">����(��õ)<img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></li>
							<li><a href="/r/ngbr/branch/changwon/index.asp" title="â��(����ȣ��)">â��(����ȣ��)<img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></li>
							<% if cdate(lo_now_date) >= cdate("2022-09-15") and cdate(lo_now_date) < cdate("2022-09-22") then %>
							<li><a href="/r/ngbr/branch/cheongju/index.asp" title="û��(������Ƽ)">û��(������Ƽ)<%Call SetNewIcon_m(1,"2022-09-16")%></a></li>
							<% end if %>
							<% if cdate(lo_now_date) >= cdate("2022-09-22") then %>
							<li><a href="javascript:alert('�غ����Դϴ�.');" title="û��(������Ƽ)">û��(������Ƽ)<%Call SetNewIcon_m(1,"2022-09-16")%></a></li>
							<% end if %>
							<li><a href="/r/ngbr/branch/chuncheon/index.asp" title="â��(����ȣ��)">��õ(����)<img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></li>
						</ul>
					</li>
					<li <% if gmenu = "3" Then %>class="on"<% End if %> ><a class="mli_link" href="/r/ngbr/apply/index.asp" title="�������">�������</a></li>

					<li <% if gmenu = "4" Then %>class="on"<% End if %> ><a class="mli_link" href="/r/ngbr/center/index.asp" title="���͹���">���͹���</a></li>

					<!-- <li ><a class="mli_link chg_color" href="/r/ngbr/community/board/list.asp" title="Ŀ�´�Ƽ">Ŀ�´�Ƽ</a></li> -->
					<li ><a class="mli_link" href="/r/ngbr/community/notice/list.asp" title="��������">��������</a></li>
					<% if cdate(lo_now_date) >= cdate("2022-05-09") then%>
					<li ><a class="mli_link" href="/r/ngbr/examinfo/index.asp" title="�հ����� LAB">�հ����� LAB</a></li>
					<% end if %>
				</ul>
				<!-- // ������,�ҹ� �¶���-->

				<div class="right_btn">
					<a href="javascript:;" title="���� ��ġ�ȳ�">
						<span>���� ��ġ�ȳ�</span>
					</a>
					<ul class="depth2">
						<li><a href="https://map.naver.com/v5/entry/place/1517569218" target="_blank" title="����">����</a></li>
						<li><a href="https://map.naver.com/v5/entry/place/1381488858" target="_blank" title="����">����</a></li>
						<li><a href="https://map.naver.com/v5/entry/place/1256721477" target="_blank" title="����(����)">����(����)</a></li>
						<li><a href="https://map.naver.com/v5/entry/place/1864668526" target="_blank" title="����(������)">����(������)</a></li>
						<li><a href="https://map.naver.com/v5/entry/place/1529870332" target="_blank" title="����(�����)">����(�����)</a></li>
						<li><a href="https://naver.me/F7xotNdL" target="_blank" title="�뱸(�ݿ���)">�뱸(�ݿ���)<img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></li>
						<li><a href="https://naver.me/FErDByhT" target="_blank" title="�뱸(����)">�뱸(����)<img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></li>
						<% if cdate(lo_now_date) >= cdate("2022-11-19") then %>
						<li><a href="/r/ngbr/branch/deajeon-dunsan/index.asp" title="����(�л�)">����(�л�)<%Call SetNewIcon_m(1,"2022-11-19")%></a></li>
						<% end if %>
						<% if cdate(lo_now_date) >= cdate("2022-09-15") then %>
						<li><a href="https://naver.me/GDbZkNe2" target="_blank" title="����(�߾ӷ�)">����(�߾ӷ�)<%Call SetNewIcon_m(1,"2022-09-16")%></a></li>
						<% end if %>
						<% if cdate(lo_now_date) >= cdate("2022-10-27") then %>
						<li><a href="https://naver.me/xLSWgfnQ" target="_blank" title="����">����<%Call SetNewIcon_m(1,"2022-10-27")%></a></li>
						<% end if %>
						<li><a href="https://map.naver.com/v5/entry/place/1588398516" target="_blank" title="�λ�(����)">�λ�(����)</a></li>
						<li><a href="https://map.naver.com/v5/entry/place/1199334426" target="_blank" title="�д�">�д�</a></li>
						<li><a href="https://naver.me/FTOg3LrY" target="_blank" title="����(����)">����(����)<img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></li>
						<li><a href="https://map.naver.com/v5/entry/place/1132408936" target="_blank" title="��õ">��õ</a></li>
						<li><a href="https://map.naver.com/v5/entry/place/1881797272" target="_blank" title="����(���ϴ�)">����(���ϴ�)<img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></li>
						<li><a href="https://naver.me/FkP4lA0S" target="_blank" title="����(��õ)">����(��õ)<img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></li>
						<li><a href="http://naver.me/xryJ96IJ" target="_blank" title="â��(����ȣ��)">â��(����ȣ��)<img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></li>
						<% if cdate(lo_now_date) >= cdate("2022-09-15") and cdate(lo_now_date) < cdate("2022-09-22") then %>
						<li><a href="https://naver.me/xfaNMi2o " target="_blank" title="û��(������Ƽ)">û��(������Ƽ)<%Call SetNewIcon_m(1,"2022-09-16")%></a></li>
						<% end if %>
						<% if cdate(lo_now_date) >= cdate("2022-09-22") then %>
						<li><a href="javascript:alert('�غ����Դϴ�.');"title="û��(������Ƽ)">û��(������Ƽ)<%Call SetNewIcon_m(1,"2022-09-16")%></a></li>
						<% end if %>
						<li><a href="http://naver.me/5JP09czw" target="_blank" title="��õ(����)">��õ(����)<img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></li>
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
                            <li><a href="/r/ngbr/intro/index.asp" title="�ް������� ���ĸ�Ÿ">�ް������� ���ĸ�Ÿ</a></li>
		                    <li class="more">
								<a href="javascript:;" title="���� �ȳ�">���� �ȳ�</a>
								<ul class="nextlst mbtea_all tit_none">
									<li>
										<dl>
											<dt class="blindw">���� �̵�</dt>
											<dd><a href="https://map.naver.com/v5/entry/place/1517569218" target="_blank" title="����">����</a></dd>
											<dd><a href="https://map.naver.com/v5/entry/place/1381488858" target="_blank" title="����">����</a></dd>
											<dd><a href="https://map.naver.com/v5/entry/place/1256721477" target="_blank" title="����(����)">����(����)</a></dd>
											<dd><a href="https://map.naver.com/v5/entry/place/1864668526" target="_blank" title="����(������)">����(������)</a></dd>
											<dd><a href="https://map.naver.com/v5/entry/place/1529870332" target="_blank" title="����(�����)">����(�����)</a></dd>
											<dd><a href="https://naver.me/F7xotNdL" target="_blank" title="�뱸(�ݿ���)">�뱸(�ݿ���) <img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></dd>
											<dd><a href="https://naver.me/FErDByhT" target="_blank" title="�뱸(����)">�뱸(����) <img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></dd>
											<% if cdate(lo_now_date) >= cdate("2022-11-19") then %>
											<dd><a href="https://naver.me/GDbZkNe2" target="_blank" title="����(�а�)">����(�л�) <%Call SetNewIcon_m(1,"2022-11-19")%></a></dd>
											<% end if %>
											<% if cdate(lo_now_date) >= cdate("2022-09-15") then %>
											<dd><a href="https://naver.me/GDbZkNe2" target="_blank" title="����(�߾ӷ�)">����(�߾ӷ�) <%Call SetNewIcon_m(1,"2022-09-16")%></a></dd>
											<% end if %>
											<% if cdate(lo_now_date) >= cdate("2022-10-27") then %>
											<dd><a href="https://naver.me/xLSWgfnQ" target="_blank" title="����">����<%Call SetNewIcon_m(1,"2022-10-27")%></a></dd>
											<% end if %>
											<dd><a href="https://map.naver.com/v5/entry/place/1588398516" target="_blank" title="�λ�(����)">�λ�(����)</a></dd>
											<dd><a href="https://map.naver.com/v5/entry/place/1199334426" target="_blank" title="�д�">�д�</a></dd>
											<dd><a href="https://naver.me/FTOg3LrY" target="_blank" title="����(����)">����(����) <img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></dd>
											<dd><a href="https://map.naver.com/v5/entry/place/1132408936" target="_blank" title="��õ">��õ</a></dd>
											<dd><a href="https://map.naver.com/v5/entry/place/1881797272" target="_blank" title="����(���ϴ�)">����(���ϴ�) <img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></dd>
											<dd><a href="https://naver.me/FkP4lA0S" target="_blank" title="����(��õ)">����(��õ) <img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></dd>
											<dd><a href="http://naver.me/xryJ96IJ" target="_blank" title="â��(����ȣ��)">â��(����ȣ��) <img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></dd>
											<% if cdate(lo_now_date) >= cdate("2022-09-15") and cdate(lo_now_date) < cdate("2022-09-22") then %>
											<dd><a href="https://naver.me/xfaNMi2o " target="_blank" title="û��(������Ƽ)">û��(������Ƽ) <%Call SetNewIcon_m(1,"2022-09-16")%></a></dd>
											<% end if %>
											<% if cdate(lo_now_date) >= cdate("2022-09-22") then %>
											<dd><a href="javascript:alert('�غ����Դϴ�.');"  title="û��(������Ƽ)">û��(������Ƽ) <%Call SetNewIcon_m(1,"2022-09-16")%></a></dd>
											<% end if %>
											<dd><a href="http://naver.me/5JP09czw" target="_blank" title="��õ(����)">��õ(����) <img src="<%=img_main%>/common/ic_new.gif" alt="���ο� �Խñ�" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></dd>
										</dl>
									</li>
								</ul>
							</li>
							<li><a href="/r/ngbr/apply/index.asp" title="��������">�������</a></li>
							<li><a href="/r/ngbr/center/index.asp" title="���͹���">���͹���</a></li>
							<li><a href="/r/ngbr/community/notice/list.asp" title="��������">��������</a></li>
							<% if cdate(lo_now_date) >= cdate("2022-05-09") then%>
							<li><a href="/r/ngbr/examinfo/index.asp" title="�հ����� LAB">�հ����� LAB</a></li>
							<% end if %>
						</ul>
					</nav>
				</div>
				<div class="mbmenu_bottom">
					<div class="snsgo_wrp">
						<a href="https://blog.naver.com/ngbrsparta" target="_blank" class="naver_b" title="���̹���α�"><span>���̹���α�</span></a>
                        <a href="https://www.instagram.com/megagongsparta/" target="_blank" class="insta" title="�ν�Ÿ�׷�"><span>�ν�Ÿ�׷�</span></a>
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
				<li class="glb_key3"><a href="/r/ngbr/community/notice/list.asp" title="��������"><span>��������</span></a></li>
				<li class="glb_key4"><a href="/mypage/index.asp" title="����������"><span>����������</span></a></li>
				<li class="glb_key5"><a href="/mypage/study/my_study.asp" title="�� ���ǽ�"><span>�� ���ǽ�</span></a></li>
				<li class="glb_key6"><a href="/mypage/pay/my_cart.asp" title="��ٱ���"><span>��ٱ���</span></a></li>
				<% else %>
				<li class="glb_key1"><a href="javascript:history.back(-1);" title="�ڷΰ���"><span>�ڷΰ���</span></a></li>
				<li class="glb_key7"><a href="/r/ngbr/apply/index.asp" title="�������"><span>�������</span></a></li>
				<li class="glb_key8"><a href="/r/ngbr/community/notice/list.asp" title="��������"><span>��������</span></a></li>
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