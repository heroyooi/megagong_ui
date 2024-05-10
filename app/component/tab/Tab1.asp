<script type="text/babel">
  'use strict';

  function Tab1({ title, onChange }) {

const html = `<div class="tab-guide">
  <div class="inner">
    <div class="tab-guide-swiper swiper-container">
      <div class="swiper-wrapper">
        <div class="swiper-slide<%If Request.QueryString("tab") <= 1 then%> on<%End if%>" style="width: 16.6667%;"><a href="javascript:;" title="�������̶�">�������̶�</a></div>
        <div class="swiper-slide<%If Request.QueryString("tab") = 2 then%> on<%End if%>" style="width: 16.6667%;"><a href="javascript:;" title="ä������">ä������</a></div>
        <div class="swiper-slide<%If Request.QueryString("tab") = 3 then%> on<%End if%>" style="width: 16.6667%;"><a href="javascript:;" title="�����ڰ�">�����ڰ�</a></div>
        <div class="swiper-slide<%If Request.QueryString("tab") = 4 then%> on<%End if%>" style="width: 16.6667%;"><a href="javascript:;" title="�ʱ����">�ʱ����</a></div>
        <div class="swiper-slide<%If Request.QueryString("tab") = 5 then%> on<%End if%>" style="width: 16.6667%;"><a href="javascript:;" title="������">������</a></div>
        <div class="swiper-slide<%If Request.QueryString("tab") = 6 then%> on<%End if%>" style="width: 16.6667%;"><a href="javascript:;" title="��������">��������</a></div>
      </div>
      <div class="swiper-scrollbar mo-view"></div>
    </div>
  </div>
</div>`;

const css = `.tab-guide{border-bottom: 1px solid #0c998d;margin-bottom: 30px;height: 60px;}
.tab-guide .swiper-slide{text-align: center;}
.tab-guide .swiper-slide a{position: relative;display: block;border: 1px solid #ddd;border-width: 1px 1px 0 0;padding: 19px 0 22px;font-size: 16px;font-weight: normal;color: #777;box-sizing: border-box;height: 60px;}
.tab-guide .swiper-slide:first-of-type a{border-left: 1px solid #ddd;}
.tab-guide .swiper-slide a:hover,
.tab-guide .swiper-slide.on a{font-weight: bold;color: #0c998d;border-color: #0c998d;border-width: 1px 1px 0;}
.tab-guide .swiper-slide a:hover::before,
.tab-guide .swiper-slide.on a::before{content: '';display: block;position: absolute;top: 0;left: 0;width: 100%;height: 4px;background: #0c998d;}
.tab-guide .swiper-slide a:hover::after,
.tab-guide .swiper-slide.on a::after{content: '';display: block;position: absolute;bottom: 0;width: 100%;height: 1px;right: 0;background: #fff;}

@media screen and (max-width: 768px){
  .tab-guide,.guide-wrp.sobang .tab-guide,.guide-wrp.army .tab-guide{border-bottom: 0;height: auto;overflow: hidden;}
	.tab-guide .inner{background: #f8fafa;padding: 17px 35px;}
	.tab-guide .inner .swiper-container{overflow: inherit;}
	.tab-guide .swiper-slide{margin-right: 35px;}
	.tab-guide .swiper-slide a{border: 0; padding: 0;height:auto;font-size: 13px;}
	.tab-guide .swiper-slide:first-of-type a{border: 0;height: auto;}
	.tab-guide .swiper-slide a:hover,
	.tab-guide .swiper-slide.on a{font-weight: bold;color: #0c998d;}
	.tab-guide .swiper-slide a:hover::before,
	.tab-guide .swiper-slide.on a::before{bottom: -3px;top: auto;left: 50%;transform: translateX(-50%);height: 1px;width: 30%;}
	.tab-guide .swiper-slide a:hover::after,
	.tab-guide .swiper-slide.on a::after{content: none;}
	.tab-guide .swiper-scrollbar{bottom:-15px;opacity:0.8;width:calc(100% + 40px);left:-20px;height:3px;}
	.tab-guide .swiper-scrollbar-drag{background-color:#0c998d;}
}`;

const js = `var upperTab_total = $('.tab-guide .swiper-slide').length;
var upperTab_width = 100 / upperTab_total;        
var upperTab_mowidth = 100 / (upperTab_total/2);        

// swiper pc ver �巡�� x
var tabGuide_swiper = undefined;
var tabGuide_active_index = $('.tab-guide-swiper .swiper-slide.on').index()
function responTabSwiper() {
    if ($(window).width() < 1024 && tabGuide_swiper === undefined) {
        tabGuide_swiper = new Swiper(".tab-guide-swiper", {
        slidesPerView: 'auto',
        observer: true,
        observeParents: true,
        observeSlideChildren: true,
        simulateTouch: true,     
        scrollbar: {
            el: '.tab-guide-swiper .swiper-scrollbar',
            draggable: true,
        },        
    });
    } else if ($(window).width() >= 1024 && tabGuide_swiper != undefined) {
        tabGuide_swiper.destroy();
        tabGuide_swiper = undefined;
    }
}

$(window).on('load resize', function () {
    responTabSwiper();

    if($(window).width() <= 768) { 		 
        $('.tab-guide .swiper-slide').css('width', upperTab_mowidth + '%')  
    }else { 
        $('.tab-guide .swiper-slide').css('width', upperTab_width + '%')  
    }              
});

// swiper Ȱ��ȭ�������� �̵�
$(window).on('load resize', function(){
    //var tabGuide_index = $('.tab-guide-swiper .swiper-slide').index(); //0
    var tabGuide_slide = $('.tab-guide-swiper .swiper-slide.on');
    var tabGuide_activeIndex = tabGuide_slide.index(); //5 0 1 2 3 4
    
    if(tabGuide_slide.length){
        if (tabGuide_swiper) {
            tabGuide_swiper.slideTo(tabGuide_activeIndex, 0)
        }
    }                        
});`;

    return (
      <PageContent
        title={title}
        desc="�ް������� �հ����� �����ҿ��� ����ϴ� �� ����Դϴ�. <br />���� Ŭ���� ���, �ش� ���� �۾��� ��� Border�� ������ ����Ǹ鼭 ��� �� �׸��� ������ ���� �ִ� ������, <br />����ڿ��� ��Ȯ�� ������ �������ݴϴ�."
        image="/images/tab1.png"
        html={html}
        css={css}
        js={js}
        items={["�հ�����","�簢��","��"]}
        link="<%=lab_main%>/l/gong/guide/guide.asp"
        onChange={onChange}
      />
    )
  }
</script>