<%
	Function passItemObj(title, pcImg, moImg, link)
%>
	<div class="item">
        <a href="<%=url_main%><%=link%>" title="<%=title%> �ް��н�">
            <% if pcImg <> "" then %><img src="<%=img_main%><%=pcImg%>" alt="<%=title%> �ް��н�" class="hide-576"><% end if %>
            <% if moImg <> "" then %><img src="<%=img_main%><%=moImg%>" alt="<%=title%> �ް��н�" class="show-576"><% end if %>
        </a>
    </div>  
<%
	End Function
%>

<%
	Function passItemWrap(device)
%>
    <% if device = "pc" then %>
        <%' pc, ����� �����̵�%>
	    <% if cdate(lo_now_date) >= cdate("2024-09-30 09:00") then %>
	    <%=passItemObj("������", "/m/2024/0807_lecture/pass_gong_ver0930.png", "/m/2024/0807_lecture/pass_gong_mo_ver0930.png", "/s/gong/pass/sale_2025.asp#eventWrap")%>
      <% elseif cdate(lo_now_date) >= cdate("2024-09-13 09:00") then %>
	    <%=passItemObj("������", "/m/2024/0807_lecture/pass_gong_ver0912.png", "/m/2024/0807_lecture/pass_gong_mo_ver0912.png", "/s/gong/pass/sale_2025.asp#eventWrap")%>
	    <% else %>
	    <%=passItemObj("������", "/m/2024/0807_lecture/pass_gong.png", "/m/2024/0807_lecture/pass_gong_mo.png", "/s/gong/pass/sale_2025.asp#eventWrap")%>
	    <% end if %>

	    <% if cdate(lo_now_date) >= cdate("2024-09-30 09:00") then %>
	    <%=passItemObj("�����","/m/2024/0807_lecture/pass_tech_ver0930.png", "/m/2024/0807_lecture/pass_tech_mo_ver0930.png", "/s/gong/pass/total_tech_sale_2025.asp#eventWrap")%>
        <% elseif cdate(lo_now_date) >= cdate("2024-09-13 09:00") then %>
	    <%=passItemObj("�����","/m/2024/0807_lecture/pass_tech_ver0912.png", "/m/2024/0807_lecture/pass_tech_mo_ver0912.png", "/s/gong/pass/total_tech_sale_2025.asp#eventWrap")%>
	    <% else %>
	    <%=passItemObj("�����","/m/2024/0807_lecture/pass_tech.png", "/m/2024/0807_lecture/pass_tech_mo.png", "/s/gong/pass/total_tech_sale_2025.asp#eventWrap")%>
	    <% end if %>

	    <% if cdate(lo_now_date) >= cdate("2024-09-30 09:00") then %>
	    <%=passItemObj("������", "/m/2024/0807_lecture/pass_army_ver0930.png", "/m/2024/0807_lecture/pass_army_mo_ver0930.png", "/s/gong/pass/army_sale_2025.asp#eventWrap")%>
	    <% elseif cdate(lo_now_date) >= cdate("2024-09-13 09:00") then %>
	    <%=passItemObj("������", "/m/2024/0807_lecture/pass_army_ver0912.png", "/m/2024/0807_lecture/pass_army_mo_ver0912.png", "/s/gong/pass/army_sale_2025.asp#eventWrap")%>
	    <% else %>
	    <%=passItemObj("������", "/m/2024/0807_lecture/pass_army.png", "/m/2024/0807_lecture/pass_army_mo.png", "/s/gong/pass/army_sale_2025.asp#eventWrap")%>
	    <% end if %>


	<% elseif device = "mo" then %> 
      <%' ����Ͽ��� �߰��Ǵ� �����̵�%>
      <%=passItemObj("����ŸƮ", "", "/m/2024/0807_lecture/pass_restart_mo.png", "/s/gong/pass/restart/2025/index.asp#eventWrap")%>
	    <%=passItemObj( "������", "", "/m/2024/0807_lecture/pass_law_mo.png", "/s/gong/pass/law/2025/index.asp#eventWrap")%>
	    <%=passItemObj( "������", "", "/m/2024/0807_lecture/pass_correct_mo.png", "/s/gong/event/2024/06120053/index.asp#eventWrap")%>
	<% end if %>
    
<%
	End Function
%>

<script type="text/babel">
  'use strict';

  function BannerMegaPass({ title, onChange }) {

const html = `<div class="main_wrp">
  <div class="wide_wrap flex first">
    <!-- S: �н� ��� / main_passSlider -->
    <h3 class="blindw">�ް��н�</h3>
    <!-- PC ��ǰ ���� S -->
    <div id="main_passSlider" class="main_visualSlider bullet_topright pass hide_576">
      <%=passItemWrap("pc")%>
    </div>
    <!-- PC ��ǰ ���� E -->

    <!-- MO ��ǰ ���� + ������ S -->
    <div id="main_passSlider" class="main_visualSlider bullet_topright pass show_576">
      <%=passItemWrap("pc")%>
      <%=passItemWrap("mo")%>
    </div>
    <!-- MO ��ǰ ���� + ������ E -->
    <!-- E: �н� ��� / main_passSlider -->

    <!-- S: ���� ��� / main_pickSlider -->
    <h3 class="blindw">�ް� ���� ��õ����</h3>
    <div id="main_pickSlider" class="main_visualSlider  bullet_topright pick">
        <div class="item">
            <a href="/s/gong/event/2024/09120108/index.asp#eventWrap" title="�̼� �ް������� �հ� �ް��ļ���">
                <img src="<%=img_main%>/m/2024/0912_megapas/exhibi_ms.png" class="hide_576" alt="�̼� �ް������� �հ� �ް��ļ���" />
                <img src="<%=img_main%>/m/2024/0912_megapas/exhibi_ms_mo.png" class="show_576" alt="�̼� �ް������� �հ� �ް��ļ���" />
            </a>
        </div>
        <div class="item">
            <a href="/s/gong/event/2024/09120113/index.asp#eventWrap" title="2025 �ް� ����� �⺻�̷� �ϼ�">
                <%if cdate(lo_now_date) >= cdate("2024-09-27") then%>
                <img src="<%=img_main%>/m/2024/0912_tech/exhibi_tech.png" class="hide_576" alt="2025 �ް� ����� �⺻�̷� �ϼ�" />
                <img src="<%=img_main%>/m/2024/0912_tech/exhibi_tech_mo.png" class="show_576" alt="2025 �ް� ����� �⺻�̷� �ϼ�" />
                <% else %>
                <img src="<%=img_main%>/m/2024/0912_tech/v2_exhibi_tech.png" class="hide_576" alt="2025 �ް� ����� �⺻�̷� �ϼ�" />
                <img src="<%=img_main%>/m/2024/0912_tech/v2_exhibi_tech_mo.png" class="show_576" alt="2025 �ް� ����� �⺻�̷� �ϼ�" />
                <% end if %>
            </a>
        </div>
        <div class="item">
            <a href="/s/gong/event/2024/07100077/index.asp#eventWrap" title="7�� �հ��� ���Ÿ��">
                <img src="<%=img_main%>/m/2024/0807_lecture/exhibi_grade7.png" class="hide_576" alt="7�� �հ��� ���Ÿ��" />
                <img src="<%=img_main%>/m/2024/0807_lecture/exhibi_grade7_mo.png" class="show_576" alt="7�� �հ��� ���Ÿ��" />
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
        items={["�н� ��ǰ","���� ���"]}
        link="<%=url_main%>/megagong.asp"
        file="m\gong\bnr_zone\v24\pass.asp"
        onChange={onChange}
      />
    )
  }
</script>