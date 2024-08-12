<script type="text/babel">
  'use strict';

  function EventTitle3({ title, onChange }) {

const html = `<div class="eventWrap">
    <div class="evSection evCon7" id="event">
        <div class="inner">
            <span class="event_mark"><img src="<%=img_main %>/m/2024/0805_ysw7/event_mark.png" alt=""></span>

						<p class="mini_tit clamp-title2 y_ver">�ڽű� ���� ���� ����</p>
						<h4 class="con_tit wh_ver">
							2025 ��¿� ������ �⺻�̷� <br class="show-992">'��.��.��' ���� <br>�ҹ����� ���� �޾ư�����!
							<% if 1=1 then %><i class="end"></i><% end if %><!--�̺�Ʈ ���� ������-->
						</h4>

						<p class="wh_ver event_text">
							��¿� �������� ���Ӱ� ����� <br class="show-576">������ �⺻�̷� ���¸� �θ� �˷��ּ���. <br>
							�̺�Ʈ�� �������ֽ� �е� �� ��÷�� ���� ������ �帮��, <br>
							<strong>��� �������в��� '�̾ϱ� ���� 30% ���� ����'�� �帳�ϴ�!</strong>
						</p>
						<span class="event_noti wh_ver">*30% ���������� ���� �� �ڵ� ���޵˴ϴ�. <br>(���� ��� �Ⱓ : �����Ϸκ��� 2�ְ� *8/7���� ��� ����)</span>
        </div>
    </div><!-- .evCon3 E -->
</div>`;

const css = `.con_tit .end { right: -20px; top: -210px; } 
.con_tit .end::after { background: #b3cbcc; } /* �̺�Ʈ���� ������ ���󺯰� */

.clamp-title { font-size:44px; } 
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
.y_ver { color: #fffb96; }#event .event_mark { margin-bottom: 25px; display: inline-block; }

#event .con_tit { font-size: 54px; margin-bottom: 20px; letter-spacing: -4px; }
#event .event_text { font-size: 22px; font-weight: 400; margin-bottom: 20px; line-height: 1.6; } 
#event .event_noti { font-size: 16px; opacity: 0.7; font-weight: 400; margin-bottom: 65px; display: inline-block; }

@media screen and (max-width: 1200px) {
    .clamp-title { font-size: clamp(23px,4.8vmin,44px); } 
    .clamp-title2 { font-size: clamp(16px,3.2vmin,30px); } 
    .clamp-text { font-size: clamp(15px,2vmin,20px); } 
    .clamp-text2 { font-size: clamp(13px,2vmin,18px); } 
    .clamp-text3 { font-size: clamp(13px,1.8vmin,16px); } 
    .mini_tit { margin-bottom: 1%; }

    #event .event_mark { margin-bottom: 2%; }
    #event .con_tit { margin-bottom: 4%; font-size: clamp(23px,5.6vmin,54px); } 
    #event .event_text { font-size: clamp(18px,2.4vmin,22px); margin-bottom: 2%; line-height: 1.5; } 
    #event .event_noti { font-size: clamp(15px,1.8vmin,16px); margin-bottom: 5%; } 
}
`;

const excCss = `img{display:inline;}
.eventWrap .inner { padding: 70px 0; } 
#event { background: #005254; }

.con_tit .end { top: -90px; } `;

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
        items={["�̺�Ʈ Ÿ��Ʋ","�پ��� ����"]}
        link="<%=url_main%>/event/2024/08050029/index.asp#eventWrap"
        onChange={onChange}
      />
    )
  }
</script>