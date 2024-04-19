<script type="text/babel">
  'use strict';

  function Button2() {

const html = `
<button class="slick-prev slick-arrow" aria-label="Previous" type="button">Previous</button>
<button class="slick-next slick-arrow" aria-label="Next" type="button">Next</button>

<button class="slick-prev2 slick-arrow2" aria-label="Previous" type="button">Previous</button>
<button class="slick-next2 slick-arrow2" aria-label="Next" type="button">Next</button>

<button class="slick-prev3 slick-arrow3" aria-label="Previous" type="button">Previous</button>
<button class="slick-next3 slick-arrow3" aria-label="Next" type="button">Next</button>

<button class="slick-prev4 slick-arrow4" aria-label="Previous" type="button">Previous</button>
<button class="slick-next4 slick-arrow4" aria-label="Next" type="button">Next</button>

<button class="slick-prev5 slick-arrow5" aria-label="Previous" type="button">Previous</button>
<button class="slick-next5 slick-arrow5" aria-label="Next" type="button">Next</button>

<button class="slick-prev6 slick-arrow6" aria-label="Previous" type="button">Previous</button>
<button class="slick-next6 slick-arrow6" aria-label="Next" type="button">Next</button>

<br />

<button class="slick-prev7 slick-arrow7" aria-label="Previous" type="button">Previous</button>
<button class="slick-next7 slick-arrow7" aria-label="Next" type="button">Next</button>

<button class="slick-prev8 slick-arrow8" aria-label="Previous" type="button">Previous</button>
<button class="slick-next8 slick-arrow8" aria-label="Next" type="button">Next</button>

<button class="slick-prev9 slick-arrow9" aria-label="Previous" type="button">Previous</button>
<button class="slick-next9 slick-arrow9" aria-label="Next" type="button">Next</button>

<button class="slick-prev10 slick-arrow10" aria-label="Previous" type="button">Previous</button>
<button class="slick-next10 slick-arrow10" aria-label="Next" type="button">Next</button>
`;

const css = `
.slick-arrow {font-size: 0; width: 7px; height: 13px;}
.slick-prev {background: url(https://img.megagong.net/m/2022/0616_main/arr_L.png) no-repeat center;background-size: 100% auto;}
.slick-next {background: url(https://img.megagong.net/m/2022/0616_main/arr_R.png) no-repeat center; background-size: 100% auto;}

.slick-arrow2 { width: 21px; height: 29px; font-size: 0;}
.slick-prev2 { background: #2b2c30 url(https://img.megagong.net/m/2022/0616_main/white_arr_L.png) no-repeat center;}
.slick-next2 {background: #2b2c30 url(https://img.megagong.net/m/2022/0616_main/white_arr_R.png) no-repeat center;}

.slick-arrow3 { width: 22px;height: 35px; font-size: 0;background: #e7e7e7 url(https://img.megagong.net/m/2021/0615_gongRNL/teacher_notice_arrow.png) no-repeat 6px 3px;opacity: 0.7;}
.slick-next3 {background-position: -27px 3px;}

.slick-arrow4 {width: 24px;height: 32px; font-size: 0;  background-repeat: no-repeat; background-image: url(https://img.megagong.net/m/2021/0615_gongRNL/cast_arrow.png);opacity: 0.7;}
.slick-prev4 {background-position: 0 0;}
.slick-next4 {background-position: 100% 0;}

.slick-arrow5 { width: 17px;height: 26px; font-size: 0; background: rgba(0,0,0,0.5) url(https://img.megagong.net/m/2022/1219_pass/evt_arrow_w.png) no-repeat;}
.slick-prev5 {background-position: 0 center;}
.slick-next5 { background-position: 100% center;}

.slick-arrow6 { width: 17px;height: 26px; font-size: 0; background: url(https://img.megagong.net/m/2021/1007_mainrenw/evt_arrow.png) no-repeat;}
.slick-prev6 {background-position: 0 center;}
.slick-next6 { background-position: 100% center;}

.slick-arrow7 { width: 20px; height: 39px; font-size: 0; }
.slick-prev7 {background: url(https://img.megagong.net/m/2022/0404_pass/all/btn_slider_prev.png) no-repeat;}
.slick-next7 { background: url(https://img.megagong.net/m/2022/0404_pass/all/btn_slider_next.png) no-repeat;}

.slick-arrow8 { width: 20px; height: 35px; font-size: 0; }
.slick-prev8 {background: url(https://img.megagong.net/m/2022/0317_psat/0331/con2_sd_al.png) no-repeat;}
.slick-next8 { background: url(https://img.megagong.net/m/2022/0317_psat/0331/con2_sd_ar.png) no-repeat;}

.slick-arrow9 { width: 20px; height: 96px; font-size: 0; }
.slick-prev9 {background: url(https://img.megagong.net/m/2022/0708_examinfo/btn_prev.png) no-repeat;}
.slick-next9 { background: url(https://img.megagong.net/m/2022/0708_examinfo/btn_next.png) no-repeat;}

.slick-arrow10 { width: 24px; height: 40px; font-size: 0; }
.slick-prev10 {background: url(https://img.megagong.net/m/2022/0929_gosabu88/btn_prev.png) no-repeat;}
.slick-next10 { background: url(https://img.megagong.net/m/2022/0929_gosabu88/btn_next.png) no-repeat;}
`;


    return (
      <PageContent
        title="버튼 - 슬라이드 좌우형"
        desc="슬라이드에 사용되는 좌, 우측 버튼의 예시입니다. <br />슬라이드 버튼의 경우, 반응형을 고려하여 사이즈를 책정하고 및 버튼의 색상을 지정하는 것을 권장합니다."
        image="/images/btn2.png"
        html={html}
        css={css}
        items={["슬라이드버튼","넘기기버튼","화살표"]}
        link="<%=url_main%>"
      />
    )
  }
</script>