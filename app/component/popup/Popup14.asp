<script type="text/babel">
  'use strict';

  function Popup14({ title, onChange }) {

const html = `<% If fncRequestCookie("todayPopupErrorNotice") = "" then %>
<div class="" id="popupErrorNotice">
  <div class="cmg_popup_inner">
    <div class="mg_btn_wrap right top dim">
    <button class="mg_btn_base sm" onclick="closeCmegaPopupTeacherTeaserToday();">오늘 하루 닫기</button>
    <button class="mg_btn_base sm" onclick="closeCmegaPopup('popupErrorNotice')">닫기</button>
    </div>
    <div class="img_area">
        <img class="hide-768" src="<%=img_main%>/m/2024/0626_refund/bn_error.png" alt="" />
        <img class="show-768" src="<%=img_main%>/m/2024/0626_refund/bn_error_mo.png" alt="" />
        <a href="javascript:fnc_cpn();">쿠폰 다운 받기 ></a>
    </div>
  </div>
</div>
<% end if %>`;

const css = `#popupErrorNotice {position: absolute;left: 50%;top: 30px;z-index: 2;margin-left: 285px;width:316px}
#popupErrorNotice .mg_btn_base.sm{background: #fff; color: #000; border-color: #000; font-size: 11px; padding: 4px 10px; margin: 0 2px 3px;} 
#popupErrorNotice .img_area{position: relative;} 
#popupErrorNotice .img_area a{position: absolute; left: 50%; transform: translateX(-50%); z-index: 3; bottom: 7%; height: 9%; width: 58%; font-size: 0; /*background: #ff000057;*/} `;

const excCss = `#popupErrorNotice{position:static;margin-left:0;}`;

const js = `if(getCookie('todayPopupErrorNotice') == 'close'){
  closeCmegaPopup('popupErrorNotice');
}
function closeCmegaPopupTeacherTeaserToday() {
  setCookiePopupToday('todayPopupErrorNotice', 'close', 1);
  closeCmegaPopup('popupErrorNotice');
}`;

    return (
      <PageContent
        title={title}
        desc="메가공무원의 메인 페이지에서 주로 사용되는 쿠폰 팝업입니다."
        // image="/images/popup9.png"
        prevHtml={replaceSpecialTags(`&lt;% If fncRequestCookie("todayPopupErrorNotice") = "" then%&gt;`)}
        html={html}
        nextHtml={replaceSpecialTags(`&lt;% end if %&gt;`)}
        css={css}
        excCss={excCss}
        js={js}
        items={["메인팝업","쿠폰지급"]}
        link="<%=url_main%>"
        onChange={onChange}
      />
    )
  }
</script>