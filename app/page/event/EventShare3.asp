<script type="text/babel">
  'use strict';

  function EventShare3({ title, onChange }) {

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

    <div class="shareList ver3">
        <ul>
            <li>
                <a href="https://www.instagram.com/" target="_blank" title="ÀÎ½ºÅ¸±×·¥">
                    <img src="<%=img_main%>/m/2024/0704_megamega2/instagram.png" alt="ÀÎ½ºÅ¸±×·¥ ¹Ù·Î°¡±â">
                </a>
            </li>
            <li>
                <a href="https://cafe.naver.com/gugrade" target="_blank" title="°øµå¸²">
                    <img src="<%=img_main%>/m/2024/0704_megamega2/gugrade.png" alt="°øµå¸² ¹Ù·Î°¡±â">
                </a>
            </li>
            <li>
                <a href="https://cafe.naver.com/m2school" target="_blank" title="µ¶°ø»ç">
                    <img src="<%=img_main%>/m/2024/0704_megamega2/m2school.png" alt="µ¶°ø»ç ¹Ù·Î°¡±â">
                </a>
            </li>
            <li>
                <a href="https://section.blog.naver.com/" target="_blank" title="ºí·Î±×">
                    <img src="<%=img_main%>/m/2024/0704_megamega2/blog.png" alt="ºí·Î±× ¹Ù·Î°¡±â">
                </a>
            </li>
            <li>
                <a href="https://www.facebook.com/" target="_blank" title="ÆäÀÌ½ººÏ">
                    <img src="<%=img_main%>/m/2024/0704_megamega2/facebook.png" alt="ÆäÀÌ½ººÏ ¹Ù·Î°¡±â">
                </a>
            </li>
        </ul>
    </div>

    <div class="evtBoard_common">
        <div class="evtBoard_inner">
            <div class="board_write">
                <div class="inp_wrap">
                    <input id="url" name="url" type="text" onclick="tbox_click();" value="" placeholder="¸Þ°¡°ø¹«¿ø º¸°ÇÁ÷ ·±ÄªÀ» ¼Ò¹®³»ÁÖ¼¼¿ä!" title="ÀÛ¼ºÄ­">
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
</div><!-- .eventBoard -->`;

const css = `.eventBtns{margin-bottom:65px;}`;

const excCss = `.eventBoard{background-color:#fff8db;}`;

const js = ``;

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