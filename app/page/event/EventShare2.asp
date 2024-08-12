<script type="text/babel">
  'use strict';

  function EventShare2({ title, onChange }) {

const html = `<div class="eventBoard">
    <div class="eventBtns">
        <div class="btn">
            <a href="javascript:;" onclick="DownloadImg();"><img src="
            <%=img_main%>/m/common/btn/btn_down.png" alt="공유 이미지 다운로드"></a>
        </div>
        <div class="btn">
            <a href="javascript:;" onclick="urlCopy();"><img src="
            <%=img_main%>/m/common/btn/btn_url.png" alt="URL 복사하기"></a>
        </div>
    </div>

    <div class="shareList ver2">
        <ul>
            <li>
                <dl class="sns">
                    <dt>SNS</dt>
                    <dd><a href="https://section.blog.naver.com/" target="_blank" title="네이버 블로그"><span>네이버 블로그</span></a></dd>
                    <dd><a href="https://www.instagram.com/" target="_blank" title="인스타그램"><span>인스타그램</span></a></dd>
                    <dd><a href="https://www.facebook.com/" target="_blank" title="페이스북"><span>페이스북</span></a></dd>
                    <dd><a href="https://twitter.com/" target="_blank" title="트위터"><span>트위터</span></a></dd>
                </dl>
            </li>
            <li>
                <dl class="naver">
                    <dt>NAVER</dt>
                    <dd><a href="https://cafe.naver.com/gugrade" target="_blank" title="공드림"><span>공드림</span></a></dd>
                    <dd><a href="https://cafe.naver.com/m2school" target="_blank" title="독공사"><span>독공사</span></a></dd>
                    <dd><a href="https://cafe.naver.com/dokchi" target="_blank" title="독취사"><span>독취사</span></a></dd>
                    <dd><a href="https://cafe.naver.com/specup" target="_blank" title="스펙업"><span>스펙업</span></a></dd>
                </dl>
            </li>
            <li>
                <dl class="daum">
                    <dt>DAUM</dt>
                    <dd><a href="http://cafe.daum.net/9glade" target="_blank" title="구꿈사"><span>구꿈사</span></a></dd>
                    <dd><a href="http://cafe.daum.net/4toeic" target="_blank" title="닥치고취업"><span>닥치고취업</span></a></dd>
                    <dd><a href="http://cafe.daum.net/breakjob" target="_blank" title="취뽀"><span>취뽀</span></a></dd>
                    <dd><a href="http://cafe.daum.net/ok1221" target="_blank" title="쭉빵"><span>쭉빵</span></a></dd>
                </dl>
            </li>
            <li>
                <dl class="etc">
                    <dt>기타</dt>
                    <dd><a href="http://ppomppu.co.kr/" target="_blank" title="뽐뿌"><span>뽐뿌</span></a></dd>
                    <dd><a href="https://theqoo.net/" target="_blank" title="더쿠"><span>더쿠</span></a></dd>
                    <dd><a href="http://web.humoruniv.com/main.html" target="_blank" title="웃긴대학"><span>웃긴대학</span></a></dd>
                    <dd><a href="https://bbs.ruliweb.com/" target="_blank" title="루리웹"><span>루리웹</span></a></dd>
                </dl>
            </li>
        </ul>
    </div>

    <div class="evtBoard_common">
        <div class="evtBoard_inner">
            <div class="board_write">
                <div class="inp_wrap">
                    <input id="url" name="url" type="text" onclick="tbox_click();" value="" placeholder="메가공무원 보건직 런칭을 소문내주세요!" title="작성칸">
                </div>
                <div class="btn_wrap">
                    <a href="javascript:void(0);" onclick="snsEvent();" title="등록" class="btn_sns" onclick="">등록</a>
                </div>
            </div>
            <% If 1=2 Then %>
            <div class="info_wrap">
                <button type="button" class="btnUrl" popupid="50" title="내 URL 등록현황 보기">내 URL 등록 현황 보기 &gt;</button>
            </div>
            <% Else %>
            <div class="info_wrap with_tip">
                <ul class="tip_list">
                    <li>- 10자 이상 500자 이하로 작성 가능하며, 중복된 URL은 등록이 불가합니다.</li>
                    <li>- 인증 게시글은 [전체공개]로 작성해야 하며, 공유 이미지+페이지 URL+필수 태그가 모두 포함되어야 합니다.</li>
                    <li>- 무분별한 욕설, 비방, 이벤트와 무관한 내용 등은 관리자에 의해 삭제될 수 있으며, 이벤트 대상에서 제외됩니다.</li>
                </ul>
                <button type="button" class="btnUrl" popupid="50" title="내 URL 등록현황 보기">내 URL 등록 현황 보기 &gt;</button>
            </div>
            <% End if %>
        </div>
    </div>
</div><!-- .eventBoard -->

<!-- 팝업 -->
<div class="dim_bnrwrp_wrap" data-popup="50" style="display:none;">
    <div class="dim_bnrwrp" style="z-index:6;">
        <span class="dim_bg">-</span>
    </div>
    <!-- 내 URL 등록현황 보기 S -->
    <div class="dim_popup clickPop sns" style="z-index:6;" id="my_sns_data">
        <p class="tit">
            내 URL 등록현황 보기
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
                        <th>등록일시</th>
                    </tr>
                </thead>
                <tbody></tbody>
            </table>
        </div>
        <div class="btnConfirm">
            <a href="#">
                <img src="<%=img_main%>/m/2020/0420_click/sobang/btn_confirm.png" alt="확인" />
            </a>
        </div>
        <button class="btnClose">팝업 닫기</button>
    </div>
</div>

<input type="text" id="copyurl" style="position:absolute; left:-9999px;" value="https://www.megagong.net<%=request.servervariables("path_info")%>">`;

const css = `.eventBtns{margin-bottom:65px;}`;

const excCss = `.eventBoard{background-color:#fff8db;}`;

const js = ``;

const realJs = `$(function(){
    // 팝업 열기
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
    // 팝업 닫기
    $('.dim_bnrwrp_wrap .dim_popup > button, .clickPop .btnConfirm, .clickPop2 .btnConfirm, .clickPop3 .btnConfirm').on('click', function (e) {
        e.preventDefault();
        $('.dim_bnrwrp_wrap').hide().removeClass('on');
    });
    $('.dim_bg').on('click', function () {
        $('.dim_bnrwrp_wrap .dim_popup > button').trigger('click');
    });
});

var loginShareEvent = function() {
    alert('로그인 후 참여 가능합니다.');
    document.location.href = "/member/login.asp";
}

var finishShareEvent = function() {
    alert("이벤트가 종료되었습니다.");
}
// 공유이미지
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
    var pattern_kor = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
    return pattern_kor.test(str);
}


// URL 소문내기 이벤트
function snsEvent(){
    &lt;%if isEnd then%&gt;
        finishShareEvent();
        return false;
    &lt;%elseif cook_id="" then%&gt;
        loginShareEvent();
        return false;
    &lt;%else%&gt;
        if($('#url').val().trim().length < 1){
            alert('소문낸 URL을 등록해 주세요!');
            return false;
        }

        if (is_url($('#url').val())) {
            alert('입력 내용을 확인해주세요.');
            $('#url').focus();
            return false;
        }
        
        if ($('#url').val().length < 10 || $('#url').val().length > 200) {
            alert('소문 낸 URL은 10자 이상 200자 이하로 작성 가능합니다.');
            return false;
        }

        if (!confirm("등록하시겠습니까?")) {
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
// 현재 페이지  url 복사하기
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
// 페이지  url 복사하기
function urlCopy() {
    &lt;%if isEnd then%&gt;
        finishShareEvent();
        return;
    &lt;%else%&gt;
        copyToClipboard('#copyurl');
        alert('URL 복사 완료!\n소문글에 꼭! 넣어주세요.');
    &lt;%end if%&gt;
}    
// 등록 현황보기
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
        // desc="이벤트 풀페이지에서 사용하는 이벤트 기간 컴포넌트들입니다."
        // image="/images/btn.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        realJs={replaceSpecialJs(realJs)}
        outJs={outJs}
        items={["공유하기 이벤트"]}
        link="<%=dev_url_main%>/event/@template/index_temp.asp"
        onChange={onChange}
      />
    )
  }
</script>