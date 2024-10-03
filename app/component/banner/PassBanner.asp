<script type="text/babel">
  'use strict';

  function PassBanner({ title, onChange, simple = false }) {

const html = `<div class="main_wrp">
    <div class="wide_wrap flex first">
  
        <h3 class="blindw">메가패스</h3>

<%
	Function passItemObj(title, pcImg, moImg, link)
%>
	<div class="item">
        <a href="<%=link%>" title="<%=title%> 메가패스">
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
        <% if cdate(lo_now_date) >= cdate("2024-10-02") then %>
        <%=passItemObj("리스타트", "", "/m/2024/1002_ansung/pass_restart_mo.png", "/s/gong/pass/restart/2025/index.asp#eventWrap")%>
        <% else %>
        <%=passItemObj("리스타트", "", "/m/2024/0807_lecture/pass_restart_mo.png", "/s/gong/pass/restart/2025/index.asp#eventWrap")%>
        <% end if%>
	    <%=passItemObj( "법원직", "", "/m/2024/0807_lecture/pass_law_mo.png", "/s/gong/pass/law/2025/index.asp#eventWrap")%>
	    <%=passItemObj( "교정직", "", "/m/2024/0807_lecture/pass_correct_mo.png", "/s/gong/event/2024/06120053/index.asp#eventWrap")%>
	<% end if %>
    
<%
	End Function
%>

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

    </div>
</div>`;

const css = ``;

const excCss = `.main_wrp{padding-top:0;}
.main_wrp .wide_wrap{padding:0;}`;

const js = `$('.main_visualSlider').not('.slick-initialized').slick({
    infinite: true,
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
        desc="메가공무원에서 사용하는 패스 배너를 소개합니다. <br />패스 상품은 메가공무원의 핵심 서비스로 메가공무원 메인페이지의 상단에 노출됩니다."
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["패스 배너","메가 패스","대표 직렬"]}
        link="<%=url_main%>/megagong.asp"
        file="m\gong\bnr_zone\v24\pass.asp"
        simple={simple}
        onChange={onChange}
      />
    )
  }
</script>