<% '  ���� ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ %>
<!-- �޸� �ް�MOON �߼� -->
<% If instr(1, NowUrl, "/megagong.asp") > 0 Then %>
    <%If cdate(lo_now_date) >= cdate("2022-09-06") and cdate(lo_now_date) < cdate("2022-09-13") then%>
    <% if hcode = "gong" Or hcode = "sobang" Or hcode = "army" Then %>
    <div class="main_topbelt">
        <div><a href="/event/2022/09060027/index.asp#eventWrap"><img src="<%=img_main%>/m/2022/0906_moon/bn_top.jpg" alt="�޸� �ް�MOON �߼�"></a></div>
    </div>
    <style>
        .main_topbelt div { background:#14133d; width:100%; text-align:center; }
        .main_topbelt div a{display: block;text-align:center;margin:0 auto;}
        @media (max-width:768px) {.main_topbelt{display: none;}}
    </style>
    <% end if %>
    <% end if %>
<% end if %>
<!-- //�޸� �ް�MOON �߼� -->

<!--�ڷγ�19 Ȯ�� ���濡 ���� �н��������� � �ȳ�-->
<% If instr(1, NowUrl, "/megagong.asp") > 0 Then %>
    <%If cdate(lo_now_date) >= cdate("2022-02-21") and cdate(lo_now_date) < cdate("2022-03-30") then%>
    <% if hcode = "gong" Or hcode = "sobang" Or hcode = "army" Then %>
        <% If fncRequestCookie("main_corona") = "" then %>
            <div id="briefing_pop1" class="briefing_layer">
                <div class="pop_container">
                    <ul class="btn">
                        <li><button onclick="brfDay();">7�ϰ� ���� �ʱ�</button></li>
                        <li><button onclick="brfOff();" class="btnClose">�ݱ�</button></li>
                    </ul>
                    <div class="pop_content pcVer">
                        <img src="<%=img_main%>/m/2022/0221_pop/pop_main01_0303.jpg" usemap="#popupPc"> 
                        <map id="popupPc" name="popupPc">
                            <area shape="rect" alt="" coords="80,180,265,215" href="/help/qna/write.asp" />
                        </map>
                    </div>
                    <div class="pop_content moVer">
                        <img src="<%=img_main%>/m/2022/0221_pop/pop_main02_0303.jpg" usemap="#popupMo">
                        <map id="popupMo" name="popupMo">
                            <area shape="rect" alt="" coords="160,260,385,305" href="/help/qna/write.asp" />
                        </map>
                    </div>
                </div>
            </div>
            <style>
                .briefing_layer {position: fixed;display:block; width: 344px; height: 448px; z-index: 5; top:55%; left:50%; transform: translate(-50%, -50%);}
                .pop_container,
                .pop_content {position: relative;height: 100%;}
                .pop_content.moVer{display: none;}
                .pop_content img { border:1px solid #1d1d1d; }
                .pop_container:after {display: block;clear: both;content: '';}
                .btn { float:right; position:absolute; top:-28px; right:-2px; }
                .btn li { float:left; margin-left:1px; }
                .btn li button { color:#fff; background:#000; padding:5px 10px; box-sizing:border-box; height:28px; }
                .btn li button.btnClose { font-size:0; position:relative; width:28px; }
                .btn li button.btnClose:before { content:""; display:block; width:20px; height:1px; background:#fff; position:absolute; top:13px; left:4px; transform:rotate(45deg);  }
                .btn li button.btnClose:after { content:""; display:block; width:20px; height:1px; background:#fff; position:absolute; top:13px; left:4px; transform:rotate(-45deg);  }
                
                @media (max-width: 1200px) {
                    /* .briefing_layer { width:60%;max-width: 500px; } */
                    .pop_content.pcVer{display: none;}
                    .pop_content.moVer{display: block;}
                    .pop_content.moVer img{width: 100%;}
                    .briefing_layer{width: 550px;height: auto;}

                }
                @media (max-width: 768px) {
                    .briefing_layer {width: 80%;}
                }

            </style>
            <script type="text/javascript">
                function brfOff(){
                    $(".briefing_layer").hide();
                }
                function brfDay() {
                    setCookie("main_corona", "close", 7);
                    brfOff();
                }
            </script>
        <% end if %>
    <% end if %>
    <% end if %>
<% end if %>
<!-- //�ڷγ�19 Ȯ�� ���濡 ���� �н��������� � �ȳ� -->

 <!--  ������ ���� ��� & �н� ���� ���� � �ȳ� ��� -->
<% If instr(1, NowUrl, "/megagong.asp") > 0 Then %>
    <%if CDate(lo_now_date) >= CDate("2022-01-25") And CDate(lo_now_date) < CDate("2022-02-03")  Then%>
        <% If fncRequestCookie("mainNewyear") = "" then %>
            <% if hcode = "gong" Or hcode = "sobang" Or hcode = "army" Then %>
            <style type="text/css">
                .newyear_pop{position: absolute;width: 454px;top: 308px;left: 50%;margin: 0 0 0 270px;z-index: 102;}
                .newyear_pop .cont{position: relative;z-index: 1;}
                .newyear_pop .cont .pc{display: block;}
                .newyear_pop .cont .mo{display: none;}
                .newyear_pop a{font-size: 0;display: block;position: absolute;width: 46%;height: 5.5%;left: 50%;top: 46%;transform: translateX(-50%);-webkit-transform: translateX(-50%);-moz-transform: translateX(-50%);}
                .newyear_pop a + a{top:auto;bottom:10%;}
                .newyear_pop .close_btn{position: absolute;top: -25px;right: 0;padding: 0;width: 26px;height: 26px;background: #000 url(https://img.megagong.net/m/2020/0917_jeonhangil/pop_x.png) no-repeat center center;box-sizing: border-box;font-size: 0;}
                .newyear_pop .dayclose_btn{position: absolute;top: -25px;right: 28px;background: #000;width: 105px;height: 26px;line-height: 26px;box-sizing: border-box;font-size: 12px;color: #f3f3f3;}
                .newyear_pop .close_btn img{width: 100%}
                /* .newyear_pop .dim{font-size: 0;} */
                @media (max-width: 1200px){

                    .newyear_pop{ position:fixed; width: 640px;left: 50%;top: 50%;margin: 0;-webkit-transform: translate(-50%,-50%);-moz-transform: translate(-50%,-50%);transform: translate(-50%,-50%);}
                    .newyear_pop .cont{}
                    /* .newyear_pop .dim{content: "";position: absolute;top:0;left:0;width: 100%;height: 100%;background-color: #000;opacity: 0.7;z-index: 1;} */
                    .newyear_pop .close_btn{right: 0;top: -28px;}
                    .newyear_pop .dayclose_btn{top: -28px;}
                    .newyear_pop .cont .pc{display:none;}
                    .newyear_pop .cont .mo{display:block;height: auto;}
                    .newyear_pop .cont img{width: 100%;}
                    .newyear_pop a{left: 50%;top: 42.5%;width: 35%;}
                    .newyear_pop a + a{top:auto;bottom: 14%;}
                }
                @media (max-width: 768px){
                    .newyear_pop{width: 80%;}
                }
                @media (max-width: 576px){
                    .newyear_pop{width: 90%;top: 40%;}
                }
            </style>
            <% if hcode  = "sobang"  Then %>
            <style type="text/css">
                .newyear_pop{top: 305px;}
                @media (max-width: 1200px){
                    .newyear_pop{width: 640px;left: 50%;top: 50%;margin: 0;-webkit-transform: translate(-50%,-50%);-moz-transform: translate(-50%,-50%);transform: translate(-50%,-50%);}
                }
                 @media (max-width: 768px){
                    .newyear_pop{width: 80%;}
                }
                @media (max-width: 576px){
                    .newyear_pop{width: 90%;top: 40%;}
                }
            </style>
            <% elseif hcode  = "army"  Then %>
            <style type="text/css">
                .newyear_pop{top: 234px;}
                @media (max-width: 1200px){
                    .newyear_pop{width: 640px;left: 50%;top: 50%;margin: 0;-webkit-transform: translate(-50%,-50%);-moz-transform: translate(-50%,-50%);transform: translate(-50%,-50%);}
                }
                 @media (max-width: 768px){
                    .newyear_pop{width: 80%;}
                }
                @media (max-width: 576px){
                    .newyear_pop{width: 90%;top: 40%;}
                }
            </style>
            <% End if %>
           
            <div id="newyear" class="newyear_pop">
                <!-- <span class="dim">-</span> -->
                <div class="cont">
                    <img src="<%=img_main%>/m/2022/0125_newyear_pop/main_pop_pc.jpg" usemap="#link_notice_pc" class="pc">
                    <img src="<%=img_main%>/m/2022/0125_newyear_pop/main_pop_mo.jpg" usemap="#link_notice_mo" class="mo">
                    <a href="/book/notice/view.asp?idx=3546" title="�� ���� ���� ��� �ȳ� �ڼ��� ����" target="_blank">�� ���� ���� ��� �ȳ� �ڼ��� ����</a>
                    <a href="/help/qna/write.asp" title="�н��������� �ٷΰ���" target="_blank">�н��������� �ٷΰ���</a>
                    <button onclick="clearThnks_main($(this));" class="close_btn">�ݱ�</button>
                    <button onclick="fncNewyearOffDay();" class="dayclose_btn">���� �Ϸ� �ݱ�</button>
                </div>

            </div>
            <script type="text/javascript">
            /* --- ����� �˾� --- */
            function fncNewyearOffDay(event) {
                setCookie("mainNewyear", "close", 1);
                if ($("#newyear").css("display") == "block") {
                    $("#newyear").hide();
                    clearThnks_main();
                }
            }
            // �˾� �ݱ�
            function clearThnks_main(){
                $("#newyear").hide();
            }

            $('#newyear .dim').on('click', function () {
                clearThnks_main();
            });

            </script>
            <% End if %>
        <% End if %>
    <% End if %>
<% End if %>
<!-- // ������ ���� ��� & �н� ���� ���� � �ȳ� ��� -->
    


<!-- 1�� ���۹� �ް� 9/7�� ���չ� event -->
<%If hcode = "gongssel" and instr(1, NowUrl, "/megagong.asp") > 0 Then %>
<%'If fncRequestCookie("overall_bnr") = "" then %>
    <%If cdate(lo_now_date) < cdate("2021-12-11") then%>
    <div id="overall_brn" class="overall_brn" style="">
        <p>
            <i><img src="<%=img_main%>/m/2021/1206_gongssel/main_flt_ban_i.png" alt="1�� ���۹�"></i>
            <img src="<%=img_main%>/m/2021/1206_gongssel/main_flt_ban.png" alt="1�� ���۹� �ް� 9/7�� ���չ� event" usemap="#link_map"/>
            <span class="date">- 12/10(��)���� -</span>
            <map id="link_map" name="link_map">
                <area shape="rect" alt="9�� ���չ� ��û�ϱ�" coords="8,105,145,130" href="/c/gongssel/schedule/2021/overall/overall_05_all_9.asp">
                <area shape="rect" alt="7�� ���չ� ��û�ϱ�" coords="8,140,145,165" href="/c/gongssel/schedule/2021/overall/overall_05_all_7.asp">
            </map>
            <button onclick="clear_overall();" class="close_btn2">
                <img src="<%=img_main%>/m/2021/1206_gongssel/main_bnr_close.png" alt="�˾� �ݱ�"/>
            </button>
        </p>
    </div>
    <%elseIf cdate(lo_now_date) >= cdate("2021-12-13") and cdate(lo_now_date) < cdate("2021-12-18") then%>
    <div id="overall_brn" class="overall_brn" style="">
        <p>
            <i><img src="<%=img_main%>/m/2021/1206_gongssel/main_flt_ban_i.png" alt="1�� ���۹�"></i>
            <img src="<%=img_main%>/m/2021/1206_gongssel/main_flt_ban.png" alt="1�� ���۹� �ް� 9/7�� ���չ� event" usemap="#link_map"/>
            <span class="date">- 12/17(��)���� -</span>
            <map id="link_map" name="link_map">
                <area shape="rect" alt="9�� ���չ� ��û�ϱ�" coords="8,105,145,130" href="/c/gongssel/schedule/2021/overall/overall_05_all_9.asp">
                <area shape="rect" alt="7�� ���չ� ��û�ϱ�" coords="8,140,145,165" href="/c/gongssel/schedule/2021/overall/overall_05_all_7.asp">
            </map>
            <button onclick="clear_overall();" class="close_btn2">
                <img src="<%=img_main%>/m/2021/1206_gongssel/main_bnr_close.png" alt="�˾� �ݱ�"/>
            </button>
        </p>
    </div>
    <%elseIf cdate(lo_now_date) >= cdate("2021-12-20") and cdate(lo_now_date) < cdate("2021-12-25") then%>
    <div id="overall_brn" class="overall_brn" style="">
        <p>
            <i><img src="<%=img_main%>/m/2021/1206_gongssel/main_flt_ban_i.png" alt="1�� ���۹�"></i>
            <img src="<%=img_main%>/m/2021/1206_gongssel/main_flt_ban.png" alt="1�� ���۹� �ް� 9/7�� ���չ� event" usemap="#link_map"/>
            <span class="date">- 12/24(��)���� -</span>
            <map id="link_map" name="link_map">
                <area shape="rect" alt="9�� ���չ� ��û�ϱ�" coords="8,105,145,130" href="/c/gongssel/schedule/2021/overall/overall_05_all_9.asp">
                <area shape="rect" alt="7�� ���չ� ��û�ϱ�" coords="8,140,145,165" href="/c/gongssel/schedule/2021/overall/overall_05_all_7.asp">
            </map>
            <button onclick="clear_overall();" class="close_btn2">
                <img src="<%=img_main%>/m/2021/1206_gongssel/main_bnr_close.png" alt="�˾� �ݱ�"/>
            </button>
        </p>
    </div>
    <%elseIf cdate(lo_now_date) >= cdate("2021-12-27") and  cdate(lo_now_date) < cdate("2021-12-29") then%>
    <div id="overall_brn" class="overall_brn" style="">
        <p>
            <i><img src="<%=img_main%>/m/2021/1206_gongssel/main_flt_ban_i.png" alt="1�� ���۹�"></i>
            <img src="<%=img_main%>/m/2021/1206_gongssel/main_flt_ban.png" alt="1�� ���۹� �ް� 9/7�� ���չ� event" usemap="#link_map"/>
            <span class="date">- 12/31(��)���� -</span>
            <map id="link_map" name="link_map">
                <area shape="rect" alt="9�� ���չ� ��û�ϱ�" coords="8,105,145,130" href="/c/gongssel/schedule/2021/overall/overall_05_all_9.asp">
                <area shape="rect" alt="7�� ���չ� ��û�ϱ�" coords="8,140,145,165" href="/c/gongssel/schedule/2021/overall/overall_05_all_7.asp">
            </map>
            <button onclick="clear_overall();" class="close_btn2">
                <img src="<%=img_main%>/m/2021/1206_gongssel/main_bnr_close.png" alt="�˾� �ݱ�"/>
            </button>
        </p>
    </div>
    <% End if %>
<% 'End if %>
<style type="text/css">
    .overall_brn {position: absolute;top: 0;left: 50%; margin: 420px 0 0 650px; width: 155px;z-index: 3;}
    .overall_brn p{position: relative;}
    .overall_brn p i{position: absolute;left: -20px;top: -28px;}
    .overall_brn p a{position:absolute;left:0;width:100%;height:100%;top: 0;font-size:0;}
    .overall_brn p .date{position: absolute;left:35px;bottom:85px;color: #94ff82;font-size: 12px;}
    .overall_brn .close_btn2{position:absolute;top: -30px;right: 0;font-size: 0;}
    @media (max-width: 1200px){
        .overall_brn{display: none;}
    }
</style>
<script type="text/javascript">
    function clear_overall() {
        if ($("#overall_brn").css("display") == "block") {
            $("#overall_brn").hide();
        }
    }
</script>
<% End if %>
<!-- // 1�� ���۹� �ް� 9/7�� ���չ� event -->

    
<!-- ���� �Լ���� �׸�Ư�� -->
<%If hcode = "gongssel" and instr(1, NowUrl, "/megagong.asp") > 0 Then %>
<%If cdate(lo_now_date) >= cdate("2021-11-12 00:00") and cdate(lo_now_date) < cdate("2021-12-06 00:00") then%>
    <% If fncRequestCookie("full_pop_bnr_fullsrv1007") = "" then %>
    <div id="zhonghun_bnr" class="zhonghun_bnr zhonghun" style="">
        <p>
            <img src="<%=img_main%>/m/2021/1101_zhonghun/main_flt_ban.png" alt="���� �Լ���� �׸�Ư��" />
            <a href="/c/gongssel/help/notice/view.asp?idx=3427&cate=01&searchkey=&searchword=&page=1" title="���� �Լ���� �׸�Ư��">���� �Լ���� �׸�Ư��</a>
            <button onclick="clearSP_gong_zhonghun();" class="close_btn2">
                <img src="<%=img_main%>/m/2021/1101_zhonghun/main_bnr_close.png" alt="�˾� �ݱ�"/>
            </button>
        </p>
    </div>
    
    <style type="text/css">
        .zhonghun_bnr {position: absolute;top: 0;left: 50%; /*margin: 470px 0 0 555px;*/ margin:515px 0 0 555px; width: 170px;z-index: 3;}
        .zhonghun_bnr .close_btn2{position:absolute;top: 0;right: 0;font-size: 0;}
        .zhonghun_bnr p a{position:absolute;left:0;width:100%;height:100%;top: 0;font-size:0;}
        @media (max-width: 1200px){.zhonghun_bnr{display: none;}}
    </style>
    
    <script type="text/javascript">
        function clearSP_gong_zhonghun() {
            if ($("#zhonghun_bnr").css("display") == "block") {
                $("#zhonghun_bnr").hide();
            }
        }
    </script>
    <% End if %>
<% End if %>
<% End if %>
<!-- // ���� �Լ���� �׸�Ư�� -->

<!-- �߼����� ���� ��� & �н� ���� ���� � �ȳ� ��� -->
<%If cdate(lo_now_date) >= cdate("2021-09-14") and cdate(lo_now_date) < cdate("2021-09-23") then%>
    <% if instr(1, NowUrl, "/megagong.asp" ) > 0 Then %>
        <% if hcode = "gong" or hcode = "sobang" or hcode = "army"  then%>
        <div class="pop_chuseok">
                <img src="<%=img_main%>/m/2021/0914_chuseok/pop_pc.jpg" alt="�߼����� ���� ��� & �н� ���� ���� � �ȳ�" class="pc" usemap="#pc_link"/>
                <img src="<%=img_main%>/m/2021/0914_chuseok/pop_mo.jpg" alt="�߼����� ���� ��� & �н� ���� ���� � �ȳ�" class="mo" usemap="#mo_link"/>
                
                <map name="pc_link" id="pc_link">
                    <area shape="rect" alt="�ڼ�������" coords="125,273,330,305" target="_blank" href="/help/notice/view.asp?idx=3334&cate=02&searchkey=&searchword=&page=1" />
                    <area shape="rect" alt="" coords="125,500,330,530" target="_blank" href="/help/qna/write.asp" title="�н��������� �ٷΰ���">
                </map>
                <map name="mo_link" id="mo_link">
                    <area shape="rect" alt="�ڼ�������" coords="210,340,435,380" target="_blank" href="/help/notice/view.asp?idx=3334&cate=02&searchkey=&searchword=&page=1" />
                    <area shape="rect" alt="" coords="210,640,435,680" target="_blank" href="/help/qna/write.asp" title="�н��������� �ٷΰ���">
                </map>
                
            <div>
                <button class="btnToday">���� �Ϸ� �ݱ�</button>
                <button class="btnClose"><img src="<%=img_main%>/c/gongssel/main/pop_close.png" alt="�ݱ�"/></button>
            </div>
        </div>
        <style>
            .pop_chuseok {position:absolute;width: 454px;top:265px;left: 50%;margin-left: 270px;z-index:99;}
            .pop_chuseok > img{display:block;width: 100%;}
            .pop_chuseok > img.mo{display:none;}
            .pop_chuseok > div {position: absolute;width:100%;float:right;text-align:right;font-size:0;top: -28px;}
            .pop_chuseok button { display:inline-block; text-align:center; vertical-align:top; color:#fff; font-size:12px; height:28px; padding:0 5px; background:#000; }
            .pop_chuseok button img { height:18px; }
            .pop_chuseok button:first-child { margin-right:3px; padding:0 10px; }

            @media (max-width:1450px){
                .pop_chuseok {margin-left: 13%;}
            }
            @media (max-width:1200px){
                body{overflow-x: hidden;}
                .pop_chuseok{top: 55%;left: 50%;width:640px;margin-left: -320px;transform: translateY(-50%);-webkit-transform: translateY(-50%);-moz-transform: translateY(-50%);}
                .pop_chuseok > img.pc{display:none;}
                .pop_chuseok > img.mo{display:block;height: auto;}
                
            }
            @media (max-width:768px){
                .pop_chuseok{width: 80%;margin-left:0;transform: translate(-50%,-50%);-webkit-transform: translate(-50%,-50%);-moz-transform: translate(-50%,-50%);}
                .pop_chuseok button:first-child {font-size: 10px;}
            }
            @media (max-width:576px){
                .pop_chuseok{width: 90%;}
            }
        </style>
        <script>
            (function(){
                $('.pop_chuseok .btnClose').on('click', function(e){
                    e.preventDefault();
                    $('.pop_chuseok').hide().removeClass('on');
                });
            })();
            if(getCookie('Popup_chuseok') == 'close'){
                $('.pop_chuseok').hide();
            }
            function setCookieToday( name, value, expiredays ) {
                var todayDate = new Date();
                todayDate = new Date(parseInt(todayDate.getTime() / 86400000) * 86400000 + 54000000);
                if ( todayDate > new Date() ){
                    expiredays = expiredays - 1;
                }
                todayDate.setDate( todayDate.getDate() + expiredays );
                document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";"
            }
            $('.pop_chuseok .btnToday').on('click', function(e){
                setCookieToday('Popup_chuseok', 'close', 1);
                $('.pop_chuseok .btnClose').trigger('click');
            });

        </script>
        <%end if%>
    <%end if%>
<%end if%>
<!-- // �߼����� ���� ��� & �н� ���� ���� � �ȳ� ��� -->



<% '  ������------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ %>
<% If hcode = "gong" Then %>

<!-- (��) ����� ���ξ� ȫ�� ���θ��-->
<% if cdate(lo_now_date) >= cdate("2022-09-14 18:00") and cdate(lo_now_date) < cdate("2022-09-22") then %>
<% if instr(1, NowUrl, "/megagong.asp" ) > 0 Then %>
<a href="/s/gong/event/2022/09140042/index.asp#eventWrap">
    <div class="techBn">
        <div class="dday">
            <div>
                <p>�̺�Ʈ ����
                    <span>D-                    
                        <%if cdate(lo_now_date) = cdate("2022-09-27") then %>
                        DAY 
                        <%else%>
                        <%=DateDiff("D", cdate(lo_now_date), cdate("2022-09-27"))%>
                        <%end if%>  
                    </span>
                </p>
            </div>
        </div>
        <p class="tit"><img src="<%=img_main%>/m/2022/0914_tech/top_bn.png" alt=""></p>
    </div>
</a>
<style>
    .techBn { display:none; }
    @media (max-width:1200px) {
        .techBn { display:block; width:100%; background:#0e136a; text-align:center; cursor:pointer; }
        .techBn .dday { width:135px; height:80px; box-sizing:border-box; display:inline-block; border:2px solid #fff; vertical-align:middle; }
        .techBn .dday > div { display:table; width:100%; height:100%; }
        .techBn .dday > div p { display:table-cell; vertical-align:middle; color:#fff; font-size:19px; }
        .techBn .dday > div p span { display:block; font-weight:700; font-size:22px; margin-top:3px; }
        .techBn .tit { display:inline-block; vertical-align:middle;  width:auto; max-width:603px; }
    }
    @media (max-width:765px) {
        .techBn .dday { width:20vw; height:10vw; }
        .techBn .dday > div p { font-size:12px; }
        .techBn .dday > div p span { font-size:15px; }
        .techBn .tit { width:calc(100% - 22vw); }
    }
    @media (max-width:420px) {
        .techBn .dday > div p { font-size:10px; }
        .techBn .dday > div p span { font-size:13px; }
    }

</style>
<%end if%>
<%end if%>
<!-- //(��) ����� ���ξ� ȫ�� ���θ��-->



<!-- 2023 9�� �հ����� ����ȸ ��Ʃ�� �˾� -->
<% if instr(1, NowUrl, "/megagong.asp" ) > 0 Then %>
    <%If cdate(lo_now_date) >= cdate("2022-06-25 13:40") then%>
    <%
        youtube10_banner_on = "N"
        strSql = ""
        strSql = strSql & " SELECT TV_VAL "
        strSql = strSql & " FROM ME_TMP_VALUE WITH(NOLOCK) "
        strSql = strSql & " WHERE TV_GBN = 'youtube10' "
        set objrs = dbexec(strsql, "study")
        if not (objrs.eof and objrs.bof) then
        	youtube10_banner_on = objRs(0)
        end if
        call dbclose(objrs)         
    %>
        <% if youtube10_banner_on = "Y" then %>
            <div id="briefing_pop3" class="briefLayer3">
                <div class="dimBg"></div>
                <div id="modalLayer" class="briefing_pop_layer">
                    <div class="brfpop_container">
                        <div class="brflayer_content">
                            <iframe width="100%" height="100%" src="https://www.youtube.com/embed/Q7d6Fgc_iGk" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        </div>
                        <button class="btnClose">�ݱ�</button>
                    </div>
                </div>
            </div>
            <style>
                .briefLayer3 {position: fixed;display:block;top: 0;left: 0;width: 100%;height: 100%;z-index: 102;}
                .briefLayer3 .dimBg{position: fixed;left: 0;top: 0;width: 100%;height: 100%;background: #000;opacity: 0.7;cursor: pointer;}
                .briefLayer3 .briefing_pop_layer {display: block;width: 1000px;height:565px;position: absolute;top: 50%;left: 50%;z-index: 10;transform: translate(-50%, -50%);}
                .brfpop_container,.brflayer_content {position: relative;height: 100%;}
                .brfpop_container:after {display: block;clear: both;content: '';}
                .briefLayer3 .btnClose{position: absolute;top: -30px;right: 0;border: 1px solid #fff;padding: 3px;color:#fff;}

                @media (max-width: 1280px) {
                    .brflayer_content img{width: 100%;}
                    .briefLayer3 .briefing_pop_layer{width: 80%;height: 45vw;}
                }
                @media (max-width: 768px) {
                    .brflayer_content img.pc{display: none;}
                    .briefLayer3 .briefing_pop_layer{width: 95%;height: 55vw;}
                }
            </style>
            <script type="text/javascript">
                $('.briefLayer3 .btnClose,.briefLayer3 .dimBg').on('click', function(){
                    $(".briefLayer3").hide();
                });
            </script>
        <% end if %>
    <%end if%>
<%end if%>
<!-- // 2023 9�� �հ����� ����ȸ ��Ʃ�� �˾� -->

<!-- 2023 ����� �հ����� ����ȸ -->
<% if cdate(lo_now_date) < cdate("2022-10-22 17:00")then %>
<% If hcode = "gong" Then %>
<div class="main_topbelt">
    <div class="for_pc">
        <div class="inner">
            <a href="/s/gong/event/2022/09220147/index.asp" title="����� �հ�, �ް��κ���" target="_blank"></a>
            <a href="https://gongssel.megagong.net/c/gongssel/event/2022/09220008/index.asp" title="������ ����ȸ" target="_blank"></a>
            <a href="https://gongssel.megagong.net/c/gongssel/presentation/view.asp?idx=449" title="�ܹ������� ����ȸ" target="_blank"></a>
            <img src="<%=img_main%>/m/2022/0922_online/fullbn_gong.png" alt="2023 ����� / ������ / �ܹ������� �հ����� ����ȸ">
        </div>
    </div>
    <div class="for_mo">
        <div class="inner">
            <a href="/s/gong/event/2022/09220147/index.asp" title="����� �հ�, �ް��κ���" target="_blank"><img src="<%=img_main%>/m/2022/0922_online/fullbn_gong_mo1.png" alt="����� �հ�, �ް��κ���"></a>
        </div>
    </div>
</div>
<style>
    .main_topbelt .for_pc {background:#2f140b; width:100%; text-align:center;}
    .main_topbelt .for_pc .inner {width: 1200px; margin: 0 auto; position: relative;}
    .main_topbelt .for_pc div a{position: absolute; text-align:center; margin:0 auto; height: 100%; }
    .main_topbelt .for_pc div a:nth-child(1){width: 66%; left: 0;}
    .main_topbelt .for_pc div a:nth-child(2){width: 15%; left: 66%;}
    .main_topbelt .for_pc div a:nth-child(3){width: 19%; left: 81%;}
    .main_topbelt .for_mo {display: none;}
    @media (max-width:1200px) {
        .main_topbelt .for_pc .inner {width: 100%;}
    }
    @media (max-width:768px) {
        .main_topbelt .for_pc {display: none;}
        .main_topbelt .for_mo {display: block;}
        .main_topbelt .for_mo div a {display: block; height: 100%;}
    }
</style>
<%end if%>
<%end if%>
<!-- // 2023 ����� �հ����� ����ȸ -->

<!-- 2023 ��� ���� ���� ���� ����ȸ -->
<% If cdate(lo_now_date) >= cdate("2022-10-22 17:00:00") and cdate(lo_now_date) < cdate("2022-10-26")  then%>
<% If hcode = "gong" Then %>
<div class="main_topbelt">
    <div class="for_pc">
        <div class="inner">
            <a href="/s/gong/event/2022/10180161/index.asp#eventWrap" title="�ް������� ���� ���� ���� ����ȸ">
                <img src="<%=img_main%>/m/2022/1018_live/plan_a_bnr_pc.jpg" alt="�ް������� ���� ���� ���� ����ȸ">
            </a>
        </div>
    </div>
    <div class="for_mo">
        <div class="inner">
            <a href="/s/gong/event/2022/10180161/index.asp#eventWrap" title="�ް������� ���� ���� ���� ����ȸ">
                <img src="<%=img_main%>/m/2022/1018_live/plan_a_bnr_mo.jpg" alt="�ް������� ���� ���� ���� ����ȸ">
            </a>
        </div>
    </div>
</div>
<style>
    .main_topbelt .for_pc {background:#0c63b9; width:100%; text-align:center;}
    /* .main_topbelt .for_pc .inner {position: relative;} */
    /* .main_topbelt .for_pc div a{position: absolute; top: 50%; left: calc(50% + 517px); transform: translate(-50%, -50%); width: 103px; height: 31px; } */
    .main_topbelt .for_mo {display: none;}
    @media (max-width:1600px){
        .main_topbelt .for_pc .inner {width: 100%;}
        /* .main_topbelt .for_pc div a{left: calc(50% + 32.2%);width: 6.8vw;height: 2.4vw;} */
    }
    @media (max-width:768px) {
        .main_topbelt .for_pc {display: none;}
        .main_topbelt .for_mo {display: block;}
        .main_topbelt .for_mo div a {display: block; height: 100%;}
    }
</style>
<%end if%>
<%end if%>


<!-- Start ������1 -->
<% If cdate(lo_now_date) >= cdate("2022-10-26") and cdate(lo_now_date) < cdate("2022-10-26 18:49:59") then%>
<% If hcode = "gong" Then %>
<div class="main_topbelt">
    <a class="for_pc" href="/s/gong/event/2022/10180161/index.asp#eventWrap">
        <div class="inner">
            <div class="icon_live">
                <img src="<%=img_main%>/m/2022/1018_live/icon_bnr_live.png" alt="live">
            </div>
            <div class="info">
                <div class="info_title">2023 ��� <span>������</span> ���� ���� ����ȸ</div>
                <div class="info_desc">10/26(��) 19:00</div>
            </div>
            <img class="more" src="<%=img_main%>/m/2022/1018_live/icon_more_pc.png" alt="�ڼ�������">
        </div>
    </a>
    <div class="for_mo">
        <div class="inner">
            <a href="/s/gong/event/2022/10180161/index.asp#eventWrap">
                <div class="icon_live">
                    <img src="<%=img_main%>/m/2022/1018_live/icon_bnr_live_mo.png" alt="live">
                </div>
                <div class="info">
                    <div class="info_title"><span>������</span> ���� ���� ����ȸ</div>
                </div>
                <div class="right">
                    <div class="when">10/26(��) 19��</div>
                    <img src="<%=img_main%>/m/2022/1018_live/icon_more_mo.png" alt="�ڼ�������">
                </div>
            </a>
        </div>
    </div>
</div>
<style>
    .main_topbelt .for_pc { display: block; width:100%; height: 80px; background-color:#0c63b9; background-image: url('https://img.megagong.net/m/2022/1018_live/bnr_pc_bg.png'); background-repeat: no-repeat; background-position: 50%; background-size: cover; } 
    .main_topbelt .for_pc .inner { display: flex; flex-direction: row; align-items: center; justify-content: space-between; width: 1200px; margin: 0 auto; } 
    .main_topbelt .for_pc .inner .icon_live { margin-left: 47px; } 
    .main_topbelt .for_pc .inner .info { display: flex; flex-direction: row; align-items: center; justify-content: center; font-family: 'NotoSans KR'; } 
    .main_topbelt .for_pc .inner .info .info_title { margin-right: 63px; color: #fff; font-size: 33px; font-weight: bold; } 
    .main_topbelt .for_pc .inner .info .info_title span { color: #99ff46; } 
    .main_topbelt .for_pc .inner .info .info_desc { position: relative; padding-left: 47px; color: #99ff46; font-size: 21px; font-weight: 400; } 
    .main_topbelt .for_pc .inner .info .info_desc::before { position: absolute; top: 50%; left: 0; transform: translate(0, -50%); content: ''; width: 1px; height: 26px; background-color: #99ff46; } 
    .main_topbelt .for_pc .inner .more { margin-right: 32px; } 
    .main_topbelt .for_mo { display: none; } 

    @media (max-width:1200px){
        .main_topbelt .for_pc .inner { width: 100%; } 
        .main_topbelt .for_pc .inner .info .info_title { margin-right: 35px; font-size: 28px; } 
        .main_topbelt .for_pc .inner .info .info_desc { padding-left: 32px; font-size: 18px; } 
    }
    @media (max-width:960px){
        .main_topbelt .for_pc .inner .icon_live { margin-left: 24px; } 
        .main_topbelt .for_pc .inner .info .info_title { margin-right: 30px; font-size: 22px; } 
        .main_topbelt .for_pc .inner .info .info_desc { padding-left: 28px; font-size: 16px; } 
        .main_topbelt .for_pc .inner .more { margin-right: 15px; } 
    }
    @media (max-width:768px){
        .main_topbelt .for_pc { display: none; } 
        .main_topbelt .for_mo { display: flex; flex-direction: row; align-items: center; justify-content: center; width: 100%; height: 130px; background-color:#0c63b9; } 
        .main_topbelt .for_mo .inner a { display: flex; flex-direction: row; align-items: center; justify-content: space-between; width: 100%; margin: 0 auto; } 
        .main_topbelt .for_mo .inner .icon_live { margin-left: 0; margin-right: 4vw; } 
        .main_topbelt .for_mo .inner .info { display: flex; flex-direction: row; align-items: center; justify-content: center; font-family: 'NotoSans KR'; } 
        .main_topbelt .for_mo .inner .info .info_title { margin-right: 4vw; color: #fff; font-size: 4.5vw; font-weight: bold; } 
        .main_topbelt .for_mo .inner .info .info_title span { color: #99ff46; } 
        .main_topbelt .for_mo .inner .right { position: relative; padding-left: 28px; } 
        .main_topbelt .for_mo .inner .right .when { margin-bottom: 12px; color: #99ff46; font-size: 19px; font-weight: 400; font-family: 'NotoSans KR'; } 
        .main_topbelt .for_mo .inner .right::before { position: absolute; top: 50%; left: 0; transform: translate(0, -50%); content: ''; width: 1px; height: 97px; background-color: #3391ee; } 
    }
    @media (max-width:576px){
        .main_topbelt .for_mo { height: 16vw; } 
        .main_topbelt .for_mo .inner .icon_live { width: 10vw; height: 10vw; } 
        /* .main_topbelt .for_mo .inner .info .info_title { display: flex; flex-direction: column; align-items: flex-start; justify-content: flex-start; width: 31vw; }  */
        /* .main_topbelt .for_mo .inner .info .info_title span { margin-bottom: 5px; }  */
        .main_topbelt .for_mo .inner .right { padding-left: 14px; } 
        .main_topbelt .for_mo .inner .right::before { height: 12vw; } 
        .main_topbelt .for_mo .inner .right .when { margin-bottom: 5px; font-size: 14px; } 
        .main_topbelt .for_mo .inner .right > img { width: 87px; } 
    }
</style>
<%end if%>
<%end if%>
<!-- End ������1 -->

<!-- Start ������ ���̺� -->
<% If cdate(lo_now_date) >= cdate("2022-10-26 18:50:00") and cdate(lo_now_date) < cdate("2022-10-26 20:29:59") then%>
<% If hcode = "gong" Then %>
<div class="main_topbelt">
    <a class="for_pc" href="/s/gong/event/2022/10180161/index.asp#eventWrap">
        <div class="inner">
            <div class="icon_live">
                <div>
                    <img src="<%=img_main%>/m/2022/1018_live/icon_bnr_onair1.png" alt="live">
                </div>
                <div>
                    <img src="<%=img_main%>/m/2022/1018_live/icon_bnr_onair2.png" alt="live">
                </div>
            </div>
            <div class="info">
                <div class="info_title">2023 ��� <span>������</span> ���� ���� ����ȸ</div>
                <div class="info_desc">10/26(��) 19:00</div>
            </div>
            <img class="more" src="<%=img_main%>/m/2022/1018_live/icon_more_pc.png" alt="�ڼ�������">
        </div>
    </a>
    <div class="for_mo">
        <div class="inner">
            <a href="/s/gong/event/2022/10180161/index.asp#eventWrap">
                <div class="icon_live">
                    <div>
                        <img src="<%=img_main%>/m/2022/1018_live/icon_bnr_onair1_mo.png" alt="live">
                    </div>
                    <div>
                        <img src="<%=img_main%>/m/2022/1018_live/icon_bnr_onair2_mo.png" alt="live">
                    </div>
                </div>
                <div class="info">
                    <div class="info_title"><span>������</span> ���� ���� ����ȸ</div>
                </div>
                <div class="right">
                    <div class="when">10/26(��) 19��</div>
                    <img src="<%=img_main%>/m/2022/1018_live/icon_more_mo.png" alt="�ڼ�������">
                </div>
            </a>
        </div>
    </div>
</div>
<script>
    	$('.icon_live').slick({
		slidesToShow: 1,
		slidesToScroll: 1,
		autoplay: true,
		autoplaySpeed: 1000,
		dots: false,
		infinite: true,
		speed: 500,
		arrows: false,
		fade: true,
		cssEase: 'linear'
	});
</script>
<style>
    .main_topbelt .for_pc { display: block; width:100%; height: 80px; background-color:#0c63b9; background-image: url('https://img.megagong.net/m/2022/1018_live/bnr_pc_bg.png'); background-repeat: no-repeat; background-position: 50%; background-size: cover; } 
    .main_topbelt .for_pc .inner { display: flex; flex-direction: row; align-items: center; justify-content: space-between; width: 1200px; margin: 0 auto; } 
    .main_topbelt .for_pc .inner .icon_live { display: inline-block; width: 103px; height: 31px; margin-left: 47px; } 
    .main_topbelt .for_pc .inner .info { display: flex; flex-direction: row; align-items: center; justify-content: center; font-family: 'NotoSans KR'; } 
    .main_topbelt .for_pc .inner .info .info_title { margin-right: 63px; color: #fff; font-size: 33px; font-weight: bold; } 
    .main_topbelt .for_pc .inner .info .info_title span { color: #99ff46; } 
    .main_topbelt .for_pc .inner .info .info_desc { position: relative; padding-left: 47px; color: #99ff46; font-size: 21px; font-weight: 400; } 
    .main_topbelt .for_pc .inner .info .info_desc::before { position: absolute; top: 50%; left: 0; transform: translate(0, -50%); content: ''; width: 1px; height: 26px; background-color: #99ff46; } 
    .main_topbelt .for_pc .inner .more { margin-right: 32px; } 
    .main_topbelt .for_mo { display: none; } 

    @media (max-width:1200px){
        .main_topbelt .for_pc .inner { width: 100%; } 
        .main_topbelt .for_pc .inner .info .info_title { margin-right: 35px; font-size: 28px; } 
        .main_topbelt .for_pc .inner .info .info_desc { padding-left: 32px; font-size: 18px; } 
    }
    @media (max-width:960px){
        .main_topbelt .for_pc .inner .icon_live { margin-left: 24px; } 
        .main_topbelt .for_pc .inner .info .info_title { margin-right: 30px; font-size: 22px; } 
        .main_topbelt .for_pc .inner .info .info_desc { padding-left: 28px; font-size: 16px; } 
        .main_topbelt .for_pc .inner .more { margin-right: 15px; } 
    }
    @media (max-width:768px){
        .main_topbelt .for_pc { display: none; } 
        .main_topbelt .for_mo { display: flex; flex-direction: row; align-items: center; justify-content: center; width: 100%; height: 130px; background-color:#0c63b9; } 
        .main_topbelt .for_mo .inner a { display: flex; flex-direction: row; align-items: center; justify-content: space-between; width: 100%; margin: 0 auto; } 
        .main_topbelt .for_mo .inner .icon_live { display: inline-block; width: 76px; height: 76px; margin-left: 0; margin-right: 4vw; } 
        .main_topbelt .for_mo .inner .info { display: flex; flex-direction: row; align-items: center; justify-content: center; font-family: 'NotoSans KR'; } 
        .main_topbelt .for_mo .inner .info .info_title { margin-right: 4vw; color: #fff; font-size: 4.5vw; font-weight: bold; } 
        .main_topbelt .for_mo .inner .info .info_title span { color: #99ff46; } 
        .main_topbelt .for_mo .inner .right { position: relative; padding-left: 28px; } 
        .main_topbelt .for_mo .inner .right .when { margin-bottom: 12px; color: #99ff46; font-size: 19px; font-weight: 400; font-family: 'NotoSans KR'; } 
        .main_topbelt .for_mo .inner .right::before { position: absolute; top: 50%; left: 0; transform: translate(0, -50%); content: ''; width: 1px; height: 97px; background-color: #3391ee; } 
    }
    @media (max-width:576px){
        .main_topbelt .for_mo { height: 16vw; } 
        .main_topbelt .for_mo .inner .icon_live { width: 10vw; height: 10vw; } 
        /* .main_topbelt .for_mo .inner .info .info_title { display: flex; flex-direction: column; align-items: flex-start; justify-content: flex-start; width: 31vw; }  */
        /* .main_topbelt .for_mo .inner .info .info_title span { margin-bottom: 5px; }  */
        .main_topbelt .for_mo .inner .right { padding-left: 14px; } 
        .main_topbelt .for_mo .inner .right::before { height: 12vw; } 
        .main_topbelt .for_mo .inner .right .when { margin-bottom: 5px; font-size: 14px; } 
        .main_topbelt .for_mo .inner .right > img { width: 87px; } 
    }
</style>
<%end if%>
<%end if%>
<!-- End ������ ���̺� -->

<!-- Start ������2 -->
<% If cdate(lo_now_date) >= cdate("2022-10-26 20:30") and cdate(lo_now_date) < cdate("2022-10-26 23:59:59") then%>
<% If hcode = "gong" Then %>
<div class="main_topbelt">
    <a class="for_pc" href="/s/gong/event/2022/10180161/index.asp#eventWrap">
        <div class="inner">
            <div class="icon_live">
                <img src="<%=img_main%>/m/2022/1018_live/icon_bnr_live.png" alt="live">
            </div>
            <div class="info">
                <div class="info_title">2023 ��� <span>������</span> ���� ���� ����ȸ</div>
                <div class="info_desc">10/26(��) 19:00</div>
            </div>
            <img class="more" src="<%=img_main%>/m/2022/1018_live/icon_more_pc.png" alt="�ڼ�������">
        </div>
    </a>
    <div class="for_mo">
        <div class="inner">
            <a href="/s/gong/event/2022/10180161/index.asp#eventWrap">
                <div class="icon_live">
                    <img src="<%=img_main%>/m/2022/1018_live/icon_bnr_live_mo.png" alt="live">
                </div>
                <div class="info">
                    <div class="info_title"><span>������</span> ���� ���� ����ȸ</div>
                </div>
                <div class="right">
                    <div class="when">10/26(��) 19��</div>
                    <img src="<%=img_main%>/m/2022/1018_live/icon_more_mo.png" alt="�ڼ�������">
                </div>
            </a>
        </div>
    </div>
</div>
<style>
    .main_topbelt .for_pc { display: block; width:100%; height: 80px; background-color:#0c63b9; background-image: url('https://img.megagong.net/m/2022/1018_live/bnr_pc_bg.png'); background-repeat: no-repeat; background-position: 50%; background-size: cover; } 
    .main_topbelt .for_pc .inner { display: flex; flex-direction: row; align-items: center; justify-content: space-between; width: 1200px; margin: 0 auto; } 
    .main_topbelt .for_pc .inner .icon_live { margin-left: 47px; } 
    .main_topbelt .for_pc .inner .info { display: flex; flex-direction: row; align-items: center; justify-content: center; font-family: 'NotoSans KR'; } 
    .main_topbelt .for_pc .inner .info .info_title { margin-right: 63px; color: #fff; font-size: 33px; font-weight: bold; } 
    .main_topbelt .for_pc .inner .info .info_title span { color: #99ff46; } 
    .main_topbelt .for_pc .inner .info .info_desc { position: relative; padding-left: 47px; color: #99ff46; font-size: 21px; font-weight: 400; } 
    .main_topbelt .for_pc .inner .info .info_desc::before { position: absolute; top: 50%; left: 0; transform: translate(0, -50%); content: ''; width: 1px; height: 26px; background-color: #99ff46; } 
    .main_topbelt .for_pc .inner .more { margin-right: 32px; } 
    .main_topbelt .for_mo { display: none; } 

    @media (max-width:1200px){
        .main_topbelt .for_pc .inner { width: 100%; } 
        .main_topbelt .for_pc .inner .info .info_title { margin-right: 35px; font-size: 28px; } 
        .main_topbelt .for_pc .inner .info .info_desc { padding-left: 32px; font-size: 18px; } 
    }
    @media (max-width:960px){
        .main_topbelt .for_pc .inner .icon_live { margin-left: 24px; } 
        .main_topbelt .for_pc .inner .info .info_title { margin-right: 30px; font-size: 22px; } 
        .main_topbelt .for_pc .inner .info .info_desc { padding-left: 28px; font-size: 16px; } 
        .main_topbelt .for_pc .inner .more { margin-right: 15px; } 
    }
    @media (max-width:768px){
        .main_topbelt .for_pc { display: none; } 
        .main_topbelt .for_mo { display: flex; flex-direction: row; align-items: center; justify-content: center; width: 100%; height: 130px; background-color:#0c63b9; } 
        .main_topbelt .for_mo .inner a { display: flex; flex-direction: row; align-items: center; justify-content: space-between; width: 100%; margin: 0 auto; } 
        .main_topbelt .for_mo .inner .icon_live { margin-left: 0; margin-right: 4vw; } 
        .main_topbelt .for_mo .inner .info { display: flex; flex-direction: row; align-items: center; justify-content: center; font-family: 'NotoSans KR'; } 
        .main_topbelt .for_mo .inner .info .info_title { margin-right: 4vw; color: #fff; font-size: 4.5vw; font-weight: bold; } 
        .main_topbelt .for_mo .inner .info .info_title span { color: #99ff46; } 
        .main_topbelt .for_mo .inner .right { position: relative; padding-left: 28px; } 
        .main_topbelt .for_mo .inner .right .when { margin-bottom: 12px; color: #99ff46; font-size: 19px; font-weight: 400; font-family: 'NotoSans KR'; } 
        .main_topbelt .for_mo .inner .right::before { position: absolute; top: 50%; left: 0; transform: translate(0, -50%); content: ''; width: 1px; height: 97px; background-color: #3391ee; } 
    }
    @media (max-width:576px){
        .main_topbelt .for_mo { height: 16vw; } 
        .main_topbelt .for_mo .inner .icon_live { width: 10vw; height: 10vw; } 
        /* .main_topbelt .for_mo .inner .info .info_title { display: flex; flex-direction: column; align-items: flex-start; justify-content: flex-start; width: 31vw; }  */
        /* .main_topbelt .for_mo .inner .info .info_title span { margin-bottom: 5px; }  */
        .main_topbelt .for_mo .inner .right { padding-left: 14px; } 
        .main_topbelt .for_mo .inner .right::before { height: 12vw; } 
        .main_topbelt .for_mo .inner .right .when { margin-bottom: 5px; font-size: 14px; } 
        .main_topbelt .for_mo .inner .right > img { width: 87px; } 
    }
</style>
<%end if%>
<%end if%>
<!-- End ������2 -->

<!-- Start ��ȸ������1 -->
<% If cdate(lo_now_date) >= cdate("2022-10-27") and cdate(lo_now_date) < cdate("2022-10-27 18:49:59") then%>
<% If hcode = "gong" Then %>
<div class="main_topbelt">
    <a class="for_pc" href="/s/gong/event/2022/10180161/index.asp#eventWrap">
        <div class="inner">
            <div class="icon_live">
                <img src="<%=img_main%>/m/2022/1018_live/icon_bnr_live.png" alt="live">
            </div>
            <div class="info">
                <div class="info_title">2023 ��� <span>��ȸ������</span> ���� ���� ����ȸ</div>
                <div class="info_desc">10/27(��) 19:00</div>
            </div>
            <img class="more" src="<%=img_main%>/m/2022/1018_live/icon_more_pc.png" alt="�ڼ�������">
        </div>
    </a>
    <div class="for_mo">
        <div class="inner">
            <a href="/s/gong/event/2022/10180161/index.asp#eventWrap">
                <div class="icon_live">
                    <img src="<%=img_main%>/m/2022/1018_live/icon_bnr_live_mo.png" alt="live">
                </div>
                <div class="info">
                    <div class="info_title"><span>��ȸ������</span> ���� ���� ����ȸ</div>
                </div>
                <div class="right">
                    <div class="when">10/27(��) 19��</div>
                    <img src="<%=img_main%>/m/2022/1018_live/icon_more_mo.png" alt="�ڼ�������">
                </div>
            </a>
        </div>
    </div>
</div>
<style>
    .main_topbelt .for_pc { display: block; width:100%; height: 80px; background-color:#0c63b9; background-image: url('https://img.megagong.net/m/2022/1018_live/bnr_pc_bg.png'); background-repeat: no-repeat; background-position: 50%; background-size: cover; } 
    .main_topbelt .for_pc .inner { display: flex; flex-direction: row; align-items: center; justify-content: space-between; width: 1200px; margin: 0 auto; } 
    .main_topbelt .for_pc .inner .icon_live { margin-left: 47px; } 
    .main_topbelt .for_pc .inner .info { display: flex; flex-direction: row; align-items: center; justify-content: center; font-family: 'NotoSans KR'; } 
    .main_topbelt .for_pc .inner .info .info_title { margin-right: 63px; color: #fff; font-size: 33px; font-weight: bold; } 
    .main_topbelt .for_pc .inner .info .info_title span { color: #99ff46; } 
    .main_topbelt .for_pc .inner .info .info_desc { position: relative; padding-left: 47px; color: #99ff46; font-size: 21px; font-weight: 400; } 
    .main_topbelt .for_pc .inner .info .info_desc::before { position: absolute; top: 50%; left: 0; transform: translate(0, -50%); content: ''; width: 1px; height: 26px; background-color: #99ff46; } 
    .main_topbelt .for_pc .inner .more { margin-right: 32px; } 
    .main_topbelt .for_mo { display: none; } 

    @media (max-width:1200px){
        .main_topbelt .for_pc .inner { width: 100%; } 
        .main_topbelt .for_pc .inner .info .info_title { margin-right: 35px; font-size: 28px; } 
        .main_topbelt .for_pc .inner .info .info_desc { padding-left: 32px; font-size: 18px; } 
    }
    @media (max-width:960px){
        .main_topbelt .for_pc .inner .icon_live { margin-left: 24px; } 
        .main_topbelt .for_pc .inner .info .info_title { margin-right: 30px; font-size: 22px; } 
        .main_topbelt .for_pc .inner .info .info_desc { padding-left: 28px; font-size: 16px; } 
        .main_topbelt .for_pc .inner .more { margin-right: 15px; } 
    }
    @media (max-width:768px){
        .main_topbelt .for_pc { display: none; } 
        .main_topbelt .for_mo { display: flex; flex-direction: row; align-items: center; justify-content: center; width: 100%; height: 130px; background-color:#0c63b9; } 
        .main_topbelt .for_mo .inner a { display: flex; flex-direction: row; align-items: center; justify-content: space-between; width: 100%; margin: 0 auto; } 
        .main_topbelt .for_mo .inner .icon_live { margin-left: 0; margin-right: 4vw; } 
        .main_topbelt .for_mo .inner .info { display: flex; flex-direction: row; align-items: center; justify-content: center; font-family: 'NotoSans KR'; } 
        .main_topbelt .for_mo .inner .info .info_title { margin-right: 4vw; color: #fff; font-size: 4.5vw; font-weight: bold; } 
        .main_topbelt .for_mo .inner .info .info_title span { color: #99ff46; } 
        .main_topbelt .for_mo .inner .right { position: relative; padding-left: 28px; } 
        .main_topbelt .for_mo .inner .right .when { margin-bottom: 12px; color: #99ff46; font-size: 19px; font-weight: 400; font-family: 'NotoSans KR'; } 
        .main_topbelt .for_mo .inner .right::before { position: absolute; top: 50%; left: 0; transform: translate(0, -50%); content: ''; width: 1px; height: 97px; background-color: #3391ee; } 
    }
    @media (max-width:576px){
        .main_topbelt .for_mo { height: 16vw; } 
        .main_topbelt .for_mo .inner .icon_live { width: 10vw; height: 10vw; } 
        /* .main_topbelt .for_mo .inner .info .info_title { display: flex; flex-direction: column; align-items: flex-start; justify-content: flex-start; width: 31vw; }  */
        /* .main_topbelt .for_mo .inner .info .info_title span { margin-bottom: 5px; }  */
        .main_topbelt .for_mo .inner .right { padding-left: 14px; } 
        .main_topbelt .for_mo .inner .right::before { height: 12vw; } 
        .main_topbelt .for_mo .inner .right .when { margin-bottom: 5px; font-size: 14px; } 
        .main_topbelt .for_mo .inner .right > img { width: 87px; } 
    }
</style>
<%end if%>
<%end if%>
<!-- End ��ȸ������1 -->

<!-- Start ��ȸ������ ���̺� -->
<% If cdate(lo_now_date) >= cdate("2022-10-27 18:50:00") and cdate(lo_now_date) < cdate("2022-10-27 20:29:59") then%>
<% If hcode = "gong" Then %>
<div class="main_topbelt">
    <a class="for_pc" href="/s/gong/event/2022/10180161/index.asp#eventWrap">
        <div class="inner">
            <div class="icon_live">
                <div>
                    <img src="<%=img_main%>/m/2022/1018_live/icon_bnr_onair1.png" alt="live">
                </div>
                <div>
                    <img src="<%=img_main%>/m/2022/1018_live/icon_bnr_onair2.png" alt="live">
                </div>
            </div>
            <div class="info">
                <div class="info_title">2023 ��� <span>��ȸ������</span> ���� ���� ����ȸ</div>
                <div class="info_desc">10/27(��) 19:00</div>
            </div>
            <img class="more" src="<%=img_main%>/m/2022/1018_live/icon_more_pc.png" alt="�ڼ�������">
        </div>
    </a>
    <div class="for_mo">
        <div class="inner">
            <a href="/s/gong/event/2022/10180161/index.asp#eventWrap">
                <div class="icon_live">
                    <div>
                        <img src="<%=img_main%>/m/2022/1018_live/icon_bnr_onair1_mo.png" alt="live">
                    </div>
                    <div>
                        <img src="<%=img_main%>/m/2022/1018_live/icon_bnr_onair2_mo.png" alt="live">
                    </div>
                </div>
                <div class="info">
                    <div class="info_title"><span>��ȸ������</span> ���� ���� ����ȸ</div>
                </div>
                <div class="right">
                    <div class="when">10/27(��) 19��</div>
                    <img src="<%=img_main%>/m/2022/1018_live/icon_more_mo.png" alt="�ڼ�������">
                </div>
            </a>
        </div>
    </div>
</div>
<script>
    	$('.icon_live').slick({
		slidesToShow: 1,
		slidesToScroll: 1,
		autoplay: true,
		autoplaySpeed: 1000,
		dots: false,
		infinite: true,
		speed: 500,
		arrows: false,
		fade: true,
		cssEase: 'linear'
	});
</script>
<style>
    .main_topbelt .for_pc { display: block; width:100%; height: 80px; background-color:#0c63b9; background-image: url('https://img.megagong.net/m/2022/1018_live/bnr_pc_bg.png'); background-repeat: no-repeat; background-position: 50%; background-size: cover; } 
    .main_topbelt .for_pc .inner { display: flex; flex-direction: row; align-items: center; justify-content: space-between; width: 1200px; margin: 0 auto; } 
    .main_topbelt .for_pc .inner .icon_live { display: inline-block; width: 103px; height: 31px; margin-left: 47px; } 
    .main_topbelt .for_pc .inner .info { display: flex; flex-direction: row; align-items: center; justify-content: center; font-family: 'NotoSans KR'; } 
    .main_topbelt .for_pc .inner .info .info_title { margin-right: 63px; color: #fff; font-size: 33px; font-weight: bold; } 
    .main_topbelt .for_pc .inner .info .info_title span { color: #99ff46; } 
    .main_topbelt .for_pc .inner .info .info_desc { position: relative; padding-left: 47px; color: #99ff46; font-size: 21px; font-weight: 400; } 
    .main_topbelt .for_pc .inner .info .info_desc::before { position: absolute; top: 50%; left: 0; transform: translate(0, -50%); content: ''; width: 1px; height: 26px; background-color: #99ff46; } 
    .main_topbelt .for_pc .inner .more { margin-right: 32px; } 
    .main_topbelt .for_mo { display: none; } 

    @media (max-width:1200px){
        .main_topbelt .for_pc .inner { width: 100%; } 
        .main_topbelt .for_pc .inner .info .info_title { margin-right: 35px; font-size: 28px; } 
        .main_topbelt .for_pc .inner .info .info_desc { padding-left: 32px; font-size: 18px; } 
    }
    @media (max-width:960px){
        .main_topbelt .for_pc .inner .icon_live { margin-left: 24px; } 
        .main_topbelt .for_pc .inner .info .info_title { margin-right: 30px; font-size: 22px; } 
        .main_topbelt .for_pc .inner .info .info_desc { padding-left: 28px; font-size: 16px; } 
        .main_topbelt .for_pc .inner .more { margin-right: 15px; } 
    }
    @media (max-width:768px){
        .main_topbelt .for_pc { display: none; } 
        .main_topbelt .for_mo { display: flex; flex-direction: row; align-items: center; justify-content: center; width: 100%; height: 130px; background-color:#0c63b9; } 
        .main_topbelt .for_mo .inner a { display: flex; flex-direction: row; align-items: center; justify-content: space-between; width: 100%; margin: 0 auto; } 
        .main_topbelt .for_mo .inner .icon_live { display: inline-block; width: 76px; height: 76px; margin-left: 0; margin-right: 4vw; } 
        .main_topbelt .for_mo .inner .info { display: flex; flex-direction: row; align-items: center; justify-content: center; font-family: 'NotoSans KR'; } 
        .main_topbelt .for_mo .inner .info .info_title { margin-right: 4vw; color: #fff; font-size: 4.5vw; font-weight: bold; } 
        .main_topbelt .for_mo .inner .info .info_title span { color: #99ff46; } 
        .main_topbelt .for_mo .inner .right { position: relative; padding-left: 28px; } 
        .main_topbelt .for_mo .inner .right .when { margin-bottom: 12px; color: #99ff46; font-size: 19px; font-weight: 400; font-family: 'NotoSans KR'; } 
        .main_topbelt .for_mo .inner .right::before { position: absolute; top: 50%; left: 0; transform: translate(0, -50%); content: ''; width: 1px; height: 97px; background-color: #3391ee; } 
    }
    @media (max-width:576px){
        .main_topbelt .for_mo { height: 16vw; } 
        .main_topbelt .for_mo .inner .icon_live { width: 10vw; height: 10vw; } 
        /* .main_topbelt .for_mo .inner .info .info_title { display: flex; flex-direction: column; align-items: flex-start; justify-content: flex-start; width: 31vw; }  */
        /* .main_topbelt .for_mo .inner .info .info_title span { margin-bottom: 5px; }  */
        .main_topbelt .for_mo .inner .right { padding-left: 14px; } 
        .main_topbelt .for_mo .inner .right::before { height: 12vw; } 
        .main_topbelt .for_mo .inner .right .when { margin-bottom: 5px; font-size: 14px; } 
        .main_topbelt .for_mo .inner .right > img { width: 87px; } 
    }
</style>
<%end if%>
<%end if%>
<!-- End ��ȸ������ ���̺� -->

<!-- Start ��ȸ������2 -->
<% If cdate(lo_now_date) >= cdate("2022-10-27 20:30") and cdate(lo_now_date) < cdate("2022-10-27 23:59:59") then%>
<% If hcode = "gong" Then %>
<div class="main_topbelt">
    <a class="for_pc" href="/s/gong/event/2022/10180161/index.asp#eventWrap">
        <div class="inner">
            <div class="icon_live">
                <img src="<%=img_main%>/m/2022/1018_live/icon_bnr_live.png" alt="live">
            </div>
            <div class="info">
                <div class="info_title">2023 ��� <span>��ȸ������</span> ���� ���� ����ȸ</div>
                <div class="info_desc">10/26(��) 19:00</div>
            </div>
            <img class="more" src="<%=img_main%>/m/2022/1018_live/icon_more_pc.png" alt="�ڼ�������">
        </div>
    </a>
    <div class="for_mo">
        <div class="inner">
            <a href="/s/gong/event/2022/10180161/index.asp#eventWrap">
                <div class="icon_live">
                    <img src="<%=img_main%>/m/2022/1018_live/icon_bnr_live_mo.png" alt="live">
                </div>
                <div class="info">
                    <div class="info_title"><span>��ȸ������</span> ���� ���� ����ȸ</div>
                </div>
                <div class="right">
                    <div class="when">10/26(��) 19��</div>
                    <img src="<%=img_main%>/m/2022/1018_live/icon_more_mo.png" alt="�ڼ�������">
                </div>
            </a>
        </div>
    </div>
</div>
<style>
    .main_topbelt .for_pc { display: block; width:100%; height: 80px; background-color:#0c63b9; background-image: url('https://img.megagong.net/m/2022/1018_live/bnr_pc_bg.png'); background-repeat: no-repeat; background-position: 50%; background-size: cover; } 
    .main_topbelt .for_pc .inner { display: flex; flex-direction: row; align-items: center; justify-content: space-between; width: 1200px; margin: 0 auto; } 
    .main_topbelt .for_pc .inner .icon_live { margin-left: 47px; } 
    .main_topbelt .for_pc .inner .info { display: flex; flex-direction: row; align-items: center; justify-content: center; font-family: 'NotoSans KR'; } 
    .main_topbelt .for_pc .inner .info .info_title { margin-right: 63px; color: #fff; font-size: 33px; font-weight: bold; } 
    .main_topbelt .for_pc .inner .info .info_title span { color: #99ff46; } 
    .main_topbelt .for_pc .inner .info .info_desc { position: relative; padding-left: 47px; color: #99ff46; font-size: 21px; font-weight: 400; } 
    .main_topbelt .for_pc .inner .info .info_desc::before { position: absolute; top: 50%; left: 0; transform: translate(0, -50%); content: ''; width: 1px; height: 26px; background-color: #99ff46; } 
    .main_topbelt .for_pc .inner .more { margin-right: 32px; } 
    .main_topbelt .for_mo { display: none; } 

    @media (max-width:1200px){
        .main_topbelt .for_pc .inner { width: 100%; } 
        .main_topbelt .for_pc .inner .info .info_title { margin-right: 35px; font-size: 28px; } 
        .main_topbelt .for_pc .inner .info .info_desc { padding-left: 32px; font-size: 18px; } 
    }
    @media (max-width:960px){
        .main_topbelt .for_pc .inner .icon_live { margin-left: 24px; } 
        .main_topbelt .for_pc .inner .info .info_title { margin-right: 30px; font-size: 22px; } 
        .main_topbelt .for_pc .inner .info .info_desc { padding-left: 28px; font-size: 16px; } 
        .main_topbelt .for_pc .inner .more { margin-right: 15px; } 
    }
    @media (max-width:768px){
        .main_topbelt .for_pc { display: none; } 
        .main_topbelt .for_mo { display: flex; flex-direction: row; align-items: center; justify-content: center; width: 100%; height: 130px; background-color:#0c63b9; } 
        .main_topbelt .for_mo .inner a { display: flex; flex-direction: row; align-items: center; justify-content: space-between; width: 100%; margin: 0 auto; } 
        .main_topbelt .for_mo .inner .icon_live { margin-left: 0; margin-right: 4vw; } 
        .main_topbelt .for_mo .inner .info { display: flex; flex-direction: row; align-items: center; justify-content: center; font-family: 'NotoSans KR'; } 
        .main_topbelt .for_mo .inner .info .info_title { margin-right: 4vw; color: #fff; font-size: 4.5vw; font-weight: bold; } 
        .main_topbelt .for_mo .inner .info .info_title span { color: #99ff46; } 
        .main_topbelt .for_mo .inner .right { position: relative; padding-left: 28px; } 
        .main_topbelt .for_mo .inner .right .when { margin-bottom: 12px; color: #99ff46; font-size: 19px; font-weight: 400; font-family: 'NotoSans KR'; } 
        .main_topbelt .for_mo .inner .right::before { position: absolute; top: 50%; left: 0; transform: translate(0, -50%); content: ''; width: 1px; height: 97px; background-color: #3391ee; } 
    }
    @media (max-width:576px){
        .main_topbelt .for_mo { height: 16vw; } 
        .main_topbelt .for_mo .inner .icon_live { width: 10vw; height: 10vw; } 
        /* .main_topbelt .for_mo .inner .info .info_title { display: flex; flex-direction: column; align-items: flex-start; justify-content: flex-start; width: 31vw; }  */
        /* .main_topbelt .for_mo .inner .info .info_title span { margin-bottom: 5px; }  */
        .main_topbelt .for_mo .inner .right { padding-left: 14px; } 
        .main_topbelt .for_mo .inner .right::before { height: 12vw; } 
        .main_topbelt .for_mo .inner .right .when { margin-bottom: 5px; font-size: 14px; } 
        .main_topbelt .for_mo .inner .right > img { width: 87px; } 
    }
</style>
<%end if%>
<%end if%>
<!-- End ��ȸ������2 -->


<!-- Start ������ -->
<% If cdate(lo_now_date) >= cdate("2022-10-28") and cdate(lo_now_date) < cdate("2022-10-28 18:49:59") then%>
<% If hcode = "gong" Then %>
<div class="main_topbelt">
    <a class="for_pc" href="/s/gong/event/2022/10180161/index.asp#eventWrap">
        <div class="inner">
            <div class="icon_live">
                <img src="<%=img_main%>/m/2022/1018_live/icon_bnr_live.png" alt="live">
            </div>
            <div class="info">
                <div class="info_title">2023 ��� <span>������</span> ���� ���� ����ȸ</div>
                <div class="info_desc">10/28(��) 19:00</div>
            </div>
            <img class="more" src="<%=img_main%>/m/2022/1018_live/icon_more_pc.png" alt="�ڼ�������">
        </div>
    </a>
    <div class="for_mo">
        <div class="inner">
            <a href="/s/gong/event/2022/10180161/index.asp#eventWrap">
                <div class="icon_live">
                    <img src="<%=img_main%>/m/2022/1018_live/icon_bnr_live_mo.png" alt="live">
                </div>
                <div class="info">
                    <div class="info_title"><span>������</span> ���� ���� ����ȸ</div>
                </div>
                <div class="right">
                    <div class="when">10/28(��) 19��</div>
                    <img src="<%=img_main%>/m/2022/1018_live/icon_more_mo.png" alt="�ڼ�������">
                </div>
            </a>
        </div>
    </div>
</div>
<style>
    .main_topbelt .for_pc { display: block; width:100%; height: 80px; background-color:#0c63b9; background-image: url('https://img.megagong.net/m/2022/1018_live/bnr_pc_bg.png'); background-repeat: no-repeat; background-position: 50%; background-size: cover; } 
    .main_topbelt .for_pc .inner { display: flex; flex-direction: row; align-items: center; justify-content: space-between; width: 1200px; margin: 0 auto; } 
    .main_topbelt .for_pc .inner .icon_live { margin-left: 47px; } 
    .main_topbelt .for_pc .inner .info { display: flex; flex-direction: row; align-items: center; justify-content: center; font-family: 'NotoSans KR'; } 
    .main_topbelt .for_pc .inner .info .info_title { margin-right: 63px; color: #fff; font-size: 33px; font-weight: bold; } 
    .main_topbelt .for_pc .inner .info .info_title span { color: #99ff46; } 
    .main_topbelt .for_pc .inner .info .info_desc { position: relative; padding-left: 47px; color: #99ff46; font-size: 21px; font-weight: 400; } 
    .main_topbelt .for_pc .inner .info .info_desc::before { position: absolute; top: 50%; left: 0; transform: translate(0, -50%); content: ''; width: 1px; height: 26px; background-color: #99ff46; } 
    .main_topbelt .for_pc .inner .more { margin-right: 32px; } 
    .main_topbelt .for_mo { display: none; } 

    @media (max-width:1200px){
        .main_topbelt .for_pc .inner { width: 100%; } 
        .main_topbelt .for_pc .inner .info .info_title { margin-right: 35px; font-size: 28px; } 
        .main_topbelt .for_pc .inner .info .info_desc { padding-left: 32px; font-size: 18px; } 
    }
    @media (max-width:960px){
        .main_topbelt .for_pc .inner .icon_live { margin-left: 24px; } 
        .main_topbelt .for_pc .inner .info .info_title { margin-right: 30px; font-size: 22px; } 
        .main_topbelt .for_pc .inner .info .info_desc { padding-left: 28px; font-size: 16px; } 
        .main_topbelt .for_pc .inner .more { margin-right: 15px; } 
    }
    @media (max-width:768px){
        .main_topbelt .for_pc { display: none; } 
        .main_topbelt .for_mo { display: flex; flex-direction: row; align-items: center; justify-content: center; width: 100%; height: 130px; background-color:#0c63b9; } 
        .main_topbelt .for_mo .inner a { display: flex; flex-direction: row; align-items: center; justify-content: space-between; width: 100%; margin: 0 auto; } 
        .main_topbelt .for_mo .inner .icon_live { margin-left: 0; margin-right: 4vw; } 
        .main_topbelt .for_mo .inner .info { display: flex; flex-direction: row; align-items: center; justify-content: center; font-family: 'NotoSans KR'; } 
        .main_topbelt .for_mo .inner .info .info_title { margin-right: 4vw; color: #fff; font-size: 4.5vw; font-weight: bold; } 
        .main_topbelt .for_mo .inner .info .info_title span { color: #99ff46; } 
        .main_topbelt .for_mo .inner .right { position: relative; padding-left: 28px; } 
        .main_topbelt .for_mo .inner .right .when { margin-bottom: 12px; color: #99ff46; font-size: 19px; font-weight: 400; font-family: 'NotoSans KR'; } 
        .main_topbelt .for_mo .inner .right::before { position: absolute; top: 50%; left: 0; transform: translate(0, -50%); content: ''; width: 1px; height: 97px; background-color: #3391ee; } 
    }
    @media (max-width:576px){
        .main_topbelt .for_mo { height: 16vw; } 
        .main_topbelt .for_mo .inner .icon_live { width: 10vw; height: 10vw; } 
        /* .main_topbelt .for_mo .inner .info .info_title { display: flex; flex-direction: column; align-items: flex-start; justify-content: flex-start; width: 31vw; }  */
        /* .main_topbelt .for_mo .inner .info .info_title span { margin-bottom: 5px; }  */
        .main_topbelt .for_mo .inner .right { padding-left: 14px; } 
        .main_topbelt .for_mo .inner .right::before { height: 12vw; } 
        .main_topbelt .for_mo .inner .right .when { margin-bottom: 5px; font-size: 14px; } 
        .main_topbelt .for_mo .inner .right > img { width: 87px; } 
    }
</style>
<%end if%>
<%end if%>
<!-- End ������ -->

<!-- Start ������ ���̺� -->
<% If cdate(lo_now_date) >= cdate("2022-10-28 18:50:00") and cdate(lo_now_date) < cdate("2022-10-28 20:29:59") then%>
<% If hcode = "gong" Then %>
<div class="main_topbelt">
    <a class="for_pc" href="/s/gong/event/2022/10180161/index.asp#eventWrap">
        <div class="inner">
            <div class="icon_live">
                <div>
                    <img src="<%=img_main%>/m/2022/1018_live/icon_bnr_onair1.png" alt="live">
                </div>
                <div>
                    <img src="<%=img_main%>/m/2022/1018_live/icon_bnr_onair2.png" alt="live">
                </div>
            </div>
            <div class="info">
                <div class="info_title">2023 ��� <span>������</span> ���� ���� ����ȸ</div>
                <div class="info_desc">10/28(��) 19:00</div>
            </div>
            <img class="more" src="<%=img_main%>/m/2022/1018_live/icon_more_pc.png" alt="�ڼ�������">
        </div>
    </a>
    <div class="for_mo">
        <div class="inner">
            <a href="/s/gong/event/2022/10180161/index.asp#eventWrap">
                <div class="icon_live">
                    <div>
                        <img src="<%=img_main%>/m/2022/1018_live/icon_bnr_onair1_mo.png" alt="live">
                    </div>
                    <div>
                        <img src="<%=img_main%>/m/2022/1018_live/icon_bnr_onair2_mo.png" alt="live">
                    </div>
                </div>
                <div class="info">
                    <div class="info_title"><span>������</span> ���� ���� ����ȸ</div>
                </div>
                <div class="right">
                    <div class="when">10/28(��) 19��</div>
                    <img src="<%=img_main%>/m/2022/1018_live/icon_more_mo.png" alt="�ڼ�������">
                </div>
            </a>
        </div>
    </div>
</div>
<script>
    	$('.icon_live').slick({
		slidesToShow: 1,
		slidesToScroll: 1,
		autoplay: true,
		autoplaySpeed: 1000,
		dots: false,
		infinite: true,
		speed: 500,
		arrows: false,
		fade: true,
		cssEase: 'linear'
	});
</script>
<style>
    .main_topbelt .for_pc { display: block; width:100%; height: 80px; background-color:#0c63b9; background-image: url('https://img.megagong.net/m/2022/1018_live/bnr_pc_bg.png'); background-repeat: no-repeat; background-position: 50%; background-size: cover; } 
    .main_topbelt .for_pc .inner { display: flex; flex-direction: row; align-items: center; justify-content: space-between; width: 1200px; margin: 0 auto; } 
    .main_topbelt .for_pc .inner .icon_live { display: inline-block; width: 103px; height: 31px; margin-left: 47px; } 
    .main_topbelt .for_pc .inner .info { display: flex; flex-direction: row; align-items: center; justify-content: center; font-family: 'NotoSans KR'; } 
    .main_topbelt .for_pc .inner .info .info_title { margin-right: 63px; color: #fff; font-size: 33px; font-weight: bold; } 
    .main_topbelt .for_pc .inner .info .info_title span { color: #99ff46; } 
    .main_topbelt .for_pc .inner .info .info_desc { position: relative; padding-left: 47px; color: #99ff46; font-size: 21px; font-weight: 400; } 
    .main_topbelt .for_pc .inner .info .info_desc::before { position: absolute; top: 50%; left: 0; transform: translate(0, -50%); content: ''; width: 1px; height: 26px; background-color: #99ff46; } 
    .main_topbelt .for_pc .inner .more { margin-right: 32px; } 
    .main_topbelt .for_mo { display: none; } 

    @media (max-width:1200px){
        .main_topbelt .for_pc .inner { width: 100%; } 
        .main_topbelt .for_pc .inner .info .info_title { margin-right: 35px; font-size: 28px; } 
        .main_topbelt .for_pc .inner .info .info_desc { padding-left: 32px; font-size: 18px; } 
    }
    @media (max-width:960px){
        .main_topbelt .for_pc .inner .icon_live { margin-left: 24px; } 
        .main_topbelt .for_pc .inner .info .info_title { margin-right: 30px; font-size: 22px; } 
        .main_topbelt .for_pc .inner .info .info_desc { padding-left: 28px; font-size: 16px; } 
        .main_topbelt .for_pc .inner .more { margin-right: 15px; } 
    }
    @media (max-width:768px){
        .main_topbelt .for_pc { display: none; } 
        .main_topbelt .for_mo { display: flex; flex-direction: row; align-items: center; justify-content: center; width: 100%; height: 130px; background-color:#0c63b9; } 
        .main_topbelt .for_mo .inner a { display: flex; flex-direction: row; align-items: center; justify-content: space-between; width: 100%; margin: 0 auto; } 
        .main_topbelt .for_mo .inner .icon_live { display: inline-block; width: 76px; height: 76px; margin-left: 0; margin-right: 4vw; } 
        .main_topbelt .for_mo .inner .info { display: flex; flex-direction: row; align-items: center; justify-content: center; font-family: 'NotoSans KR'; } 
        .main_topbelt .for_mo .inner .info .info_title { margin-right: 4vw; color: #fff; font-size: 4.5vw; font-weight: bold; } 
        .main_topbelt .for_mo .inner .info .info_title span { color: #99ff46; } 
        .main_topbelt .for_mo .inner .right { position: relative; padding-left: 28px; } 
        .main_topbelt .for_mo .inner .right .when { margin-bottom: 12px; color: #99ff46; font-size: 19px; font-weight: 400; font-family: 'NotoSans KR'; } 
        .main_topbelt .for_mo .inner .right::before { position: absolute; top: 50%; left: 0; transform: translate(0, -50%); content: ''; width: 1px; height: 97px; background-color: #3391ee; } 
    }
    @media (max-width:576px){
        .main_topbelt .for_mo { height: 16vw; } 
        .main_topbelt .for_mo .inner .icon_live { width: 10vw; height: 10vw; } 
        /* .main_topbelt .for_mo .inner .info .info_title { display: flex; flex-direction: column; align-items: flex-start; justify-content: flex-start; width: 31vw; }  */
        /* .main_topbelt .for_mo .inner .info .info_title span { margin-bottom: 5px; }  */
        .main_topbelt .for_mo .inner .right { padding-left: 14px; } 
        .main_topbelt .for_mo .inner .right::before { height: 12vw; } 
        .main_topbelt .for_mo .inner .right .when { margin-bottom: 5px; font-size: 14px; } 
        .main_topbelt .for_mo .inner .right > img { width: 87px; } 
    }
</style>
<%end if%>
<%end if%>
<!-- End ������ ���̺� -->

<!-- 2023 ��� ���� ���� ���� ����ȸ -->
<% If cdate(lo_now_date) >= cdate("2022-10-28 20:30:00") and cdate(lo_now_date) < cdate("2022-11-02 23:59:59")  then%>
<% If hcode = "gong" Then %>
<div class="main_topbelt">
    <div class="for_pc">
        <div class="inner">
            <a href="/s/gong/event/2022/10180161/index.asp#eventWrap" title="�ް������� ���� ���� ���� ����ȸ">
                <img src="<%=img_main%>/m/2022/1018_live/plan_c_bnr_pc.jpg" alt="�ް������� ���� ���� ���� ����ȸ">
            </a>
        </div>
    </div>
    <div class="for_mo">
        <div class="inner">
            <a href="/s/gong/event/2022/10180161/index.asp#eventWrap" title="�ް������� ���� ���� ���� ����ȸ">
                <img src="<%=img_main%>/m/2022/1018_live/plan_c_bnr_mo.jpg" alt="�ް������� ���� ���� ���� ����ȸ">
            </a>
        </div>
    </div>
</div>
<style>
    .main_topbelt .for_pc {background:#0c63b9; width:100%; text-align:center;}
    /* .main_topbelt .for_pc .inner {position: relative;} */
    /* .main_topbelt .for_pc div a{position: absolute; top: 50%; left: calc(50% + 344px); transform: translate(-50%, -50%); width: 103px; height: 31px; } */
    .main_topbelt .for_mo {display: none;}
    @media (max-width:1600px){
        .main_topbelt .for_pc .inner {width: 100%;}
        /* .main_topbelt .for_pc div a{left: calc(50% + 21.5%);width: 6.8vw;height: 2.4vw;} */
    }
    @media (max-width:768px) {
        .main_topbelt .for_pc {display: none;}
        .main_topbelt .for_mo {display: block;}
        .main_topbelt .for_mo div a {display: block; height: 100%;}
    }
</style>
<%end if%>
<%end if%>
<!-- // 2023 ��� ���� ���� ���� ����ȸ -->


<% if cdate(lo_now_date) >= cdate("2022-06-20") and cdate(lo_now_date) < cdate("2022-06-23")then %>
<!-- �հݿ��� Ǯ����-->
<% If hcode = "gong" and  CDate(lo_now_date) >= CDate("2022-06-18 11:00") then%>
<%
    TB_MSG = "�հݿ��� Ǯ���� ��/��/��/��"
    strSql = "SELECT TB_MSG = ISNULL(TB_MSG, '�հݿ��� Ǯ���� ��/��/��/��') FROM ME_TAB_BUBBLE WITH(NOLOCK) WHERE TB_EXAM_IDX = 13 AND TB_TAB_NO = 0"
    set objrs = dbexec(strsql, "exam")
    if not (objrs.eof and objrs.bof) then
        TB_MSG = objrs("TB_MSG")
    end if
    call dbclose(objrs)
%>
<div class="fullBan notosans">
    <div class="item">
        <a href="/s/gong/full/20220618/index.asp#eventWrap" title="�հݿ��� Ǯ����">
            <div class="full_area">
                <span class="label"><img src="<%=img_main%>/m/2022/0618_fullserv/fullBan_label.png" alt="��Ȯ�� 100%"></span>
                <div class="txt">
                    <strong><span>06/18(��) ������ 9��</span> <%=TB_MSG%></strong>
                    <p>*�ް������� 2022�� �հݿ��� Ǯ���� ������ 9�� �Ϲ�����(����)/�Ϲ�����(����)/�������/��������</p>
                </div>
                <!-- <div class="gift">
                    <img src="<%=img_main%>/m/2022/0402_fullserv/fullBan_gift.jpg" alt="��ǰ�̹���" class="pc">
                    <img src="<%=img_main%>/m/2022/0402_fullserv/fullBan_gift_mo.jpg" alt="��ǰ�̹���" class="mo">
                </div> -->
                
            </div>
        </a>
    </div>
</div>
<style>
    /* Ǯ���� */
    .fullBan{background:#02bf99 }
    .fullBan .item {width: 1200px;margin: 0 auto;}
    .fullBan .item a {padding: 13.5px 0;background: url(<%=img_main%>/m/2022/0618_fullserv/fullBan_bg_gong.jpg) no-repeat center right;display: block;background-size:auto 100%;}
    .fullBan .item a .full_area {position:relative;line-height: 1.2;text-align: left;padding-left:130px;}
    .fullBan .item a .full_area .label {position:absolute;top:50%;left: 40px;transform: translateY(-50%);}
    .fullBan .item a .full_area .txt {vertical-align: top;display:inline-block;}
    .fullBan .item a .full_area .txt span {display: inline-block;font-weight:600;font-size: 14px;color: #000000;vertical-align: middle;}
    .fullBan .item a .full_area .txt strong {display: inline-block;font-weight:bold;font-size: 30px;color:#fff;margin: 0 auto;}
    .fullBan .item a .full_area .txt p {font-weight:500;font-size:10px;color: #128774;margin-top: 5px;}


    @media all and (max-width: 1200px){
        /* Ǯ���� */
        .fullBan .item{width: 100%;}
        .fullBan .item a .full_area {padding-left:14%;}
        .fullBan .item a .full_area .label {left:4%;width:8.3%;}
        .fullBan .item a .full_area .txt {position:relative;z-index:1;width:100%;}
        .fullBan .item a .full_area .txt span {font-size:1.4vw;}
        .fullBan .item a .full_area .txt strong {font-size:3vw;}
        .fullBan .item a .full_area .txt p {margin-top:1.2%;font-size:.9vw;}
        /* .fullBan .item a .full_area .gift {width:45%;} */
    }
    @media all and (max-width: 768px){
        /* Ǯ���� */
        .fullBan{width: 100%;}
        .fullBan .item a {padding: 1% 0;background:#02bf99 url(https://img.megagong.net/m/2022/0618_fullserv/fullBan_bg_mo.jpg) no-repeat center right;background-size:auto 100%;}
        .fullBan .item a .full_area {padding: 0 1%;}
        .fullBan .item a .full_area .label {display:none;}
        .fullBan .item a .full_area .txt span {margin-bottom:1%;font-size: 3vw;display: block;}
        .fullBan .item a .full_area .txt strong {font-size: 4.2vw;text-align: left;}
        .fullBan .item a .full_area .txt p {font-size: 2vw;}

    }
    @media all and (max-width: 400px){
        /* Ǯ���� */
        .fullBan .item a .full_area .txt strong {font-size:3.4vw;}
    }
</style>
<%end if%>
<!-- // �հݿ��� Ǯ����-->
<% end if %>

<!-- ������ ���� ���̺� ��Ʃ�� �˾� -->
<% if instr(1, NowUrl, "/megagong.asp" ) > 0 Then %>
    <%If cdate(lo_now_date) >= cdate("2022-04-02 18:50") and youtube_live_banner_main("youtube7") = "Y" then%>
    <!--
    <div id="briefing_pop2" class="briefLayer d0402">
        <div class="dimBg"></div>
        <div id="modalLayer" class="briefing_pop_layer">
            <div class="brfpop_container">
                <div class="brflayer_content">
                    <iframe width="100%" height="100%" src="https://www.youtube.com/embed/XbOdGL3HM0Y" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                </div>
                <button class="btnClose">�ݱ�</button>
            </div>
        </div>
    </div>
    <style>
        .briefLayer.d0402 {position: fixed;display:block;top: 0;left: 0;width: 100%;height: 100%;z-index: 102;}
        .briefLayer.d0402 .dimBg{position: fixed;left: 0;top: 0;width: 100%;height: 100%;background: #000;opacity: 0.9;cursor: pointer;}
        .briefLayer.d0402 .briefing_pop_layer {display: block;width: 1000px;height:565px;position: absolute;top: 50%;left: 50%;z-index: 10;transform: translate(-50%, -50%);}
        .brfpop_container,.brflayer_content {position: relative;height: 100%;}
        .brfpop_container:after {display: block;clear: both;content: '';}
        .briefLayer.d0402 .btnClose{position: absolute;top: -30px;right: 0;border: 1px solid #fff;padding: 3px;color:#fff;}

        @media (max-width: 1280px) {
            .brflayer_content img{width: 100%;}
            .briefLayer.d0402 .briefing_pop_layer{width: 80%;height: 45vw;}
        }
        @media (max-width: 768px) {
            .brflayer_content img.pc{display: none;}
            .briefLayer.d0402 .briefing_pop_layer{width: 95%;height: 55vw;}
        }
    </style>
    <script type="text/javascript">
        $('.briefLayer .btnClose,.briefLayer .dimBg').on('click', function(){
            $(".briefLayer").hide();
        });
    </script>
    -->
    <%end if%>
<%end if%>
<!-- // ������ ���� ���̺� ��Ʃ�� �˾� -->
<% End If %>


<!--���̺� �˾� on/off ��� �߰� 221022-->
<%if hcode = "gong" and cdate(lo_now_date) >= cdate("2022-10-22 13:50") then%>
<% if instr(1, NowUrl, "/megagong.asp" ) > 0 Then %>
<%If youtube_live_banner_main("youtube11") = "Y" then%> 

<% if 1=2 then%>
<div class="cmg_popup_wrap mg_today cmg_fullpage" id="popupVideo">
    <div class="cmg_popup_dimm" onclick="closeCmegaPopup('popupVideo')"></div>
    <div class="cmg_popup_inner">
        <div class="mg_btn_wrap right top">
            <button class="mg_btn_base sm closePop" onclick="closeCmegaPopup('popupVideo')">�ݱ�</button>
        </div>
        <div class="video_area">
            <iframe width="100%" height="100%" src="https://www.youtube.com/embed/zvJus0vvm0s?controls=1&autoplay=1&mute=1" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </div>
    </div>
</div>
<style>
    .cmg_popup_wrap.cmg_fullpage .cmg_popup_inner { width:auto; }
    .cmg_popup_wrap .video_area { width:950px; height:540px; }
    @media (max-width:1200px){
        .cmg_popup_wrap .video_area { width:80vw; height:45vw; }
        
    }
</style>
<script>
    if(getCookie('todayPopupVideoCookie') == 'close'){
        closeCmegaPopup('popupVideo');
    }
    $(".mg_btn_base.closePop").click(function(){
        $(".video_area iframe").remove();
    });
</script>
<%end if %>


<div id="briefing_pop2" class="briefLayer d0402">
    <div class="dimBg"></div>
    <div id="modalLayer" class="briefing_pop_layer">
        <div class="brfpop_container">
            <div class="brflayer_content">
                <iframe width="100%" height="100%" src="https://www.youtube.com/embed/zvJus0vvm0s" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <button class="btnClose">�ݱ�</button>
        </div>
    </div>
</div>
<style>
    .briefLayer.d0402 {position: fixed;display:block;top: 0;left: 0;width: 100%;height: 100%;z-index: 102;}
    .briefLayer.d0402 .dimBg{position: fixed;left: 0;top: 0;width: 100%;height: 100%;background: #000;opacity: 0.9;cursor: pointer;}
    .briefLayer.d0402 .briefing_pop_layer {display: block;width: 1000px;height:565px;position: absolute;top: 50%;left: 50%;z-index: 10;transform: translate(-50%, -50%);}
    .brfpop_container,.brflayer_content {position: relative;height: 100%;}
    .brfpop_container:after {display: block;clear: both;content: '';}
    .briefLayer.d0402 .btnClose{position: absolute;top: -30px;right: 0;border: 1px solid #fff;padding: 3px;color:#fff;}

    @media (max-width: 1280px) {
        .brflayer_content img{width: 100%;}
        .briefLayer.d0402 .briefing_pop_layer{width: 80%;height: 45vw;}
    }
    @media (max-width: 768px) {
        .brflayer_content img.pc{display: none;}
        .briefLayer.d0402 .briefing_pop_layer{width: 95%;height: 55vw;}
    }
</style>
<script type="text/javascript">
    $('.briefLayer .btnClose,.briefLayer .dimBg').on('click', function(){
        $(".briefLayer").hide();
    });
</script>


<%End if%>
<%End if%>
<%End if%>
<!--//���̺� �˾� on/off ��� �߰� 221022-->

<!-- 2021 �ܿ���� ���� ��� -->
<% if hcode = "gong" and cdate(lo_now_date) < cdate("2022-02-10 00:00") then %>
<div id="winter_topbnr" class="winter_topbnr">
    <div class="inner">
        <a href="javascript:winterPopOn();" id="winter_bnr" title="�������� ���� ������ �հ�! MEGA�� ������">
         
            <img src="<%=img_main%>/m/2021/1217_gongRNL/winter_top_bnr.jpg" class="for_pc" alt="�������� ���� ������ �հ�! MEGA�� ������" />
            <img src="<%=img_main%>/m/2021/1217_gongRNL/winter_top_bnr_m.jpg" class="for_mo" alt="�������� ���� ������ �հ�! MEGA�� ������" />
        </a>
    </div>
</div>
<div class="winter_layer_refresh" style="display:none;">
    <div class="dimBg"></div>
    <div id="modalLayer" class="winterPop_layer">
        <div class="wtpop_container">
            <div class="wtlayer_content">
                <% if cdate(lo_now_date) < cdate("2021-12-22 12:34") then %>
                <img src='<%=img_main%>/m/2021/1217_gongRNL/winter_pop.jpg' class='for_pc' alt='�������� ���� ������ �հ�! MEGA�� ������' />
                <% elseif cdate(lo_now_date) < cdate("2022-01-03 00:00") then %>
                <img src='<%=img_main%>/m/2021/1217_gongRNL/winter_pop_1222.jpg' class='for_pc' alt='�������� ���� ������ �հ�! MEGA�� ������' />
                <%else%>
                <img src='<%=img_main%>/m/2022/0103_wjsgywls1/winter_pop.png' class='for_pc' alt='�������� ���� ������ �հ�! MEGA�� ������' />
                <%end if%>
                <ul class="winterMap pc">
                    <li class="link2">
                        <a href="/s/gong/event/2020/12290134/index.asp#eventWrap" alt="������" ></a>
                        <a href="/s/gong/event/2021/12080164/index.asp#eventWrap" alt="�����" ></a>
                    </li>
                    <li><a href="/s/gong/examinfo/pass_opinion/index.asp" alt="�հݼ���" ></a></li>
                    <li>
                        <% if cdate(lo_now_date) < cdate("2021-12-28 00:00") then %>
                        <a href="javascript:alert('12/28(ȭ) ���� �����Դϴ�.')" alt="���� ���̵� �� ��������" ></a>
                        <%else%>
                        <a href="/s/gong/event/2021/12280175/index.asp#eventWrap" alt="���� ���̵� �� ��������"></a>
                        <%end if%>
                    </li>
                    <li><a href="/c/gongssel/event/2021/10050011/index.asp#eventWrap" target="_blank" alt="9/7�� �հ���������ȸ" ></a></li>

                    <li><a href="/s/gong/event/2021/12090169/index.asp#eventWrap" alt="�Ųٷ� �÷��� �������" ></a></li>
                    <li><a href="/exam/basic/gong_2/index.asp#eventWrap" alt="�����н� ���� ��" ></a></li>
                    <li><a href="/s/gong/examinfo/passmate/list.asp#mContainer" alt="Pass Mate" ></a></li>
                    <li><a href="/s/gong/examinfo/followm.asp#mContainer" alt="follow m" ></a></li>

                    <li><a href="/s/gong/pass/sale_2022.asp#eventWrap" alt="������ �ް��н�" ></a></li>

                    <li><a href="/s/gong/pass/gov_sale_2022.asp#eventWrap" alt="�Ϲ�������" ></a></li>
                    <li><a href="/s/gong/pass/edu_sale_2022.asp#eventWrap" alt="����������" ></a></li>
                    <li><a href="/s/gong/pass/security_sale_2022.asp#eventWrap" alt="������" ></a></li>
                    <li><a href="/s/gong/pass/tax_sale_2022.asp#eventWrap" alt="����������" ></a></li>

                    <li><a href="/s/gong/pass/welfare_sale_2022.asp#eventWrap" alt="��ȸ������" ></a></li>
                    <li><a href="/s/gong/pass/court_sale_2022.asp#eventWrap" alt="������" ></a></li>
                    <li><a href="/s/gong/pass/tech_sale_2022.asp#eventWrap" alt="������" ></a></li>
                    <li><a href="/s/gong/pass/engi_sale_2022.asp#eventWrap" alt="�����" ></a></li>
                    <% if cdate(lo_now_date) >= cdate("2022-01-03 00:00") then %>
                    <li class="clo"><a onclick="winterOff();" href="javascript:;" alt="�ݱ�"></a></li>
                    <%end if%>
                </ul>
                <div class="lnk_mo">
                    <img src='<%=img_main%>/m/2021/1217_gongRNL/winter_pop_m.jpg' class='for_mo' usemap="#winterMap5" alt='�������� ���� ������ �հ�! MEGA�� ������' />
                    <ul class="winterMap mo">
                        <li class="link2">
                            <a href="/s/gong/event/2020/12290134/index.asp#eventWrap" alt="������" ></a>
                            <a href="/s/gong/event/2021/12080164/index.asp#eventWrap" alt="�����" ></a>
                        </li>
                        <li><a href="/s/gong/examinfo/pass_opinion/index.asp" alt="" ></a></li>
                        <li>
                            <% if cdate(lo_now_date) < cdate("2021-12-28 00:00") then %>
                            <a href="javascript:alert('12/28(ȭ) ���� �����Դϴ�.')" alt="���� ���̵� �� ��������" ></a>
                            <%else%>
                            <a href="/s/gong/event/2021/12280175/index.asp#eventWrap" alt="���� ���̵� �� ��������"></a>
                            <%end if%>
                        </li>
                        <li><a href="/c/gongssel/event/2021/10050011/index.asp#eventWrap" target="_blank" alt="" ></a></li>

                        <li><a href="/s/gong/event/2021/12090169/index.asp#eventWrap" alt="" ></a></li>
                        <li><a href="/exam/basic/gong_2/index.asp#eventWrap" alt="" ></a></li>
                        <li><a href="/s/gong/examinfo/passmate/list.asp#mContainer" alt="" ></a></li>
                        <li><a href="/s/gong/examinfo/followm.asp#mContainer" alt="" ></a></li>

                        <li><a href="/s/gong/pass/sale_2022.asp#eventWrap" alt="" ></a></li>

                        <li><a href="/s/gong/pass/gov_sale_2022.asp#eventWrap" alt="" ></a></li>
                        <li><a href="/s/gong/pass/edu_sale_2022.asp#eventWrap" alt="" ></a></li>
                        <li><a href="/s/gong/pass/security_sale_2022.asp#eventWrap" alt="" ></a></li>
                        <li><a href="/s/gong/pass/tax_sale_2022.asp#eventWrap" alt="" ></a></li>

                        <li><a href="/s/gong/pass/welfare_sale_2022.asp#eventWrap" alt="" ></a></li>
                        <li><a href="/s/gong/pass/court_sale_2022.asp#eventWrap" alt="" ></a></li>
                        <li><a href="/s/gong/pass/tech_sale_2022.asp#eventWrap" alt="" ></a></li>
                        <li><a href="/s/gong/pass/engi_sale_2022.asp#eventWrap" alt="" ></a></li>
                    </ul>
                </div>
            </div>
            <button onclick="winterOff();" class="btnClose">�ݱ�</button>
        </div>
    </div>
</div>

<style>
    .winter_topbnr{position: relative;background-color: #1f1f20;text-align: center;overflow: hidden;}
    .winter_topbnr::before{content: "";display: block;position: absolute;top:0;left:50%;width: 3000px;height: 100%;background-color: #242426;}
    .winter_topbnr .inner{position: relative;} 
    .winter_topbnr .for_mo{display: none;}
    .winter_layer_refresh {position: absolute;display:block;top: 0;left: 0;width: 100%;height: 100%;z-index: 101;}
    .winter_layer_refresh .dimBg {position: fixed;left: 0;top: 0;width: 100%;height: 100%;background: #000;opacity: 0.9;cursor: pointer;}
    .winter_layer_refresh .winterPop_layer {display: block;width: 1147px;/*height: 1430px;*/height:1480px;position: absolute;top: 0;left: 50%;z-index: 10;margin-left: -570px;margin-top: 120px;}
    .wtpop_container,.wtlayer_content {position: relative;height: 100%;background: #232323;}
    .wtpop_container:after {display: block;clear: both;content: '';}
    .winter_layer_refresh .btnClose{position: absolute;top: -50px;right: 0;background: #888;padding: 3px;width: 40px;height: 40px;box-sizing: border-box;background:url(https://img.megagong.net/m/2021/0615_gongRNL/summer_x.png) no-repeat center 0;font-size: 0;}
    .winter_layer_refresh .btnToday {position: absolute;top: 45px;right: -40px;padding: 8px 10px 5px;width: 40px;line-height: 16px;background: #888;color: #d8d8d8;font-weight: bold;}
    .winter_layer_refresh .for_mo{display: none;}

    .winter_layer_refresh .winterMap.pc{position: absolute;bottom: 0;left: 0;width: 100%;height: 100%;z-index: 1;}
    .winter_layer_refresh .winterMap.pc li{position: absolute;height: 9%;width: 23.5%;}
    .winter_layer_refresh .winterMap.pc li.link2{}
    .winter_layer_refresh .winterMap.pc li.link2 a{position: absolute;bottom: 0;left: 0; width: 50%;height: 40%;}
    .winter_layer_refresh .winterMap.pc li.link2 a:last-child{left: auto; right: 0;}

    .winter_layer_refresh .winterMap.pc li:nth-child(1){bottom: 71.5%;left: 44%;}
    .winter_layer_refresh .winterMap.pc li:nth-child(2){bottom: 71.5%;left: 69%;}
    .winter_layer_refresh .winterMap.pc li:nth-child(3){bottom: 61.5%;left: 44%;}
    .winter_layer_refresh .winterMap.pc li:nth-child(4){bottom: 61.5%;left: 69%;}
    .winter_layer_refresh .winterMap.pc li:nth-child(5){bottom: 47%;left: 44%;}
    .winter_layer_refresh .winterMap.pc li:nth-child(6){bottom: 47%;left: 69%;}
    .winter_layer_refresh .winterMap.pc li:nth-child(7){bottom: 37%;left: 44%;}
    .winter_layer_refresh .winterMap.pc li:nth-child(8){bottom: 37%;left: 69%;}

    .winter_layer_refresh .winterMap.pc li:nth-child(9){bottom: 26%;left: 44%;width: 48%;height: 6%;}

    .winter_layer_refresh .winterMap.pc li:nth-child(10){bottom: 19.5%;left: 44%;height: 6%;width: 11.5%;}
    .winter_layer_refresh .winterMap.pc li:nth-child(11){bottom: 19.5%;left: 56.5%;;height: 6%;width: 11.5%;}
    .winter_layer_refresh .winterMap.pc li:nth-child(12){bottom: 19.5%;left: 69%;height: 6%;width: 10.5%;}
    .winter_layer_refresh .winterMap.pc li:nth-child(13){bottom: 19.5%;left: 81%;;height: 6%;width: 11%;}

    .winter_layer_refresh .winterMap.pc li:nth-child(14){bottom: 13%;left: 44%;height: 6%;width: 11.5%;}
    .winter_layer_refresh .winterMap.pc li:nth-child(15){bottom:13%;left: 56.5%;height: 6%;width: 11.5%;}
    .winter_layer_refresh .winterMap.pc li:nth-child(16){bottom:13%;left: 69%;height: 6%;width: 10.5%;}
    .winter_layer_refresh .winterMap.pc li:nth-child(17){bottom:13%;left: 81%;height: 6%;width: 11%;}
    .winter_layer_refresh .winterMap.pc li.clo {bottom:0;left:0;right:0;width: 100%;height: 3.5%;}
    .winter_layer_refresh .winterMap.pc li a{display: block;height: 100%;width: 100%;background: #fff;opacity: 0;}

    .winterMap.mo{display: none;}

    @media (max-width: 1280px) {
        .wtlayer_content img{width: 100%;}
        .winter_layer_refresh .winterPop_layer{width: 90%;margin-left: -45%;height: auto;margin-top: 4vw;}
        .winterPop_layer {width: 80%;height: 50vw;margin-left: -40%;margin-top: -30vw;}
        .winter_layer_refresh .btnClose  {right: 10px;width: 26px;height: 26px;background-position: center;top: 10px;}
        .winter_layer_refresh .btnToday {word-break: break-all;position: absolute;top: -30px;right: 32px;padding: 0;width: 100px;line-height: 30px;height: 30px;}
    }
    @media (max-width: 768px) {
        .winter_layer_refresh{position: fixed;}
        .winter_layer_refresh .winterPop_layer{width: 100%;margin-left: 0;margin-top: 0;top: 0;left: 0;height: 100%;transform: none;}
        .wtlayer_content{background: #232323; background: -moz-linear-gradient(top, #232323 0%, #1F1F1F 50%, #1a1a1a 100%); background: -webkit-linear-gradient(top, #232323 0%, #1F1F1F 50%, #1a1a1a 100%); background: linear-gradient(to bottom, #232323 0%, #1F1F1F 50%, #1a1a1a 100%);height: calc(100% - 44px);}
        .wtlayer_content::before{display: inline-block;width: 0px;height: 100%;vertical-align: middle;}
        .winter_topbnr .for_pc{display: none;}
        .winter_topbnr .for_mo{display: block;}
        .winter_layer_refresh .for_pc{display: none;}
        .winter_layer_refresh .for_mo{display: block;}
        .winter_layer_refresh .btnClose{top: inherit;bottom: 0;right: 0;width: 100%;background-image: none;font-size: 13px;color: #fff;line-height: 42px;height: 42px;padding: 0;background: rgba(0,0,0,0.2);border: 1px solid #949494;position: absolute;}
        .winter_layer_refresh .lnk_mo{position: relative;display: block;height: auto;display: inline-block;vertical-align: middle;position: absolute;top: 50%;left: 0;transform: translateY(-51%);padding:2% 6% 0}
        .winterMap.pc{display: none;}
        .winterMap.mo{display: block;}
        .winterMap.mo{position: absolute;bottom: 0;left: 0;width: 100%;height: 100%;z-index: 1;}
        
        .winterMap.mo li{position: absolute;height: 5%;width: 41%;}
        .winterMap.mo li:nth-child(1){bottom: 73.5%;left: 8%;}
        .winter_layer_refresh .winterMap.mo li.link2{}
        .winter_layer_refresh .winterMap.mo li.link2 a{position: absolute;bottom: 0;right: 27%;width: 20%;height: 100%;}
        .winter_layer_refresh .winterMap.mo li.link2 a:last-child{right: 0;width: 25%;}
        .winterMap.mo li:nth-child(2){bottom: 73.5%;left: 51%;}
        .winterMap.mo li:nth-child(3){bottom: 67%;left: 8%;}
        .winterMap.mo li:nth-child(4){bottom: 67%;left: 51%;}

        .winterMap.mo li:nth-child(5){bottom: 55%;left: 8%;}
        .winterMap.mo li:nth-child(6){bottom: 55%;left: 51%;}
        .winterMap.mo li:nth-child(7){bottom: 48%;left: 8%;}
        .winterMap.mo li:nth-child(8){bottom: 48%;left: 51%;}

        .winterMap.mo li:nth-child(9){bottom: 36%;left: 8%;width: 84%;}

        .winterMap.mo li:nth-child(10){bottom: 30%;left: 8%;}
        .winterMap.mo li:nth-child(11){bottom: 30%;left: 51%;}
        .winterMap.mo li:nth-child(12){bottom: 23.5%;left: 8%;}
        .winterMap.mo li:nth-child(13){bottom: 23.5%;left: 51%;}
        .winterMap.mo li:nth-child(14){bottom: 17%;left: 8%;}
        .winterMap.mo li:nth-child(15){bottom: 17%;left: 51%;}
        .winterMap.mo li:nth-child(16){bottom: 11%;left: 8%;}
        .winterMap.mo li:nth-child(17){bottom: 11%;left: 51%;}

        .winterMap.mo li a{display: block;height: 100%;width: 100%;background: #fff;opacity: 0;}
    }
    @media (max-width: 576px) {
        .wtlayer_content{}
        .winter_layer_refresh .lnk_mo{padding:5% 2% 0}

    }
</style>

<script type="text/javascript">
    /*
    function winterOn(){
        var winterdim_img_first = "<img src='<%=img_main%>/m/2021/0615_gongRNL/winter_pop1.png' alt='�������� ���� ������ �հ�! MEGA�� ������' />"
        var winterdim_img_refresh = "<img src='<%=img_main%>/m/2021/0615_gongRNL/winter_pop1.png' alt='�������� ���� ������ �հ�! MEGA�� ������' />"
        $(".winter_layer .wtlayer_content").html(winterdim_img_first);
        $(".winter_layer_refresh .wtlayer_content").html(winterdim_img_refresh);
    }
    winterOn();
    */
    function winterOff(){
        $(".winter_layer, .winter_layer_refresh").hide();
        //$(".winter_layer .wtlayer_content, .winter_layer_refresh .wtlayer_content").html("");
    }
        
    function winterPopOn() {
        $('.winter_layer_refresh').show();
        //winterOn();
        $(".winter_layer_refresh .btnClose").focus();
    }
      
    $('.winter_layer .dimBg, .winter_layer_refresh .dimBg').on('click', function(){
        winterOff();
    });
    
    function winterDay() {
        setCookie("dimSummer", "close", 1);
        winterOff();
    }
</script>
<% end if %>
<!-- //2021 �ܿ���� ���� ��� -->



<%If cdate(lo_now_date) < cdate("2021-12-18 14:40") then%>
    <% if hcode = "gong" and instr(1, NowUrl, "/megagong.asp") > 0 Then %>
        <!-- //������ �ֻ�� ��� ����� -->
        <% if fncRequestCookie("dimSummer") = "" then %>
        <div id="summer_pop1" class="summer_layer">
            <div class="dimBg"></div>
            <div id="modalLayer" class="summerpop_layer <%If cdate(lo_now_date) >= cdate("2021-11-01 00:00") then%> d1101<% end if %> <%If cdate(lo_now_date) >= cdate("2021-12-08 ") then%> d1208 <% end if %>">
                <div class="smrpop_container">
                    <div class="smrlayer_content">
                        
                       
                            <!-- �ܿ���� -->
                            <div class="pc">
                                <p class="dim_tit"><img src="<%=img_main%>/m/2021/1208_main/dim_pc_tit.png"></p>
                                <div class="pc_sd_wrap">
                                    <div class="pc_sd">
                                        <div class="item fir">
                                            <%If cdate(lo_now_date) < cdate("2021-12-15 17:00") then%>
                                            <img src="<%=img_main%>/m/2021/1208_main/dim_pc_sd1.png" usemap="sd1_link">
                                            <%else%>
                                            <img src="<%=img_main%>/m/2021/1208_main/dim_pc_sd1_1215.png" usemap="sd1_link">
                                            <%end if%>
                                            <div>
                                                <a title="12.18.(��) ���� 3�� �հ����� ����ȸ" href="/s/gong/event/2021/11240156/index.asp#eventWrap" ></a>
                                                <a title="�հ� ���� ������? �����н� ������" href="/exam/basic/gong_2/index.asp#eventWrap" ></a>
                                                <a title=" ���� ���� 6�� �Ųٷ� �÷��� �������!" href="/s/gong/event/2021/12090169/index.asp#eventWrap"></a>
                                                <a title="12.18.(��) ~ 12.19.(��) 2022��� ���� ���ǰ��" href="/s/gong/mockexam/2022_1/index.asp#eventWrap" ></a>
                                            </div>
                                        </div>
                                        <div class="item sec">
                                            <%If cdate(lo_now_date) < cdate("2021-12-15") then%>
                                            <img src="<%=img_main%>/m/2021/1208_main/dim_pc_sd2.png" usemap="sd2_link">
                                            <%else%>
                                            <img src="<%=img_main%>/m/2021/1215_jinsyjin03/dim_pc_sd2_1215.png" usemap="sd2_link">
                                            <%end if%>
                                            <div>
                                                <a title="�ް��������� ����� ���� ���� �����մϴ�." href="/s/gong/event/2021/12080160/index.asp#eventWrap"></a>
                                                <a title="�������ڵ� �ѹ��� ���صǴ� ������ Ȧ�ο� ������" href="/s/gong/event/2021/12080165/index.asp#eventWrap" ></a>
                                                <%If cdate(lo_now_date) < cdate("2021-12-15") then%>
                                                <a title="����� ������ ���ο� ���� ���� ������ �����" href="javascript:;" onclick="alert('�� �����˴ϴ�');" ></a>
                                                <%else%>
                                                <a title="����� ������ ���ο� ���� ���� ������ �����" href="/s/gong/event/2021/12150171/index.asp#eventWrap" ></a>
                                                <%end if%>
                                            </div>
                                        </div>
                                        <div class="item third">
                                            <%If cdate(lo_now_date) < cdate("2021-12-09") then%>
                                            <img src="<%=img_main%>/m/2021/1208_main/dim_pc_sd3.png" usemap="sd3_link">
                                            <%elseIf cdate(lo_now_date) < cdate("2021-12-13 00:00") then%>
                                            <img src="<%=img_main%>/m/2021/1208_main/dim_pc_sd3_1209.png" usemap="sd3_link">
                                            <%elseIf cdate(lo_now_date) < cdate("2021-12-15") then%>
                                            <img src="<%=img_main%>/m/2021/1201_gosabu88/dim_pc_sd3_1213.png" usemap="sd3_link">
                                            <%else%>
                                            <img src="<%=img_main%>/m/2021/1201_gosabu88/dim_pc_sd3_1215.png" usemap="sd3_link">
                                            <%end if%>
                                            <div>
                                                <a title="�������� ������ �հݽ�ų �ѱ��� �� �� �� �Դϴ�" href="/event/2021/12010012/index.asp#eventWrap"></a>
                                                <a title="���� ����Ҽ۹��� ���� �ö��� GUESS WHO I AM?" href="/s/gong/event/2021/12080159/index.asp#eventWrap"></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <!-- //�ܿ���� -->




                        <div class="lnk_mo <%If cdate(lo_now_date) >= cdate("2021-10-28 21:00") and cdate(lo_now_date) < cdate("2021-11-01 21:00") then%> d1101 <%elseIf cdate(lo_now_date) >= cdate("2021-11-01 21:00") then%> d1101<% end if %> <%If cdate(lo_now_date) >= cdate("2021-12-08") then%> d1208<% end if %> ">
                            <% If cdate(lo_now_date) < cdate("2021-12-01") then%>
                                <!-- ���뵿�� �հ� / 9�� �հ����� ����ȸ -->
                                <img src="<%=img_main%>/m/2021/1124_gong/mainpop_mo_top.png" alt="-" usemap="#link_mo" />
                                <%If cdate(lo_now_date) < cdate("2021-11-29 00:00") then%>
                                <img src="<%=img_main%>/m/2021/1124_gong/mainpop_mo_bottom.png" alt="-" usemap="#link_mo2" />
                                <% end if %>
                                <map id="link_mo" name="link_mo">
                                    <area shape="rect" coords="2,213,710,409" title="9+7�� �� ���� �ް��н�" href="/s/gong/pass/sale_2022.asp#eventWrap" target="" />
                                    <area shape="rect" coords="2,443,706,734" title="�ѱ��� ������ �հ��������� �����˴ϴ�. 2021.12.01" href="/s/gong/event/2021/11150151/index.asp#eventWrap" target="" />
                                    <area shape="rect" coords="2,769,707,897" title="9�� �հ����� ����ȸ" href="/s/gong/event/2021/11240156/index.asp#eventWrap" target="" />
                                    <area shape="rect" coords="7,931,707,1058" title="��1ȸ ���� ���ǰ��" href="/s/gong/mockexam/2022_1/index.asp#eventWrap" target="" />
                                </map>
                                <map id="link_mo2" name="link_mo2">
                                    <area shape="rect" coords="2,1,708,197" title="������ �ݰ� ����" href="/s/gong/event/2021/11050142/index.asp#eventWrap" target="" />
                                </map>
                            <% elseIf cdate(lo_now_date) < cdate("2021-12-08") then%>
                                <!-- ������ ��Ī -->
                                <img src="<%=img_main%>/m/2021/1201_gosabu88/mainpop_mo_top.png" alt="-" usemap="#link_mo" />
                                <map id="link_mo" name="link_mo">
                                    <area shape="rect" coords="2,213,710,409" title="9+7�� �� ���� �ް��н�" href="/s/gong/pass/sale_2022.asp#eventWrap" target="" />
                                    <area shape="rect" coords="2,443,706,734" title="�������� ������ �հݽ�ų �ѱ��� �� �� �� �Դϴ�" href="/event/2021/12010012/index.asp#eventWrap" target="" />
                                    <area shape="rect" coords="2,769,707,897" title="9�� �հ����� ����ȸ" href="/s/gong/event/2021/11240156/index.asp#eventWrap" target="" />
                                    <area shape="rect" coords="7,931,707,1058" title="��1ȸ ���� ���ǰ��" href="/s/gong/mockexam/2022_1/index.asp#eventWrap" target="" />
                                </map>
                                <map id="link_mo2" name="link_mo2">
                                    <area shape="rect" coords="2,1,708,197" title="������ �ݰ� ����" href="/s/gong/event/2021/11050142/index.asp#eventWrap" target="" />
                                </map>
                            <% else %>
                                <!-- �ܿ���� -->
                                <img src="<%=img_main%>/m/2021/1208_main/dim_mo.png" alt="-" usemap="#link_mo" />
                                <map id="link_mo" name="link_mo">
                                    <area shape="rect" coords="0,160,710,360" title="9+7�� �� ���� �ް��н�" href="/s/gong/pass/sale_2022.asp#eventWrap" target="" />
                                    <area shape="rect" coords="0,390,345,620" title="12.18.(��) ���� 3�� �հ����� ����ȸ" href="/s/gong/event/2021/11240156/index.asp#eventWrap" target="" />
                                    <area shape="rect" coords="365,390,710,620" title="�հ� ���� ������? �����н� ������" href="/exam/basic/gong_2/index.asp#eventWrap" target="" />
                                    <area shape="rect" coords="0,640,345,870" title=" ���� ���� 6�� �Ųٷ� �÷��� �������!" href="/s/gong/event/2021/12090169/index.asp#eventWrap"  target="" />
                                    <area shape="rect" coords="365,640,710,870" title="12.18.(��) ~ 12.19.(��) 2022��� ���� ���ǰ��" href="/s/gong/mockexam/2022_1/index.asp#eventWrap" target="" />
                                    <area shape="rect" coords="0,900,710,1030" title="������� �ް��� ������" href="/s/gong/event/2021/12080160/index.asp#eventWrap" target="" />
                                    <area shape="rect" coords="0,1050,710,1265" title="�������� ������ �հݽ�ų �ѱ��� �� �� �� �Դϴ�" href="/event/2021/12010012/index.asp#eventWrap" target="" />
                                </map>
                            
                            <% end if %>
                        </div>
                    </div>
                    <button onclick="summerOff();" class="btnClose">�ݱ�</button>
                    <button onclick="summerDay();" id="summer_today" class="btnToday">���� �Ϸ� �ݱ�</button>
                </div>
            </div>
        </div>
        <% end if %>
        <style>

            
            .lnk_mo{display: none;}
            .summer_layer {position: fixed;display:block;top: 0;left: 0;width: 100%;height: 100%;z-index: 102;}
            .summer_layer .dimBg{position: fixed;left: 0;top: 0;width: 100%;height: 100%;background: #000;opacity: 0.9;cursor: pointer;}
            .summer_layer .summerpop_layer {display: block;width: 1008px;height: 570px;position: absolute;top: 50%;left: 50%;z-index: 10;margin-left: -500px;margin-top: -270px;}
            .summerpop_layer {display: block;width: 1200px;height: 1430px;position: absolute;top: 0;left: 50%;z-index: 10;margin-left: -600px;margin-top: 120px;}
            .smrpop_container,.smrlayer_content {position: relative;height: 100%;}
            .smrpop_container:after {display: block;clear: both;content: '';}
            .summer_layer .btnClose{position: absolute;top: -30px;right: 0;border: 1px solid #fff;padding: 3px;width: 27px;height: 27px;box-sizing: border-box;background: url(https://img.megagong.net/m/2021/0615_gongRNL/summer_x2.png) no-repeat center center;font-size: 0;}
            .summer_layer .btnToday{position: absolute;top: -30px;right: 30px;padding: 0;width: 110px;height: 27px;line-height: 27px;border: 1px solid #fff;color: #d8d8d8;font-weight: bold;}
            .summer_layer .for_mo{display: none;}

            .summer_layer .summerMap.pc{position: absolute;bottom: 0;left: 0;width: 100%;height: 100%;z-index: 1;}
            .summer_layer .summerMap.pc li{position: absolute;height: 18%;/* background: rgba(0, 0, 0, 0.342); */}
            .summer_layer .summerMap.pc li:nth-child(1){width: 90%;top: 18%;left: 5%;}
            .summer_layer .summerMap.pc li:nth-child(2){width: 29%;top: 38%;left: 5%;height: 35%;}
            .summer_layer .summerMap.pc li:nth-child(3){width: 29%;top: 38%;left: 36%;height: 35%;}
            .summer_layer .summerMap.pc li:nth-child(4){width: 29%;top: 38%;right: 5%;height: 35%;}
            .summer_layer .summerMap.pc li:nth-child(5){width: 90%;bottom: 6%;left: 5%;}
            /* .summer_layer .summerMap.pc li.half { width:80%; background:red; bottom:0; }  */
            
            .summer_layer .summerMap.pc li a{display: block;height: 100%;width: 100%;/* background: #fff; *//* opacity: 0; */position: relative;}


            .summer_layer .summerMap li i{position: absolute;left: 30px;bottom: 25px;z-index: 100;}
            .summer_layer .summerMap li i img:nth-child(1){display:block}
            .summer_layer .summerMap li i img:nth-child(2){display:none}
            .summer_layer .summerMap li i.on img:nth-child(1){display:none}
            .summer_layer .summerMap li i.on img:nth-child(2){display:block}
            .summer_layer .summerMap li span{position: absolute;left: 140px;bottom: 30px;font-family: 'NotoSans KR';font-size: 18px;}
            .summerMap.mo,
            .summerMap.mo2 {display: none;}

            /* 211028 �߰� */
            .summer_layer .summerpop_layer{height: 550px;}
            .summer_layer .summerpop_layer.d1028 .summerMap.pc{}
            .summer_layer .summerpop_layer.d1028 .summerMap.pc li{width: 29.3%;height: 56%;}
            .summer_layer .summerpop_layer.d1028 .summerMap.pc li:nth-child(1){top: 19%;left: 5%;}
            .summer_layer .summerpop_layer.d1028 .summerMap.pc li:nth-child(2){top: 19%;left: 35%;height: 56%;}
            .summer_layer .summerpop_layer.d1028 .summerMap.pc li:nth-child(3){top: 19%;left: 65%;height: 56%;}
            .summer_layer .summerpop_layer.d1028 .summerMap.pc li:nth-child(4){top: auto;bottom:0;right: 0;height: 17%;width: 100%;}

            .summer_layer .summerpop_layer.d1101 .summerMap.pc li{width: 49%;height: 56%;}
            .summer_layer .summerpop_layer.d1101 .summerMap.pc li:nth-child(1){top: 19%;left: 5%;width: 90%;height: 17%;}
            .summer_layer .summerpop_layer.d1101 .summerMap.pc li:nth-child(2){top: 38%;left: 5%;height: 44%;width: 45%;}
            .summer_layer .summerpop_layer.d1101 .summerMap.pc li:nth-child(3){top: 38%;left: 50%;height: 44%;width: 45%;}

            /* 211105 �߰� */
            .summer_layer .summerpop_layer.d1101 .summerMap.pc li.half { width:90%; height:89px; top:85%; }
            .summer_layer .summerpop_layer.d1101 .summerMap.pc li.half a { height:89px; }

            /* 211208 �߰� */
            .summer_layer .summerpop_layer.d1208 .smrlayer_content >.pc{display: block;}
            .summer_layer .summerpop_layer.d1208{width: 976px;height: 530px;background: url(https://img.megagong.net/m/2021/1208_main/dim_pc_bg.jpg) no-repeat 0 center;background-size: auto 100%;margin-left: -487px;margin-top: -265px;}
            .summer_layer .summerpop_layer.d1208 .smrpop_container{padding: 45px;height: 530px;box-sizing: border-box;}
            .summer_layer .summerpop_layer.d1208 .dim_tit{text-align:center;margin-bottom: 35px;}
            .summer_layer .summerpop_layer.d1208 .pc_sd_wrap .item{position: relative;}
            .summer_layer .summerpop_layer.d1208 .pc_sd_wrap .item div {position: absolute;height: 100%;left: 0;top: 0;}
            .summer_layer .summerpop_layer.d1208 .pc_sd_wrap .item div a{position: absolute;}

            .summer_layer .summerpop_layer.d1208 .pc_sd_wrap .item.fir div{width: 75.5%;}
            .summer_layer .summerpop_layer.d1208 .pc_sd_wrap .item.fir div a:nth-child(1){width: 49%;height: 50%;left: 0;top: 0;}
            .summer_layer .summerpop_layer.d1208 .pc_sd_wrap .item.fir div a:nth-child(2){width: 51%;height: 50%;left: 49%;top: 0;}    
            .summer_layer .summerpop_layer.d1208 .pc_sd_wrap .item.fir div a:nth-child(3){width: 49%;height: 50%;left: 0;top: 50%;}    
            .summer_layer .summerpop_layer.d1208 .pc_sd_wrap .item.fir div a:nth-child(4){width: 51%;height: 50%;left: 49%;top: 50%;}

            .summer_layer .summerpop_layer.d1208 .pc_sd_wrap .item.sec div{width: 75.5%;}
            .summer_layer .summerpop_layer.d1208 .pc_sd_wrap .item.sec div a:nth-child(1){width: 100%;height: 70%;}    
            .summer_layer .summerpop_layer.d1208 .pc_sd_wrap .item.sec div a:nth-child(2){width: 50%;height: 30%;top: 70%;}    
            .summer_layer .summerpop_layer.d1208 .pc_sd_wrap .item.sec div a:nth-child(3){width: 50%;height: 30%;left: 50%;top: 70%;}

            .summer_layer .summerpop_layer.d1208 .pc_sd_wrap .item.third div{width: 75.5%;}
            .summer_layer .summerpop_layer.d1208 .pc_sd_wrap .item.third div a:nth-child(1){width: 49%;height: 100%;}
            .summer_layer .summerpop_layer.d1208 .pc_sd_wrap .item.third div a:nth-child(2){left: 51%;width: 49%;height: 100%;}

            
            .summer_layer .summerpop_layer.d1208 .pc_sd_wrap .slick-arrow{display: none !important;}
            .summer_layer .summerpop_layer.d1208 .pc_sd_wrap .slick-dots{display: block !important;position: absolute;top: 10%;right: 0;width: 27%;height: 90%;cursor: pointer;}
            .summer_layer .summerpop_layer.d1208 .pc_sd_wrap .slick-dots li{display: block;width: 100%;height: auto;padding: 20% 0;}
            .summer_layer .summerpop_layer.d1208 .pc_sd_wrap .slick-dots li button{display: block;width: 100%;height: 100%;font-size: 0;}
            .summer_layer .summerpop_layer.d1208 .pc_sd_wrap .slick-dots li.slick-active button{opacity:1;}

            .summer_layer .summerpop_layer.d1208 .btnClose{top: -35px;/* right: -45px; *//* border: 1px solid #686868; *//* color: #fff; */}
            .summer_layer .summerpop_layer.d1208 .btnToday{top: -35px;/* right: -10px; *//* padding: 0; *//* border: 1px solid #686868; *//* color: #fff; */}



            @media (max-width: 1280px) {
                .smrlayer_content img{width: 100%;}
                .summer_layer .summerpop_layer{width: 80%;margin-left: -40%;height: auto;transform: translateY(-50%);margin-top: 0;}
                .summerpop_layer {width: 80%;height: 50vw;margin-left: -40%;margin-top: -30vw;}
                .summer_layer .btnClose{height: 30px;line-height: 30px;}
                .summer_layer .btnToday{word-break: break-all;position: absolute;top: -30px;right: 32px;padding: 0;width: 100px;line-height: 30px;height: 30px;}

                .summer_layer .summerMap.pc li{position: absolute;height: 18%; /*background: rgba(161, 19, 19, 0.342); */}
                .summer_layer .summerMap.pc li:nth-child(1){top: 18%;}
                .summer_layer .summerMap.pc li:nth-child(2){width: 29%;top: 38%;left: 5%;height: 35%;}
                .summer_layer .summerMap.pc li:nth-child(3){width: 29%;top: 38%;left: 36%;height: 35%;}
                .summer_layer .summerMap.pc li:nth-child(4){width: 29%;top: 38%;right: 5%;height: 35%;}
                .summer_layer .summerMap.pc li:nth-child(5){width: 90%;bottom: 7%;left: 5%;}
                .summer_layer .summerMap.pc li i{ left: 10%;bottom: 12%;max-width: 30%;}
                .summer_layer .summerMap.pc li span{left: 45%;bottom: 15%;font-size: 1em;}

                /* 211208 �߰� */
                .summer_layer .summerpop_layer.d1208{width: 90%;height: auto;margin-left: -45%;margin-top: 0;background-size: 100% 100%;}
                .summer_layer .summerpop_layer.d1208 .smrpop_container{padding: 2%;height: auto;}
                .summer_layer .summerpop_layer.d1208 .dim_tit{margin-bottom: 2%;}
                .summer_layer .summerpop_layer.d1208 .dim_tit img{width: auto;max-width: 60%;}

                
            }
            @media (max-width: 768px) {


                .smrlayer_content img.pc{display: none;}
                .summer_layer .summerpop_layer{width: 100%;margin-left: 0;margin-top: 0;top: 0;left: 0;height: 100%;transform: none;}
                .smrlayer_content{background:#e1e1e1;height: calc(100% - 44px);}
                .smrlayer_content::before{display: inline-block;width: 0px;height: 100%;vertical-align: middle;}
                .summer_layer .for_pc{display: none;}
                .summer_layer .for_mo{display: block;}
                .summer_layer .btnClose{top: inherit;bottom: 0;right: 0;width: 50%;background-image: none;font-size: 13px;color: #fff;line-height: 42px;height: 42px;padding: 0;background: rgba(0,0,0,0.2);border-color: #949494;}
                .summer_layer .btnToday{top: inherit;bottom: 0;left: 0;right: inherit;width: 50%;background-image: none;font-size: 13px;color: #fff;font-weight: normal;background: rgba(0,0,0,0.2);border-color: #949494;line-height: 42px;height: 42px;}   
                
                .lnk_mo{position: relative;display: block;height: auto;display: inline-block;vertical-align: middle;position: absolute;top: 50%;left: 0;transform: translateY(-51%); padding:0 20% 0 24%;}
                .summerMap.pc{display: none;}
                .summerMap.mo{display: block;}
                .summerMap.mo{position: absolute;bottom: 0;left: 0;width: 100%;height: 100%;z-index: 1;}
                .summerMap.mo li{position: absolute;height: 16%;width: 54%;left: 24%; /*background: rgba(19, 161, 50, 0.342);*/}
                .summerMap.mo li:nth-child(1){bottom: 72%;}
                .summerMap.mo li:nth-child(2){bottom: 54%;}
                .summerMap.mo li:nth-child(3){bottom: 36%;}
                .summerMap.mo li:nth-child(4){bottom: 19%;}
                .summerMap.mo li:nth-child(5){bottom: 1%;}
                .summerMap.mo li a{position: relative; display: block;height: 100%;width: 100%;/*background: #fff;opacity: 0;*/}
                .summerMap.mo li i{left: 3%;bottom: auto;top: 15%;max-width: 20%;}

                /* 211028 �߰� */
                .summerpop_layer.d1028 .summerMap.mo li:nth-child(1){bottom: 62%;height: 26%;}
                .summerpop_layer.d1028 .summerMap.mo li:nth-child(2){bottom: 45%;}
                .summerpop_layer.d1028 .summerMap.mo li:nth-child(3){bottom: 27%;}
                .summerpop_layer.d1028 .summerMap.mo li:nth-child(4){bottom: 1%;height: 25%;}

                .summer_layer .summerpop_layer.d1101 .smrlayer_content{background: #1f1f1f}
                
                .summerpop_layer.d1101 .summerMap.mo li{height: 23%;width: 54%;left: 24%;}
                .summerpop_layer.d1101 .summerMap.mo li:nth-child(1){bottom: 65%;}
                .summerpop_layer.d1101 .summerMap.mo li:nth-child(2){bottom: 37%;height: 26%;}
                .summerpop_layer.d1101 .summerMap.mo li:nth-child(3){bottom: 9%;height: 26%;}
                
                /* 211105 �߰� */
                .summerMap.mo2 { display:block; }
                .summerMap.mo2 { position: absolute;bottom: 0;left: 0;width: 100%;height: 100%;z-index: 1;}
                .summerMap.mo2 li{ display:block; position: absolute; width: 54%;left: 24%;}
                .summerMap.mo2 li a { display:block; width:100%; height:100%; }

                .summerMap.mo2 li:first-child { top:15%; height: 16%; }
                .summerMap.mo2 li:nth-child(2) { top:33%; height: 22%; }
                .summerMap.mo2 li:nth-child(3) { top:57%; height: 22%; }
                .summerMap.mo2 li:last-child { top:81.5%; height: 15%; }

                /* 211208 �߰� */
                .summer_layer .summerpop_layer.d1208{width: 100%;margin-left: 0;margin-top: 0;top: 0;left: 0;height: 100%;transform: none;background: none;}
                .summer_layer .summerpop_layer.d1208 .smrpop_container{padding:0;height: 100%;}
                .summer_layer .summerpop_layer.d1208 .smrlayer_content >.pc{display: none;}
                .summer_layer .summerpop_layer.d1208 .btnClose{top: inherit;bottom: 0;right: 0;width: 50%;background-image: none;font-size: 13px;color: #fff;line-height: 42px;height: 42px;padding: 0;background: rgba(0,0,0,0.2);border-color: #949494;}
                .summer_layer .summerpop_layer.d1208 .btnToday{top: inherit;bottom: 0;left: 0;right: inherit;width: 50%;background-image: none;font-size: 13px;color: #fff;font-weight: normal;background: rgba(0,0,0,0.2);border-color: #949494;line-height: 42px;height: 42px;}   
                .lnk_mo.d1208{padding: 0 23%;}
            }
            
            @media (max-width: 640px) {
                /* 211208 �߰� */
                .lnk_mo.d1208{padding: 0 20%;}
            }
            @media (max-width: 576px) {
                .lnk_mo{padding:0 10% 0 14%}
                .summerMap.mo li{left: 14%;width: 73%;}

                /* 211105 �߰� */
                .summerMap.mo2 li{ width: 73%;left: 14%;}
                
                /* 211208 �߰� */
                .lnk_mo.d1208{padding: 0 15%;}
            }
            @media (max-width: 480px) {
                .lnk_mo{padding:0 6% 0 10%}
                .summerMap.mo li{left: 7%;width: 87%;}
                .summerMap.mo li i{left: 5%;}

                .summerpop_layer.d1028 .summerMap.mo li{left: 10%;width: 81%;}
                .summerpop_layer.d1101 .summerMap.mo li{left: 10%;width: 81%;}
                /* 211105 �߰� */
                .summerMap.mo2 li{ width: 81%; left: 10%; }


                /* 211208 �߰� */
                .lnk_mo.d1208{padding: 0 10%;}
            }
        </style>
        <script type="text/javascript">
            setInterval(function () {
                $(".summer_layer .summerMap.pc li i,.summerMap.mo li i").toggleClass("on");
            }, 500);
            
            function summerOff(){
                $(".summer_layer").hide();
                $("#shonghun_ban .pc_mot").addClass("on");
                $("#shonghun_ban_1115 .pc_mot").addClass("on");
                // ban_count();
            }
            $('.summer_layer .dimBg').on('click', function(){
                summerOff();
            });
            function summerDay() {
                setCookie("dimSummer", "close", 1);
                summerOff();
                $("#shonghun_ban .pc_mot").addClass("on");
                $("#shonghun_ban_1115 .pc_mot").addClass("on");
                // ban_count();
            }

            // �ܿ���� PC
        /*
            var slideCount = $('.pc_sd_wrap .pc_sd .item').length;
            var randomStart = Math.floor(Math.random() * slideCount);

            $('.pc_sd').slick({
                infinite: true,
                initialSlide: randomStart,
                autoplaySpeed: 5000,
                autoplay: true,
                fade : true,
                arrow: false,
                dots: true,
            });
            */
        </script>
        
    <% End if %>
<% End if %>
    
    
    
    
    
    <%
    '������ 9�� D-Day
    gong_baner_dday = ""
    if cdate(lo_now_date) < cdate("2021-06-06") Then
    gong_baner_dday = DateDiff("D", cdate(lo_now_date), cdate("2021-06-05"))
    str_gong_baner_dday = "D-Day"
    if gong_baner_dday <> 0 Then str_gong_baner_dday = "D-" & gong_baner_dday
    End if
    
    %>
 
         


<% '  �ҹ�------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ %>
    <% If hcode = "sobang" and instr(1, NowUrl, "/megagong.asp") > 0 Then %>
    <% if cdate(lo_now_date) >= cdate("2022-10-26") and cdate(lo_now_date) < cdate("2022-11-09 20:40") then %>
    <style>
        .main_season_mo{display: none;}
        @media (max-width: 1200px){
            .main_season_mo{display: block;}
            .main_season_mo .branding_bn{background: #f36327;}
            .main_season_mo .branding_bn img{width: 100%;}
            .branding_popWrap{position: fixed;left: 0;top: 0;width: 100%;height: 100%;z-index: 103;}
            .branding_popWrap .dimBg{z-index: 2;opacity: 0.7;}
            .branding_popWrap .branding_conWrap{position: absolute; top: 50%; left: 50%; transform: translate(-50%,-50%); z-index: 103; width: 100%;height: 100%;display: flex;flex-direction: column;align-content: center;justify-content: center;padding: 0 0 80px 0;}
            .branding_popWrap .branding_conWrap .branding_con{position: relative;margin: 1% 28% 0;display: block;}
            
            .branding_popWrap .btns{display: block;position: absolute;left: 0; bottom: 0; width: 100%;background: rgba(0,0,0,0.5); z-index: 105;}
            .branding_popWrap .btns a{border: 1px solid #fff;color: #fff;font-size: 15px;float: left;width:50%;text-align: center;box-sizing: border-box;height: 40px;line-height: 40px;}
            .branding_popWrap .btns a.cls2{width: 100%;}
        }
        @media (max-width: 992px){.branding_popWrap .branding_conWrap .branding_con{margin: 1% 25%}}
        @media (max-width: 768px){.branding_popWrap .branding_conWrap .branding_con{margin: 1% 17%}}
        @media (max-width: 576px){.branding_popWrap .branding_conWrap .branding_con{margin: 3% 7% 0}}
        /* @media (max-width: 480px){.branding_popWrap .branding_conWrap .branding_con{margin: 3% 3% 0}} */
    </style>

    <% If fncRequestCookie("brandSobangAd") = "" then %>
    <div class="main_season_mo">
        <div class="branding_popWrap <% if cdate(lo_now_date) >= cdate("2022-07-05 20:00") then %>d220705<% end if %>">
            <div class="dimBg" onclick="brandCls()"></div>
            <div class="branding_conWrap">
                <div class="branding_con">
                    <a href="/s/sobang/event/2022/10260044/index.asp#eventWrap" title="�ʰ����� ����� �ҹ� �հݰ��� LIVE">
                        <% if cdate(lo_now_date) < cdate("2022-11-09 19:00") then %>
                        <img src="<%=img_main%>/m/2022/1026_onair/main_pop_bnr1.jpg" alt="�ʰ����� ����� �ҹ� �հݰ��� LIVE">
                        <% else %>
                        <img src="<%=img_main%>/m/2022/1026_onair/main_pop_bnr2.jpg" alt="�ʰ����� ����� �ҹ� �հݰ��� LIVE">
                        <% end if %>
                    </a>
                </div>
            </div>
            
            <div class="btns">
                <a href="javascript:;" onclick="brandDayCls()" class="clsday">�����Ϸ纸���ʱ�</a>
                <a href="javascript:;" onclick="brandCls()" class="cls">�ݱ�</a>
                <a href="javascript:;" onclick="brandCls2()" class="cls2" style="display: none;">�ݱ�</a>
            </div>
        </div>
    </div>
    <% end if %>

    <script>
        $('.main_season_mo .bn').slick({
            slidesToShow: 1,
            slidesToScroll: 1,
            infinite: false,
            dots: false,
            arrows: false,
            autoplaySpeed: 3000,
            autoplay: true,

        });
        if(getCookie('brandingPopWrap') == 'close'){
            $('.branding_popWrap').hide();
        }else if(getCookie('brandingPopWrap') == 'open'){
            $('.branding_popWrap').show();
        }
        function setCookieToday( name, value, expiredays ) {
            var todayDate = new Date();
            todayDate = new Date(parseInt(todayDate.getTime() / 86400000) * 86400000 + 54000000);
            if ( todayDate > new Date() ){
                expiredays = expiredays - 1;
            }
            todayDate.setDate( todayDate.getDate() + expiredays );
            document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";"
        }
        function brandDayCls() {
            setCookieToday('brandingPopWrap', 'close', 1);
            $(".branding_popWrap").hide();
        }
        function brandCls(){
            $(".branding_popWrap").hide();
            setCookieToday('brandingPopWrap', 'open', '');
        }
        function brandOpn(){
            $(".branding_popWrap").show();
            $(".branding_popWrap .btns a").hide();
            $(".branding_popWrap .cls2").show();
        };
        function brandCls2(){
            $(".branding_popWrap").hide();
        }
    </script>
    <% end if %>
  
    <% end if %>

    <% If hcode = "sobang" Then %>

        <!-- �ҹ��� ���� ���̺� ��Ʃ�� �˾� -->
        <% if instr(1, NowUrl, "/megagong.asp" ) > 0 Then %>
            <%If cdate(lo_now_date) >= cdate("2022-04-09 18:50") and youtube_live_banner_main("youtube8") = "Y" then%>
            <!--
            <div id="briefing_pop2" class="briefLayer d0402">
                <div class="dimBg"></div>
                <div id="modalLayer" class="briefing_pop_layer">
                    <div class="brfpop_container">
                        <div class="brflayer_content">
                            <iframe width="100%" height="100%" src="https://www.youtube.com/embed/NQpDUkuq6eQ" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        </div>
                        <button class="btnClose">�ݱ�</button>
                    </div>
                </div>
            </div>
            <style>
                .briefLayer.d0402 {position: fixed;display:block;top: 0;left: 0;width: 100%;height: 100%;z-index: 102;}
                .briefLayer.d0402 .dimBg{position: fixed;left: 0;top: 0;width: 100%;height: 100%;background: #000;opacity: 0.9;cursor: pointer;}
                .briefLayer.d0402 .briefing_pop_layer {display: block;width: 1000px;height:565px;position: absolute;top: 50%;left: 50%;z-index: 10;transform: translate(-50%, -50%);}
                .brfpop_container,.brflayer_content {position: relative;height: 100%;}
                .brfpop_container:after {display: block;clear: both;content: '';}
                .briefLayer.d0402 .btnClose{position: absolute;top: -30px;right: 0;border: 1px solid #fff;padding: 3px;color:#fff;}

                @media (max-width: 1280px) {
                    .brflayer_content img{width: 100%;}
                    .briefLayer.d0402 .briefing_pop_layer{width: 80%;height: 45vw;}
                }
                @media (max-width: 768px) {
                    .brflayer_content img.pc{display: none;}
                    .briefLayer.d0402 .briefing_pop_layer{width: 95%;height: 55vw;}
                }
            </style>
            <script type="text/javascript">
                $('.briefLayer .btnClose,.briefLayer .dimBg').on('click', function(){
                    $(".briefLayer").hide();
                });
            </script>
            -->
            <%end if%>
        <%end if%>
        <!-- // �ҹ��� ���̺� ���� ��Ʃ�� �˾� -->
    <% End If %>
  

     <!-- �ҹ��ΰ�, �ҹ��п� ��Ű1�� -->
     <% 'If fncRequestCookie("maindim") = "" then %>
     <% if hcode = "sobang" Or hcode = "sobangcampus" Then %>
     <style type="text/css">
         .rankWrap{display:none;}
         .rankWrap.on{display:block;}
         .rank_pop_slider {padding:20px;}
         <% if hcode = "sobang" Then %>
         .rankWrap .rank_pop{margin: 240px auto 0;}
         <% else %>
         .rankWrap .rank_pop{margin: 200px auto 0;}
         <% End if %>
         /*.rank_pop .ytBox{height:510px;}*/
        .slider_nav{width:800px;margin:0 auto;}
         .rank_pop .slick-dots {position:absolute;top:10px;width:800px;margin:0 auto;left: 50%;margin-left: -377px;}
         .rank_pop .slick-dots li{float:left;width:174px;height:157px;background-size: 100% 100% !important;}
         .rank_pop .slick-dots li + li{margin-left:19px}
         .rank_pop .slick-dots li:nth-child(1){background: url(<%=img_main%>/m/2019/0809_sobang/off_1.png) center top no-repeat;}
         .rank_pop .slick-dots li:nth-child(2){background: url(<%=img_main%>/m/2020/0304_rank/off_2.png) center top no-repeat;}
         .rank_pop .slick-dots li:nth-child(3){background: url(<%=img_main%>/m/2020/0409_rank/off_3.png) center top no-repeat;}
         .rank_pop .slick-dots li:nth-child(4){background: url(<%=img_main%>/m/2021/0324_sobang_ban/off_4.png) center top no-repeat;}
 
         .rank_pop .slick-dots li.slick-active:nth-child(1){background: url(<%=img_main%>/m/2019/0809_sobang/on_1.png) center top no-repeat;}
         .rank_pop .slick-dots li.slick-active:nth-child(2){background: url(<%=img_main%>/m/2020/0304_rank/on_2.png) center top no-repeat;}
         .rank_pop .slick-dots li.slick-active:nth-child(3){background: url(<%=img_main%>/m/2020/0409_rank/on_3.png) center top no-repeat;}
         .rank_pop .slick-dots li.slick-active:nth-child(4){background: url(<%=img_main%>/m/2021/0324_sobang_ban/on_4.png) center top no-repeat;}

         .rank_pop .slick-dots li button{display: block;width:100%;height:100%;text-indent:-9999px;}
         .slider_nav li img{display:block;}
         .slider_cont{position: relative;}
         .rank_pop .slick-list{padding-top: 175px;}
         .rankWrap .dim_popup{padding:0 0 0 0;background:none;}
         .rankWrap .rank_pop_wrap{position: relative;width:1080px;height:510px;background: url(<%=img_main%>/m/2019/0809_sobang/main_ranking_bg.jpg) center top no-repeat;}
         .rankWrap .close_btn{z-index:2;top:20px !important;right:20px !important;width:20px !important;height:20px !important;}
         .rankWrap .close_btn img{width:100%}
         .rank_pop_txt {margin-top: 5px;}
         .rank_pop_wrap p{/*font-size: 11px;*/font-size:9px;color:#ffffff;text-align:left !important;line-height:1.3;opacity:.2;}
 
         /*mo_��ŷ����1�� �˾�*/
         .rankWrap_m{display:none;}
         .rankWrap_m li img{text-align:center;}
         @media (max-width: 1200px){
            .dim_bnrwrp .dim_popup.rank_pop_m{width: 80%;} 
            .rankWrap {display:none}
            .rankWrap_m.on{display:block;}
            .rank_pop_m{padding-top:40px !important;margin:50px auto 0 !important;width:100%;background: url(<%=img_main%>/m/2019/0812_sobang/main_ranking_mo_bg.jpg) center top no-repeat;background-size:cover;background-color: #3f0ab2;}
            .rank_pop_m .rank_m_slider-nav{}
            .rank_pop_m .rank_m_slider-nav img{margin:0 auto;display:block;width:80%;}
            .rank_pop_m .rank_m_slider-nav .slick-slide{padding-top:1.5%}
            .rank_pop_m .rank_m_slider-nav .slick-slide.slick-current.slick-active.slick-center{padding:0 0 0 0;text-align:center;}
            .rank_pop_m .rank_m_slider-nav .slick-slide img + img{display:none;}
            .rank_pop_m .rank_m_slider-nav .slick-current img{display:none;}
            .rank_pop_m .rank_m_slider-nav .slick-current img + img{display:inline-block;width:100%;}
            .rank_pop_m .rank_m_slider-for {margin-top:25px}
            .rank_pop_m .rank_m_slider-for img{width: 97%;margin:0 auto;}
            .dim_bnrwrp .dim_popup.rank_pop_m .close_btn{z-index:2;top:-20px !important;right:0px !important;width:20px !important;;height:20px !important;padding: 3px}
            .rankWrap_m .close_btn img{width:100%}
            .rankWrap_m .rank_pop_txt {width:97%;margin:10px auto;}
            .rankWrap_m p{font-size: 11px;color:#ffffff !important;text-align:left !important;line-height:1.2;padding:0 !important;opacity:.2;}
         }
         @media (max-width: 768px){
            
         }
     </style>
     <div class="dim_bnrwrp rankWrap">
         <div class="dim_popup rank_pop">
             <div class="">
                 <div class="rank_pop_wrap">
                     <div class="rank_pop_slider">
                         <div class="slider_cont">
                            <%If cdate(lo_now_date) < cdate("2021-10-22 00:00") then%>
                            <div><img src="<%=img_main%>/m/2021/0722_sbbrand/on_1_cont_0722.png"></div>
                            <%else%>
                            <div><img src="<%=img_main%>/m/2021/0722_sbbrand/on_1_cont_211022.png"></div>
                            <%end if%>
                            <div><img src="<%=img_main%>/m/2021/0201_sobang_ban/on_2_cont.png"></div>
                            <div><img src="<%=img_main%>/m/2021/0201_sobang_ban/on_3_cont.png"></div>
                            <div><img src="<%=img_main%>/m/2021/0324_sobang_ban/on_4_cont.png"></div>
                         </div>
                         <div class="rank_pop_txt">
                            <%If cdate(lo_now_date) < cdate("2021-10-22 00:00") then%>
                            <p>1) 2019�� 5�� ~ 2021�� 6�� �Ⱓ ���¶��α��� > ����/�������� > �������������� > ���������� �о� �ҹ� ����Ʈ ��, ��Ű���� �г� ����� �湮�� 3���� �� ���� ����</P>
                            <%else%>
                            <p>1) 2019�� 4�� ~ 2021�� 9�� �Ⱓ ���¶��α��� > ����/�������� > �������������� > ���������� �о� �ҹ� ����Ʈ ��, ��Ű���� �г� ����� �湮�� 3���� �� ���� ����</P>
                            <%end if%>
                            <p>2) 2019�� 2�� vs 2020�� 2�� ���Ⱓ �� �ް��ҹ� ����Ʈ �ű� ������ ��</p>
                            <p>3) 2019�� 3�� vs 2020�� 3�� ���Ⱓ �� �ҹ� �ް��н� ���� ����� ��</p>
                            <p>4) �ް��ҹ��п� ����Ŭ���� ���� ������ �� 2019, 2020, 2021 �ҹ���� �ʱ� �հ��� ����</p>
                         </div>
                     </div>
                 </div>
             </div>
             <button class="close_btn"><img src="<%=img_main%>/m/2019/0809_sobang/rank_close.png" alt="�˾� �ݱ�"/></button>
         </div>
         <span class="dim_bg">-</span>
     </div>
     <div class="dim_bnrwrp rankWrap_m">
         <div class="dim_popup rank_pop_m">
             <div class="">
                 <div class="rank_pop_m_wrap">
                     <div class="rank_pop_slider_m">
                         <div class="">
 
                             <ul class="rank_m_slider-nav">
                                
                                 <li><img src="<%=img_main%>/m/2019/0812_sobang/off_m_01.png"><img src="<%=img_main%>/m/2019/0812_sobang/on_m_01.png">
                                 </li>
                                
                                 <li><img src="<%=img_main%>/m/2020/0304_rank/off_m_02.png"><img src="<%=img_main%>/m/2020/0304_rank/on_m_02.png">
                                 </li>
                                 <li><img src="<%=img_main%>/m/2020/0409_rank/off_m_03.png"><img src="<%=img_main%>/m/2020/0409_rank/on_m_03.png">
                                 </li>
                                 <li><img src="<%=img_main%>/m/2021/0324_sobang_ban/off_m_04.png"><img src="<%=img_main%>/m/2021/0324_sobang_ban/on_m_04.png">
                                 </li>
                             </ul>
                             <div class="rank_m_slider-for">
                            <%If cdate(lo_now_date) < cdate("2021-10-22 00:00") then%>
                            <div><img src="<%=img_main%>/m/2021/0722_sbbrand/m_cont_01_0722.png"></div>
                            <%else%>
                            <div><img src="<%=img_main%>/m/2021/0722_sbbrand/m_cont_01_211022.png"></div>
                            <%end if%>
                            <div><img src="<%=img_main%>/m/2021/0201_sobang_ban/m_cont_02.png"></div>
                            <div><img src="<%=img_main%>/m/2021/0201_sobang_ban/m_cont_03.png"></div>
                            <div><img src="<%=img_main%>/m/2021/0324_sobang_ban/m_cont_04.png"></div>
                             </div>
                         </div>
                         <div class="rank_pop_txt">
                            <%If cdate(lo_now_date) < cdate("2021-10-22 00:00") then%>
                            <p>1) 2019�� 5�� ~ 2021�� 6�� �Ⱓ ���¶��α��� > ����/�������� > �������������� > ���������� �о� �ҹ� ����Ʈ ��, ��Ű���� �г� ����� �湮�� 3���� �� ���� ����</P>
                            <%else%>
                            <p>1) 2019�� 4�� ~ 2021�� 9�� �Ⱓ ���¶��α��� > ����/�������� > �������������� > ���������� �о� �ҹ� ����Ʈ ��, ��Ű���� �г� ����� �湮�� 3���� �� ���� ����</P>
                            <%end if%>
                            <p>2) 2019�� 2�� vs 2020�� 2�� ���Ⱓ �� �ް��ҹ� ����Ʈ �ű� ������ ��</p>
                            <p>3) 2019�� 3�� vs 2020�� 3�� ���Ⱓ �� �ҹ� �ް��н� ���� ����� ��</p>
                            <p>4) �ް��ҹ��п� ����Ŭ���� ���� ������ �� 2019, 2020, 2021 �ҹ���� �ʱ� �հ��� ����</p>
                         </div>
                     </div>
                 </div>
             </div>
             <button class="close_btn"><img src="<%=img_main%>/m/2019/0812_sobang/mo_close.png" alt="�˾� �ݱ�"/></button>
         </div>
         <span class="dim_bg">-</span>
     </div>
     <% 'End if %>
 
     <script type="text/javascript">
 
         /* --- ��Ű���� 1�� ��� �˾� --- */
         function rankSlider(){
             $('.slider_cont').not('.slick-initialized').slick({
                 infinite: true,
                 autoplay: true,
                 slidesToShow: 1,
                 slidesToScroll: 1,
                 dots: true,
                 arrows: false,
                 autoplaySpeed: 3000,
             // 	responsive: [
             // 	{
             // 		breakpoint: 1200,
             // 		settings: "unslick"
             // 	}
             //   ]
             });
         };
         function rankSliderM(){
             $('.rank_m_slider-for').not('.slick-initialized').slick({
                 infinite: true,
                 autoplay: true,
                 slidesToShow: 1,
                 slidesToScroll: 1,
                 arrows: false,
                 fade: false,
                 asNavFor: '.rank_m_slider-nav'
             });
             $('.rank_m_slider-nav').not('.slick-initialized').slick({
                 slidesToShow: 3,
                 slidesToScroll: 1,
                 asNavFor: '.rank_m_slider-for',
                 dots: false,
                 focusOnSelect: true,
                 arrows: false,
                 centerMode: true,
             });
         };
         function dimScroll(){
             var bgHeight = $('body').height();
             $('.dim_bg').css({"height":bgHeight});
         };

         $(document).ready(function () {
             $('.main_rank_banner, .main_rank_n0201').click(function (e) {
                 e.preventDefault();
                 if ($('.rankWrap').css("display") == "none") {
                     $('.all_cont').css("display", "block");
                     $('.rankWrap').addClass('on');
                     rankSlider()
                 } else {
                     $('.rankWrap').removeClass('on');
                 }
             });

             /* ��Ű���� 1�� MO �˾� ���� */
             $('.main_rank_banner_mo, .main_rank_n0201_m').click(function (e) {
                 dimScroll();
                 e.preventDefault();
                 if ($('.rankWrap_m').css("display") == "none") {
                     $('.all_cont').css("display", "block");
                     $('.rankWrap_m').addClass('on');
                     rankSliderM();
                 } else {
                     $('.rankWrap_m').removeClass('on');
                 }
             });
         })

 
         /* ��Ű���� 1�� �������� */
         $(window).resize(function(){
             if($('.dim_bnrwrp').hasClass('on')){
                 if($(window).width() > 1200){
                     $('.rankWrap_m').removeClass('on');
                     $('.rankWrap').addClass('on');
                     if($('.rankWrap').hasClass('on')){
                         rankSlider();
                     };
                 }else{
                     dimScroll();
                     $('.rankWrap').removeClass('on');
                     $('.rankWrap_m').addClass('on');
                     if($('.rankWrap_m').hasClass('on')){
                         rankSliderM();
                     };
                 }
             }
         });
        /* --- ���� �� �˾� --- */
        function fncMainDimOffDay(event) {
            setCookie("maindim", "close", 1);
            if ($("#all_cont").css("display") == "block") {
                $("#all_cont").hide("");
                removeDim_main();
            }
            if(event.parents('.dim_bnrwrp').hasClass('ytWrap')){
                stopVideo();
            };
        }
 
        // �˾� �ݱ�
        function clearDim_main(event) {
            if($("#all_cont").css("display") == "block"){
                $("#all_cont").hide("");
                removeDim_main();
            }
            if(event.parents('.dim_bnrwrp').hasClass('ytWrap')){
                stopVideo();
            };
        }
        //�˾� ������� ������ ��
        $(".dim_bnrwrp .dim_bg").click(function () {
            removeDim_main();
            if($(this).parents('.dim_bnrwrp').hasClass('ytWrap')){
                stopVideo();
            };
        });
        //�ݱ� ������ ��
        $(".dim_bnrwrp .close_btn").click(function () {
            removeDim_main();
            if($(this).parents('.dim_bnrwrp').hasClass('ytWrap')){
                stopVideo();
            };
        });
        // �˾� ������� �����
        function removeDim_main(){
            $("#all_cont").hide("fast");
            $('body').removeClass('disabled');
            if($('.rankWrap').hasClass('on')){
                $('.slider_cont').slick('unslick');
            }
            if($('.rankWrap_m').hasClass('on')){
                $('.rank_m_slider-for').slick('unslick');
                $('.rank_m_slider-nav').slick('unslick');
            }
            <% if hcode = "sobang" Or hcode = "sobangcampus" Then %>
            $(".dim_bnrwrp").removeClass('on');
            <% else %>
            $(".dim_bnrwrp").hide("fast").removeClass('on');
            <% End if %>
        }
        /* --- // ���� �� �˾� --- */
 
 
     </script>
     <% End if %>
     <!-- // �ҹ��ΰ�, �ҹ��п� ��Ű1�� -->
     <!-- main_rank_banner / ��Ű����1�� ��� -->




    <!-- �ҹ�,�ҹ��п� ȫ�������� ��� ��� -->
    <% if instr(1, NowUrl, "/megagong.asp" )> 0 Then %>
        <% if hcode="sobang" Then %>
            <!-- �ҹ� 3�⿬�� �ֻ�� ��� -->
            <% If Cdate(lo_now_date) < Cdate("2022-05-13") Then%>
            <div class="topRoll">
                <div class="main_topbelt sobang_for3years">
                    <div class="pc"><img src="<%=img_main%>/m/2022/0409_fullserv/top_bn2.png" alt="�ް��ҹ��� �������� �ҹ���������� ġ��� ������ ������ ���� �ҹ� �ް��н� �Ǹűݾ��� �Ϻθ� �����մϴ�."></div>
                    <div class="mo"><img src="<%=img_main%>/m/2022/0409_fullserv/top_mo_bn2.png" alt="�ް��ҹ��� �������� �ҹ���������� ġ��� ������ ������ ���� �ҹ� �ް��н� �Ǹűݾ��� �Ϻθ� �����մϴ�."></div>
                </div>
            </div>

            <style>
                .main_topbelt.sobang_for3years{position:relative;top:inherit;left:inherit;margin:0;background: #0c120f;}
                .main_topbelt.sobang_for3years div.pc{position:relative;display: block;margin: 0 auto; width: 1200px; }
                .main_topbelt.sobang_for3years div.mo{position:relative;display: none;}
                .main_topbelt.sobang_for3years a {display:block;font-size:0;}

                .main_topbelt.sobang{position:relative;top:inherit;left:inherit;margin:0; }

                
                .main_topbelt.sobang_for3years.ver { background:#031114; opacity:.9999; }
                .main_topbelt.sobang_for3years.ver:before { content:""; display:block; width:50%; height:100%; background:#24404b; position:absolute; bottom:0; right:0; }
                


                @media all and (max-width: 1200px){
                .main_topbelt.sobang_for3years div.pc{width: 96%;}
                .main_topbelt.sobang_for3years div.pc img{min-width: 100%;}
                }
                @media all and (max-width: 768px){
                    .main_topbelt.sobang_for3years div.pc{display: none;}
                    .main_topbelt.sobang_for3years div.mo{display: block;}
                    .main_topbelt.sobang_for3years div.mo a {display:block;}
                }
            </style>
            <script>
                $('.topRoll').slick({
                    autoplay : true,
                    dots: false,
                    speed : 300,
                    infinite: true,
                    autoplaySpeed: 3000,
                    arrows: false,
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    fade: false,
                });
            </script>
            <!-- //�ҹ� 3�⿬�� �ֻ�� ��� -->
            <% End If %>

        <% elseif hcode="sobangcampus" Then %>
            <% If 1=2 then%>
            <% If Cdate(lo_now_date) < Cdate("2022-05-16") Then%>
                <div class="top_bnr">
                    <div class="main_topbelt sobang_for3years">
                        <div class="pc"><img src="<%=img_main%>/m/2022/0409_fullserv/top_bn2.png" alt="�ް��ҹ��� �������� �ҹ���������� ġ��� ������ ������ ���� �ҹ� �ް��н� �Ǹűݾ��� �Ϻθ� �����մϴ�."></div>
                        <div class="mo"><img src="<%=img_main%>/m/2022/0409_fullserv/top_mo_bn2.png" alt="�ް��ҹ��� �������� �ҹ���������� ġ��� ������ ������ ���� �ҹ� �ް��н� �Ǹűݾ��� �Ϻθ� �����մϴ�."></div>
                    </div>
                
                </div>
                <style>
                    .main_topbelt.sobang_for3years{position:relative;top:inherit;left:inherit;margin:0;background: #0c120f;}
                    .main_topbelt.sobang_for3years div.pc{position:relative;display: block;margin: 0 auto; width: 1200px; }
                    .main_topbelt.sobang_for3years div.mo{position:relative;display: none;}
                    .main_topbelt.sobang_for3years a {display:block;font-size:0;}

                    .main_topbelt.sobang{position:relative;top:inherit;left:inherit;margin:0; }

                    
                    .main_topbelt.sobang_for3years.ver { background:#031114; opacity:.9999; }
                    .main_topbelt.sobang_for3years.ver:before { content:""; display:block; width:50%; height:100%; background:#24404b; position:absolute; bottom:0; right:0; }
                    


                    @media all and (max-width: 1200px){
                    .main_topbelt.sobang_for3years div.pc{width: 96%;}
                    .main_topbelt.sobang_for3years div.pc img{min-width: 100%;}
                    }
                    @media all and (max-width: 768px){
                        .main_topbelt.sobang_for3years div.pc{display: none;}
                        .main_topbelt.sobang_for3years div.mo{display: block;}
                        .main_topbelt.sobang_for3years div.mo a {display:block;}
                    }
                </style>
                <script>
                    $('.top_bnr').slick({
                        autoplay : true,
                        dots: false,
                        speed : 300,
                        infinite: true,
                        autoplaySpeed: 3000,
                        arrows: false,
                        slidesToShow: 1,
                        slidesToScroll: 1,
                        fade: false,
                    });
                </script>
            <% Else %>
                <!-- �ֻ�� ��� PC S -->
                <% If CDate(lo_now_date) >= CDate("2022-04-22") then%>
                <div class="mtop_lineRoll pc">
                    <div class="item">
                        <a href="/s/sobang/event/2021/12230070/index.asp#eventWrap" target="_blank">
                            <img src="<%=img_main%>/m/2022/0422_sobang/pc_bnr1_1.jpg" class="pc" alt="">
                        </a>
                    </div>
                    <div class="item">
                        <a href="/s/sobang/event/2022/04220024/index.asp#eventWrap" target="_blank">
                            <img src="<%=img_main%>/m/2022/0422_sobang/pc_bnr1_2.jpg" class="pc" alt="">
                        </a>
                    </div>
                </div>

                <style>
                    .mtop_lineRoll.pc{position:relative;top:inherit;left:inherit;margin:0;background: #031114;margin: 0 auto;font-size: 0;overflow: hidden;text-align: center;}
                    .mtop_lineRoll.pc::before{content: '';display: block;position: absolute;top: 0;left: 50%;width: 100%;height: 100%;background: #23170b;z-index: 0;}
                    .mtop_lineRoll.pc::after{/* content: ''; */display: block;position: absolute;top: 0;left: 100%;width: 100%;height: 100%;background: #21170b;}
                    .mtop_lineRoll.pc .item{display: inline-block;position: relative;}
                    .mtop_lineRoll.pc .item a{}

                    @media all and (max-width: 1200px){
                    .mtop_lineRoll.pc{width: auto;}
                    .mtop_lineRoll.pc::before,.mtop_lineRoll.pc::after{display:none;}
                    .mtop_lineRoll.pc .item{width: 50%;}
                    }
                    @media all and (max-width: 768px){
                        .mtop_lineRoll.pc{display: none;}
                    }
                </style>
                <% End If %>
                <% End If %>
                <!-- // �ֻ�� ��� PC E -->

                    
                <!-- �ֻ�� ��� MO S -->
                <% If CDate(lo_now_date) >= CDate("2022-05-16") then%>
                <div class="mtop_lineRoll mo">
                    <div class="item" >
                        <a href="/s/sobang/event/2021/12230070/index.asp#eventWrap" target="_blank" style="background: #229d99;background: linear-gradient(180deg, rgba(49,189,160,1) 0%, rgba(34,157,154,1) 53%);">
                            <span>
                                <img src="<%=img_main%>/m/2022/0422_sobang/mo_bnr1.jpg" class="mo" alt="">
                            </span>
                        </a>
                    </div>
                    <div class="item" >
                        <a href="/s/sobang/event/2022/04220024/index.asp#eventWrap" target="_blank" style="background: #7c4119;background: linear-gradient(180deg, rgba(194,125,58,1) 0%, rgba(127,68,26,1) 53%);">
                            <span>
                                <img src="<%=img_main%>/m/2022/0422_sobang/mo_bnr2.jpg" class="mo" alt="">
                            </span>
                        </a>
                    </div>
                </div>

                <style>
                    .mtop_lineRoll.mo{display: none;}

                    @media all and (max-width: 768px){
                        .mtop_lineRoll.mo{display: block;margin: 0 0 0;}
                        .mtop_lineRoll.mo .item{}
                        .mtop_lineRoll.mo .item a {display: block;}
                        .mtop_lineRoll.mo .item a span{border-radius:22px;overflow: hidden;display: block;}
                    }
                </style>
                <script>
                    $('.mtop_lineRoll.mo').slick({
                        autoplay : true,
                        dots: false,
                        speed : 300,
                        infinite: true,
                        autoplaySpeed: 2300,
                        arrows: false,
                        slidesToShow: 2,
                        slidesToScroll: 1,
                        fade: false,
                        responsive: [{
                            breakpoint: 769,
                            settings: {
                                slidesToShow: 1,
                                slidesToScroll: 1,
                            }
                        }]
                    });
                </script>
                <% End If %>
                <!-- // �ֻ�� ��� MO E -->

            <% End If %>
        <% End If %>
        <!-- //�ҹ� 3�⿬�� �ֻ�� ��� -->
    <% End if %>
    <!-- //�ҹ�,�ҹ��п� ȫ�������� ��� ��� -->


    <!-- �ҹ� �н����� ���̺� 20221026 -->
    <% if hcode="sobang" Then %>
    <% if instr(1, NowUrl, "/megagong.asp" )> 0 Then %>
    <% If cdate(lo_now_date) >= cdate("2022-10-26") and cdate(lo_now_date) < cdate("2022-11-09 20:40")  then%>
    <div class="main_topbelt">

        <% If cdate(lo_now_date) < cdate("2022-11-09 18:00")  then%>
        <div class="for_pc">
            <div class="inner">
                <a href="/s/sobang/event/2022/10260044/index.asp#eventWrap" title="�ʰ����� ����� �ҹ��հݰ���LIVE">
                    <img src="<%=img_main%>/m/2022/1026_onair/main_bnr1.jpg" alt="�ʰ����� ����� �ҹ��հݰ���LIVE">
                </a>
            </div>
        </div>
        <div class="for_mo">
            <div class="inner">
                <a href="/s/sobang/event/2022/10260044/index.asp#eventWrap" title="�ʰ����� ����� �ҹ��հݰ���LIVE">
                    <img src="<%=img_main%>/m/2022/1026_onair/main_bnr1_m.jpg" alt="�ʰ����� ����� �ҹ��հݰ���LIVE">
                </a>
            </div>
        </div>
        <%end if%>
        
        <% If cdate(lo_now_date) >= cdate("2022-11-09 18:00") and cdate(lo_now_date) < cdate("2022-11-09 18:30") then%>
        <div class="for_pc">
            <div class="inner">
                <a href="/s/sobang/event/2022/10260044/index.asp#eventWrap" title="�ʰ����� ����� �ҹ��հݰ���LIVE">
                    <img src="<%=img_main%>/m/2022/1026_onair/main_bnr2.jpg" alt="�ʰ����� ����� �ҹ��հݰ���LIVE">
                </a>
            </div>
        </div>
        <div class="for_mo">
            <div class="inner">
                <a href="/s/sobang/event/2022/10260044/index.asp#eventWrap" title="�ʰ����� ����� �ҹ��հݰ���LIVE">
                    <img src="<%=img_main%>/m/2022/1026_onair/main_bnr2_m.jpg" alt="�ʰ����� ����� �ҹ��հݰ���LIVE">
                </a>
            </div>
        </div>
        <%end if%>
        
        <% If cdate(lo_now_date) >= cdate("2022-11-09 18:30") and cdate(lo_now_date) < cdate("2022-11-09 20:40") then%>
        <div class="for_pc">
            <div class="inner">
                <a href="/s/sobang/event/2022/10260044/index.asp#eventWrap" title="�ʰ����� ����� �ҹ��հݰ���LIVE">
                    <img src="<%=img_main%>/m/2022/1026_onair/main_bnr3.jpg" alt="�ʰ����� ����� �ҹ��հݰ���LIVE">
                </a>
            </div>
        </div>
        <div class="for_mo">
            <div class="inner">
                <a href="/s/sobang/event/2022/10260044/index.asp#eventWrap" title="�ʰ����� ����� �ҹ��հݰ���LIVE">
                    <img src="<%=img_main%>/m/2022/1026_onair/main_bnr3_m.jpg" alt="�ʰ����� ����� �ҹ��հݰ���LIVE">
                </a>
            </div>
        </div>
        <%end if%>

    </div>
    <style>
        .main_topbelt .for_pc {background:#252525; width:100%; text-align:center;}
        /* .main_topbelt .for_pc .inner {position: relative;} */
        /* .main_topbelt .for_pc div a{position: absolute; top: 50%; left: calc(50% + 517px); transform: translate(-50%, -50%); width: 103px; height: 31px; } */
        .main_topbelt .for_mo {display: none;}
        @media (max-width:1600px){
            .main_topbelt .for_pc .inner {width: 100%;}
            /* .main_topbelt .for_pc div a{left: calc(50% + 32.2%);width: 6.8vw;height: 2.4vw;} */
        }
        @media (max-width:768px) {
            .main_topbelt .for_pc {display: none;}
            .main_topbelt .for_mo {display: block;}
            .main_topbelt .for_mo div a {display: block; height: 100%;}
        }
    </style>
    <%end if%>
    <%end if%>
    <%end if%>
    <!-- // �ҹ� �н����� ���̺� 20221026 -->





    



<% '  ������ ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ %>



<% If hcode = "army" Then %>
<% if fncRequestCookie("dimSummer") = "" and instr(1, NowUrl, "/megagong.asp") > 0 then %>


<% End If %>

<!-- �հ����� ����ȸ ��Ʃ�� �˾� -->
<% if instr(1, NowUrl, "/megagong.asp" ) > 0 Then %>
<%If cdate(lo_now_date) >= cdate("2021-12-18 13:40") and youtube_live_banner_main("youtube2") = "Y" then%>
<div id="briefing_pop1" class="briefing_layer">
    <div class="dimBg"></div>
    <div id="modalLayer" class="briefing_pop_layer">
        <div class="brfpop_container">
            <div class="brflayer_content">
                <iframe width="100%" height="100%" src="https://www.youtube.com/embed/H_E1EXHNGcE" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <button onclick="brfDay();" class="btnClose">�ݱ�</button>
        </div>
    </div>
</div>
<style>
    .briefing_layer {position: fixed;display:block;top: 0;left: 0;width: 100%;height: 100%;z-index: 102;}
    .briefing_layer .dimBg{position: fixed;left: 0;top: 0;width: 100%;height: 100%;background: #000;opacity: 0.9;cursor: pointer;}
    .briefing_layer .briefing_pop_layer {display: block;width: 1280px;height: 700px;position: absolute;top: 50%;left: 50%;z-index: 10;transform: translate(-50%, -50%);}
    .brfpop_container,.brflayer_content {position: relative;height: 100%;}
    .brfpop_container:after {display: block;clear: both;content: '';}
    .briefing_layer .btnClose{position: absolute;top: -30px;right: 0;border: 1px solid #fff;padding: 3px;color:#fff;}

    @media (max-width: 1280px) {
        .brflayer_content img{width: 100%;}
        .briefing_layer .briefing_pop_layer{width: 80%;height: 50vw;}


    }
    @media (max-width: 768px) {
        .brflayer_content img.pc{display: none;}
        .briefing_layer .briefing_pop_layer{width: 95%;}
    }
</style>
<script type="text/javascript">

    function brfOff(){
        $(".briefing_layer").hide();
    }
    $('.briefing_layer .dimBg').on('click', function(){
        brfOff();
    });
    function brfDay() {
        setCookie("dimSummer", "close", 1);
        brfOff();
    }

</script>
<%end if%>
<%end if%>
<!-- // �հ����� ����ȸ ��Ʃ�� �˾� -->
<% End If %>



<!--���� �߾� ���� �÷��ù�� -->
<% if hcode = "army" and instr(1, NowUrl, "/megagong.asp") > 0 Then %>
    <% If cdate(lo_now_date) >= cdate("2022-01-21") and cdate(lo_now_date) < cdate("2022-02-19 17:00") then%>
    <!-- slick ��� �Ѹ���
    <div id="courtnew_brn1" class="courtnew_brn" style="">
        <div id="courtnewRoll">
            <div class="item">
                <a href="/c/gongssel/help/notice/view.asp?idx=3487"><img src="<%=img_main%>/m/2021/1206_gongssel/main_flt_ban_1229.png" alt="��ȿ�� �ű� �Լ�"></a>
            </div>
            <div class="item">
                <a href="/c/gongssel/help/notice/view.asp?idx=3462&amp;cate=01&amp;searchkey=&amp;searchword=&amp;page=1"><img src="<%=img_main%>/m/2022/0125_pt1969/main_flt_ban_2.png" alt="����/���ҹ� �ű��Լ� ������ ���� �̺�Ʈ"></a>
            </div>
        </div>
        <button onclick="clear_courtnew1();" class="close_btn2"><img src="<%=img_main%>/m/2021/1206_gongssel/main_bnr_close.png" alt="�˾� �ݱ�"/></button>
    </div>
    -->

    <div id="courtnew_brn2" class="courtnew_brn brn2">
        <a href="/s/army/event/2022/01210006/index.asp#eventWrap" target="_blank" title="">
            <img src="<%=img_main%>/m/2022/0121_army/main_flt_ban_1.png" alt="2022��� ������ �հ����� ����ȸ" />
        </a>
        <button onclick="clear_courtnew2();" class="close_btn2">
            <img src="<%=img_main%>/m/2021/1206_gongssel/main_bnr_close.png" alt="�˾� �ݱ�"/>
        </button>
    </div>


    <style type="text/css">
        .courtnew_brn {position: absolute;top: -140px;left: 50%;margin: 380px 0 0 630px;width: 174px;z-index: 3;}
        .courtnew_brn.brn2 {top: 0;}
        .courtnew_brn p{position: relative;}
        .courtnew_brn p i{position: absolute;left: -20px;top: -28px;}
        .courtnew_brn p a{position:absolute;left:0;width:100%;height:100%;top: 0;font-size:0;}
        .courtnew_brn p .date{position: absolute;left:35px;bottom:85px;color: #94ff82;font-size: 12px;}
        .courtnew_brn .close_btn2{position:absolute;top: 20px;right: -10px;font-size: 0;}
        .courtnew_brn.brn2 .close_btn2{top: 00px;}
        .courtnew_brn .slick-arrow{display: none !important;}
        .courtnew_brn .slick-dots{font-size: 0;text-align: center;padding: 9px 0 0;opacity: 0.7;}
        .courtnew_brn .slick-dots li.slick-active{}
        .courtnew_brn .slick-dots li{display: inline-block;margin: 0 3px;}
        .courtnew_brn .slick-dots li button{display: block;width: 7px;height: 7px;border: 1px solid #fff;border-radius: 100%;}
        .courtnew_brn .slick-dots li.slick-active button{background: #fff;}

        @media (max-width: 1200px){
            .courtnew_brn{display: none;}
        }
    </style>


    <script type="text/javascript">
        function clear_courtnew1() {
            if ($("#courtnew_brn1").css("display") == "block") {
                $("#courtnew_brn1").hide();
            }
        }
        function clear_courtnew2() {
            if ($("#courtnew_brn2").css("display") == "block") {
                $("#courtnew_brn2").hide();
            }
        }
        $('#courtnewRoll').slick({
            slidesToShow: 1,
            slidesToScroll: 1,
            infinite: true,
            dots: true,
            arrow: false,
            speed: 0,
            autoplaySpeed: 1500,
            autoplay: true,
        });
    </script>
    <% End If %>
<%end if%>
<!--//���� �߾� ���� �÷��ù�� -->



<% '  ���� ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ %>
    

    <!-- ���� ž��� -->
    <% If hcode = "gongssel" Then %>
    <% if cdate(lo_now_date) < cdate("2022-06-17") then %>
    <div class="gongssel_main_topbelt <% If cdate(lo_now_date) >= cdate("2022-05-24") then%>d0524<% End If %>">
        <% if cdate(lo_now_date) < cdate("2021-07-01") then %>
        <!-- <style>.gongssel_main_topbelt{width: 100%;background:url('https://img.megagong.net/m/2020/0914_gongssel/top_bg.jpg') no-repeat center;background-size:auto 100%;}</style>  -->
        <div class="pc">
            <a href="/c/gongssel/pass/index.asp#eventWrap">
               <img src="<%=img_main%>/m/2020/1125_gongsselpass/heaader_bnr.jpg" alt="���� ù�� 2020 ������ ���� 53% �հ�!"/>
            </a>
        </div>

        <%elseIf cdate(lo_now_date) < cdate("2022-02-25") then%>
        <!-- <style>.gongssel_main_topbelt{background:#290a2a}</style>  -->
        <div class="pc">
            <a href="/c/gongssel/pass/index.asp#eventWrap">
                <img src="<%=img_main%>/m/2021/0701_gongssel/heaader_bnr.jpg" alt="���� ù�� 2020 ������ ���� 53% �հ�!" class="pc"/>
            </a>
        </div>
        <div class="mo">
            <a href="/c/gongssel/pass/index.asp#eventWrap">
                <img src="<%=img_main%>/m/2021/0701_gongssel/heaader_bnr_m.jpg" alt="���� ù�� 2020 ������ ���� 53% �հ�!" class="mo"/>
            </a>
        </div>

        <% elseIf cdate(lo_now_date) < cdate("2022-04-08") then%>
        <!-- <style>.gongssel_main_topbelt{background:#220426}</style>  -->
        <div class="pc">
            <a href="/c/gongssel/pass/index.asp#eventWrap">
                <img src="<%=img_main%>/m/2022/0225_gongssel/heaader_bnr.jpg" alt="���� ù�� 2020 ������ ���� 53% �հ�!" class="pc"/>
            </a>
        </div>
        <div class="mo">
            <a href="/c/gongssel/pass/index.asp#eventWrap">
                <img src="<%=img_main%>/m/2022/0225_gongssel/heaader_bnr_m.jpg" alt="���� ù�� 2020 ������ ���� 53% �հ�!" class="mo"/>
            </a>
        </div>
        <% elseIf cdate(lo_now_date) < cdate("2022-05-24") then%>
        <style>.gongssel_main_topbelt{background:#2f75db}</style> 
        <div class="pc">
            <a href="/c/gongssel/schedule/2022/interview/index.asp#eventWrap">
                <img src="<%=img_main%>/m/2022/0328_gongssel/heaader_bnr.jpg" alt="2022.04 �ް��������� Grand Open" class="pc"/>
            </a>
        </div>
        <div class="mo">
            <a href="/c/gongssel/schedule/2022/interview/index.asp#eventWrap">
                <img src="<%=img_main%>/m/2022/0328_gongssel/heaader_bnr_m.jpg" alt="2022.04 �ް��������� Grand Open" class="mo"/>
            </a>
        </div>
        <% elseIf cdate(lo_now_date) < cdate("2022-06-27") then%>
        <style>.gongssel_main_topbelt{background:#01410c}</style> 
        <div class="pc">
            <a href="/c/gongssel/help/notice/view.asp?idx=3712">
                <img src="<%=img_main%>/m/2022/0524_gongssel/heaader_bnr.jpg" alt="�߱��� �Թ����� �⺻�̷б��� ������! 6�� �Թ�Ư�� OPEN!" class="pc"/>
            </a>
        </div>
        <div class="mo">
            <a href="/c/gongssel/help/notice/view.asp?idx=3712">
                <img src="<%=img_main%>/m/2022/0524_gongssel/heaader_bnr_m.jpg" alt="�߱��� �Թ����� �⺻�̷б��� ������! 6�� �Թ�Ư�� OPEN!" class="mo"/>
            </a>
        </div>
        <% else %>
        <style>.gongssel_main_topbelt{background:#2f75db}</style> 
        <div class="pc">
            <a href="/c/gongssel/schedule/2022/interview/index.asp#eventWrap">
                <img src="<%=img_main%>/m/2022/0328_gongssel/heaader_bnr.jpg" alt="2022.04 �ް��������� Grand Open" class="pc"/>
            </a>
        </div>
        <div class="mo">
            <a href="/c/gongssel/schedule/2022/interview/index.asp#eventWrap">
                <img src="<%=img_main%>/m/2022/0328_gongssel/heaader_bnr_m.jpg" alt="2022.04 �ް��������� Grand Open" class="mo"/>
            </a>
        </div>
        <% End If %>
    </div>
    <% else %>
    <div class="gongssel_main_topbelt d0524">
        <% if cdate(lo_now_date) < cdate("2022-10-17 18:00") then %>
        <style>.gongssel_main_topbelt{background:#2f75db}</style> 
        <% else %>
        <style>.gongssel_main_topbelt{background:#1e2e61}</style> 
        <% end if %>
        <%If cdate(lo_now_date) < cdate("2022-07-01") then%>
        <div class="pc">
            <a href="https://bit.ly/39x2Muk">
                <img src="<%=img_main%>/m/2022/0601_gongssel/header_bnr.jpg" alt="2022.07 �ް��������� ������ ��� Open" class="pc"/>
            </a>
        </div>
        <div class="mo">
            <a href="https://bit.ly/39x2Muk">
                <img src="<%=img_main%>/m/2022/0601_gongssel/header_bnr_m.jpg" alt="2022.07 �ް��������� ������ ��� Open" class="mo"/>
            </a>
        </div>
        <% elseif cdate(lo_now_date) < cdate("2022-07-11") then %>
        <div class="pc">
            <a href="/c/gongssel/schedule/2022/interview/index.asp#eventWrap">
                <img src="<%=img_main%>/m/2022/0601_gongssel/header_bnr.jpg" alt="2022.07 �ް��������� ������ ��� Open" class="pc"/>
            </a>
        </div>
        <div class="mo">
            <a href="/c/gongssel/schedule/2022/interview/index.asp#eventWrap">
                <img src="<%=img_main%>/m/2022/0601_gongssel/header_bnr_m.jpg" alt="2022.07 �ް��������� ������ ��� Open" class="mo"/>
            </a>
        </div>
        <% elseif cdate(lo_now_date) < cdate("2022-08-19") then %>
        <div class="pc">
            <a href="/c/gongssel/schedule/2022/interview/index.asp#eventWrap">
                <img src="<%=img_main%>/m/2022/0711_bnr/header_bnr.jpg" alt="2022.07 �ް��������� ������ ��� Open" class="pc"/>
            </a>
        </div>
        <div class="mo">
            <a href="/c/gongssel/schedule/2022/interview/index.asp#eventWrap">
                <img src="<%=img_main%>/m/2022/0711_bnr/header_bnr_m.jpg" alt="2022.07 �ް��������� ������ ��� Open" class="mo"/>
            </a>
        </div>
        <% elseif cdate(lo_now_date) < cdate("2022-10-17 18:00") then %>
        <div class="pc">
            <a href="/c/gongssel/help/notice/view.asp?idx=3888&cate=01&searchkey=&searchword=&page=1" target="_blank">
                <img src="<%=img_main%>/m/2022/0801_gongssel/interview_bnr2.jpg" alt="�ް� ��������" class="pc"/>
            </a>
        </div>
        <div class="mo">
            <a href="/c/gongssel/help/notice/view.asp?idx=3888&cate=01&searchkey=&searchword=&page=1" target="_blank">
                <img src="<%=img_main%>/m/2022/0801_gongssel/interview_bnr1.jpg" alt="�ް� ��������" class="mo"/>
            </a>
        </div>
        <% elseif cdate(lo_now_date) < cdate("2022-10-29") then %>
        <div class="pc">
            <a href="/c/gongssel/schedule/2022/interview/index.asp#eventWrap" target="_blank">
                <img src="<%=img_main%>/m/2022/1017_gongssel/top_bn_center1_pc.png" alt="�ް� ��������" class="pc"/>
            </a>
        </div>
        <div class="mo">
            <a href="/c/gongssel/schedule/2022/interview/index.asp#eventWrap" target="_blank">
                <img src="<%=img_main%>/m/2022/1017_gongssel/top_bn_center1_m.png" alt="�ް� ��������" class="mo"/>
            </a>
        </div>
        <% else %>
        <div class="pc">
            <a href="/c/gongssel/schedule/2022/interview/index.asp#eventWrap" target="_blank">
                <img src="<%=img_main%>/m/2022/1017_gongssel/top_bn_center2_pc.png" alt="�ް� ��������" class="pc"/>
            </a>
        </div>
        <div class="mo">
            <a href="/c/gongssel/schedule/2022/interview/index.asp#eventWrap" target="_blank">
                <img src="<%=img_main%>/m/2022/1017_gongssel/top_bn_center2_m.png" alt="�ް� ��������" class="mo"/>
            </a>
        </div>
        <% end if %>
    </div>
    <% end If %>
    <style>
        .gongssel_main_topbelt .pc{width: 1080px;margin: 0 auto;}
        /* .gongssel_main_topbelt.d0524{background: #01410c;} */
        .gongssel_main_topbelt .mo{display: none;}
        @media (max-width: 1200px){
            .gongssel_main_topbelt{display:block;}
            .gongssel_main_topbelt .pc{width: 100%;}
        }
        @media (max-width: 768px){
            .gongssel_main_topbelt .pc{display: none;}
            .gongssel_main_topbelt .mo{display: block;}
        }
    </style>
    <% End If %>
    <!-- // ���� ž��� -->


    
    <% if hcode = "gongssel" and instr(1, NowUrl, "/megagong.asp") > 0 Then %>
    
    <% End if %>
    

<% '  �ȼ� ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ %>
    

    
    <% if hcode = "ansung" and instr(1, NowUrl, "/megagong.asp") > 0 Then %>
        <div id="bestbook_topbnr" class="bestbook_topbnr">
            <div class="inner">
                <%If cdate(lo_now_date) < cdate("2022-04-06") then%>
                <a href="/c/ansung/pass/2021/pass_1.asp" title="2017~2021 ���� �ʱ� �հ��� 855�� �̻� ���� ���� ���� �ٷΰ���">
                    <img src="<%=img_main%>/m/2022/0208_ansung/top_belt_bnr1.png" class="for_pc" alt="2017~2021 ���� �ʱ� �հ��� 856�� �̻� ����! ���� ���� �ٷΰ���" />
                    <img src="<%=img_main%>/m/2022/0208_ansung/top_belt_bnr_m.png" class="for_mo" alt="2017~2022 ���� �ʱ� �հ��� 904�� �̻� ����! ���� ���� �ٷΰ���" />
                </a>
                <% elseIf cdate(lo_now_date) < cdate("2022-05-16") then%>
                <a href="/c/ansung/pass/2022/pass_1.asp" title="2017~2022 ���� �ʱ� �հ��� 904�� �̻� ���� ���� ���� �ٷΰ���">
                    <img src="<%=img_main%>/m/2022/0208_ansung/top_belt_bnr1_0407.png" class="for_pc" alt="2017~2022 ���� �ʱ� �հ��� 904�� �̻� ���� ���� ���� �ٷΰ���" />
                    <img src="<%=img_main%>/m/2022/0208_ansung/top_belt_bnr_m_0407.png" class="for_mo" alt="2017~2022 ���� �ʱ� �հ��� 904�� �̻� ���� ���� ���� �ٷΰ���" />
                </a>
                <% elseIf cdate(lo_now_date) < cdate("2022-07-27") then%>
                <a href="/c/ansung/pass/2022/pass_1.asp" title="2017~2022 ���� �ʱ� �հ��� 904�� �̻� ���� ���� ���� �ٷΰ���">
                    <img src="<%=img_main%>/m/2022/0516_ansung/top_belt_bnr1.png" class="for_pc" alt="2017~2022 ���� �ʱ� �հ��� 904�� �̻� ���� ���� ���� �ٷΰ���" />
                    <img src="<%=img_main%>/m/2022/0516_ansung/top_belt_bnr_m.png" class="for_mo" alt="2017~2022 ���� �ʱ� �հ��� 904�� �̻� ���� ���� ���� �ٷΰ���" />
                </a>
                <% elseIf cdate(lo_now_date) < cdate("2022-08-03") then%>
                <a href="/c/ansung/pass/2022/pass_1.asp" title="2017~2022 ���� �ʱ� �հ��� 1,009�� �̻� ���� ���� ���� �ٷΰ���">
                    <img src="<%=img_main%>/m/2022/0727_ansung/top_belt_bnr1.png" class="for_pc" alt="2017~2022 ���� �ʱ� �հ��� 1,009�� �̻� ���� ���� ���� �ٷΰ���" />
                    <img src="<%=img_main%>/m/2022/0727_ansung/top_belt_bnr_m.png" class="for_mo" alt="2017~2022 ���� �ʱ� �հ��� 1,009�� �̻� ���� ���� ���� �ٷΰ���" />
                </a>
                <% elseIf cdate(lo_now_date) >= cdate("2022-09-02") then%>
                <a href="https://ansung.megagong.net/c/ansung/pass/2022/pass_1.asp" title="2017~2022 ���� �ʱ� �հ��� 1,089�� �̻� ���� ���� ���� �ٷΰ���" target="_blank">
                    <img src="<%=img_main%>/m/2022/0906_ansung/top_belt_bnr1.png" class="for_pc" alt="2017~2022 ���� �ʱ� �հ��� 1,089�� �̻� ���� ���� ���� �ٷΰ���" />
                    <img src="<%=img_main%>/m/2022/0906_ansung/top_belt_bnr_m.png" class="for_mo" alt="2017~2022 ���� �ʱ� �հ��� 1,089�� �̻� ���� ���� ���� �ٷΰ���" />
                </a>
                <% else %>
                <a href="/c/ansung/pass/2022/pass_1.asp" title="2017~2022 ���� �ʱ� �հ��� 1,044�� �̻� ���� ���� ���� �ٷΰ���">
                    <img src="<%=img_main%>/m/2022/0803_ansung/top_belt_bnr1.png" class="for_pc" alt="2017~2022 ���� �ʱ� �հ��� 1,044�� �̻� ���� ���� ���� �ٷΰ���" />
                    <img src="<%=img_main%>/m/2022/0803_ansung/top_belt_bnr_m.png" class="for_mo" alt="2017~2022 ���� �ʱ� �հ��� 1,044�� �̻� ���� ���� ���� �ٷΰ���" />
                </a>
                <% End if %>
            </div>
        </div>
        <style>
            .bestbook_topbnr{position: relative;background-color: #000;text-align: center;overflow: hidden;}
            .bestbook_topbnr .inner{position: relative;} 
            .bestbook_topbnr .for_mo{display: none;}

            @media (max-width: 768px) {
                .bestbook_topbnr .for_pc{display: none;}
                .bestbook_topbnr .for_mo{display: block;}
            }
        </style>
        <!-- //2017~2021 ���� �ʱ� �հ��� 855�� �̻� ���� ���� ���� -->
    <% End if %>
    

<% '  �ҹ��п� ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ %>
<% If hcode = "sobangcampus" Then %>

<% End If %>

<% '  �����Ҷ� ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ %>
    <% If hcode = "ngbr" Then %>

    <% if instr(1, NowUrl, "/megagong.asp" )> 0 Then %>
    <%If cdate(lo_now_date) < cdate("2022-07-08") then%>
    <% If fncRequestCookie("main_ngbr_layer") = "" then %>
    
    <% End If %>
    <%end if%>
    <%end if%>





    <div id="topbelt_sprta" class="main_topbelt <% if cdate(lo_now_date) >= cdate("2022-03-17") then %> v0317 <% end if %>">
        <div class="inner">
            <% if cdate(lo_now_date) < cdate("2022-03-17") then %>
            <div class="pc">
                <img src="<%=img_main%>/m/2022/0113_ngbr/heaader_bnr_pc.jpg" alt="�հ��� ������ �����ϴ�! 2021 ���ĸ�Ÿ ��� �հ��� ���ͺ�" usemap="#heaader_bnr_pc"/>
            </div>

            <div class="mo">
                <img src="<%=img_main%>/m/2022/0113_ngbr/heaader_bnr_mo.jpg" alt="�հ��� ������ �����ϴ�! 2021 ���ĸ�Ÿ ��� �հ��� ���ͺ�" usemap="#heaader_bnr_mo"/>
            </div>

            <div class="topbelt_btn_box">
                <a href="javascript:GongcampusFreePlay('E',2526, '', 0);"  alt="21�⵵ ������ 9�� ������ �հݻ�"></a>
                <a href="javascript:GongcampusFreePlay('E',2363, '', 0);" alt="21�⵵ ������ 9�� ������ �հݻ�"></a>
                <a href="javascript:GongcampusFreePlay('E',2362, '', 0);" alt="21�⵵ �ҹ��� ��ä �հݻ�" ></a>
            </div>
            <% else %>
            <div class="pc">
                <img src="<%=img_main%>/m/2022/0317_ngbr/heaader_bnr_pc_img1.png" alt="����, with SPARTA!">
                <img src="<%=img_main%>/m/2022/0317_ngbr/heaader_bnr_pc_img2.png" alt="���к����� ������ 94%">
                <img src="<%=img_main%>/m/2022/0317_ngbr/heaader_bnr_pc_img3.png" alt="������ ������ 92%">
                <img src="<%=img_main%>/m/2022/0317_ngbr/heaader_bnr_pc_img4.png" alt="��Ȱ���� ������ 95%">
            </div>
 
            <div class="mo">
                <img src="<%=img_main%>/m/2022/0317_ngbr/heaader_bnr_mo.jpg" alt="����, with SPARTA!">
            </div>
            <% end if %>
        </div>
    </div>
    <style>
        .main_topbelt{background: #212636;}
        .main_topbelt .inner{width: 1080px;margin: 0 auto;}
        .main_topbelt .pc{display:block;}
        .main_topbelt .mo{display:none;}
        .main_topbelt img{width: 100%;}
        .main_topbelt .topbelt_btn_box{position: absolute;right: 6.6%;top: 8%;width: 23%;height: 84%;}
        .main_topbelt .topbelt_btn_box a{position: absolute;width: 32.3%;height: 100%;}
        .main_topbelt .topbelt_btn_box a:nth-child(1){}
        .main_topbelt .topbelt_btn_box a:nth-child(2){left: 34%;}
        .main_topbelt .topbelt_btn_box a:nth-child(3){left: 68%;}

        .main_topbelt.v0317{background: #282828;}
        .main_topbelt.v0317 .inner{height: 80px; position: relative;}
        .main_topbelt.v0317 .pc img{width: auto; position: absolute; top: 50%; transform: translateY(-50%);-moz-transform: translateY(-50%);-webkit-transform: translateY(-50%);}
        .main_topbelt.v0317 .pc img:nth-child(1){top: 20px; left: 55px; transform: none;}
        .main_topbelt.v0317 .pc img:nth-child(2){left: 470px;animation: show_inLeader  2.5s ease-out .5s forwards;-webkit-animation: show_inLeader  2.5s ease-out 0.5s forwards; opacity: 0;}
        .main_topbelt.v0317 .pc img:nth-child(3){left: 655px;animation: show_inLeader  2.5s ease-out 1.5s forwards;-webkit-animation: show_inLeader  2.5s ease-out 1.5s forwards; opacity: 0;}
        .main_topbelt.v0317 .pc img:nth-child(4){left: 845px;animation: show_inLeader  2.5s ease-out 2.5s forwards;-webkit-animation: show_inLeader  2.5s ease-out 2.5s forwards; opacity: 0;}
        @keyframes show_inLeader{
            0% {opacity: 0;}
            100% {opacity: 1;}
        }
        @-webkit-keyframes show_inLeader{
            0% {opacity: 0;}
            100% {opacity: 1;}
        }

        .main_topbelt.fixed{height: 80px;transition: 1s all;}
        .main_topbelt.fixed .inner{position: fixed;top: 0;left: 0;width: 100%;z-index: 4;background: #282828;}
        .main_topbelt.fixed .pc{width: 1080px;margin: 0 auto;height: 80px;position: relative;}
        .main_topbelt.fixed .mo{}


        @media (max-width: 1200px){
            .main_topbelt .inner{width: 100%; height: auto !important;}
            .main_topbelt .pc{display:none;}
            .main_topbelt .mo{display:block;}
            .main_topbelt .topbelt_btn_box{right: 6%;top: 14%;width: 36.5%;height: 71%;}
        }
    </style>
    <% if cdate(lo_now_date) >= cdate("2022-05-09") then %>
    <script>
        $(function () {
            $(window).scroll(function () {
                
                var wTop = $(window).scrollTop();
                var hdt_top = $("#headertop").offset().top;

                if(wTop > hdt_top){
                    $('#topbelt_sprta').addClass('fixed');
                }else{
                    $('#topbelt_sprta').removeClass('fixed');
                }

            });

        });
    </script>
    <% End If %>

    <% End If %>
    
<!-- // ���� ž��� -->

 













