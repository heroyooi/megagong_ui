<script type="text/babel">
  'use strict';

  function Popup11({ title, onChange }) {

const html = `<% If fncRequestCookie("main_exhibi_lab") = "" then %>
  <div class="main_exhibi lab">
      <a href="javascript:;" class="close"></a>
      <div class="exhibi_sd">
          <div class="item">
              <a href="javascript:;" title="�ʽû� ���̵�� ���� �ٿ�ε�">
                  <img src="/images/pop_sample.png" alt="�ʽû� ���̵�� ���� �ٿ�ε�">
              </a>
          </div>          
          <div class="item">
              <a href="javascript:;" title="�ް��н� 7�� ����ü�� ���� ��û�ϱ�">
                  <img src="/images/pop_sample2.png" alt="�ް��н� 7�� ����ü�� ���� ��û�ϱ�">
              </a>
          </div>             
      </div>
      <a href="javascript:;" class="close today">���� �Ϸ� �ݱ�</a>
  </div>
<% end if %>`;

const css = `.main_exhibi.lab{position: absolute; top: 0; right: -17%; width: 181px; z-index: 1;position: relative;margin: auto;}
.main_exhibi.lab a{display:block;}
.main_exhibi.lab .close{position: absolute;right: 10px;width: 11px;height: 10px;top: 0;background:url(https://design.megagong.net/image/m/2023/0330_academy/bn_flt_cls.png) no-repeat center;z-index: 2;}
.main_exhibi.lab .close.today{right: auto;left: 50%;top: auto;transform:translateX(-50%);background-image:none;bottom: -25px;font-size: 10px;color: #666;width: 70px;height: 18px;text-align: center;line-height: 18px;border: 1px solid #666;background: #fff;}
.main_exhibi.lab .item {position: relative;text-align: cen666ter;}
.main_exhibi.lab .item img {display:inline-block;}
.main_exhibi.lab .slick-arrow {display:none!important;}
.main_exhibi.lab .slick-dots {position:absolute;bottom:15px;left:0;right:0;font-size:0;text-align: center;}
.main_exhibi.lab .slick-dots li {display:inline-block;margin:0 2px;}
.main_exhibi.lab .slick-dots button {width:8px;height: 8px;border-radius: 50%;background:#000;opacity:.6;font-size:0;}
.main_exhibi.lab .slick-dots .slick-active button {opacity: 1;background: #fff;}

@media screen and (max-width: 1200px){
.main_exhibi.lab{max-width:35%;right: 0;}
.main_exhibi.lab .slick-dots {bottom: 10px;}
.main_exhibi.lab .slick-dots button {width: 5px;height: 5px;}
.main_exhibi.lab .close.today{bottom: -20px;}
}`;

const excCss = ``;

const js = `$('.main_exhibi.lab .exhibi_sd').not('.slick-initialized').slick({
    infinite: true,
    arrow: false,
    speed: 0,
    autoplaySpeed: 2000,
    autoplay: true,
    dots: true,
});

$(".main_exhibi.lab .close").on("click",function(){
    $(this).parent('.main_exhibi.lab').css('display','none')
})
$(".main_exhibi.lab .close.today").on("click",function(){
    setCookie("main_exhibi_lab", "close", 1);
    $(this).parent('.main_exhibi.lab').css('display','none')
})`;

    return (
      <PageContent
        title={title}
        desc="�ް��������� �پ��� ���������� �ַ� ���Ǵ� ���� �˾� ����Դϴ�. <br />���� �Ϸ� ���� �ʱ� �� �����̵� ����� �����ϰ� �ֽ��ϴ�."
        // image="/images/popup9.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["�˾����","����","�����̵�"]}
        link="<%=url_main%>/megagong.asp"
        onChange={onChange}
      />
    )
  }
</script>