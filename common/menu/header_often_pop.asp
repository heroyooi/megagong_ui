
<!--  설연휴 교재 배송 & 학습 지원 센터 운영 안내 배너 -->
<% If instr(1, NowUrl, "/megagong.asp") > 0 Then %>
    <%if CDate(lo_now_date) >= CDate("2022-01-26") And CDate(lo_now_date) < CDate("2022-02-03")  Then%>
        <% If fncRequestCookie("mainNewyear") = "" then %>
            <% if hcode = "sobang" Or hcode = "gong" Or hcode = "army" Then %>
            <style type="text/css">
                .newyear_pop{position: absolute;top: 225px;left: 50%;margin: 0 0 0 -540px;z-index: 4;}
                .newyear_pop .cont{position: relative;z-index: 1;}
                .newyear_pop .cont .tit{display:none}
                .newyear_pop .close_btn{position: absolute;top: -25px;right: 0;padding: 0;width: 26px;background: #000 url(https://img.megagong.net/m/2020/0917_jeonhangil/pop_x.png) no-repeat center center;height: 27px;box-sizing: border-box;font-size: 0;}
                .newyear_pop .dayclose_btn{position: absolute;top: -25px;right: 28px;background: #000;width: 105px;height: 26px;line-height: 26px;box-sizing: border-box;font-size: 12px;color: #f3f3f3;}
                .newyear_pop .close_btn img{width: 100%}
                .newyear_pop .dim{font-size: 0;}
                @media (max-width: 1200px){

                    .newyear_pop{position: fixed;width:100%;height: 100%;top:0;left: 0;margin: 0;}
                    .newyear_pop .cont{position: absolute;top: 50%;left: 50%;-webkit-transform: translate(-50%,-50%);-moz-transform: translate(-50%,-50%);transform: translate(-50%,-50%);}
                    .newyear_pop .dim{content: "";position: absolute;top:0;left:0;width: 100%;height: 100%;background-color: #000;opacity: 0.7;z-index: 1;}
                    .newyear_pop .cont .tit{display:block;background: #fff;padding: 7px 0 7px 10px;font-size: 14px;margin: 0 0 3px;}
                    .newyear_pop .close_btn{right: 0;top: -29px;}
                    .newyear_pop .dayclose_btn{top: -28px;}
                    .newyear_pop .cont > img{/* width:100%; */max-width: 100%;}
                }
                @media (max-width: 640px){
                    .newyear_pop{width: 100%;}
                    .newyear_pop .cont{max-width: 100%;text-align:center;width: 80%;}
                    .newyear_pop .cont .tit{text-align:left}
                    .newyear_pop .cont > img{max-width: 100%}
                }
                @media (orientation: portrait) {
                
                }

                @media (orientation: landscape) {
                    .newyear_pop .cont{max-height: 100%;height: 80%;}
                    .newyear_pop .cont > img{max-height: 100%;}
                    .newyear_pop .close_btn{}
                    .newyear_pop .dayclose_btn{}
                }
                </style>
            <div id="newyear" class="newyear_pop">
                <span class="dim">-</span>
                <div class="cont">
                    <img src="<%=img_main%>/m/2022/0125_newyear/main_pop.png" usemap="#link_notice">
                    
                    <map name="link_notice" id="link_notice"> 
                        <area shape="rect" coords="121,322,337,376" href="/book/notice/view.asp?idx=3546" title="설 연휴 교재 배송 & 학습 지원 센터 운영 안내" target="_blank"  />
                        <area shape="rect" coords="117,568,340,628" href="/help/qna/write.asp" title="학습지원센터 바로가기" target="_blank"  />
                    </map> 

                    <button onclick="clearThnks_main($(this));" class="close_btn">닫기</button>
                    <button onclick="fncNewyearOffDay();" class="dayclose_btn">오늘 하루 닫기</button>
                </div>

            </div>
            <script type="text/javascript">
            /* --- 설배송 팝업 --- */
            function fncNewyearOffDay(event) {
                setCookie("mainNewyear", "close", 1);
                if ($("#newyear").css("display") == "block") {
                    $("#newyear").hide();
                    clearThnks_main();
                }
            }
            // 팝업 닫기
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
<!-- // 설연휴 교재 배송 & 학습 지원 센터 운영 안내 배너 -->




<!-- 추석연휴 교재 배송 & 학습 지원 센터 운영 안내 배너 -->
<%If 1=2 then%>
    <% if instr(1, NowUrl, "/megagong.asp" ) > 0 Then %>
        <% if hcode = "gong" or hcode = "sobang" or hcode = "army"  then%>
        <div class="pop_chuseok">
                <img src="<%=img_main%>/m/2021/0914_chuseok/pop_pc.jpg" alt="추석연휴 교재 배송 & 학습 지원 센터 운영 안내" class="pc" usemap="#pc_link"/>
                <img src="<%=img_main%>/m/2021/0914_chuseok/pop_mo.jpg" alt="추석연휴 교재 배송 & 학습 지원 센터 운영 안내" class="mo" usemap="#mo_link"/>
                
                <map name="pc_link" id="pc_link">
                    <area shape="rect" alt="자세히보기" coords="125,273,330,305" target="_blank" href="/help/notice/view.asp?idx=3334&cate=02&searchkey=&searchword=&page=1" />
                    <area shape="rect" alt="" coords="125,500,330,530" target="_blank" href="/help/qna/write.asp" title="학습지원센터 바로가기">
                </map>
                <map name="mo_link" id="mo_link">
                    <area shape="rect" alt="자세히보기" coords="210,340,435,380" target="_blank" href="/help/notice/view.asp?idx=3334&cate=02&searchkey=&searchword=&page=1" />
                    <area shape="rect" alt="" coords="210,640,435,680" target="_blank" href="/help/qna/write.asp" title="학습지원센터 바로가기">
                </map>
                
            <div>
                <button class="btnToday">오늘 하루 닫기</button>
                <button class="btnClose"><img src="<%=img_main%>/c/gongssel/main/pop_close.png" alt="닫기"/></button>
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
<!-- // 추석연휴 교재 배송 & 학습 지원 센터 운영 안내 배너 -->