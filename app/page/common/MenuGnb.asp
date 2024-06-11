<script type="text/babel">
  'use strict';

  function MenuGnb({ title, onChange }) {

const html = `
<div id="headertop" class="gong">
  <div id="header_wrap" class="hd_wrp online main fullser_wrap renew_0619">
    <!-- hd_utility / S -->
    <div id="header_utility" class="hd_utility v21_2 v23_1 w1200">
      <h2 class="blindw">�ް������� �޴�</h2>
      <nav role="navigation">
        <ul class="mnu_list online off hover_list">
          <li>
            <a class="mli_link" href="/s/gong/pass/sale_2025.asp#eventWrap" title="������ �ް��н�">������ �ް��н�</a>
            <ul class="custom">
              <li><a href="/s/gong/pass/sale_2025.asp#eventWrap" title="�������� �ް��н�">�������� �ް��н�</a></li>
              <li><a href="/s/gong/pass/total_tech_sale_2025.asp?#eventWrap" title="����� �ް��н�">����� �ް��н�</a></li>
              <li><a href="/s/gong/event/2023/12260149/index.asp#eventWrap" title="������ T-PASS">������ T-PASS</a></li>
            </ul>
          </li>
          <li class="depview"><a class="mli_link" href="/vod/vod_chr_list.asp?mcode=5&amp;grd_fg=9" title="��ü ����">��ü ���� </a></li>
          <li><a class="mli_link" href="/teacher/index.asp" title="������">������</a></li>
          <li>
            <a class="mli_link" href="https://labdev.megagong.net/l/gong.asp" target="_blank" title="��������">��������</a>
            <ul class="custom">
              <li><a href="https://labdev.megagong.net/l/gong/pass_opinion/index.asp" title="�հݼ���">�հݼ���</a></li>
              <li><a href="https://labdev.megagong.net/l/gong/guide/guide.asp" title="���� ���̵�">���� ���̵�</a></li>
              <li><a href="https://labdev.megagong.net/l/gong/guide/schedule.asp" title="���� ����">���� ����</a></li>
              <li><a href="https://labdev.megagong.net/l/gong/statistic/pass.asp" title="����� &amp; �հݼ�">����� &amp; �հݼ�</a></li>
              <li><a href="https://labdev.megagong.net/l/share/quizbank/index.asp" title="�������� ����">�������� ����</a></li>
              <li><a href="https://labdev.megagong.net/l/share/exam/gong/2024/index.asp#eventWrap" title="9�� ����������">9�� ����������</a></li>
            </ul>
          </li>
          <li>
            <a class="mli_link" href="/s/gong/mockexam/2024_1/?top=mainCon1" title="���� ���ǰ��">���� ���ǰ��</a>
          </li>
          <li>
            <a class="mli_link" href="https://labdev.megagong.net/l/gong/library/list.asp" target="_blank" title="�����ؼ�">�����ؼ�</a>
          </li>
          <ul class="mnu_list3 d0420">
            <li class="book">
                <a href="javascript:;" title="e-���� &amp; ����"><span>e-���� &amp; ����</span></a>
                <ul class="custom w145">
                    <li><a href="/event/2024/03140015/index.asp#eventWrap" title="e-����">e-����</a></li>
                    <li><a href="/book/bookshop.asp" title="�¶��μ���">�¶��μ���</a></li>
                </ul>
            </li>
            <li class="current">
                <span class="menu_icn toggle academy long" style="margin-left:15px">
                    7�� ���۹� ���� ��!
                </span>
                <a href="javascript:;" title="�������п�"><span>�������п�</span></a>
                <ul>
                    <li><a href="https://gongsseldev.megagong.net" target="_blank" title="�ܰ�/���չ�(�뷮��)">�ܰ�/���չ�(�뷮��)</a></li>
                    <li><a href="https://ansungdev.megagong.net" target="_blank" title="��� ������(�ȼ�)">��� ������(�ȼ�)</a></li>
                    <li class="last"><a href="https://ngbrdev.megagong.net" target="_blank" title="������ ������(���ĸ�Ÿ)">������ ������(���ĸ�Ÿ)</a></li>
                </ul>
            </li>
          </ul>
        </ul>
      </nav>
      <div class="gnb_bgArea"><div class="bgArea" style="display: none;height: 95px;border-top:0"></div></div>
      <div class="gnb_series ">
        <div class="">
          <ul>
            <li><a href="/vod/vod_chr_list.asp?mcode=5&amp;grd_fg=9&amp;grp_dom=01">��ü����</a></li>
            <li><a href="/s/gong/pass/sale_2024.asp#con4">�Ϲ�������</a></li>
            <li><a href="/s/gong/pass/sale_2024.asp#con4">���뵿��</a></li>
            <li><a href="/s/gong/pass/sale_2024.asp#con4">����������</a></li>
            <li><a href="/s/gong/pass/sale_2024.asp#con4">����������</a></li>
            <li><a href="/s/gong/pass/sale_2024.asp#con4">���������</a></li>
            <li><a href="/s/gong/pass/sale_2024.asp#con4">������</a></li>
            <li><a href="/s/gong/pass/sale_2024.asp#con4">��ȣ��</a></li>
            <li><a href="/s/gong/pass/sale_2024.asp#con4">������</a></li>
            <li><a href="/s/gong/pass/sale_2024.asp#con4">���������</a></li>
            <li><a href="/s/gong/pass/sale_2024.asp#con4">���Ա�������</a></li>
            <li><a href="/s/gong/pass/sale_2024.asp#con4">ö��������</a></li>
            <li><a href="/s/gong/pass/sale_2024.asp#con4">������</a></li>
            <li><a href="/s/gong/pass/sale_2024.asp#con4">������</a></li>
            <li><a href="/s/gong/pass/sale_2024.asp#con4">��ȸ������</a></li>
            <li><a href="/s/gong/pass/sale_2024.asp#con4">�ܹ�������</a></li>
            <li><a href="/s/gong/pass/sale_2024.asp#con4">������</a></li>
            <li><a href="/s/gong/pass/total_tech_sale_2024.asp?tab_num=2">������</a></li>
            <li><a href="/s/gong/pass/total_tech_sale_2024.asp?tab_num=3">�����</a></li>
            <li><a href="/s/gong/pass/total_tech_sale_2024.asp?tab_num=4">��ȣ��</a></li>
            <li><a href="/s/gong/pass/total_tech_sale_2024.asp?tab_num=5">�����</a></li>
            <li><a href="/s/gong/pass/total_tech_sale_2024.asp?tab_num=6">������</a></li>
            <li><a href="/s/gong/pass/total_tech_sale_2024.asp?tab_num=7">������</a></li>
            <li><a href="/s/gong/pass/total_tech_sale_2024.asp?tab_num=8">���������� </a></li>
            <li><a href="https://sobangdev.megagong.net" target="_blank">�ҹ������</a></li>
            <li><a href="https://armydev.megagong.net" target="_blank">������</a></li>
            <li><a href="/s/gong/pass/sale_2024.asp#con4">PSAT</a></li>
            <li><a href="/vod/vod_chr_list.asp?mcode=5&amp;grd_fg=9&amp;cate_cd=1&amp;grp_dom=01&amp;scode=84">����</a></li>
          </ul>
        </div>
      </div>
    </div>
    <!-- hd_utility / E -->

    <!-- hd_mo_utility / S -->
    <div id="hd_MoUtility" class="hd_mo_utility">
      <div class="mo_gnb">
        <nav>
            <div class="slider">
              <div class="item hasMenu" data-depth2="pass"><a href="/s/gong/pass/sale_2025.asp#eventWrap" title="������ �ް��н�">������ �ް��н�</a></div>
              <div class="item"><a href="/vod/vod_chr_list.asp?mcode=5&grd_fg=9" <% if gmenu = "2" Then %>class="on" <% End if %> title="��ü ����">��ü ����</a></div>
              <div class="item"><a href="/teacher/index.asp" <% if gmenu = "1" Then %>class="on" <% End if %>  title="������">������</a></div>
              <div class="item hasMenu" data-depth2="lab"><a href="<%=lab_main%>/l/gong.asp" target="_blank" title="��������">��������</a></div>
              <div class="item"><a href="<%=lab_main %>/l/gong/explain/explain.asp?dt=20240323" <% if gmenu = "6" Then %>class="on"<% End if %> target="_blank" title="�����ؼ�">�����ؼ�</a></div>
              <% if cdate(lo_now_date) >= cdate("2024-03-23 10:30") and cdate(lo_now_date) < cdate("2024-04-25 14:00") then %>
              <div class="item fullservice"><a href="<%=url_main%>/s/gong/full/20240323/index.asp#fullContainer" title="�հݿ��� Ǯ����">�հݿ��� Ǯ����</a></div>
              <% end if %>
              <div class="item hasMenu <% if gmenu = "3" Then %>on<% End if %>" data-depth2="ebook"><a href="/event/2024/03140015/index.asp#eventWrap" title="e-����">e-����&����</a></div>
            </div>
        </nav>
      </div><!-- // .mo_gnb -->
		  <div class="mo_depth2_wrap">
        <div class="mo_depth2" id="mo_depth2_pass">
          <div class="swiper-wrapper">
            <div class="swiper-slide"><a href="/s/gong/pass/sale_2025.asp#eventWrap" title="������ �ް��н�" >������ �ް��н�</a></div>
            <div class="swiper-slide"><a href="/s/gong/pass/total_tech_sale_2025.asp#eventWrap" title="����� �ް��н�" >����� �ް��н�</a></div>
            <div class="swiper-slide"><a href="/s/gong/event/2023/12260149/index.asp#eventWrap" title="������ T-PASS" >������ T-PASS</a></div>
          </div>
        </div>

        <div class="mo_depth2" id="mo_depth2_lab">
          <div class="swiper-wrapper">
            <div class="swiper-slide"><a href="<%=lab_main%>/l/gong/pass_opinion/index.asp" target="_blank">�հݼ���</a></div>
            <div class="swiper-slide"><a href="<%=lab_main%>/l/gong/guide/guide.asp" target="_blank">���� ���̵�</a></div>
            <div class="swiper-slide"><a href="<%=lab_main%>/l/gong/guide/schedule.asp" target="_blank">��������</a></div>
            <div class="swiper-slide"><a href="<%=lab_main%>/l/gong/statistic/pass.asp" target="_blank">�����&�հݼ�</a></div>
            <div class="swiper-slide"><a href="<%=lab_main%>/l/share/quizbank/index.asp" target="_blank">�������༭��</a></div>
            <div class="swiper-slide"><a href="<%=lab_main%>/l/share/exam/gong/2024/index.asp#eventWrap" target="_blank">9�� ����������</a></div>
          </div>
        </div>

        <div class="mo_depth2" id="mo_depth2_ebook">
			<div class="swiper-wrapper">
				<div class="swiper-slide<%if inStr(pinfo, "/event/2024/03140015") > 0 then%> active<%end if%>"><a href="<%=url_main%>/event/2024/03140015/index.asp#eventWrap">e-����</a></div>
				<div class="swiper-slide<%if inStr(pinfo, "/book") > 0 then%> active<%end if%>"><a href="<%=url_main%>/book/bookshop.asp">�¶��μ���</a></div>
			</div>
		</div>
      </div>
	  </div>
    <!-- hd_mo_utility / E -->
  </div>
</div>`;

const css = ``;

const excCss = ``;

const js = `function inifiniteLoop() {
  $('#headertop .fullser_wrap .hd_utility.v23_1 .mnu_list3.d0420 li.pass').toggleClass('on');
  $("#header_utility .mnu_list .toggleImg2").toggleClass("on");
  timeout = setTimeout(inifiniteLoop, 500);
}
inifiniteLoop();

$('.pass_mini_slide').not('.slick-initialized').slick({
  autoplay: true,
  autoplaySpeed: 2000,
  arrows: false,
  dots: false,
  infinite: true,
  vertical: true,
  verticalSwiping: true,
});

$('#hd_MoUtility .mo_gnb .slider').not('.slick-initialized').slick({
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
  
$('#hd_MoUtility .mo_depth2').each(function(){
	let dp2Swiper = new Swiper(this, {
		slidesPerView: "auto",
		spaceBetween: 0,
		observer: true,
		observeParents: true,
		observeSlideChildren: true
	});
	if ($(this).find('.swiper-slide.active').length) {
		var dp2SwiperIndex = $(this).find('.swiper-slide.active').index();
		dp2Swiper.slideTo(dp2SwiperIndex, 0);
	}
});

$(document).on('click', '#hd_MoUtility .mo_gnb nav .item.hasMenu', function(e){
	e.preventDefault();
	if (!$(this).find('a').hasClass('on')) {
		$('#hd_MoUtility .mo_gnb nav .item.hasMenu a.on').removeClass('on');
		$(this).find('a').addClass('on');
		var dp2 = $(this).data('depth2');
		if (!$('.mo_depth2_wrap').hasClass('on')) {
			$('.mo_depth2_wrap').addClass('on');
		}
		$('.mo_depth2_wrap .mo_depth2.on').removeClass('on');
		$('#mo_depth2_' + dp2).addClass('on');
	} else {
		$(this).find('a').removeClass('on');
		$('.mo_depth2_wrap.on').removeClass('on')
		$('.mo_depth2_wrap .mo_depth2.on').removeClass('on');
	}
	
})`;

const outJs = `clearTimeout(timeout);`;

    return (
      <PageContent
        title={title}
        desc="�޴� ������Ʈ�� �ް������� ����Ʈ�� �̿��ϴ� �л����� �ʿ�� �ϴ� ������ ���񽺸� ���� ã�� �� �ֵ��� �����Ǿ� �ֽ��ϴ�."
        image="/images/demo/menu_gnb.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        outJs={outJs}
        items={["GNB","2����","PC, ����� ����"]}
        link="<%=url_main%>/teacher/qna/qna.asp"
        onChange={onChange}
      />
    )
  }
</script>