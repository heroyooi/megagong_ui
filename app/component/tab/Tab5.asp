<script type="text/babel">
  'use strict';

  function Tab5({ title, error, errorLink, onChange }) {

const html = `<ul id="tab5" class="tab_base">
    <li class="on"><a href="#tab5_1">탭4-1</a></li>
    <li><a href="#tab5_2">탭4-2</a></li>
</ul>
<ul id="panel5" class="panel_base w_slide">
    <li id="tab5_1">
        <div class="mg_slick_wrap fac_slick_wrap">
            <div class="fac_slick">
                <div><span class="img_cover"><img src="<%=img_main%>/m/2022/1028_gongssel/fa1_1_1.jpg" alt=""></span></div>
                <div><span class="img_cover"><img src="<%=img_main%>/m/2022/1028_gongssel/fa1_1_2.jpg" alt=""></span></div>
                <div><span class="img_cover"><img src="<%=img_main%>/m/2022/1028_gongssel/fa1_1_3.jpg" alt=""></span></div>
            </div>
        </div>
    </li>
    <li id="tab5_2">
        <div class="mg_slick_wrap fac_slick_wrap">
            <div class="fac_slick">
                <div><span class="img_cover"><img src="<%=img_main%>/m/2022/1028_gongssel/fa1_2_1.jpg" alt=""></span></div>
                <div><span class="img_cover"><img src="<%=img_main%>/m/2022/1028_gongssel/fa1_2_2.jpg" alt=""></span></div>
                <div><span class="img_cover"><img src="<%=img_main%>/m/2022/1028_gongssel/fa1_2_3.jpg" alt=""></span></div>
            </div>
        </div>
    </li>
</ul>`;

const css = `.tab_base{clear: both; width:100%;}
.tab_base:after{content:'';display:block;clear:both;}
.tab_base > li{float:left;width:50%;text-align:center;}
.tab_base.col3 > li{width:33.333%;}
.tab_base > li a{display:block;padding:10px;color:#111; background-color: #f8f8f8;}
.tab_base > li.on a{background-color:#111;color:#fff;}
.panel_base > li { padding: 30px;display:none;}

/*.fac_slick{display: none;}
.fac_slick.slick-initialized{display: block;}*/
.mg_slick_wrap{max-width:866px;}
.mg_slick_wrap .slick-dots li{padding:0 4px;}
.mg_slick_wrap .slick-dots li button{width:50px;height:5px;border-radius:3px;background-color:#dddddd;}
.mg_slick_wrap .slick-arrow{display:inline-block;width:30px;height:30px;position:absolute;top:50%;margin-top:-35px;z-index:1;font-size:0;}
.mg_slick_wrap .slick-arrow.slick-prev{left:10px;}
.mg_slick_wrap .slick-arrow.slick-next{right:10px;}
.mg_slick_wrap .slick-arrow.slick-prev{background:url(http://img.megagong.net/m/2022/1028_gongssel/btn_g_prev.png) 0 0 no-repeat;}
.mg_slick_wrap .slick-arrow.slick-next{background:url(http://img.megagong.net/m/2022/1028_gongssel/btn_g_next.png) 0 0 no-repeat;}
.mg_slick_wrap .slick-arrow.slick-prev{background:url(http://img.megagong.net/m/2022/1028_gongssel/btn_p_prev.png) 0 0 no-repeat;}
.mg_slick_wrap .slick-arrow.slick-next{background:url(http://img.megagong.net/m/2022/1028_gongssel/btn_p_next.png) 0 0 no-repeat;}
.mg_slick_wrap .slick-dots li.slick-active button{background-color:#000;}`;

const excCss = `.tab_base, .panel_base{max-width:926px;}
.panel_base{min-height:525px;}`;

const js = `$('.tab_base').each(function(){
    var target = $(this).find('li.on').find('a').attr('href');
    $(target).show();
});
$('.tab_base a').on('click', function(e){
    e.preventDefault();
    var target = $(this).attr('href');
    $(this).closest('li').addClass('on');
    $(this).closest('li').siblings().removeClass('on');
    $(target).show();
    $(target).siblings().hide();
});
$('.panel_base').each(function(){
    if ($(this).hasClass('w_slide')) {
        setTimeout(function(){
            $(this).children('li, div').hide();
            $(this).children('li, div').eq($(this).prev('.tab_base').children('li.on').index()).show();
            $(this).addClass('active');
        }, 250);
    }
});

var facSlide = $('.fac_slick').slick({
    dots: true,
    arrows: true,
    infinite: true,
    touchThreshold: 100,
    slidesToShow: 1,
    slidesToScroll: 1,
});`;

    return (
      <PageContent
        title={title}
        desc="- 탭이나 내용 마우스 오버시 자동 롤링 멈춤 <br />- 탭이나 내용 마우스 떠나면 다시 자동 롤링 <br />- 탭을 클릭 한 이후부터는 자동 롤링 멈춤"
        // image="/images/tab1.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["탭안의 슬라이드"]}
        // link="<%=lab_main%>/l/gong/guide/guide.asp"
        onChange={onChange}
      />
    )
  }
</script>