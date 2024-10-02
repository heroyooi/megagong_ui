<script type="text/babel">
  'use strict';

  function PassBanner({ title, onChange }) {

const html = `<div class="main_wrp">
    <div class="wide_wrap flex first">
  
        <h3 class="blindw">�ް��н�</h3>

<%
	Function passItemObj(title, pcImg, moImg, link)
%>
	<div class="item">
        <a href="<%=link%>" title="<%=title%> �ް��н�">
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
        <% if cdate(lo_now_date) >= cdate("2024-10-02") then %>
        <%=passItemObj("����ŸƮ", "", "/m/2024/1002_ansung/pass_restart_mo.png", "/s/gong/pass/restart/2025/index.asp#eventWrap")%>
        <% else %>
        <%=passItemObj("����ŸƮ", "", "/m/2024/0807_lecture/pass_restart_mo.png", "/s/gong/pass/restart/2025/index.asp#eventWrap")%>
        <% end if%>
	    <%=passItemObj( "������", "", "/m/2024/0807_lecture/pass_law_mo.png", "/s/gong/pass/law/2025/index.asp#eventWrap")%>
	    <%=passItemObj( "������", "", "/m/2024/0807_lecture/pass_correct_mo.png", "/s/gong/event/2024/06120053/index.asp#eventWrap")%>
	<% end if %>
    
<%
	End Function
%>

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
        desc="�ް����������� ����ϴ� �н� ��ʸ� �Ұ��մϴ�. <br />�н� ��ǰ�� �ް��������� �ٽ� ���񽺷� �ް������� ������������ ��ܿ� ����˴ϴ�."
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["�н� ���","�ް� �н�","��ǥ ����"]}
        link="<%=url_main%>/megagong.asp"
        file="m\gong\bnr_zone\v24\pass.asp"
        onChange={onChange}
      />
    )
  }
</script>