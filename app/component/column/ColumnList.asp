<script type="text/babel">
  'use strict';

  function ColumnList({ title, onChange }) {

const html = `<div class="board-list-wrap">
  <ul class="table-head table_head">
      <li>
          <div class="table_td">��ȣ</div>
          <div class="table_td">����</div>
          <div class="table_td">����</div>
          <div class="table_td">�ۼ���</div>
          <div class="table_td hide-576">��ȸ��</div>
      </li>
  </ul>
  <ul class="table-list table_list">

      <!-- ���̵� -->
      <li>
          <div class="table_td">0</div>
          <div class="table_td">����</div>
          <div class="table_td">
              <a href="">
                  <div class="tit">
                      <div class="content">����</div>
                      <div class="comment">[0]</div>
                      <div class="new-icon-blue new">�ű� �Խñ�</div>
                  </div>
              </a>
          </div>
          <div class="table_td">
              <span class="type1 hide-576">0000.00.00</span>
              <span class="type2 show-576">00.00.00</span>
          </div>
          <div class="table_td hide-576">000</div>
      </li>
      <!-- ����Ʈ �Խñ� -->
      <li class="best">
          <div class="table_td"><i class="icon best">BEST</i></div>
          <div class="table_td">����</div>
          <div class="table_td">
              <a href="">
                  <div class="tit">
                      <div class="content">�������� 23�� ���� ���� �������� ������ �ϰ� ��Ű��� ��Ű��� ��Ű��� ��Ű��� ��Ű��� ��Ű��� ��Ű��� ��Ű���? ��Ű��� ��Ű��� ��Ű���</div>
                      <div class="comment">[2]</div>
                      <div class="new-icon-blue new">�ű� �Խñ�</div>
                  </div>
              </a>
          </div>
          <div class="table_td">
              <span class="type1 hide-576">2024.05.09</span>
              <span class="type2 show-576">24.05.09</span>
          </div>
          <div class="table_td hide-576">235</div>
      </li>
      <!-- �Ϲ� �Խñ� -->
      <li>
          <div class="table_td"><i class="icon best">BEST</i></div>
          <div class="table_td">��ȸ������/�������ɸ���</div>
          <div class="table_td">
              <a href="">
                  <div class="tit">
                      <div class="content">�������� 23�� ���� ���� �������� ������ �ϰ� ��Ű���</div>
                  </div>
              </a>
          </div>
          <div class="table_td">
              <span class="type1 hide-576">2024.05.09</span>
              <span class="type2 show-576">24.05.09</span>
          </div>
          <div class="table_td hide-576">235</div>
      </li>
  </ul>
  <ul class="pagination-base">
      <li class="before"><a href="">����</a></li>
      <li class="active"><a href="">1</a></li>
      <li><a href="">2</a></li>
      <li><a href="">3</a></li>
      <li><a href="">4</a></li>
      <li class="after"><a href="">����</a></li>
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
        items={["��Ʃ��"]}
        // link="<%=lab_main%>/l/gong/guide/guide.asp"
        onChange={onChange}
      />
    )
  }
</script>