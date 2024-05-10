<script type="text/babel">
  'use strict';

  function DevPopup3({ title, onChange }) {

const html = `<div class="pop_btn_wrap">
  <a class="mg_btn_base sm" href="javascript:;" onclick="openSamplePopup3();">개발 팝업 - 3개 중복 시</a>
</div>

<div class="mg_popup_wrap z-anim mfp-hide" id="popupSample" style="max-width: 700px;">
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
</div>`;

const css = ``;

const excCss = ``;

const js = `function openSamplePopup3() {
  var q = window.confirm('팝업을 띄우시겠습니까? 개발 팝업3');
  if (q) {
    openMegaPopup('popupSample', 6, false, true);
  }
}

function closeSamplePopup3() {
  var q = window.confirm('신청을 하지 않고 팝업을 닫으시겠습니까? 개발 팝업3');
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
});`;

    return (
      <PageContent
        title={title}
        desc="메가스터디 공무원 홍보 페이지에서 '알림신청' 등을 위해 주로 사용되는 팝업 기능입니다. <br />
        지정된 버튼을 클릭하면 페이드인(Fade-In)효과와 함께 딤드(Dimmed) 처리된 팝업이 나타납니다. <br />
        해당 팝업에서는 이미지 파일 및 사용자가 제공할 정보 내용 등을 직접 작성하여 서버에 제출할 수 있습니다. <br />
        또한 팝업을 열고 닫을 때에 별도의 개발로직을 넣을 수 있습니다. <br />
        해당 코드를 통해 제공되는 팝업은 마우스 스크롤 등을 통한 화면 Body 이동이 불가능합니다. 다만, iOS에서는 이동이 가능합니다."
        // image="/images/popup1.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["개발대응3","개발팝업중복시","딤드","딤클릭시경고창"]}
        onChange={onChange}
      />
    )
  }
</script>