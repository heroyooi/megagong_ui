<%
	Function passItemObj(title, pcImg, moImg, link)
%>
	<div class="item">
        <a href="<%=url_main%><%=link%>" title="<%=title%> 메가패스">
            <% if pcImg <> "" then %><img src="<%=img_main%><%=pcImg%>" alt="<%=title%> 메가패스" class="hide-576"><% end if %>
            <% if moImg <> "" then %><img src="<%=img_main%><%=moImg%>" alt="<%=title%> 메가패스" class="show-576"><% end if %>
        </a>
    </div>  
<%
	End Function
%>

<%
	Function passItemWrap(device)
%>
    <% if device = "pc" then %>
        <%' pc, 모바일 슬라이드%>
	    <% if cdate(lo_now_date) >= cdate("2024-09-30 09:00") then %>
	    <%=passItemObj("공무원", "/m/2024/0807_lecture/pass_gong_ver0930.png", "/m/2024/0807_lecture/pass_gong_mo_ver0930.png", "/s/gong/pass/sale_2025.asp#eventWrap")%>
      <% elseif cdate(lo_now_date) >= cdate("2024-09-13 09:00") then %>
	    <%=passItemObj("공무원", "/m/2024/0807_lecture/pass_gong_ver0912.png", "/m/2024/0807_lecture/pass_gong_mo_ver0912.png", "/s/gong/pass/sale_2025.asp#eventWrap")%>
	    <% else %>
	    <%=passItemObj("공무원", "/m/2024/0807_lecture/pass_gong.png", "/m/2024/0807_lecture/pass_gong_mo.png", "/s/gong/pass/sale_2025.asp#eventWrap")%>
	    <% end if %>

	    <% if cdate(lo_now_date) >= cdate("2024-09-30 09:00") then %>
	    <%=passItemObj("기술직","/m/2024/0807_lecture/pass_tech_ver0930.png", "/m/2024/0807_lecture/pass_tech_mo_ver0930.png", "/s/gong/pass/total_tech_sale_2025.asp#eventWrap")%>
        <% elseif cdate(lo_now_date) >= cdate("2024-09-13 09:00") then %>
	    <%=passItemObj("기술직","/m/2024/0807_lecture/pass_tech_ver0912.png", "/m/2024/0807_lecture/pass_tech_mo_ver0912.png", "/s/gong/pass/total_tech_sale_2025.asp#eventWrap")%>
	    <% else %>
	    <%=passItemObj("기술직","/m/2024/0807_lecture/pass_tech.png", "/m/2024/0807_lecture/pass_tech_mo.png", "/s/gong/pass/total_tech_sale_2025.asp#eventWrap")%>
	    <% end if %>

	    <% if cdate(lo_now_date) >= cdate("2024-09-30 09:00") then %>
	    <%=passItemObj("군무원", "/m/2024/0807_lecture/pass_army_ver0930.png", "/m/2024/0807_lecture/pass_army_mo_ver0930.png", "/s/gong/pass/army_sale_2025.asp#eventWrap")%>
	    <% elseif cdate(lo_now_date) >= cdate("2024-09-13 09:00") then %>
	    <%=passItemObj("군무원", "/m/2024/0807_lecture/pass_army_ver0912.png", "/m/2024/0807_lecture/pass_army_mo_ver0912.png", "/s/gong/pass/army_sale_2025.asp#eventWrap")%>
	    <% else %>
	    <%=passItemObj("군무원", "/m/2024/0807_lecture/pass_army.png", "/m/2024/0807_lecture/pass_army_mo.png", "/s/gong/pass/army_sale_2025.asp#eventWrap")%>
	    <% end if %>


	<% elseif device = "mo" then %> 
      <%' 모바일에서 추가되는 슬라이드%>
      <%=passItemObj("리스타트", "", "/m/2024/0807_lecture/pass_restart_mo.png", "/s/gong/pass/restart/2025/index.asp#eventWrap")%>
	    <%=passItemObj( "법원직", "", "/m/2024/0807_lecture/pass_law_mo.png", "/s/gong/pass/law/2025/index.asp#eventWrap")%>
	    <%=passItemObj( "교정직", "", "/m/2024/0807_lecture/pass_correct_mo.png", "/s/gong/event/2024/06120053/index.asp#eventWrap")%>
	<% end if %>
    
<%
	End Function
%>

<script type="text/babel">
  'use strict';

  function BannerMegaPass({ title, onChange }) {

const html = `<div class="main_wrp">
  <div class="wide_wrap flex first">
    <!-- S: 패스 배너 / main_passSlider -->
    <h3 class="blindw">메가패스</h3>
    <!-- PC 상품 빅배너 S -->
    <div id="main_passSlider" class="main_visualSlider bullet_topright pass hide_576">
      <%=passItemWrap("pc")%>
    </div>
    <!-- PC 상품 빅배너 E -->

    <!-- MO 상품 빅배너 + 서브배너 S -->
    <div id="main_passSlider" class="main_visualSlider bullet_topright pass show_576">
      <%=passItemWrap("pc")%>
      <%=passItemWrap("mo")%>
    </div>
    <!-- MO 상품 빅배너 + 서브배너 E -->
    <!-- E: 패스 배너 / main_passSlider -->

    <!-- S: 원픽 배너 / main_pickSlider -->
    <h3 class="blindw">메가 원픽 추천강좌</h3>
    <div id="main_pickSlider" class="main_visualSlider  bullet_topright pick">
        <div class="item">
            <a href="/s/gong/event/2024/09120108/index.asp#eventWrap" title="미션 메가공무원 합격 메가파서블">
                <img src="<%=img_main%>/m/2024/0912_megapas/exhibi_ms.png" class="hide_576" alt="미션 메가공무원 합격 메가파서블" />
                <img src="<%=img_main%>/m/2024/0912_megapas/exhibi_ms_mo.png" class="show_576" alt="미션 메가공무원 합격 메가파서블" />
            </a>
        </div>
        <div class="item">
            <a href="/s/gong/event/2024/09120113/index.asp#eventWrap" title="2025 메가 기술직 기본이론 완성">
                <%if cdate(lo_now_date) >= cdate("2024-09-27") then%>
                <img src="<%=img_main%>/m/2024/0912_tech/exhibi_tech.png" class="hide_576" alt="2025 메가 기술직 기본이론 완성" />
                <img src="<%=img_main%>/m/2024/0912_tech/exhibi_tech_mo.png" class="show_576" alt="2025 메가 기술직 기본이론 완성" />
                <% else %>
                <img src="<%=img_main%>/m/2024/0912_tech/v2_exhibi_tech.png" class="hide_576" alt="2025 메가 기술직 기본이론 완성" />
                <img src="<%=img_main%>/m/2024/0912_tech/v2_exhibi_tech_mo.png" class="show_576" alt="2025 메가 기술직 기본이론 완성" />
                <% end if %>
            </a>
        </div>
        <div class="item">
            <a href="/s/gong/event/2024/07100077/index.asp#eventWrap" title="7급 합격의 골든타임">
                <img src="<%=img_main%>/m/2024/0807_lecture/exhibi_grade7.png" class="hide_576" alt="7급 합격의 골든타임" />
                <img src="<%=img_main%>/m/2024/0807_lecture/exhibi_grade7_mo.png" class="show_576" alt="7급 합격의 골든타임" />
            </a>
        </div>
    </div><!-- / main_visualSlider -->
  </div>
</div>`;

const css = ``;

const excCss = `.main_wrp{padding-top:0;}`;

const js = `$('.main_visualSlider').not('.slick-initialized').slick({
    infinite: false,
    autoplaySpeed: 3000,
    fade:true,
    autoplay:true,
    dots: true,
    arrows: false,
    draggable: true
});`;

    return (
      <PageContent
        title={title}
        desc=""
        // image="/images/demo/main_banner_pass.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["패스 상품","메인 배너"]}
        link="<%=url_main%>/megagong.asp"
        file="m\gong\bnr_zone\v24\pass.asp"
        onChange={onChange}
      />
    )
  }
</script>