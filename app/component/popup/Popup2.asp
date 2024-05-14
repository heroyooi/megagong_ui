<script type="text/babel">
  'use strict';

  function Popup2({ title, onChange }) {

const html = `<div class="pop_btn_wrap">
  <a class="mg_btn_base sm mg_txt" href="#" onclick="deleteCookieAndReload('todayPopupPassServiceCookie'); return false;">오늘 하루 닫기 팝업 관련 쿠키값 초기화</a>
</div>

<%if fncRequestCookie("todayPopupPassServiceCookie") = "" then%>
<div class="cmg_popup_wrap cmg_fullpage no_fixed popup_pass" id="popupPass">
    <div class="cmg_popup_inner dim">
	    <span class="dim_bg">-</span>
        <div class="content_inner">
            <div class="banner_popup_btn">
                <button class="mg_btn_base sm" onclick="closeTodaypopupPass();">오늘 하루 보지 않기</button>
                <button class="mg_btn_base sm close" onclick="closeCmegaPopup('popupPass')">닫기</button>
            </div>
            <div class="banner_wrapper">
                <img src="<%=img_main%>/m/2024/0514_pass/gong/pass_pop1.jpg" alt="메가패스 선물대첩 5-5-5 이벤트">
                <div class="btn_wrapper">
                    <a href="<%=url_main%>/s/gong/pass/sale_2025.asp#eventWrap" title="공무원 메가패스">공무원 메가패스 <img src="<%=img_main%>/m/2024/0514_pass/gong/pop_arrow.png" alt="-"></a>
                    <a href="<%=url_main%>/s/gong/pass/total_tech_sale_2025.asp#eventWrap" title="기술직 메가패스">기술직 메가패스 <img src="<%=img_main%>/m/2024/0514_pass/gong/pop_arrow.png" alt="-"></a>
                </div>
            </div>
        </div>
    </div>
</div>
<%End if%>`;

const css = `.popup_pass .cmg_popup_inner.dim { display: flex; flex-direction: column; align-items: center; justify-content: center; max-width: initial; padding: 0 !important; background-color: rgba(0, 0, 0, 0.8); } 
.popup_pass.dimm-opacity-50 .cmg_popup_inner.dim{background-color:  rgba(0, 0, 0, 0.5);}
.popup_pass .content_inner { width: 660px;font-family: 'NotoSans KR';} 
.popup_pass .content_inner .moVer {display: none;}
.popup_pass .content_inner .banner_popup_btn { display: flex; flex-direction: row; align-items: center; justify-content: flex-end; width: 100%; margin-bottom: 5px; position: relative; z-index: 1;} 
.popup_pass .content_inner .banner_popup_btn button { margin-right: 5px; } 
.popup_pass .content_inner .banner_popup_btn button:last-of-type { margin-right: 0; } 
.popup_pass .content_inner .banner_popup_btn button.mg_btn_base.sm {} 
.popup_pass .content_inner .banner_wrapper { position: relative;} 
.popup_pass .content_inner .banner_wrapper .btn_wrapper {display: flex; flex-wrap: wrap;background:#000}
.popup_pass .content_inner .banner_wrapper .btn_wrapper a {position:relative;display:flex;flex: 1;height: 60px;justify-content: center;align-items: center;color: #fff;font-size: 16px;border:1px solid #777777}
.popup_pass .content_inner .banner_wrapper .btn_wrapper a img{position:absolute;top:50%;right:15px;margin:-9px 0 0}
.popup_pass .dim_bg{position: absolute;top: 0;left: 0;width: 100%;height: 100%;}


@media screen and (max-width: 1200px){
    .popup_pass .content_inner { width: 96%; max-width: 550px; } 
}
@media screen and (max-width: 576px) {
    .popup_pass .content_inner .banner_wrapper .btn_wrapper a {font-size: 14px;height:50px}
}`;

const excCss = `
.cmg_popup_wrap.cmg_fullpage{position:relative;}
.cmg_popup_wrap.cmg_fullpage.no_fixed .cmg_popup_inner{padding:30px 2% 60px !important;}
`;

const js = `if(getCookie('todayPopupPassServiceCookie') == 'close'){
    closeCmegaPopup('popupPass');
}
function closeTodaypopupPass() {
    setCookiePopupToday('todayPopupPassServiceCookie', 'close', 1);
    closeCmegaPopup('popupPass');
}

$('.popup_pass .dim_bg').on('click', function(){
  $('.popup_pass .mg_btn_base.close').trigger('click');
});`;

    return (
      <PageContent
        title={title}
        desc=""
        image="/images/popup3.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["하루보지않기","중앙팝업"]}
        link="<%=url_main%>/megagong.asp?now=2024-05-14 09:00"
        onChange={onChange}
      />
    )
  }
</script>