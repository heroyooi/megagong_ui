<script type="text/babel">
  'use strict';

  function EventTitle5({ title, onChange }) {

const html = `<div class="eventWrap">
    <div class="evSection evCon3_1 event">
        <div class="inner">
            <div class="con_tit">
                <% if 1=1 then %><i class="end"></i><% end if %><!--�̺�Ʈ ���� ������-->
                <i class="event_tag ver_border">EVENT. 01</i>
                <h4><span>ī�� ģ��</span> �߰� �̺�Ʈ</h4>
                <div class="sub_tit"><b>�ް��������� ī�� ģ��</b> ���� ȭ���� ĸó�Ͽ� �����ϸ� <br class="show-576"><b>Ǫ���� ����</b>�� �����! <br>���� ģ��, ���ο� ģ�� <b>��� ���� ����</b>�մϴ�.</div>
            </div>
        </div>
    </div><!-- .event E -->

    <div class="evSection evCon4 event">
        <div class="inner">
            <div class="con_tit">
                <% if 1=1 then %><i class="end"></i><% end if %><!--�̺�Ʈ ���� ������-->
                <i class="event_tag ver_border">EVENT. 02</i>
                <h4><span>�ҹ�����</span> �̺�Ʈ</h4>
                <div class="sub_tit"><b>�ް������� ī�� ģ��</b> �߰� �̺�Ʈ�� �θ� �˷��ּ���. <br>���������� �ۼ��� ����, <br class="show-576">�� ���� ģ���鿡�� <b>�ҹ� ������ ��÷ Ȯ�� UP!</b></div>
            </div>
        </div>
    </div><!-- .event E -->
</div>`;

const css = `/* ���� */
.evSection .con_tit h4 {font-weight: 900; font-size: 55px;}
.evSection .con_tit h4 span {color: #017afd;}
.evSection .con_tit .sub_tit {font-weight: 400; font-size: 22px;}
.evSection .con_tit h4 + .sub_tit {margin-top: 15px;}

.con_tit .end::after {background: #000;}
.event .con_tit .event_tag {max-width: 250px; font-size: 40px; color: #3c1e20; border-color: #3c1e20; background: none; padding: 3px 0; margin-bottom: 20px;}
.event .con_tit .event_tag::before {border-color: #3c1e20;}

/* evCon3_1 */
.evCon3_1 {background: #ffea8a;}
.evCon3_1 .con_tit .event_tag::before {background: #ffea8a;}

/* evCon4 */
.evCon4 {background: #fff9dd;}
.evCon4 .con_tit .event_tag::before {background: #fff9dd;}

@media screen and (max-width: 1200px){
  .evSection .con_tit h4 {font-size: clamp(22px, 5.5vmin, 55px);}
  .evSection .con_tit .sub_tit {font-size: clamp(15px, 2.4vmin, 22px);}
  .evSection .con_tit h4 + .sub_tit {margin-top: 2%;}

  .event .con_tit .event_tag {font-size: clamp(16px, 4vmin, 40px); margin-bottom: 3%;}
}
`;

const excCss = `img{display:inline;}
.eventWrap .inner { padding: 70px 0; }`;

const js = ``;

const outJs = ``;

    return (
      <PageContent
        title={title}
        // desc="�̺�Ʈ Ǯ���������� ����ϴ� �̺�Ʈ �Ⱓ ������Ʈ���Դϴ�."
        // image="/images/btn.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        outJs={outJs}
        items={["�̺�Ʈ Ÿ��Ʋ","�ý���"]}
        link="<%=url_main%>/s/gong/event/2024/08200091/index.asp#eventWrap"
        onChange={onChange}
      />
    )
  }
</script>