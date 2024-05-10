<script type="text/babel">
  'use strict';

  function DevPopup3({ title, onChange }) {

const html = `<div class="pop_btn_wrap">
  <a class="mg_btn_base sm" href="javascript:;" onclick="openSamplePopup3();">���� �˾� - 3�� �ߺ� ��</a>
</div>

<div class="mg_popup_wrap z-anim mfp-hide" id="popupSample" style="max-width: 700px;">
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
</div>`;

const css = ``;

const excCss = ``;

const js = `function openSamplePopup3() {
  var q = window.confirm('�˾��� ���ðڽ��ϱ�? ���� �˾�3');
  if (q) {
    openMegaPopup('popupSample', 6, false, true);
  }
}

function closeSamplePopup3() {
  var q = window.confirm('��û�� ���� �ʰ� �˾��� �����ðڽ��ϱ�? ���� �˾�3');
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
});`;

    return (
      <PageContent
        title={title}
        desc="�ް����͵� ������ ȫ�� ���������� '�˸���û' ���� ���� �ַ� ���Ǵ� �˾� ����Դϴ�. <br />
        ������ ��ư�� Ŭ���ϸ� ���̵���(Fade-In)ȿ���� �Բ� ����(Dimmed) ó���� �˾��� ��Ÿ���ϴ�. <br />
        �ش� �˾������� �̹��� ���� �� ����ڰ� ������ ���� ���� ���� ���� �ۼ��Ͽ� ������ ������ �� �ֽ��ϴ�. <br />
        ���� �˾��� ���� ���� ���� ������ ���߷����� ���� �� �ֽ��ϴ�. <br />
        �ش� �ڵ带 ���� �����Ǵ� �˾��� ���콺 ��ũ�� ���� ���� ȭ�� Body �̵��� �Ұ����մϴ�. �ٸ�, iOS������ �̵��� �����մϴ�."
        // image="/images/popup1.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["���ߴ���3","�����˾��ߺ���","����","��Ŭ���ð��â"]}
        onChange={onChange}
      />
    )
  }
</script>