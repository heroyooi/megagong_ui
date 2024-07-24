<script type="text/babel">
  'use strict';

  function BoardView({ title, onChange }) {

    const html = `<div class="post-wrap">
    <div class="post-head">
        <div class="title">���� ���� �����ڿ���</div>
        <ul class="additional">
            <li class="writer teacher-home"><a href="/teacher/home.asp?bcode=lyj4718" title="����Ȩ �ٷΰ���" target="_blank">����&nbsp;������ ������</a></li>
            <li><b>�����</b>&ensp;2024.06.18</li>
            <li><b>��ȸ</b>&ensp;123</li>
            <li id="repli"><b>���</b>&ensp;2</li>
            <li class="url-copy-icon"><a href="#" onclick="urlCopy(); return false;">URL ����</a></li>
        </ul>
    </div>
    <div class="post-view">
        <div id="t_video" class="post-video" style="cursor: pointer">
            <iframe width="1000" height="560" src="https://www.youtube.com/embed/iXEiY3ARTGo?vq=hd720&autoplay=0&rel=0" frameborder="0" allow="accelerometer; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </div>
        <br>
        <p style="text-align: left;">
            �ȳ��ϼ���. �������Դϴ�^^<br><br>
            �������� �������� ���� ����ü(?) �۾��⸦ �Ϸ��� ��ô �������׿�. <br>
            2014�� ���� 10�� ��, ���� ���忡�� ������ ���� �������� �������� �� ���� �ʾ��� ���� Ȯ���� ��� �̷� ���� ���� ���� ������µ�, ������ ������ �ƴ� ���� ���Ƽ� ���� ���� ���� ����������. <br>
            �׷����� �ұ��ϰ�, �̷��� ��⸦ ��� �ٽ� ���� ���� �� ���� �� �� ����ȸ���� ���� �� ģ������ ���ְ� ���� ���� �־����. ���� �ð� ������ ����� ���������� ���ϰ� ������� ���Դµ� ��ȭ��ȣ�� ���� �� ���ñ��� ������ ���̳׿�. �׸��� �󸶳� ���� ģ������ �� ģ���� ���� �������� ĭ���̰� �ִ� �����ǿ��� ������ �긱�� �ϴ� ������ ��ϴ�. <br><br>
            ������ �ܱ� �հ��� �ٶ�� �� ���� ��Ȱ�� �����մϴ�. ���� ���θ� ������ �ؼ� ���⿡ �հݸ� �Ѵٸ� �󸶳� ���� ���� �ٲ��� ����ϸ� �Ϸ��Ϸ� ��ȹ�� �ϼ��ϴ� ��ݰ� ���� �ӿ� �ð��� ���� ���� �־��. ù �ش� �׷��� ��ƿ ���� �ֽ��ϴ�. �԰� �ڴ� �������� �屸���� �������� ������ ��ſ� �ð��� ������ ���� û���� �屸����... ���� ���� �����ϸ鼭 �׷��� �� �ش� �Ŷ��ϰ� ���� ���� �־��. ������ �ܱ⿡ ���� ��Ȱ�� ������ ���ϰ� �Ǹ鼭 ������ �͡��� ���� ȭ�� ���� �����մϴ�. ���� ���� ���� �翬�ϰ� �������� �ʰ� �˴ϴ�. ����� �ϸ� ������, Ȥ�� ������ �Ǿ�� �ϴµ� �ƹ��͵� ���ƿ��� �ʴ� �ð����� ���̸鼭 �ʹ� ȭ�� ����. �ΰ��̶� �װ� �翬�� �����Դϴ�.
        </p>
    </div>

    <ul class="post-file attach-file-base">
        <li><button onclick="fncDown('','');">÷������</button></li>
    </ul>

    <ul class="post-btn">
        <li><a href="javascript:void(0);" onclick="fncBack();">���</a></li>
    </ul>
</div>`;

    const css = ``;
    const excCss = ``;

    const js = ``;

    return (
      <PageContent
        title={title}
        desc=""
        // image="/images/tab1.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["�Խ���", "�Խñ�"]}
        link="<%=url_main%>/column/column.asp"
        onChange={onChange}
      />
    )
  }
</script>