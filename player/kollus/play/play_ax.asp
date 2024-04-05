<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%
Response.AddHeader "Cache-Control", "no-cache"
Response.AddHeader "Expires", "0"
Response.AddHeader "Pragma", "no-cache"
Response.ContentType = "text/html; charset=euc-kr"
%>
<!-- #include virtual = "/Player/kollus/common/inc/common_inc.asp" -->
<!-- #include virtual = "/Player/kollus/common/jwt/JSON_2.0.4.asp" -->
<!-- #include virtual = "/Player/kollus/common/jwt/JSON_UTIL_0.1.1.asp" -->
<!-- #include virtual = "/Player/kollus/common/set/play_para.asp" -->
<!-- #include virtual = "/Player/kollus/common/set/play_path.asp" -->
<!-- #include virtual = "/Player/kollus/common/set/play_size.asp" -->
<!-- #include virtual = "/Player/kollus/common/set/play_set.asp" -->
<%
    if encoded_token = "" Then
%>
<script type="text/javascript">
    alert("컨텐츠가 존재하지 않습니다.");
</script>
<%
    End if
%>
<!-- #include virtual = "/Player/kollus/common/set/play_area.asp" -->

<script type="text/javascript" src="<%=url_main%>/Player/kollus/common/js/kollus.videogateway-controller.min.js"></script>
<script type="text/javascript">
    //플레이어아이디
    var pi = "<%=pcd %>";

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