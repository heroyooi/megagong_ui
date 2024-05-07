<script type="text/babel">
  'use strict';

  function Popup1({ title, onChange }) {

const html = `<div id="mcg_fixbn" class="mcg_fixbn">
  <a href="javascript:;" onclick="mainHide('#mcg_fixbn')" class="close"><img src="<%=img_main%>/common/btn_close_right_bottom_bnr.png" alt="�ݱ�"></a>
  <div class="mcg_fixbn commonSlider">
    <div class="item">
        <a href="https://www.youtube.com/watch?v=8OiVrxFaOhI" title="[�����] ������, ������ ��� �غ��� ���ΰ�" class="bnr-link" target="_blank"></a>
        <div class="img_wrap"><img src="<%=img_main%>/m/2024/0326_gong/main_bnr1.png" alt="[�����] ������, ������ ��� �غ��� ���ΰ� LIVE�� 4/1(��) ���� 7�� ����!"></div>
    </div>
    <div class="item">
        <a href="/s/gong/event/2023/12180141/index.asp" title="2025 �������� ��ȯ �Ϻ� �ݿ� �Թ� Ư�� ���� ���̽�" class="bnr-link" target="_blank"></a>
        <div class="img_wrap"><img src="<%=img_main%>/m/2024/0326_gong/main_bnr4.png" alt="2025 �������� ��ȯ �Ϻ� �ݿ� �Թ� Ư�� ���� ���̽� LIVE�� 4/27(��) ���� 2�� ����!"></div>
    </div>
  </div>
</div>

<div onload="popup1Script()"></div>`;

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
.mcg_fixbn .slick-dots .slick-active button {opacity: 1;}`;

const excCss = `.mcg_fixbn{position: relative;}
.mcg_fixbn .close{display: block;}
`;

const js = `popup1Script()`;

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