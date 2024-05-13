<script type="text/babel">
  'use strict';

  function Slick10({ title, onChange }) {

const html = `<a class="mg_btn_base sm s_example_10_btn" href="#" onclick="openMegaPopup('popupSlide', 1); return false;">�����̵� �˾� ȣ��</a>

<div class="mg_popup_wrap z-anim mfp-hide" id="popupSlide" style="max-width: 420px;">
  <div class="content_area">
    <div class="content_inner pb20">
      <p class="m_tit">2022.8.17.<br><strong class="blue">��÷�� ���ϵ帳�ϴ�!</strong></p>
      <div class="mg_slick_wrap s_example_10_wrap">
        <div><img src="<%=img_main%>/m/2022/0907_paper/prize_img01.png" alt=""></div>
        <div><img src="<%=img_main%>/m/2022/0907_paper/prize_img02.png" alt=""></div>
        <div><img src="<%=img_main%>/m/2022/0907_paper/prize_img03.png" alt=""></div>
        <div><img src="<%=img_main%>/m/2022/0907_paper/prize_img04.png" alt=""></div>
        <div><img src="<%=img_main%>/m/2022/0907_paper/prize_img05.png" alt=""></div>
        <div><img src="<%=img_main%>/m/2022/0907_paper/prize_img06.png" alt=""></div>
        <div><img src="<%=img_main%>/m/2022/0907_paper/prize_img07.png" alt=""></div>
      </div>
    </div>
    <div class="tit_area blue">[�ް�������] �Ųٷ� �÷��� ��ũ �÷�</div>
    <div class="content_inner">
      <ul class="s_info">
        <li><span>��</span>��÷�ǽ� �Ųٷ� �÷��ʴ� 7/20(��)  �߼۵� �����̿���, ���� ������ ����  �߼����� ����� �� �ֽ��ϴ�.</li>
        <li><span>��</span>�Ųٷ� �÷��ʴ� ȸ�� ���� ���� �ּ� ��%�ּ��ּ��ּ��ּ��ּ��ּ��ּ�%�� �� �߼۵� �����Դϴ�. <a href="#">[ �ּ� ���� > ]</a></li>
        <li><span>��</span>�ּ� �̱��� & ������� ���� ��߼��� �Ұ��մϴ�.</li>
      </ul>
      <div class="mg_btn_wrap">
        <a href="#" class="mg_btn_base" onclick="$.magnificPopup.close(); return false;">Ȯ��</a>
      </div>
    </div>
  </div>
</div>`;

const css = `.s_example_10_wrap{display: none;}
.s_example_10_wrap.slick-initialized{display: block;}
.s_example_10_wrap .slick-arrow{position:absolute;width:54px;height:54px;font-size:0;top:50%;margin-top:-27px;z-index:1;}
.s_example_10_wrap .slick-arrow.slick-prev{background:url(https://img.megagong.net/m/2022/0907_paper/btn_prev.png) 0 0 no-repeat;left:-30px;}
.s_example_10_wrap .slick-arrow.slick-next{background:url(https://img.megagong.net/m/2022/0907_paper/btn_next.png) 0 0 no-repeat;right:-30px;}`;

const excCss = `.s_example_10_wrap{max-height:108px;}
.s_example_10_wrap .s_example_10{display:block;}`;

const js = `var Example10 = $('.s_example_10_wrap').slick({
  infinite: true,
  speed: 500,
  arrows: true,
  draggable: true,
  touchThreshold: 100,
  slidesToShow: 1,
  slidesToScroll: 1,
});
$('.mg_btn_base.s_example_10_btn').on('click', function(){
  Example10.slick('refresh');
  Example10.slick('setPosition');
});`;

const outJs = ``;

    return (
      <PageContent
        title={title}
        desc=""
        // image="/images/btn.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        outJs={outJs}
        items={["������ �����̵�", "�˾� ���� �����̵�", "refresh", "setPosition"]}
        link="<%=dev_url_main%>/test/guide/slick.asp"
        onChange={onChange}
        version="no-padding"
      />
    )
  }
</script>