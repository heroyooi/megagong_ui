<script type="text/babel">
  'use strict';

  function Popup2({ title, onChange }) {

const html = `<% if fncRequestCookie("mok_hd_pop_one") = "" then%>
<div id="mok_hd_pop" class="mok_hd_pop">
  <a href="#none" title="�ް������� ���Ǹ���">
    <img src="<%=img_main%>/m/2022/0503_interviewMock/pop_mok.png" class="" style="cursor:pointer;" alt="�ް������� ���Ǹ���">
  </a>
  <button type="button" class="btn_day_close" onClick="mok_day_close();">���� �Ϸ� ���� �ʱ�</button>
	<button type="button" class="btn_close" onclick="mok_close();">�ݱ�</button>
</div>
<% end if%>`;

const css = `
.mok_hd_pop {position:relative;z-index:5;width:240px;}
.mok_hd_pop.main {margin-left:350px;}
.mok_hd_pop .btn_close {position:absolute;top:-19px;right:0;width:22px;height:20px;line-height:18px;padding:0 5px;font-size:0;background:#fff url(https://img.megagong.net/m/2022/0503_interviewMock/icon_x_03.png) no-repeat center;border:1px solid #cfcfcf;box-sizing:border-box;}
.mok_hd_pop .btn_close img {vertical-align: middle;display:inline-block;}
.mok_hd_pop .btn_day_close {position:absolute;top:-19px;right:24px;height:20px;line-height:18px;padding:0 8px;font-weight:bold;font-size:11px;color:#a7a7a7;background:#fff;border:1px solid #cfcfcf;box-sizing:border-box;}`;

const excCss = `
`;

const js = `function mok_close() {
  $("#mok_hd_pop").hide();
}
function mok_day_close() {
  setCookie("mok_hd_pop_one", "close", 1);
  // setCookieToday('mok_hd_pop_one', 'close', 1);
  mok_close();
}`;

    return (
      <PageContent
        title={title}
        desc="�ް����͵� ������ ���� Ȩ���������� ���Ǵ� �˾� ����Դϴ�.<br />�ַ� ���λ���Ʈ ���� ��ܺο��� ���Ǹ� '���� �Ϸ� ���� �ʱ�' ��ư�� ���� �Ϸ絿�� �˾��� �����ϴ� ����� �����մϴ�."
        image="/images/popup2.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["�Ϸ纸���ʱ�","����˾�","���"]}
        link="<%=url_main%>/megagong.asp"
        onChange={onChange}
      />
    )
  }
</script>