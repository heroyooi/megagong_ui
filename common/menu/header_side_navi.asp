<!-- Side Bar Navi / ���� ���� ���̵�� S -->
<div id="quick_menu" class="side_quickMenu<% if instr(1, NowUrl, "/megagong.asp") = 0 then %><% else %> on<% end if %>">
    <div class="inner">
        <h1
            class="<% if hcode = "gongssel" Or hcode = "sobangcampus" Or hcode = "ansung" Or hcode = "ngbr" Then %>offline<% End if %>">
            <% if hcode = "gong" Then %>
            �ް�������
            <% elseif hcode = "sobang" Then %>
            �ް��ҹ�
            <% elseif hcode = "army" Then %>
            �ް�������
            <% elseif hcode="armycampus" Then %>
            �ް��������п�
            <% elseif hcode = "gongssel" Then %>
            �ް��������п�
            <% elseif hcode = "sobangcampus" Then %>
            �ް��ҹ��п�
            <% elseif hcode = "ansung" Then %>
            �ް������� ������
            <% elseif hcode = "ngbr" Then %>
            �ް������� ���ĸ�Ÿ
            <% End if %>
            
        </h1>
        <dl>
            <dt>�ΰ�</dt>
            <dd <% if hcode = "gong" Then %>class="on" <% End if %>><a href="<%=url_main %>" target="_blank"
                    title="������ (9/7��)">������ (9/7��)</a></dd>
            <dd <% if hcode = "sobang" Then %>class="on" <% End if %>><a href="<%=sobang_main %>" target="_blank"
                    title="�ҹ�">�ҹ�</a></dd>
            <dd <% if hcode = "army" Then %>class="on" <% End if %>><a href="<%=army_main %>" target="_blank"
                    title="������">������ <img src="<%=img_main%>/common/ic_new.gif" alt="New"
                        style="vertical-align:middle;margin:-3px 0 0 3px; display: inline-block;"></a></dd>
        </dl>
        <dl>
            <dt>�п�</dt>
            <dd <% if hcode = "gongssel" Then %>class="on" <% End if %>><a href="<%=gongssel_main %>" target="_blank"
                    title="�������п� (9/7��)">�������п� (9/7��)</a></dd>
            <dd <% if hcode = "sobangcampus" Then %>class="on" <% End if %>><a href="<%=sobangcampus_main %>"
                    target="_blank" title="�ҹ��п�">�ҹ��п�</a></dd>
          
            <dd <% if hcode = "armycampus" Then %>class="on" <% End if %>><a
                    href="<%=army_main %>/s/army/campus/index.asp" target="_blank" title="�������п�">�������п� <img
                        src="<%=img_main%>/common/ic_new.gif" alt="New"
                        style="vertical-align:middle;margin:-3px 0 0 3px; display: inline-block;"></a></dd>
            <dd <% if hcode = "ansung" Then %>class="on" <% End if %>><a href="<%=ansung_main %>" target="_blank"
                    title="��� ������ (����, ����, �ҹ�)">��� ������ <br>(����, ����, �ҹ�)</a></dd>
        </dl>

        
        <dl>
            <dt class="blindw">�ް������� ���ĸ�Ÿ</dt>
            <dd <% if hcode = "ngbr" Then %>class="on" <% End if %>><a href="<%=ngbr_main %>" target="_blank"
                    title="�ް������� ���ĸ�Ÿ">�ް������� ���ĸ�Ÿ</a></dd>
        </dl>
       

        <dl class="ngbr">
            <dt class="blindw">�ް������</dt>
            <dd <% if hcode = "job" Then %>class="on" <% End if %>><a href="https://www.megajob.co.kr/megajob.asp " target="_blank"
                    title="�ް������">�ް������ <img
                    src="<%=img_main%>/common/ic_new.gif" alt="New"
                    style="vertical-align:middle;margin:-3px 0 0 3px; display: inline-block;"></a></dd>
        </dl>
        

        <!-- ���޴� �� �Ѹ���� (������,�ҹ游 ����) S -->
        <% if hcode = "gong" or hcode = "sobang" or hcode = "sobangcampus" or hcode = "gongssel" or hcode = "army" Then %>
            <div class="bnr_wrap slider sld1">
                <div id="quick_slider1" class="item_wrap">
                    <% if hcode = "gong" Then %>
                        <% if cdate(lo_now_date) < cdate("2022-09-30") then %>
                        <div class="item">
                            <img src="<%=img_main%>/m/2022/0801_tclass/quick_bnr01.jpg" alt="9~10�� ���չ� ����" usemap="#quick_map1"/>
                            <map id="quick_map1" name="quick_map1">
                                <area shape="rect" alt="9��" coords="36,70,71,90"
                                    href="<%=gongssel_main %>/c/gongssel/schedule/2021/overall/overall_05_all_9.asp" target="_blank" />
                                <area shape="rect" alt="7��" coords="78,70,110,90"
                                    href="<%=gongssel_main %>/c/gongssel/schedule/2021/overall/overall_05_all_7.asp" target="_blank" />
                            </map>
                        </div>
                        <div class="item">
                            <img src="<%=img_main%>/m/2022/0801_gongssel/quick_bnr.jpg" alt="9~10�� �ܰ� ����" usemap="#quick_map2" />
                            <map id="quick_map2" name="quick_map2">
                                <area shape="rect" alt="9��" coords="36,70,71,90"
                                    href="<%=gongssel_main %>/c/gongssel/schedule/2021/schedule.asp?mcode=11&gcd=9&lcd=402" target="_blank" />
                                <area shape="rect" alt="7��" coords="78,70,110,90"
                                    href="<%=gongssel_main %>/c/gongssel/schedule/2021/schedule.asp?mcode=11&gcd=7&lcd=402" target="_blank" />
                            </map>
                        </div>
                        <% else %>
                        <div class="item">
                            <img src="<%=img_main%>/m/2022/0930_gongssel/quick_bnr01.jpg" alt="11~12�� ���չ� ����" usemap="#quick_map1"/>
                            <map id="quick_map1" name="quick_map1">
                                <area shape="rect" alt="9��" coords="36,70,71,90"
                                    href="<%=gongssel_main %>/c/gongssel/schedule/2021/overall/overall_05_all_9.asp" target="_blank" />
                                <area shape="rect" alt="7��" coords="78,70,110,90"
                                    href="<%=gongssel_main %>/c/gongssel/schedule/2021/overall/overall_05_all_7.asp" target="_blank" />
                            </map>
                        </div>
                        <div class="item">
                            <img src="<%=img_main%>/m/2022/0930_gongssel/quick_bnr02.jpg" alt="11~12�� �ܰ� ����" usemap="#quick_map2" />
                            <map id="quick_map2" name="quick_map2">
                                <area shape="rect" alt="9��" coords="36,70,71,90"
                                    href="<%=gongssel_main %>/c/gongssel/schedule/2021/schedule.asp?mcode=11&gcd=9&lcd=402" target="_blank" />
                                <area shape="rect" alt="7��" coords="78,70,110,90"
                                    href="<%=gongssel_main %>/c/gongssel/schedule/2021/schedule.asp?mcode=11&gcd=7&lcd=402" target="_blank" />
                            </map>
                        </div>
                        <% end if %>
                        <% if cdate(lo_now_date) < cdate("2022-10-06") then %>
                        <div class="item">
                            <% if cdate(lo_now_date) < cdate("2022-03-28") then%>
                            <img src="<%=img_main%>/m/2022/0126_gongssel/quick_bnr_synth.jpg" alt="3~4�� �ܰ� ����" usemap="#quick_map2" />
                            <% elseif cdate(lo_now_date) < cdate("2022-05-24") then%>
                            <img src="<%=img_main%>/m/2022/0325_gongssel/quick_bnr_synth.jpg" alt="5~6�� �ܰ� ����" usemap="#quick_map2" />
                            <map id="quick_map2" name="quick_map2">
                                <area shape="rect" alt="9��" coords="26,70,71,90" href="<%=gongssel_main %>/c/gongssel/schedule/2021/schedule.asp?mcode=11&gcd=9&lcd=402" target="_blank" />
                                <area shape="rect" alt="7��" coords="78,70,120,90" href="<%=gongssel_main %>/c/gongssel/schedule/2021/schedule.asp?mcode=11&gcd=7&lcd=402" target="_blank" />
                            </map>
                            <% else %>
                            <a href="<%=gongssel_main%>/c/gongssel/help/notice/view.asp?idx=3712" target="_blank"><img src="<%=img_main%>/m/2022/0524_gongssel/quick_bnr2.jpg" alt="6�� �⺻������ ���չ�"/></a>
                            <% end if %>
                        </div>
                        <% end if %>

                        <div class="item">
                            <img src="<%=img_main%>/m/2022/0126_gongssel/law/side_bn.jpg" alt="1~2�� ���� Ư��" usemap="#quick_map4" />
                            <map id="quick_map3" name="quick_map3">
                                <area shape="rect" alt="9��" coords="26,70,71,90" href="<%=gongssel_main %>/c/gongssel/schedule/2021/schedule.asp?mcode=13&gcd=9&lcd=408" target="_blank" />
                                <area shape="rect" alt="7��" coords="78,70,120,90" href="<%=gongssel_main %>/c/gongssel/schedule/2021/schedule.asp?mcode=13&gcd=7&lcd=408" target="_blank" />
                            </map>
                            <map id="quick_map4" name="quick_map4">
                                <area shape="rect" alt="9��" coords="9,72,46,92" href="<%=gongssel_main %>/c/gongssel/schedule/2021/schedule.asp?mcode=13&gcd=9&lcd=408" target="_blank" />
                                <area shape="rect" alt="7��" coords="50,72,86,92" href="<%=gongssel_main %>/c/gongssel/schedule/2021/schedule.asp?mcode=13&gcd=7&lcd=408" target="_blank" />
                                <area shape="rect" alt="������" coords="88,72,142,92" href="<%=gongssel_main %>/c/gongssel/schedule/2021/low/low03.asp" target="_blank" />
                            </map>
                        </div>
                        <% if cdate(lo_now_date) < cdate("2022-11-02 16:00") then %>
                        <div class="item">
                            <a href="<%=gongssel_main%>/c/gongssel/schedule/2021/low/low01.asp" target="_blank"><img src="<%=img_main%>/m/2022/0701_gongssel/quick_bnr1.jpg" alt="8~11�� ������ �⺻�̷� ���չ�" /></a>
                        </div>
                        <div class="item">
                            <a href="<%=gongssel_main%>/c/gongssel/schedule/2021/low/low02.asp" target="_blank"><img src="<%=img_main%>/m/2022/0701_gongssel/quick_bnr2.jpg" alt="8~11�� �ް� ������ �⺻�̷� �ܰ�" /></a>
                        </div>
                        <% else %>
                        <div class="item">
                            <a href="<%=gongssel_main%>/c/gongssel/schedule/2021/low/low01.asp" target="_blank"><img src="<%=img_main%>/m/2022/1101_law/quick_bnr01.jpg" alt="12~1�� ������ ��ȭ�̷� ���չ�" /></a>
                        </div>
                        <div class="item">
                            <a href="<%=gongssel_main%>/c/gongssel/schedule/2021/low/low02.asp" target="_blank"><img src="<%=img_main%>/m/2022/1101_law/quick_bnr02.jpg" alt="12~1�� �ް� ������ ��ȭ�̷� �ܰ�" /></a>
                        </div>
                        <% end if %>
                        
                        <div class="item">
                            <a href="<%=gongssel_main %>/c/gongssel/schedule/2021/low/low_synthesis.asp" target="_blank">
                                <img src="<%=img_main%>/m/2022/0303_low/quick.png" alt="4�� �ް� ������ ��ȯ ���չ�" />
                            </a>
                        </div>

                    <% elseif hcode = "sobang" Then %>
                        <%If cdate(lo_now_date) < cdate("2022-09-11") then %>
                        <div class="item">
                            <a href="/c/sobang/event/2022/04250006/index.asp#eventWrap" target="_blank">
                                <%If cdate(lo_now_date) < cdate("2022-07-18") then%>
                                <img src="<%=img_main%>/m/2022/0509_sbcps/left_bnr.jpg" alt="��-ç���� ����2 7�� ���� ����" />
                                <% else %>
                                <img src="<%=img_main%>/m/2022/0718_sobang/bnr_campus3.png" alt="��-ç���� ����3 9�� ���� ����" />
                                <% end if %>
                            </a>
                        </div>
                        <%End if%>

                        <div class="item">
                            <a href="/c/sobang/academy/burning.asp#eventWrap" target="_blank" title="���ο������� ����Ŭ����2.0">
                                
                                <%If cdate(lo_now_date) < cdate("2022-07-18") then%>
                                <img src="<%=img_main%>/m/2022/0516_sbcampus/bnr_campus_1.jpg" alt="���ο������� ����Ŭ����2.0" />
                                <% elseif cdate(lo_now_date) < cdate("2022-09-19") then %>
                                <img src="<%=img_main%>/m/2022/0718_sobang/bnr_campus1.png" alt="���ο������� ����Ŭ����2.0" />
                                <% else %>
                                <img src="<%=img_main%>/m/2022/0919_sbc/bn_mini_burn.jpg" alt="���ο������� ����Ŭ����2.0" />
                                <% end if %>
                            </a>
                        </div>
                        
                        <div class="item">
                            <a href="/c/sobang/event/2022/05160007/index.asp" target="_blank" title="�������ڽ��� ����Ŭ����">

                                <%If cdate(lo_now_date) < cdate("2022-07-18") then%>
                                <img src="<%=img_main%>/m/2022/0516_sbcampus/bnr_campus_2.jpg" alt="�������ڽ��� ����Ŭ����" />
                                <% elseif cdate(lo_now_date) < cdate("2022-09-19") then %>
                                <img src="<%=img_main%>/m/2022/0718_sobang/bnr_campus2.png" alt="�������ڽ��� ����Ŭ����" />
                                <% else %>
                                <img src="<%=img_main%>/m/2022/0919_sbc/bn_mini_self.jpg" alt="�������ڽ��� ����Ŭ����" />
                                <% end if %>
                            </a>
                        </div>

                    <% elseif hcode = "sobangcampus" Then %>
                        <div class="item">
                            <a href="/c/sobang/academy/burning.asp#eventWrap"  title="���ο������� ����Ŭ����2.0" target="_blank">
                                <% if cdate(lo_now_date) < cdate("2022-09-19") then %>
                                <img src="<%=img_main%>/m/2022/0718_sobang/bnr_campus1.png" alt="���ο������� ����Ŭ����2.0" />
                                <% else %>
                                <img src="<%=img_main%>/m/2022/0919_sbc/bn_mini_burn.jpg" alt="���ο������� ����Ŭ����2.0" />
                                <% end if %>                                
                            </a>
                        </div>
                        <div class="item">
                            <a href="/c/sobang/event/2022/05160007/index.asp"  title="�������ڽ��� ����Ŭ����" target="_blank">
                                <% if cdate(lo_now_date) < cdate("2022-09-19") then %>
                                <img src="<%=img_main%>/m/2022/0718_sobang/bnr_campus2.png" alt="�������ڽ��� ����Ŭ����" />
                                <% else %>
                                <img src="<%=img_main%>/m/2022/0919_sbc/bn_mini_self.jpg" alt="�������ڽ��� ����Ŭ����" />
                                <% end if %>                                
                            </a>
                        </div>

                    <% elseif hcode = "gongssel" Then %>
                        <% if cdate(lo_now_date) >= cdate("2022-07-04") and cdate(lo_now_date) < cdate("2022-08-01") then %>
                        <div class="item">
                            <a href="/c/gongssel/schedule/2021/overall/challenge_05_7.asp" target="_blank" title="4���� �ϼ� 7�� ç������">
                                <img src="<%=img_main%>/m/2022/0704_bnr/quick_bnr.jpg" alt="4���� �ϼ� 7�� ç������" />
                            </a>
                        </div>
                        <% end if %>
                        
                        <%If cdate(lo_now_date) < cdate("2022-08-01") then%>
                        <div class="item" style="position:relative;">
                            <img src="<%=img_main%>/m/2022/0530_gongssel/quick_bnr1.jpg" alt="7~8�� ���չ� ����" usemap="#quick_map1"/>
                            <map id="quick_map1" name="quick_map1">
                                <area shape="rect" alt="9��" coords="36,70,71,90"
                                    href="<%=gongssel_main %>/c/gongssel/schedule/2021/overall/overall_05_all_9.asp" target="_blank" />
                                <area shape="rect" alt="7��" coords="78,70,110,90"
                                    href="<%=gongssel_main %>/c/gongssel/schedule/2021/overall/overall_05_all_7.asp" target="_blank" />
                            </map>
                        </div>
                        <div class="item">
                            <img src="<%=img_main%>/m/2022/0530_gongssel/quick_bnr2.jpg" alt="7~8�� �ܰ� ����" usemap="#quick_map2"/>
                            <map id="quick_map2" name="quick_map2">
                                <area shape="rect" alt="9��" coords="36,70,71,90"
                                    href="<%=gongssel_main %>/c/gongssel/schedule/2021/schedule.asp?mcode=11&gcd=9&lcd=402" target="_blank" />
                                <area shape="rect" alt="7��" coords="78,70,110,90"
                                    href="<%=gongssel_main %>/c/gongssel/schedule/2021/schedule.asp?mcode=11&gcd=7&lcd=402" target="_blank" />
                            </map>
                        </div>
                        <% elseif cdate(lo_now_date) < cdate("2022-09-30") then%>
                        <div class="item">
                            <img src="<%=img_main%>/m/2022/0801_tclass/quick_bnr01.jpg" alt="9~10�� ���չ� ����" usemap="#quick_map1"/>
                            <map id="quick_map1" name="quick_map1">
                                <area shape="rect" alt="9��" coords="36,70,71,90"
                                    href="<%=gongssel_main %>/c/gongssel/schedule/2021/overall/overall_05_all_9.asp" />
                                <area shape="rect" alt="7��" coords="78,70,110,90"
                                    href="<%=gongssel_main %>/c/gongssel/schedule/2021/overall/overall_05_all_7.asp" />
                            </map>
                        </div>
                        <div class="item">
                            <img src="<%=img_main%>/m/2022/0801_gongssel/quick_bnr.jpg" alt="9~10�� �ܰ� ����" usemap="#quick_map2"/>
                            <map id="quick_map2" name="quick_map2">
                                <area shape="rect" alt="9��" coords="36,70,71,90"
                                    href="<%=gongssel_main %>/c/gongssel/schedule/2021/schedule.asp?mcode=11&gcd=9&lcd=402" target="_blank" />
                                <area shape="rect" alt="7��" coords="78,70,110,90"
                                    href="<%=gongssel_main %>/c/gongssel/schedule/2021/schedule.asp?mcode=11&gcd=7&lcd=402" target="_blank" />
                            </map>
                        </div>
                        <%else%>
                        <div class="item">
                            <img src="<%=img_main%>/m/2022/0930_gongssel/quick_bnr01.jpg" alt="11~12�� ���չ� ����" usemap="#quick_map1"/>
                            <map id="quick_map1" name="quick_map1">
                                <area shape="rect" alt="9��" coords="36,70,71,90"
                                    href="<%=gongssel_main %>/c/gongssel/schedule/2021/overall/overall_05_all_9.asp" target="_blank"/>
                                <area shape="rect" alt="7��" coords="78,70,110,90"
                                    href="<%=gongssel_main %>/c/gongssel/schedule/2021/overall/overall_05_all_7.asp" target="_blank"/>
                            </map>
                        </div>
                        <div class="item">
                            <img src="<%=img_main%>/m/2022/0930_gongssel/quick_bnr02.jpg " alt="11~12�� �ܰ� ����" usemap="#quick_map2"/>
                            <map id="quick_map2" name="quick_map2">
                                <area shape="rect" alt="9��" coords="36,70,71,90"
                                    href="<%=gongssel_main %>/c/gongssel/schedule/2021/schedule.asp?mcode=11&gcd=9&lcd=402" target="_blank" />
                                <area shape="rect" alt="7��" coords="78,70,110,90"
                                    href="<%=gongssel_main %>/c/gongssel/schedule/2021/schedule.asp?mcode=11&gcd=7&lcd=402" target="_blank" />
                            </map>
                        </div>
                        <%end if%>
                        <div class="item">
                            <%If cdate(lo_now_date) < cdate("2021-12-02") then%>
                            <img src="<%=img_main%>/m/2021/1022_special/mini_bn.png" alt="11~12�� ���� Ư��" usemap="#quick_map3" />
                            <%elseIf cdate(lo_now_date) < cdate("2022-01-07") then%>
                            <img src="<%=img_main%>/m/2021/1022_special/mini_bn_1201.png" alt="1~2�� ���� Ư��" usemap="#quick_map3" />
                            <%elseIf cdate(lo_now_date) < cdate("2022-01-26") then%>
                            <img src="<%=img_main%>/m/2022/0107_law/side_bn.jpg" alt="1~2�� ���� Ư��" usemap="#quick_map4" />
                            <%else%>
                            <img src="<%=img_main%>/m/2022/0126_gongssel/law/side_bn.jpg" alt="3~4�� ���� Ư��" usemap="#quick_map4" />
                            <%end if%>
                            <map id="quick_map3" name="quick_map3">
                                <area shape="rect" alt="9��" coords="26,70,71,90" href="<%=gongssel_main %>/c/gongssel/schedule/2021/schedule.asp?mcode=13&gcd=9&lcd=408" target="_blank" />
                                <area shape="rect" alt="7��" coords="78,70,120,90" href="<%=gongssel_main %>/c/gongssel/schedule/2021/schedule.asp?mcode=13&gcd=7&lcd=408" target="_blank" />
                            </map>
                            <map id="quick_map4" name="quick_map4">
                                <area shape="rect" alt="9��" coords="9,72,46,92" href="<%=gongssel_main %>/c/gongssel/schedule/2021/schedule.asp?mcode=13&gcd=9&lcd=408" target="_blank" />
                                <area shape="rect" alt="7��" coords="50,72,86,92" href="<%=gongssel_main %>/c/gongssel/schedule/2021/schedule.asp?mcode=13&gcd=7&lcd=408" target="_blank" />
                                <area shape="rect" alt="������" coords="88,72,142,92" href="<%=gongssel_main %>/c/gongssel/schedule/2021/low/low03.asp" target="_blank" />
                            </map>
                        </div>
                        <% if cdate(lo_now_date) < cdate("2022-11-02 16:00") then %>
                        <div class="item">
                            <a href="<%=gongssel_main%>/c/gongssel/schedule/2021/low/low01.asp" target="_blank"><img src="<%=img_main%>/m/2022/0701_gongssel/quick_bnr1.jpg" alt="8~11�� ������ �⺻�̷� ���չ�" /></a>
                        </div>
                        <div class="item">
                            <a href="<%=gongssel_main%>/c/gongssel/schedule/2021/low/low02.asp" target="_blank"><img src="<%=img_main%>/m/2022/0701_gongssel/quick_bnr2.jpg" alt="8~11�� �ް� ������ �⺻�̷� �ܰ�" /></a>
                        </div>
                        <% else %>
                        <div class="item">
                            <a href="<%=gongssel_main%>/c/gongssel/schedule/2021/low/low01.asp" target="_blank"><img src="<%=img_main%>/m/2022/1101_law/quick_bnr01.jpg" alt="12~1�� ������ ��ȭ�̷� ���չ�" /></a>
                        </div>
                        <div class="item">
                            <a href="<%=gongssel_main%>/c/gongssel/schedule/2021/low/low02.asp" target="_blank"><img src="<%=img_main%>/m/2022/1101_law/quick_bnr02.jpg" alt="12~1�� �ް� ������ ��ȭ�̷� �ܰ�" /></a>
                        </div>
                        <% end if %>
                        <!-- <div class="item">
                            <a href="<%=gongssel_main %>/c/gongssel/schedule/2021/am/am_en_12_9.asp" target="_blank">
                                <img src="<%=img_main%>/m/2021/1108_engfocus/220103/quick_bnr.jpg" alt="2�� �������߹� (�⺻ ���־�)" />
                            </a>
                        </div> -->
                        
                        <% If cdate(lo_now_date) < cdate("2022-03-03") then%>
                        <div class="item">
                            <a href="<%=gongssel_main %>/c/gongssel/schedule/2021/low/low01.asp" target="_blank">
                                <img src="<%=img_main%>/m/2022/0117_low/quick1.png" alt="2~6�� �ް� ������ ��ȯ ���չ�" />
                            </a>
                        </div>
                        <% else %>
                        <div class="item">
                            <a href="<%=gongssel_main %>/c/gongssel/schedule/2021/low/low_synthesis.asp" target="_blank">
                                <img src="<%=img_main%>/m/2022/0303_low/quick.png" alt="4�� �ް� ������ ��ȯ ���չ�" />
                            </a>
                        </div>
                        <% end if %>

                        <% if cdate(lo_now_date) < cdate("2022-07-19") then%>
                        <div class="item">
                            <a href="/c/gongssel/schedule/2021/low/low02.asp#eventWrap" target="_blank">
                                <img src="<%=img_main%>/m/2022/0311_low/quick2.png" alt="4�� ������ �� ���� ���� ���ǰ�� �ܰ�" />
                            </a>
                        </div>
                        <div class="item">
                            <a href="<%=gongssel_main %>/c/gongssel/schedule/2021/low/low02.asp" target="_blank">
                                <img src="<%=img_main%>/m/2022/0117_low/quick2.png" alt="2�� ������ ������ ���ǰ�� �ܰ�" />
                            </a>
                        </div>
                        <% end if %>


                    <% elseif hcode = "army" Then %>

                        <!--������ �п��ϰ��-->
                        <% if gmenu = "7" Then %>
                            <% If cdate(lo_now_date) >= cdate("2022-03-14") and cdate(lo_now_date) < cdate("2022-04-17") then%>
                            <div class="item">
                                <a href="/s/army/campus/event/2022/03140001/index.asp#eventWrap" target="_blank">
                                    <img src="<%=img_main%>/m/2022/0331_army/quick_bnr3.jpg" alt="�ܱ� �����" />
                                </a>
                            </div>
                            <% end if %>
                        <!--//������ �п��ϰ��-->
                        <% else %>
                            <% If cdate(lo_now_date) >= cdate("2022-03-14") and cdate(lo_now_date) < cdate("2022-04-11") then%>

                            <div class="item">
                                <a href="/s/army/campus/event/2022/03140001/index.asp#eventWrap" target="_blank">
                                    <% if cdate(lo_now_date) < cdate("2022-04-01") then %>
                                    <img src="<%=img_main%>/m/2022/0107_army/quick_bnr3_220314.png" alt="�ܱ� �����" />
                                    <% else %>
                                    <img src="<%=img_main%>/m/2022/0331_army/quick_bnr3.jpg" alt="�ܱ� �����" />
                                    <% end if %>
                                </a>
                            </div>
                            <% end if %>
                        <% end if %>
                        <% If cdate(lo_now_date) >= cdate("2022-06-20") and cdate(lo_now_date) < cdate("2022-07-08 14:00") then%>
                        <div class="item">
                            <a href="/s/army/campus/event/2022/06210002/index.asp#eventWrap" target="_blank">
                                <img src="<%=img_main%>/m/2022/0621_armytest/bn_mini.jpg" alt="���̳� ���ǰ��" />
                            </a>
                        </div>
                        <% end if %>
                        
                        <% if cdate(lo_now_date) >= cdate("2022-07-27") then %>
                            <% if  cdate(lo_now_date) < cdate("2022-07-30 17:00") then %>
                            <div class="item">
                                <a href="/s/army/event/2022/07180010/index.asp#eventWrap" target="_blank" title="������ ����ȸ">
                                    <img src="<%=img_main%>/m/2022/0718_army/quick_bnr2.jpg" alt="������ ����ȸ" />
                                </a>
                            </div>
                            <% end if %>
                            <% if cdate(lo_now_date) < cdate("2022-08-20 12:00") then %>
                            <div class="item">
                                <a href="/s/army/event/2022/07180010/index.asp#eventWrap" target="_blank" title="�������� ������">
                                    <img src="<%=img_main%>/m/2022/0718_army/quick_bnr1.jpg" alt="�������� ������" />
                                </a>
                            </div>
                            <% end if %>
                            <% if cdate(lo_now_date) < cdate("2022-08-20 14:30") then %>
                            <div class="item">
                                <a href="/s/army/event/2022/07270012/index.asp#eventWrap" target="_blank" title="2023 ��� 8�� ���弳��ȸ">
                                    <img src="<%=img_main%>/m/2022/0727_armycps/quick_bnr.jpg" alt="2023 ��� 8�� ���弳��ȸ" />
                                </a>
                            </div>
                            <% end if %>

                            <% if cdate(lo_now_date) < cdate("2022-08-16") then %>
                            <div class="item">
                                <a href="/s/army/campus/event/2022/07270003/index.asp#eventWrap" target="_blank" title="9�� ����, ALL-CARE ������ ���չ�">
                                    <img src="<%=img_main%>/m/2022/0727_army/quick_bnr_1.jpg" alt="9�� ����, ALL-CARE ������ ���չ�" />
                                </a>
                            </div>
                            <div class="item">
                                <a href="/s/army/campus/event/2022/07270004/index.asp#eventWrap" target="_blank" title="9�� ����, ALL-CARE �����̾� ���� CLASS">
                                    <img src="<%=img_main%>/m/2022/0727_army/quick_bnr_2.jpg" alt="9�� ����, ALL-CARE �����̾� ���� CLASS" />
                                </a>
                            </div>
                            <% end if %>

                            <% if cdate(lo_now_date) >= cdate("2022-08-16") and cdate(lo_now_date) < cdate("2022-09-19") then %>
                            <div class="item">
                                <a href="/s/army/campus/event/2022/07270003/index.asp#eventWrap" target="_blank" title="9�� ����, ALL-CARE ������ ���չ�">
                                    <img src="<%=img_main%>/m/2022/0727_army/0812/quick_bnr_1.jpg" alt="9�� ����, ALL-CARE ������ ���չ�" />
                                </a>
                            </div>
                            <div class="item">
                                <a href="/s/army/campus/event/2022/07270004/index.asp#eventWrap" target="_blank" title="9�� ����, ALL-CARE �����̾� ���� CLASS">
                                    <img src="<%=img_main%>/m/2022/0727_army/0812/quick_bnr_2.jpg" alt="9�� ����, ALL-CARE �����̾� ���� CLASS" />
                                </a>
                            </div>
                            <% end if %>

                            <% if cdate(lo_now_date) >= cdate("2022-09-28") and cdate(lo_now_date) < cdate("2022-09-30")  then %>
                            <div class="item">
                                <a href="/s/army/event/2022/07270012/index.asp#eventWrap" title="������ �п� 10�� ���� ����ȸ" target="_blank">
                                    <img src="<%=img_main%>/m/2022/0929_army10/quick_bnr.png" alt="������ �п� 10�� ���� ����ȸ" />
                                </a>
                            </div>
                            <% end if %>
                            <% if cdate(lo_now_date) >= cdate("2022-10-17") then %>
                            <div class="item">
                                <a href="/s/army/campus/event/2022/10170006/index.asp#eventWrap" title="��ç����">
                                    <img src="<%=img_main%>/m/2022/1017_rechall/bn_sky.png" alt="��ç����" />
                                </a>
                            </div>
                            <% end if %>


                            <% if cdate(lo_now_date) >= cdate("2022-09-30") and cdate(lo_now_date) < cdate("2022-10-29 14:30")  then %>
                            <div class="item">
                                <% if cdate(lo_now_date) < cdate("2022-10-11") then %>
                                <a href="javascript:;" onclick="openPop('apply')" title="������ �п� 10�� ���� ����ȸ">
                                    <img src="<%=img_main%>/m/2022/0929_army10/quick_bnr.png" alt="������ �п� 10�� ���� ����ȸ" />
                                </a>
                                <% else %>
                                <a href="/s/army/event/2022/07270012/index.asp#eventWrap" target="_blank" title="������ �п� 10�� ���� ����ȸ">
                                    <img src="<%=img_main%>/m/2022/0929_army10/quick_bnr.png" alt="������ �п� 10�� ���� ����ȸ" />
                                </a>                                
                                <% end if %>
                            </div>
                            <% end if %>

                            <% 'if cdate(lo_now_date) < cdate("2022-10-17") then %>
                            <% if cdate(lo_now_date) >= cdate("2022-09-19") then %>
                            <div class="item">
                                <a href="/s/army/campus/event/2022/07270003/index.asp#eventWrap" target="_blank" title="11�� ����, ALL-CARE ������ ���չ�">
                                    <img src="<%=img_main%>/m/2022/0919_army/quick_bnr_1.jpg" alt="11�� ����, ALL-CARE ������ ���չ�" />
                                </a>
                            </div>
                            <div class="item">
                                <a href="/s/army/campus/event/2022/07270004/index.asp#eventWrap" target="_blank" title="11�� ����, ALL-CARE �����̾� ���� CLASS">
                                    <img src="<%=img_main%>/m/2022/0919_army/quick_bnr_2.jpg" alt="11�� ����, ALL-CARE �����̾� ���� CLASS" />
                                </a>
                            </div>
                            <% end if %>
                            <% 'end if %>


                        <% else %>
                            <% if cdate(lo_now_date) >= cdate("2022-07-18") and cdate(lo_now_date) < cdate("2022-09-04") then %>
                            <div class="item">
                                <a href="/s/army/event/2022/07180010/index.asp#eventWrap" target="_blank" title="�������� ������">
                                    <img src="<%=img_main%>/m/2022/0718_army/quick_bnr1.jpg" alt="�������� ������" />
                                </a>
                            </div>
                            <% end if %>

                            <% if cdate(lo_now_date) >= cdate("2022-07-18") and cdate(lo_now_date) < cdate("2022-07-30 17:00") then %>
                            <div class="item">
                                <a href="/s/army/event/2022/07180010/index.asp#eventWrap" target="_blank" title="7�� ���弳��ȸ">
                                    <img src="<%=img_main%>/m/2022/0718_army/quick_bnr2.jpg" alt="7�� ���弳��ȸ" />
                                </a>
                            </div>
                            <% end if %>
                        <% end if %>

                        

                    <% End if %>
                </div>
                <div class="counting">
                    <span>1</span> /
                    <strong class="total"></strong>
                    <a href="javascript:;" id="quick_prev1" class="arrow prev" title="����">����</a>
                    <a href="javascript:;" id="quick_next1" class="arrow next" title="����">����</a>
                </div>
            </div>

            <div class="bnr_wrap slider sld2">
                <div id="quick_slider2" class="item_wrap">
                    <% if hcode = "gong" Then %>
                        <div class="item">
                            <a href="/c/ansung/program/gong/allcare.asp" target="_blank" title="9�� ������ ��� All-Care CLASS">
                                <img src="<%=img_main%>/m/2021/0201_main_new/gong/quick_bnr5.jpg"
                                    alt="9�� ������ ��� All-Care CLASS" />
                            </a>
                        </div>
                        <div class="item">
                            <a href="/c/ansung/program/police/2020/all_care_2.asp" target="_blank"
                                title="���� ������ ��� All-Care CLASS">
                                <img src="<%=img_main%>/m/2021/0201_main_new/gong/quick_bnr6.jpg"
                                    alt="���� ������ ��� All-Care CLASS" />
                            </a>
                        </div>
                        <div class="item">
                            <a href="/c/ansung/program/sobang/2020/all_care_self2.asp" target="_blank"
                                title="�ҹ� ������ ��� All-Care CLASS">
                                <img src="<%=img_main%>/m/2021/0201_main_new/gong/quick_bnr7.jpg"
                                    alt="�ҹ� ������ ��� All-Care CLASS" />
                            </a>
                        </div>
                        <div class="item">
                            <%If cdate(lo_now_date) < cdate("2022-04-06") then%>
                            <a href="/c/ansung/pass/2021/pass_1.asp" target="_blank" title="2021�� ������/����/�ҹ� �ʱ��հ��� ��229��">
                                <img src="<%=img_main%>/m/2021/0831_ansung/quick_bnr_ansung.jpg" alt="2021�� ������/����/�ҹ� �ʱ��հ��� ��229��" />
                            </a>
                            <% elseIf cdate(lo_now_date) < cdate("2022-05-16") then%>
                            <a href="/c/ansung/pass/2022/pass_1.asp" target="_blank" title="�����ʱ��հ��� 904��">
                                <img src="<%=img_main%>/m/2021/0831_ansung/quick_bnr_ansung_0407.jpg" alt="�����ʱ��հ��� 904��" />
                            </a>
                            <% elseIf cdate(lo_now_date) < cdate("2022-07-27") then%>
                            <a href="/c/ansung/pass/2022/pass_1.asp" target="_blank" title="�����ʱ��հ��� 966��">
                                <img src="<%=img_main%>/m/2022/0516_ansung/quick_bnr_ansung.jpg" alt="�����ʱ��հ��� 966��" />
                            </a>
                            <% elseIf cdate(lo_now_date) < cdate("2022-08-03") then%>
                            <a href="/c/ansung/pass/2022/pass_1.asp" target="_blank" title="�����ʱ��հ��� 1,009��">
                                <img src="<%=img_main%>/m/2022/0727_ansung/quick_bnr_ansung.jpg" alt="�����ʱ��հ��� 1,009��" />
                            </a>
                            <% elseIf cdate(lo_now_date) >= cdate("2022-09-02") then%>
                            <a href="/c/ansung/pass/2022/pass_1.asp" target="_blank" title="2022�� �ʱ� �հ��� 233��">
                                <img src="<%=img_main%>/m/2022/0906_ansung/quick_bnr_ansung.jpg" alt="2022�� �ʱ� �հ��� 233��" />
                            </a>
                            <% else %>
                            <a href="/c/ansung/pass/2022/pass_1.asp" target="_blank" title="�����ʱ��հ��� 1,044��">
                                <img src="<%=img_main%>/m/2022/0803_ansung/quick_bnr_ansung.jpg" alt="�����ʱ��հ��� 1,044��" />
                            </a>
                            <% End if %>

                        </div>

                    <% elseif hcode = "sobang" Then %>
                        
                        <div class="item">
                            <a href="<%=ansung_main %>/c/ansung/program/sobang/2020/all_care_self2.asp" target="_blank">
                                <img src="<%=img_main%>/m/2021/1020_sobang/bn_left_sobang.jpg" alt="����ȭ�� �հ��� �� �ҹ������ �ʱ� �հݹ�" />
                            </a>
                        </div>

                    <% elseif hcode = "sobangcampus" Then %>
                        <% if cdate(lo_now_date) >= cdate("2022-09-19") then %>
                        <div class="item">
                            <a href="/c/sobang/event/2022/09190014/index.asp#eventWrap" title="5���� ��ä �ܵ���" target="_blank">
                                <img src="<%=img_main%>/m/2022/0919_sbc/bn_mini_single.jpg" alt="5���� ��ä �ܵ���" />
                            </a>
                        </div>
                        <% End if %>
                        <%If cdate(lo_now_date) < cdate("2022-09-11") then %>
                        <div class="item">
                            <a href="/c/sobang/event/2022/04250006/index.asp#eventWrap" title="��-ç���� ����2 7�� ���� ����">
                                <img src="<%=img_main%>/m/2022/0718_sobang/bnr_campus3.png" alt="��-ç���� ����3 9�� ���� ����" />
                            </a>
                        </div>
                        <% End if %>
                        
                        <%If cdate(lo_now_date) >= cdate("2022-05-16") and cdate(lo_now_date) < cdate("2022-07-01") then %>
                        <div class="item">
                            <a href="/c/sobang/event/2022/04050005/index.asp#eventWrap" target="_blank" title="������ ������ ���̽�����Ŀ" >
                                <img src="<%=img_main%>/m/2022/0405_sbcampus/bn_left01.jpg" alt="������ ������ ���̽�����Ŀ" />
                            </a>
                        </div>
                        <% End if %>

                    <% elseif hcode = "gongssel"  Then %>

                        <div class="item">
                            <a href="<%=gongssel_main %>/c/gongssel/presentation/index.asp" target="_blank" title="�������п� ����ȸ&middot; Ư�� ��û�ϱ�">
                                <img src="<%=img_main%>/m/2021/0219_bnr/quick_bnr3_gong.jpg" alt="�������п� ����ȸ&middot; Ư�� ��û�ϱ�" />
                            </a>
                        </div>

                    <% elseif hcode = "army"  Then %>
                        <% if cdate(lo_now_date) < cdate("2022-04-15") then %>
                        <div class="item">
                            <a href="/s/army/campus/event/2021/09150001/index.asp#eventWrap" target="_blank" title="22�� 3�� ���۹� �����̾� ������ ���й�">
                                <%If cdate(lo_now_date) < cdate("2022-03-14") then%>
                                <img src="<%=img_main%>/m/2022/0107_army/quick_bnr2.png" alt="22�� 3�� ���۹� �����̾� ������ ���й�" />
								<% elseif cdate(lo_now_date) < cdate("2022-04-01") then %>
                                <img src="<%=img_main%>/m/2022/0107_army/quick_bnr2_220314.png" alt="�����̾� ������ ���й�" />
                                <% else %>
                                <img src="<%=img_main%>/m/2022/0331_army/quick_bnr2.jpg" alt="�����̾� ������ ���й�" />
                                <% End if %>
                            </a>
                        </div>
                        <% end if %>

                        <% if cdate(lo_now_date) >= cdate("2022-04-15") and cdate(lo_now_date) < cdate("2022-04-30 16:30") then %>
                        <div class="item">
                            <a href="/s/army/campus/presentation/view.asp?idx=308" target="_blank" title="������ final �հ����� ����ȸ">
                                <img src="<%=img_main%>/m/2022/0415_ban/quick_bnr03.jpg" alt="������ final �հ����� ����ȸ" />
                            </a>
                        </div>
                        <% End if %>

                    <% End if %>
                </div>

                <div class="counting">
                    <span>1</span> /
                    <strong class="total"></strong>
                    <a href="javascript:;" id="quick_prev2" class="arrow prev" title="����">����</a>
                    <a href="javascript:;" id="quick_next2" class="arrow next" title="����">����</a>
                </div>

            </div>

            <div class="bnr_wrap slider sld3">
                <div id="quick_slider3" class="item_wrap">
                    <% if hcode = "gong" Then %>
                
                        <!--<div class="item">
                            <a href="<%=gongssel_main %>/c/gongssel/presentation/index.asp" target="_blank"
                                title="�������п� ����ȸ&middot; Ư�� ��û�ϱ�">
                                <img src="<%=img_main%>/m/2021/0219_bnr/quick_bnr3_gong.jpg" alt="�������п� ����ȸ&middot; Ư�� ��û�ϱ�" />
                            </a>
                        </div>-->
                        <%If cdate(lo_now_date) >= cdate("2021-11-19") and cdate(lo_now_date) < cdate("2021-12-05 17:00") then%>
                        <div class="item">
                            <a href="<%=ngbr_main %>/r/ngbr/event/2021/11190003/index.asp#eventWrap" target="_blank" title="������ ��ũ����">
                                <img src="<%=img_main%>/m/2021/1119_lyj4718/quick_bnr.jpg" alt="������ ��ũ����" />
                            </a>
                        </div>
                        <%end if%>
                        
                        <%If cdate(lo_now_date) >= cdate("2022-06-09") and cdate(lo_now_date) < cdate("2023-05-31 23:59:59") then%>
                        <div class="item">
                            <a href="<%=ngbr_main %>/r/ngbr/community/notice/view.asp?idx=89" target="_blank" title="�н�, With ���ĸ�Ÿ">
                                <img src="<%=img_main%>/m/2022/0609_ban/quick_bnr1.jpg" alt="�н�, With ���ĸ�Ÿ" />
                            </a>
                        </div>
                        <div class="item">
                            <a href="<%=ngbr_main %>/r/ngbr/community/notice/view.asp?idx=122" target="_blank" title="����, With ���ĸ�Ÿ">
                                <img src="<%=img_main%>/m/2022/0609_ban/quick_bnr2.jpg" alt="����, With ���ĸ�Ÿ" />
                            </a>
                        </div>
                        <%end if%>

                        <div class="item">
                            <a href="<%=ngbr_main %>" target="_blank" title="���ĸ�Ÿ">
                                <img src="<%=img_main%>/m/2021/1019_good/quick_bnr1.jpg" alt="���ĸ�Ÿ" />
                            </a>
                        </div>

                        <div class="item">
                            <a href="<%=ngbr_main%>/r/ngbr/community/notice/view.asp?idx=95" target="_blank" title="�ű� �̺�Ʈ ���� 16�� ����">
                                <img src="<%=img_main%>/m/2022/0812_ngbr/quick_bnr1.png" alt="�ű� �̺�Ʈ ���� 16�� ����" />
                            </a>
                        </div>

                    <% elseif hcode = "sobang" Then %>

                        <%If cdate(lo_now_date) >= cdate("2022-06-09") and cdate(lo_now_date) < cdate("2023-05-31 23:59:59") then%>
                        <div class="item">
                            <a href="<%=ngbr_main %>/r/ngbr/community/notice/view.asp?idx=89" target="_blank" title="�н�, With ���ĸ�Ÿ">
                                <img src="<%=img_main%>/m/2022/0609_ban/quick_bnr1.jpg" alt="�н�, With ���ĸ�Ÿ" />
                            </a>
                        </div>
                        <div class="item">
                            <a href="<%=ngbr_main %>/r/ngbr/community/notice/view.asp?idx=122" target="_blank" title="����, With ���ĸ�Ÿ">
                                <img src="<%=img_main%>/m/2022/0609_ban/quick_bnr2.jpg" alt="����, With ���ĸ�Ÿ" />
                            </a>
                        </div>
                        <%end if%>
                    
                        <%If cdate(lo_now_date) >= cdate("2021-11-19") and cdate(lo_now_date) < cdate("2021-12-05 17:00") then%>
                        <div class="item">
                            <a href="<%=ngbr_main %>/r/ngbr/event/2021/11190003/index.asp#eventWrap" target="_blank" title="������ ��ũ����">
                                <img src="<%=img_main%>/m/2021/1119_lyj4718/quick_bnr.jpg" alt="������ ��ũ����" />
                            </a>
                        </div>
                        <%end if%>

                        <div class="item">
                            <a href="<%=ngbr_main %>" target="_blank" title="���ĸ�Ÿ">
                                <img src="<%=img_main%>/m/2021/1019_good/quick_bnr1.jpg" alt="���ĸ�Ÿ" />
                            </a>
                        </div>

                        <div class="item">
                            <a href="<%=ngbr_main%>/r/ngbr/community/notice/view.asp?idx=95" target="_blank" title="�ű� �̺�Ʈ ���� 16�� ����">
                                <img src="<%=img_main%>/m/2022/0812_ngbr/quick_bnr1.png" alt="�ű� �̺�Ʈ ���� 16�� ����" />
                            </a>
                        </div>
                        
                    <% elseif hcode = "sobangcampus" Then %>
                        <%If cdate(lo_now_date) >= cdate("2022-10-11") and cdate(lo_now_date) < cdate("2022-10-29 15:00") then%>
                        <div class="item">
                            <a href="/c/sobang/event/2022/04010004/index.asp#eventWrap" target="_blank">
                                <img src="<%=img_main %>/m/2022/1011_sobangcampus/banner_quick.png" alt="�ҹ��п�����ȸ 2��" />
                            </a>
                        </div>
                        <%End if%>
                        <% if cdate(lo_now_date) >= cdate("2022-09-19") and cdate(lo_now_date) < cdate("2022-10-11") then %>
                        <div class="item">
                            <a href="/c/sobang/event/2022/04010004/index.asp#eventWrap" title="����� �ս����� �ҹ��հݼ���ȸ" target="_blank">
                                <img src="<%=img_main%>/m/2022/0919_sbc/bn_mini_presen.jpg" alt="����� �ս����� �ҹ��հݼ���ȸ" />
                            </a>
                        </div>
                        <% End if %>
                        <%If cdate(lo_now_date) >= cdate("2022-06-08") and cdate(lo_now_date) < cdate("2022-06-25 14:31") then%>
                        <div class="item">
                            <a href="/c/sobang/event/2022/04010004/index.asp#eventWrap" target="_blank" title="All-In-One �ҹ��հݼ���ȸ">
                                <img src="<%=img_main%>/m/2022/0608_sbcampus/quick_bnr.jpg" alt="All-In-One �ҹ��հݼ���ȸ" />
                            </a>
                        </div>
                        <%end if%>

                        <%If cdate(lo_now_date) >= cdate("2022-08-12") and cdate(lo_now_date) < cdate("2022-09-03 17:00")then %>
                        <div class="item">
                            <a href="/c/sobang/event/2022/07180010/index.asp#eventWrap" title="���̱�� ����!���ҹ��հݼ���ȸ" target="_blank">
                            <img src="<%=img_main%>/m/2022/0812_sobang/bnr_campus3.png" alt="���̱�� ����!���ҹ��հݼ���ȸ" />
                            </a>
                        </div>
                        <% end if%>
                        
                        
                    <% elseif hcode = "gongssel"  Then %>
                    

                        <% If cdate(lo_now_date) >= cdate("2022-05-30 00:00") and cdate(lo_now_date) < cdate("2022-06-25 17:00") then%>
                        <div class="item">
                            <a href="/s/gong/event/2022/05300062/index.asp#eventWrap" target="_blank" title="������ ����ȸ">
                                <img src="<%=img_main%>/m/2022/0530_online/quick_bnr.png" alt="������ ����ȸ" />
                            </a>
                        </div>
                        <%end if%>

                    <% elseif hcode = "army" Then %>
                        <%If cdate(lo_now_date) >= cdate("2022-06-09") and cdate(lo_now_date) < cdate("2023-05-31 23:59:59") then%>
                        <div class="item">
                            <a href="<%=ngbr_main %>/r/ngbr/community/notice/view.asp?idx=89" target="_blank" title="�н�, With ���ĸ�Ÿ">
                                <img src="<%=img_main%>/m/2022/0609_ban/quick_bnr1.jpg" alt="�н�, With ���ĸ�Ÿ" />
                            </a>
                        </div>
                        <div class="item">
                            <a href="<%=ngbr_main %>/r/ngbr/community/notice/view.asp?idx=122" target="_blank" title="����, With ���ĸ�Ÿ">
                                <img src="<%=img_main%>/m/2022/0609_ban/quick_bnr2.jpg" alt="����, With ���ĸ�Ÿ" />
                            </a>
                        </div>
                        <%end if%>

                        <%If cdate(lo_now_date) >= cdate("2021-12-06") and cdate(lo_now_date) < cdate("2021-12-21") then%>
                        <div class="item">
                            <a href="/s/army/campus/notice/view.asp?idx=3451&cate=01&searchkey=&searchword=&page=1" target="_blank" title="�濵�� �ǵμ� �⺻���� ������ Ư��">
                                <img src="<%=img_main%>/m/2021/1019_good/quick_bnr1_1206.png" alt="�濵�� �ǵμ� �⺻���� ������ Ư��" />
                            </a>
                        </div>
                        <%end if%>
                    
                        <%If cdate(lo_now_date) >= cdate("2021-11-19") and cdate(lo_now_date) < cdate("2021-12-05 17:00") then%>
                        <div class="item">
                            <a href="<%=ngbr_main %>/r/ngbr/event/2021/11190003/index.asp#eventWrap" target="_blank" title="������ ��ũ����">
                                <img src="<%=img_main%>/m/2021/1119_lyj4718/quick_bnr.jpg" alt="������ ��ũ����" />
                            </a>
                        </div>
                        <%end if%>

                        <div class="item">
                            <a href="<%=ngbr_main %>" target="_blank" title="���ĸ�Ƽ">
                                <img src="<%=img_main%>/m/2021/1019_good/quick_bnr1.jpg" alt="���ĸ�Ÿ" />
                            </a>
                        </div>

                        <div class="item">
                            <a href="<%=ngbr_main%>/r/ngbr/community/notice/view.asp?idx=95" target="_blank" title="�ű� �̺�Ʈ ���� 16�� ����">
                                <img src="<%=img_main%>/m/2022/0812_ngbr/quick_bnr1.png" alt="�ű� �̺�Ʈ ���� 16�� ����" />
                            </a>
                        </div>
                        
                    <% End if %>
                </div>

                <div class="counting">
                    <span>1</span> /
                    <strong class="total"></strong>
                    <a href="javascript:;" id="quick_prev3" class="arrow prev" title="����">����</a>
                    <a href="javascript:;" id="quick_next3" class="arrow next" title="����">����</a>
                </div>
            </div>
        <% End if %>
        <!-- ���޴� �� �Ѹ���� (������,�ҹ游 ����) E -->


        <div class="sns_wrp">
            <% if hcode = "gong" or hcode = "sobang" or hcode = "army" Then %>
            <div class="goodnote_wrp">
                <%If cdate(lo_now_date) < cdate("2022-03-10 18:00") Then%>
                <a href="<% if hcode = "army" Then %><%=url_main%><%End if%>/event/2021/12160013/index.asp#eventWrap" <% if hcode = "army" Then %>target="_blank"<%End if%> title="�ް����� �ٷΰ���">
                    <strong>�ް�����</strong> �ٷΰ���<i></i>
                </a>
                <%else%>

                    <% if hcode = "gong" Then %>
                    <% If cdate(lo_now_date) < cdate("2022-08-23") then%>
                    <a href="/s/gong/event/2022/03100029/index.asp#eventWrap" target="_blank" title="�ް����� �ٷΰ���">
                        <strong>�ް�����</strong> �ٷΰ���<i></i>
                    </a>
                    <% Else %>
                    <a href="/s/gong/event/2022/08230131/index.asp#eventWrap" target="_blank" title="�ް����� �ٷΰ���">
                        <strong>�ް�����</strong> �ٷΰ���<i></i>
                    </a>
                    <%End if%>
                    <%End if%>
                    
                    <% if hcode = "sobang" Then %>
                    <a href="/s/sobang/event/2022/03100017/index.asp#eventWrap" target="_blank" title="�ް����� �ٷΰ���">
                        <strong>�ް�����</strong> �ٷΰ���<i></i>
                    </a>
                    <%End if%>
                <%End if%>
            </div>
            <% End if %>

            <ul>
                <% if hcode <> "ngbr" Then %>
                    <% if hcode = "sobang" Then %>
                    <li class="nvblog"><a href="https://blog.naver.com/megasobang" target="_blank" title="���̹���α�"><span>���̹���α�</span></a></li>
                    <% else %>
                    <li class="nvblog"><a href="https://blog.naver.com/gongcamp" target="_blank" title="���̹���α�"><span>���̹���α�</span></a></li>
                    <% End if %>
                    <li class="fcbook"><a href="https://www.facebook.com/megagong/" target="_blank" title="���̽���"><span>���̽���</span></a></li>
                    <li class="insta"><a href="https://www.instagram.com/megagong/" target="_blank" title="�ν�Ÿ�׷�"><span>�ν�Ÿ�׷�</span></a></li>
                    <li class="ytube"><a href="https://www.youtube.com/channel/UCkY2Tq32Mpy8Qq-QljPFLag" target="_blank" title="��Ʃ��"><span>��Ʃ��</span></a></li>
                    <li class="nvtv"><a href="https://tv.naver.com/gongcampus" target="_blank" title="���̹�TV"><span>���̹�TV</span></a></li>
                <% else %>
                    <li class="nvblog"><a href="https://blog.naver.com/ngbrsparta" target="_blank" title="���̹���α�"><span>���̹���α�</span></a></li>
                    <li class="insta"><a href="https://www.instagram.com/megagongsparta/" target="_blank" title="�ν�Ÿ�׷�"><span>�ν�Ÿ�׷�</span></a></li>
                <% end if %>

                
            </ul>
        </div>

    </div>

    <div class="quick_close on">
        <a href="javascript:;" title="">���޴� ����/���</a>
    </div>

</div>



<script type="text/javascript">

    //10-29 ������ �հ����� ����ȸ�� �˾�
    function openPop(popup){
        window.open('/s/army/campus/presentation/popup_reservation.asp?idx=465', '_apply', 'width=680px,height=830px,top=50,left=50,scrollbars=yes');
        }


    (function ($) {
        /* --- quick_slider0 �����̴�--- */
        var quickMenu_slider0 = $('#quick_slider0');
        var quic_slider_lng0 = $('#quick_slider0 .item').length;
        var quic_slider_num0 = $('.side_quickMenu .bnr_wrap.slider.sld0 .counting > span');
        $('.side_quickMenu .bnr_wrap.slider.sld0 .counting .total').html(quic_slider_lng0);
        //console.log(quic_slider_lng0);
        if (quic_slider_lng0 > 1) {
            quickMenu_slider0.not('.slick-initialized').slick({
                slidesToShow: 1,
                slidesToScroll: 1,
                infinite: true,
                arrow: true,
                speed: 0,
                autoplaySpeed: 2000,
                autoplay: true,
                dots: false,
                prevArrow: $('#quick_prev0'),
                nextArrow: $('#quick_next0'),
            });
        }

        quickMenu_slider0.on('afterChange', function (event, slick, currentSlide, nextSlide) {
            var i = (currentSlide ? currentSlide : 0) + 1;
            quic_slider_num0.text(i);
        });
        /* --- // quick_slider0 �����̴�--- */

        /* --- quick_slider1 �����̴�--- */
        var quickMenu_slider1 = $('#quick_slider1');
        var quic_slider_lng1 = $('#quick_slider1 .item').length;
        var quic_slider_num1 = $('.side_quickMenu .bnr_wrap.slider.sld1 .counting > span');
        $('.side_quickMenu .bnr_wrap.slider.sld1 .counting .total').html(quic_slider_lng1);
        //console.log(quic_slider_lng1);
        if (quic_slider_lng1 > 1) {
            quickMenu_slider1.not('.slick-initialized').slick({
                slidesToShow: 1,
                slidesToScroll: 1,
                infinite: true,
                arrow: true,
                speed: 0,
                autoplaySpeed: 2000,
                autoplay: true,
                dots: false,
                prevArrow: $('#quick_prev1'),
                nextArrow: $('#quick_next1'),
            });
        }

        quickMenu_slider1.on('afterChange', function (event, slick, currentSlide, nextSlide) {
            var i = (currentSlide ? currentSlide : 0) + 1;
            quic_slider_num1.text(i);
        });
        /* --- // quick_slider1 �����̴�--- */


        /* --- quick_slider2 �����̴�--- */
        var quickMenu_slider2 = $('#quick_slider2');
        var quic_slider_lng2 = $('#quick_slider2 .item').length;
        var quic_slider_num2 = $('.side_quickMenu .bnr_wrap.slider.sld2 .counting > span');
        $('.side_quickMenu .bnr_wrap.slider.sld2 .counting .total').html(quic_slider_lng2);
        if (quic_slider_lng2 > 1) {
            quickMenu_slider2.not('.slick-initialized').slick({
                slidesToShow: 1,
                slidesToScroll: 1,
                infinite: true,
                arrow: true,
                speed: 0,
                autoplaySpeed: 2000,
                autoplay: true,
                dots: false,
                prevArrow: $('#quick_prev2'),
                nextArrow: $('#quick_next2'),
            });
        }
        quickMenu_slider2.on('afterChange', function (event, slick, currentSlide, nextSlide) {
            var i = (currentSlide ? currentSlide : 0) + 1;
            quic_slider_num2.text(i);
        });
        /* --- // quick_slider2 �����̴�--- */

        /* --- quick_slider3 �����̴�--- */
        var quickMenu_slider3 = $('#quick_slider3');
        var quic_slider_lng3 = $('#quick_slider3 .item').length;
        var quic_slider_num3 = $('.side_quickMenu .bnr_wrap.slider.sld3 .counting > span');
        $('.side_quickMenu .bnr_wrap.slider.sld3 .counting .total').html(quic_slider_lng3);
        if (quic_slider_lng3 > 1) {
            quickMenu_slider3.not('.slick-initialized').slick({
                slidesToShow: 1,
                slidesToScroll: 1,
                infinite: true,
                arrow: true,
                speed: 0,
                autoplaySpeed: 2000,
                autoplay: true,
                dots: false,
                prevArrow: $('#quick_prev3'),
                nextArrow: $('#quick_next3'),
            });
        }
        quickMenu_slider3.on('afterChange', function (event, slick, currentSlide, nextSlide) {
            var i = (currentSlide ? currentSlide : 0) + 1;
            quic_slider_num3.text(i);
        });
        /* --- // quick_slider3 �����̴�--- */



        /* --- quick_slider4 �����̴�--- */
        var quickMenu_slider4 = $('#quick_slider4');
        var quic_slider_lng4 = $('#quick_slider4 .item').length;
        var quic_slider_num4 = $('.side_quickMenu .bnr_wrap.slider.sld4 .counting > span');
        $('.side_quickMenu .bnr_wrap.slider.sld4 .counting .total').html(quic_slider_lng4);
        if (quic_slider_lng4 > 1) {
            quickMenu_slider4.not('.slick-initialized').slick({
                slidesToShow: 1,
                slidesToScroll: 1,
                infinite: true,
                arrow: true,
                speed: 0,
                autoplaySpeed: 2000,
                autoplay: true,
                dots: false,
                prevArrow: $('#quick_prev4'),
                nextArrow: $('#quick_next4'),
            });
        }
        quickMenu_slider3.on('afterChange', function (event, slick, currentSlide, nextSlide) {
            var i = (currentSlide ? currentSlide : 0) + 1;
            quic_slider_num3.text(i);
        });
        /* --- // quick_slider3 �����̴�--- */


        $(".side_quickMenu .quick_close").click(function () {
            $(".side_quickMenu").toggleClass("on");
        });

    })(jQuery);
</script>
<!-- // Side Bar Navi / ���� ���� ���̵�� E -->





<% if 1=123456 then %>
<!--
<a href="<%=url_main %>" title="�ް�������">�ް�������</a>
<a href="<%=sobang_main %>" title="�ް��ҹ�">�ް��ҹ�</a>
<a href="<%=gongssel_main %>" title="�ް��������п�">�ް��������п�</a>
<a href="<%=sobangcampus_main %>" title="�ް��ҹ��п�">�ް��ҹ��п�</a>
<a href="<%=ansung_main %>" title="�ް������� ������ 24hr">�ް������� ������ 24hr</a>
<a href="<%=army_main %>" title="�ް�������">�ް�������</a>
<a href="<%=ngbr_main %>" title="�����Ҷ����ĸ�Ÿ">�����Ҷ����ĸ�Ÿ</a>
-->
<% end if %>