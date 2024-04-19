<script type="text/babel">
  'use strict';

  function Button1() {

const html = `<div className="btn_list">
  <a href="javascript:;" class="cmn_btn">내가쓴글 보기</a>
  <a href="javascript:;" class="cmn_btn">전체글</a>
</div>
<div class="btn_list">
  <a href="javascript:fncBrdWrite();" class="cmn_btn c_green">질문하기</a>
</div>
<div class="btn_wrap">
  <a href="javascript:void(0);" style={{cursor: "pointer"}} onClick="goRegister();" class="btn">수강후기 <br class="mo_576" />작성하기</a>
</div>`;

const css = `.btn_wrap .btn {display: block;width: 130px;height: 40px;line-height: 40px;font-size: 14px;color: #fff;background-color: #129490;font-weight: 600;text-align: center;}
.btn_wrap .btn .mo_576 {display: none;}`;

    return (
      <PageContent
        title="버튼 - 기본형"
        desc="게시글 작성 및 질문 등의 용도를 가진 버튼들은 지정된 고유의 CSS를 유지하여 모두 동일한 디자인이 되도록 작업합니다. <br />별도로 지정된 상황 외에는, 기본적으로 모든 버튼은 중앙 혹은 오른쪽에 정렬하도록 합니다."
        image="/images/btn.png"
        html={html}
        css={css}
        items={["시스템버튼","게시글작성","게시판버튼"]}
        link="<%=url_main%>/teacher/qna/qna.asp"
      />
    )
  }
</script>