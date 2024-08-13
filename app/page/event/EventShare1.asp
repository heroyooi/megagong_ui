<script type="text/babel">
  'use strict';

  function EventShare1({ title, onChange }) {

const html = `<div class="eventBoard">
    <div class="eventBtns">
        <div class="btn">
            <a href="javascript:;" onclick="DownloadImg();"><img src="
            <%=img_main%>/m/common/btn/btn_down.png" alt="°øÀ¯ ÀÌ¹ÌÁö ´Ù¿î·Îµå"></a>
        </div>
        <div class="btn">
            <a href="javascript:;" onclick="urlCopy();"><img src="
            <%=img_main%>/m/common/btn/btn_url.png" alt="URL º¹»çÇÏ±â"></a>
        </div>
    </div>

    <div class="shareList">
        <ul>
            <li>
                <dl class="sns">
                    <dt>SNS</dt>
                    <dd><a href="https://www.instagram.com/" target="_blank" title="ÀÎ½ºÅ¸±×·¥"><span>ÀÎ½ºÅ¸±×·¥</span></a></dd>
                    <dd><a href="https://www.facebook.com/" target="_blank" title="ÆäÀÌ½ººÏ"><span>ÆäÀÌ½ººÏ</span></a></dd>
                    <dd><a href="https://twitter.com/" target="_blank" title="Æ®À§ÅÍ"><span>Æ®À§ÅÍ</span></a></dd>
                </dl>
            </li>
            <li>
                <dl class="naver">
                    <dt>NAVER</dt>
                    <dd><a href="https://cafe.naver.com/gugrade" target="_blank" title="°øµå¸²"><span>°øµå¸²</span></a></dd>
                    <dd><a href="https://cafe.naver.com/m2school" target="_blank" title="µ¶°ø»ç"><span>µ¶°ø»ç</span></a></dd>
                    <dd><a href="https://cafe.naver.com/dokchi" target="_blank" title="µ¶Ãë»ç"><span>µ¶Ãë»ç</span></a></dd>
                    <dd><a href="https://cafe.naver.com/specup" target="_blank" title="½ºÆå¾÷"><span>½ºÆå¾÷</span></a></dd>
                    <dd><a href="https://section.blog.naver.com/" target="_blank" title="³×ÀÌ¹ö ºí·Î±×"><span>³×ÀÌ¹ö ºí·Î±×</span></a></dd>
                </dl>
            </li>
            <li>
                <dl class="daum">
                    <dt>DAUM</dt>
                    <dd><a href="http://cafe.daum.net/9glade" target="_blank" title="±¸²Þ»ç"><span>±¸²Þ»ç</span></a></dd>
                    <dd><a href="http://cafe.daum.net/4toeic" target="_blank" title="´ÚÄ¡°íÃë¾÷"><span>´ÚÄ¡°íÃë¾÷</span></a></dd>
                    <dd><a href="http://cafe.daum.net/breakjob" target="_blank" title="Ãë»Ç"><span>Ãë»Ç</span></a></dd>
                    <dd><a href="http://cafe.daum.net/ok1221" target="_blank" title="Âß»§"><span>Âß»§</span></a></dd>
                </dl>
            </li>
            <li>
                <dl class="etc">
                    <dt>±âÅ¸</dt>
                    <dd><a href="https://gall.dcinside.com/mgallery/board/lists?id=gisulzik" target="_blank" title="DC±â¼úÁ÷ °ø¹«¿ø°¶·¯¸®"><span>DC±â¼úÁ÷<br>°ø¹«¿ø°¶·¯¸®</span></a></dd>
                    <dd><a href="http://ppomppu.co.kr/" target="_blank" title="»Ë»Ñ"><span>»Ë»Ñ</span></a></dd>
                    <dd><a href="https://theqoo.net/study/" target="_blank" title="´õÄí(°øºÎ)"><span>´õÄí(°øºÎ)</span></a></dd>
                    <dd><a href="http://web.humoruniv.com/main.html" target="_blank" title="¿ô±ä´ëÇÐ"><span>¿ô±ä´ëÇÐ</span></a></dd>
                    <dd><a href="https://bbs.ruliweb.com/" target="_blank" title="·ç¸®À¥"><span>·ç¸®À¥</span></a></dd>
                </dl>
            </li>
        </ul>
    </div>

    <div class="evtBoard_common">
        <div class="evtBoard_inner">
            <div class="board_write">
                <div class="inp_wrap">
                    <input id="url" name="url" type="text" onclick="tbox_click();" value="" placeholder="°øÀ¯ÇÑ URLÀ» µî·ÏÇØ ÁÖ¼¼¿ä." title="ÀÛ¼ºÄ­">
                </div>
                <div class="btn_wrap">
                    <a href="javascript:void(0);" onclick="snsEvent();" title="µî·Ï" class="btn_sns" onclick="">µî·Ï</a>
                </div>
            </div>
            <% If 1=2 Then %>
            <div class="info_wrap">
                <button type="button" class="btnUrl" popupid="50" title="³» URL µî·ÏÇöÈ² º¸±â">³» URL µî·Ï ÇöÈ² º¸±â &gt;</button>
            </div>
            <% Else %>
            <div class="info_wrap with_tip">
                <ul class="tip_list">
                    <li>- 10ÀÚ ÀÌ»ó 500ÀÚ ÀÌÇÏ·Î ÀÛ¼º °¡´ÉÇÏ¸ç, Áßº¹µÈ URLÀº µî·ÏÀÌ ºÒ°¡ÇÕ´Ï´Ù.</li>
                    <li>- ÀÎÁõ °Ô½Ã±ÛÀº [ÀüÃ¼°ø°³]·Î ÀÛ¼ºÇØ¾ß ÇÏ¸ç, °øÀ¯ ÀÌ¹ÌÁö+ÆäÀÌÁö URL+ÇÊ¼ö ÅÂ±×°¡ ¸ðµÎ Æ÷ÇÔµÇ¾î¾ß ÇÕ´Ï´Ù.</li>
                    <li>- ¹«ºÐº°ÇÑ ¿å¼³, ºñ¹æ, ÀÌº¥Æ®¿Í ¹«°üÇÑ ³»¿ë µîÀº °ü¸®ÀÚ¿¡ ÀÇÇØ »èÁ¦µÉ ¼ö ÀÖÀ¸¸ç, ÀÌº¥Æ® ´ë»ó¿¡¼­ Á¦¿ÜµË´Ï´Ù.</li>
                </ul>
                <button type="button" class="btnUrl" popupid="50" title="³» URL µî·ÏÇöÈ² º¸±â">³» URL µî·Ï ÇöÈ² º¸±â &gt;</button>
            </div>
            <% End if %>
        </div>
    </div>
</div><!-- .eventBoard -->


<div class="dim_bnrwrp_wrap" data-popup="50" style="display:none;">
    <div class="dim_bnrwrp" style="z-index:6;">
        <span class="dim_bg">-</span>
    </div>
    <!-- ³» URL µî·ÏÇöÈ² º¸±â S -->
    <div class="dim_popup clickPop sns" style="z-index:6;" id="my_sns_data">
        <p class="tit">
            ³» URL µî·ÏÇöÈ² º¸±â
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
                        <th>µî·ÏÀÏ½Ã</th>
                    </tr>
                </thead>
                <tbody></tbody>
            </table>
        </div>
        <div class="btnConfirm">
            <a href="#">
                <img src="<%=img_main%>/m/2020/0420_click/sobang/btn_confirm.png" alt="È®ÀÎ" />
            </a>
        </div>
        <button class="btnClose">ÆË¾÷ ´Ý±â</button>
    </div>
</div>`;

const css = `.eventBtns{margin-bottom:65px;}`;

const excCss = `.eventBoard{background-color:#fff8db;}`;

const js = `$(function(){
    // ÆË¾÷ ¿­±â
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
    // ÆË¾÷ ´Ý±â
    $('.dim_bnrwrp_wrap .dim_popup > button, .clickPop .btnConfirm, .clickPop2 .btnConfirm, .clickPop3 .btnConfirm').on('click', function (e) {
        e.preventDefault();
        $('.dim_bnrwrp_wrap').hide().removeClass('on');
    });
    $('.dim_bg').on('click', function () {
        $('.dim_bnrwrp_wrap .dim_popup > button').trigger('click');
    });
});

var loginShareEvent = function() {
    alert('·Î±×ÀÎ ÈÄ Âü¿© °¡´ÉÇÕ´Ï´Ù.');
    document.location.href = "/member/login.asp";
}

var finishShareEvent = function() {
    alert("ÀÌº¥Æ®°¡ Á¾·áµÇ¾ú½À´Ï´Ù.");
}
// °øÀ¯ÀÌ¹ÌÁö
function DownloadImg() {
    <% if isEnd then %>
        finishShareEvent();
        return;
    <% end if %>
    fncDownload("/userdown/event/202408/evt_3874/download.jpg", ""); 
}

function tbox_click(){
    <%if isEnd then%>
        finishShareEvent();
        return false;
    <%elseif cook_id="" then%>
        loginShareEvent();
        return false;
    <%end if%>
}  

function is_url(str) {
    var pattern_kor = /[¤¡-¤¾|¤¿-¤Ó|°¡-ÆR]/;
    return pattern_kor.test(str);
}


// URL ¼Ò¹®³»±â ÀÌº¥Æ®
function snsEvent(){
    <%if isEnd then%>
        finishShareEvent();
        return false;
    <%elseif cook_id="" then%>
        loginShareEvent();
        return false;
    <%else%>
        if($('#url').val().trim().length < 1){
            alert('¼Ò¹®³½ URLÀ» µî·ÏÇØ ÁÖ¼¼¿ä!');
            return false;
        }

        if (is_url($('#url').val())) {
            alert('ÀÔ·Â ³»¿ëÀ» È®ÀÎÇØÁÖ¼¼¿ä.');
            $('#url').focus();
            return false;
        }
        
        if ($('#url').val().length < 10 || $('#url').val().length > 200) {
            alert('¼Ò¹® ³½ URLÀº 10ÀÚ ÀÌ»ó 200ÀÚ ÀÌÇÏ·Î ÀÛ¼º °¡´ÉÇÕ´Ï´Ù.');
            return false;
        }

        if (!confirm("µî·ÏÇÏ½Ã°Ú½À´Ï±î?")) {
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
    <%end if%>
}
// ÇöÀç ÆäÀÌÁö  url º¹»çÇÏ±â
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
// ÆäÀÌÁö  url º¹»çÇÏ±â
function urlCopy() {
    <%if isEnd then%>
        finishShareEvent();
        return;
    <%else%>
        copyToClipboard('#copyurl');
        alert('URL º¹»ç ¿Ï·á! ¼Ò¹®±Û¿¡ ²À! ³Ö¾îÁÖ¼¼¿ä.');
    <%end if%>
}    
// µî·Ï ÇöÈ²º¸±â
var mockupData = {"data":[{"ROW_":4,"sns_kind":null,"sns_url":"https://www.naver.com/","REG_DT":"2022-11-25","REG_TM":"10:00:50"},{"ROW_":3,"sns_kind":null,"sns_url":"http://www.naer.comaaa","REG_DT":"2022-11-25","REG_TM":"09:11:46"},{"ROW_":2,"sns_kind":null,"sns_url":"http://daum.net","REG_DT":"2022-06-21","REG_TM":"15:11:11"},{"ROW_":1,"sns_kind":null,"sns_url":"http://www.naver.com","REG_DT":"2022-06-20","REG_TM":"09:55:36"}]}
var GetMySns = function(e) {
    e.preventDefault();
    var that = $(this);
    that.off('click'); // remove handler

    var html = "";
    $.each(mockupData.data, function(key, val) {
        html += "<tr>"
        html += "	<td>"+val.ROW_+"</td>"
        html += "	<td class='con'>"+val.sns_url+"</td>"
        html += "	<td>"+val.REG_DT+"<br />"+val.REG_TM+"</td>"
        html += "</tr>"
    });
    $('#my_sns_data tbody').html('').append(html);
    $(document).verticalMiddle(that.attr('popupId'));

    that.on('click', GetMySns);
}
$('.btnUrl').on('click', GetMySns);`;

const realJs = `$(function(){
    // ÆË¾÷ ¿­±â
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
    // ÆË¾÷ ´Ý±â
    $('.dim_bnrwrp_wrap .dim_popup > button, .clickPop .btnConfirm, .clickPop2 .btnConfirm, .clickPop3 .btnConfirm').on('click', function (e) {
        e.preventDefault();
        $('.dim_bnrwrp_wrap').hide().removeClass('on');
    });
    $('.dim_bg').on('click', function () {
        $('.dim_bnrwrp_wrap .dim_popup > button').trigger('click');
    });
});

var loginShareEvent = function() {
    alert('·Î±×ÀÎ ÈÄ Âü¿© °¡´ÉÇÕ´Ï´Ù.');
    document.location.href = "/member/login.asp";
}

var finishShareEvent = function() {
    alert("ÀÌº¥Æ®°¡ Á¾·áµÇ¾ú½À´Ï´Ù.");
}
// °øÀ¯ÀÌ¹ÌÁö
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
    var pattern_kor = /[¤¡-¤¾|¤¿-¤Ó|°¡-ÆR]/;
    return pattern_kor.test(str);
}


// URL ¼Ò¹®³»±â ÀÌº¥Æ®
function snsEvent(){
    &lt;%if isEnd then%&gt;
        finishShareEvent();
        return false;
    &lt;%elseif cook_id="" then%&gt;
        loginShareEvent();
        return false;
    &lt;%else%&gt;
        if($('#url').val().trim().length < 1){
            alert('¼Ò¹®³½ URLÀ» µî·ÏÇØ ÁÖ¼¼¿ä!');
            return false;
        }

        if (is_url($('#url').val())) {
            alert('ÀÔ·Â ³»¿ëÀ» È®ÀÎÇØÁÖ¼¼¿ä.');
            $('#url').focus();
            return false;
        }
        
        if ($('#url').val().length < 10 || $('#url').val().length > 200) {
            alert('¼Ò¹® ³½ URLÀº 10ÀÚ ÀÌ»ó 200ÀÚ ÀÌÇÏ·Î ÀÛ¼º °¡´ÉÇÕ´Ï´Ù.');
            return false;
        }

        if (!confirm("µî·ÏÇÏ½Ã°Ú½À´Ï±î?")) {
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
// ÇöÀç ÆäÀÌÁö  url º¹»çÇÏ±â
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
// ÆäÀÌÁö  url º¹»çÇÏ±â
function urlCopy() {
    &lt;%if isEnd then%&gt;
        finishShareEvent();
        return;
    &lt;%else%&gt;
        copyToClipboard('#copyurl');
        alert('URL º¹»ç ¿Ï·á!\n¼Ò¹®±Û¿¡ ²À! ³Ö¾îÁÖ¼¼¿ä.');
    &lt;%end if%&gt;
}    
// µî·Ï ÇöÈ²º¸±â
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
        // desc="ÀÌº¥Æ® Ç®ÆäÀÌÁö¿¡¼­ »ç¿ëÇÏ´Â ÀÌº¥Æ® ±â°£ ÄÄÆ÷³ÍÆ®µéÀÔ´Ï´Ù."
        // image="/images/btn.png"
        html={html}
        nextHtml={replaceSpecialTags(`<input type="text" id="copyurl" style="position:absolute; left:-9999px;" value="https://www.megagong.net&lt;%=request.servervariables('path_info')%&gt;">`)}
        css={css}
        excCss={excCss}
        js={js}
        realJs={replaceSpecialJs(realJs)}
        outJs={outJs}
        items={["°øÀ¯ÇÏ±â ÀÌº¥Æ®"]}
        link="<%=dev_url_main%>/event/@template/index_temp.asp"
        onChange={onChange}
      />
    )
  }
</script>