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
    alert("�������� �������� �ʽ��ϴ�.");
</script>
<%
    End if
%>
<!-- #include virtual = "/Player/kollus/common/set/play_area.asp" -->

<script type="text/javascript" src="<%=url_main%>/Player/kollus/common/js/kollus.videogateway-controller.min.js"></script>
<script type="text/javascript">
    //�÷��̾���̵�
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

            //���⼭���� �̺�Ʈ �����ʸ� ����ϰų�, �������� Element�� �޼ҵ带 bind�ϸ� �˴ϴ�.
            // video playback event binding

        } catch (e) {
            //Videogateweay Controller Library�� window.postM essage API�� �̿��ϱ� ������
            //�ش� ����� �������� �ʴ� �������������� �������� �ʽ��ϴ�.
            //�� �κп� ������ fail-over �ڵ带 �߰��Ͽ� �ֽʽÿ�.

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