<script type="text/babel">
  'use strict';

  function Button4() {

const html = `<div class="round_btn_wrap">
    <a href="javascript:openPop_popup1();" title="인증하기" class="btn_round">인증하기
        <i>-</i>
    </a>
</div>`;

const css = `.btn_round {display: block;background: #000; color: #fff;font-size: 24px;line-height: 75px; height: 75px;font-weight: bold; border-radius: 7px; position: relative;text-align: center; font-family: "NotoSans KR";}
.btn_round i { background: url(https://img.megagong.net/m/2022/0708_trans/coupon_btn_icon.png) 0 0 no-repeat; width: 17px; height: 27px; margin: 25px 0 0 60px; position: absolute; top: 0; left: 50%; font-size: 0;}`;


    return (
      <PageContent
        title="버튼 - 라운드형"
        desc="여러 이벤트 페이지에서 사용되는 둥근 형태의 버튼 양식입니다. <br />디자인 시안의 색상에 맞게 Color 코드변경 및 상세 수정을 권장합니다."
        image="/images/btn3.png"
        html={html}
        css={css}
        items={["인증하기","둥근느낌","프로모션"]}
        link="<%=url_main%>/event/2023/02090007/index.asp#eventWrap"
      />
    )
  }
</script>