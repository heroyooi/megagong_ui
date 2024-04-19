<script type="text/babel">
  'use strict';

  function Button3({ title }) {

const html = `
<ul class="btns_list">
    <li class="buy" style={{ display: "block" }}>
        <div id="pass_bnr_btn_wrap7">   
            <a href="javascript:;" onclick="go_fbuy(34, 6976);">구매하기</a>
        </div> 
    </li>                  
</ul>
<br />
<ul class="btns_list2">
    <li>
        <a href="javascript:;" class="btn">
            <div class="btn_in">
                <span class="txt1">Change Your Days, Change Your Result!</span>
                <span class="txt2">2023대비 FINAL 학습전략</span>
            </div>
        </a>
    </li>
</ul>
<br />
<ul class="btns_list3">
    <li>
        <a href="javascript:void(0);" class="purchase_btn" onclick="go_fbuy(1, 7094);">메가패스 구매하기</a>
    </li>
</ul>`;

const css = `.btns_list { margin-top: 0;justify-content: center;    display: flex; flex-wrap: wrap; text-align: center; font-family: "NotoSans KR";}
.btns_list li { position: relative;}
.btns_list li {width: 100%;margin: 0;}
.btns_list li a {font-size: 20px;color: #fff; background: #000;padding: 30px 0;}
.btns_list a {display: block;}
.btns_list li a::before {content: '';display: block;position: absolute; right: 0;top: 50%; transform: translateY(-50%);background: url(https://img.megagong.net/m/2022/1219_pass/btn_arr.png) no-repeat center; width: 72px; height: 80px;}

.btns_list2 {width: 100%;text-align: center; font-family: "NotoSans KR"; border:1px solid #268490;}
.btns_list2 li .btn {display: block; background-color: #ffffff;padding: 20px 0;}
.btns_list2 li .btn .btn_in {position: relative;}
.btns_list2 li .btn span {display: block;}
.btns_list2 li .btn .txt1 {font-size: 17px;color: #268490;}
.btns_list2 li .btn .txt2 {font-size: 26px;font-weight: 900; color: #111;}
.btns_list2 li .btn .btn_in:after { content: '';display: block; width: 90px; height: 100%; background: url(https://img.megagong.net/m/2023/0109_finalpass/btn_arrow_black.png) 50% 50% no-repeat; position: absolute; right: 0; top: 0; border-left: 1px solid #b7b7b7;}

.btns_list3 .purchase_btn {text-align: center; font-family: "NotoSans KR";display: block;background-color: #268490;font-size: 22px;font-weight: 700; color: #fff;padding: 25px 72px; position: relative;}
.btns_list3 .purchase_btn:after { width: 72px;background: url(https://img.megagong.net/m/2023/0109_finalpass/btn_arrow_white.png) 50% 50% no-repeat; position: absolute; right: 0;top: 50%;   margin-top: -16px; height: 32px; display: block;  content: ''; border-left: 1px solid #68a9b2;}



@media screen and (max-width: 1200px) {
    .btns_list li a{font-size: 18px;}
    .btns_list2 li .btn .btn_in {padding-right: 60px;}
    .btns_list2 li .btn .txt1 {font-size: 1.6vw;}
    .btns_list2 li .btn .txt2 {font-size: 2.2vw;}
    .btns_list2 li .btn .btn_in:after {width: 60px;}
}

@media screen and (max-width: 768px) {
    .btns_list li a{font-size: 18px;padding: 15px 36px 15px 0;}
    .btns_list3 .purchase_btn {font-size: 18px;padding: 20px 72px;}
}

@media screen and (max-width: 576px) {
    .btn_wrp a.btn_base {font-size: 14px;}
    .btns_list2 li .btn .btn_in {padding-right: 30px;}
    .btns_list2 li .btn .txt1 {font-size: 14px;}
    .btns_list2 li .btn .txt2 {font-size: 16px;}
    .btns_list2 li .btn .btn_in:after {width: 30px;background-size: 6px auto;}
}`;


    return (
      <PageContent
        title={title}
        desc="메가패스 등 여러 이벤트 페이지에서 사용되는 사각형 형태의 버튼 양식입니다. <br />디자인 시안의 색상에 맞게 Color 코드변경 및 상세 수정을 권장합니다."
        image="/images/btn3.png"
        html={html}
        css={css}
        items={["구매하기","사각형","메가패스"]}
        link="<%=url_main%>/s/gong/pass/final_2023.asp#eventWrap"
      />
    )
  }
</script>