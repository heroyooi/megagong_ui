<script type="text/babel">
  'use strict';

  function Tab1({ title }) {

const html = `<div class="tab-upper">
  <div class="inner">
    <div class="tab-upper-swiper swiper-container">
      <div class="swiper-wrapper">
        <div class="swiper-slide<%If Request.QueryString("tab") <= 1 then%> on<%End if%>"><a href="javascript:;" title="�������̶�">�������̶�</a></div>
        <div class="swiper-slide<%If Request.QueryString("tab") = 2 then%> on<%End if%>"><a href="javascript:;" title="ä������">ä������</a></div>
        <div class="swiper-slide<%If Request.QueryString("tab") = 3 then%> on<%End if%>"><a href="javascript:;" title="�����ڰ�">�����ڰ�</a></div>
        <div class="swiper-slide<%If Request.QueryString("tab") = 4 then%> on<%End if%>"><a href="javascript:;" title="�ʱ����">�ʱ����</a></div>
        <div class="swiper-slide<%If Request.QueryString("tab") = 5 then%> on<%End if%>"><a href="javascript:;" title="������">������</a></div>
        <div class="swiper-slide<%If Request.QueryString("tab") = 6 then%> on<%End if%>"><a href="javascript:;" title="��������">��������</a></div>
      </div>
      <div class="swiper-scrollbar mo-view"></div>
    </div>
  </div>
</div>`;

const js = `LUI.tabUI();`;

    useEffect(() => {
      LUI.tabUI();
    }, []);

    return (
      <PageContent
        title={title}
        desc="�ް������� �հ����� �����ҿ��� ����ϴ� �� ����Դϴ�. <br />���� Ŭ���� ���, �ش� ���� �۾��� ��� Border�� ������ ����Ǹ鼭 ��� �� �׸��� ������ ���� �ִ� ������, <br />����ڿ��� ��Ȯ�� ������ �������ݴϴ�."
        image="/images/tab1.png"
        html={html}
        js={js}
        items={["�հ�����","�簢��","��"]}
        link="<%=lab_main%>/l/gong/guide/guide.asp"
      />
    )
  }
</script>