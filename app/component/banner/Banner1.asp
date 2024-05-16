<script type="text/babel">
  'use strict';

  function Banner1({ title, onChange }) {

const html = `<div class="main_wrp">
  <div id="main_pass" class="main_pass notosans">
    <div class="slider mb0">
      <div class="item">
        <a href="/s/gong/pass/sale_2025.asp#eventWrap" title="������ �ް��н�" tabindex="-1">
          <img src="<%=img_main%>/m/2024/0514_pass/gong/pass_bnr1.jpg" alt="������ �ް��н�">
        </a>
      </div>
      <div class="item">
        <a href="/s/gong/pass/total_tech_sale_2025.asp#eventWrap" title="����� �ް��н�">
          <img src="<%=img_main%>/m/2024/0514_pass/tech/pass_bnr1.jpg" alt="����� �ް��н�" />
        </a>
      </div>
      <div class="item">
        <a href="/s/gong/event/2023/12260149/index.asp#eventWrap" title="�ް������� ����Ƽ�н�">
          <img src="<%=img_main%>/m/2024/0514_tpass/gong_main_bnr.jpg" alt="���� ���� �������� ���Ǹ� ������ ����! 2�� ���� ���� �� 15% ��� ����" />
        </a>
      </div>
    </div>
  </div>
</div>`;

const css = `/* �н� ���� ��� */
.main_wrp section.pass::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 346px;
    background: #f5f5f5;
}

.main_wrp .main_pass {
    position: relative;
    height: 380px;
}

.main_wrp .main_pass {
    position: relative;
    float: left;
    width: 692px;
    margin: 0px 20px 0px 0;
    padding: 30px 0 4px 0;
}

.main_wrp .main_pass .tag {
    position: absolute;
    right: 1.5%;
    top: -4%;
    z-index: 1;
}

.main_wrp .main_pass .slider {
    display: none;
    margin: 0 0 14px;
}

.main_wrp .main_pass .slider.mb0 {
    margin: 0 0 0;
}

.main_wrp .main_pass .slider.slick-initialized {
    display: block;
}

.main_wrp .main_pass .slider .item {
    position: relative;
}

.main_wrp .main_pass .slider .item a {
    position: relative;
    display: block;
    line-height: 1.4;
    overflow: hidden;
}

.main_wrp .main_pass .slider .dday {
    position: absolute;
    top: 10px;
    right: 16px;
    color: #fff;
    font-weight: 100;
    text-align: right;
}

.main_wrp .main_pass .slider .dday span {
    display: block
}

.main_wrp .main_pass .slider .dday .point {
    color: #fff32d;
}

.main_wrp .main_pass .slider .slick-arrow {
    position: absolute;
    top: 50%;
    width: 17px;
    height: 26px;
    z-index: 1;
    font-size: 0;
    line-height: 0;
    background: url(https://img.megagong.net/m/2022/1219_pass/evt_arrow_w.png) no-repeat;
    transform: translateY(-50%);
}

.main_wrp .main_pass .slider .slick-prev {
    background-position: 0 center;
    left: 0;
}

.main_wrp .main_pass .slider .slick-next {
    background-position: 100% center;
    right: 0;
}

.main_wrp .main_pass .slider .slick-dots {
    display: none !important
}`;

const excCss = `.main_wrp .main_pass{padding-top:0;height:auto;}`;

const js = `$('.main_pass .slider').not('.slick-initialized').slick({
  arrows:true,
  speed: 200,
  autoplay: true,
  dots:false
});`;

    return (
      <PageContent
        title={title}
        desc=""
        // image="/images/popup1.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["�н���ǰ","���ι��"]}
        link="<%=url_main%>/megagong.asp"
        onChange={onChange}
      />
    )
  }
</script>