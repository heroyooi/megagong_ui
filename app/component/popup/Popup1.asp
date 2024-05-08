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

const css = `#mcg_fixbn{position: fixed;top:auto; bottom: 24px; right: .5%;width: 240px;z-index: 3;}
.mcg_fixbn.commonSlider{display: none !important;}
.mcg_fixbn.commonSlider.slick-initialized {display: inline-block !important;}
.mcg_fixbn.commonSlider a {display:block;}
.mcg_fixbn.commonSlider a.bnr-link {position: absolute; width: 100%; height: 180px; bottom: 0; left: 0;}
.mcg_fixbn.commonSlider .close{z-index: 6;position: absolute; right: 5px; top: -27px; width: 17px; height: 17px; display: none;}
.mcg_fixbn.commonSlider .slick-arrow {display:none!important;}
.mcg_fixbn.commonSlider .item {position: relative;text-align: center;}
.mcg_fixbn.commonSlider .item .img_wrap {display: flex; height: 100%; align-items: flex-end;}
.mcg_fixbn.commonSlider .item img {display:inline-block;}
.mcg_fixbn.commonSlider .slick-dots {position:absolute;bottom:-15px;left:0;right:0;font-size:0;text-align: center;}
.mcg_fixbn.commonSlider .slick-dots li {display:inline-block;margin:0 2px;}
.mcg_fixbn.commonSlider .slick-dots button {width:8px;height: 8px;border-radius: 50%;background:#000;opacity:.5;font-size:0;}
.mcg_fixbn.commonSlider .slick-dots .slick-active button {opacity: 1;}

@media (max-width: 1200px){
    #mcg_fixbn{display: none;}
}`;

const excCss = `#mcg_fixbn{position: relative;bottom:initial;right:initial;}
.mcg_fixbn.commonSlider .close{display: block;}
`;

const js = `// ��� �ϳ��� ������ �Ⱥ��� ó�� 
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