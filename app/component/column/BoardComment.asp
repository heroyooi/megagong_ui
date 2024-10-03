<script type="text/babel">
  'use strict';

  function BoardComment({ title, onChange, simple = false }) {

    const html = `<div class="comment-base">
    <div class="input-wrap">
        <div class="input-area">
            <input type="text" id="reply" placeholder="<% if cook_id = "" then %>로그인 후 참여 가능합니다.<%Else%>댓글은 10자 이상 400자 이하로 작성 가능합니다.<%end if%>" maxlength="400"/>
            <button onclick="fncRep();">등록하기</button>
        </div>
        <ul class="caution">
            <li><span>-</span>욕설, 도배 등 주제와 관련 없는 글은 임의로 삭제될 수 있습니다.</li>
        </ul>
    </div>
    <div class="comment-list" id="commentList">
        <ul class="list-wrap" style="margin:0px;">
                <li>
                    <div class="table_td num">2</div>
                    <div class="table_td content">
                        응원합니다!
                            <a href="javascript:;" class="del_btn" onclick="delX('<%=r_seq%>');" title="댓글 삭제" style="color:red;">[삭제]</a>
                    </div>
                    <div class="table_td writer">이메가</div>
                </li>
                <li>
                    <div class="table_td num">1</div>
                    <div class="table_td content">
                        화이팅입니다!
                    </div>
                    <div class="table_td writer">김메가</div>
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
        items={["게시판", "댓글"]}
        link="<%=url_main%>/column/column.asp"
        simple={simple}
        onChange={onChange}
      />
    )
  }
</script>