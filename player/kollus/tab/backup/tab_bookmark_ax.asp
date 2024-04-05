<!-- #include virtual = "/common/inc/VarDef.asp" -->
<!-- #include virtual = "/common/inc/Fundef.asp" -->
<!-- #include virtual = "/common/inc/RSexec.asp" -->
<%
Response.AddHeader "Cache-Control", "no-cache"
Response.AddHeader "Expires", "0"
Response.AddHeader "Pragma", "no-cache"
Response.ContentType = "text/html; charset=euc-kr"
%>
<!-- 플레이어 공통 인클루드 페이지 시작 -->
<!-- #include virtual = "/Player/kollus/common/set/play_func.asp"-->
<!-- #include virtual = "/Player/kollus/common/set/play_para.asp"-->
<!-- 플레이어 공통 인클루드 페이지 종료 -->
<%
	IMG = img_player+"/player_2016"
%>
<!-- 북마크 -->
<div class="bookmark">

	<div class="table__top">
		<a href="#_blank" onclick="alert();" class="btn bt_bookmark">북마크 추가</a>
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
        //        alert("로그인 후 이용해주세요."); return;
        //    } else if (data == "time") {
        //        alert("재생시간이 정상적으로 넘어오지 않았습니다.\n다시 시도해주세요.");
        //    } else if (data == "addok") {
        //        fncBookMarkList();
        //    }
        //});

    }

    function fncUpdBookMark(no, val) {

        jQuery.post("/Player/kollus/tab/tab_bookmark_set.asp?<%=playPara %>", { "mode": "upd", "bookmarkNo": no, "bookmarkTxt": escape(val) }, function (data) {
            if (data == "login") {
                alert("로그인 후 이용해주세요."); return;
            } else if (data == "time") {
                alert("재생시간이 정상적으로 넘어오지 않았습니다.\n다시 시도해주세요.");
            } else if (data == "updok") {
                fncBookMarkList();
            }
        });

    }

    function fncDelBookMark(no) {
        
        jQuery.post("/Player/kollus/tab/tab_bookmark_set.asp?<%=playPara %>", { "mode": "del", "bookmarkNo": no }, function (data) {
            if (data == "login") {
                alert("로그인 후 이용해주세요."); return;
            } else if (data == "no") {
                alert("삭제정보가 정상적으로 넘어오지 않았습니다.\n다시 시도해주세요.");
            } else if (data == "delok") {
                fncBookMarkList();
            }
        });
    }

    fncBookMarkList();
</script>