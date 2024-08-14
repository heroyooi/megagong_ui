<script type="text/babel">
  'use strict';

  function EventTitle2({ title, onChange }) {

const html = `<div class="eventWrap">
    <div class="evSection evCon2">
        <div class="inner">
            <h4 class="con_tit clamp-title">
							ų�� ����/ ������ ���� / �Ұ��� ������ �� <br>
							<b class="wh_ver">���� ������ ���ݾ� ��ȭ�ϰ� �ִ� <br class="show-992">������ ������ ����</b>
						</h4>
        </div>
    </div>

    <div class="evSection evCon5">
        <div class="inner">
            <p class="mini_tit clamp-text">�������� �������� ������ �ϱ����� �ʰ� <br class="show-992">�Ϻ��ϰ� ������ �� �ֵ���</p>
            <h4 class="con_tit clamp-title">������ �н����� ���̰�, <br class="show-992">�ֿ� ���信 ���Ը� �Ǿ!</h4>
        </div>
    </div>

    <div class="evSection evCon6">
        <div class="inner">
            <p class="mini_tit clamp-text">#�������� #��ȸ�� #������� #�ð�Ȱ��</p>
            <h4 class="con_tit clamp-title2">
              ������ ���迡�� �� �װ����� <br class="show-992">�� �߿��ϳı���?
            </h4>
        </div>
    </div>

    <div class="evSection evCon7">
        <div class="inner">
            <p class="mini_tit clamp-text">�������� ������ ���̽��� ������ �� �߿��� ������ <br> ���� ������ ���Ѵٸ�, ��ȭ�� ���� ���ǵ� ��ȭ�ؾ� �ϴ¹�!</p>
						<h4 class="con_tit clamp-title">
							���� ������  �̱��� ���� ������ ���� <br>
							�����ϴ� ���� <b class="point_ver">ALL-IN-ONE</b>
						</h4>
        </div>
    </div>

    <div class="evSection evCon9">
        <div class="inner">
            <p class="mini_tit clamp-text2 wh_ver">
							<strong>������ ���������ٸ� 3ȸ ���� ü���غ��� õõ�� �����ϼ���. <br>
							3ȸ �����ε� �и�, �ָ� ��� �� �״�.</strong>
						</p>

            <h4 class="con_tit clamp-title3">
							���ֿ�T ����� ü����
              <i class="end"></i>
            </h4>
        </div>
    </div>


</div>`;

const realHtml = `<h4 class="con_tit clamp-title">
  ų�� ����/ ������ ���� / �Ұ��� ������ �� <br>
  <b class="wh_ver">���� ������ ���ݾ� ��ȭ�ϰ� �ִ� <br class="show-992">������ ������ ����</b>
</h4>

<p class="mini_tit clamp-text">�������� �������� ������ �ϱ����� �ʰ� <br class="show-992">�Ϻ��ϰ� ������ �� �ֵ���</p>
<h4 class="con_tit clamp-title">������ �н����� ���̰�, <br class="show-992">�ֿ� ���信 ���Ը� �Ǿ!</h4>

<p class="mini_tit clamp-text">#�������� #��ȸ�� #������� #�ð�Ȱ��</p>
<h4 class="con_tit clamp-title2">
  ������ ���迡�� �� �װ����� <br class="show-992">�� �߿��ϳı���?
</h4>

<p class="mini_tit clamp-text">�������� ������ ���̽��� ������ �� �߿��� ������ <br> ���� ������ ���Ѵٸ�, ��ȭ�� ���� ���ǵ� ��ȭ�ؾ� �ϴ¹�!</p>
<h4 class="con_tit clamp-title">
  ���� ������  �̱��� ���� ������ ���� <br>
  �����ϴ� ���� <b class="point_ver">ALL-IN-ONE</b>
</h4>

<p class="mini_tit clamp-text2 wh_ver">
  <strong>������ ���������ٸ� 3ȸ ���� ü���غ��� õõ�� �����ϼ���. <br>
  3ȸ �����ε� �и�, �ָ� ��� �� �״�.</strong>
</p>

<h4 class="con_tit clamp-title3">
  ���ֿ�T ����� ü����
  &lt;% if cdate(lo_now_date) < cdate("2024-08-02") then %&gt;
  <i class="end"></i>
  &lt;% end if %&gt;
</h4>
`

const css = `.con_tit .end { right: 0; } 
.con_tit .end::after { background: #d1e7fa; } /* �̺�Ʈ���� ������ ���󺯰� */

.clamp-title { font-size:44px; } 
.clamp-title2 { font-size:36px; } 
.clamp-title3 { font-size:56px; } 
.clamp-text { font-size:30px; } 
.clamp-text2 { font-size:24px; } 
.con_tit,
.con_tit b { font-weight: 900; } 
.con_tit { /*margin-bottom: 65px;*/ line-height: 1.2; } 
.mini_tit { margin-bottom: 15px; line-height: 1.2; }

.wh_ver { color: #fff; } 
.point_ver { color: #417afa; } 
.red_ver { color: #ff3c4f; } 
.light_ver { font-weight: 500; }

@media screen and (max-width: 1200px) {
  .clamp-title { font-size: clamp(21px,4.8vmin,44px); } 
  .clamp-title2 { font-size: clamp(20px,4vmin,36px); } 
  .clamp-title3 { font-size: clamp(23px,6vmin,56px); } 
  .clamp-text { font-size: clamp(15px,3.4vmin,30px); } 
  .clamp-text2 { font-size: clamp(14px,2.8vmin,24px); } 
}
`;

const excCss = `img{display:inline;}
.eventWrap .inner { padding: 70px 0; } 
.evCon2 { background: #41adfb url(https://image.megagong.net/m/2024/0703_allawyer/bg_con2.jpg) no-repeat center center; background-size: cover; }
.evCon5 { background: #d0e7fe; }
.evCon6 { background: #edf6ff; }
.evCon9 { background: #417afa; }

.con_tit .end { top: -90px; } `;

const js = ``;

const outJs = ``;

    return (
      <PageContent
        title={title}
        // desc="�̺�Ʈ Ǯ���������� ����ϴ� �̺�Ʈ �Ⱓ ������Ʈ���Դϴ�."
        // image="/images/btn.png"
        html={html}
        realHtml={replaceSpecialTags(realHtml)}
        css={css}
        excCss={excCss}
        js={js}
        outJs={outJs}
        items={["������ Ÿ��Ʋ","�پ��� ����"]}
        link="<%=url_main%>/event/2024/07030026/index.asp#eventWrap"
        onChange={onChange}
      />
    )
  }
</script>