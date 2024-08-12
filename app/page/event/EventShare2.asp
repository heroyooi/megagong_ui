<script type="text/babel">
  'use strict';

  function EventShare2({ title, onChange }) {

const html = `<div class="eventBoard">
    <div class="eventBtns">
        <div class="btn">
            <a href="javascript:;" onclick="DownloadImg();"><img src="
            <%=img_main%>/m/common/btn/btn_down.png" alt="���� �̹��� �ٿ�ε�"></a>
        </div>
        <div class="btn">
            <a href="javascript:;" onclick="urlCopy();"><img src="
            <%=img_main%>/m/common/btn/btn_url.png" alt="URL �����ϱ�"></a>
        </div>
    </div>

    <div class="shareList ver2">
        <ul>
            <li>
                <dl class="sns">
                    <dt>SNS</dt>
                    <dd><a href="https://section.blog.naver.com/" target="_blank" title="���̹� ���α�"><span>���̹� ���α�</span></a></dd>
                    <dd><a href="https://www.instagram.com/" target="_blank" title="�ν�Ÿ�׷�"><span>�ν�Ÿ�׷�</span></a></dd>
                    <dd><a href="https://www.facebook.com/" target="_blank" title="���̽���"><span>���̽���</span></a></dd>
                    <dd><a href="https://twitter.com/" target="_blank" title="Ʈ����"><span>Ʈ����</span></a></dd>
                </dl>
            </li>
            <li>
                <dl class="naver">
                    <dt>NAVER</dt>
                    <dd><a href="https://cafe.naver.com/gugrade" target="_blank" title="���帲"><span>���帲</span></a></dd>
                    <dd><a href="https://cafe.naver.com/m2school" target="_blank" title="������"><span>������</span></a></dd>
                    <dd><a href="https://cafe.naver.com/dokchi" target="_blank" title="�����"><span>�����</span></a></dd>
                    <dd><a href="https://cafe.naver.com/specup" target="_blank" title="�����"><span>�����</span></a></dd>
                </dl>
            </li>
            <li>
                <dl class="daum">
                    <dt>DAUM</dt>
                    <dd><a href="http://cafe.daum.net/9glade" target="_blank" title="���޻�"><span>���޻�</span></a></dd>
                    <dd><a href="http://cafe.daum.net/4toeic" target="_blank" title="��ġ�����"><span>��ġ�����</span></a></dd>
                    <dd><a href="http://cafe.daum.net/breakjob" target="_blank" title="���"><span>���</span></a></dd>
                    <dd><a href="http://cafe.daum.net/ok1221" target="_blank" title="�߻�"><span>�߻�</span></a></dd>
                </dl>
            </li>
            <li>
                <dl class="etc">
                    <dt>��Ÿ</dt>
                    <dd><a href="http://ppomppu.co.kr/" target="_blank" title="�˻�"><span>�˻�</span></a></dd>
                    <dd><a href="https://theqoo.net/" target="_blank" title="����"><span>����</span></a></dd>
                    <dd><a href="http://web.humoruniv.com/main.html" target="_blank" title="�������"><span>�������</span></a></dd>
                    <dd><a href="https://bbs.ruliweb.com/" target="_blank" title="�縮��"><span>�縮��</span></a></dd>
                </dl>
            </li>
        </ul>
    </div>

    <div class="evtBoard_common">
        <div class="evtBoard_inner">
            <div class="board_write">
                <div class="inp_wrap">
                    <input id="url" name="url" type="text" onclick="tbox_click();" value="" placeholder="�ް������� ������ ��Ī�� �ҹ����ּ���!" title="�ۼ�ĭ">
                </div>
                <div class="btn_wrap">
                    <a href="javascript:void(0);" onclick="snsEvent();" title="���" class="btn_sns" onclick="">���</a>
                </div>
            </div>
            <% If 1=2 Then %>
            <div class="info_wrap">
                <button type="button" class="btnUrl" popupid="50" title="�� URL �����Ȳ ����">�� URL ��� ��Ȳ ���� &gt;</button>
            </div>
            <% Else %>
            <div class="info_wrap with_tip">
                <ul class="tip_list">
                    <li>- 10�� �̻� 500�� ���Ϸ� �ۼ� �����ϸ�, �ߺ��� URL�� ����� �Ұ��մϴ�.</li>
                    <li>- ���� �Խñ��� [��ü����]�� �ۼ��ؾ� �ϸ�, ���� �̹���+������ URL+�ʼ� �±װ� ��� ���ԵǾ�� �մϴ�.</li>
                    <li>- ���к��� �弳, ���, �̺�Ʈ�� ������ ���� ���� �����ڿ� ���� ������ �� ������, �̺�Ʈ ��󿡼� ���ܵ˴ϴ�.</li>
                </ul>
                <button type="button" class="btnUrl" popupid="50" title="�� URL �����Ȳ ����">�� URL ��� ��Ȳ ���� &gt;</button>
            </div>
            <% End if %>
        </div>
    </div>
</div><!-- .eventBoard -->

<!-- �˾� -->
<div class="dim_bnrwrp_wrap" data-popup="50" style="display:none;">
    <div class="dim_bnrwrp" style="z-index:6;">
        <span class="dim_bg">-</span>
    </div>
    <!-- �� URL �����Ȳ ���� S -->
    <div class="dim_popup clickPop sns" style="z-index:6;" id="my_sns_data">
        <p class="tit">
            �� URL �����Ȳ ����
        </p>
        <div class="tbl_wrap">
            <table>
                <colgroup>
                    <col width="12%">
                    <col width="68%">
                    <col width="20%">
                </colgroup>
                <thead>
                    <tr>
                        <th>No.</th>
                        <th>SNS URL</th>
                        <th>����Ͻ�</th>
                    </tr>
                </thead>
                <tbody></tbody>
            </table>
        </div>
        <div class="btnConfirm">
            <a href="#">
                <img src="<%=img_main%>/m/2020/0420_click/sobang/btn_confirm.png" alt="Ȯ��" />
            </a>
        </div>
        <button class="btnClose">�˾� �ݱ�</button>
    </div>
</div>`;

const css = `.eventBtns{margin-bottom:65px;}`;

const excCss = `.eventBoard{background-color:#fff8db;}`;

const js = ``;

const realJs = `$(function(){
    // �˾� ����
    $.fn.verticalMiddle = function (popupNum) {
        if ($('.dim_bnrwrp_wrap').css('display') == 'none') {
            if ($('body > .dim_bnrwrp_wrap').length == 0) {
                $('.dim_bnrwrp_wrap').appendTo('body');
            }
            $('.dim_bnrwrp_wrap[data-popup=' + popupNum + ']').show().addClass('on');
        };
    };
    $(window).resize(function () {
        if ($('.dim_bnrwrp_wrap.on').css('display') == 'block') {
            $(document).verticalMiddle();
        };
    });
    // �˾� �ݱ�
    $('.dim_bnrwrp_wrap .dim_popup > button, .clickPop .btnConfirm, .clickPop2 .btnConfirm, .clickPop3 .btnConfirm').on('click', function (e) {
        e.preventDefault();
        $('.dim_bnrwrp_wrap').hide().removeClass('on');
    });
    $('.dim_bg').on('click', function () {
        $('.dim_bnrwrp_wrap .dim_popup > button').trigger('click');
    });
});

var loginShareEvent = function() {
    alert('�α��� �� ���� �����մϴ�.');
    document.location.href = "/member/login.asp";
}

var finishShareEvent = function() {
    alert("�̺�Ʈ�� ����Ǿ����ϴ�.");
}
// �����̹���
function DownloadImg() {
    &lt;% if isEnd then %&gt;
        finishShareEvent();
        return;
    &lt;% end if %&gt;
    fncDownload("/userdown/event/202211/evt_3120/download.jpg", ""); 
}

function tbox_click(){
    &lt;%if isEnd then%&gt;
        finishShareEvent();
        return false;
    &lt;%elseif cook_id="" then%&gt;
        loginShareEvent();
        return false;
    &lt;%end if%&gt;
}  

function is_url(str) {
    var pattern_kor = /[��-��|��-��|��-�R]/;
    return pattern_kor.test(str);
}


// URL �ҹ����� �̺�Ʈ
function snsEvent(){
    &lt;%if isEnd then%&gt;
        finishShareEvent();
        return false;
    &lt;%elseif cook_id="" then%&gt;
        loginShareEvent();
        return false;
    &lt;%else%&gt;
        if($('#url').val().trim().length < 1){
            alert('�ҹ��� URL�� ����� �ּ���!');
            return false;
        }

        if (is_url($('#url').val())) {
            alert('�Է� ������ Ȯ�����ּ���.');
            $('#url').focus();
            return false;
        }
        
        if ($('#url').val().length < 10 || $('#url').val().length > 200) {
            alert('�ҹ� �� URL�� 10�� �̻� 200�� ���Ϸ� �ۼ� �����մϴ�.');
            return false;
        }

        if (!confirm("����Ͻðڽ��ϱ�?")) {
            return false;
        } 		

        var params = {
            mode: "sns",
            url: escape($('#url').val())
        }
        console.log(params);
        $.ajax({
            type: "POST",
            url: "./proc.asp",
            data: params,
            dataType: "json"
        }).done(function(data) {
            if(data.result == "succ") {
                $('#url').val('');
            }
            if(data.msg) {
                alert(data.msg);
            }
        });
    &lt;%end if%&gt;
}
// ���� ������  url �����ϱ�
function copyToClipboard(el) {
    // resolve the element
    el = (typeof el === 'string') ? document.querySelector(el) : el;
    // handle iOS as a special case
    if (navigator.userAgent.match(/ipad|ipod|iphone/i)) {
        // save current contentEditable/readOnly status
        var editable = el.contentEditable;
        var readOnly = el.readOnly;
        // convert to editable with readonly to stop iOS keyboard opening
        el.contentEditable = true;
        el.readOnly = true;
        // create a selectable range
        var range = document.createRange();
        range.selectNodeContents(el);
        // select the range
        var selection = window.getSelection();
        selection.removeAllRanges();
        selection.addRange(range);
        el.setSelectionRange(0, 999999);
        // restore contentEditable/readOnly to original state
        el.contentEditable = editable;
        el.readOnly = readOnly;
    }
    else {
        el.select();
    }
    // execute copy command
    if (el) {
        navigator.clipboard.writeText(el.value);
    }
    el.blur();
}
// ������  url �����ϱ�
function urlCopy() {
    &lt;%if isEnd then%&gt;
        finishShareEvent();
        return;
    &lt;%else%&gt;
        copyToClipboard('#copyurl');
        alert('URL ���� �Ϸ�!\n�ҹ��ۿ� ��! �־��ּ���.');
    &lt;%end if%&gt;
}    
// ��� ��Ȳ����
var GetMySns = function(e) {
    e.preventDefault();
    &lt;%if cook_id = "" then%&gt;
        loginShareEvent();
    &lt;%Else%&gt;
        var that = $(this);
        that.off('click'); // remove handler
        $.ajax({
            type: "POST",
            url: "./proc.asp",
            data: {mode: "my_sns"},
            dataType: "json"
        }).done(function(data) {
            if (data.data != "") {
                var html = "";
                $.each(data.data, function(key, val) {
                    html += "<tr>"
                    html += "	<td>"+val.ROW_+"</td>"
                    html += "	<td class='con'>"+val.sns_url+"</td>"
                    html += "	<td>"+val.REG_DT+"<br />"+val.REG_TM+"</td>"
                    html += "</tr>"
                });
                $('#my_sns_data tbody').html('').append(html);
            }
            $(document).verticalMiddle(that.attr('popupId'));
        }).always(function() {
            that.on('click', GetMySns); // add handler back after ajax
        });
    &lt;%End if%&gt;
}
$('.btnUrl').on('click', GetMySns);`;

const outJs = ``;

    return (
      <PageContent
        title={title}
        // desc="�̺�Ʈ Ǯ���������� ����ϴ� �̺�Ʈ �Ⱓ ������Ʈ���Դϴ�."
        // image="/images/btn.png"
        html={html}
        nextHtml={replaceSpecialTags(`<input type="text" id="copyurl" style="position:absolute; left:-9999px;" value="https://www.megagong.net&lt;%=request.servervariables('path_info')%&gt;">`)}
        css={css}
        excCss={excCss}
        js={js}
        realJs={replaceSpecialJs(realJs)}
        outJs={outJs}
        items={["�����ϱ� �̺�Ʈ"]}
        link="<%=dev_url_main%>/event/@template/index_temp.asp"
        onChange={onChange}
      />
    )
  }
</script>