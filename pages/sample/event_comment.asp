<div class="eventBoard">
    <div class="evtBoard_common">
        <div class="evtBoard_inner">
            <ul class="radio_list">
                <li>
                    <input type="radio" name="select_kind" id="select_kind_1" value="1">
                    <label for="select_kind_1">문법 비교 원리</label>
                </li>
                <li>
                    <input type="radio" name="select_kind" id="select_kind_2" value="2">
                    <label for="select_kind_2">필수 문학 작품</label>
                </li>
                <li>
                    <input type="radio" name="select_kind" id="select_kind_3" value="3">
                    <label for="select_kind_3">어문규정</label>
                </li>
                <li>
                    <input type="radio" name="select_kind" id="select_kind_4" value="4">
                    <label for="select_kind_4">기출 압축 정리</label>
                </li>
            </ul>
            <div class="board_write">
                <div class="inp_wrap">
                    <textarea name="reply" id="reply" onclick="tbox_click();" maxlength="300" placeholder="학습 방법이나 수험 고민을 댓글로 작성해 주세요." onfocus="this.placeholder=''" onblur="this.placeholder='학습 방법이나 수험 고민을 댓글로 작성해 주세요.'" ></textarea>
                </div>
                <div class="btn_wrap">
                    <a href="javascript:;" onclick="reply();" title="등록하기">등록하기</a>
                </div>
            </div>
            <ul class="board_notice">
                <li>※ 댓글은 10자 이상 1,000자 이하로 작성 가능하며, 욕설, 도배 등 주제와 관련 없는 글은 임의로 삭제될 수 있습니다.</li>
                <% if ucase(mem_type) = "E" then %>
                <li class="chk_notice"><input type="checkbox" name="noti" id="checked" value="Y"> <label for="checked">공지</label></li>
                <% end if %>
            </ul>
        </div>
        <div class="board_list"></div>
    </div>
</div><!-- .eventBoard -->

<script>
$(document).ready(function () {
    getList();
});

var loginCommentEvent = function() {
    alert('로그인 후 참여 가능합니다.');
    document.location.href = "<%=url_main%>/member/login.asp";
}

var finishCommentEvent = function() {
    alert("이벤트가 종료되었습니다.");
}

function tbox_click() {

<%if isCommentEnd then%>
    finishCommentEvent();
    return false;
<%elseif cook_id="" then%>
    loginCommentEvent();
    <%end if%>
}

function reply(){
<%if isCommentEnd then%>
    finishCommentEvent();
    return false;
<%elseif cook_id="" then%>
    loginCommentEvent();
<%else%>
    var replyStr = $('#reply').val().trim();
    <% if ucase(mem_type) = "E" then %>
    var checked = ($('#checked').is(':checked')) ? "Y" : "";
    <% end if %>

    if(replyStr.replace(/ /gi, '').length < 1){
        alert('정확한 댓글을 입력해 주세요.');
        return false;
    }
    if (replyStr.length < 10 || replyStr.length > 1000) {
        if (replyStr.length > 1000) {
            $('#reply').val(replyStr.substring(0, 1000));
        }
        alert('댓글은 10자 이상 1,000자 이하로 작성 가능합니다.');
        return false;
    }
    if (!confirm("등록하시겠습니까?")) {
        return false;
    }

    var params = {
        mode: "reply",
        word: escape(replyStr),
        now:"<%=lo_now_date%>"
        <% if ucase(mem_type) = "E" then %>
        ,noti: checked
        <% end if %>
    }
    $.ajax({
        type: "POST",
        async: false,
        url: "./proc.asp",
        data: params,
        dataType: "json"
    }).done(function(data) {
        $('#reply').val('');
        $('#checked').prop('checked',false);

        if (data.result != "failId") {
            alert(data.msg);
            getList();
        } else {
            location.href = location.href;
            loginCommentEvent();
        }
    });
    <%end if%>
}

//댓글 삭제
function delX(idx) {
    if(confirm("삭제 하시겠습니까?")) {
        $.post("./proc.asp",{"mode":"replyDel", "idx":idx},function(data) {
            if(data.msg != "" ) {
                alert(data.msg);
            }
            if(data.result == "succ") {
                getList();
            }
        },"json");
    }
}

//List
function getList() {
    $(".board_list").load("./sample/rep_list.asp?" + new Date().getTime()); // 끝에 날짜 값은 익스플로러에서 load가 먹히게 하기 위함
}
function fncCommonPageMv(url) {
    $.get(url,function(html) {
        $("div.board_list").html(html);
    });
}
</script>