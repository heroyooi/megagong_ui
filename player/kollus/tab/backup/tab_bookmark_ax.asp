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
		<a href="#_blank" onclick="alert();" class="btn bt_bookmark">�ϸ�ũ �߰�</a>
	</div>

    <div id="divBookmarkArea"></div>

</div>
<script type="text/javascript">
    function fncBookMarkList() {
        jQuery("#divBookmarkArea").load("/Player/kollus/tab/tab_bookmarklist_ax.asp?<%=playPara %>");
    }

    function fncAddBookMark() {
        alert();
        //var addTime = pos; //getCurrentPosition();
        //
        //if (addTime < 1000) { addTime = 1000; }
        //jQuery.post("/Player/kollus/tab/tab_bookmark_set.asp?<%=playPara %>", { "mode": "ins", "bookmarkTm": addTime }, function (data) {
        //    if (data == "login") {
        //        alert("�α��� �� �̿����ּ���."); return;
        //    } else if (data == "time") {
        //        alert("����ð��� ���������� �Ѿ���� �ʾҽ��ϴ�.\n�ٽ� �õ����ּ���.");
        //    } else if (data == "addok") {
        //        fncBookMarkList();
        //    }
        //});

    }

    function fncUpdBookMark(no, val) {

        jQuery.post("/Player/kollus/tab/tab_bookmark_set.asp?<%=playPara %>", { "mode": "upd", "bookmarkNo": no, "bookmarkTxt": escape(val) }, function (data) {
            if (data == "login") {
                alert("�α��� �� �̿����ּ���."); return;
            } else if (data == "time") {
                alert("����ð��� ���������� �Ѿ���� �ʾҽ��ϴ�.\n�ٽ� �õ����ּ���.");
            } else if (data == "updok") {
                fncBookMarkList();
            }
        });

    }

    function fncDelBookMark(no) {
        
        jQuery.post("/Player/kollus/tab/tab_bookmark_set.asp?<%=playPara %>", { "mode": "del", "bookmarkNo": no }, function (data) {
            if (data == "login") {
                alert("�α��� �� �̿����ּ���."); return;
            } else if (data == "no") {
                alert("���������� ���������� �Ѿ���� �ʾҽ��ϴ�.\n�ٽ� �õ����ּ���.");
            } else if (data == "delok") {
                fncBookMarkList();
            }
        });
    }

    fncBookMarkList();
</script>