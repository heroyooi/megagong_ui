<script type="text/babel">
  'use strict';

  function Button1() {

const html = `<div className="btn_list">
  <a href="javascript:;" class="cmn_btn">�������� ����</a>
  <a href="javascript:;" class="cmn_btn">��ü��</a>
</div>
<div class="btn_list">
  <a href="javascript:fncBrdWrite();" class="cmn_btn c_green">�����ϱ�</a>
</div>
<div class="btn_wrap">
  <a href="javascript:void(0);" style={{cursor: "pointer"}} onClick="goRegister();" class="btn">�����ı� <br class="mo_576" />�ۼ��ϱ�</a>
</div>`;

const css = `.btn_wrap .btn {display: block;width: 130px;height: 40px;line-height: 40px;font-size: 14px;color: #fff;background-color: #129490;font-weight: 600;text-align: center;}
.btn_wrap .btn .mo_576 {display: none;}`;

    return (
      <PageContent
        title="��ư - �⺻��"
        desc="�Խñ� �ۼ� �� ���� ���� �뵵�� ���� ��ư���� ������ ������ CSS�� �����Ͽ� ��� ������ �������� �ǵ��� �۾��մϴ�. <br />������ ������ ��Ȳ �ܿ���, �⺻������ ��� ��ư�� �߾� Ȥ�� �����ʿ� �����ϵ��� �մϴ�."
        image="/images/btn.png"
        html={html}
        css={css}
        items={["�ý��۹�ư","�Խñ��ۼ�","�Խ��ǹ�ư"]}
        link="<%=url_main%>/teacher/qna/qna.asp"
      />
    )
  }
</script>