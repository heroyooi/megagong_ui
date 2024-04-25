<script type="text/babel">
  'use strict';

  function Button5({ title }) {

const html = `<ul class="info_list notosans">
    <li><a href="https://lab.megagong.net/l/gong/guide/guide.asp" title="������ ���̵�" target="_blank"><span>������ ���̵�</span></a></li>
    <li><a href="https://lab.megagong.net/l/gong/guide/schedule.asp" title="���� ����" target="_blank"><span>���� ���� <img src="https://img.megagong.net/common/ic_new.gif" alt="New" style="vertical-align:middle;margin:-3px 0 0 3px;" /></span></a></li>
    <li><a href="https://lab.megagong.net/l/gong/statistic/pass.asp" title="��������հݼ�" target="_blank"><span>��������հݼ� </span></a></li>
    <li><a href="https://lab.megagong.net/l/gong/guide/series.asp" title="���ĺ� ���� ����" target="_blank"><span>���ĺ� ���� ���� </span></a></li>
    <li>
        <a href="https://lab.megagong.net/l/gong/pass_opinion/index.asp" title="�հݼ���" target="_blank">
            <span>�հݼ��� <img src="https://img.megagong.net/common/ic_new.gif" alt="New" style="vertical-align:middle;margin:-3px 0 0 3px;" /></span>
        </a>
    </li>
    <li><a href="https://lab.megagong.net/l/gong/library/list.asp" title="��������" target="_blank"><span>�������� </span></a></li>
    <li><a href="https://www.megagong.net/s/gong/examinfo/passmate/list.asp#mContainer" title="PASS MATE"><span>PASS MATE </span></a></li>
    <li><a href="https://lab.megagong.net/l/gong/followm/followm.asp" title="�����ڱ� ����(follow M)" target="_blank"><span>�����ڱ� ����(follow M)</span></a></li>
    <li class="for_mo lnk1"><a href="https://lab.megagong.net/l/gong/guide/guide.asp" title="������ ���̵�" target="_blank"><span>������ ���̵�</span></a></li>
    <li class="for_mo lnk2"><a href="https://lab.megagong.net/l/gong/news/list.asp?schExtra1=2" title="�հ�����" target="_blank"><span>�հ�����</span></a></li>
    <li class="for_mo lnk3"><a href="https://lab.megagong.net/l/gong/news/list.asp?schExtra1=3" title="�������" target="_blank"><span>�������</span></a></li>
    <li class="for_mo lnk4"><a href="https://lab.megagong.net/l/gong/library/list.asp" title="���⹮��" target="_blank"><span>���⹮��</span></a></li> 
</ul>`;

const css = `.info_list {font-weight: 200;display: flex;flex-wrap: wrap;justify-content: center;}
.info_list::after {content:"";clear:both;display:block}
.info_list li {float: left; margin: 0 10px 10px 0;padding: 0 0 0; border-radius: 6px; padding: 1px; text-decoration: none;}
.info_list li a { position: relative; display: block; padding: 0; border-radius: 6px; color: #f5bae8; width: 170px; height: 40px; line-height: 38px; border: 1px solid #d953ff; text-align: center;}
.info_list li a span {display: inline-block;padding: 0 3px 0 0;}
.info_list li a:hover {background: #fbafb1;background: linear-gradient(90deg, rgba(198,32,145,1) 0%, rgba(108,20,208,1) 100%);color: #fff;}`;


    return (
      <PageContent
        title={title}
        desc="�ް������� ���� �ϴܿ��� ���Ǵ� ��ũ �̵� ��ư�Դϴ�.<br /> Hover�� ���, Background�� ������ ū ������ ����Ǹ�, �̸� ���Ͽ� ����ڰ� ��Ȱ�ϰ� ����� �ν��� �� �ֵ��� �����ϴ�. <br />������ �þ��� ���� �°� Color �ڵ庯�� �� �� ������ �����մϴ�."
        image="/images/btn4.png"
        html={html}
        css={css}
        items={["���콺ȿ��","�׶���Ʈ","�����ϴ�"]}
        link="<%=url_main%>"
      />
    )
  }
</script>