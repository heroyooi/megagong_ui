<div class="eventBoard">
    <div class="evtBoard_common">
        <div class="evtBoard_inner">
            <ul class="radio_list">
                <li>
                    <input type="radio" name="select_kind" id="select_kind_1" value="1">
                    <label for="select_kind_1">���� �� ����</label>
                </li>
                <li>
                    <input type="radio" name="select_kind" id="select_kind_2" value="2">
                    <label for="select_kind_2">�ʼ� ���� ��ǰ</label>
                </li>
                <li>
                    <input type="radio" name="select_kind" id="select_kind_3" value="3">
                    <label for="select_kind_3">�����</label>
                </li>
                <li>
                    <input type="radio" name="select_kind" id="select_kind_4" value="4">
                    <label for="select_kind_4">���� ���� ����</label>
                </li>
            </ul>
            <div class="board_write">
                <div class="inp_wrap">
                    <textarea name="reply" id="reply" onclick="tbox_click();" maxlength="300" placeholder="�н� ����̳� ���� ����� ��۷� �ۼ��� �ּ���." onfocus="this.placeholder=''" onblur="this.placeholder='�н� ����̳� ���� ����� ��۷� �ۼ��� �ּ���.'" ></textarea>
                </div>
                <div class="btn_wrap">
                    <a href="javascript:;" onclick="reply();" title="����ϱ�">����ϱ�</a>
                </div>
            </div>
            <ul class="board_notice">
                <li>�� ����� 10�� �̻� 1,000�� ���Ϸ� �ۼ� �����ϸ�, �弳, ���� �� ������ ���� ���� ���� ���Ƿ� ������ �� �ֽ��ϴ�.</li>
                <% if ucase(mem_type) = "E" then %>
                <li class="chk_notice"><input type="checkbox" name="noti" id="checked" value="Y"> <label for="checked">����</label></li>
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
    alert('�α��� �� ���� �����մϴ�.');
    document.location.href = "<%=url_main%>/member/login.asp";
}

var finishCommentEvent = function() {
    alert("�̺�Ʈ�� ����Ǿ����ϴ�.");
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
        alert('��Ȯ�� ����� �Է��� �ּ���.');
        return false;
    }
    if (replyStr.length < 10 || replyStr.length > 1000) {
        if (replyStr.length > 1000) {
            $('#reply').val(replyStr.substring(0, 1000));
        }
        alert('����� 10�� �̻� 1,000�� ���Ϸ� �ۼ� �����մϴ�.');
        return false;
    }
    if (!confirm("����Ͻðڽ��ϱ�?")) {
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

//��� ����
function delX(idx) {
    if(confirm("���� �Ͻðڽ��ϱ�?")) {
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
    $(".board_list").load("./sample/rep_list.asp?" + new Date().getTime()); // ���� ��¥ ���� �ͽ��÷η����� load�� ������ �ϱ� ����
}
function fncCommonPageMv(url) {
    $.get(url,function(html) {
        $("div.board_list").html(html);
    });
}
</script>