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
                            <span>필기노트 연계 학습으로 개념+기출 동시완성!</span>
                        </span>
                        <strong class="tit">[한국사] 3.0 기출 문제풀이</strong>
                        <span class="point"><span>최신경향<br>완벽반영</span></span>
                    </a>
                </div>
                <div class="item bn_txt" style="width: 100%; display: inline-block;">
                    <a href="https://www.megagong.net/event/2022/04200007/index.asp#eventWrap" target="_blank" style="background-color:#72427c;" tabindex="0">
                        <span class="sub_tit">
                            <span>한길샘의 한능검 최적화 강의! 강해/압축/기적 </span>
                        </span>
                        <strong class="tit">[한능검] 전한길 필기노트 강좌 </strong>
                        <span class="point"><span>무료공개</span></span>
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
        desc="메가공무원의 강사홈 페이지에서 사용되는 배너 기능입니다. <br />
        주로 해당 강사 선생님의 기획전 페이지 혹은 강좌 페이지로 연결되며 일정 시간마다 자동 롤링됩니다."
        // image="/images/popup1.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["강사홈","배너","링크연결"]}
        link="<%=url_main%>/teacher/home.asp?bcode=jeonhangil"
        onChange={onChange}
      />
    )
  }
</script>