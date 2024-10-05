<script type="text/babel">
  'use strict';

  function Popup7({ title, onChange, simple = false }) {

const html = `<div class="pop_btn_wrap">
  <a class="mg_btn_base sm" href="#" onclick="openMegaPopup('popupFadeIn', 1, true, false); return false;">당첨 팝업</a>
</div>

<div class="mg_popup_wrap z-anim mfp-hide" id="popupFadeIn" style="max-width: 420px;">
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
</div>`;

const css = ``;

const excCss = ``;

const js = ``;

    return (
      <PageContent
        title={title}
        desc="메가스터디 공무원 홍보 페이지에서 주로 사용되는 팝업 기능입니다. <br />지정된 버튼을 클릭하면 페이드인(Fade-In)효과와 함께 딤드(Dimmed) 처리된 팝업이 나타납니다. <br />해당 코드를 통해 제공되는 팝업은 마우스 스크롤 등을 통해 팝업 상태를 유지하면서 화면 Body 이동이 가능합니다."
        image="/images/popup6.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["당첨팝업","나타나기","딤드"]}
        link="<%=url_main%>/megagong.asp"
        simple={simple}
        onChange={onChange}
      />
    )
  }
</script>