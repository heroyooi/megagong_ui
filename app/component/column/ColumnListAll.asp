<script type="text/babel">
  'use strict';

  function ColumnListAll({ title, onChange }) {

const html = `<div class="board-list-wrap board_list_wrap">
    <ul class="table-order">
        <li class="<% if typeV = "dt" or typeV = "" then %> active <%end if%>"><a href="javascript:fncSch('dt');">�ֽż�</a></li>
        <li class="<% if typeV = "cnt" then %> active <%end if%>"><a href="javascript:fncSch('cnt');">��ȸ��</a></li>
    </ul>
    <ul class="table-head table_head">
        <li>
            <div class="table_td teacher">������</div>
            <div class="table_td title">����</div>
            <div class="table_td data">�ۼ���</div>
            <div class="table_td hits hide-576">��ȸ��</div>
        </li>
    </ul>
    <ul class="table-list table_list">
        <li class="N">
            <div class="table_td teacher">
                <img class="tea_img hide-992" src="https://img.megagong.net/profphoto/gong/incredvoc/pro_lec.png" alt="�漱��">
                <div><span>����</span> <br>�漱��</div>
            </div>
            <div class="table_td title">
                <a href="javascript:void(0);" onclick="fncView('40');">
                    <div class="tit">
                        <div class="content">������ ���� ���� �н��� ���Ͽ�</div>
                        <div class="comment"></div>
                        <div class="new-icon-blue new"></div>
                    </div>
                    <div class="preview hide-1200">1. � �������� �ϱ��ؾ� �ұ�? ���� ���ο� �־ ���ִ� �������ϱ� ������ �ڽ��� ������ �´� ������ ������ ���ָ� �����ϴ� ���� �������� �ܾ���� �����ϴ��� �����ϴ� �ð��� �ִ��� ���ֱ� ���� �ʼ����̴�. 2025����� ������ ��������� ���ο� ���� ���¿� ���� ���Ӱ� ��ȭ�ȴ�. �ֱ� ������ ������ ���� ���̵��� ��ȭ�� �������� ��ȭ ���ù����� ��</div>
                </a>
            </div>
            <div class="table_td data">
                <span class="type1 hide-576">2024.08.06</span>
                <span class="type2 show-576">24.08.06</span>
            </div>
            <div class="table_td hits hide-576">45</div>
        </li>
        <li class="N">
            <div class="table_td teacher">
                <img class="tea_img hide-992" src="https://img.megagong.net/profphoto/gong/lyj4718/pro_lec.png" alt="������">
                <div><span>����</span> <br>������</div>
            </div>
            <div class="table_td title">
                <a href="javascript:void(0);" onclick="fncView('32');">
                    <div class="tit">
                        <div class="content">���δ� �Ҿ��� ���Ⱑ �Ǳ⵵ �մϴ�.</div>
                        <div class="comment">[1]</div>
                    </div>
                    <div class="preview hide-1200">�ȳ��ϼ���. ���� ���� �������Դϴ�. ������ ���ſ� ������(?) �е��� ���� �����Դϴ�.  ���� 20�뿡�� �̷��� ���� �ҾȰ����� �����ϰ� ����߽��ϴ�. ���δ� �Ҿ��� ���Ⱑ �Ǳ⵵ �մϴ�. ������ �����ϸ� ���� �ϸ� ������ ���߾��.  ���ϰ� ���ݾ�. �̷��� �ص� �� �Ǹ� ��¿ �� ����. �� ������ �ص� �� �Ǹ� ��¿ �� ���� ���ݾ�</div>
                </a>
            </div>
            <div class="table_td data">
                <span class="type1 hide-576">2024.07.18</span>
                <span class="type2 show-576">24.07.18</span>
            </div>
            <div class="table_td hits hide-576">322</div>
        </li>
        <li class="N">
            <div class="table_td teacher">
                <img class="tea_img hide-992" src="https://img.megagong.net/profphoto/gong/gosabu88/pro_lec.png" alt="������">
                <div><span>�ѱ���</span> <br>������</div>
            </div>
            <div class="table_td title">
                <a href="javascript:void(0);" onclick="fncView('26');">
                    <div class="tit">
                        <div class="content">������ ���迡 �´� ���δ� �����ϱ�?</div>
                        <div class="comment">[1]</div>
                    </div>
                    <div class="preview hide-1200">�츮�� �غ��ϰ� �ִ� ����(������, ������, �����, ������)�� �ְ��� �����̳� ����(���)�� ������ �ƴ϶� ������ ����(4�� ������)�Դϴ�.  ���� ������ �ı� ��ġ���� �����Ѵٰ� �����սô�. �ְ����̳� ����(���)�� �����̾��ٰ� �ϸ� ������ �ı��� ��ġ���� �������̰� ü�������� �����ؾ� �մϴ�. �̷� ���Ǹ� ���, �����ϰ� ��Ʈ�� �ڽŸ��� ����</div>
                </a>
            </div>
            <div class="table_td data">
                <span class="type1 hide-576">2024.07.03</span>
                <span class="type2 show-576">24.07.03</span>
            </div>
            <div class="table_td hits hide-576">482</div>
        </li>
        <li class="N">
            <div class="table_td teacher">
                <img class="tea_img hide-992" src="https://img.megagong.net/profphoto/gong/shin242/pro_lec.png" alt="�ſ���">
                <div><span>������/������ġ��</span> <br>�ſ���</div>
            </div>
            <div class="table_td title">
                <a href="javascript:void(0);" onclick="fncView('24');">
                    <div class="tit">
                        <div class="content">������ ��������, �γ��� �幰��</div>
                        <div class="comment"></div>
                    </div>
                    <div class="preview hide-1200">�������� �γ��� �غ� �Ǽ̽��ϱ�? ������ ������ �ݵ�� �հ��ϰڴ١���� �������� �����Ȱ�� �����մϴ�. ���� ���� �������̰�, �ݵ�� �հ��� �Ŷ�� ���ο� ������ ���� �����մϴ�. ������ ��� ������ �γ��ϸ� ������ ������ �����ؼ� ��¼��� �����ϴ� ����� ���� �ʽ��ϴ�.  �ýð��� ã�ƿ��� �÷ÿ� ������ �ľ�����⵵ �մϴ�. ������ �и� ��ġ </div>
                </a>
            </div>
            <div class="table_td data">
                <span class="type1 hide-576">2024.06.28</span>
                <span class="type2 show-576">24.06.28</span>
            </div>
            <div class="table_td hits hide-576">350</div>
        </li>    
    </ul>
</div>`;

const css = ``;
const excCss = `.board-list-wrap {line-height: 1;}
.board_list_wrap .table_list .table_td.teacher .tea_img {margin: 0 auto 5px;}
[class*=board-list-wrap] .table_td.data .type1 {border: none; margin: 0;}
[class*=board-list-wrap] .table_td.data .type2 {border: none; margin: 0;}
`;

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
        items={["�Խ���", "���"]}
        link="<%=url_main%>/column/column.asp"
        onChange={onChange}
      />
    )
  }
</script>