<script type="text/babel">
  'use strict';

  function Tab2({ title }) {

const html = `<link type="text/css" rel="stylesheet" href="<%=url_main%>/teacher/curr/curr.css" />

<div class="curr_zone" id="sample">
  <div class="tab_wrap">
    <ul class="tab_btn">
      <li class="on"><a href="javascript:;" title="��ȸ�����а���">��ȸ�����а���</a></li>
      <li><a href="javascript:;" title="�������ɸ��а���">�������ɸ��а���</a></li>
      <li><a href="javascript:;" title="�ɸ��а���">�ɸ��а���</a></li>
    </ul>
  </div>
</div>`;

const css = `.curr_zone#sample .tab_wrap .tab_btn li{width: 33.3%;border-right:1px solid #ddd;box-sizing: border-box;text-align:center;}
.curr_zone#sample .tab_wrap .tab_btn li:last-child{border-right:none;}`;

const js = `$(document).on('click', '.curr_zone#sample .tab_btn li', function(){
  $('.curr_zone#sample .tab_btn li').removeClass('on');
  $(this).addClass('on');
});`;

    return (
      <PageContent
        title={title}
        desc="�ް������� �հ����� �����ҿ��� ����ϴ� �� ����Դϴ�. <br />���� Ŭ���� ���, �ش� ���� �۾��� ��� Border�� ������ ����Ǹ鼭 ��� �� �׸��� ������ ���� �ִ� ������, <br />����ڿ��� ��Ȯ�� ������ �������ݴϴ�."
        image="/images/tab1.png"
        html={html}
        css={css}
        js={js}
        items={["Ŀ��ŧ��","�簢��","����Ȩ"]}
        link="<%=url_main%>/teacher/home.asp?bcode=pt1969"
      />
    )
  }
</script>