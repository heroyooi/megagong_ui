<script type="text/babel">
  'use strict';

  function Popup13({ title, onChange }) {

const html = `<a class="popup_13_btn" href="#" onclick="openCmegaPopup('popupTermsTiny'); return false;">자세히보기 &gt;</a>
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
</div>`;

const css = `.popup_13_btn{font-size:13px;font-weight:bold;color:#ea2771;text-decoration:underline;}`;

const excCss = ``;

const js = ``;

    return (
      <PageContent
        title={title}
        desc="메가공무원의 이벤트&amp;프로모션 페이지에서 주로 사용되는 약관 팝업입니다."
        // image="/images/popup9.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["약관팝업"]}
        link="<%=url_main%>/s/gong/event/2023/06010066/index.asp#event1"
        onChange={onChange}
      />
    )
  }
</script>