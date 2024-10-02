<script type="text/babel">
  'use strict';

  function PassBannerPretty({ title, onChange }) {

const html = `<div class="banner_wrap tpass_bnr" style="background-color:#ffeadc">
    <div class="inner">
        <% if cdate(lo_now_date) >= cdate("2024-08-09 09:00") then %>
        <a href="/s/gong/tpass/2025/index.asp#eventWrap" title="����Ƽ�н�">

            <% if cdate(lo_now_date) >= cdate("2024-08-22 09:00") then %>
            <img src="<%=img_main%>/m/2024/0822_tpass/gong_tpass_ver3.png" alt="����Ƽ�н�" class="v_pc"/>
            <img src="<%=img_main%>/m/2024/0822_tpass/gong_tpass_mo_ver3.png" alt="����Ƽ�н�" class="v_mo"/>
            <% else %>
            <img src="<%=img_main%>/m/2024/0722_tpass/gong_tpass_ver2.png" alt="����Ƽ�н�" class="v_pc"/>
            <img src="<%=img_main%>/m/2024/0722_tpass/gong_tpass_mo_ver2.png" alt="����Ƽ�н�" class="v_mo"/>
            <% end if %>

            <% if cdate(lo_now_date) < cdate("2024-08-09 09:00") then %>
            <p class="tpasstxt">
                <b><span></span>���ϴ� �������� �� ���� <br>������  ����!</b> 
                <% if cdate(lo_now_date) < cdate("2024-08-09 09:00") then %>
                <span class="toggle_text">8/8(��) ���� ����</span>
                <% end if %>
            </p>
            <% end if %>
        </a>
        <% elseif cdate(lo_now_date) >= cdate("2024-08-07") then %>
        <a href="/s/gong/event/2023/12260149/index.asp#eventWrap" title="����Ƽ�н�">
            <img src="<%=img_main%>/m/2024/0807_pass/gong_tpass.png" alt="����Ƽ�н�" class="v_pc"/>
            <img src="<%=img_main%>/m/2024/0807_pass/gong_tpass_mo.png" alt="����Ƽ�н�" class="v_mo"/>
            <p class="tpasstxt left hide-768">
                <b><span></span>���� ������ �������� ��� ���¸� <br>�ո����� ������� ������ ����</b> 
            </p>
            <div class="tpasstxt right hide-768">
                <% if cdate(lo_now_date) < cdate("2024-08-08") then %>
                <span class="toggle_text">8/8(��) ���� D-<%=dday%></span>
                <% else %>
                <span class="toggle_text">8/8(��) ���� ����</span>
                <% end if %>
            </div>
            <div class="tpasstxt mo">
                <b>2�� ���ñ��� �� <br>20% ��� ����</b>
                <% if cdate(lo_now_date) < cdate("2024-08-08") then %>
                <span class="toggle_text">8/8(��) ���� D-<%=dday%></span>
                <% else %>
                <span class="toggle_text">8/8(��) ���� ����</span>
                <% end if %>
            </div>
        </a>
        <% else %>
        <a href="/s/gong/event/2023/12260149/index.asp#eventWrap" title="����Ƽ�н�">
            <img src="<%=img_main%>/m/2024/0806_tpass/bnr_pretty.png" alt="����Ƽ�н�" class="v_pc"/>
            <img src="<%=img_main%>/m/2024/0705_muntaehwan/tpassmain_4.png" alt="����Ƽ�н�" class="v_mo"/>
            <p class="tpasstxt short">
                <b><span>������ </span>�ִ� ���� ����!</b> 
                <% if cdate(lo_now_date) < cdate("2024-08-01 09:00") then %>
                <span class="toggle_text">8/8(��) ����</span>
                <% elseif cdate(lo_now_date) < cdate("2024-08-08") then %>
                <span class="toggle_text">8/8(��) ���� D-<%=dday%></span>
                <% else %>
                <span class="toggle_text">8/8(��) ���� ����</span>
                <% end if %>
            </p>
        </a>
        <% end if %>

    </div>
</div>`;

const css = `.tpass_bnr .tpasstxt{font-size:13px;width:130px;color:#000;font-weight:normal;font-family: "Noto Sans KR", "���� ���", "Malgun Gothic", "����", "Dotum", sans-serif;text-align: center;position: absolute;top: 18px;left: 210px;font-weight:500}
.tpass_bnr .tpasstxt > span{display:block;font-size:16px;border-top:1px solid #000;border-bottom:1px solid #000;font-weight:bold;padding:3px 0 4px;margin-top:5px}
.tpass_bnr .tpasstxt > span br{display:none}
.tpass_bnr .tpasstxt .toggle_text.on{color:#fff}
.tpass_bnr .tpasstxt b{font-weight:inherit}
.tpass_bnr .tpasstxt b span{}

.tpass_bnr .tpasstxt.short{display:flex;align-items:center;gap:0 10px;font-size:14px;}
.tpass_bnr .tpasstxt.short b, .tpass_bnr .tpasstxt.short .toggle_text{flex-shrink:0;}
.tpass_bnr .tpasstxt.short .toggle_text{}
.tpass_bnr .tpasstxt.short > span{margin-top:0;font-size:14px;}

.tpass_bnr .tpasstxt.mo {display: none;}
.tpass_bnr .tpasstxt.left {width: auto; left: 200px; top: 14px; font-weight: 700; line-height: 1.3; letter-spacing: -0.2px;}
.tpass_bnr .tpasstxt.right {width: 109px; left: auto; right: 200px;}
.tpass_bnr .tpasstxt.right > span {font-size: 13px; margin-top: 0;}

@media (max-width: 1200px){
    .tpass_bnr .tpasstxt{font-size: clamp(10px, 1.3vmin, 13px);width: auto;left: 13%;top:0;display:flex;justify-content: center;align-items: center;flex-direction: column;height: 100%;}
    .tpass_bnr .tpasstxt > span{font-size:1em;width: 100%;padding:2% 0 3%;}
    .tpass_bnr .tpasstxt.short{font-size:12px;}
    .tpass_bnr .tpasstxt.short > span{width:auto;font-size:12px;margin-top:3px;}

    .tpass_bnr .tpasstxt.left {top: 0; left: 14%;}
    .tpass_bnr .tpasstxt.right {top: 0; right: 12%; width: 12%;}
    .tpass_bnr .tpasstxt.right > span {font-size: clamp(10px, 1.3vmin, 13px);}
}
@media (max-width: 768px){
    .tpass_bnr .tpasstxt{font-size: 2.1vw;left: 3%;width: 27.5vw;height: 13vw;background: #000c;color: #fff;border-radius: 100%;top: 50%;margin: -6.5vw 0 0;font-weight: normal;border-radius: 10px;}
    .tpass_bnr .tpasstxt.mo {display: flex;}
    .tpass_bnr .tpasstxt > span{border:0;font-size: 1.2em;font-weight: 500;line-height: 1.3;margin-top: 2px;padding:0}
    .tpass_bnr .tpasstxt .toggle_text.on{color:#ff709d}
    .tpass_bnr .tpasstxt b span{display:none}
    .tpass_bnr .tpasstxt > span br{}
    .tpass_bnr .tpasstxt.short{font-size:11px;}
    .tpass_bnr .tpasstxt.short > span{font-size:11px;}
}
@media (max-width: 576px){
    .tpass_bnr .tpasstxt{font-size: 2.7vw;}
}`;

const excCss = `.tpass_bnr .v_pc{display: block;}
.tpass_bnr .v_mo{display: none;}
  
@media (max-width: 768px){
    .tpass_bnr .v_pc{display: none;}
    .tpass_bnr .v_mo{display: block;}
}`;

const js = ``;

    return (
      <PageContent
        title={title}
        desc="�ް����������� ����ϴ� �н� ��ʸ� �Ұ��մϴ�. <br />�н� ��ǰ�� �ް��������� �ٽ� ���񽺷� �ް������� ������������ ��ܿ� ����˴ϴ�."
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["�н� ���","����Ƽ �н�"]}
        link="<%=url_main%>/megagong.asp"
        file="m\gong\bnr_zone\v24\top_banner.asp"
        onChange={onChange}
      />
    )
  }
</script>