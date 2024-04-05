<!-- #include virtual = "/inc/top.asp"-->
<%
dp1 = 2
dp2 = 3
%>
    <!-- #include virtual = "/inc/aside.asp"-->
    
    <div class="page_wrap" id="page_wrap">

        <div class="page_inner">
            <div class="page_name_wrap">
              <h3 class="page_name">POPUP</h3>
              <h3 class="page_name_sub">팝업</h3>
              <p class="page_sub_text">팝업은 메가공무원 메인 페이지에서부터 홍보페이지까지 특정 정보 전달을 위하여 광범위하게 사용되고 있는 기능입니다.<br>
              별도의 요청이 있던 경우를 제외하고 모든 팝업은 해당 코드를 바탕으로 제작되는 것을 원칙으로 합니다.</p>
              <div class="page_print"><input type="button" value="인쇄하기" id="print" onclick="window.print()"/></div>
            </div>

            
            
            <div class="page_text_wrap">
                <p class="page_head">메인 우측 하단 팝업</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/popup1.png" alt='팝업위치' ></div>
                

<!-- HTML -->
<div class="code-box html"><div id="main_exhibi" class="main_exhibi main_exhibi_pass">
  <a href="javascript:main_exhibi_close();" class="close"><img src="<%=img_main%>/common/btn_close_right_bottom_bnr.png" alt="닫기"></a>
  <div class="exhibi_sd">
    <div class="item">
			<img src="<%=img_main%>/m/2023/0621_coconaki/main_bnr_pc.png" alt="신규입성 흔들리지 않는 마인드셋 김종환입니다.">
			<a class="bnr_link" href="<%=url_main%>/event/2023/06210021/index.asp#eventWrap" title="신규입성 흔들리지 않는 마인드셋 김종환입니다."></a>
		</div>
    <div class="item">
			<img src="<%=img_main%>/m/2023/0621_coconaki/main_bnr_pc.png" alt="신규입성 흔들리지 않는 마인드셋 김종환입니다.">
			<a class="bnr_link" href="<%=url_main%>/event/2023/06210021/index.asp#eventWrap" title="신규입성 흔들리지 않는 마인드셋 김종환입니다."></a>
		</div>
  </div>
</div></div>

<!-- CSS -->
<div class="code-box css"><link type="text/css" rel="stylesheet" href="/css/popup_style.css">
</div>
<style>.main_exhibi.main_exhibi_pass {margin: auto;}

@media (max-width: 1200px){
  .code-box .main_exhibi{display: block;}
}

</style>

<!-- JS -->
<script>$('.main_exhibi_pass .exhibi_sd').slick({
  infinite: true,
  arrow: false,
  speed: 0,
  autoplaySpeed: 4000,
  autoplay: true,
  dots: true,
});

function main_exhibi_close() {
  if ($("#main_exhibi").css("display") == "block") {
    $("#main_exhibi").hide();
  }
}

if ($('.main_exhibi_pass .exhibi_sd .item').length == 0) {
  $('.main_exhibi.main_exhibi_pass .close').hide();
}
</script>

<p class="page_text">메가스터디 공무원 메인 홈페이지에서 사용되는 팝업 기능입니다.<br>
위치는 메인사이트 우측 하단부에 두는 것을 원칙으로 하면서 하단의 띠 배너 보다는 상위에 존재하도록 작업해야 합니다.</p>

<!-- Code View -->
<pre class="language-html html act direct"><code><div id="main_exhibi" class="main_exhibi main_exhibi_pass">
  <a href="javascript:main_exhibi_close();" class="close"><img src="<%=img_main%>/common/btn_close_right_bottom_bnr.png" alt="닫기"></a>
  <div class="exhibi_sd">
    <div class="item">
			<img src="<%=img_main%>/m/2023/0621_coconaki/main_bnr_pc.png" alt="신규입성 흔들리지 않는 마인드셋 김종환입니다.">
			<a class="bnr_link" href="/event/2023/06210021/index.asp#eventWrap" title="신규입성 흔들리지 않는 마인드셋 김종환입니다."></a>
		</div>
    <div class="item">
			<img src="<%=img_main%>/m/2023/0621_coconaki/main_bnr_pc.png" alt="신규입성 흔들리지 않는 마인드셋 김종환입니다.">
			<a class="bnr_link" href="/event/2023/06210021/index.asp#eventWrap" title="신규입성 흔들리지 않는 마인드셋 김종환입니다."></a>
		</div>
  </div>
</div></code></pre>
<pre class="language-html css act direct"><code><!--<link type="text/css" rel="stylesheet" href="/css/popup_style.css">--></code></pre>
<pre class="language-javascript act direct"><code>$('.main_exhibi_pass .exhibi_sd').slick({
  infinite: true,
  arrow: false,
  speed: 0,
  autoplaySpeed: 4000,
  autoplay: true,
  dots: true,
});

function main_exhibi_close() {
  if ($("#main_exhibi").css("display") == "block") {
    $("#main_exhibi").hide();
  }
}

if ($('.main_exhibi_pass .exhibi_sd .item').length == 0) {
  $('.main_exhibi.main_exhibi_pass .close').hide();
}</code></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/megagong.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#팝업배너</p> </li>
                            <li><p>#메인하단</p> </li>
                            <li><p>#슬라이드</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->






            <div class="page_text_wrap">
                <p class="page_head">상단 오늘 하루 보지 않기</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/popup2.png" alt='팝업위치' ></div>
                

<!-- HTML -->
<div class="code-box html"><% if fncRequestCookie("mok_hd_pop_one") = "" then%>
  <div id="mok_hd_pop" class="mok_hd_pop">
		<a href="#none" title="메가공무원 모의면접">
			<img src="<%=img_main%>/m/2022/0503_interviewMock/pop_mok.png" class="" style="cursor:pointer;" alt="메가공무원 모의면접">
		</a>
		<button type="button" class="btn_day_close" onClick="mok_day_close();">오늘 하루 보지 않기</button>
		<button type="button" class="btn_close" onclick="mok_close();">닫기</button>
	</div>
<% end if%>
</div>

<!-- CSS -->
<div class="code-box css"><link type="text/css" rel="stylesheet" href="/css/popup_style.css">
</div>
<style>.mok_hd_pop {margin: auto;}
@media (max-width: 1200px){
  .code-box .mok_hd_pop {display: block;}
}
</style>

<!-- JS -->
<script>function mok_close() {
  $("#mok_hd_pop").hide();
}
function mok_day_close() {
  setCookie("mok_hd_pop_one", "close", 1);
  // setCookieToday('mok_hd_pop_one', 'close', 1);
  mok_close();
}
</script>

<p class="page_text">메가스터디 공무원 메인 홈페이지에서 사용되는 팝업 기능입니다.<br>
주로 메인사이트 우측 상단부에서 사용되며 '오늘 하루 보지 않기' 버튼을 통해 하루동안 팝업을 차단하는 기능을 제공합니다. </p>

<!-- Code View -->
<pre class="language-html html act direct"><code>&lt;% if fncRequestCookie("mok_hd_pop_one") = "" then%&gt;
  <div id="mok_hd_pop" class="mok_hd_pop">
		<a href="#none" title="메가공무원 모의면접">
			<img src="<%=img_main%>/m/2022/0503_interviewMock/pop_mok.png" class="" style="cursor:pointer;" alt="메가공무원 모의면접">
		</a>
		<button type="button" class="btn_day_close" onClick="mok_day_close();">오늘 하루 보지 않기</button>
		<button type="button" class="btn_close" onclick="mok_close();">닫기</button>
	</div>
&lt;% end if%&gt;</code></pre>
<pre class="language-html css act direct"><code><link type="text/css" rel="stylesheet" href="/css/popup_style.css"></code></pre>
<pre class="language-javascript act direct"><code>function mok_close() {
  $("#mok_hd_pop").hide();
}
function mok_day_close() {
  setCookie("mok_hd_pop_one", "close", 1);
  // setCookieToday('mok_hd_pop_one', 'close', 1);
  mok_close();
}</code></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/megagong.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#하루보지않기</p> </li>
                            <li><p>#상단팝업</p> </li>
                            <li><p>#배너</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->







            <div class="page_text_wrap">
                <p class="page_head">중앙 오늘 하루 닫기 팝업</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/popup4.png" alt='팝업위치' ></div>

<!-- HTML -->
<div class="code-box html"><div class="pop_btn_wrap">
  <a class="mg_btn_base sm mg_txt" href="#" onclick="deleteCookieAndReload('todayPopupCookie'); return false;">오늘 하루 닫기 팝업 관련 쿠키값 초기화</a>
</div>
<%if fncRequestCookie("todayPopupCookie") = "" then%>
<div class="cmg_popup_wrap mg_today" id="popupToday" style="position: relative; /*margin: 0;*/ /*width: 434px;*/ ">
  <div class="mg_btn_wrap right top">
    <button class="mg_btn_base sm" onclick="closeCmegaPopupToday();">오늘 하루 닫기</button>
    <button class="mg_btn_base sm" onclick="closeCmegaPopup('popupToday')">닫기</button>
  </div>
  <div class="img_area">
    <img class="pc_view" src="<%=img_main%>/m/2022/0901_thanksgiving/popup_img.png" alt="">
    <img class="mo_view" src="<%=img_main%>/m/2022/0901_thanksgiving/m_popup_img.png" alt="">
    <a href="<%=url_main%>/book/notice/view.asp?idx=3952" class="btn_link view" target="_blank">자세히 보기</a>
    <a href="<%=url_main%>/help/qna/write.asp" class="btn_link go" target="_blank">학습지원센터 바로가기</a>
  </div>
</div>
<%End if%>
</div>

<!-- CSS -->
<div class="code-box css"><link type="text/css" rel="stylesheet" href="/css/popup_style.css">
</div>
<style>
.cmg_popup_wrap {margin: auto;}
</style>

<!-- JS -->
<script>if(getCookie('todayPopupCookie') == 'close'){
  closeCmegaPopup('popupToday');
}
function closeCmegaPopupToday() {
  setCookiePopupToday('todayPopupCookie', 'close', 1);
  closeCmegaPopup('popupToday');
}
</script>

<p class="page_text">메가스터디 공무원 메인 홈페이지에서 사용되는 팝업 기능입니다.<br>
'오늘 하루 보지 않기'와 마찬가지로 동일하게 하루동안 팝업을 닫는 기능을 제공합니다.</p>

<!-- Code View -->
<pre class="language-html html act direct"><code><div class="pop_btn_wrap">
  <a class="mg_btn_base sm mg_txt" href="#" onclick="deleteCookieAndReload('todayPopupCookie'); return false;">오늘 하루 닫기 팝업 관련 쿠키값 초기화</a>
</div>
&lt;%if fncRequestCookie("todayPopupCookie") = "" then%&gt;
<div class="cmg_popup_wrap mg_today" id="popupToday" style="position: relative; margin: 0; width: 434px;">
  <div class="mg_btn_wrap right top">
    <button class="mg_btn_base sm" onclick="closeCmegaPopupToday();">오늘 하루 닫기</button>
    <button class="mg_btn_base sm" onclick="closeCmegaPopup('popupToday')">닫기</button>
  </div>
  <div class="img_area">
    <img class="pc_view" src="<%=img_main%>/m/2022/0901_thanksgiving/popup_img.png" alt="">
    <img class="mo_view" src="<%=img_main%>/m/2022/0901_thanksgiving/m_popup_img.png" alt="">
    <a href="<%=url_main%>/book/notice/view.asp?idx=3952" class="btn_link view" target="_blank">자세히 보기</a>
    <a href="<%=url_main%>/help/qna/write.asp" class="btn_link go" target="_blank">학습지원센터 바로가기</a>
  </div>
</div>
&lt;%End if%&gt;
</code></pre>
<pre class="language-html css act direct"><code><link type="text/css" rel="stylesheet" href="/css/popup_style.css"></code></pre>
<pre class="language-javascript act direct"><code>if(getCookie('todayPopupCookie') == 'close'){
  closeCmegaPopup('popupToday');
}
function closeCmegaPopupToday() {
  setCookiePopupToday('todayPopupCookie', 'close', 1);
  closeCmegaPopup('popupToday');
}</code></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/megagong.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#팝업</p> </li>
                            <li><p>#하루보지않기</p> </li>
                            <li><p>#안내팝업</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->






            <div class="page_text_wrap">
                <p class="page_head">딤 팝업</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/popup5.png" alt='팝업위치' ></div>

<!-- HTML -->
<div class="code-box html"><div class="pop_btn_wrap">
    <a class="mg_btn_base sm" href="#" onclick="openMegaPopup('popupDim', 1); return false;">딤 팝업 호출</a>
    <a class="mg_btn_base sm mg_txt" href="#" onclick="deleteCookieAndReload('todayPopupDimCookie');  return false;">딤 관련 쿠키값 초기화</a>
  </div>
  <%If fncRequestCookie("todayPopupDimCookie") = "" then%>
  <div class="mg_popup_wrap dim mfp-hide mg_today z-anim" id="popupDim" data-width="434">
    <div class="cmg_popup_dimm" onclick="closeCmegaDimPopup('popupDim')"></div>
    <div class="cmg_popup_inner dim">
      <div class="mg_btn_wrap right top">
        <button class="mg_btn_base sm" onclick="closeCmegapopupDimToday();">오늘 하루 닫기</button>
        <button class="mg_btn_base sm" onclick="closeCmegaDimPopup('popupDim')">닫기</button>
      </div>
      <div class="content_inner" >
        <img class="pc_view" src="<%=img_main%>/m/2022/0901_thanksgiving/popup_img.png" alt="" />
        <img class="mo_view" src="<%=img_main%>/m/2022/0901_thanksgiving/m_popup_img.png" alt="" />
      </div>
    </div>
  </div>
  <%End if%></div>
<script>if(getCookie('todayPopupDimCookie') == 'close'){
  closeCmegaDimPopup('popupDim');
}
function closeCmegapopupDimToday() {
  setCookiePopupToday('todayPopupDimCookie', 'close', 1);
  closeCmegaDimPopup('popupDim');
    $('.mfp-close').trigger('click');
}

function closeCmegaDimPopup() {
  $('.mfp-close').trigger('click');
}</script>



<!-- CSS -->
<div class="code-box css"><link type="text/css" rel="stylesheet" href="/css/popup_style.css">
</div>
<style>.cmg_popup_wrap {margin: auto;}
</style>

<!-- JS -->
<script>
</script>

<p class="page_text">메가스터디 공무원 메인 홈페이지 및 다양한 홍보 페이지에서 사용되는 팝업 기능입니다.<br>
팝업이 보여질 때, 주변 배경부는 딤드(Dimmed) 처리가 되어 사용자가 원활하게<br> 
팝업 내부의 정보를 확인할 수 있습니다. </p>

<!-- Code View -->
<pre class="language-html html act direct"><code>&lt;%if fncRequestCookie("todayPopupDimCookie") = "" then%&gt;
  <a class="mg_btn_base sm" href="#" onclick="openMegaPopup('popupDim', 1); return false;">딤 팝업 호출</a>
  <div class="mg_popup_wrap mfp-hide mg_today z-anim" id="popupDim" data-width="434">
    <div class="cmg_popup_dimm" onclick="closeCmegaPopup('popupDim')"></div>
    <div class="cmg_popup_inner dim">
      <div class="mg_btn_wrap right top">
        <button class="mg_btn_base sm" onclick="closeCmegapopupDimToday();">오늘 하루 닫기</button>
        <button class="mg_btn_base sm" onclick="closeCmegaPopup('popupDim')">닫기</button>
      </div>
      <div class="content_inner">
        <img class="pc_view" src="<%=img_main%>/m/2022/0901_thanksgiving/popup_img.png" alt="">
        <img class="mo_view" src="<%=img_main%>/m/2022/0901_thanksgiving/m_popup_img.png" alt="">
      </div>
    </div>
  </div><!-- .cmg_popup_wrap -->
&lt;%end if%&gt;</code></pre>
<pre class="language-html css act direct"><code><link type="text/css" rel="stylesheet" href="/css/popup_style.css"></code></pre>
<pre class="language-javascript act direct"><code>if(getCookie('todayPopupDimCookie') == 'close'){
  closeCmegaDimPopup('popupDim');
}
function closeCmegapopupDimToday() {
  setCookiePopupToday('todayPopupDimCookie', 'close', 1);
  closeCmegaDimPopup('popupDim');
    $('.mfp-close').trigger('click');
}
function closeCmegaDimPopup() {
  $('.mfp-close').trigger('click');
}</code></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="https://sobangcampus.megagong.net/megagong.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#딤팝업</p> </li>
                            <li><p>#딤드</p> </li>
                            <li><p>#안내팝업</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->






            <div class="page_text_wrap">
                <p class="page_head">영상 팝업 - 비디오</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/popup3.png" alt='팝업위치' ></div>

<!-- HTML -->
<div class="code-box html"><div class="pop_btn_wrap">
  <a class="mg_btn_base sm" href="#" onclick="openCmegaPopup('popupVideo'); return false;">영상 팝업 호출</a>
  <a class="mg_btn_base sm mg_txt" href="#" onclick="deleteCookieAndReload('todayPopupVideoCookie'); return false;">영상 팝업 관련 쿠키값 초기화</a>
</div>
<%If fncRequestCookie("todayPopupVideoCookie") = "" then%>
<div class="cmg_popup_wrap cmg_fullpage" id="popupVideo">
  <div class="cmg_popup_dimm" onclick="closeCmegaPopup('popupVideo')"></div>
  <div class="cmg_popup_inner">
    <div class="mg_btn_wrap right top">
      <button class="mg_btn_base sm" onclick="closeCmegaPopupVideoToday();">오늘 하루 닫기</button>
      <button class="mg_btn_base sm" onclick="closeCmegaPopup('popupVideo')">닫기</button>
    </div>
    <div class="video_area">
      <video muted autoplay loop playsinline>
        <source src="<%=img_main%>/m/video/video_teaser.mp4" type="video/mp4">
      </video>
    </div>
  </div>
</div><!-- .cmg_popup_wrap -->
<%End if%>
</div>

<!-- CSS -->
<div class="code-box css"><link type="text/css" rel="stylesheet" href="/css/popup_style.css">
</div>
<style>#popupVideo{display:none;}</style>

<!-- JS -->
<script>if(getCookie('todayPopupVideoCookie') == 'close'){
  closeCmegaPopup('popupVideo');
}
function closeCmegaPopupVideoToday() {
  setCookiePopupToday('todayPopupVideoCookie', 'close', 1);
  closeCmegaPopup('popupVideo');
}</script>

<p class="page_text">메가스터디 공무원 메인 홈페이지 및 다양한 홍보 페이지에서 사용되는 팝업 기능입니다.<br>
딤드(Dimmed)효과와 함께 화면 중앙부에 고유 영상이 재생됩니다.<br>
준비된 영상 파일을 통해 재생될 영상을 교체할 수 있습니다.</p>

<!-- Code View -->
<pre class="language-html html act direct"><code>&lt;%If fncRequestCookie("todayPopupVideoCookie") = "" then%&gt;
<div class="cmg_popup_wrap cmg_fullpage" id="popupVideo">
  <div class="cmg_popup_dimm" onclick="closeCmegaPopup('popupVideo')"></div>
  <div class="cmg_popup_inner">
    <div class="mg_btn_wrap right top">
      <button class="mg_btn_base sm" onclick="closeCmegaPopupVideoToday();">오늘 하루 닫기</button>
      <button class="mg_btn_base sm" onclick="closeCmegaPopup('popupVideo')">닫기</button>
    </div>
    <div class="video_area">
      <video muted autoplay loop playsinline>
        <source src="<%=img_main%>/m/video/video_teaser.mp4" type="video/mp4">
      </video>
    </div>
  </div>
</div><!-- .cmg_popup_wrap -->
&lt;%End if%&gt;</code></pre>
<pre class="language-html css act direct"><code><link type="text/css" rel="stylesheet" href="/css/popup_style.css"></code></pre>
<pre class="language-css act direct"><code>#popupVideo{display:none;}</code></pre>
<pre class="language-javascript act direct"><code>if(getCookie('todayPopupVideoCookie') == 'close'){
  closeCmegaPopup('popupVideo');
}
function closeCmegaPopupVideoToday() {
  setCookiePopupToday('todayPopupVideoCookie', 'close', 1);
  closeCmegaPopup('popupVideo');
}</code></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/megagong.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#영상팝업</p> </li>
                            <li><p>#영상파일</p> </li>
                            <li><p>#딤드</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->







            <div class="page_text_wrap">
                <p class="page_head">영상 팝업 - 유튜브</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/popup3.png" alt='팝업위치' ></div>

<!-- HTML -->
<div class="code-box html"><div class="pop_btn_wrap">
  <a class="mg_btn_base sm" href="#" onclick="openCmegaPopup('popupYoutube'); return false;">영상 팝업 호출</a>
  <a class="mg_btn_base sm mg_txt" href="#" onclick="deleteCookieAndReload('todayPopupYoutubeCookie'); return false;">영상 팝업 관련 쿠키값 초기화</a>
</div>
<%If fncRequestCookie("todayPopupYoutubeCookie") = "" then%>
<div class="cmg_popup_wrap cmg_fullpage" id="popupYoutube">
  <div class="cmg_popup_dimm" onclick="closeCmegaPopup('popupYoutube')"></div>
  <div class="cmg_popup_inner">
    <div class="mg_btn_wrap right top">
      <button class="mg_btn_base sm" onclick="closeCmegaPopupYoutubeToday();">오늘 하루 닫기</button>
      <button class="mg_btn_base sm" onclick="closeCmegaPopup('popupYoutube')">닫기</button>
    </div>
    <div class="video_area">
      <div class="video_area youtube">
        <iframe width="100%" height="100%" src="https://www.youtube.com/embed/KRapa6dOBAI?autoplay=1&mute=1&rel=0&controls=0&disablekb=1" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
      </div>
    </div>
  </div>
</div><!-- .cmg_popup_wrap -->
<%End if%>
</div>

<!-- CSS -->
<div class="code-box css"><link type="text/css" rel="stylesheet" href="/css/popup_style.css">
</div>
<style>#popupYoutube{display:none;}</style>

<!-- JS -->
<script>if(getCookie('todayPopupYoutubeCookie') == 'close'){
  closeCmegaPopup('popupYoutube');
}
function closeCmegaPopupYoutubeToday() {
  setCookiePopupToday('todayPopupYoutubeCookie', 'close', 1);
  closeCmegaPopup('popupYoutube');
}</script>

<p class="page_text">메가스터디 공무원 메인 홈페이지 및 다양한 홍보 페이지에서 사용되는 팝업 기능입니다.<br>
딤드(Dimmed)효과와 함께 화면 중앙부에 특정 유튜브 영상이 재생될 수 있습니다.<br>
준비된 유튜브 영상의 주소를 통해 재생될 영상을 교체할 수 있습니다.</p>

<!-- Code View -->
<pre class="language-html html act direct"><code>&lt;%If fncRequestCookie("todayPopupYoutubeCookie") = "" then%&gt;
<div class="cmg_popup_wrap cmg_fullpage" id="popupYoutube">
  <div class="cmg_popup_dimm" onclick="closeCmegaPopup('popupYoutube')"></div>
  <div class="cmg_popup_inner">
    <div class="mg_btn_wrap right top">
      <button class="mg_btn_base sm" onclick="closeCmegaPopupYoutubeToday();">오늘 하루 닫기</button>
      <button class="mg_btn_base sm" onclick="closeCmegaPopup('popupYoutube')">닫기</button>
    </div>
    <div class="video_area">
      <div class="video_area youtube">
        <iframe width="100%" height="100%" src="https://www.youtube.com/embed/KRapa6dOBAI?autoplay=1&mute=1&rel=0&controls=0&disablekb=1" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
      </div>
    </div>
  </div>
</div><!-- .cmg_popup_wrap -->
&lt;%End if%&gt;</code></pre>
<pre class="language-html css act direct"><code><link type="text/css" rel="stylesheet" href="/css/popup_style.css"></code></pre>
<pre class="language-css act direct"><code>#popupYoutube{display:none;}</code></pre>
<pre class="language-javascript act direct"><code>if(getCookie('todayPopupYoutubeCookie') == 'close'){
  closeCmegaPopup('popupYoutube');
}
function closeCmegaPopupYoutubeToday() {
  setCookiePopupToday('todayPopupYoutubeCookie', 'close', 1);
  closeCmegaPopup('popupYoutube');
}</code></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/megagong.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#영상팝업</p> </li>
                            <li><p>#유튜브</p> </li>
                            <li><p>#딤드</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->








            <div class="page_text_wrap">
                <p class="page_head">팝업 호출 - Fade-In & Body 움직임 </p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/popup6.png" alt='팝업위치' ></div>

<!-- HTML -->
<div class="code-box html"><div class="pop_btn_wrap">
  <a class="mg_btn_base sm" href="#" onclick="openMegaPopup('popupFadeIn', 1, true, false); return false;">당첨 팝업</a>
</div>

<div class="mg_popup_wrap z-anim mfp-hide" id="popupFadeIn" data-width="420">
  <div class="content_area">
    <div class="content_inner pb20">
      <p class="m_tit">2022.8.17.<br /><strong class="blue">당첨을 축하드립니다!</strong></p>
      <div><img src="<%=img_main%>/m/2022/0907_paper/prize_img02.png" alt="미스터피자" /></div>
    </div>
    <div class="tit_area blue">[메가공무원] 거꾸로 플래너 핑크 컬러</div>
    <div class="content_inner">
      <ul class="s_info">
        <li><span>※</span>당첨되신 거꾸로 플래너는 7/20(수)  발송될 예정이오나, 내부 사정에 의해  발송일이 변경될 수 있습니다.</li>
        <li><span>※</span>거꾸로 플래너는 회원 정보 상의 주소 ‘%주소주소주소주소주소주소주소%’ 로 발송될 예정입니다. <a href="<%=url_main%>/member/Account_Chk.asp">[ 주소 변경 &gt; ]</a></li>
        <li><span>※</span>주소 미기재 & 오기재로 인한 재발송은 불가합니다.</li>
      </ul>
      <div class="mg_btn_wrap">
        <a href="#" class="mg_btn_base" onclick="$.magnificPopup.close(); return false;">확인</a>
      </div>
    </div>
  </div>
</div></div>

<!-- CSS -->
<!-- JS -->
<p class="page_text">메가스터디 공무원 홍보 페이지에서 주로 사용되는 팝업 기능입니다.<br>
지정된 버튼을 클릭하면 페이드인(Fade-In)효과와 함께 딤드(Dimmed) 처리된 팝업이 나타납니다.<br>
해당 코드를 통해 제공되는 팝업은 마우스 스크롤 등을 통해 팝업 상태를 유지하면서 화면 Body 이동이 가능합니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/megagong.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#당첨팝업</p> </li>
                            <li><p>#나타나기</p> </li>
                            <li><p>#딤드</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->








            <div class="page_text_wrap">
                <p class="page_head">팝업 호출 - Fade-In & Body 고정 </p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/popup6.png" alt='팝업위치' ></div>

<!-- HTML -->
<div class="code-box html"><div class="pop_btn_wrap">
  <a class="mg_btn_base sm" href="#" onclick="openMegaPopup('popupFadeIn', 1); return false;">당첨 팝업</a>
</div>

<div class="mg_popup_wrap z-anim mfp-hide" id="popupFadeIn" data-width="420">
  <div class="content_area">
    <div class="content_inner pb20">
      <p class="m_tit">2022.8.17.<br><strong class="blue">당첨을 축하드립니다!</strong></p>
      <div><img src="<%=img_main%>/m/2022/0907_paper/prize_img02.png" alt="미스터피자"></div>
    </div>
    <div class="tit_area blue">[메가공무원] 거꾸로 플래너 핑크 컬러</div>
    <div class="content_inner">
      <ul class="s_info">
        <li><span>※</span>당첨되신 거꾸로 플래너는 7/20(수)  발송될 예정이오나, 내부 사정에 의해  발송일이 변경될 수 있습니다.</li>
        <li><span>※</span>거꾸로 플래너는 회원 정보 상의 주소 ‘%주소주소주소주소주소주소주소%’ 로 발송될 예정입니다. <a href="#">[ 주소 변경 > ]</a></li>
        <li><span>※</span>주소 미기재 & 오기재로 인한 재발송은 불가합니다.</li>
      </ul>
      <div class="mg_btn_wrap">
        <a href="#" class="mg_btn_base" onclick="$.magnificPopup.close();">확인</a>
      </div>
    </div>
  </div>
</div></div>

<!-- CSS -->
<!-- JS -->

<p class="page_text">메가스터디 공무원 홍보 페이지에서 주로 사용되는 팝업 기능입니다.<br>
지정된 버튼을 클릭하면 페이드인(Fade-In)효과와 함께 딤드(Dimmed) 처리된 팝업이 나타납니다.<br>
해당 코드를 통해 제공되는 팝업은 마우스 스크롤 등을 통한 화면 Body 이동이 불가능합니다.<br> 
팝업을 닫고 난 후에는 다시 스크롤 이동이 가능해집니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/megagong.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#당첨팝업</p> </li>
                            <li><p>#배경고정</p> </li>
                            <li><p>#딤드</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->



            <div class="page_text_wrap">
                <p class="page_head">팝업 호출 - Fade Up & Down & Body 고정 </p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/popup8.png" alt='팝업위치' ></div>
                <div class="position_site"><img src="/images/popup7.png" alt='팝업위치' ></div>

<!-- HTML -->
<div class="code-box html"><div class="pop_btn_wrap">
  <a class="mg_btn_base sm" href="#" onclick="openMegaPopup('popupFadeDown', 3)">상단에서 붙어서 내려옴</a>
  <a class="mg_btn_base sm" href="#" onclick="openMegaPopup('popupFadeUp', 2)">하단에서 붙어서 올라옴</a>
</div>
    
<div class="mg_popup_wrap z-anim mfp-hide" id="popupFadeUp" data-width="375">
  <div class="content_area">
    <div class="content_inner"></div>
  </div>
</div><!-- .mg_popup_wrap -->

<div class="mg_popup_wrap mfp-hide" id="popupFadeDown" data-width="375">
  <div class="content_area">
    <div class="content_inner"></div>
  </div>
</div></div>

<!-- CSS -->
<style>
</style>

<!-- JS -->

<p class="page_text">메가스터디 공무원 홍보 페이지에서 주로 사용되는 팝업 기능입니다.<br>
위 혹은 아래에서 페이드업(Fade-Up) 및 페이드다운(Fade-Down)효과와 함께 딤드(Dimmed) 처리된 팝업이 나타납니다.<br>
해당 코드를 통해 제공되는 팝업은 마우스 스크롤 등을 통한 화면 Body 이동이 불가능합니다.<br>
또한, iOS에서도 화면 상태가 고정됩니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>


                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/megagong.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#특정위치</p> </li>
                            <li><p>#올라오기</p> </li>
                            <li><p>#내려오기</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->







            <div class="page_text_wrap">
                <p class="page_head">(개발 대응1) 알림 신청 팝업 호출 </p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/popup6.png" alt='팝업위치' ></div>

<!-- HTML -->
<div class="code-box html"><div class="pop_btn_wrap">
  <a class="mg_btn_base sm" href="#" onclick="openNoticePopup(); return false;">알림신청 팝업 - 팝업 열고 닫을 때 개발로직 들어가는 케이스</a>
</div>

<div class="mg_popup_wrap z-anim mfp-hide" id="popupFadeInNotice" data-width="700">
  <div class="content_area">
    <div class="content_inner">
      <a href="#" class="mg_popup_close" onclick="closeNoticePopup(); return false;"></a>
      <p class="b_tit">알.쓸.신.요+ 알림 신청</p>
      <p class="s_tit">2023 NEW 요트+와 함께하는 알.쓸.신.요+ 를 놓치지 않도록<br>LIVE 시작 10분 전, 알림 문자를 보내드립니다.</p>
      <div class="mg_tb_wrap mt30">
        <table summary="신청 요약" class="mg_tb_form">
          <colgroup>
            <col width="120">
            <col width="*">
          </colgroup>
          <tbody>
            <tr>
              <th scope="row">이름</th>
              <td>홍길동</td>
            </tr>
            <tr>
              <th scope="row">휴대폰 번호</th>
              <td>
                <input type="text" class="mg_input" value="010-1234-5678">
              </td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="mg_tb_wrap mt30">
        <table summary="인증 관련" class="mg_tb_form">
          <colgroup>
            <col width="120">
            <col width="*">
          </colgroup>
          <tbody>
            <tr>
              <th scope="row">인증 이미지</th>
              <td>
                <div class="mg_filebox clfix">
                  <div class="filename">
                    <input type="text" id="filename" name="filename" value="인증 이미지를 업로드해 주세요.">
                    <a id="btn_fileDel" href="javascript:void(0);" onclick="document.getElementById('filename').value='인증 이미지를 업로드해 주세요.';document.getElementById('attfile').value='';document.getElementById('attfile_ori_name').value=''; $('#btn_fileDel').show();" title="삭제">[삭제]</a>
                  </div>
                  <div class="filebtn">
                    <label for="attfile" style="cursor:pointer">파일 선택</label>
                  </div>
                  <input type="file" id="attfile" name="attfile" value="" onchange="ChangeFile(this, 'filename')">
                  <input type="hidden" name="attfile_file_name" id="attfile_name" value="">
                  <input type="hidden" name="attfile_size" id="attfile_size">
                  <input type="hidden" name="attfile_url" id="attfile_url">
                  <input type="hidden" name="attfile_file_name_ori" id="attfile_ori_name" value="">
                </div>
              </td>
            </tr>
            <tr>
              <th scope="row">인증 URL</th>
              <td><input type="text" class="mg_input" name="cert_url" id="cert_url" value="" placeholder="게시글의 URL을 입력해 주세요."></td>
            </tr>
            <tr>
              <th scope="row">내용</th>
              <td><textarea class="mg_textarea" name="p_intro" id="p_intro" cols="30" rows="10" maxlength="500" placeholder="리뷰 내용은 10자 이상 500자 이하로 작성 가능합니다."></textarea></td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="mg_info_wrap mt30">
        <p class="info_tit">■ 유의사항</p>
          <ul class="info_list">
            <li><span>※</span>해당 알림 서비스는 2022.09.13.(화) 18:50 SMS로 발송됩니다.</li>
            <li><span>※</span>휴대폰 번호는 회원정보 수정에서 변경 가능합니다. <a href="#">회원정보 수정 ></a></li>
            <li><span>※</span>문자알림 서비스는 SMS 수신동의를 해야 신청이 가능하며, <br>비동의로 설정되었을 경우 신청 여부와 상관없이 알림문자 발송이 불가합니다. <a href="#">SMS 수신동의 ></a></li>
          </ul>
      </div>
      <div class="mg_btn_wrap">
        <a href="#" class="mg_btn_base xl" onclick="completeNotice(); return false;">알림 신청하기 ></a>
      </div>
    </div>
  </div>
</div></div>

<!-- CSS -->
<!-- JS -->
<script>var isNoticePopupDimm = false;

function openNoticePopup() {
  var q = window.confirm('팝업을 띄우시겠습니까?');
  if (q) {
    isNoticePopupDimm = true;
    openMegaPopup('popupFadeInNotice', 4, false, true);
  }
}

function closeNoticePopup() {
  var q = window.confirm('알림신청을 하지 않고 팝업을 닫으시겠습니까?');
  if (q) {
    isNoticePopupDimm = false;
    $.magnificPopup.close();
  }
}

function completeNotice() {
  alert('알림 신청이 완료되었습니다.');
  $.magnificPopup.close();
}

$(document).on('click', '.mg_popup_dimm', function(){
  if (isNoticePopupDimm) {
    closeNoticePopup();
  }
});

//파일 업로드
var getFileExtention = function(filename) {
  return filename.substring(filename.lastIndexOf('.')+1, filename.length) || filename;
}

var maxSize = 5 * 1024 * 1024;//5MB  
var ChangeFile = function(obj, filename_field) {
  if (typeof obj.files[0] !== "undefined") {
    var file_ext = getFileExtention(obj.files[0].name.toLowerCase());
    //if (file_ext != 'jpg' && file_ext != 'jpeg' && file_ext != 'gif' && file_ext != 'png' && file_ext != 'pdf') {
    if (file_ext != 'jpg' && file_ext != 'jpeg' && file_ext != 'gif' && file_ext != 'png') {
      alert('JPG, JPEG, GIF 또는 PNG 확장자 파일만 업로드 가능합니다.');
      obj.files[0].value = null;
      tempHtml = "<input type='file' id='attfile' name='attfile' value='' onchange=\"ChangeFile(this, 'filename')\">";
      $('#attfile').replaceWith(tempHtml);         
      document.getElementById('attfile_ori_name').value='';       
      document.getElementById(filename_field).value="인증 이미지를 업로드해 주세요.";
      return;
    } else {
    //첨부파일 사이즈 체크      
      if(obj.files[0].size > maxSize){
        tempHtml = "<input type='file' id='attfile' name='attfile' value='' onchange=\"ChangeFile(this, 'filename')\">";
        $('#attfile').replaceWith(tempHtml);     
        document.getElementById('attfile_ori_name').value='';                  
        alert("첨부파일은 5MB 이하로 등록이 가능합니다.");
        return;
        }
      document.getElementById(filename_field).value=obj.files[0].name;
      fncFileUPloadNew('','board','event','<%=evt_cd%>','attfile', ',', 'N', 'Y');                               
    }
      $("#btn_fileDel").show();
  } else {
    document.getElementById(filename_field).value="인증 이미지를 업로드해 주세요.";
    document.getElementById('attfile').value='';
    document.getElementById('attfile_ori_name').value='';}
}

function fncFileUPloadNew(form_id,dir,sub_dir,sub_sub_dir,id_str, delim, date_yn, rename_yn) {
  if( (id_str == "" || id_str == undefined) || (delim == "" || delim == undefined) ) {
    return false;
  }                        
  var target_tot = id_str.split(delim).length;
  var proc_chk_tot = 0;
  id_str.split(delim).forEach(function(i) {
    var id_txt = "filename";        

    if(i!=""){
      var formData = new FormData();

      formData.append("dir",dir);
      formData.append("sub_dir",sub_dir);
      formData.append("sub_sub_dir",sub_sub_dir);
      formData.append("attfile", jQuery("#"+i)[0].files[0]);
      formData.append("new_yn","Y");
      formData.append("date_yn",date_yn);
      formData.append("rename_yn",rename_yn);
      formData.append("filesize","5");

      var tmp_file_name = $("#"+i).val();                
      var file_name = tmp_file_name.substring(tmp_file_name.lastIndexOf("\\")+1);
      var file_main = document.domain.indexOf('dev') < 0 ? 'https://file.megagong.net' : 'https://filedev.megagong.net';

      jQuery.ajax({
        url : file_main+"/file/file_upload_j.asp"
        , type : "POST"
        , processData : false
        , contentType : false
        , xhrFields: {
          withCredentials: true
        }
        //, contentType: 'application/x-www-form-urlencoded; charset=euc-kr'
        , data : formData
      })
      .done(function(json) {
        var obj = JSON.parse(json);
        a=obj;
        if(obj["err_code"] < 0) {
          $("#"+id_txt).val("첨부파일을 등록해주세요.");
          alert(obj["upload_msg"]);
          return false;
        } else {
          $("#"+i+"_name").val(obj["file_info"]["file_name"]);
          $("#"+i+"_size").val(obj["file_info"]["file_size"]);
          $("#"+i+"_url").val(obj["file_info"]["file_url"]);

          $("#"+i+"_ori_name").val(file_name);
        }
      })
      .fail(function() {
        proc_chk_tot++;
        if(proc_chk_tot == target_tot) {
        //document.myform.submit();
          if(form_id!="") {
            document.getElementById(form_id).submit();
          }
        }
      })
      .always(function() {
        proc_chk_tot++;
        if(proc_chk_tot == target_tot) {
          //document.myform.submit();
          if(form_id!="") {
            document.getElementById(form_id).submit();
          }
        }
      });
    }        
  });
}
</script>

<p class="page_text">메가스터디 공무원 홍보 페이지에서 '알림신청' 등을 위해 주로 사용되는 팝업 기능입니다.<br>
지정된 버튼을 클릭하면 페이드인(Fade-In)효과와 함께 딤드(Dimmed) 처리된 팝업이 나타납니다.<br>
해당 팝업에서는 이미지 파일 및 사용자가 제공할 정보 내용 등을 직접 작성하여 서버에 제출할 수 있습니다.<br>
또한 팝업을 열고 닫을 때에 별도의 개발로직을 넣을 수 있습니다. <br>
해당 코드를 통해 제공되는 팝업은 마우스 스크롤 등을 통한 화면 Body 이동이 불가능합니다. 다만, iOS에서는 이동이 가능합니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-javascript act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/megagong.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#개발대응</p> </li>
                            <li><p>#알림신청</p> </li>
                            <li><p>#딤드</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->



            <div class="page_text_wrap">
                <p class="page_head">(개발 대응2) 알림 신청 팝업 호출 </p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/popup6.png" alt='팝업위치' ></div>

<!-- HTML -->
<div class="code-box html"><div class="pop_btn_wrap">
  <a class="mg_btn_base sm" href="#" onclick="openSamplePopup2(); return false;">신청 팝업2 - 팝업 열고 닫을 때 개발로직 들어가는 케이스</a>
</div>

<div class="mg_popup_wrap z-anim mfp-hide" id="popupSample" data-width="700">
  <div class="content_area">
    <div class="content_inner">
      <a href="#" class="mg_popup_close" onclick="closeSamplePopup2(); return false;"></a>
      <p class="b_tit">샘플 팝업</p>
      <p class="s_tit">샘플 내용</p>
      <div class="mg_tb_wrap mt30">
        <table summary="신청 요약" class="mg_tb_form">
          <colgroup>
            <col width="120">
            <col width="*">
          </colgroup>
          <tbody>
            <tr>
              <th scope="row">이름</th>
              <td>홍길동</td>
            </tr>
            <tr>
              <th scope="row">휴대폰 번호</th>
              <td>
                <input type="text" class="mg_input" value="010-1234-5678">
              </td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="mg_info_wrap mt30">
        <p class="info_tit">■ 유의사항</p>
          <ul class="info_list">
            <li><span>※</span>해당 알림 서비스는 2022.09.13.(화) 18:50 SMS로 발송됩니다.</li>
            <li><span>※</span>휴대폰 번호는 회원정보 수정에서 변경 가능합니다. <a href="#">회원정보 수정 ></a></li>
            <li><span>※</span>문자알림 서비스는 SMS 수신동의를 해야 신청이 가능하며, <br>비동의로 설정되었을 경우 신청 여부와 상관없이 알림문자 발송이 불가합니다. <a href="#">SMS 수신동의 ></a></li>
          </ul>
      </div>
      <div class="mg_btn_wrap">
        <a href="#" class="mg_btn_base xl" onclick="completeSample2(); return false;">알림 신청하기 ></a>
      </div>
    </div>
  </div>
</div></div>

<!-- CSS -->
<!-- JS -->
<script>function openSamplePopup2() {
  var q = window.confirm('팝업을 띄우시겠습니까?');
  if (q) {
    openMegaPopup('popupSample', 5, false, true);
  }
}

function closeSamplePopup2() {
  var q = window.confirm('신청을 하지 않고 팝업을 닫으시겠습니까?');
  if (q) {
    isNoticePopupDimm = false;
    $.magnificPopup.close();
  }
}

function completeSample2() {
  alert('신청이 완료되었습니다.');
  $.magnificPopup.close();
}

$(document).on('click', '.mg_popup_dimm2', function(){
  closeSamplePopup2();
});
</script>

<p class="page_text">메가스터디 공무원 홍보 페이지에서 개발 로직이 들어갔을 때 주로 사용되는 팝업 기능입니다.<br>
지정된 버튼을 클릭하면 페이드인(Fade-In)효과와 함께 딤드(Dimmed) 처리된 팝업이 나타납니다.<br>
또한 팝업을 열고 닫을 때에 별도의 개발로직을 넣을 수 있습니다. <br>
해당 코드를 통해 제공되는 팝업은 마우스 스크롤 등을 통한 화면 Body 이동이 불가능합니다. 다만, iOS에서는 이동이 가능합니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-javascript act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/megagong.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#개발대응2</p> </li>
                            <li><p>#신청</p> </li>
                            <li><p>#딤드</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->




            <div class="page_text_wrap">
                <p class="page_head">(개발 대응3) 알림 신청 팝업 호출 </p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/popup6.png" alt='팝업위치' ></div>

<!-- HTML -->
<div class="code-box html"><div class="pop_btn_wrap">
  <a class="mg_btn_base sm" href="#" onclick="openSamplePopup3(); return false;">신청 팝업 - 팝업 열고 닫을 때 개발로직 들어가는 케이스</a>
</div>

<div class="mg_popup_wrap z-anim mfp-hide" id="popupSample" data-width="700">
  <div class="content_area">
    <div class="content_inner">
      <a href="#" class="mg_popup_close" onclick="closeSamplePopup3(); return false;"></a>
      <p class="b_tit">샘플 팝업</p>
      <p class="s_tit">샘플 내용</p>
      <div class="mg_tb_wrap mt30">
        <table summary="신청 요약" class="mg_tb_form">
          <colgroup>
            <col width="120">
            <col width="*">
          </colgroup>
          <tbody>
            <tr>
              <th scope="row">이름</th>
              <td>홍길동</td>
            </tr>
            <tr>
              <th scope="row">휴대폰 번호</th>
              <td>
                <input type="text" class="mg_input" value="010-1234-5678">
              </td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="mg_info_wrap mt30">
        <p class="info_tit">■ 유의사항</p>
          <ul class="info_list">
            <li><span>※</span>해당 알림 서비스는 2022.09.13.(화) 18:50 SMS로 발송됩니다.</li>
            <li><span>※</span>휴대폰 번호는 회원정보 수정에서 변경 가능합니다. <a href="#">회원정보 수정 ></a></li>
            <li><span>※</span>문자알림 서비스는 SMS 수신동의를 해야 신청이 가능하며, <br>비동의로 설정되었을 경우 신청 여부와 상관없이 알림문자 발송이 불가합니다. <a href="#">SMS 수신동의 ></a></li>
          </ul>
      </div>
      <div class="mg_btn_wrap">
        <a href="#" class="mg_btn_base xl" onclick="completeSample2(); return false;">알림 신청하기 ></a>
      </div>
    </div>
  </div>
</div></div>

<!-- CSS -->
<!-- JS -->
<script>function openSamplePopup3() {
  var q = window.confirm('팝업을 띄우시겠습니까?');
  if (q) {
    openMegaPopup('popupSample', 6, false, true);
  }
}

function closeSamplePopup3() {
  var q = window.confirm('신청을 하지 않고 팝업을 닫으시겠습니까?');
  if (q) {
    isNoticePopupDimm = false;
    $.magnificPopup.close();
  }
}

function completeSample3() {
  alert('신청이 완료되었습니다.');
  $.magnificPopup.close();
}

$(document).on('click', '.mg_popup_dimm3', function(){
  closeSamplePopup3();
});
</script>

<p class="page_text">메가스터디 공무원 홍보 페이지에서 개발 로직이 들어갔을 때 주로 사용되는 팝업 기능입니다.<br>
지정된 버튼을 클릭하면 페이드인(Fade-In)효과와 함께 딤드(Dimmed) 처리된 팝업이 나타납니다.<br>
또한 팝업을 열고 닫을 때에 별도의 개발로직을 넣을 수 있습니다. <br>
해당 코드를 통해 제공되는 팝업은 마우스 스크롤 등을 통한 화면 Body 이동이 불가능합니다. 다만, iOS에서는 이동이 가능합니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-javascript act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/megagong.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#개발대응3</p> </li>
                            <li><p>#알림신청</p> </li>
                            <li><p>#딤드</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->






            <%If 1=2 Then%>
            <div class="page_text_wrap">
                <p class="page_head">(개발 대응) 알림 신청 팝업 호출 - Fade-In & Body 고정 </p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/popup6.png" alt='팝업위치' ></div>

<!-- HTML -->
<div class="code-box html"><div class="pop_btn_wrap">
  <a class="mg_btn_base sm" href="#" onclick="openNoticePopup(); return false;">알림신청 팝업 - 팝업 열고 닫을 때 개발로직 들어가는 케이스</a>
</div>

<div class="mg_popup_wrap z-anim mfp-hide" id="popupFadeInNotice" data-width="700">
  <div class="content_area">
    <div class="content_inner">
      <a href="#" class="mg_popup_close" onclick="closeNoticePopup(); return false;"></a>
      <p class="b_tit">알.쓸.신.요+ 알림 신청</p>
      <p class="s_tit">2023 NEW 요트+와 함께하는 알.쓸.신.요+ 를 놓치지 않도록<br>LIVE 시작 10분 전, 알림 문자를 보내드립니다.</p>
      <div class="mg_tb_wrap mt30">
        <table summary="신청 요약" class="mg_tb_form">
          <colgroup>
            <col width="120">
            <col width="*">
          </colgroup>
          <tbody>
            <tr>
              <th scope="row">이름</th>
              <td>홍길동</td>
            </tr>
            <tr>
              <th scope="row">휴대폰 번호</th>
              <td>
                <input type="text" class="mg_input" value="010-1234-5678">
              </td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="mg_tb_wrap mt30">
        <table summary="인증 관련" class="mg_tb_form">
          <colgroup>
            <col width="120">
            <col width="*">
          </colgroup>
          <tbody>
            <tr>
              <th scope="row">인증 이미지</th>
              <td>
                <div class="mg_filebox clfix">
                  <div class="filename">
                    <input type="text" id="filename" name="filename" value="인증 이미지를 업로드해 주세요.">
                    <a id="btn_fileDel" href="javascript:void(0);" onclick="document.getElementById('filename').value='인증 이미지를 업로드해 주세요.';document.getElementById('attfile').value='';document.getElementById('attfile_ori_name').value=''; $('#btn_fileDel').show();" title="삭제">[삭제]</a>
                  </div>
                  <div class="filebtn">
                    <label for="attfile" style="cursor:pointer">파일 선택</label>
                  </div>
                  <input type="file" id="attfile" name="attfile" value="" onchange="ChangeFile(this, 'filename')">
                  <input type="hidden" name="attfile_file_name" id="attfile_name" value="">
                  <input type="hidden" name="attfile_size" id="attfile_size">
                  <input type="hidden" name="attfile_url" id="attfile_url">
                  <input type="hidden" name="attfile_file_name_ori" id="attfile_ori_name" value="">
                </div>
              </td>
            </tr>
            <tr>
              <th scope="row">인증 URL</th>
              <td><input type="text" class="mg_input" name="cert_url" id="cert_url" value="" placeholder="게시글의 URL을 입력해 주세요."></td>
            </tr>
            <tr>
              <th scope="row">내용</th>
              <td><textarea class="mg_textarea" name="p_intro" id="p_intro" cols="30" rows="10" maxlength="500" placeholder="리뷰 내용은 10자 이상 500자 이하로 작성 가능합니다."></textarea></td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="mg_info_wrap mt30">
        <p class="info_tit">■ 유의사항</p>
          <ul class="info_list">
            <li><span>※</span>해당 알림 서비스는 2022.09.13.(화) 18:50 SMS로 발송됩니다.</li>
            <li><span>※</span>휴대폰 번호는 회원정보 수정에서 변경 가능합니다. <a href="#">회원정보 수정 ></a></li>
            <li><span>※</span>문자알림 서비스는 SMS 수신동의를 해야 신청이 가능하며, <br>비동의로 설정되었을 경우 신청 여부와 상관없이 알림문자 발송이 불가합니다. <a href="#">SMS 수신동의 ></a></li>
          </ul>
      </div>
      <div class="mg_btn_wrap">
        <a href="#" class="mg_btn_base xl" onclick="completeNotice(); return false;">알림 신청하기 ></a>
      </div>
    </div>
  </div>
</div></div>

<!-- CSS -->
<!-- JS -->
<script>function openNoticePopup() {
  var q = window.confirm('팝업을 띄우시겠습니까?');
  if (q) {
    openMegaPopup('popupFadeInNotice', 1, false);
  }
}

function closeNoticePopup() {
  var q = window.confirm('알림신청을 하지 않고 팝업을 닫으시겠습니까?');
  if (q) {
    $.magnificPopup.close();
  }
}

function completeNotice() {
  alert('알림 신청이 완료되었습니다.');
  $.magnificPopup.close();
}

//파일 업로드
var getFileExtention = function(filename) {
  return filename.substring(filename.lastIndexOf('.')+1, filename.length) || filename;
}

var maxSize = 5 * 1024 * 1024;//5MB  
var ChangeFile = function(obj, filename_field) {
  if (typeof obj.files[0] !== "undefined") {
    var file_ext = getFileExtention(obj.files[0].name.toLowerCase());
    //if (file_ext != 'jpg' && file_ext != 'jpeg' && file_ext != 'gif' && file_ext != 'png' && file_ext != 'pdf') {
    if (file_ext != 'jpg' && file_ext != 'jpeg' && file_ext != 'gif' && file_ext != 'png') {
      alert('JPG, JPEG, GIF 또는 PNG 확장자 파일만 업로드 가능합니다.');
      obj.files[0].value = null;
      tempHtml = "<input type='file' id='attfile' name='attfile' value='' onchange=\"ChangeFile(this, 'filename')\">";
      $('#attfile').replaceWith(tempHtml);         
      document.getElementById('attfile_ori_name').value='';       
      document.getElementById(filename_field).value="인증 이미지를 업로드해 주세요.";
      return;
    } else {
    //첨부파일 사이즈 체크      
      if(obj.files[0].size > maxSize){
        tempHtml = "<input type='file' id='attfile' name='attfile' value='' onchange=\"ChangeFile(this, 'filename')\">";
        $('#attfile').replaceWith(tempHtml);     
        document.getElementById('attfile_ori_name').value='';                  
        alert("첨부파일은 5MB 이하로 등록이 가능합니다.");
        return;
        }
      document.getElementById(filename_field).value=obj.files[0].name;
      fncFileUPloadNew('','board','event','<%=evt_cd%>','attfile', ',', 'N', 'Y');                               
    }
      $("#btn_fileDel").show();
  } else {
    document.getElementById(filename_field).value="인증 이미지를 업로드해 주세요.";
    document.getElementById('attfile').value='';
    document.getElementById('attfile_ori_name').value='';}
}

function fncFileUPloadNew(form_id,dir,sub_dir,sub_sub_dir,id_str, delim, date_yn, rename_yn) {
  if( (id_str == "" || id_str == undefined) || (delim == "" || delim == undefined) ) {
    return false;
  }                        
  var target_tot = id_str.split(delim).length;
  var proc_chk_tot = 0;
  id_str.split(delim).forEach(function(i) {
    var id_txt = "filename";        

    if(i!=""){
      var formData = new FormData();

      formData.append("dir",dir);
      formData.append("sub_dir",sub_dir);
      formData.append("sub_sub_dir",sub_sub_dir);
      formData.append("attfile", jQuery("#"+i)[0].files[0]);
      formData.append("new_yn","Y");
      formData.append("date_yn",date_yn);
      formData.append("rename_yn",rename_yn);
      formData.append("filesize","5");

      var tmp_file_name = $("#"+i).val();                
      var file_name = tmp_file_name.substring(tmp_file_name.lastIndexOf("\\")+1);
      var file_main = document.domain.indexOf('dev') < 0 ? 'https://file.megagong.net' : 'https://filedev.megagong.net';

      jQuery.ajax({
        url : file_main+"/file/file_upload_j.asp"
        , type : "POST"
        , processData : false
        , contentType : false
        , xhrFields: {
          withCredentials: true
        }
        //, contentType: 'application/x-www-form-urlencoded; charset=euc-kr'
        , data : formData
      })
      .done(function(json) {
        var obj = JSON.parse(json);
        a=obj;
        if(obj["err_code"] < 0) {
          $("#"+id_txt).val("첨부파일을 등록해주세요.");
          alert(obj["upload_msg"]);
          return false;
        } else {
          $("#"+i+"_name").val(obj["file_info"]["file_name"]);
          $("#"+i+"_size").val(obj["file_info"]["file_size"]);
          $("#"+i+"_url").val(obj["file_info"]["file_url"]);

          $("#"+i+"_ori_name").val(file_name);
        }
      })
      .fail(function() {
        proc_chk_tot++;
        if(proc_chk_tot == target_tot) {
        //document.myform.submit();
          if(form_id!="") {
            document.getElementById(form_id).submit();
          }
        }
      })
      .always(function() {
        proc_chk_tot++;
        if(proc_chk_tot == target_tot) {
          //document.myform.submit();
          if(form_id!="") {
            document.getElementById(form_id).submit();
          }
        }
      });
    }        
  });
}
</script>

<p class="page_text">메가스터디 공무원 홍보 페이지에서 '알림신청' 등을 위해 주로 사용되는 팝업 기능입니다.<br>
지정된 버튼을 클릭하면 페이드인(Fade-In)효과와 함께 딤드(Dimmed) 처리된 팝업이 나타납니다.<br>
해당 팝업에서는 이미지 파일 및 사용자가 제공할 정보 내용 등을 직접 작성하여 서버에 제출할 수 있습니다.<br>
또한 팝업을 열고 닫을 때에 별도의 개발로직을 넣을 수 있습니다. <br>
해당 코드를 통해 제공되는 팝업은 마우스 스크롤 등을 통한 화면 Body 이동이 불가능합니다. 다만, iOS에서는 이동이 가능합니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-javascript act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/megagong.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#개발대응</p> </li>
                            <li><p>#알림신청</p> </li>
                            <li><p>#딤드</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->




            <div class="page_text_wrap">
                <p class="page_head">(개발 대응) 팝업 호출 - 딤 클릭시 닫힘 </p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/popup6.png" alt='팝업위치' ></div>

<!-- HTML -->
<div class="code-box html"><div class="pop_btn_wrap">
  <a class="mg_btn_base sm" href="#" onclick="openCompleteNoticePopup(); return false;">당첨 팝업</a>
</div>
<div class="mg_popup_wrap z-anim mfp-hide" id="popupDimIn" data-width="420">
  <div class="content_area">
    <div class="content_inner">
      <a href="#" class="mg_popup_close" onclick="closeCompleteNoticePopup(); return false;"></a>
      <p class="b_tit">알.쓸.신.요+ 알림 신청</p>
      <p class="s_tit">2023 NEW 요트+와 함께하는 알.쓸.신.요+ 를 놓치지 않도록<br>LIVE 시작 10분 전, 알림 문자를 보내드립니다.</p>
      <div class="mg_tb_wrap mt30">
        <table summary="신청 요약" class="mg_tb_form">
          <colgroup>
            <col width="120">
            <col width="*">
          </colgroup>
          <tbody>
            <tr>
              <th scope="row">이름</th>
              <td>홍길동</td>
            </tr>
            <tr>
              <th scope="row">휴대폰 번호</th>
              <td>
                <input type="text" class="mg_input" value="010-1234-5678">
              </td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="mg_info_wrap mt30">
        <p class="info_tit">■ 유의사항</p>
        <ul class="info_list">
          <li><span>※</span>해당 알림 서비스는 2022.09.13.(화) 18:50 SMS로 발송됩니다.</li>
          <li><span>※</span>휴대폰 번호는 회원정보 수정에서 변경 가능합니다. <a href="<%=url_main%>/member/Account_Chk.asp">회원정보 수정 &gt;</a></li>
          <li><span>※</span>문자알림 서비스는 SMS 수신동의를 해야 신청이 가능하며, <br>비동의로 설정되었을 경우 신청 여부와 상관없이 알림문자 발송이 불가합니다. <a href="<%=url_main%>/member/Account_Chk.asp">SMS 수신동의 &gt;</a></li>
        </ul>
      </div>
      <div class="mg_btn_wrap">
        <a href="#" class="mg_btn_base xl" onclick="completeNoticePopup(); return false;">알림 신청하기 &gt;</a>
      </div>
    </div>
  </div>
</div></div>

<!-- JS -->
<script>var isPopupDimm = false;

function openCompleteNoticePopup() {
  isPopupDimm = true;
  openMegaPopup('popupDimIn', 4, false, true);
}

function completeNoticePopup() {
  isPopupDimm = false;
  alert('알림 신청이 완료되었습니다.');
  $.magnificPopup.close();
}

function closeCompleteNoticePopup() {
  var q = window.confirm('알림신청을 하지 않고 팝업을 닫으시겠습니까?');
  if (q) {
    isPopupDimm = false;
    $.magnificPopup.close();
  }
}

$(document).on('click', '.mg_popup_dimm', function(){
  if (isPopupDimm) {
    closeCompleteNoticePopup();
  }
});</script>


<p class="page_text">딤드(Dimmed) 처리된 팝업이 열렸을 때, <br>
닫기 버튼 뿐만 아니라 팝업 바깥 부분(딤드 처리된 배경부)을 클릭했을 경우에도 팝업이 닫히는 기능을 제공합니다. <br>
해당 기능을 통해 사용자가 더욱 원활하게 팝업을 열고 닫을 수 있도록 도와줍니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-javascript act"></pre>


                <a class="use_link" href="<%=url_main%>/megagong.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
            </div><!-- .page_text_wrap -->
            <%End if%>




            <%If 1=2 Then%>
            <div class="page_text_wrap">
                <p class="page_head">(개발 대응) 팝업 호출 - 콜백함수</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/popup6.png" alt='팝업위치' ></div>

<!-- HTML -->
<div class="code-box html"><div class="pop_btn_wrap">
  <a class="mg_btn_base sm" href="#" onclick="openCallbackPopup(); return false;">알림신청 팝업 - 팝업 열고 닫을 때 콜백함수 호출하는 케이스</a>
</div>

<div class="mg_popup_wrap z-anim mfp-hide" id="popupCallback" data-width="700">
  <div class="content_area">
      <div class="content_inner">
          <a href="javascript:;" class="mg_popup_close" onclick="closeCallbackPopup(); return false;"></a>
          <p class="b_tit">팝업 호출 시 콜백함수 예제</p>
      </div>
  </div>
</div></div>

<!-- JS -->
<script>var isPopupCallback = false;

function openCallbackPopup() {
  isPopupCallback = true;
  openMegaPopup('popupCallback', 4, false, true, openCB, closeCB);
  function openCB() {
    alert('팝업 열리기 전 콜백함수 호출');
  }
  function closeCB() {
    alert('팝업 닫히고 난 후 콜백함수 호출');
  }
}

function closeCallbackPopup() {
  isPopupCallback = false;
  $.magnificPopup.close();
}

$(document).on('click', '.mg_popup_dimm', function(){
  if (isPopupCallback) {
    closeCallbackPopup();
  }
});</script>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-javascript act"></pre>

                <a class="use_link" href="<%=url_main%>/event/2022/08110020/index.asp#event1" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
            </div><!-- .page_text_wrap -->
            <%End if%>




            <div class="page_text_wrap">
                <p class="page_head">모달 팝업 - 자세히 보기</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/popup9.png" alt='팝업위치' ></div>
                
                
<!-- HTML -->
<div class="code-box html"><div class="pop_btn_wrap">
  <a class="mg_btn_base sm" href="#" onclick="openMegaPopup('popupFadeIn_detail', 1, true, true); return false;">자세히 보기 팝업</a>
</div>
<!-- 클래스 detail_view 추가 -->
<div class="mg_popup_wrap z-anim mfp-hide detail_view" id="popupFadeIn_detail" data-width="780">
  <div class="content_area">
      <div class="content_inner">
          <img src="/images/popup9_ex.png" alt="예시이미지">
      </div>
  </div>
</div></div>

<p class="page_text">강사 홍보 풀페이지에서 주로 사용되는 팝업 기능입니다.<br>
컨텐츠에 대한 추가적인 설명 이벤트가 필요한 경우 주로 사용되며 딤드(Dimmed) 처리 되어 나타나는 것을 기본으로 합니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/s/gong/event/2022/11100171/" target="_blank"><i class='bx bx-link'></i>EXAMPLE<!--- 사용처 : 합격전략LAB 공무원 가이드 --></a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#강사홍보</p> </li>
                            <li><p>#추가정보</p> </li>
                            <li><p>#딤드</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->




            <div class="page_text_wrap">
                <p class="page_head">원형 슬라이드 팝업</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <!--<div class="position_site"><img src="/images/popup1.png" alt='팝업위치' ></div>-->
                

<!-- HTML -->
<div class="code-box html">
<!--<'% If fncRequestCookie("main_exhibi_lab") = "" then %>-->                    
  <div class="main_exhibi lab">
      <a href="javascript:;" class="close"></a>
      <div class="exhibi_sd">
          <div class="item">
              <a href="javascript:void(0);" title="초시생 가이드북 무료 다운로드">
                  <img src="/images/pop_sample.png" alt="초시생 가이드북 무료 다운로드">
              </a>
          </div>          
          <div class="item">
              <a href="javascript:void(0);" title="메가패스 7일 무료체험 지금 신청하기">
                  <img src="/images/pop_sample2.png" alt="메가패스 7일 무료체험 지금 신청하기">
              </a>
          </div>             
      </div>
      <a href="javascript:;" class="close today">오늘 하루 닫기</a>
  </div>
<!--<'% end if %>-->           
</div>


<!-- CSS -->
<div class="code-box css"><link type="text/css" rel="stylesheet" href="/css/popup_style.css">
</div>
<style>.main_exhibi.lab{position: absolute; top: 0; right: -17%; width: 181px; z-index: 1;position: relative;margin: auto;}
.main_exhibi.lab a{display:block;}
.main_exhibi.lab .close{position: absolute;right: 10px;width: 11px;height: 10px;top: 0;background:url(https://design.megagong.net/image/m/2023/0330_academy/bn_flt_cls.png) no-repeat center;z-index: 2;}
.main_exhibi.lab .close.today{right: auto;left: 50%;top: auto;transform:translateX(-50%);background-image:none;bottom: -25px;font-size: 10px;color: #666;width: 70px;height: 18px;text-align: center;line-height: 18px;border: 1px solid #666;background: #fff;}
.main_exhibi.lab .item {position: relative;text-align: cen666ter;}
.main_exhibi.lab .item img {display:inline-block;}
.main_exhibi.lab .slick-arrow {display:none!important;}
.main_exhibi.lab .slick-dots {position:absolute;bottom:15px;left:0;right:0;font-size:0;text-align: center;}
.main_exhibi.lab .slick-dots li {display:inline-block;margin:0 2px;}
.main_exhibi.lab .slick-dots button {width:8px;height: 8px;border-radius: 50%;background:#000;opacity:.6;font-size:0;}
.main_exhibi.lab .slick-dots .slick-active button {opacity: 1;background: #fff;}

@media screen and (max-width: 1200px){
.main_exhibi.lab{max-width:35%;right: 0;}
.main_exhibi.lab .slick-dots {bottom: 10px;}
.main_exhibi.lab .slick-dots button {width: 5px;height: 5px;}
.main_exhibi.lab .close.today{bottom: -20px;}
}
</style>

<!-- JS -->
<script>$('.main_exhibi.lab .exhibi_sd').slick({
    infinite: true,
    arrow: false,
    speed: 0,
    autoplaySpeed: 2000,
    autoplay: true,
    dots: true,
});

$(".main_exhibi.lab .close").on("click",function(){
    $(this).parent('.main_exhibi.lab').css('display','none')
})
$(".main_exhibi.lab .close.today").on("click",function(){
    setCookie("main_exhibi_lab", "close", 1);
    $(this).parent('.main_exhibi.lab').css('display','none')
})
</script>

<p class="page_text">메가공무원의 다양한 페이지에서 주로 사용되는 원형 팝업 기능입니다.<br>
오늘 하루 보지 않기 및 슬라이드 기능을 제공하고 있습니다.</p>

<!-- Code View -->
<pre class="language-html html act direct"><code><!--<'% If fncRequestCookie("main_exhibi_lab") = "" then %>-->                    
  <div class="main_exhibi lab">
      <a href="javascript:;" class="close"></a>
      <div class="exhibi_sd">
          <div class="item">
              <a href="javascript:void(0);" title="초시생 가이드북 무료 다운로드">
                  <img src="/images/pop_sample.png" alt="초시생 가이드북 무료 다운로드">
              </a>
          </div>          
          <div class="item">
              <a href="javascript:void(0);" title="메가패스 7일 무료체험 지금 신청하기">
                  <img src="/images/pop_sample2.png" alt="메가패스 7일 무료체험 지금 신청하기">
              </a>
          </div>             
      </div>
      <a href="javascript:;" class="close today">오늘 하루 닫기</a>
  </div>
<!--<'% end if %>--></code></pre>
<pre class="language-css css act direct"><code>.main_exhibi.lab{position: absolute; top: 0; right: -17%; width: 181px; z-index: 1;}
.main_exhibi.lab a{display:block;}
.main_exhibi.lab .close{position: absolute;right: 10px;width: 11px;height: 10px;top: 0;background:url(https://design.megagong.net/image/m/2023/0330_academy/bn_flt_cls.png) no-repeat center;z-index: 2;}
.main_exhibi.lab .close.today{right: auto;left: 50%;top: auto;transform:translateX(-50%);background-image:none;bottom: -25px;font-size: 10px;color: #666;width: 70px;height: 18px;text-align: center;line-height: 18px;border: 1px solid #666;background: #fff;}
.main_exhibi.lab .item {position: relative;text-align: cen666ter;}
.main_exhibi.lab .item img {display:inline-block;}
.main_exhibi.lab .slick-arrow {display:none!important;}
.main_exhibi.lab .slick-dots {position:absolute;bottom:15px;left:0;right:0;font-size:0;text-align: center;}
.main_exhibi.lab .slick-dots li {display:inline-block;margin:0 2px;}
.main_exhibi.lab .slick-dots button {width:8px;height: 8px;border-radius: 50%;background:#000;opacity:.6;font-size:0;}
.main_exhibi.lab .slick-dots .slick-active button {opacity: 1;background: #fff;}

@media screen and (max-width: 1200px){
.main_exhibi.lab{max-width:35%;right: 0;}
.main_exhibi.lab .slick-dots {bottom: 10px;}
.main_exhibi.lab .slick-dots button {width: 5px;height: 5px;}
.main_exhibi.lab .close.today{bottom: -20px;}
}</code></pre>
<pre class="language-javascript act direct"><code>$('.main_exhibi.lab .exhibi_sd').slick({
    infinite: true,
    arrow: false,
    speed: 0,
    autoplaySpeed: 2000,
    autoplay: true,
    dots: true,
});

$(".main_exhibi.lab .close").on("click",function(){
    $(this).parent('.main_exhibi.lab').css('display','none')
})
$(".main_exhibi.lab .close.today").on("click",function(){
    setCookie("main_exhibi_lab", "close", 1);
    $(this).parent('.main_exhibi.lab').css('display','none')
})</code></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="https://lab.megagong.net/l/gong/guide/series.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#팝업배너</p> </li>
                            <li><p>#원형</p> </li>
                            <li><p>#슬라이드</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->



            <div class="page_text_wrap">
                <p class="page_head">이벤트 약관 팝업 - 중앙 딤 팝업</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <!--<div class="position_site"><img src="/images/popup1.png" alt='팝업위치' ></div>-->
                

<!-- HTML -->
<div class="code-box html"><a class="popup_13_btn" href="#" onclick="openMegaPopup('popupTerms', 1, true, false); return false;">자세히보기 &gt;</a>
<div class="mg_popup_wrap z-anim mfp-hide" id="popupTerms" data-width="420">
  <div class="content_area">
    <div class="content_inner">
<div class="terms_info"><strong>1. 개인정보 수집 이용 목적</strong>
-이벤트 안내 및 SMS 발송 등에 활용
<strong>2. 개인정보 수집 항목 및 보유 기간</strong>
-아이디, 전화번호회원 
-탈퇴 시 회원자격이 유지되는 기간 동안
<strong>3. 개인정보제공 동의거부에 따른 불이익</strong>
-귀하는 개인정보 제공 동의를 거부할 수 있으며 동의 거부에 따른
불이익은 없으나, 위 제공사항은 채점 예약 이벤트에 반드시
필요한 사항으로, 거부하실 경우 해당 이벤트 당첨 시 경품 제공이
불가함을 안내드립니다.</div>
    </div>
  </div>
</div></div>

<style>a.popup_13_btn{font-size:13px;font-weight:bold;color:#ea2771;text-decoration:underline;}</style>

<p class="page_text">메가공무원의 이벤트&amp;프로모션 페이지에서 주로 사용되는 약관 팝업입니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="https://dev.megagong.net/s/gong/event/2023/06010066/index.asp#event1" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#약관팝업</p></li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->


            <div class="page_text_wrap">
                <p class="page_head">이벤트 약관 팝업 - tiny 팝업</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <!--<div class="position_site"><img src="/images/popup1.png" alt='팝업위치' ></div>-->
                

<!-- HTML -->
<div class="code-box html"><a class="popup_14_btn" href="#" onclick="openCmegaPopup('popupTermsTiny'); return false;">자세히보기 &gt;</a>
<div class="cmg_popup_wrap" id="popupTermsTiny" style="width: 420px; display: none;">
  <a href="javascript:;" class="mg_popup_close rect" onclick="closeCmegaPopup('popupTermsTiny')"></a>
  <div class="content_area">
    <div class="content_inner line">
      <div class="terms_info"><strong>1. 개인정보 수집 이용 목적</strong>
      -이벤트 안내 및 SMS 발송 등에 활용
      <strong>2. 개인정보 수집 항목 및 보유 기간</strong>
      -아이디, 전화번호회원 
      -탈퇴 시 회원자격이 유지되는 기간 동안
      <strong>3. 개인정보제공 동의거부에 따른 불이익</strong>
      -귀하는 개인정보 제공 동의를 거부할 수 있으며 동의 거부에 따른
      불이익은 없으나, 위 제공사항은 채점 예약 이벤트에 반드시
      필요한 사항으로, 거부하실 경우 해당 이벤트 당첨 시 경품 제공이
      불가함을 안내드립니다.</div>
    </div>
  </div>
</div></div>

<style>a.popup_14_btn{font-size:13px;font-weight:bold;color:#ea2771;text-decoration:underline;}</style>

<p class="page_text">메가공무원의 이벤트&amp;프로모션 페이지에서 주로 사용되는 약관 팝업입니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="https://dev.megagong.net/s/gong/event/2023/06010066/index.asp#event1" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#약관팝업</p></li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->






            <!-- #include virtual = "/inc/tweet_popup_all.asp"-->
            <!-- #include virtual = "/inc/ball.asp"-->
            <!-- #include virtual = "/inc/footer.asp"-->
            
        </div> <!--//page_inner -->
    
    </div>


    <div class="ank"></div>

    

    <style>
    html {overflow-x:hidden;}
    
    .guide-aside {border-right: none;/*background:rgba(255,255,255,0.2);*/ backdrop-filter: blur( 11px );-webkit-backdrop-filter: blur( 11px );}
    .cmg_popup_wrap.mg_today {width:434px}

    
    @media screen and (max-width: 768px) {
      .cmg_popup_wrap.mg_today {width:100%}
    }
    @media screen and (max-width: 576px) {
      .main_exhibi.main_exhibi_pass {width: 171px; margin-bottom: 9%;}
      .code-box {padding: 15px 0px;}
      .code-box .mok_hd_pop {margin: 8% auto 5%;}
      .code-box .use_test {margin-top: 0px;}
    }
    
    </style>

    <script>
      function briefingPopShow(){
    $(".brflayer_content iframe").attr("src", "https://www.youtube.com/embed/rZonO0OhyHk");
    $('.briefing_layer').show();
    }

    function closeCmegaDimPopup() {
      $('.mfp-close').trigger('click');
    }

    $(document).on('click','.board10 .mg_btn_base.sm',function(){
      $('body').css('position','relative');
    })
    </script>




<!-- #include virtual = "/inc/bottom.asp"-->