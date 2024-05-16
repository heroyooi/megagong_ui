<script type="text/babel">
  'use strict';

  function Teacher3({ title, onChange }) {

const html = `<div class="tec_renew tech_content">
    <div class="tcbanner_zone new">
        <div class="tcbannerZin">
            <div class="tcbanner_slider">
                <div class="item bn_txt" style="width: 100%; display: inline-block;">
                    <a href="https://www.megagong.net/s/gong/event/2021/08260111/index.asp" target="_blank" style="background-color:#0c998d;" tabindex="0">
                        <span class="sub_tit">
                            <span>�ʱ��Ʈ ���� �н����� ����+���� ���ÿϼ�!</span>
                        </span>
                        <strong class="tit">[�ѱ���] 3.0 ���� ����Ǯ��</strong>
                        <span class="point"><span>�ֽŰ���<br>�Ϻ��ݿ�</span></span>
                    </a>
                </div>
                <div class="item bn_txt" style="width: 100%; display: inline-block;">
                    <a href="https://www.megagong.net/event/2022/04200007/index.asp#eventWrap" target="_blank" style="background-color:#72427c;" tabindex="0">
                        <span class="sub_tit">
                            <span>�ѱ���� �Ѵɰ� ����ȭ ����! ����/����/���� </span>
                        </span>
                        <strong class="tit">[�Ѵɰ�] ���ѱ� �ʱ��Ʈ ���� </strong>
                        <span class="point"><span>�������</span></span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>`;

const css = ``;

const excCss = ``;

const js = `var bnnr_slider_cnt = $(".tcbanner_slider .item").length;
if (bnnr_slider_cnt > 1) {
    var tcbanner_slider = $('.tcbanner_slider').slick({
        infinite: true,
        speed: 300,
        autoplaySpeed:5000,
        autoplay: true,
        slidesToShow: 2,
        slidesToScroll: 1,
        dots: false,
        arrows: true,
        easing: 'easeOutElastic',
        prevArrow: $('.tcbannerZin .controlBox .slick-prev'),
        nextArrow: $('.tcbannerZin .controlBox .slick-next'),
        responsive: [
            {
                breakpoint: 1201,
                settings: {
                    dots: true,
                }
            },
            {
                breakpoint: 993,
                settings: {
                slidesToShow: 1,
                    dots: true,
                }
            }
            ]
    });
} else {
    $("#th_controlBox").hide();
}
`;

    return (
      <PageContent
        title={title}
        desc="�ް��������� ����Ȩ ���������� ���Ǵ� ��� ����Դϴ�. <br />
        �ַ� �ش� ���� �������� ��ȹ�� ������ Ȥ�� ���� �������� ����Ǹ� ���� �ð����� �ڵ� �Ѹ��˴ϴ�."
        // image="/images/popup1.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["����Ȩ","���","��ũ����"]}
        link="<%=url_main%>/teacher/home.asp?bcode=jeonhangil"
        onChange={onChange}
      />
    )
  }
</script>