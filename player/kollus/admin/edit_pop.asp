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
    <title><%=window_title %></title>
    <script type="text/javascript" src="/common/js/jquery/jquery-latest_header.js"></script>
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
                $("#divTabControl").attr("src", "<%=img_player%>/player_2011/u_closeTab.gif");
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
                $("#divTabControl").attr("src", "<%=img_player%>/player_2011/u_closeTab_on.gif");
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

        function fncLenChk(txtId, MaxLen) {
            if (document.getElementById(txtId).value.length > MaxLen) {
                alert(MaxLen + "자까지만 작성하실 수 있습니다.");
                var temp = document.getElementById(txtId).value;
                document.getElementById(txtId).value = temp.substring(0, (MaxLen - 1));
                document.getElementById(txtId).focus();
                return;
            }
        }

    </script>

    <script type="text/javascript" for="Player" event="onProgress(_percent, _position, _duration)">
        Kollus_onProgress(_percent, _position, _duration);
    </script>
    <script type="text/javascript" for="Player" event="onPlayTime(_play)">
        Kollus_onProgress(0, _play, 0);
    </script>
    <script type="text/javascript" for="Player" event="onSpeed(_speed)">
        Kollus_onSpeed(_speed);
    </script>
    <script type="text/javascript" for="Player" event="onVolume(_volume)">
        Kollus_onVolume(_volume);
    </script>
    <script type="text/javascript" for="Player" event="onStatus(_state)">
        Kollus_onStatus(_state);
    </script>
    <script type="text/javascript" for="Player" event="onErrorMsg(_err)">
        Kollus_onErrorMsg(_err);
    </script>
    <script type="text/javascript">
        var percent = 0;
        var position = 0;
        var duration = 0;

        function Kollus_onProgress(_percent, _position, _duration) {
            percent = _percent;
            position = _position;
            duration = _duration;
        }
        function Kollus_onSpeed(_speed) {
            //var vtextDiv = document.getElementById("PlaySpeedDiv");
            //vtextDiv.innerText = "Speed event = " + _speed;
        }
        function Kollus_onVolume(_volume) {
            //var vtextDiv = document.getElementById("VolumeStatusDiv");
            //vtextDiv.innerText = "Volume = " + _volume;
        }
        function Kollus_onErrorMsg(_err) {
            //var vtextDiv = document.getElementById("VolumeStatusDiv");
            //vtextDiv.innerText = "Error = " + _err;
        }
        function Kollus_onStatus(_state) {
            //var vtextDiv = document.getElementById("StatusDiv");
            //switch (_state) {
            //    case 1:
            //        vtextDiv.innerText = "OPEN";
            //        break;
            //    case 2:
            //        vtextDiv.innerText = "READY";
            //        break;
            //    case 3:
            //        vtextDiv.innerText = "PLAY";
            //        break;
            //    case 4:
            //        vtextDiv.innerText = "PAUSE";
            //        break;
            //    case 5:
            //        vtextDiv.innerText = "STOP";
            //        break;
            //    case 6:
            //        vtextDiv.innerText = "COMPLETE";
            //        break;
            //    case 7:
            //        vtextDiv.innerText = "SCREEN";
            //        break;
            //    case 8:
            //        vtextDiv.innerText = "FULL SCREEN";
            //        break;
            //    case 12:
            //        var top = Player.getTopMost();
            //        vtextDiv.innerText = "TOP MOST : " + top;
            //        break;
            //    case 13:
            //        var Brightness = Player.getBrightness();
            //        var Contrast = Player.getContrast();
            //        var Saturation = Player.getSaturation();
            //        vtextDiv.innerText = "COLOR (" + Brightness + ", " + Contrast + ", " + Saturation + ")";
            //        break;
            //    case 14:
            //        var step = Player.getJumpstep();
            //        vtextDiv.innerText = "JUMP STEP " + step;
            //        break;
            //    case 15:
            //        vtextDiv.innerText = "LOADED";
            //        //Player.setSeek(10);
            //        break;
            //
            //}
        }
    </script>
    <script type="text/javascript">
        var Player = "";
        var subtitles = "";
        window.onload = function () {
            Player = document.getElementById('Player');

            window.close = function () {
                alert('test');
            };

            window.play = function () {
                Player.setPlay();
            };

            window.pause = function () {
                Player.setPause();
            };
            window.stop = function () {
                Player.setStop();
            }

            window.seek = function (sec) {
                Player.setSeek(sec);
            };

            window.fullScreen = function () {
                Player.setFullScreen();
            };

            window.setSpeed = function (speed) {
                Player.setSpeedAt(speed);
            };

            window.setVolume = function (volume) {
                Player.setVolumeAt(volume);
            };

            window.mute = function () {
                Player.setMute();
            };

            window.getVersion = function () {
                var version = Player.getVersion();
                var vtextDiv = document.getElementById("StatusDiv");
                vtextDiv.innerText = version;
            };

            window.getVolume = function () {
                var version = Player.getVolume();
                var vtextDiv = document.getElementById("StatusDiv");
                vtextDiv.innerText = "Volume : " + version;
            };

            window.getSpeed = function () {
                var version = Player.getSpeed();
                var vtextDiv = document.getElementById("StatusDiv");
                vtextDiv.innerText = "Speed : " + version;
            };

            window.getDetailInfoUrl = function () {
                var url = Player.getDetailInfoUrl();
                var vtextDiv = document.getElementById("DetailnfoUrl");
                vtextDiv.innerText = "DetailnfoUrl : " + url;
            };

            window.setBrightness = function () {
                var re = Player.setBrightness(-5);
                var vtextDiv = document.getElementById("DetailnfoUrl");
                vtextDiv.innerText = "setBrightness : " + re;
            };

            window.setContrast = function () {
                var re = Player.setContrast(35);
                var vtextDiv = document.getElementById("DetailnfoUrl");
                vtextDiv.innerText = "setContrast : " + re;
            };

            window.setSaturation = function () {
                var re = Player.setSaturation(-5);
                var vtextDiv = document.getElementById("DetailnfoUrl");
                vtextDiv.innerText = "setSaturation : " + re;
            };

            window.setTopMost = function () {
                Player.setTopMost(1);
            };

            window.getTopMost = function () {
                var re = Player.getTopMost();
                var vtextDiv = document.getElementById("DetailnfoUrl");
                vtextDiv.innerText = "TopMost : " + re;
            };

            window.setSize = function (_width, _height) {
                var pp = document.getElementById("Player");
                pp.width = _width;
                pp.height = _height;
            };

            window.showBar = function (_view) {
                Player.showBar(_view);
            };

            window.menuPopup = function (_view) {
                Player.menuPopup(_view);
            };

            window.setJumpstep = function (_view) {
                Player.setJumpstep(_view);
            };

            window.openMedia = function () {
                Player.openMediaUrl("http://v.kr.dev.kollus.com/i/AsohHzuS?a");
            };

            window.setSectionTime = function (_type) {
                Player.setSectionTime(_type, -1);
            };

            window.refreshbookmark = function (_type) {
                Player.refresh_bookmark();
            };

            window.getplayerid = function () {
                var url = Player.get_player_id();
                var vtextDiv = document.getElementById("DetailnfoUrl");
                vtextDiv.innerText = "player id : " + url;
            };
            window.getplayerhwid = function () {
                var url = Player.get_hardware_id();
                var vtextDiv = document.getElementById("DetailnfoUrl");
                vtextDiv.innerText = "hardward id : " + url;
            };

            window.setSubtitle = function (_view) {
                Player.setSubtitle(_view);
            };
            window.setShortKey = function (_view) {
                Player.setShortKey(_view);
            };
            window.screenshot = function () {
                Player.saveScreenShot();
            };
            window.get_video_info = function () {
                var url = Player.get_video_info();
                var vtextDiv = document.getElementById("DetailnfoUrl");
                vtextDiv.innerText = "DetailnfoUrl : " + url;
            };

            window.openSubtitle = function () {
                Player.openSubtitleUrl("E:/smi/time5min.vtt");
            };

            window.openSubtitleData = function () {
                Player.openSubtitleUrl("00:00:00.000 --> 00:01:00.000 line:100% position:100% align:start\r\n<font size=50 face=\"굴림\" color=\"#FFFFFF\">테스트\r\n줄바꿈</font>");
            };
            window.openSubtitleData2 = function () {
                Player.openSubtitleUrl("00:00:00.000 --> 00:01:00.000 line:0% position:0% align:start\r\n<font size=50 face=\"굴림\" color=\"#0000FF\">테스트\r\n줄바꿈</font>");
            };



            // 고정
            var VideoWidth = 0;
            var VideoHeight = 0;

            window.fncPrintSubtitle = function (x, y) {
                var jsontext = Player.get_video_info();
                var contact = JSON.parse(jsontext);

                VideoWidth = contact.width;
                VideoHeight = contact.height;

                var msg = document.getElementById("TextContent").value;
                var sSrcHour = document.getElementById("sSrcHour").value;
                var sSrcMinute = document.getElementById("sSrcMinute").value;
                var sSrcSecond = document.getElementById("sSrcSecond").value;
                var eSrcHour = document.getElementById("eSrcHour").value;
                var eSrcMinute = document.getElementById("eSrcMinute").value;
                var eSrcSecond = document.getElementById("eSrcSecond").value;
                var sTextFont = document.getElementById("sTextFont").value;
                var sTextSize = document.getElementById("sTextSize").value;
                var sTextColor = document.getElementById("sTextColor").value;
                var x = document.getElementById("txtMovPointX").value;
                var y = document.getElementById("txtMovPointY").value;

                if (x < 0) {
                    x = 0;
                }
                if (y < 0) {
                    y = 0;
                }
                if (x > VideoWidth) {
                    x = VideoWidth;
                }
                if (y > VideoHeight) {
                    y = VideoHeight;
                }

                var position = x / VideoWidth * 100;
                var line = y / VideoHeight * 100;

                if (TextContent != "") {
                    var vtt = sSrcHour + ":" + sSrcMinute + ":" + sSrcSecond + ".000 --> " + eSrcHour + ":" + eSrcMinute + ":" + eSrcSecond + ".000 line:" + line + " position:" + position + "% align:start\r" +
                    "<span style=\"font-size: " + sTextSize + "; font-family:'" + sTextFont + "'; color:#" + sTextColor + ";\"> " + msg + "</span>\r\n\r\n";
                    Player.openSubtitleUrl(vtt);
                }
            }

            window.fncMovePoint = function (x, y) {
                var MoveRng = parseInt(document.getElementById("sCoopRng").value);
                var nPointX = parseInt(document.getElementById("txtMovPointX").value);
                var nPointY = parseInt(document.getElementById("txtMovPointY").value);

                var CoopPointX = nPointX + (MoveRng * x);
                var CoopPointY = nPointY + (MoveRng * y);

                if (CoopPointX <= 0) { CoopPointX = 0 }
                if (CoopPointY <= 0) { CoopPointY = 0 }

                if (CoopPointX > VideoWidth) { CoopPointX = nPointX }
                if (CoopPointY > VideoHeight) { CoopPointY = nPointY }

                document.getElementById("txtMovPointX").value = CoopPointX
                document.getElementById("txtMovPointY").value = CoopPointY

                fncPrintSubtitle(CoopPointX, CoopPointY);
            }

            window.fncSetPoint = function (x, y) {
                var CentralX = parseInt(VideoWidth * (x / 4), 0);
                var CentralY = parseInt(VideoHeight * (y / 4), 0);

                if (CentralX <= 0) { CentralX = 0 }
                if (CentralY <= 0) { CentralY = 0 }

                document.getElementById("txtMovPointX").value = CentralX;
                document.getElementById("txtMovPointY").value = CentralY;

                fncPrintSubtitle(CentralX, CentralY);
            }

            window.fncPreview = function () {
                var nPointX = parseInt(document.getElementById("txtMovPointX").value);
                var nPointY = parseInt(document.getElementById("txtMovPointY").value);

                fncPrintSubtitle(nPointX, nPointY);
            }
        };
        function fncSubtitleSave(mode) {
            if (mode == "upd" || mode == "idxupd") {
                var ArrNo = document.getElementById("ArrNo").value;
                if (ArrNo == "") {
                    alert("정보를 확인해 주세요.");
                    return;
                }
            }

            var stt_h = parseInt(document.getElementById("sSrcHour").value * 3600);
            var stt_m = parseInt(document.getElementById("sSrcMinute").value * 60);
            var stt_s = parseInt(document.getElementById("sSrcSecond").value);

            var stt_time = stt_h + stt_m + stt_s

            if (mode != "idxins" && mode != "idxupd") {
                var end_h = parseInt(document.getElementById("eSrcHour").value * 3600);
                var end_m = parseInt(document.getElementById("eSrcMinute").value * 60);
                var end_s = parseInt(document.getElementById("eSrcSecond").value);

                var end_time = end_h + end_m + end_s

                var TextFont = document.getElementById("sTextFont").value;
                var TextSize = document.getElementById("sTextSize").value;
                var TextColor = document.getElementById("sTextColor").value;

                var revTextFont = TextColor.strreverse();
                var TextFontVal = eval("(0x" + revTextFont + ").toString(10)");

                var nPointX = parseInt(document.getElementById("txtMovPointX").value);
                var nPointY = parseInt(document.getElementById("txtMovPointY").value);

                if (end_time <= stt_time) {
                    alert('시간을 정확히 설정해 주세요.');
                    return;
                }
            }

            var TextContent = document.getElementById("TextContent").value;

            if (TextContent == "") {
                alert('내용을 입력해 주세요.');
                return;
            }

            TextContent = TextContent.replaceAll("\n", "<br>");
            TextContent = TextContent.replaceAll(",", ".");
            TextContent = TextContent.replaceAll(";", ":");
            TextContent = TextContent.replaceAll("\"", "`");
            TextContent = TextContent.replaceAll("\'", "`");

            TextContent = TextContent.replaceAll("#", "<shp>");
            TextContent = TextContent.replaceAll("&", "<and>");
            TextContent = TextContent.replaceAll("@", "<at>");
            TextContent = TextContent.replaceAll("+", "<plus>");

            var Subtitle;

            if (mode == "idxins" || mode == "idxupd") {
                Subtitle = stt_time + "," + TextContent

                $.post("index_set.asp", {
                    "mode": mode,
                    "ArrNo": ArrNo,
                    "LecCd": "<%=LEC_CD %>",
                    "Subtitle": escape(Subtitle)
                }, function (data) {
                    fncAxRequestResult(data);
                });

            } else {
                //DB용
                Subtitle = "C," + stt_time + "," + end_time + "," + TextContent + "," + TextFontVal + "," + TextSize + "," + TextFont + "," + nPointX + "," + nPointY + ",0,0,0"

                //Kollus용/////////////////////////////////////////////////////
                var sSrcHour = document.getElementById("sSrcHour").value;
                var sSrcMinute = document.getElementById("sSrcMinute").value;
                var sSrcSecond = document.getElementById("sSrcSecond").value;
                var eSrcHour = document.getElementById("eSrcHour").value;
                var eSrcMinute = document.getElementById("eSrcMinute").value;
                var eSrcSecond = document.getElementById("eSrcSecond").value;
                var sTextFont = document.getElementById("sTextFont").value;
                var sTextSize = document.getElementById("sTextSize").value;
                var sTextColor = document.getElementById("sTextColor").value;
                var x = document.getElementById("txtMovPointX").value;
                var y = document.getElementById("txtMovPointY").value;

                var jsontext = Player.get_video_info();
                var contact = JSON.parse(jsontext);

                VideoWidth = contact.width;
                VideoHeight = contact.height;


                var position = x / VideoWidth * 100;
                var line = y / VideoHeight * 100;

                var vtt = sSrcHour + ":" + sSrcMinute + ":" + sSrcSecond + ".000 --> " + eSrcHour + ":" + eSrcMinute + ":" + eSrcSecond + ".000 line:" + line + " position:" + position + "% align:start\r<span style=\"font-size: " + sTextSize + "; font-family:'" + sTextFont + "'; color:#" + sTextColor + ";\"> " + TextContent + "</span>\r\n\r\n";
                //Kollus용/////////////////////////////////////////////////////

                $.post("subtitle_set.asp", {
                    "mode": mode,
                    "ArrNo": ArrNo,
                    "LecCd": "<%=LEC_CD %>",
                    "Subtitle": escape(Subtitle),
                    "vtt": escape(vtt)
                }, function (data) {
                    fncAxRequestResult(data);
                });
            }
        }

        function fncEditCancle(mod) {
            document.getElementById("sSrcHour").value = 0;
            document.getElementById("sSrcMinute").value = 0;
            document.getElementById("sSrcSecond").value = 0;

            document.getElementById("eSrcHour").value = 0;
            document.getElementById("eSrcMinute").value = 0;
            document.getElementById("eSrcSecond").value = 0;

            if (Mode != "idxins" && Mode != "idxupd") {
                document.getElementById("sTextFont").value = "굴림";
                document.getElementById("sTextSize").value = 25;
                document.getElementById("sTextColor").value = "000000";

                document.getElementById("txtMovPointX").value = 0;
                document.getElementById("txtMovPointY").value = 0;

            }

            document.getElementById("TextContent").value = "";

            if (Mode == "upd") {
                document.getElementById("spanInsBtns").style.display = "block";
                document.getElementById("spanUpdBtns").style.display = "none";
            }
        }
        function upload() {
            //		 var form = $('frm')[0];
            var form_data = new FormData();
            form_data.append("access_token", $("#access_token").val());
            form_data.append("media_content_key", $("#media_content_key").val());
            form_data.append("name", "test");
            form_data.append("language_id", "2");
            form_data.append("vtt_string", $("textarea#txt_subtitles").val());
            if ($("#subtitle_id").val() == '') {
                $.ajax({
                    url: 'http://sample.videoclouds.net/mega/index.php',
                    processData: false,
                    contentType: false,
                    data: form_data,
                    type: 'POST',
                    dataType: 'json',
                    success: function (response) {
                        var subtitle_id = response.result.subtitle_id;
                        $("#subtitle_id").val(subtitle_id);
                    }
                });
            }
            else {
                form_data.append("subtitle_id", $("#subtitle_id").val());
                $.ajax({
                    url: 'http://sample.videoclouds.net/mega/index.php',
                    processData: false,
                    contentType: false,
                    data: form_data,
                    dataType: 'json',
                    type: 'POST',
                    success: function (result) {

                    }
                });
            }
        }

    </script>


<script type="text/javascript">

    var stim = "";
    var etim = "";
    var vTxt = "";
    var cPreviewChk = 1;

    // 초를 [분:초] 로 바꿔줌
    Number.prototype.convertMSFromSec = function () {

        var sec = this % 60; //60으로 나눈 몫을 sec로 설정
        var min = Math.floor(this / 60) % 60; //60으로 나누고.. 다시 60으로 나눈 나머지를 분으로..
        var hour = Math.floor(this / 60 / 60) % 60; //60으로 나누고.. 다시 60으로 나눈 나머지를 분으로..

        var sSrcSecond = document.getElementById("sSrcSecond")
        for (i = 0; i < sec; i++) {
            sSrcSecond.add(new Option(i, i));
        }

        if (hour < 10) hour = "0" + hour; //한자리면 앞에 0을 붙임
        if (sec < 10) sec = "0" + sec; //한자리면 앞에 0을 붙임
        if (min < 10) min = "0" + min;  //한자리면 앞에 0을 붙임

        return hour + ":" + min + ":" + sec;  //HH:MM:SS형식을 만듬

    }

    function fncTimeSet() {
        if (duration == 0) {
            setTimeout("fncTimeSet()", 1000);
        } else {
            fncTimeSetting(duration.convertMSFromSec());
        }
    }

    //문자열 역순으로 바꿔줌
    String.prototype.strreverse = function () { return this.match(/(.)/g).reverse().join('') };

    //textarea 엔터키처리용
    String.prototype.replaceAll = function (str1, str2) {

        var temp_str = "";
        var temp_trim = this.replace(/(^\s*)|(\s*$)/g, "");

        if (temp_trim && str1 != str2) {
            temp_str = temp_trim;
            while (temp_str.indexOf(str1) > -1) temp_str = temp_str.replace(str1, str2);
        }

        return temp_str;
    } 

    //숫자값에 따라 16진수 문자열 비교
    var hexArray = new Array("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F");

    //16진수 => 10진수
    function hexToDecimal(hex) {
        var h1 = hex.toUpperCase();
        var h2 = 0;

        for (var i = 0; i < hexArray.length; i++) {
            if (h1 == hexArray[i]) return i;
        }
    }

    //Hex => RGB
    function hexToRgb(hex) {
        //하나씩 잘라서 10진수로 변환
        var nR = hexToDecimal(hex.substring(0, 1)) * 16 + hexToDecimal(hex.substring(1, 2));
        var nG = hexToDecimal(hex.substring(2, 3)) * 16 + hexToDecimal(hex.substring(3, 4));
        var nB = hexToDecimal(hex.substring(4, 5)) * 16 + hexToDecimal(hex.substring(5));
        return nR + "," + nG + "," + nB;
    }

    function fncLenChk(txtId, MaxLen) {
        if (document.getElementById(txtId).value.length > MaxLen) {
            alert(MaxLen + "자까지만 작성하실 수 있습니다.");
            var temp = document.getElementById(txtId).value;
            document.getElementById(txtId).value = temp.substring(0, (MaxLen - 1));
            document.getElementById(txtId).focus();
            return;
        }
    }

    function fncScriptSet() {

        //AquaPlayer.Set('SetUsage_subtitle', '1', '', '');

        //jQuery("#divEditolCtrl").load("/Player/MegaPlayer/PlayerAdmin/PlayerSrcSubtitleCtrl_Ax.asp?HDPlayerFlg=<%=HDPlayerFlg %>&SmallMoniter=<%=SmallMoniter %>");
    }

    function fncSltRemoveAll(sId) {
        var Slt = document.getElementById(sId);
        for (i = 0; i < Slt.options.length; i++) {
            Slt.options[i] = null;
        }
    }

    function fncTimeSetting(hms) {

        var h = hms.substring(0, 2);
        if (h == 0) {
            var m = hms.substring(3, 5);
        } else {
            var m = 59;
        }
        var s = 59;

        fncSltRemoveAll("sSrcHour");
        fncSltRemoveAll("sSrcMinute");
        fncSltRemoveAll("sSrcSecond");
        fncSltRemoveAll("eSrcHour");
        fncSltRemoveAll("eSrcMinute");
        fncSltRemoveAll("eSrcSecond");

        for (i = 0; i <= h; i++) {
            var hour = new Option(i,i);
            document.getElementById("sSrcHour")[i] = hour;
        }

        for (i = 0; i <= m; i++) {
            var min = new Option(i,i);
            document.getElementById("sSrcMinute")[i] = min;
        }

        for (i = 0; i <= s; i++) {
            var sec = new Option(i,i);
            document.getElementById("sSrcSecond")[i] = sec;
        }

        for (i = 0; i <= h; i++) {
            var hour = new Option(i, i);
            document.getElementById("eSrcHour")[i] = hour;
        }

        for (i = 0; i <= m; i++) {
            var min = new Option(i, i);
            document.getElementById("eSrcMinute")[i] = min;
        }

        for (i = 0; i <= s; i++) {
            var sec = new Option(i, i);
            document.getElementById("eSrcSecond")[i] = sec;
        }
    }

    function fncTimeReflectSet(t) {
                    
        var NowSecond = position;
        NowSecond = parseInt(NowSecond.toFixed(0));

        var hms = NowSecond.convertMSFromSec();

        var h = parseInt(hms.substring(0, 2));
        var m = parseInt(hms.substring(3, 5));
        var s = parseInt(hms.substring(6, 8));

        document.getElementById(t + "SrcHour").value = h;
        document.getElementById(t + "SrcMinute").value = m;
        document.getElementById(t + "SrcSecond").value = s;
    }


    function fncAxRequestResult(request) {

        var ResultFlg = request.responseText;

        if (ResultFlg == "ins" || ResultFlg == "idxins") {
            alert("입력되었습니다.");
        } else if (ResultFlg == "upd" || ResultFlg == "idxupd") {
            alert("수정되었습니다.");
            document.getElementById("spanInsBtns").style.display = "block";
            document.getElementById("spanUpdBtns").style.display = "none";
        } else if (ResultFlg == "del" || ResultFlg == "idxdel") {
            alert("삭제되었습니다.");
            document.getElementById("spanInsBtns").style.display = "block";
            document.getElementById("spanUpdBtns").style.display = "none";
        } else {
            alert("처리되었습니다.");
        }
            
        <% if LCASE(fncRequestVariables("SERVER_NAME")) = "next.megastudy.net" then %>
            document.getElementById("iSmiFrame").src = "http://file1.megastudy.net/FileServer/PLAYER_SMI/create_smi_new.asp?CHR_CD=NEXT_NEW&LEC_CD=<%=LEC_CD %>";
        <% else %>
            document.getElementById("iSmiFrame").src = "http://file1.megastudy.net/FileServer/PLAYER_SMI/create_smi_new.asp?CHR_CD=<%=CHR_CD %>&LEC_CD=<%=LEC_CD %>";
        <% end if %>


        if (ResultFlg == "idxins" || ResultFlg == "idxupd" || ResultFlg == "idxdel") {
            fncRightTopTab(2);
        } else {
            fncRightTopTab(1);
        }
    }

    function fncMoveSrcTime(t) {
        var h = parseInt(document.getElementById(t + "SrcHour").value * 3600);
        var m = parseInt(document.getElementById(t + "SrcMinute").value * 60);
        var s = parseInt(document.getElementById(t + "SrcSecond").value);

        var time = parseInt(h + m + s);

        Player.setSeek(time);
    }

    function fncDelMode(Mode, ArrNo) {
        if (Mode == "index") {

            $.post("index_set.asp", {
                "mode": "idxdel",
                "ArrNo": ArrNo,
                "LecCd": "<%=LEC_CD %>"
            }, function (data) {
                fncAxRequestResult(data);
            });

        } else {

            $.post("subtitle_set.asp", {
                "mode": "del",
                "ArrNo": ArrNo,
                "LecCd": "<%=LEC_CD %>"
            }, function (data) {
                fncAxRequestResult(data);
            })
        }
    }

</script>
</head>
<body>
    <input type='hidden' id='access_token' value='9hxkdfcrnv2zprz0'>
    <input type='hidden' id='media_content_key' value='<%=mckey %>'>
    <input type='hidden' id='name' value='test'>
    <input type='hidden' id='language_id' value='2'>
    <input type='hidden' id='subtitle_id' value=''>
	<div id="container" <% if PlayerKbn = "H" Or PlayerKbn = "S" then %>class="teachingNote teachingNote02"<% end if %>>
		<div id="player_section" >
            <!-- /control_area -->
            <div id="divControlArea" >
                <div id="player_obj" style="padding-top:38px;" >
                    <div id="video">
                        <object id="Player" width="100%" height="100%" classid="CLSID:57EEB0DA-56B9-4C71-8A17-BE373C092DD5" codebase="http://file.kollus.com/public/kollus2/KollusPlayer-2.0.4.2.r2.cab#version=2,0,4,2">
                            <param name="MEDIAINFO" value="http://v.kr.kollus.com/si?jwt=<%=encoded_token %>&custom_key=<%=customKey %>&s=<%=intStartSec %>&force_exclusive_player=<%=force_exclusive_player %><%=uservalue %><% if AutoPlay = "Y" Then %>&a=1<% End if %>&ts=1000&tr=1000<% if PlayerApp <> "Y" Then %>&player_duplicate<% End if %>" />
                        </object>
                    </div>
                    <!-- #include virtual = "/Player/kollus/admin/edit_info.asp"-->
                </div>
			</div>

            <div id="line_btn" class="line_btn"><img id="divTabControl" src="<%=img_player%>/player_2011/u_closeTab.gif" alt="접기" onclick="fncPlayerTab()" /></div>
			<!-- /control_area -->
        </div>
		<div id="right_section" style="background:none;" >
            <!-- #include virtual = "/Player/kollus/admin/edit_tab.asp"-->
        </div>
    </div>
</body>

</html>
