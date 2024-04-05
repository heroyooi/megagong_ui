<%

Dim subUrl
subUrl = "/l/" + h_gubn

%>

<div id="hd-wrp">
    <h1 class="hd-logo center">
        <a href="/" title="�ް������� �հ����������� ���������� �ٷΰ���">
            <img src="<%=img_main%>/lab/common/logo.png" alt="�ް������� �հ�����������" class="pc-view">
            <img src="<%=img_main%>/lab/common/logo_mo.png" alt="�ް������� �հ�����������" class="mo-view">
        </a>
    </h1>

    <!-- hd-utility / S -->
    <div class="hd-utility">
        <h2 class="blindw">�ް������� �հ����������� �޴�</h2>
            <div class="dday-slider pc-view <%=h_gubn%>">
                <div><b>������ 7��</b> <span>D-100</span></div>
                <div><b>������ 8��</b> <span>D-100</span></div>
                <div><b>������ 9��</b> <span>D-100</span></div>
            </div>
        <nav role="navigation" class="nav">
        
            <ul class="depth1-wrp <%=h_gubn%>">
                <li><a class="<%if h_dcd = "4" then%> on <%end if%>" href="javascript:void(0);" onclick="labMain(4);" title="������">������</a></li>
                <li><a class="<%if h_dcd = "3" then%> on <%end if%>" href="javascript:void(0);" onclick="labMain(3);" title="�ҹ�">�ҹ�</a></li>
                <li><a class="<%if h_dcd = "5" then%> on <%end if%>" href="javascript:void(0);" onclick="labMain(5);" title="������">������</a></li>
            </ul>
            <script>
                function labMain(g) {
                    $.post("/common/menu/setCookie_ax.asp?mode=lab&g="+g, function(data){
                        document.location.href = "<%=lab_main + "/megagong.asp"%>";
                    });
                }
            </script>
            <div class="depth2-wrp">
                <div class="<%=h_gubn%>"><!--�߰� Ŭ������: //��:gong ��:army ��:sobang-->
                    <div class="depth2-swiper swiper-container">
                        <div class="swiper-wrapper">
                            <!-- ������ S -->
                            <div class="swiper-slide<%If instr(1, NowUrl, "/guide/") > 0 Then%> on<%End if%>">
                                <a href="<%=subUrl%>/guide/guide.asp">������ ���̵�</a>
                            </div>
                            
                            <div class="swiper-slide">
                                <a href="<%=url_main%>/exam/basic/gong_3/index.asp#eventWrap" target="_blank">������</a>
                            </div>

                            <div class="swiper-slide <%If instr(1, NowUrl, "/news/") > 0 or instr(1, NowUrl, "/strategy/") > 0 or instr(1, NowUrl, "/nangongtv/") > 0 or instr(1, NowUrl, "/followm/") > 0 or instr(1, NowUrl, "/pass_opinion/") > 0 Then%> on<%End if%>">
                                <a href="<%=subUrl%>/news/list.asp">�հ�����</a>
                            </div>
                            
                            <div class="swiper-slide">
                                <a href="<%=url_main%>/s/gong/examinfo/passmate/list.asp#mContainer" target="_blank">���� ����</a>
                            </div>

                            <div class="swiper-slide <%If instr(1, NowUrl, "/statistic/") > 0 Then%> on<%End if%>">
                                <a href="<%=subUrl%>/statistic/pass.asp">�հ��� ���</a>
                            </div>
                            
                            <div class="swiper-slide <%If instr(1, NowUrl, "/news/") > 0 Then%> on<%End if%>">
                                <a href="<%=subUrl%>/news/list.asp">�������&amp;����</a>
                            </div>
                            
                            <div class="swiper-slide <%If instr(1, NowUrl, "/library/") > 0 or instr(1, NowUrl, "/analysis/") > 0 Then%> on<%End if%>">
                                <a href="<%=subUrl%>/library/list.asp">���⹮��</a>
                            </div>
                            <!-- ������ E -->

                        <% if h_gubn = "sobang" then %>
                            <!-- �ҹ� S -->
                            <!-- �ҹ� E -->
                        <% end if %>

                        <% if h_gubn = "army" then %>
                            <!-- ������ S -->
                            <!-- ������ E -->
                        <% end if %>
                        </div>
                    </div>
                </div>
            </div>

            
            
            <div class="depth3-wrp" <% if instr(1, NowUrl, "/l/") > 0 Then %>style="min-height: 40px;"<% End if %>>
                <ul class="depth3-box">
                    <li class="depth3"><a href="javascript:;">��������<i></i></a></li>
                    <li <% if instr(1, NowUrl, "/guide/guide.asp") > 0 Then %>class="current"<% End if %>><a href="<%=subUrl%>/guide/guide.asp">��������</a></li>
                    <li <% if instr(1, NowUrl, "/guide/schedule.asp") > 0 Then %>class="current"<% End if %>><a href="<%=subUrl%>/guide/schedule.asp">��������</a></li>
                    <li <% if instr(1, NowUrl, "/guide/series.asp") > 0 Then %>class="current"<% End if %>><a href="<%=subUrl%>/guide/series.asp">��������</a></li>
                    <li><a href="javascript:void(0);">������ ����Ž������</a></li>
                </ul>
                <ul class="depth3-box">
                    <li class="depth3"><a href="javascript:;">9�� ������<i></i></a></li>
                    <li><a href="<%=url_main%>/exam/basic/gong_3/index.asp#eventWrap" target="_blank">9�� ������</a></li>
                    <li><a href="<%=url_main%>/exam/basic/gong_4/index.asp#eventWrap" target="_blank">PSAT ������</a></li>
                </ul>
                <ul class="depth3-box">
                    <li class="depth3"><a href="javascript:;">�հ������÷�<i></i></a></li>
                    <li <% if instr(1, NowUrl, "/news/list.asp") > 0 Then %>class="current"<% End if %>><a href="<%=subUrl%>/news/list.asp">�հ������÷�</a></li>
                    <% if 1 = 2  then %><li><a href="javascript:;">��������(���� �� ���¿���)</a></li><% end if %>
                    <li <% if instr(1, NowUrl, "/strategy/list.asp") > 0 Then %>class="current"<% End if %>><a href="<%=subUrl%>/strategy/list.asp">���� �н�����</a></li>
                    <li <% if instr(1, NowUrl, "/nangongtv/list.asp") > 0 Then %>class="current"<% End if %>><a href="<%=subUrl%>/nangongtv/list.asp">����TV</a></li>
                    <li <% if instr(1, NowUrl, "/followm/followm.asp#mContainer") > 0 Then %>class="current"<% End if %>><a href="<%=subUrl%>/followm/followm.asp#mContainer">Follow M</a></li>
                    <li><a href="<%=url_main%>/s/gong/examinfo/pass_opinion/index.asp" target="_blank">�հݼ���</a></li>
                </ul>
                <ul class="depth3-box">
                    <li class="depth3"><a href="javascript:;">Pass Mate<i></i></a></li>
                    <li><a href="<%=url_main%>/s/gong/examinfo/passmate/list.asp#mContainer" target="_blank">Pass Mate</a></li>
                </ul>
                <ul class="depth3-box">
                    <li class="depth3"><a href="javascript:;">�����&�հݼ�<i></i></a></li>
                    <li <% if instr(1, NowUrl, "/statistic/pass.asp") > 0 Then %>class="current"<% End if %>><a href="<%=subUrl%>/statistic/pass.asp">�����&�հݼ�</a></li>
                    <li <% if instr(1, NowUrl, "/statistic/statistic_2022.asp") > 0 Then %>class="current"<% End if %>><a href="<%=subUrl%>/statistic/statistic_2022.asp">�հ��� �м�</a></li>
                </ul>
                <ul class="depth3-box">
                    <li class="depth3"><a href="javascript:;">�������<i></i></a></li>
                    <!--�հ�����Į�� �� �и��� ���ϻ��� �ʿ�-->
                    <li <% if instr(1, NowUrl, "/news/list.asp") > 0 Then %>class="current"<% End if %>><a href="<%=subUrl%>/news/list.asp">�������</a></li>
                    <li <% if instr(1, NowUrl, "/news/list.asp") > 0 Then %>class="current"<% End if %>><a href="<%=subUrl%>/news/list.asp">���贺��</a></li>
                </ul>
                <ul class="depth3-box">
                    <li class="depth3"><a href="javascript:;">���⹮��<i></i></a></li>
                    <li <% if instr(1, NowUrl, "/library/list.asp") > 0 Then %>class="current"<% End if %>><a href="<%=subUrl%>/library/list.asp">���⹮��</a></li>
                    <li><a href="<%=url_main%>/s/gong/examinfo/explain/explain.asp?dt=20220618" target="_blank">�ؼ�����&����</a></li>
                    <!--off ��û <li <% 'if instr(1, NowUrl, "/analysis/index.asp") > 0 Then %>class="current"<% 'End if %>><a href="<%=subUrl%>/analysis/index.asp">��������м�</a></li>-->
                </ul>
            </div>

            <div class="fulldown-wrp <%=h_gubn%>">
                <!-- ������ S -->
                <ul class="inner">
                    <li>
                        <ul>
                            <li><a class="<%If instr(1, NowUrl, "/guide/guide.asp") > 0 Then%> on<%End if%>" href="<%=subUrl%>/guide/guide.asp"><span>��������</span></a></li>
                            <li><a class="<%If instr(1, NowUrl, "/guide/schedule.asp") > 0 Then%> on<%End if%>" href="<%=subUrl%>/guide/schedule.asp"><span>��������</span></a></li>
                            <li><a class="<%If instr(1, NowUrl, "/guide/series.asp") > 0 Then%> on<%End if%>" href="<%=subUrl%>/guide/series.asp"><span>��������</span></a></li>
                            <li><a class="" href="javascript:;"><span>������ ����Ž��</span></a></li>
                        </ul>
                    </li>
                    <li>
                        <ul>
                            <li><a class="" href="<%=url_main%>/exam/basic/gong_3/index.asp#eventWrap" target="_blank"><span>9�� ������</span></a></li>
                            <li><a class="" href="<%=url_main%>/exam/basic/gong_4/index.asp#eventWrap" target="_blank"><span>PSAT ������</span></a></li>
                        </ul>
                    </li>
                    <li>
                        <ul>
                            <li><a class="<%If instr(1, NowUrl, "/news/list.asp") > 0 Then%> on<%End if%>" href="<%=subUrl%>/news/list.asp"><span>�հ����� �÷�</span></a></li>
                            <li><a class="<%If instr(1, NowUrl, "/strategy/list.asp") > 0 Then%> on<%End if%>" href="<%=subUrl%>/strategy/list.asp"><span>���� �н�����</span></a></li>
                            <li><a class="<%If instr(1, NowUrl, "/nangongtv/list.asp") > 0 Then%> on<%End if%>" href="<%=subUrl%>/nangongtv/list.asp"><span>����TV</span></a></li>
                            <li><a class="<%If instr(1, NowUrl, "/followm/followm.asp#mContainer") > 0 Then%> on<%End if%>" href="<%=subUrl%>/followm/followm.asp#mContainer"><span>Follow M</span></a></li>
                            <li><a href="<%=url_main%>/s/gong/examinfo/pass_opinion/index.asp" target="_blank"><span>�հݼ���</span></a></li>
                        </ul>
                    </li>
                    <li>
                        <ul>
                            <li><a class="" href="<%=url_main%>/s/gong/examinfo/passmate/list.asp#mContainer" target="_blank"><span>PASS MATE</span></a></li>
                        </ul>
                    </li>
                    <li>
                        <ul>
                            <li><a class="<%If instr(1, NowUrl, "/statistic/pass.asp") > 0 Then%> on<%End if%>" href="<%=subUrl%>/statistic/pass.asp"><span>�����&�հݼ�</span></a></li>
                            <li><a class="<%If instr(1, NowUrl, "/statistic/statistic_2022.asp") > 0 Then%> on<%End if%>" href="<%=subUrl%>/statistic/statistic_2022.asp"><span>�հ��� �м�</span></a></li>
                        </ul>
                    </li>
                    <li>
                        <ul>
                            <li><a class="<%If instr(1, NowUrl, "/news/list.asp") > 0 Then%> on<%End if%>" href="<%=subUrl%>/news/list.asp"><span>�������</span></a></li>
                            <li><a class="<%If instr(1, NowUrl, "/news/list.asp") > 0 Then%> on<%End if%>" href="<%=subUrl%>/news/list.asp"><span>���贺��</span></a></li>
                        </ul>
                    </li>
                    <li>
                        <ul>
                            <li><a class="<%If instr(1, NowUrl, "/library/list.asp") > 0 Then%> on<%End if%>" href="<%=subUrl%>/library/list.asp"><span>���⹮��</span></a></li>
                            <li><a href="<%=url_main%>/s/gong/examinfo/explain/explain.asp?dt=20220618" target="_blank"><span>�ؼ����� & ����</span></a></li>
                            <!--off ��û <li><a class="<%If instr(1, NowUrl, "/analysis/index.asp") > 0 Then%> on<%End if%>" href="<%=subUrl%>/l/gong/analysis/index.asp"><span>��������м�</span></a></li>-->
                        </ul>
                    </li>
                </ul>
                <!-- ������ E -->
                <% if h_gubn = "sobang" then %>
                    <!-- �ҹ� S -->
                    <!-- �ҹ� E -->
                <% end if %>

                <% if h_gubn = "army" then %>
                    <!-- ������ S -->
                    <!-- ������ E -->
                <% end if %>                
            </div>


        </nav>
    </div>
    <!-- hd-utility / E -->
</div>
<script>
    var $ddaySlider = $('.dday-slider').slick({
        autoplay: true,
        autoplaySpeed: 3000,
        arrows: false,
        dots: false,
        infinite: true,
        vertical: true,
        verticalSwiping: true,     
        slidesToShow:1,
        direction: 'vertical',
        // pauseOnHover: false,
        touchThreshold: 100,
        pauseOnFocus: false,
    });
</script>

