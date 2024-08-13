<script type="text/babel">
  'use strict';

  function PrevNext({ title, onChange }) {

    const html = `<div class="post-wrap">
      <ul class="post-closest-list post_closest_list">
        <li>
            <div class="table_td navigation">������</div>
            <div class="table_td teacher hide-768"><span>�ѱ���</span> <br>������</div>
            <div class="table_td title">
                <a href="javascript:void(0);" onclick="fncView('');">
                    <div class="tit">
                        <i class="icon best">BEST</i>
                        <div class="content">������ ���迡 �´� ���δ� �����ϱ�?</div>
                        <div class="comment">[1]</div>
                        <div class="new-icon-blue new">�ű�</div>
                    </div>
                </a>
            </div>
            <div class="table_td date">
                <span class="hide-576">2024.07.03</span>
                <span class="show-576">24.07.03</span>
            </div>
            <div class="table_td hits hide-576">377</div>
        </li>
        <li>
            <div class="table_td navigation">������</div>
            <div class="table_td teacher hide-768"><span>�ѱ���</span> <br>������</div>
            <div class="table_td title">
                <a href="javascript:void(0);" onclick="fncView('');">
                    <div class="tit">
                        <i class="icon best">BEST</i>
                        <div class="content">������ ���迡 �´� ���δ� �����ϱ�?</div>
                        <div class="comment">[1]</div>
                        <div class="new-icon-blue new">�ű�</div>
                    </div>
                </a>
            </div>
            <div class="table_td date">
                <span class="hide-576">2024.07.03</span>
                <span class="show-576">24.07.03</span>
            </div>
            <div class="table_td hits hide-576">377</div>
        </li>
    </ul>
  </div>`;

    const css = ``;
    const excCss = `.post-wrap {line-height: 1;}`;

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
        items={["�Խ���", "������_������"]}
        link="<%=url_main%>/column/column.asp"
        onChange={onChange}
      />
    )
  }
</script>