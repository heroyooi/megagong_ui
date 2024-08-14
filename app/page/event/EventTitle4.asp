<script type="text/babel">
  'use strict';

  function EventTitle4({ title, onChange }) {

const html = `<div class="eventWrap">
    <div class="evSection evCon9 event" id="event">
        <div class="inner">
            <div class="con_tit">
                <% if 1=1 then %><i class="end"></i><% end if %><!--�̺�Ʈ ���� ������-->
                <i class="event_tag">EVENT</i>
                <h4>2025 �⺻�� �Ⱓ ��� <br><span>��â�� ���౸�� ���� ���� �̺�Ʈ</span></h4>
                <div class="sub_tit">
                    YES24, ��������, �˶�� �� �ֿ� ���� �¶��� ������ <br>
                    <b>2025 ��â�� ���౸�� <br class="show-460">ALL IN ONE ���� �ı�(����)�� �����ּ���.</b> <br>
                    ���� �ۼ� �� ���� ���ֽ� �е� �������� ���� ����! <br>
                    ����Ʈ �ı�� �����ǽô� �е鿡�Դ� <br class="show-576">��÷�� ���� ���� Ǫ���� ������ �帳�ϴ�
                </div>
            </div>
        </div>
    </div><!-- .evCon3 E -->
</div>`;

const css = `/* ���� */
.evSection .con_tit h4 {font-weight: 900; font-size: 44px; color: #111; letter-spacing: -0.05em;}
.evSection .con_tit .cr_gradi {display: block; background: #ff0054; background: -webkit-linear-gradient(90deg, #ff0054 0%, #ffb400 100%); background: linear-gradient(90deg, #ff0054 0%, #ffb400 100%); -webkit-background-clip: text; -webkit-text-fill-color: transparent;}
.evSection .con_tit .sub_tit {font-weight: 400; font-size: 24px;}
.evSection .con_tit .sub_tit + h4 {margin-top: 10px;}
.evSection .con_tit h4 + .sub_tit {margin-top: 20px;}

.evSection.event .con_tit h4 {font-size: 50px;}
.evSection.event .con_tit .sub_tit {font-size: 22px;}
.con_tit .end {top: 12%; right: 4%;}
.con_tit .end::after {background: #2c1300;} /* �̺�Ʈ���� ������ ���󺯰� */

/* evCon9 */
.evCon9 {background: #e35541;}
.evCon9 .con_tit .event_tag {color: #e35541;}
.evCon9 .con_tit h4 {color: #fff;}
.evCon9 .con_tit h4 span {color: #ffc600}
.evCon9 .con_tit .sub_tit {color: #fff;}
.evCon9 .con_tit .sub_tit b {color: #ffc600;}

@media screen and (max-width: 1200px){
  .evSection .con_tit h4 {font-size: clamp(22px, 4.6vmin, 44px);}
  .evSection .con_tit .sub_tit {font-size: clamp(15px, 2.6vmin, 24px);}
  .evSection .con_tit .sub_tit + h4 {margin-top: 1%;}
  .evSection .con_tit h4 + .sub_tit {margin-top: 2%;}

  .evSection.event .con_tit h4 {font-size: clamp(24px, 5vmin, 50px);}
  .evSection.event .con_tit .sub_tit {font-size: clamp(15px, 2.4vmin, 22px);}
}`;

const excCss = `img{display:inline;}
.eventWrap .inner { padding: 70px 0; } 
#event { background: #e35541; }`;

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
        link="<%=url_main%>/s/gong/event/2024/08120090/index.asp#event"
        onChange={onChange}
      />
    )
  }
</script>