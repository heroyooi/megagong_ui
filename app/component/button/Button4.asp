<script type="text/babel">
  'use strict';

  function Button4({ title, onChange }) {

const html = `<div class="round_btn_wrap">
    <a href="javascript:openPop_popup1();" title="�����ϱ�" class="btn_round">�����ϱ�
        <i>-</i>
    </a>
</div>`;

const css = `.btn_round {display: block;background: #000; color: #fff;font-size: 24px;line-height: 75px; height: 75px;font-weight: bold; border-radius: 7px; position: relative;text-align: center; font-family: "NotoSans KR";}
.btn_round i { background: url(https://img.megagong.net/m/2022/0708_trans/coupon_btn_icon.png) 0 0 no-repeat; width: 17px; height: 27px; margin: 25px 0 0 60px; position: absolute; top: 0; left: 50%; font-size: 0;}`;


    return (
      <PageContent
        title={title}
        desc="���� �̺�Ʈ ���������� ���Ǵ� �ձ� ������ ��ư ����Դϴ�. <br />������ �þ��� ���� �°� Color �ڵ庯�� �� �� ������ �����մϴ�."
        image="/images/btn3.png"
        html={html}
        css={css}
        items={["�����ϱ�","�ձٴ���","���θ��"]}
        link="<%=url_main%>/event/2023/02090007/index.asp#eventWrap"
        onChange={onChange}
      />
    )
  }
</script>