<script type="text/babel">
  'use strict';

  function Menu2({ title, onChange }) {

const html = `
<%
Dim subUrl
subUrl = "/l/" + h_gubn

Function fncMenuON(gbn, loot)
    rtnClass = Split(" ||on||current", "||")
    chkTF = false

    trueUrl = NowUrl
    if UrlQueryString <> "" then
        trueUrl = trueUrl & "?" & UrlQueryString
    end if
    
    lootArr = Split(Replace(loot, " ", ""), "||")
    if isArray(lootArr) then 
        for i = 0 to Ubound(lootArr)
            if instr(trueUrl, lootArr(i)) > 0 and chkTF = false then
                chkTF = true
            end if
        next
    end if

    if chkTF = false then
        gbn = 0
    end if

    fncMenuON = rtnClass(gbn)
End Function
%>
<header id="headertop" class="lab">
  <div class="depth2-wrp <%=fncMenuON(1, "/full/")%>">
    <div class="<%=h_gubn%>"><!--�߰� Ŭ������: //��:gong ��:army ��:sobang-->
        <div class="depth2-swiper swiper-container">
            <div class="swiper-wrapper">       
            <!-- ������ S -->
            <% if h_gubn = "gong" then %>

                <% if cdate(lo_now_date) >= cdate("2024-03-23 10:30") and cdate(lo_now_date) < cdate("2024-04-25 14:00") then %>
                <!-- 20240323 Ǯ���� -->
                <div class="swiper-slide">
                    <a href="<%=url_main%>/s/gong/full/20240323/index.asp#fullContainer" target="_blank" title="�հݿ��� Ǯ����">�հݿ��� Ǯ����</a>
                </div>                       
                <!-- // 20240323 Ǯ���� -->
                <% end if %>

                <% if cdate(lo_now_date) >= cdate("2024-03-23 10:30") then %>
                <div class="swiper-slide for_mo">
                    <a href="<%=url_main%>/s/gong/mockexam/2024_1/index.asp?top=mainCon1" target="_blank" title="���� ���ǰ��">���� ���ǰ��</a>
                </div>                       
                <% end if %>

                <% If cdate(lo_now_date) >= cdate("2023-10-28 10:30") and cdate(lo_now_date) < cdate("2023-11-14 14:00") then %>
                <!-- 20230923 Ǯ���� -->
                <div class="swiper-slide <%=fncMenuON(1, "/full/")%>">
                    <a href="<%=url_main%>/s/gong/full/20231028/index.asp#fullContainer" target="_blank" title="�հݿ��� Ǯ����">�հݿ��� Ǯ����</a>
                </div>                       
                <!-- // 20230923 Ǯ���� -->
                <% end if %>

                <div class="swiper-slide <%=fncMenuON(1, "/guide/ || /11300001/ || /11300002/ || /wise/")%>">
                    <a href="<%=subUrl%>/guide/guide.asp" title="������ ���̵�">������ ���̵�</a>
                </div>
                <% if cdate(lo_now_date) >= cdate("2024-04-29 10:00") and cdate(lo_now_date) < cdate("2024-06-22") then %>
                <div class="swiper-slide">
                    <span class="menu_icn mockexam toggleImg2" style="left:19px;">
                        <% if cdate(lo_now_date) < cdate("2024-05-25 09:30") then %>
                            <img src="<%=img_main%>/m/2024/0429_gongexam/icon_gong1_1.png" alt="-" class="on"/>
                            <img src="<%=img_main%>/m/2024/0429_gongexam/icon_gong1_2.png" alt="-" class="off"/>
                            <b>������ ��û ��!</b>
                        <% elseif cdate(lo_now_date) < cdate("2024-05-27") then %>
                            <img src="<%=img_main%>/m/2024/0429_gongexam/icon_gong1_1.png" alt="-" class="on"/>
                            <img src="<%=img_main%>/m/2024/0429_gongexam/icon_gong1_2.png" alt="-" class="off"/>
                            <b>������ ���� ��!</b>
                        <% end if %>
                    </span>
                    <a href="<%=url_main%>/s/gong/mockexam/2024_1/index.asp?top=mainCon1" target="_blank" title="���� ���ǰ��">
                        ���� ���ǰ��
                    </a>
                </div>
                <% end if %> 
                <% if cdate(lo_now_date) >= cdate("2024-01-24") and cdate(lo_now_date) < cdate("2024-03-23 10:30") then %>
                <div class="swiper-slide">
                    <span class="menu_icn mockexam toggleImg2" style="left:19px;">
                        <% if cdate(lo_now_date) < cdate("2024-02-17 09:30") then %>
                            <img src="<%=img_main%>/m/2024/0124_gongexam/icon_gong1_1.png" alt="-" class="on"/>
                            <img src="<%=img_main%>/m/2024/0124_gongexam/icon_gong1_2.png" alt="-" class="off"/>
                            <b>1ȸ ��û ��!</b>
                        <% elseif cdate(lo_now_date) >= cdate("2024-02-17 09:30") and cdate(lo_now_date) < cdate("2024-02-19") then %>
                            <img src="<%=img_main%>/m/2024/0124_gongexam/icon_gong1_1.png" alt="-" class="on"/>
                            <img src="<%=img_main%>/m/2024/0124_gongexam/icon_gong1_2.png" alt="-" class="off"/>
                            <b>1ȸ ���� ��!</b>
                        <% elseif cdate(lo_now_date) >= cdate("2024-02-21 12:00") and cdate(lo_now_date) < cdate("2024-03-09 09:30") then %>
                            <img src="<%=img_main%>/m/2024/0124_gongexam/icon_gong1_1.png" alt="-" class="on"/>
                            <img src="<%=img_main%>/m/2024/0124_gongexam/icon_gong1_2.png" alt="-" class="off"/>
                            <b>2ȸ ��û ��!</b>
                        <% elseif cdate(lo_now_date) >= cdate("2024-03-09 09:30") and cdate(lo_now_date) < cdate("2024-03-11") then %>
                            <img src="<%=img_main%>/m/2024/0124_gongexam/icon_gong1_1.png" alt="-" class="on"/>
                            <img src="<%=img_main%>/m/2024/0124_gongexam/icon_gong1_2.png" alt="-" class="off"/>
                            <b>2ȸ ���� ��!</b>
                        <% end if %>
                    </span>
                    <a href="<%=url_main%>/s/gong/mockexam/2024_1/index.asp?top=mainCon1" target="_blank" title="���� ���ǰ��">
                        ���� ���ǰ��
                    </a>
                </div>
                <% end if %> 
                <% if mode_flg = false then %>
                <div class="swiper-slide">
                    <a href="/l/share/exam/gong/2024/index.asp#eventWrap" target="_blank" title="������">������</a>
                </div>
                <% end if %>
                <div class="swiper-slide <%=fncMenuON(1, "/news/list.asp?schExtra1=2 || /news/view.asp?schExtra1=2 || /strategy/list.asp || /strategy/view.asp || /nangongtv/ || /followm/ || /pass_opinion/ || /ngtvevent/index.asp")%>">
                    <a href="<%=subUrl%>/pass_opinion/index.asp" title="�հ�����">�հ�����</a>
                </div>

                <div class="swiper-slide <%=fncMenuON(1, "/statistic/")%>">
                    <a href="<%=subUrl%>/statistic/pass.asp" title="�հ��� ���">�հ��� ���</a>
                </div>

                <div class="swiper-slide <%=fncMenuON(1, "/news/list.asp?schExtra1=3 || /news/list.asp?schExtra1=1 || /news/view.asp?schExtra1=3 || /news/view.asp?schExtra1=1")%>">
                    <a href="<%=subUrl%>/news/list.asp?schExtra1=3" title="�������&amp;����">�������&amp;����</a>
                </div>

                <div class="swiper-slide <%=fncMenuON(1, "/library/ || /analysis/ || /explain/")%>">
                    <a href="<%=subUrl%>/library/list.asp" title="���⹮��">���⹮��</a>
                </div>

                <div class="swiper-slide <%=fncMenuON(1, "/l/share/quizbank/")%>">
                    <a href="/l/share/quizbank/index.asp" title="��������">
                        ��������
                        <!-- <i class="ic-new"><img src="<%=img_main%>/common/ic_new.gif" alt="NEW" class=""></i> -->
                    </a>
                </div>


                <!-- ������ E -->
            <% end if %>

            <!-- �ҹ� S -->
            <% if h_gubn = "sobang" then %>
                <% if cdate(lo_now_date) < cdate("2024-04-24 14:00")then %>
                <!-- 20240323 Ǯ���� -->
                <div class="swiper-slide">
                    <a href="<%=sobang_main%>/s/sobang/full/20240330/index.asp#fullContainer" target="_blank" title="�հݿ��� Ǯ����">�հݿ��� Ǯ����</a>
                </div>                       
                <!-- // 20240323 Ǯ���� -->
                <% end if %>

                <div class="swiper-slide <%=fncMenuON(1, "/guide/")%>">
                    <a href="<%=subUrl%>/guide/guide.asp" title="�ҹ������ ���̵�">�ҹ������ ���̵�</a>
                </div>

                <% if cdate(lo_now_date) >= cdate("2024-02-05") and cdate(lo_now_date) < cdate("2024-04-11") then %>
                <div class="swiper-slide">
                    <% if cdate(lo_now_date) < cdate("2024-03-04") then %>
                    <span class="menu_icn mockexam toggleImg2">
                        <img src="<%=img_main%>/m/2024/0205_sobangexam/icon_sobang1_1_lab.png" alt="-" class="on"/>
                        <img src="<%=img_main%>/m/2024/0205_sobangexam/icon_sobang1_2_lab.png" alt="-" class="off"/>
                        <% if cdate(lo_now_date) < cdate("2024-03-02 09:30") then %>
                            <b>���ǰ�� ��û ��!</b>
                        <% elseif cdate(lo_now_date) < cdate("2024-03-04") then %>
                            <b>���ǰ�� ���� ��!</b>
                        <% end if %>
                    </span>
                    <style>
                        #headertop .depth2-swiper.swiper-container .swiper-slide .menu_icn.mockexam b{background: #ffc2c2;}
                        #headertop .depth2-swiper.swiper-container .swiper-slide .menu_icn.mockexam.on b{background: #e94747;}
                    </style>
                    <% end if %>
                    <a href="<%=sobang_main%>/s/sobang/mockexam/2024_1/index.asp?top=mainCon1" target="_blank" title="���� ���ǰ��">
                        ���� ���ǰ��
                    </a>
                </div>
                <% end if %> 

                <!--off ��û
                <div class="swiper-slide">
                    <a href="<%=sobang_main%>/exam/basic/sobang_2/index.asp#eventWrap" target="_blank" title="������">������</a>
                </div>
                -->
                <div class="swiper-slide <%=fncMenuON(1, "/news/list.asp?schExtra1=2 || /news/view.asp?schExtra1=2 || /strategy/list.asp || /strategy/view.asp || /nangongtv/ || /followm/ || /pass_opinion/ || /ngtvevent/index.asp")%>">
                    <a href="<%=subUrl%>/pass_opinion/index.asp" title="�հ�����">�հ�����</a>
                </div>
                <div class="swiper-slide <%=fncMenuON(1, "/statistic/ ")%>">
                    <a href="<%=subUrl%>/statistic/pass.asp" title="�հ��� ���">�հ��� ���</a>
                </div>
                
                <div class="swiper-slide <%=fncMenuON(1, "/news/list.asp?schExtra1=3 || /news/list.asp?schExtra1=1 || /news/view.asp?schExtra1=3 || /news/view.asp?schExtra1=1")%>">
                    <a href="<%=subUrl%>/news/list.asp?schExtra1=3" title="�������&amp;����">�������&amp;����</a>
                </div>

                <div class="swiper-slide <%=fncMenuON(1, "/library/ || /analysis/ || /explain/")%>">
                    <a href="<%=subUrl%>/library/list.asp" title="���⹮��">���⹮��</a>
                </div>                            
            <% end if %>
            <!-- �ҹ� E -->

            <!-- ������ S -->
            <% if h_gubn = "army" then %>

                <div class="swiper-slide <%=fncMenuON(1, "/guide/")%>">
                    <a href="<%=subUrl%>/guide/guide.asp" title="������ ���̵�">������ ���̵�</a>
                </div>

                <div class="swiper-slide <%=fncMenuON(1, "/news/list.asp?schExtra1=2 || /news/view.asp?schExtra1=2 || /strategy/list.asp || /strategy/view.asp || /nangongtv/ || /followm/ || /pass_opinion/ || /ngtvevent/index.asp")%>">
                    <a href="<%=subUrl%>/pass_opinion/index.asp" title="�հ�����">�հ�����</a>
                </div>

                <div class="swiper-slide <%=fncMenuON(1, "/statistic/")%>">
                    <a href="<%=subUrl%>/statistic/pass.asp" title="�հ��� ���">�հ��� ���</a>
                </div>
                
                <div class="swiper-slide <%=fncMenuON(1, "/news/list.asp?schExtra1=3 || /news/list.asp?schExtra1=1 || /news/view.asp?schExtra1=3 || /news/view.asp?schExtra1=1")%>">
                    <a href="<%=subUrl%>/news/list.asp?schExtra1=3" title="�������&amp;����">�������&amp;����</a>
                </div>

                <div class="swiper-slide <%=fncMenuON(1, "/library/ || /analysis/ || /explain/")%>">
                    <a href="<%=subUrl%>/library/list.asp" title="���⹮��">���⹮��</a>
                </div>                            
            <% end if %>
            <!-- ������ E -->
            </div>
        </div>
    </div>
</div>
</header>`;

const css = `.toggleImg2 img:nth-child(1) {display: none;}
.toggleImg2.on img:nth-child(1) {display: block;}
.toggleImg2 img:nth-child(2) {display: block;}
.toggleImg2.on img:nth-child(2) {display: none;}`;

const excCss = ``;

const js = ``;

    return (
      <PageContent
        title={title}
        desc="�޴� ������Ʈ�� �ް������� ����Ʈ�� �̿��ϴ� �л����� �ʿ�� �ϴ� ������ ���񽺸� ���� ã�� �� �ֵ��� �����Ǿ� �ֽ��ϴ�."
        // image="/images/btn.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["GNB","2����","������"]}
        link="<%=lab_main%>"
        onChange={onChange}
        version="no-padding"
      />
    )
  }
</script>