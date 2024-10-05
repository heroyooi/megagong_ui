<script type="text/babel">
  'use strict';

  function Slick1({ title, onChange, simple = false }) {

const html = `<div class="slick-basic-wrap">
  <div class="slick-basic">
    <div class="item"><span class="inner">Slide 1</span></div>
    <div class="item"><span class="inner">Slide 2</span></div>
    <div class="item"><span class="inner">Slide 3</span></div>
    <div class="item"><span class="inner">Slide 4</span></div>
    <div class="item"><span class="inner">Slide 5</span></div>
  </div>
  <a href="javascript:;" class="mg_slick_btn tp1 prev">이전</a>
  <a href="javascript:;" class="mg_slick_btn tp1 next">다음</a>
</div>`;

const css = `.slick-basic-wrap{position: relative;}
.slick-basic-wrap .slick-basic{display: none;}
.slick-basic-wrap .slick-basic.slick-initialized{display: block;}
.slick-basic-wrap .slick-basic .item .inner{margin:0 5px;}
.slick-basic-wrap .sliderArrow a{position: absolute; top: 50%;transform: translate(0, calc(-50%)); left: -1.5%;}
.slick-basic-wrap .sliderArrow a + a{transform: rotate(180deg) translate(0, calc(50%));left: auto;right: -1.5%;}

.slick-basic-wrap .slick-dots{margin-top: 20px;display: flex;justify-content: center;align-items: center;} 
.slick-basic-wrap .slick-dots li{background: #555;transition: all .1s;cursor: pointer;width: 12px;height: 12px;border-radius: 50%;margin-right: .5%;} 
.slick-basic-wrap .slick-dots li.slick-active{background: #000;} 
.slick-basic-wrap .slick-dots li button{font-size:0;}
.slick-basic-wrap .slick-dots li:last-child{margin-right: 0}

.slick-basic-wrap .slick-list{margin-left: 0vw;} /*edit margin*/
.slick-basic-wrap .slick-slide{margin-right: 0vw;}

/* progressBar version*/
.slick-basic-wrap.progressBar .slick-dots .slick-dots{margin: 20px auto 0;}
.slick-basic-wrap.progressBar .slick-dots li{height: 10px;border-radius: 0;margin: 0;flex: 1;} 
.slick-basic-wrap.progressBar .slick-dots li.slick-active{background: #555;} 

@media screen and (max-width: 1200px){
    .slick-basic-wrap .sliderArrow a {max-width:6%}
    .slick-basic-wrap .slick-slide img{width: 100%;}
}
@media screen and (max-width: 480px){
    .slick-basic-wrap{margin: 0 7%;}
    .slick-basic-wrap .sliderArrow a {max-width:10%}
    .slick-basic-wrap .slick-dots{margin-top: 10px;} 
    .slick-basic-wrap .slick-dots li{width: 10px;height: 10px;margin-right: 1.5%;}
}`;

const excCss = `.slick-basic-wrap{max-height:153px;}
.slick-basic-wrap .slick-basic{display: block;}
.slick-basic-wrap .slick-basic .item .inner{display:block;background-color:rgb(238, 238, 238);padding:50px 0;text-align:center;}
`;

const js = `$('.slick-basic').not('.slick-initialized').slick({
  slidesToShow: 3,		
  arrows: true,
  dots:true,
  autoplaySpeed: 3000,
  prevArrow: $('.slick-basic-wrap .mg_slick_btn.prev'),
  nextArrow: $('.slick-basic-wrap .mg_slick_btn.next'),	
  touchThreshold: 100,	
  // autoplay: true,		
  responsive: [ 
      { 
        breakpoint: 769, 
        settings: { 
          slidesToShow: 2,		
        } 
      }, 
      { 
        breakpoint: 481, 
        settings: { 
          slidesToShow: 1,		
        } 
      } 
    ] 		
})`;

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
        items={["반응형 슬라이드", "기본형", "슬릭"]}
        link="<%=dev_url_main%>/event/2023/06200020/index.asp#eventWrap"
        simple={simple}
        onChange={onChange}
      />
    )
  }
</script>