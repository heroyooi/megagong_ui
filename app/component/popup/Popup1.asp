<script type="text/babel">
  'use strict';

  function Popup1({ title, onChange }) {

const html = `<div id="mcg_fixbn" class="mcg_fixbn">
  <a href="javascript:;" onclick="mainHide('#mcg_fixbn')" class="close"><img src="<%=img_main%>/common/btn_close_right_bottom_bnr.png" alt="�ݱ�"></a>

  <div class="mcg_fixbn commonSlider">
    <div class="item">
        <a href="/s/gong/event/2021/05270068/index.asp#eventWrap" title="2024 ������ 9�� �ʱ� �հ� �����ϰ� �����е�, ��ǰ�� �޾ư�����!" class="bnr-link" target="_blank"></a>
        <div class="img_wrap"><img src="<%=img_main%>/m/2024/0502_gongpass/bnr_gong1.png" alt="2024 ������ 9�� �ʱ� �հ� �����ϰ� �����е�, ��ǰ�� �޾ư�����!"></div>
    </div>
    <div class="item">
        <a href="/s/gong/event/2021/05270068/index.asp#eventWrap" title="2024 ������ 9�� �ʱ� �հ� �����ϰ� �����е�, ��ǰ�� �޾ư�����!" class="bnr-link" target="_blank"></a>
        <div class="img_wrap"><img src="<%=img_main%>/m/2024/0502_gongpass/bnr_gong1.png" alt="2024 ������ 9�� �ʱ� �հ� �����ϰ� �����е�, ��ǰ�� �޾ư�����!"></div>
    </div>
    <div class="item">
        <a href="/s/gong/event/2021/05270068/index.asp#eventWrap" title="2024 ������ 9�� �ʱ� �հ� �����ϰ� �����е�, ��ǰ�� �޾ư�����!" class="bnr-link" target="_blank"></a>
        <div class="img_wrap"><img src="<%=img_main%>/m/2024/0502_gongpass/bnr_gong1.png" alt="2024 ������ 9�� �ʱ� �հ� �����ϰ� �����е�, ��ǰ�� �޾ư�����!"></div>
    </div>
  </div>
</div>`;

const css = `.mcg_fixbn{position: fixed;top:auto; bottom: 24px; right: .5%;width: 240px;z-index: 3;}
.mcg_fixbn a {display:block;}
.mcg_fixbn a.bnr-link {position: absolute; width: 100%; height: 180px; bottom: 0; left: 0;}
.mcg_fixbn .close{z-index: 6;position: absolute; right: 5px; bottom: 190px; width: 17px; height: 17px; padding: 3px; display: none;}
.mcg_fixbn .slick-arrow {display:none!important;}
.mcg_fixbn .item {position: relative;text-align: center; height: 204px;}
.mcg_fixbn .item .img_wrap {display: flex; height: 100%; align-items: flex-end;}
.mcg_fixbn .item img {display:inline-block;}
.mcg_fixbn .slick-dots {position:absolute;bottom:-15px;left:0;right:0;font-size:0;text-align: center;}
.mcg_fixbn .slick-dots li {display:inline-block;margin:0 2px;}
.mcg_fixbn .slick-dots button {width:8px;height: 8px;border-radius: 50%;background:#000;opacity:.5;font-size:0;}
.mcg_fixbn .slick-dots .slick-active button {opacity: 1;}

/* ������ LIVE ��� S */
.live_roll{position: relative;width: 225px;height: 40px;position: absolute;bottom: 30px; left: 9px;}
.live_roll .live_item  {width: 225px;height: 40px;}
.live_roll .live_item a {display: flex;align-items: center;background: #000;border-radius: 100px;width: 100%;height: 40px;}
.live_roll .live_item a .tag{line-height: 1.4; background: #b70000;color: #fff;border-radius: 100px;width: 85px; height: 100%;font-size: 12px; display: flex; justify-content: center; align-items: center;}
.live_roll .live_item a strong{font-size: 12px; color: #ffee9e; padding: 0 5px; margin: 0 auto; line-height: 1.4;}
.live_roll .slick-dots .slick-active button {background-color: #fff;}
.live_roll .slick-dots button {background-color: #f8a3a9;}
/* ������ LIVE ��� E */

@media (max-width: 1200px){
    .mcg_fixbn{display: none;}
}`;

const excCss = `.mcg_fixbn{position:relative;bottom:initial;}
.mcg_fixbn .close{box-sizing:content-box;right:0;}
`;

const js = `$(function() {
    var mcgBn_lng = $('#mcg_fixbn .item').length;
    if (!mcgBn_lng) {
        $('#mcg_fixbn .close').css({display:"none", opacity:0})
    } else {
        $('#mcg_fixbn .close').css({display:"block", opacity:1})
    }
});

// ��� �ϳ��� ������ �Ⱥ��� ó�� 
$('.mcg_fixbn.commonSlider').not('.slick-initialized').slick({
    infinite: true,
    autoplaySpeed: 3000,
    autoplay:true,
    arrows: false,
    draggable: true,
    dots: true,
});`;

    return (
      <PageContent
        title={title}
        desc="�ް����͵� ������ ���� Ȩ���������� ���Ǵ� �˾� ����Դϴ�.<br />��ġ�� ���λ���Ʈ ���� �ϴܺο� �δ� ���� ��Ģ���� �ϸ鼭 �ϴ��� �� ��� ���ٴ� ������ �����ϵ��� �۾��ؾ� �մϴ�."
        image="/images/popup1.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["�˾����","�����ϴ�","�����̵�"]}
        link="<%=url_main%>/megagong.asp"
        onChange={onChange}
      />
    )
  }
</script>