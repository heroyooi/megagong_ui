<script type="text/babel">
  'use strict';

  function EventTitle1({ title, onChange }) {

const html = `<div class="eventWrap">
    <div class="evSection evCon2">
        <div class="inner">
            <p class="mini_tit clamp-title2 mb_re">"������ ���ο� �پ��� �ʹ� �������� <img src="<%=img_main%>/m/2024/0805_ysw7/icon_con2.png" alt="" /> "</p>
            <h4 class="con_tit clamp-title">������ �������� �������� �庮, <br>������ �����̰� ���� �ʳ���?</h4>
        </div>
        <div class="inner">
            <p class="mini_tit clamp-title2">�Լ����ڸ��� ��������� �߰ſ� ����!</p>
            <h4 class="con_tit clamp-title"><b class="light_ver">�ʽû��� ������ �Թ��� <br class="show-576">���� ��հ� �̲�����</b> <br>�ϰ� ��� ��¿� �������� <br class="show-576">���� ���� �ı�</h4>
        </div>
    </div>

    <div class="evSection evCon3">
        <div class="inner">

            <p class="mini_tit clamp-title2 mint_ver">"������, ���� ó���̶��?"</p>
            <h4 class="con_tit clamp-title mint_ver">��/��/��/��/��/�� <br>'��¿��� ��(FUN)�� ������'�� <br class="show-992">�Բ� Ȯ���� ������!</h4>

        </div>
    </div><!-- .evCon3 E -->
</div>`;

const realHtml = `<p class="mini_tit clamp-title2 mb_re">"������ ���ο� �پ��� �ʹ� �������� <img src="<%=img_main%>/m/2024/0805_ysw7/icon_con2.png" alt="" /> "</p>
<h4 class="con_tit clamp-title">������ �������� �������� �庮, <br>������ �����̰� ���� �ʳ���?</h4>

<p class="mini_tit clamp-title2">�Լ����ڸ��� ��������� �߰ſ� ����!</p>   
<h4 class="con_tit clamp-title"><b class="light_ver">�ʽû��� ������ �Թ��� <br class="show-576">���� ��հ� �̲�����</b> <br>�ϰ� ��� ��¿� �������� <br class="show-576">���� ���� �ı�</h4>

<p class="mini_tit clamp-title2 mint_ver">"������, ���� ó���̶��?"</p>
<h4 class="con_tit clamp-title mint_ver">��/��/��/��/��/�� <br>'��¿��� ��(FUN)�� ������'�� <br class="show-992">�Բ� Ȯ���� ������!</h4>`

const css = `.clamp-title { font-size:44px; } 
.clamp-title2 { font-size:30px; } 
.clamp-text { font-size:20px; } 
.clamp-text2 { font-size:18px; } 
.con_tit { font-weight: 900; /*margin-bottom: 75px;*/ line-height: 1.3; } 
.con_tit b { font-weight: 900; } 
.con_tit b.light_ver { font-weight: 400; } 
.mini_tit { font-weight: 400; letter-spacing: -2px; margin-bottom: 15px; } 
.mini_tit.mb_re { margin-bottom: 0; } 

.mint_ver { color: #6cffdf; } 
.wh_ver { color: #fff; } 
.y_ver { color: #fffb96; }

@media screen and (max-width: 1200px) {
    .clamp-title { font-size: clamp(23px,4.8vmin,44px); } 
    .clamp-title2 { font-size: clamp(16px,3.2vmin,30px); } 
    .clamp-text { font-size: clamp(15px,2vmin,20px); } 
    .clamp-text2 { font-size: clamp(13px,2vmin,18px); } 
    .clamp-text3 { font-size: clamp(13px,1.8vmin,16px); } 
    .mini_tit { margin-bottom: 1%; }
}
`;

const excCss = `img { display:inline; }
.eventWrap .inner { padding: 70px 0; } 
.evCon2 { background: linear-gradient(0deg, rgba(196,251,232,1) 0%, rgba(255,255,255,1) 100%); } 
.evCon3 { background: #2c2c2c url(https://image.megagong.net/m/2024/0805_ysw7/bg_con3.jpg) center center no-repeat; background-size: cover; }`;

const js = ``;

const outJs = ``;

    return (
      <PageContent
        title={title}
        // desc="�̺�Ʈ Ǯ���������� ����ϴ� �̺�Ʈ �Ⱓ ������Ʈ���Դϴ�."
        // image="/images/btn.png"
        html={html}
        realHtml={realHtml}
        css={css}
        excCss={excCss}
        js={js}
        outJs={outJs}
        items={["�̺�Ʈ Ÿ��Ʋ","Ÿ��Ʋ + ������"]}
        link="<%=url_main%>/event/2024/08050029/index.asp#eventWrap"
        onChange={onChange}
      />
    )
  }
</script>