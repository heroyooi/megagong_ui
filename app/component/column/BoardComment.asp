<script type="text/babel">
  'use strict';

  function BoardComment({ title, onChange, simple = false }) {

    const html = `<div class="comment-base">
    <div class="input-wrap">
        <div class="input-area">
            <input type="text" id="reply" placeholder="<% if cook_id = "" then %>�α��� �� ���� �����մϴ�.<%Else%>����� 10�� �̻� 400�� ���Ϸ� �ۼ� �����մϴ�.<%end if%>" maxlength="400"/>
            <button onclick="fncRep();">����ϱ�</button>
        </div>
        <ul class="caution">
            <li><span>-</span>�弳, ���� �� ������ ���� ���� ���� ���Ƿ� ������ �� �ֽ��ϴ�.</li>
        </ul>
    </div>
    <div class="comment-list" id="commentList">
        <ul class="list-wrap" style="margin:0px;">
                <li>
                    <div class="table_td num">2</div>
                    <div class="table_td content">
                        �����մϴ�!
                            <a href="javascript:;" class="del_btn" onclick="delX('<%=r_seq%>');" title="��� ����" style="color:red;">[����]</a>
                    </div>
                    <div class="table_td writer">�̸ް�</div>
                </li>
                <li>
                    <div class="table_td num">1</div>
                    <div class="table_td content">
                        ȭ�����Դϴ�!
                    </div>
                    <div class="table_td writer">��ް�</div>
                </li>
            </ul>
    </div>
</div>`;

    const css = ``;
    const excCss = `.comment-base .input-area input[type="text"] {margin-bottom: 0;}`;

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
        simple={simple}
        onChange={onChange}
      />
    )
  }
</script>