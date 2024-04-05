<!-- 메인 탑배너 -->
<% If instr(1, NowUrl, "/megagong.asp") > 0 Then %>
        <% if hcode = "gong" then %>


        <!-- 2022 지방직 총평 LIVE -->
        <%if cdate(lo_now_date) >= cdate("2022-06-18 19:20") then%>
            <%
            youtube9_banner_on = "N"
            strSql = ""
            strSql = strSql & " SELECT TV_VAL "
            strSql = strSql & " FROM ME_TMP_VALUE WITH(NOLOCK) "
            strSql = strSql & " WHERE TV_GBN='youtube9' "
            set objrs = dbexec(strsql, "study")
            if not (objrs.eof and objrs.bof) then
                youtube9_banner_on = objRs(0)
            end if
            call dbclose(objrs)
            %>        
            <% if youtube9_banner_on = "Y" then %>
                <div id="civillive_pop" class="layerPopup  civillive_pop" style="display: block;">
                    <span class="dimBg">-</span>
                    <div class="contentBox">
                        <div class="vdo_wrap">
                            <div class="vdo">
                                <!-- https://www.youtube.com/embed/MZZxxkNoTqQ?autoplay=1&mute=1 -->
                                <iframe width="1080" height="610" src="https://www.youtube.com/embed/MZZxxkNoTqQ?autoplay=1&mute=1" title="2022 지방직 총평 LIVE" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                            </div>
                        </div>
                        <button class="btnClose"><img src="<%=img_main%>/c/gongssel/main/pop_close.png" alt="닫기"></button>
                    </div>
                </div>

                <style>
                    #civillive_pop{z-index: 102;}
                    #civillive_pop .contentBox{position: absolute;left: 50%;top: 50%;transform: translate(-50%,-50%);z-index: 3;width: 1080px;}
                    #civillive_pop .contentBox .vdo_wrap{position: relative;z-index: 1;cursor: pointer;padding-bottom: 56%;background: #222;overflow: hidden;}
                    #civillive_pop .contentBox .vdo_wrap .vdo{width: 100% !important;height: 100% !important;position: absolute;width: 100%;height: 100%;}
                    #civillive_pop .contentBox iframe{position: absolute;top: 0;left: 0;width: 100%;height: 100%;}
                    #civillive_pop .dimBg{position:absolute;top:0;left:0;width:100%;height:100%;background-color:#000;opacity:0.5;}
                    #civillive_pop .contentBox .btnClose{position:absolute;background: #000;top: -37px;right: 0px;padding: 6px;width: 34px;height: 34px;box-sizing: border-box;}
                    #civillive_pop .contentBox .btnToday{top: -27px;right: 26px;padding:0 15px;height: 24px;line-height: 24px;background: #444;}
                    .ly_btm_fixed .crdwrp{height: 181px;}
                    @media all and (max-width: 1200px){
                        #civillive_pop .contentBox{width: 70%;}
                        #civillive_pop .contentBox iframe{width: 100% !important;}
                    }
                    @media all and (max-width: 768px){
                        #civillive_pop{z-index: 100;}
                        #civillive_pop .contentBox{width: 90%;}
                    }
                    @media all and (max-width: 440px){
                    }
                </style>
                <script>
                    (function(){
                        $('#civillive_pop .contentBox .btnClose').on('click', function(e){
                            e.preventDefault();
                            $('#civillive_pop').hide().removeClass('on');
                        });
                        $('#civillive_pop .dimBg').on('click', function(){
                            $('#civillive_pop .contentBox .btnClose').trigger('click');
                        });
                    })();
                
        
                </script>
            <% end if %>
        <% end if %>
        <!-- // 2022 지방직 총평 LIVE -->



            <% if 1=2 then%>
            <!-- 국가직 7급 총평 유튜브 라이브-->
            <%if cdate(lo_now_date) >= cdate("2021-09-01 15:30") then%>
                <%
                youtube_banner_on = "Y"
                strSql = ""
                strSql = strSql & " SELECT TV_VAL "
                strSql = strSql & " FROM ME_TMP_VALUE WITH(NOLOCK) "
                strSql = strSql & " WHERE TV_GBN='youtube_on' "
                set objrs = dbexec(strsql, "exam")
                if not (objrs.eof and objrs.bof) then
                    youtube_banner_on = objRs(0)
                end if
                call dbclose(objrs)
                %>
                <% if youtube_banner_on = "Y" then %>
            <div id="fullserv_live" class="layerPopup  fullserv_live" style="display: block;">
                <span class="dimBg">-</span>
                <div class="contentBox">
                    <div class="vdo_wrap">
                        <div class="vdo">
                            <!-- https://www.youtube.com/embed/cmKYQHINYIM?autoplay=1&mute=1 -->
                            <iframe width="1080" height="610" src="https://bit.ly/3mr1t1M" title="국가직 7급 총평 유튜브 라이브" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        </div>
                    </div>
                    <button class="btnClose"><img src="https://img.megagong.net/c/gongssel/main/pop_close.png" alt="닫기"></button>
                </div>
            </div>

            <style>
                .fullserv_live{z-index: 102;}
                .fullserv_live .contentBox{position: absolute;left: 50%;top: 50%;transform: translate(-50%,-50%);z-index: 3;width: 1080px;}
                .fullserv_live .contentBox .vdo_wrap{position: relative;z-index: 1;cursor: pointer;padding-bottom: 56%;background: #222;overflow: hidden;}
                .fullserv_live .contentBox .vdo_wrap .vdo{width: 100% !important;height: 100% !important;position: absolute;width: 100%;height: 100%;}
                .fullserv_live .contentBox iframe{position: absolute;top: 0;left: 0;width: 100%;height: 100%;}
                .fullserv_live .dimBg{position:absolute;top:0;left:0;width:100%;height:100%;background-color:#000;opacity:0.5;}
                .fullserv_live .contentBox .btnClose{position:absolute;background: #000;top: -37px;right: 0px;padding: 6px;width: 34px;height: 34px;box-sizing: border-box;}
                .fullserv_live .contentBox .btnToday{top: -27px;right: 26px;padding:0 15px;height: 24px;line-height: 24px;background: #444;}
                .ly_btm_fixed .crdwrp{height: 181px;}
                @media all and (max-width: 1200px){
                    .fullserv_live .contentBox{width: 70%;}
                    .fullserv_live .contentBox iframe{width: 100% !important;}
                }
                @media all and (max-width: 768px){
                    .fullserv_live{z-index: 100;}
                    .fullserv_live .contentBox{width: 90%;}
                }
                @media all and (max-width: 440px){
                }
            </style>
            <script>
                (function(){
                    $('#fullserv_live .contentBox .btnClose').on('click', function(e){
                        e.preventDefault();
                        $('#fullserv_live').hide().removeClass('on');
                    });
                    $('#fullserv_live .dimBg').on('click', function(){
                        $('#fullserv_live .contentBox .btnClose').trigger('click');
                    });
                })();
              

            </script>
                <% end if %>
            <% end if %>
            <!-- // 국가직 7급 총평 유튜브 라이브-->

        <%end if %>
        <%end if %>






        <% if hcode = "army" then %>

            <!-- 군무원 설명회 유튜브 라이브-->
            <%if cdate(lo_now_date) < cdate("2021-06-23") then%>
               
            <div id="fullserv_live" class="layerPopup  fullserv_live" style="display: block;">
                <span class="dimBg">-</span>
                <div class="contentBox">
                    <div class="vdo_wrap">
                        <div class="vdo">
                            <iframe width="1080" height="610" src="https://www.youtube.com/embed/QiJCpzhttXM?autoplay=1&mute=1" title="군무원 설명회 유튜브 라이브" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        </div>
                    </div>
                    <button class="btnClose"><img src="https://img.megagong.net/c/gongssel/main/pop_close.png" alt="닫기"></button>
                </div>
            </div>

            <style>
                .fullserv_live{z-index: 102;}
                .fullserv_live .contentBox{position: absolute;left: 50%;top: 50%;transform: translate(-50%,-50%);z-index: 3;width: 1080px;}
                .fullserv_live .contentBox .vdo_wrap{position: relative;z-index: 1;cursor: pointer;padding-bottom: 56%;background: #222;overflow: hidden;}
                .fullserv_live .contentBox .vdo_wrap .vdo{width: 100% !important;height: 100% !important;position: absolute;width: 100%;height: 100%;}
                .fullserv_live .contentBox iframe{position: absolute;top: 0;left: 0;width: 100%;height: 100%;}
                .fullserv_live .dimBg{position:absolute;top:0;left:0;width:100%;height:100%;background-color:#000;opacity:0.5;}
                .fullserv_live .contentBox .btnClose{position:absolute;background: #000;top: -37px;right: 0px;padding: 6px;width: 34px;height: 34px;box-sizing: border-box;}
                .fullserv_live .contentBox .btnToday{top: -27px;right: 26px;padding:0 15px;height: 24px;line-height: 24px;background: #444;}
                .ly_btm_fixed .crdwrp{height: 181px;}
                @media all and (max-width: 1200px){
                    .fullserv_live .contentBox{width: 70%;}
                    .fullserv_live .contentBox iframe{width: 100% !important;}
                }
                @media all and (max-width: 768px){
                    .fullserv_live{z-index: 100;}
                    .fullserv_live .contentBox{width: 90%;}
                }
                @media all and (max-width: 440px){
                }
            </style>
            <script>
                (function(){
                    $('#fullserv_live .contentBox .btnClose').on('click', function(e){
                        e.preventDefault();
                        $('#fullserv_live').hide().removeClass('on');
                    });
                    $('#fullserv_live .dimBg').on('click', function(){
                        $('#fullserv_live .contentBox .btnClose').trigger('click');
                    });
                })();
              

            </script>
            <% end if %>
            <!-- // 군무원 설명회 유튜브 라이브-->

        <%end if %>



    <% if hcode = "gongssel" then %>
    <%if 1=2 then%>
    <!-- 공셀 코로나 방역 배너 -->
    <div id="layer" class="dim-layer gongssel_co">
        <script type="text/javascript">
            $(document).ready(function () {
                /* --- 코로나 방역소독일 슬라이더--- */
            $('.pop_co_slider').slick({
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    infinite: true,
                    arrow: false,
                    autoplaySpeed: 3000,
                    autoplay: true,
                    vertical: true,
                });
            });
        </script>
        <div class="">
            <h3><img src="<%=img_main%>/m/2020/0827_gongssel/pop_top_head.jpg" alt="방역소독일 배너"></h3>
            <div class="cont">
                <%
                strSql = ""
                strSql = strSql & "SELECT	top 1  CONVERT(VARCHAR(10),AC_REG_DT,102) AS REG_DT, AC_REG_DT   "
                strSql = strSql & "FROM 	MEGARMS.DBO.MG_ANTI_CORONA WITH(NOLOCK) "
                strSql = strSql & "WHERE 	AC_DEL_YN = 'N' "
                strSql = strSql & "ORDER BY AC_REG_DT DESC "


                If SelectSQL(strSql, sRs) = True Then
                    AC_REG_DT					= sRs(0,0)
                    ORI_REG_DT				= sRs(1,0)
                    End IF
                
                %>
                <p class="new_date_txt">* 최종 업데이트 : <span><%=AC_REG_DT%></span> 기준</p>
                <div class="txt">
                    <img src="<%=img_main%>/m/2020/0827_gongssel/pop_tit.jpg" alt="방역소독일 배너">
                    <ul class="pop_co_slider">
                    <%
        
                            arrAntiDate = null
                            strSql = ""
                            strSql = strSql & "SELECT	TOP 58 AC_NUM, CONVERT(VARCHAR(10),AC_ANTI_DATE,21) AS AC_ANTI_DATE,AC_ANTI_DATE   "
                            strSql = strSql & "FROM 	MEGARMS.DBO.MG_ANTI_CORONA WITH(NOLOCK) "
                            strSql = strSql & "WHERE 	AC_DEL_YN = 'N' "
                            strSql = strSql & "ORDER BY AC_NUM DESC "
                            Set objRs = DBexec(strSql, "study")
                            If not objRs.Eof Then
                                arrAntiDate = objRs.GetRows()
                            Else
                                    arrAntiDate = ""
                            End if
                            RSClose(objRs)
                            
                            if isarray(arrAntiDate) = true then 
                                for n = 0 to ubound(arrAntiDate,2)
                                    AC_NUM = arrAntiDate(0,n)
                                    AC_ANTI_DATE = arrAntiDate(1,n)
                                    ORI_ANTI_DATE = arrAntiDate(2,n)
                                    if len(AC_NUM) < 2 then 
                                    AC_NUM = right("0"&AC_NUM,2)
                                    end if
                                    antidate = CDate(AC_ANTI_DATE)
                                    
                                    ANTI_DATE = month(ORI_ANTI_DATE)&"월 "&right("0"&day(ORI_ANTI_DATE),2)&"일("&fncWeekDay(antidate)&") "&right("0"&hour(ORI_ANTI_DATE),2)&":"&right("0"&minute(ORI_ANTI_DATE),2)
                        %>
                            <li><span>[<%=AC_NUM%>차]</span> <%=ANTI_DATE%></li>
                        <%
                                next
                            end if 
                        %> 
                    </ul>
                </div>
                <p><img src="<%=img_main%>/m/2020/0827_gongssel/pop_img.jpg" alt="방역소독일 배너"></p>
            </div>
            <p class="btxt">
                <img src="<%=img_main%>/m/2020/0827_gongssel/pop_btxt.jpg" alt="방역소독일 배너">
                <a href="/c/gongssel/help/notice/view.asp?idx=2290" title="자세히보기">자세히보기</a>
            </p>
        </div>

        <button onclick="clear_gongCo($(this));" class="btnClose2"><img src="<%=img_main%>/m/2020/0827_gongssel/pop_close.jpg" alt="팝업 닫기"></button>
        <!-- <button onclick="fncBrandOffDay2();" id="campus_today" class="btnToday2">오늘 하루 닫기</button> -->
        
        <style type="text/css">
            .gongssel_co {display: block !important;width: 720px !important;height: auto !important;margin: 0 auto;left: 50% !important;top: 50% !important;transform: translate(-50%,-50%);-webkit-transform: translate(-50%,-50%);border: 1px solid #262d49;opacity: 0; z-index: 0 !important;}
            .gongssel_co.on{opacity: 1;display: block !important; z-index: 5 !important;}
            .gongssel_co h3{text-align: center;background: #262d49;}
            .gongssel_co .cont{padding: 25px 29px 30px;background:#fff;}
            .gongssel_co .cont .new_date_txt{display: block;color:#888888;font-size:12px;text-align:right;margin-bottom: 5px;}
            .gongssel_co .cont .txt{position: relative;margin-bottom: 15px;}
            .gongssel_co .cont .txt .slick-arrow{display:none !important;}
            .gongssel_co .cont .txt ul{position: absolute;width: 230px;/* height: 18px; */right: 65px;top: 6px;overflow: hidden;}
            .gongssel_co .cont .txt ul li{color: #0082ff;font-size: 18px;margin: 2px auto;}
            .gongssel_co .btxt{position: relative;display: block;float: none;text-align: center;margin-bottom:0;margin-top: -1px;padding: 14px 29px;background: #cecece;}
            .gongssel_co .btxt a{position: absolute;font-size:0;width: 18%;height: 50%;right: 4%;}
            .gongssel_co .btnClose2 {position: absolute;top: -28px;right: 0;background: none;padding:0;width:25px;height:26px;box-sizing: border-box;}
            .gongssel_co .btnClose2 img {max-width: 100%;}
            /* .gongssel_co .btnToday2 {position: absolute;top: -30px;right: 42px;padding: 0 15px;height: 30px;line-height: 30px;background: #000;color: #fff;font-weight: bold;} */
            
            @media (max-width: 1200px){
                .gongssel_co{opacity: 0; z-index: 0 !important;}
                .gongssel_co.on{opacity: 0; z-index: 0 !important;}
            }
        </style>
    </div>
    <!-- // 공셀 코로나 방역 배너 -->
    <%end if%> 
    <%end if%>

    <!-- 공셀,소방학원 메인 배너 클릭 시 영상 재생 -->
    <% if hcode = "gongssel" or hcode = "sobangcampus" then %>
    <div id="layer" class="dim-layer">
        <div class="dimBg"></div>
        <div id="modalLayer" class="pop-layer">
            <div class="pop-container">
                <div class="layer-content">
                </div>

            </div>
            <a href="javascript:;" id="close" class="_layer-close layer-close-top">
                <img src="https://img.megagong.net/gong/common/icon_close_w.png" alt="팝업 닫기">
            </a>
        </div>
    </div>
    
    <%end if%>
    <!-- 공셀,소방학원 메인 배너 클릭 시 영상 재생 -->

    <!-- 안성 메인 영상 재생 -->
    <% if hcode = "ansung" then %>
        <% if 1=12345 then %> <!-- 2021-02-08 off -->
        <div id="layer" class="dim-layer ansung" style="display:none">
            <div class="dimBg"></div>
            <div id="modalLayer" class="pop-layer">
                <div class="pop-container">
                    <div class="layer-content">
                        <!--<iframe src='https://tv.naver.com/embed/14942245?autoPlay=true' id="nkvod" frameborder='no' scrolling='no' marginwidth='0' marginheight='0' WIDTH='544' HEIGHT='306' allow='autoplay' allowfullscreen></iframe>-->
                    </div>
                </div>
                <button onclick="clearBrand_main2($(this));" class="btnClose2"><img src="<%=img_main%>/gong/common/icon_close_w.png" alt="팝업 닫기"></button>
                <button onclick="fncBrandOffDay2();" id="campus_today" class="btnToday2">오늘 하루 닫기</button>
            </div>
        </div>
        <%end if%>
    <%end if%>
    <!-- 안성 메인 영상 재생 -->
    <style>
        #layer {display: none;}
        #layer.ansung{display: block;z-index: 105;}
        .dim-layer {position: fixed;top: 0;left: 0;width: 100%;height: 100%;z-index: 5;}
        .dimBg {position: absolute;left: 0;top: 0;width: 100%;height: 100%;background: #000;opacity: 0.7;cursor: pointer;}
        .pop-layer {display: block;width: 1080px;height: 608px;position: absolute;top: 50%;left: 50%;z-index: 10;margin-left: -540px;margin-top: -304px;}
        .pop-container,.layer-content {height: 100%;}
        .pop-container:after {display: block;clear: both;content: '';}
        .layer-close-top {position: absolute;right: 0;top: -9vw;display: block;margin-left: auto;}
        .layer-close-top img {max-width: 100%;}
        .layer-content img,.layer-content iframe {width: 100%;height: 100%;}
        .btnClose2 {position: absolute;bottom: -30px;right: 0;background: #000;padding: 3px;width: 30px;height: 30px;box-sizing: border-box;}
        .btnToday2{position:absolute;bottom:-30px;right:31px;padding:0 15px;height:30px;line-height:30px;background:#000;color:#d8d8d8;font-weight:bold;}
        #close {padding: 7px;width: 30px;height: 30px;background: #000;position: absolute;right: 0;top: 100%;box-sizing: border-box;display: block;}
        @media (max-width: 1200px) {
            .pop-layer {width: 96%;height: 60vw;margin-left: -48%;margin-top: -30vw;}
        }
        </style>
<%end if%>

<script type="text/javascript">
    /* --- 소방학원 팝업 열기 --- */
    function fncBrand_on2() {
        $("#layer").show();
        $("#layer .layer-content").html('<iframe src="https://tv.naver.com/embed/13926452?autoPlay=true" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>');
    }

    /* --- 공무원학원 팝업 열기 --- */
    function fncBrand_on3() {
        $("#layer").show();
        $("#layer .layer-content").html('<iframe src="https://tv.naver.com/embed/13926496?autoPlay=true" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>');
    }
 

    /* --- 안성 팝업 열기 --- */
    function fncBrand_on4() {
        $('.btnToday2').hide();
        $("#layer.ansung").show();
        $("#layer.ansung .layer-content").html('<iframe src="https://tv.naver.com/embed/14942245?autoPlay=true" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>');
    } 
    
    /* --- 안성 팝업 열기2 --- */
    function fncBrand_on5() {
        $('.btnToday2').hide();
        $("#layer.ansung").show();
        $("#layer.ansung .layer-content").html('<iframe src="https://tv.naver.com/embed/14942344?autoPlay=true" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>');
    } 

   
    // 팝업 닫기
    $('#close, #layer .dimBg, .layerPopup .dimBg, btnClose2, .layerPopup.gongNewrule .dimBg').on('click', function () {
        $("#layer, .layerPopup.nan_gonglayer, .layerPopup.gongNewrule").hide();
        $('#layer.ansung').hide();
        $("#layer .layer-content").html('');
    });

    
    
    // 공셀 메인 배너 팝업 닫기
    function clearBrand_main() {
        $(".layerPopup.nan_gonglayer").hide();
        $("#layer .layer-content").html('');
    }
    function clearBrand_main2() {
        $("#layer").hide();
        $("#layer .layer-content").html('');
    }
    function clearBrand_main3() {
        $(".layerPopup.gongNewrule").hide();
    }

    function clear_gongCo() {
        $("#layer.gongssel_co").removeClass('on');
    }
    
    
    /* ---  팝업 하루 닫기 --- */
    function fncBrandOffDay() {
        setCookie("mainNk", "close", 1);
        if ($(".layerPopup.nan_gonglayer").css("display") == "block") {
            clearBrand_main();
        }
    }

    function fncBrandOffDay2() {
        setCookie("ansungMain", "close", 1);
        if ($("#layer").css("display") == "block") {
            clearBrand_main2();
        }
    }

    function fncBrandOffDay3() {
        setCookie("mainRule", "close", 1);
        if ($(".layerPopup.gongNewrule").css("display") == "block") {
            clearBrand_main3();
        }
    }
    
    <% if fncRequestCookie("ansungMain") = "" then%>
        fncBrand_on4();
        $('.btnToday2').show();
    <%end if%>
</script>
<!-- // 메인 탑배너 -->


<% If instr(1, NowUrl, "/megagong.asp") > 0 Then %>
<% if hcode = "gongssel" then %>
<%If cdate(lo_now_date) < cdate("2021-05-25") then%>
<% If fncRequestCookie("main_gongssel_Dim") = "" then %>
<!-- 공셀 메가공무원 학원 7월 시작반 사/전/예/약 event -->
<div id="layer_popup" class="eventPop">
    <div class="popup">
        <div class="btn_box">
            <button onclick="fncOffDay_popup();" class="btnToday">오늘 하루 보지 않기</button>
            <button onclick="clear_popup();" class="btnClose">닫기</button>
        </div>
        <div>
            <img src="<%=img_main%>/m/2021/0518_event/main_popup.png" alt="공셀 메가공무원 학원 7월 시작반 사/전/예/약 event" usemap="#imgMap">
            <map id="imgMap" name="imgMap">
                <area shape="rect" coords="277,387,592,426" alt="지금 바로 사전예약 신청하기>" href="https://docs.google.com/forms/d/1rv-m-erLeRrvfopM08E7506IRMePbR4dgFEoKMZSdEI/viewform?edit_requested=true" target="_blank" />
            </map>
        </div>
    </div>
    <div class="dim">bg</div>
</div>
<!-- //공셀 메가공무원 학원 7월 시작반 사/전/예/약 event -->



<!-- 쿠키:하루동안열지않기/닫기 -->
<script type="text/javascript">
    function fncOffDay_popup() {
        setCookie("main_gongssel_Dim", "close", 1);
        if ($("#layer_popup").css("display") == "block") {
            $("#layer_popup").hide();
        }
    }
    function clear_popup() {
        if ($("#layer_popup").css("display") == "block") {
            $("#layer_popup").hide();
        }
    }
    $('#layer_popup .dim').on('click', function () {
        clear_popup();
    });   
</script>
<style>
    #layer_popup { position:fixed; top:0; left:0; width:100%; height:100%; z-index:200; }
    #layer_popup > .popup { position:absolute; top:50%; left:50%; transform:translate(-50%, -50%); z-index:5; }
    .btn_box { text-align:right; width:auto; overflow:hidden; margin-bottom:5px; }
    .btn_box button { display:inline-block; vertical-align:top; margin-left:1px; border:1px solid #bfbfbf; color:#fff; font-size:12px; padding:3px; }
    #layer_popup .dim { position:fixed; top:0; left:0; width:100%; height:100%; background:rgba(0,0,0,.7); z-index:3; font-size:0; }
    @media (max-width:768px) {
        #layer_popup { display:none; }
    }
</style>

<%end if%> 
<%end if%>
<%end if%>
<%end if%>