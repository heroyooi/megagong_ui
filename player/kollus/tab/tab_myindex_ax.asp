<!-- #include virtual = "/common/inc/VarDef.asp" -->
<!-- #include virtual = "/common/inc/Fundef.asp" -->
<!-- #include virtual = "/common/inc/RSexec.asp" -->
<%
Response.AddHeader "Cache-Control", "no-cache"
Response.AddHeader "Expires", "0"
Response.AddHeader "Pragma", "no-cache"
Response.ContentType = "text/html; charset=euc-kr"
%>
<!-- �÷��̾� ���� ��Ŭ��� ������ ���� -->
<!-- #include virtual = "/Player/kollus/common/set/play_func.asp"-->
<!-- #include virtual = "/Player/kollus/common/set/play_para.asp"-->
<!-- �÷��̾� ���� ��Ŭ��� ������ ���� -->
<%
	IMG = img_player+"/player_2016"
%>
<!-- �ϸ�ũ -->
<div class="bookmark">

	<div class="table__top">
		<a href="#_blank" onclick="fncMyIndexAdd();" class="btn bt_bookmark">�ϸ�ũ �߰�</a>
	</div>

    <div id="divMyIndexArea"></div>

</div>
<script type="text/javascript">
    function fncMyIndexList() {
        controller.refresh_bookmark();
        jQuery("#divMyIndexArea").load("/Player/kollus/tab/tab_myindexlist_ax.asp?<%=playPara %>");
    }

    function fncMyIndexAdd() {
        var addTime = pos;

        if (addTime < 1) { addTime = 0; }
        jQuery.post("/Player/kollus/tab/tab_myindex_set.asp?<%=playPara %>", { "mode": "ins", "bookmarkTm": addTime }, function (data) {
            if (data == "login") {
                alert("�α��� �� �̿����ּ���."); return;
            } else if (data == "time") {
                alert("����ð��� ���������� �Ѿ���� �ʾҽ��ϴ�.\n�ٽ� �õ����ּ���.");
            } else if (data == "already") {
                alert("�̹� �߰� �� �ϸ�ũ�Դϴ�.");
            } else if (data == "max") {
                alert("�ϸ�ũ�� 30������ ��ϰ����մϴ�.\n��� �� �ϸ�ũ�� ���� �� �ٽ� �õ����ּ���.");
            } else if (data == "addok") {
                fncMyIndexList();
            }
        });

    }

    function fncUpdBookMark(idx, val) {

        jQuery.post("/Player/kollus/tab/tab_myindex_set.asp?<%=playPara %>", { "mode": "upd", "bookmarkIdx": idx, "bookmarkTxt": escape(val) }, function (data) {
            if (data == "login") {
                alert("�α��� �� �̿����ּ���."); return;
            } else if (data == "time") {
                alert("����ð��� ���������� �Ѿ���� �ʾҽ��ϴ�.\n�ٽ� �õ����ּ���.");
            } else if (data == "updok") {
                fncMyIndexList();
            }
        });

    }

    function fncDelBookMark(idx) {
        
        jQuery.post("/Player/kollus/tab/tab_myindex_set.asp?<%=playPara %>", { "mode": "del", "bookmarkIdx": idx }, function (data) {
            if (data == "login") {
                alert("�α��� �� �̿����ּ���."); return;
            } else if (data == "no") {
                alert("���������� ���������� �Ѿ���� �ʾҽ��ϴ�.\n�ٽ� �õ����ּ���.");
            } else if (data == "delok") {
                fncMyIndexList();
            }
        });
    }

    fncMyIndexList();
</script>