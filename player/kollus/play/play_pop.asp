<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<!-- #include virtual = "/Player/kollus/common/inc/common_inc.asp" -->
<!-- #include virtual = "/Player/kollus/common/jwt/JSON_2.0.4.asp" -->
<!-- #include virtual = "/Player/kollus/common/jwt/JSON_UTIL_0.1.1.asp" -->
<!-- #include virtual = "/Player/kollus/common/set/play_para.asp" -->
<!-- #include virtual = "/Player/kollus/common/set/play_path.asp" -->
<!-- #include virtual = "/Player/kollus/common/set/play_size.asp" -->
<!-- #include virtual = "/Player/kollus/common/set/play_set.asp" -->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
    <meta http-equiv="x-ua-compatible" content="IE=edge" />
    <title><%=h_tit %></title>
    <link href="<%=img_main %>/m/common/logo/gongcampus.png" type="image/x-icon" rel="shortcut icon">
    <!--[if lt IE 9]>
    <script type="text/javascript" src="/common/js/jQuery/jquery-1.12.1.min.js"></script>
    <![endif]-->
    <!--[if gte IE 9]><!-->
    <script type="text/javascript" src="/common/js/jQuery/jquery-3.3.1.min.js"></script>
    <!--<![endif]-->
    <script src="/common/js/jQuery/jquery-migrate-1.4.1.min.js"></script>

    <script type="text/javascript" src="/Player/kollus/common/js/kollus.videogateway-controller.min.js"></script>
    <link type="text/css" href="/Player/css/player_2011.css" rel="stylesheet" />
    <!-- #include virtual = "Player/css/inc_css_player2016.asp"-->
    <script type="text/javascript">
        //플레이어구분
        var pk = "<%=PlayerKbn %>";
        var dk = "<%=DNG_KBN %>";

        //플레이어아이디
        var pi = "<%=pcd %>";

        //플레이어재생구분
        var pl = "<%=PlayerLoc %>";

        //플레이어사이즈
        var popw = "<%=popw %>";
        var poph = "<%=poph %>";

        //사용자해상도
        var uw = "<%=UseWidth %>";
        var uh = "<%=UseHeight %>";

        //영상비율
        var vw = "<%=vw %>";
        var vh = "<%=vh %>";

        //자동재생여부
        var ap = "<%=AutoPlay %>";
        if (ap == "") { ap = "N"; }

        //학년
        var eg = "<%=exam_grade %>";

        //탭영역
        var tw = 278;
        if (pk == "H" || pk == "S") {
            tw = 410;
        }

        //사용구분
        var pu = "<%=PlayerUse %>";


        function fncPlayPositon(s) {
            var f = $(".pframe:eq(0)").attr("id");
            eval(f + ".fncSetPlayPositon(" + s + ")");
        }

        function fncCurrentPosition() {
            try {
                var f = $(".pframe:eq(0)").attr("id");
                var gp = eval(f + ".getCurrentPosition()") / 1000;
                return gp;
            } catch (e) { }
        }

        //영상사이즈
        var pw = "";
        var ph = "";
        function fncPlayerResize() {
            pw = jQuery("#player_obj").width();
            ph = parseInt((pw * (vh / vw)));
            $("#video").height($(window).height() - 40);

            if (pk == "M") {
                $("#video").height($(window).height() - 54);
            }

            if (pk == "S") {
                $("#video").height($(window).height() - 164);
            }

            if (pk == "H") {
                $("#divTabContent").css("height", $(window).height() - 85);
            } else {
                $("#divTabContent").css("height", $(window).height() - 58);
            }
        }
    </script>
    <script type="text/javascript">
        //탭오프여부
        var ptoff = "<%=PlayerTabCtrl %>";

        function fncPlayerTab() {
            if ($("#divTabControl").attr("src").indexOf("_on.gif") > 0) {
                window.resizeBy(tw, 0);
                $("#right_section").show();
                $("#player_section").css("margin-right", (tw + 6));
                //$("#divTabControl").attr("src", "<%=img_player%>/player_2011/u_closeTab.gif");
                $("#divTabControl").attr("src", "<%=img_main%>/gong/common/u_closeTab.gif");
            } else {
                try {
                    if (browser.isEdge) {
                        window.resizeTo($(window).width() - 276, $(window).height() + 45);
                    } else {
                        window.resizeBy((tw * -1), 0);
                    }
                } catch (e) {
                    window.resizeBy((tw * -1), 0);
                }
                $("#right_section").hide();
                $("#player_section").css("margin-right", 6);
                //$("#divTabControl").attr("src", "<%=img_player%>/player_2011/u_closeTab_on.gif");
                $("#divTabControl").attr("src", "<%=img_main%>/gong/common/u_closeTab_on.gif");
            }
            fncPlayerResize();
            setTimeout("fncPlayerResize()", 1000);
        }

        $(window).resize(function () {
            fncPlayerResize();
        });

        jQuery(document).ready(function () {
            try {

                if (pl != "P") {
                    if (ptoff == "OFF") {
                        $("#player_section").css("padding", "0px");
                        $("#player_section").css("background", "none");
                        $("#player_section").css("margin-right", 0);
                        $("#line_btn").remove();
                        $("#right_section").remove();
                    }
                    window.resizeTo(popw, poph);
                }
                fncPlayerResize();
            } catch (e) {
            }
        });


    </script>


<script type="text/javascript">
    var bind_event;
    var add_event_message;
    var controller;
    var pos = 0;

    function fncGetPlayPosition() {
        return controller.get_progress().position;
    }

    function fncSetPlayPositon(sec) {
        controller.play(sec);
    }

    $(document).ready(function () {
        try {
            bind_event = function (id, listener) {
                document.getElementById(id).onclick = listener;
            };

            add_event_message = function (message) {
                var event_message = document.getElementById('event');
                event_message.value += message + "\n";
            };

            controller = new Kollus.VideogatewayController({
                target_window: document.getElementById(pi).contentWindow
            });

            //여기서부터 이벤트 리스너를 등록하거나, 웹페이지 Element에 메소드를 bind하면 됩니다.
            // video playback event binding

            controller
                .on('progress', function (percent, position, duration) {
                    pos = position;
                });

        } catch (e) {
            //Videogateweay Controller Library는 window.postM essage API를 이용하기 때문에
            //해당 기능을 지원하지 않는 웹브라우져에서는 동작하지 않습니다.
            //이 부분에 적절한 fail-over 코드를 추가하여 주십시요.

            if (e instanceof KollusPostMessageException && e.code === -99) {
                // browser does not support window.postMessage.
                // script won't work under this condition.
                alert('You can`t use video playback control.');
            } else {
                // some other errors
                //console.log(e.message);
            }
        }
    });
</script>
</head>
<body>
	<div id="container" <% if PlayerKbn = "H" Or PlayerKbn = "S" then %>class="teachingNote teachingNote02"<% end if %>>
		<div id="player_section" >
            <!-- /control_area -->
            <div id="divControlArea" >
                <div id="player_obj" style="padding-top:38px;" >
                    <div id="video">
                        <!-- #include virtual = "/Player/kollus/common/set/play_area.asp" -->
                    </div>
                    <% if PlayerKbn = "S" Then %>
                        <!-- #include virtual = "/Player/kollus/admin/edit_info.asp"-->
                    <% Else %>
                        <!-- #include virtual = "/Player/kollus/common/set/play_info.asp"-->
                    <% End if %>
                </div>
			</div>

            <div id="line_btn" class="line_btn"><img id="divTabControl" src="<%=img_main%>/gong/common/u_closeTab.gif" alt="접기" onclick="fncPlayerTab()" /></div>
			<!-- /control_area -->
        </div>
		<div id="right_section" style="background:none;<% if PlayerTabCtrl = "OFF" Then %>display:none;<% End if %>" >
			<% if PlayerLoc = "H" Then %>
            <!-- /tab_area -->
            <% if PlayerKbn = "S" Then %>
                <!-- include virtual = "/Player/kollus/admin/edit_tab.asp"-->
            <% Else %>
                <!-- #include virtual = "/Player/kollus/tab/tab_inc.asp"-->
            <% End if %>
		    <!-- /tab_area -->
            <% End if %>
        </div>
    </div>
</body>

</html>
