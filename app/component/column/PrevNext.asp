<script type="text/babel">
  'use strict';

  function PrevNext({ title, onChange }) {

    const html = `<div class="post-wrap">
      <table class="post-closest-list">
          <colgroup>
              <col style="width: 7.5%">
              <col class="hide-768" style="width: 11%">
              <col style="width: auto">
              <col style="width: 7.5%">
              <col class="hide-768" style="width: 7.5%">
          </colgroup>
          <tbody>
              <tr>
                  <td class="table_td navigation">다음글</td>
                  <td class="table_td teacher hide-768"><span>한국사</span> <br>고종훈</td>
                  <td class="table_td title">
                      <a href="javascript:void(0);" onclick="fncView('');">
                          <div class="tit">
                              <i class="icon best">BEST</i>
                              <div class="content">객관식 시험에 맞는 공부는 무엇일까?</div>
                              <div class="comment">[1]</div>
                              <div class="new-icon-blue new">신규</div>
                          </div>
                      </a>
                  </td>
                  <td class="table_td date">
                      <span class="hide-576">2024.07.03</span>
                      <span class="show-576">24.07.03</span>
                  </td>
                  <td class="table_td hits hide-576">377</td>
              </tr>
              <tr>
                  <td class="table_td navigation">이전글</td>
                  <td class="table_td teacher hide-768"><span>한국사</span> <br>고종훈</td>
                  <td class="table_td title">
                      <a href="javascript:void(0);" onclick="fncView('');">
                          <div class="tit">
                              <i class="icon best">BEST</i>
                              <div class="content">객관식 시험에 맞는 공부는 무엇일까?</div>
                              <div class="comment">[1]</div>
                              <div class="new-icon-blue new">신규</div>
                          </div>
                      </a>
                  </td>
                  <td class="table_td date">
                      <span class="hide-576">2024.07.03</span>
                      <span class="show-576">24.07.03</span>
                  </td>
                  <td class="table_td hits hide-576">377</td>
              </tr>
          </tbody>
      </table>
    </div>
    <div class="post-wrap">
      <ul class="post-closest-list post_closest_list">
        <li>
            <div class="table_td navigation">다음글</div>
            <div class="table_td teacher hide-768"><span>한국사</span> <br>고종훈</div>
            <div class="table_td title">
                <a href="javascript:void(0);" onclick="fncView('');">
                    <div class="tit">
                        <i class="icon best">BEST</i>
                        <div class="content">객관식 시험에 맞는 공부는 무엇일까?</div>
                        <div class="comment">[1]</div>
                        <div class="new-icon-blue new">신규</div>
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
            <div class="table_td navigation">이전글</div>
            <div class="table_td teacher hide-768"><span>한국사</span> <br>고종훈</div>
            <div class="table_td title">
                <a href="javascript:void(0);" onclick="fncView('');">
                    <div class="tit">
                        <i class="icon best">BEST</i>
                        <div class="content">객관식 시험에 맞는 공부는 무엇일까?</div>
                        <div class="comment">[1]</div>
                        <div class="new-icon-blue new">신규</div>
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
    const excCss = `
      
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
        items={["선생님 전용", "게시판"]}
        link="<%=url_main%>/column/column.asp"
        onChange={onChange}
      />
    )
  }
</script>