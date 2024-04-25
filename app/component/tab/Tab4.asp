<script type="text/babel">
  'use strict';

  function Tab4({ title }) {

const html = `<link type="text/css" rel="stylesheet" href="<%=url_main%>/book/style.css" />

<div class="search_zone main">
  <div id="sortTab_box">
    <ul class="sortTab">
      <li class="on"><a href="javascript:;" title="9/7��">9/7��</a></li>
      <li><a href="javascript:;" title="�ҹ�">�ҹ�</a></li>
      <li><a href="javascript:;" title="������">������</a></li>
    </ul>
  </div>
</div>`;

    return (
      <PageContent
        title={title}
        desc="�¶��� ���� ������ ��� ���Ǵ� �� ����Դϴ�.<br />���� Ŭ���� ���, �ش� �ǰ� ���õ� å�� �������� �ҷ��� ����ڿ��� �����մϴ�."
        image="/images/tab3.png"
        html={html}
        items={["�¶��μ���","����","����"]}
        link="<%=url_main%>/book/bookshop.asp"
      />
    )
  }
</script>