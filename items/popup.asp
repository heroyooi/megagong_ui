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
              <h3 class="page_name_sub">�˾�</h3>
              <p class="page_sub_text">�˾��� �ް������� ���� �������������� ȫ������������ Ư�� ���� ������ ���Ͽ� �������ϰ� ���ǰ� �ִ� ����Դϴ�.<br>
              ������ ��û�� �ִ� ��츦 �����ϰ� ��� �˾��� �ش� �ڵ带 �������� ���۵Ǵ� ���� ��Ģ���� �մϴ�.</p>
              <div class="page_print"><input type="button" value="�μ��ϱ�" id="print" onclick="window.print()"/></div>
            </div>

            
            
            <div class="page_text_wrap">
                <p class="page_head">���� ���� �ϴ� �˾�</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <div class="position_site"><img src="/images/popup1.png" alt='�˾���ġ' ></div>
                

<!-- HTML -->
<div class="code-box html"><div id="main_exhibi" class="main_exhibi main_exhibi_pass">
  <a href="javascript:main_exhibi_close();" class="close"><img src="<%=img_main%>/common/btn_close_right_bottom_bnr.png" alt="�ݱ�"></a>
  <div class="exhibi_sd">
    <div class="item">
			<img src="<%=img_main%>/m/2023/0621_coconaki/main_bnr_pc.png" alt="�ű��Լ� ��鸮�� �ʴ� ���ε�� ����ȯ�Դϴ�.">
			<a class="bnr_link" href="<%=url_main%>/event/2023/06210021/index.asp#eventWrap" title="�ű��Լ� ��鸮�� �ʴ� ���ε�� ����ȯ�Դϴ�."></a>
		</div>
    <div class="item">
			<img src="<%=img_main%>/m/2023/0621_coconaki/main_bnr_pc.png" alt="�ű��Լ� ��鸮�� �ʴ� ���ε�� ����ȯ�Դϴ�.">
			<a class="bnr_link" href="<%=url_main%>/event/2023/06210021/index.asp#eventWrap" title="�ű��Լ� ��鸮�� �ʴ� ���ε�� ����ȯ�Դϴ�."></a>
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

<p class="page_text">�ް����͵� ������ ���� Ȩ���������� ���Ǵ� �˾� ����Դϴ�.<br>
��ġ�� ���λ���Ʈ ���� �ϴܺο� �δ� ���� ��Ģ���� �ϸ鼭 �ϴ��� �� ��� ���ٴ� ������ �����ϵ��� �۾��ؾ� �մϴ�.</p>

<!-- Code View -->
<pre class="language-html html act direct"><code><div id="main_exhibi" class="main_exhibi main_exhibi_pass">
  <a href="javascript:main_exhibi_close();" class="close"><img src="<%=img_main%>/common/btn_close_right_bottom_bnr.png" alt="�ݱ�"></a>
  <div class="exhibi_sd">
    <div class="item">
			<img src="<%=img_main%>/m/2023/0621_coconaki/main_bnr_pc.png" alt="�ű��Լ� ��鸮�� �ʴ� ���ε�� ����ȯ�Դϴ�.">
			<a class="bnr_link" href="/event/2023/06210021/index.asp#eventWrap" title="�ű��Լ� ��鸮�� �ʴ� ���ε�� ����ȯ�Դϴ�."></a>
		</div>
    <div class="item">
			<img src="<%=img_main%>/m/2023/0621_coconaki/main_bnr_pc.png" alt="�ű��Լ� ��鸮�� �ʴ� ���ε�� ����ȯ�Դϴ�.">
			<a class="bnr_link" href="/event/2023/06210021/index.asp#eventWrap" title="�ű��Լ� ��鸮�� �ʴ� ���ε�� ����ȯ�Դϴ�."></a>
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
                            <li><p>#�˾����</p> </li>
                            <li><p>#�����ϴ�</p> </li>
                            <li><p>#�����̵�</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->






            <div class="page_text_wrap">
                <p class="page_head">��� ���� �Ϸ� ���� �ʱ�</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <div class="position_site"><img src="/images/popup2.png" alt='�˾���ġ' ></div>
                

<!-- HTML -->
<div class="code-box html"><% if fncRequestCookie("mok_hd_pop_one") = "" then%>
  <div id="mok_hd_pop" class="mok_hd_pop">
		<a href="#none" title="�ް������� ���Ǹ���">
			<img src="<%=img_main%>/m/2022/0503_interviewMock/pop_mok.png" class="" style="cursor:pointer;" alt="�ް������� ���Ǹ���">
		</a>
		<button type="button" class="btn_day_close" onClick="mok_day_close();">���� �Ϸ� ���� �ʱ�</button>
		<button type="button" class="btn_close" onclick="mok_close();">�ݱ�</button>
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

<p class="page_text">�ް����͵� ������ ���� Ȩ���������� ���Ǵ� �˾� ����Դϴ�.<br>
�ַ� ���λ���Ʈ ���� ��ܺο��� ���Ǹ� '���� �Ϸ� ���� �ʱ�' ��ư�� ���� �Ϸ絿�� �˾��� �����ϴ� ����� �����մϴ�. </p>

<!-- Code View -->
<pre class="language-html html act direct"><code>&lt;% if fncRequestCookie("mok_hd_pop_one") = "" then%&gt;
  <div id="mok_hd_pop" class="mok_hd_pop">
		<a href="#none" title="�ް������� ���Ǹ���">
			<img src="<%=img_main%>/m/2022/0503_interviewMock/pop_mok.png" class="" style="cursor:pointer;" alt="�ް������� ���Ǹ���">
		</a>
		<button type="button" class="btn_day_close" onClick="mok_day_close();">���� �Ϸ� ���� �ʱ�</button>
		<button type="button" class="btn_close" onclick="mok_close();">�ݱ�</button>
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
                            <li><p>#�Ϸ纸���ʱ�</p> </li>
                            <li><p>#����˾�</p> </li>
                            <li><p>#���</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->







            <div class="page_text_wrap">
                <p class="page_head">�߾� ���� �Ϸ� �ݱ� �˾�</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <div class="position_site"><img src="/images/popup4.png" alt='�˾���ġ' ></div>

<!-- HTML -->
<div class="code-box html"><div class="pop_btn_wrap">
  <a class="mg_btn_base sm mg_txt" href="#" onclick="deleteCookieAndReload('todayPopupCookie'); return false;">���� �Ϸ� �ݱ� �˾� ���� ��Ű�� �ʱ�ȭ</a>
</div>
<%if fncRequestCookie("todayPopupCookie") = "" then%>
<div class="cmg_popup_wrap mg_today" id="popupToday" style="position: relative; /*margin: 0;*/ /*width: 434px;*/ ">
  <div class="mg_btn_wrap right top">
    <button class="mg_btn_base sm" onclick="closeCmegaPopupToday();">���� �Ϸ� �ݱ�</button>
    <button class="mg_btn_base sm" onclick="closeCmegaPopup('popupToday')">�ݱ�</button>
  </div>
  <div class="img_area">
    <img class="pc_view" src="<%=img_main%>/m/2022/0901_thanksgiving/popup_img.png" alt="">
    <img class="mo_view" src="<%=img_main%>/m/2022/0901_thanksgiving/m_popup_img.png" alt="">
    <a href="<%=url_main%>/book/notice/view.asp?idx=3952" class="btn_link view" target="_blank">�ڼ��� ����</a>
    <a href="<%=url_main%>/help/qna/write.asp" class="btn_link go" target="_blank">�н��������� �ٷΰ���</a>
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

<p class="page_text">�ް����͵� ������ ���� Ȩ���������� ���Ǵ� �˾� ����Դϴ�.<br>
'���� �Ϸ� ���� �ʱ�'�� ���������� �����ϰ� �Ϸ絿�� �˾��� �ݴ� ����� �����մϴ�.</p>

<!-- Code View -->
<pre class="language-html html act direct"><code><div class="pop_btn_wrap">
  <a class="mg_btn_base sm mg_txt" href="#" onclick="deleteCookieAndReload('todayPopupCookie'); return false;">���� �Ϸ� �ݱ� �˾� ���� ��Ű�� �ʱ�ȭ</a>
</div>
&lt;%if fncRequestCookie("todayPopupCookie") = "" then%&gt;
<div class="cmg_popup_wrap mg_today" id="popupToday" style="position: relative; margin: 0; width: 434px;">
  <div class="mg_btn_wrap right top">
    <button class="mg_btn_base sm" onclick="closeCmegaPopupToday();">���� �Ϸ� �ݱ�</button>
    <button class="mg_btn_base sm" onclick="closeCmegaPopup('popupToday')">�ݱ�</button>
  </div>
  <div class="img_area">
    <img class="pc_view" src="<%=img_main%>/m/2022/0901_thanksgiving/popup_img.png" alt="">
    <img class="mo_view" src="<%=img_main%>/m/2022/0901_thanksgiving/m_popup_img.png" alt="">
    <a href="<%=url_main%>/book/notice/view.asp?idx=3952" class="btn_link view" target="_blank">�ڼ��� ����</a>
    <a href="<%=url_main%>/help/qna/write.asp" class="btn_link go" target="_blank">�н��������� �ٷΰ���</a>
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
                            <li><p>#�˾�</p> </li>
                            <li><p>#�Ϸ纸���ʱ�</p> </li>
                            <li><p>#�ȳ��˾�</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->






            <div class="page_text_wrap">
                <p class="page_head">�� �˾�</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <div class="position_site"><img src="/images/popup5.png" alt='�˾���ġ' ></div>

<!-- HTML -->
<div class="code-box html"><div class="pop_btn_wrap">
    <a class="mg_btn_base sm" href="#" onclick="openMegaPopup('popupDim', 1); return false;">�� �˾� ȣ��</a>
    <a class="mg_btn_base sm mg_txt" href="#" onclick="deleteCookieAndReload('todayPopupDimCookie');  return false;">�� ���� ��Ű�� �ʱ�ȭ</a>
  </div>
  <%If fncRequestCookie("todayPopupDimCookie") = "" then%>
  <div class="mg_popup_wrap dim mfp-hide mg_today z-anim" id="popupDim" data-width="434">
    <div class="cmg_popup_dimm" onclick="closeCmegaDimPopup('popupDim')"></div>
    <div class="cmg_popup_inner dim">
      <div class="mg_btn_wrap right top">
        <button class="mg_btn_base sm" onclick="closeCmegapopupDimToday();">���� �Ϸ� �ݱ�</button>
        <button class="mg_btn_base sm" onclick="closeCmegaDimPopup('popupDim')">�ݱ�</button>
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

<p class="page_text">�ް����͵� ������ ���� Ȩ������ �� �پ��� ȫ�� ���������� ���Ǵ� �˾� ����Դϴ�.<br>
�˾��� ������ ��, �ֺ� ���δ� ����(Dimmed) ó���� �Ǿ� ����ڰ� ��Ȱ�ϰ�<br> 
�˾� ������ ������ Ȯ���� �� �ֽ��ϴ�. </p>

<!-- Code View -->
<pre class="language-html html act direct"><code>&lt;%if fncRequestCookie("todayPopupDimCookie") = "" then%&gt;
  <a class="mg_btn_base sm" href="#" onclick="openMegaPopup('popupDim', 1); return false;">�� �˾� ȣ��</a>
  <div class="mg_popup_wrap mfp-hide mg_today z-anim" id="popupDim" data-width="434">
    <div class="cmg_popup_dimm" onclick="closeCmegaPopup('popupDim')"></div>
    <div class="cmg_popup_inner dim">
      <div class="mg_btn_wrap right top">
        <button class="mg_btn_base sm" onclick="closeCmegapopupDimToday();">���� �Ϸ� �ݱ�</button>
        <button class="mg_btn_base sm" onclick="closeCmegaPopup('popupDim')">�ݱ�</button>
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
                            <li><p>#���˾�</p> </li>
                            <li><p>#����</p> </li>
                            <li><p>#�ȳ��˾�</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->






            <div class="page_text_wrap">
                <p class="page_head">���� �˾� - ����</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <div class="position_site"><img src="/images/popup3.png" alt='�˾���ġ' ></div>

<!-- HTML -->
<div class="code-box html"><div class="pop_btn_wrap">
  <a class="mg_btn_base sm" href="#" onclick="openCmegaPopup('popupVideo'); return false;">���� �˾� ȣ��</a>
  <a class="mg_btn_base sm mg_txt" href="#" onclick="deleteCookieAndReload('todayPopupVideoCookie'); return false;">���� �˾� ���� ��Ű�� �ʱ�ȭ</a>
</div>
<%If fncRequestCookie("todayPopupVideoCookie") = "" then%>
<div class="cmg_popup_wrap cmg_fullpage" id="popupVideo">
  <div class="cmg_popup_dimm" onclick="closeCmegaPopup('popupVideo')"></div>
  <div class="cmg_popup_inner">
    <div class="mg_btn_wrap right top">
      <button class="mg_btn_base sm" onclick="closeCmegaPopupVideoToday();">���� �Ϸ� �ݱ�</button>
      <button class="mg_btn_base sm" onclick="closeCmegaPopup('popupVideo')">�ݱ�</button>
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

<p class="page_text">�ް����͵� ������ ���� Ȩ������ �� �پ��� ȫ�� ���������� ���Ǵ� �˾� ����Դϴ�.<br>
����(Dimmed)ȿ���� �Բ� ȭ�� �߾Ӻο� ���� ������ ����˴ϴ�.<br>
�غ�� ���� ������ ���� ����� ������ ��ü�� �� �ֽ��ϴ�.</p>

<!-- Code View -->
<pre class="language-html html act direct"><code>&lt;%If fncRequestCookie("todayPopupVideoCookie") = "" then%&gt;
<div class="cmg_popup_wrap cmg_fullpage" id="popupVideo">
  <div class="cmg_popup_dimm" onclick="closeCmegaPopup('popupVideo')"></div>
  <div class="cmg_popup_inner">
    <div class="mg_btn_wrap right top">
      <button class="mg_btn_base sm" onclick="closeCmegaPopupVideoToday();">���� �Ϸ� �ݱ�</button>
      <button class="mg_btn_base sm" onclick="closeCmegaPopup('popupVideo')">�ݱ�</button>
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
                            <li><p>#�����˾�</p> </li>
                            <li><p>#��������</p> </li>
                            <li><p>#����</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->







            <div class="page_text_wrap">
                <p class="page_head">���� �˾� - ��Ʃ��</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <div class="position_site"><img src="/images/popup3.png" alt='�˾���ġ' ></div>

<!-- HTML -->
<div class="code-box html"><div class="pop_btn_wrap">
  <a class="mg_btn_base sm" href="#" onclick="openCmegaPopup('popupYoutube'); return false;">���� �˾� ȣ��</a>
  <a class="mg_btn_base sm mg_txt" href="#" onclick="deleteCookieAndReload('todayPopupYoutubeCookie'); return false;">���� �˾� ���� ��Ű�� �ʱ�ȭ</a>
</div>
<%If fncRequestCookie("todayPopupYoutubeCookie") = "" then%>
<div class="cmg_popup_wrap cmg_fullpage" id="popupYoutube">
  <div class="cmg_popup_dimm" onclick="closeCmegaPopup('popupYoutube')"></div>
  <div class="cmg_popup_inner">
    <div class="mg_btn_wrap right top">
      <button class="mg_btn_base sm" onclick="closeCmegaPopupYoutubeToday();">���� �Ϸ� �ݱ�</button>
      <button class="mg_btn_base sm" onclick="closeCmegaPopup('popupYoutube')">�ݱ�</button>
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

<p class="page_text">�ް����͵� ������ ���� Ȩ������ �� �پ��� ȫ�� ���������� ���Ǵ� �˾� ����Դϴ�.<br>
����(Dimmed)ȿ���� �Բ� ȭ�� �߾Ӻο� Ư�� ��Ʃ�� ������ ����� �� �ֽ��ϴ�.<br>
�غ�� ��Ʃ�� ������ �ּҸ� ���� ����� ������ ��ü�� �� �ֽ��ϴ�.</p>

<!-- Code View -->
<pre class="language-html html act direct"><code>&lt;%If fncRequestCookie("todayPopupYoutubeCookie") = "" then%&gt;
<div class="cmg_popup_wrap cmg_fullpage" id="popupYoutube">
  <div class="cmg_popup_dimm" onclick="closeCmegaPopup('popupYoutube')"></div>
  <div class="cmg_popup_inner">
    <div class="mg_btn_wrap right top">
      <button class="mg_btn_base sm" onclick="closeCmegaPopupYoutubeToday();">���� �Ϸ� �ݱ�</button>
      <button class="mg_btn_base sm" onclick="closeCmegaPopup('popupYoutube')">�ݱ�</button>
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
                            <li><p>#�����˾�</p> </li>
                            <li><p>#��Ʃ��</p> </li>
                            <li><p>#����</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->








            <div class="page_text_wrap">
                <p class="page_head">�˾� ȣ�� - Fade-In & Body ������ </p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <div class="position_site"><img src="/images/popup6.png" alt='�˾���ġ' ></div>

<!-- HTML -->
<div class="code-box html"><div class="pop_btn_wrap">
  <a class="mg_btn_base sm" href="#" onclick="openMegaPopup('popupFadeIn', 1, true, false); return false;">��÷ �˾�</a>
</div>

<div class="mg_popup_wrap z-anim mfp-hide" id="popupFadeIn" data-width="420">
  <div class="content_area">
    <div class="content_inner pb20">
      <p class="m_tit">2022.8.17.<br /><strong class="blue">��÷�� ���ϵ帳�ϴ�!</strong></p>
      <div><img src="<%=img_main%>/m/2022/0907_paper/prize_img02.png" alt="�̽�������" /></div>
    </div>
    <div class="tit_area blue">[�ް�������] �Ųٷ� �÷��� ��ũ �÷�</div>
    <div class="content_inner">
      <ul class="s_info">
        <li><span>��</span>��÷�ǽ� �Ųٷ� �÷��ʴ� 7/20(��)  �߼۵� �����̿���, ���� ������ ����  �߼����� ����� �� �ֽ��ϴ�.</li>
        <li><span>��</span>�Ųٷ� �÷��ʴ� ȸ�� ���� ���� �ּ� ��%�ּ��ּ��ּ��ּ��ּ��ּ��ּ�%�� �� �߼۵� �����Դϴ�. <a href="<%=url_main%>/member/Account_Chk.asp">[ �ּ� ���� &gt; ]</a></li>
        <li><span>��</span>�ּ� �̱��� & ������� ���� ��߼��� �Ұ��մϴ�.</li>
      </ul>
      <div class="mg_btn_wrap">
        <a href="#" class="mg_btn_base" onclick="$.magnificPopup.close(); return false;">Ȯ��</a>
      </div>
    </div>
  </div>
</div></div>

<!-- CSS -->
<!-- JS -->
<p class="page_text">�ް����͵� ������ ȫ�� ���������� �ַ� ���Ǵ� �˾� ����Դϴ�.<br>
������ ��ư�� Ŭ���ϸ� ���̵���(Fade-In)ȿ���� �Բ� ����(Dimmed) ó���� �˾��� ��Ÿ���ϴ�.<br>
�ش� �ڵ带 ���� �����Ǵ� �˾��� ���콺 ��ũ�� ���� ���� �˾� ���¸� �����ϸ鼭 ȭ�� Body �̵��� �����մϴ�.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/megagong.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#��÷�˾�</p> </li>
                            <li><p>#��Ÿ����</p> </li>
                            <li><p>#����</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->








            <div class="page_text_wrap">
                <p class="page_head">�˾� ȣ�� - Fade-In & Body ���� </p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <div class="position_site"><img src="/images/popup6.png" alt='�˾���ġ' ></div>

<!-- HTML -->
<div class="code-box html"><div class="pop_btn_wrap">
  <a class="mg_btn_base sm" href="#" onclick="openMegaPopup('popupFadeIn', 1); return false;">��÷ �˾�</a>
</div>

<div class="mg_popup_wrap z-anim mfp-hide" id="popupFadeIn" data-width="420">
  <div class="content_area">
    <div class="content_inner pb20">
      <p class="m_tit">2022.8.17.<br><strong class="blue">��÷�� ���ϵ帳�ϴ�!</strong></p>
      <div><img src="<%=img_main%>/m/2022/0907_paper/prize_img02.png" alt="�̽�������"></div>
    </div>
    <div class="tit_area blue">[�ް�������] �Ųٷ� �÷��� ��ũ �÷�</div>
    <div class="content_inner">
      <ul class="s_info">
        <li><span>��</span>��÷�ǽ� �Ųٷ� �÷��ʴ� 7/20(��)  �߼۵� �����̿���, ���� ������ ����  �߼����� ����� �� �ֽ��ϴ�.</li>
        <li><span>��</span>�Ųٷ� �÷��ʴ� ȸ�� ���� ���� �ּ� ��%�ּ��ּ��ּ��ּ��ּ��ּ��ּ�%�� �� �߼۵� �����Դϴ�. <a href="#">[ �ּ� ���� > ]</a></li>
        <li><span>��</span>�ּ� �̱��� & ������� ���� ��߼��� �Ұ��մϴ�.</li>
      </ul>
      <div class="mg_btn_wrap">
        <a href="#" class="mg_btn_base" onclick="$.magnificPopup.close();">Ȯ��</a>
      </div>
    </div>
  </div>
</div></div>

<!-- CSS -->
<!-- JS -->

<p class="page_text">�ް����͵� ������ ȫ�� ���������� �ַ� ���Ǵ� �˾� ����Դϴ�.<br>
������ ��ư�� Ŭ���ϸ� ���̵���(Fade-In)ȿ���� �Բ� ����(Dimmed) ó���� �˾��� ��Ÿ���ϴ�.<br>
�ش� �ڵ带 ���� �����Ǵ� �˾��� ���콺 ��ũ�� ���� ���� ȭ�� Body �̵��� �Ұ����մϴ�.<br> 
�˾��� �ݰ� �� �Ŀ��� �ٽ� ��ũ�� �̵��� ���������ϴ�.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/megagong.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#��÷�˾�</p> </li>
                            <li><p>#������</p> </li>
                            <li><p>#����</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->



            <div class="page_text_wrap">
                <p class="page_head">�˾� ȣ�� - Fade Up & Down & Body ���� </p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <div class="position_site"><img src="/images/popup8.png" alt='�˾���ġ' ></div>
                <div class="position_site"><img src="/images/popup7.png" alt='�˾���ġ' ></div>

<!-- HTML -->
<div class="code-box html"><div class="pop_btn_wrap">
  <a class="mg_btn_base sm" href="#" onclick="openMegaPopup('popupFadeDown', 3)">��ܿ��� �پ ������</a>
  <a class="mg_btn_base sm" href="#" onclick="openMegaPopup('popupFadeUp', 2)">�ϴܿ��� �پ �ö��</a>
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

<p class="page_text">�ް����͵� ������ ȫ�� ���������� �ַ� ���Ǵ� �˾� ����Դϴ�.<br>
�� Ȥ�� �Ʒ����� ���̵��(Fade-Up) �� ���̵�ٿ�(Fade-Down)ȿ���� �Բ� ����(Dimmed) ó���� �˾��� ��Ÿ���ϴ�.<br>
�ش� �ڵ带 ���� �����Ǵ� �˾��� ���콺 ��ũ�� ���� ���� ȭ�� Body �̵��� �Ұ����մϴ�.<br>
����, iOS������ ȭ�� ���°� �����˴ϴ�.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>


                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/megagong.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#Ư����ġ</p> </li>
                            <li><p>#�ö����</p> </li>
                            <li><p>#��������</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->







            <div class="page_text_wrap">
                <p class="page_head">(���� ����1) �˸� ��û �˾� ȣ�� </p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <div class="position_site"><img src="/images/popup6.png" alt='�˾���ġ' ></div>

<!-- HTML -->
<div class="code-box html"><div class="pop_btn_wrap">
  <a class="mg_btn_base sm" href="#" onclick="openNoticePopup(); return false;">�˸���û �˾� - �˾� ���� ���� �� ���߷��� ���� ���̽�</a>
</div>

<div class="mg_popup_wrap z-anim mfp-hide" id="popupFadeInNotice" data-width="700">
  <div class="content_area">
    <div class="content_inner">
      <a href="#" class="mg_popup_close" onclick="closeNoticePopup(); return false;"></a>
      <p class="b_tit">��.��.��.��+ �˸� ��û</p>
      <p class="s_tit">2023 NEW ��Ʈ+�� �Բ��ϴ� ��.��.��.��+ �� ��ġ�� �ʵ���<br>LIVE ���� 10�� ��, �˸� ���ڸ� �����帳�ϴ�.</p>
      <div class="mg_tb_wrap mt30">
        <table summary="��û ���" class="mg_tb_form">
          <colgroup>
            <col width="120">
            <col width="*">
          </colgroup>
          <tbody>
            <tr>
              <th scope="row">�̸�</th>
              <td>ȫ�浿</td>
            </tr>
            <tr>
              <th scope="row">�޴��� ��ȣ</th>
              <td>
                <input type="text" class="mg_input" value="010-1234-5678">
              </td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="mg_tb_wrap mt30">
        <table summary="���� ����" class="mg_tb_form">
          <colgroup>
            <col width="120">
            <col width="*">
          </colgroup>
          <tbody>
            <tr>
              <th scope="row">���� �̹���</th>
              <td>
                <div class="mg_filebox clfix">
                  <div class="filename">
                    <input type="text" id="filename" name="filename" value="���� �̹����� ���ε��� �ּ���.">
                    <a id="btn_fileDel" href="javascript:void(0);" onclick="document.getElementById('filename').value='���� �̹����� ���ε��� �ּ���.';document.getElementById('attfile').value='';document.getElementById('attfile_ori_name').value=''; $('#btn_fileDel').show();" title="����">[����]</a>
                  </div>
                  <div class="filebtn">
                    <label for="attfile" style="cursor:pointer">���� ����</label>
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
              <th scope="row">���� URL</th>
              <td><input type="text" class="mg_input" name="cert_url" id="cert_url" value="" placeholder="�Խñ��� URL�� �Է��� �ּ���."></td>
            </tr>
            <tr>
              <th scope="row">����</th>
              <td><textarea class="mg_textarea" name="p_intro" id="p_intro" cols="30" rows="10" maxlength="500" placeholder="���� ������ 10�� �̻� 500�� ���Ϸ� �ۼ� �����մϴ�."></textarea></td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="mg_info_wrap mt30">
        <p class="info_tit">�� ���ǻ���</p>
          <ul class="info_list">
            <li><span>��</span>�ش� �˸� ���񽺴� 2022.09.13.(ȭ) 18:50 SMS�� �߼۵˴ϴ�.</li>
            <li><span>��</span>�޴��� ��ȣ�� ȸ������ �������� ���� �����մϴ�. <a href="#">ȸ������ ���� ></a></li>
            <li><span>��</span>���ھ˸� ���񽺴� SMS ���ŵ��Ǹ� �ؾ� ��û�� �����ϸ�, <br>���Ƿ� �����Ǿ��� ��� ��û ���ο� ������� �˸����� �߼��� �Ұ��մϴ�. <a href="#">SMS ���ŵ��� ></a></li>
          </ul>
      </div>
      <div class="mg_btn_wrap">
        <a href="#" class="mg_btn_base xl" onclick="completeNotice(); return false;">�˸� ��û�ϱ� ></a>
      </div>
    </div>
  </div>
</div></div>

<!-- CSS -->
<!-- JS -->
<script>var isNoticePopupDimm = false;

function openNoticePopup() {
  var q = window.confirm('�˾��� ���ðڽ��ϱ�?');
  if (q) {
    isNoticePopupDimm = true;
    openMegaPopup('popupFadeInNotice', 4, false, true);
  }
}

function closeNoticePopup() {
  var q = window.confirm('�˸���û�� ���� �ʰ� �˾��� �����ðڽ��ϱ�?');
  if (q) {
    isNoticePopupDimm = false;
    $.magnificPopup.close();
  }
}

function completeNotice() {
  alert('�˸� ��û�� �Ϸ�Ǿ����ϴ�.');
  $.magnificPopup.close();
}

$(document).on('click', '.mg_popup_dimm', function(){
  if (isNoticePopupDimm) {
    closeNoticePopup();
  }
});

//���� ���ε�
var getFileExtention = function(filename) {
  return filename.substring(filename.lastIndexOf('.')+1, filename.length) || filename;
}

var maxSize = 5 * 1024 * 1024;//5MB  
var ChangeFile = function(obj, filename_field) {
  if (typeof obj.files[0] !== "undefined") {
    var file_ext = getFileExtention(obj.files[0].name.toLowerCase());
    //if (file_ext != 'jpg' && file_ext != 'jpeg' && file_ext != 'gif' && file_ext != 'png' && file_ext != 'pdf') {
    if (file_ext != 'jpg' && file_ext != 'jpeg' && file_ext != 'gif' && file_ext != 'png') {
      alert('JPG, JPEG, GIF �Ǵ� PNG Ȯ���� ���ϸ� ���ε� �����մϴ�.');
      obj.files[0].value = null;
      tempHtml = "<input type='file' id='attfile' name='attfile' value='' onchange=\"ChangeFile(this, 'filename')\">";
      $('#attfile').replaceWith(tempHtml);         
      document.getElementById('attfile_ori_name').value='';       
      document.getElementById(filename_field).value="���� �̹����� ���ε��� �ּ���.";
      return;
    } else {
    //÷������ ������ üũ      
      if(obj.files[0].size > maxSize){
        tempHtml = "<input type='file' id='attfile' name='attfile' value='' onchange=\"ChangeFile(this, 'filename')\">";
        $('#attfile').replaceWith(tempHtml);     
        document.getElementById('attfile_ori_name').value='';                  
        alert("÷�������� 5MB ���Ϸ� ����� �����մϴ�.");
        return;
        }
      document.getElementById(filename_field).value=obj.files[0].name;
      fncFileUPloadNew('','board','event','<%=evt_cd%>','attfile', ',', 'N', 'Y');                               
    }
      $("#btn_fileDel").show();
  } else {
    document.getElementById(filename_field).value="���� �̹����� ���ε��� �ּ���.";
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
          $("#"+id_txt).val("÷�������� ������ּ���.");
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

<p class="page_text">�ް����͵� ������ ȫ�� ���������� '�˸���û' ���� ���� �ַ� ���Ǵ� �˾� ����Դϴ�.<br>
������ ��ư�� Ŭ���ϸ� ���̵���(Fade-In)ȿ���� �Բ� ����(Dimmed) ó���� �˾��� ��Ÿ���ϴ�.<br>
�ش� �˾������� �̹��� ���� �� ����ڰ� ������ ���� ���� ���� ���� �ۼ��Ͽ� ������ ������ �� �ֽ��ϴ�.<br>
���� �˾��� ���� ���� ���� ������ ���߷����� ���� �� �ֽ��ϴ�. <br>
�ش� �ڵ带 ���� �����Ǵ� �˾��� ���콺 ��ũ�� ���� ���� ȭ�� Body �̵��� �Ұ����մϴ�. �ٸ�, iOS������ �̵��� �����մϴ�.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-javascript act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/megagong.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#���ߴ���</p> </li>
                            <li><p>#�˸���û</p> </li>
                            <li><p>#����</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->



            <div class="page_text_wrap">
                <p class="page_head">(���� ����2) �˸� ��û �˾� ȣ�� </p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <div class="position_site"><img src="/images/popup6.png" alt='�˾���ġ' ></div>

<!-- HTML -->
<div class="code-box html"><div class="pop_btn_wrap">
  <a class="mg_btn_base sm" href="#" onclick="openSamplePopup2(); return false;">��û �˾�2 - �˾� ���� ���� �� ���߷��� ���� ���̽�</a>
</div>

<div class="mg_popup_wrap z-anim mfp-hide" id="popupSample" data-width="700">
  <div class="content_area">
    <div class="content_inner">
      <a href="#" class="mg_popup_close" onclick="closeSamplePopup2(); return false;"></a>
      <p class="b_tit">���� �˾�</p>
      <p class="s_tit">���� ����</p>
      <div class="mg_tb_wrap mt30">
        <table summary="��û ���" class="mg_tb_form">
          <colgroup>
            <col width="120">
            <col width="*">
          </colgroup>
          <tbody>
            <tr>
              <th scope="row">�̸�</th>
              <td>ȫ�浿</td>
            </tr>
            <tr>
              <th scope="row">�޴��� ��ȣ</th>
              <td>
                <input type="text" class="mg_input" value="010-1234-5678">
              </td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="mg_info_wrap mt30">
        <p class="info_tit">�� ���ǻ���</p>
          <ul class="info_list">
            <li><span>��</span>�ش� �˸� ���񽺴� 2022.09.13.(ȭ) 18:50 SMS�� �߼۵˴ϴ�.</li>
            <li><span>��</span>�޴��� ��ȣ�� ȸ������ �������� ���� �����մϴ�. <a href="#">ȸ������ ���� ></a></li>
            <li><span>��</span>���ھ˸� ���񽺴� SMS ���ŵ��Ǹ� �ؾ� ��û�� �����ϸ�, <br>���Ƿ� �����Ǿ��� ��� ��û ���ο� ������� �˸����� �߼��� �Ұ��մϴ�. <a href="#">SMS ���ŵ��� ></a></li>
          </ul>
      </div>
      <div class="mg_btn_wrap">
        <a href="#" class="mg_btn_base xl" onclick="completeSample2(); return false;">�˸� ��û�ϱ� ></a>
      </div>
    </div>
  </div>
</div></div>

<!-- CSS -->
<!-- JS -->
<script>function openSamplePopup2() {
  var q = window.confirm('�˾��� ���ðڽ��ϱ�?');
  if (q) {
    openMegaPopup('popupSample', 5, false, true);
  }
}

function closeSamplePopup2() {
  var q = window.confirm('��û�� ���� �ʰ� �˾��� �����ðڽ��ϱ�?');
  if (q) {
    isNoticePopupDimm = false;
    $.magnificPopup.close();
  }
}

function completeSample2() {
  alert('��û�� �Ϸ�Ǿ����ϴ�.');
  $.magnificPopup.close();
}

$(document).on('click', '.mg_popup_dimm2', function(){
  closeSamplePopup2();
});
</script>

<p class="page_text">�ް����͵� ������ ȫ�� ���������� ���� ������ ���� �� �ַ� ���Ǵ� �˾� ����Դϴ�.<br>
������ ��ư�� Ŭ���ϸ� ���̵���(Fade-In)ȿ���� �Բ� ����(Dimmed) ó���� �˾��� ��Ÿ���ϴ�.<br>
���� �˾��� ���� ���� ���� ������ ���߷����� ���� �� �ֽ��ϴ�. <br>
�ش� �ڵ带 ���� �����Ǵ� �˾��� ���콺 ��ũ�� ���� ���� ȭ�� Body �̵��� �Ұ����մϴ�. �ٸ�, iOS������ �̵��� �����մϴ�.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-javascript act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/megagong.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#���ߴ���2</p> </li>
                            <li><p>#��û</p> </li>
                            <li><p>#����</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->




            <div class="page_text_wrap">
                <p class="page_head">(���� ����3) �˸� ��û �˾� ȣ�� </p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <div class="position_site"><img src="/images/popup6.png" alt='�˾���ġ' ></div>

<!-- HTML -->
<div class="code-box html"><div class="pop_btn_wrap">
  <a class="mg_btn_base sm" href="#" onclick="openSamplePopup3(); return false;">��û �˾� - �˾� ���� ���� �� ���߷��� ���� ���̽�</a>
</div>

<div class="mg_popup_wrap z-anim mfp-hide" id="popupSample" data-width="700">
  <div class="content_area">
    <div class="content_inner">
      <a href="#" class="mg_popup_close" onclick="closeSamplePopup3(); return false;"></a>
      <p class="b_tit">���� �˾�</p>
      <p class="s_tit">���� ����</p>
      <div class="mg_tb_wrap mt30">
        <table summary="��û ���" class="mg_tb_form">
          <colgroup>
            <col width="120">
            <col width="*">
          </colgroup>
          <tbody>
            <tr>
              <th scope="row">�̸�</th>
              <td>ȫ�浿</td>
            </tr>
            <tr>
              <th scope="row">�޴��� ��ȣ</th>
              <td>
                <input type="text" class="mg_input" value="010-1234-5678">
              </td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="mg_info_wrap mt30">
        <p class="info_tit">�� ���ǻ���</p>
          <ul class="info_list">
            <li><span>��</span>�ش� �˸� ���񽺴� 2022.09.13.(ȭ) 18:50 SMS�� �߼۵˴ϴ�.</li>
            <li><span>��</span>�޴��� ��ȣ�� ȸ������ �������� ���� �����մϴ�. <a href="#">ȸ������ ���� ></a></li>
            <li><span>��</span>���ھ˸� ���񽺴� SMS ���ŵ��Ǹ� �ؾ� ��û�� �����ϸ�, <br>���Ƿ� �����Ǿ��� ��� ��û ���ο� ������� �˸����� �߼��� �Ұ��մϴ�. <a href="#">SMS ���ŵ��� ></a></li>
          </ul>
      </div>
      <div class="mg_btn_wrap">
        <a href="#" class="mg_btn_base xl" onclick="completeSample2(); return false;">�˸� ��û�ϱ� ></a>
      </div>
    </div>
  </div>
</div></div>

<!-- CSS -->
<!-- JS -->
<script>function openSamplePopup3() {
  var q = window.confirm('�˾��� ���ðڽ��ϱ�?');
  if (q) {
    openMegaPopup('popupSample', 6, false, true);
  }
}

function closeSamplePopup3() {
  var q = window.confirm('��û�� ���� �ʰ� �˾��� �����ðڽ��ϱ�?');
  if (q) {
    isNoticePopupDimm = false;
    $.magnificPopup.close();
  }
}

function completeSample3() {
  alert('��û�� �Ϸ�Ǿ����ϴ�.');
  $.magnificPopup.close();
}

$(document).on('click', '.mg_popup_dimm3', function(){
  closeSamplePopup3();
});
</script>

<p class="page_text">�ް����͵� ������ ȫ�� ���������� ���� ������ ���� �� �ַ� ���Ǵ� �˾� ����Դϴ�.<br>
������ ��ư�� Ŭ���ϸ� ���̵���(Fade-In)ȿ���� �Բ� ����(Dimmed) ó���� �˾��� ��Ÿ���ϴ�.<br>
���� �˾��� ���� ���� ���� ������ ���߷����� ���� �� �ֽ��ϴ�. <br>
�ش� �ڵ带 ���� �����Ǵ� �˾��� ���콺 ��ũ�� ���� ���� ȭ�� Body �̵��� �Ұ����մϴ�. �ٸ�, iOS������ �̵��� �����մϴ�.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-javascript act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/megagong.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#���ߴ���3</p> </li>
                            <li><p>#�˸���û</p> </li>
                            <li><p>#����</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->






            <%If 1=2 Then%>
            <div class="page_text_wrap">
                <p class="page_head">(���� ����) �˸� ��û �˾� ȣ�� - Fade-In & Body ���� </p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <div class="position_site"><img src="/images/popup6.png" alt='�˾���ġ' ></div>

<!-- HTML -->
<div class="code-box html"><div class="pop_btn_wrap">
  <a class="mg_btn_base sm" href="#" onclick="openNoticePopup(); return false;">�˸���û �˾� - �˾� ���� ���� �� ���߷��� ���� ���̽�</a>
</div>

<div class="mg_popup_wrap z-anim mfp-hide" id="popupFadeInNotice" data-width="700">
  <div class="content_area">
    <div class="content_inner">
      <a href="#" class="mg_popup_close" onclick="closeNoticePopup(); return false;"></a>
      <p class="b_tit">��.��.��.��+ �˸� ��û</p>
      <p class="s_tit">2023 NEW ��Ʈ+�� �Բ��ϴ� ��.��.��.��+ �� ��ġ�� �ʵ���<br>LIVE ���� 10�� ��, �˸� ���ڸ� �����帳�ϴ�.</p>
      <div class="mg_tb_wrap mt30">
        <table summary="��û ���" class="mg_tb_form">
          <colgroup>
            <col width="120">
            <col width="*">
          </colgroup>
          <tbody>
            <tr>
              <th scope="row">�̸�</th>
              <td>ȫ�浿</td>
            </tr>
            <tr>
              <th scope="row">�޴��� ��ȣ</th>
              <td>
                <input type="text" class="mg_input" value="010-1234-5678">
              </td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="mg_tb_wrap mt30">
        <table summary="���� ����" class="mg_tb_form">
          <colgroup>
            <col width="120">
            <col width="*">
          </colgroup>
          <tbody>
            <tr>
              <th scope="row">���� �̹���</th>
              <td>
                <div class="mg_filebox clfix">
                  <div class="filename">
                    <input type="text" id="filename" name="filename" value="���� �̹����� ���ε��� �ּ���.">
                    <a id="btn_fileDel" href="javascript:void(0);" onclick="document.getElementById('filename').value='���� �̹����� ���ε��� �ּ���.';document.getElementById('attfile').value='';document.getElementById('attfile_ori_name').value=''; $('#btn_fileDel').show();" title="����">[����]</a>
                  </div>
                  <div class="filebtn">
                    <label for="attfile" style="cursor:pointer">���� ����</label>
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
              <th scope="row">���� URL</th>
              <td><input type="text" class="mg_input" name="cert_url" id="cert_url" value="" placeholder="�Խñ��� URL�� �Է��� �ּ���."></td>
            </tr>
            <tr>
              <th scope="row">����</th>
              <td><textarea class="mg_textarea" name="p_intro" id="p_intro" cols="30" rows="10" maxlength="500" placeholder="���� ������ 10�� �̻� 500�� ���Ϸ� �ۼ� �����մϴ�."></textarea></td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="mg_info_wrap mt30">
        <p class="info_tit">�� ���ǻ���</p>
          <ul class="info_list">
            <li><span>��</span>�ش� �˸� ���񽺴� 2022.09.13.(ȭ) 18:50 SMS�� �߼۵˴ϴ�.</li>
            <li><span>��</span>�޴��� ��ȣ�� ȸ������ �������� ���� �����մϴ�. <a href="#">ȸ������ ���� ></a></li>
            <li><span>��</span>���ھ˸� ���񽺴� SMS ���ŵ��Ǹ� �ؾ� ��û�� �����ϸ�, <br>���Ƿ� �����Ǿ��� ��� ��û ���ο� ������� �˸����� �߼��� �Ұ��մϴ�. <a href="#">SMS ���ŵ��� ></a></li>
          </ul>
      </div>
      <div class="mg_btn_wrap">
        <a href="#" class="mg_btn_base xl" onclick="completeNotice(); return false;">�˸� ��û�ϱ� ></a>
      </div>
    </div>
  </div>
</div></div>

<!-- CSS -->
<!-- JS -->
<script>function openNoticePopup() {
  var q = window.confirm('�˾��� ���ðڽ��ϱ�?');
  if (q) {
    openMegaPopup('popupFadeInNotice', 1, false);
  }
}

function closeNoticePopup() {
  var q = window.confirm('�˸���û�� ���� �ʰ� �˾��� �����ðڽ��ϱ�?');
  if (q) {
    $.magnificPopup.close();
  }
}

function completeNotice() {
  alert('�˸� ��û�� �Ϸ�Ǿ����ϴ�.');
  $.magnificPopup.close();
}

//���� ���ε�
var getFileExtention = function(filename) {
  return filename.substring(filename.lastIndexOf('.')+1, filename.length) || filename;
}

var maxSize = 5 * 1024 * 1024;//5MB  
var ChangeFile = function(obj, filename_field) {
  if (typeof obj.files[0] !== "undefined") {
    var file_ext = getFileExtention(obj.files[0].name.toLowerCase());
    //if (file_ext != 'jpg' && file_ext != 'jpeg' && file_ext != 'gif' && file_ext != 'png' && file_ext != 'pdf') {
    if (file_ext != 'jpg' && file_ext != 'jpeg' && file_ext != 'gif' && file_ext != 'png') {
      alert('JPG, JPEG, GIF �Ǵ� PNG Ȯ���� ���ϸ� ���ε� �����մϴ�.');
      obj.files[0].value = null;
      tempHtml = "<input type='file' id='attfile' name='attfile' value='' onchange=\"ChangeFile(this, 'filename')\">";
      $('#attfile').replaceWith(tempHtml);         
      document.getElementById('attfile_ori_name').value='';       
      document.getElementById(filename_field).value="���� �̹����� ���ε��� �ּ���.";
      return;
    } else {
    //÷������ ������ üũ      
      if(obj.files[0].size > maxSize){
        tempHtml = "<input type='file' id='attfile' name='attfile' value='' onchange=\"ChangeFile(this, 'filename')\">";
        $('#attfile').replaceWith(tempHtml);     
        document.getElementById('attfile_ori_name').value='';                  
        alert("÷�������� 5MB ���Ϸ� ����� �����մϴ�.");
        return;
        }
      document.getElementById(filename_field).value=obj.files[0].name;
      fncFileUPloadNew('','board','event','<%=evt_cd%>','attfile', ',', 'N', 'Y');                               
    }
      $("#btn_fileDel").show();
  } else {
    document.getElementById(filename_field).value="���� �̹����� ���ε��� �ּ���.";
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
          $("#"+id_txt).val("÷�������� ������ּ���.");
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

<p class="page_text">�ް����͵� ������ ȫ�� ���������� '�˸���û' ���� ���� �ַ� ���Ǵ� �˾� ����Դϴ�.<br>
������ ��ư�� Ŭ���ϸ� ���̵���(Fade-In)ȿ���� �Բ� ����(Dimmed) ó���� �˾��� ��Ÿ���ϴ�.<br>
�ش� �˾������� �̹��� ���� �� ����ڰ� ������ ���� ���� ���� ���� �ۼ��Ͽ� ������ ������ �� �ֽ��ϴ�.<br>
���� �˾��� ���� ���� ���� ������ ���߷����� ���� �� �ֽ��ϴ�. <br>
�ش� �ڵ带 ���� �����Ǵ� �˾��� ���콺 ��ũ�� ���� ���� ȭ�� Body �̵��� �Ұ����մϴ�. �ٸ�, iOS������ �̵��� �����մϴ�.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-javascript act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/megagong.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#���ߴ���</p> </li>
                            <li><p>#�˸���û</p> </li>
                            <li><p>#����</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->




            <div class="page_text_wrap">
                <p class="page_head">(���� ����) �˾� ȣ�� - �� Ŭ���� ���� </p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <div class="position_site"><img src="/images/popup6.png" alt='�˾���ġ' ></div>

<!-- HTML -->
<div class="code-box html"><div class="pop_btn_wrap">
  <a class="mg_btn_base sm" href="#" onclick="openCompleteNoticePopup(); return false;">��÷ �˾�</a>
</div>
<div class="mg_popup_wrap z-anim mfp-hide" id="popupDimIn" data-width="420">
  <div class="content_area">
    <div class="content_inner">
      <a href="#" class="mg_popup_close" onclick="closeCompleteNoticePopup(); return false;"></a>
      <p class="b_tit">��.��.��.��+ �˸� ��û</p>
      <p class="s_tit">2023 NEW ��Ʈ+�� �Բ��ϴ� ��.��.��.��+ �� ��ġ�� �ʵ���<br>LIVE ���� 10�� ��, �˸� ���ڸ� �����帳�ϴ�.</p>
      <div class="mg_tb_wrap mt30">
        <table summary="��û ���" class="mg_tb_form">
          <colgroup>
            <col width="120">
            <col width="*">
          </colgroup>
          <tbody>
            <tr>
              <th scope="row">�̸�</th>
              <td>ȫ�浿</td>
            </tr>
            <tr>
              <th scope="row">�޴��� ��ȣ</th>
              <td>
                <input type="text" class="mg_input" value="010-1234-5678">
              </td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="mg_info_wrap mt30">
        <p class="info_tit">�� ���ǻ���</p>
        <ul class="info_list">
          <li><span>��</span>�ش� �˸� ���񽺴� 2022.09.13.(ȭ) 18:50 SMS�� �߼۵˴ϴ�.</li>
          <li><span>��</span>�޴��� ��ȣ�� ȸ������ �������� ���� �����մϴ�. <a href="<%=url_main%>/member/Account_Chk.asp">ȸ������ ���� &gt;</a></li>
          <li><span>��</span>���ھ˸� ���񽺴� SMS ���ŵ��Ǹ� �ؾ� ��û�� �����ϸ�, <br>���Ƿ� �����Ǿ��� ��� ��û ���ο� ������� �˸����� �߼��� �Ұ��մϴ�. <a href="<%=url_main%>/member/Account_Chk.asp">SMS ���ŵ��� &gt;</a></li>
        </ul>
      </div>
      <div class="mg_btn_wrap">
        <a href="#" class="mg_btn_base xl" onclick="completeNoticePopup(); return false;">�˸� ��û�ϱ� &gt;</a>
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
  alert('�˸� ��û�� �Ϸ�Ǿ����ϴ�.');
  $.magnificPopup.close();
}

function closeCompleteNoticePopup() {
  var q = window.confirm('�˸���û�� ���� �ʰ� �˾��� �����ðڽ��ϱ�?');
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


<p class="page_text">����(Dimmed) ó���� �˾��� ������ ��, <br>
�ݱ� ��ư �Ӹ� �ƴ϶� �˾� �ٱ� �κ�(���� ó���� ����)�� Ŭ������ ��쿡�� �˾��� ������ ����� �����մϴ�. <br>
�ش� ����� ���� ����ڰ� ���� ��Ȱ�ϰ� �˾��� ���� ���� �� �ֵ��� �����ݴϴ�.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-javascript act"></pre>


                <a class="use_link" href="<%=url_main%>/megagong.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
            </div><!-- .page_text_wrap -->
            <%End if%>




            <%If 1=2 Then%>
            <div class="page_text_wrap">
                <p class="page_head">(���� ����) �˾� ȣ�� - �ݹ��Լ�</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <div class="position_site"><img src="/images/popup6.png" alt='�˾���ġ' ></div>

<!-- HTML -->
<div class="code-box html"><div class="pop_btn_wrap">
  <a class="mg_btn_base sm" href="#" onclick="openCallbackPopup(); return false;">�˸���û �˾� - �˾� ���� ���� �� �ݹ��Լ� ȣ���ϴ� ���̽�</a>
</div>

<div class="mg_popup_wrap z-anim mfp-hide" id="popupCallback" data-width="700">
  <div class="content_area">
      <div class="content_inner">
          <a href="javascript:;" class="mg_popup_close" onclick="closeCallbackPopup(); return false;"></a>
          <p class="b_tit">�˾� ȣ�� �� �ݹ��Լ� ����</p>
      </div>
  </div>
</div></div>

<!-- JS -->
<script>var isPopupCallback = false;

function openCallbackPopup() {
  isPopupCallback = true;
  openMegaPopup('popupCallback', 4, false, true, openCB, closeCB);
  function openCB() {
    alert('�˾� ������ �� �ݹ��Լ� ȣ��');
  }
  function closeCB() {
    alert('�˾� ������ �� �� �ݹ��Լ� ȣ��');
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
                <p class="page_head">��� �˾� - �ڼ��� ����</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <div class="position_site"><img src="/images/popup9.png" alt='�˾���ġ' ></div>
                
                
<!-- HTML -->
<div class="code-box html"><div class="pop_btn_wrap">
  <a class="mg_btn_base sm" href="#" onclick="openMegaPopup('popupFadeIn_detail', 1, true, true); return false;">�ڼ��� ���� �˾�</a>
</div>
<!-- Ŭ���� detail_view �߰� -->
<div class="mg_popup_wrap z-anim mfp-hide detail_view" id="popupFadeIn_detail" data-width="780">
  <div class="content_area">
      <div class="content_inner">
          <img src="/images/popup9_ex.png" alt="�����̹���">
      </div>
  </div>
</div></div>

<p class="page_text">���� ȫ�� Ǯ���������� �ַ� ���Ǵ� �˾� ����Դϴ�.<br>
�������� ���� �߰����� ���� �̺�Ʈ�� �ʿ��� ��� �ַ� ���Ǹ� ����(Dimmed) ó�� �Ǿ� ��Ÿ���� ���� �⺻���� �մϴ�.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/s/gong/event/2022/11100171/" target="_blank"><i class='bx bx-link'></i>EXAMPLE<!--- ���ó : �հ�����LAB ������ ���̵� --></a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#����ȫ��</p> </li>
                            <li><p>#�߰�����</p> </li>
                            <li><p>#����</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->




            <div class="page_text_wrap">
                <p class="page_head">���� �����̵� �˾�</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <!--<div class="position_site"><img src="/images/popup1.png" alt='�˾���ġ' ></div>-->
                

<!-- HTML -->
<div class="code-box html">
<!--<'% If fncRequestCookie("main_exhibi_lab") = "" then %>-->                    
  <div class="main_exhibi lab">
      <a href="javascript:;" class="close"></a>
      <div class="exhibi_sd">
          <div class="item">
              <a href="javascript:void(0);" title="�ʽû� ���̵�� ���� �ٿ�ε�">
                  <img src="/images/pop_sample.png" alt="�ʽû� ���̵�� ���� �ٿ�ε�">
              </a>
          </div>          
          <div class="item">
              <a href="javascript:void(0);" title="�ް��н� 7�� ����ü�� ���� ��û�ϱ�">
                  <img src="/images/pop_sample2.png" alt="�ް��н� 7�� ����ü�� ���� ��û�ϱ�">
              </a>
          </div>             
      </div>
      <a href="javascript:;" class="close today">���� �Ϸ� �ݱ�</a>
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

<p class="page_text">�ް��������� �پ��� ���������� �ַ� ���Ǵ� ���� �˾� ����Դϴ�.<br>
���� �Ϸ� ���� �ʱ� �� �����̵� ����� �����ϰ� �ֽ��ϴ�.</p>

<!-- Code View -->
<pre class="language-html html act direct"><code><!--<'% If fncRequestCookie("main_exhibi_lab") = "" then %>-->                    
  <div class="main_exhibi lab">
      <a href="javascript:;" class="close"></a>
      <div class="exhibi_sd">
          <div class="item">
              <a href="javascript:void(0);" title="�ʽû� ���̵�� ���� �ٿ�ε�">
                  <img src="/images/pop_sample.png" alt="�ʽû� ���̵�� ���� �ٿ�ε�">
              </a>
          </div>          
          <div class="item">
              <a href="javascript:void(0);" title="�ް��н� 7�� ����ü�� ���� ��û�ϱ�">
                  <img src="/images/pop_sample2.png" alt="�ް��н� 7�� ����ü�� ���� ��û�ϱ�">
              </a>
          </div>             
      </div>
      <a href="javascript:;" class="close today">���� �Ϸ� �ݱ�</a>
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
                            <li><p>#�˾����</p> </li>
                            <li><p>#����</p> </li>
                            <li><p>#�����̵�</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->



            <div class="page_text_wrap">
                <p class="page_head">�̺�Ʈ ��� �˾� - �߾� �� �˾�</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <!--<div class="position_site"><img src="/images/popup1.png" alt='�˾���ġ' ></div>-->
                

<!-- HTML -->
<div class="code-box html"><a class="popup_13_btn" href="#" onclick="openMegaPopup('popupTerms', 1, true, false); return false;">�ڼ������� &gt;</a>
<div class="mg_popup_wrap z-anim mfp-hide" id="popupTerms" data-width="420">
  <div class="content_area">
    <div class="content_inner">
<div class="terms_info"><strong>1. �������� ���� �̿� ����</strong>
-�̺�Ʈ �ȳ� �� SMS �߼� � Ȱ��
<strong>2. �������� ���� �׸� �� ���� �Ⱓ</strong>
-���̵�, ��ȭ��ȣȸ�� 
-Ż�� �� ȸ���ڰ��� �����Ǵ� �Ⱓ ����
<strong>3. ������������ ���ǰźο� ���� ������</strong>
-���ϴ� �������� ���� ���Ǹ� �ź��� �� ������ ���� �źο� ����
�������� ������, �� ���������� ä�� ���� �̺�Ʈ�� �ݵ��
�ʿ��� ��������, �ź��Ͻ� ��� �ش� �̺�Ʈ ��÷ �� ��ǰ ������
�Ұ����� �ȳ��帳�ϴ�.</div>
    </div>
  </div>
</div></div>

<style>a.popup_13_btn{font-size:13px;font-weight:bold;color:#ea2771;text-decoration:underline;}</style>

<p class="page_text">�ް��������� �̺�Ʈ&amp;���θ�� ���������� �ַ� ���Ǵ� ��� �˾��Դϴ�.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="https://dev.megagong.net/s/gong/event/2023/06010066/index.asp#event1" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#����˾�</p></li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->


            <div class="page_text_wrap">
                <p class="page_head">�̺�Ʈ ��� �˾� - tiny �˾�</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <!--<div class="position_site"><img src="/images/popup1.png" alt='�˾���ġ' ></div>-->
                

<!-- HTML -->
<div class="code-box html"><a class="popup_14_btn" href="#" onclick="openCmegaPopup('popupTermsTiny'); return false;">�ڼ������� &gt;</a>
<div class="cmg_popup_wrap" id="popupTermsTiny" style="width: 420px; display: none;">
  <a href="javascript:;" class="mg_popup_close rect" onclick="closeCmegaPopup('popupTermsTiny')"></a>
  <div class="content_area">
    <div class="content_inner line">
      <div class="terms_info"><strong>1. �������� ���� �̿� ����</strong>
      -�̺�Ʈ �ȳ� �� SMS �߼� � Ȱ��
      <strong>2. �������� ���� �׸� �� ���� �Ⱓ</strong>
      -���̵�, ��ȭ��ȣȸ�� 
      -Ż�� �� ȸ���ڰ��� �����Ǵ� �Ⱓ ����
      <strong>3. ������������ ���ǰźο� ���� ������</strong>
      -���ϴ� �������� ���� ���Ǹ� �ź��� �� ������ ���� �źο� ����
      �������� ������, �� ���������� ä�� ���� �̺�Ʈ�� �ݵ��
      �ʿ��� ��������, �ź��Ͻ� ��� �ش� �̺�Ʈ ��÷ �� ��ǰ ������
      �Ұ����� �ȳ��帳�ϴ�.</div>
    </div>
  </div>
</div></div>

<style>a.popup_14_btn{font-size:13px;font-weight:bold;color:#ea2771;text-decoration:underline;}</style>

<p class="page_text">�ް��������� �̺�Ʈ&amp;���θ�� ���������� �ַ� ���Ǵ� ��� �˾��Դϴ�.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="https://dev.megagong.net/s/gong/event/2023/06010066/index.asp#event1" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#����˾�</p></li>
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