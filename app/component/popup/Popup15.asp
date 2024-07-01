<script type="text/babel">
  'use strict';

  function Popup15({ title, onChange }) {

const html = `<% If fncRequestCookie("todayPopupDiscountCookie") = "" then %><div id="popupDiscountNotice">
  <div class="cmg_popup_inner">
      <div class="mg_btn_wrap right top dim">
      <button class="mg_btn_base sm" onclick="closeCmegaPopupToday();">오늘 하루 닫기</button>
      <button class="mg_btn_base sm" onclick="closeCmegaPopup('popupDiscountNotice')">닫기</button>
      </div>
      <div class="img_area">
          <div class="pop_20240702">
              <p class="txt01">
                  타사 환승 회원만<br />
                  THE FIRST 메가패스<br />
                  <span class="blue">특별 할인 이벤트</span>
              </p>

              <% if cdate(lo_now_date) < cdate("2024-07-16 10:00") then %>
              <div class="gray_box">
                  <div class="cirbox">7/15(월)까지</div>
                  <p class="txt02">기존 25만</p>
                  <p class="txt02 cir blue">15만 추가 할인!</p>
              </div>
              <% elseif cdate(lo_now_date) >= cdate("2024-07-16 10:00") and cdate(lo_now_date) < cdate("2024-07-30 10:00") then %>
              <div class="gray_box">
                  <div class="cirbox">7/29(월)까지</div>
                  <p class="txt02">기존 25만</p>
                  <p class="txt02 cir blue">10만 추가 할인!</p>
              </div>
              <% elseif cdate(lo_now_date) >= cdate("2024-07-30 10:00") and cdate(lo_now_date) < cdate("2024-08-13 09:00") then %>
              <div class="gray_box">
                  <div class="cirbox">8/12(월)까지</div>
                  <p class="txt02">기존 25만</p>
                  <p class="txt02 cir blue">5만 추가 할인!</p>
              </div>
              <% end if %>

              <p class="txt01 d_day">이벤트 마감 D-00</p>
              <a href="javascript:();">지금 환승하기 ></a>
          </div>
      </div>
  </div>
</div><% end if %>`;

const css = `.pop_20240702 {background-color:#fff;padding: 20px;box-sizing: border-box;text-align: center; border:1px solid #000;}
.pop_20240702 .blue {color: #0082ff;}
.pop_20240702 .txt01 {margin-bottom: 20px;font-size: 16px;font-weight: bold;line-height: 1.3;}
.pop_20240702 .txt02 {font-size: 18px;font-weight: bold;line-height: 1.2;}
.pop_20240702 .gray_box .cirbox {display:inline-block;padding: 2px 14px;margin-bottom: 10px;background-color: #fff;border-radius: 20px;border: 2px solid #aaaaaa; font-weight: bold;}
.pop_20240702 .txt02.cir {display: flex; align-items: center; justify-content: center;}
.pop_20240702 .txt02.cir:before {display: inline-block; content: ""; width: 30px; height:30px; background-image:url(https://design.megagong.net/image/m/2024/0702_main/plus.png); background-size: 100% 100%; background-repeat:no-repeat; background-position: center center;}
.pop_20240702 .gray_box {padding: 20px 0;width: 100%;background-color:#efefef;}
.pop_20240702 .txt01.d_day {margin: 20px 0;}

#popupDiscountNotice {position: absolute;left: 50%;top: 250px;z-index: 15;margin-left: 285px;width:316px}
#popupDiscountNotice .mg_btn_base.sm{background: #fff; color: #000; border-color: #000; font-size: 11px; padding: 4px 10px; margin: 0 2px 3px;} 
#popupDiscountNotice .img_area{position: relative;} 
#popupDiscountNotice .img_area a {display:block; margin:0 auto; width: 50%; padding: 10px 0; color: #fff; position:static; background:#0082ff; text-align: center; border-radius: 4px; font-size: 16px; transform: translateX(0);}

@media screen and (max-width: 1200px) {
  #popupDiscountNotice {margin-left: 0;left: auto;right: 1%;}
}

@media screen and (max-width: 768px) {
  #popupDiscountNotice {left: 50%;right: auto;transform: translateX(-50%);width:min(90%,571px);top: 10px;}
}`;

const excCss = `#popupDiscountNotice{position:static;margin-left:0;}`;

const js = `if(getCookie('todayPopupDiscountCookie') == 'close'){
  closeCmegaPopup('popupDiscountNotice');
}
function closeCmegaPopupToday() {
  setCookiePopupToday('todayPopupDiscountCookie', 'close', 1);
  closeCmegaPopup('popupDiscountNotice');
}`;

    return (
      <PageContent
        title={title}
        desc="메가공무원의 메인 페이지에서 주로 사용되는 환승 팝업입니다."
        // image="/images/popup9.png"
        prevHtml={replaceSpecialTags(`&lt;% If fncRequestCookie("todayPopupDiscountCookie") = "" then%&gt;`)}
        html={html}
        nextHtml={replaceSpecialTags(`&lt;% end if %&gt;`)}
        css={css}
        excCss={excCss}
        js={js}
        items={["메인팝업","타사환승"]}
        link="<%=dev_url_main%>/megagong.asp?now=2024-07-03"
        onChange={onChange}
      />
    )
  }
</script>