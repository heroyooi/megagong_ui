<script type="text/babel">
  'use strict';

  function BannerRightSky({ title, onChange }) {

const html = `<div id="main_sky_bs" class="main_sky_bs renew gong renew_0619">
    <div class="inner">
        <div class="main_sky_banner">
            <div class="item">
                <a href="/s/gong/event/2024/01250013/index.asp?go=tab3" title="�ٸ� PSAT 1ȸ ���ǰ��">
                    <div class="tit-area">
                        <span class="tit">2024 <br>������ 7��<br>1�� ���</span>
                        <span class="b-tit">�ٸ� PSAT<br>1ȸ ���ǰ�� </span>
                    </div>
                    <span class="btn">�����ϱ�</span>
                </a>
            </div>
            <div class="item">
                <a href="/s/gong/event/2022/12140184/index.asp#eventWrap" title="�¶��� ���ǰ�� ����.ZIP">
                    <div class="tit-area">
                        <span class="tit">���� ���� ������?</span>
                        <span class="b-tit">�¶���<br>���ǰ�� ����.<br>ZIP</span>
                    </div>
                    <span class="btn">�ڼ��� ����</span>
                </a>
            </div>
        </div><!-- .main_sky_banner -->
        <div class="main_sky_banner">
            <div class="item">
                <a href="" title="�ް� e-����">
                    <div class="tit-area">
                        <span class="tit">�����ա��ȿ�<br>�������ǡ������<br>�հ� ����ȭ</span>
                        <span class="b-tit">�ް� e-����</span>
                    </div>
                    <span class="btn">�ڼ��� ����</span>
                </a>
            </div>
            <div class="item">
                <a href="https://www.mebook.io/" target="_blank" title="meBook �űԷ�Ī">
                    <div class="tit-area">
                        <span class="tit">��� <br>���縦 App �ȿ��� <br>�����Ӱ�</span>
                        <span class="b-tit">meBook<br>�űԷ�Ī</span>
                    </div>
                    <span class="btn">�ڼ��� ����</span>
                </a>
            </div>
        </div><!-- .main_sky_banner -->

        <div class="main_sky_banner type-2 top_re">
            <div class="item">
                <%If cdate(lo_now_date) < cdate("2024-05-27") then%>
                <a href="/event/2024/02050009/index.asp#mContainer">
                    <div class="tit-area">
                        <span class="tit">�������� <br />���������� ����</span>
                        <span class="b-tit">������ �ް��н� <br />Ư������ ����</span>
                    </div>
                    <span class="ico"><img src="<%=img_main%>/m/common/bnr/ico_mainsky_megapass.png" alt="" /></span>
                </a>
                <% else %>
                <div class="special_sale_bnr">
                    <div class="tit-area">
                        <span class="tit">��� ������� ����</span>
                        <span class="b-tit">������ �ް��н� <br />���� ���� ����</span>
                    </div>
                    <ul>
                        <li><a href="/event/2024/02050009/index.asp#mContainer" target="_blank">�������� ������ ></a></li>
                        <li><a href="/event/2024/05270022/index.asp#mContainer" target="_blank">Ÿ�� ���� ȸ�� ></a></li>
                        <li><a href="/event/2024/05270022/index.asp#mContainer" target="_blank">������ ���л� ></a></li>
                        <li><a href="/help/scholarship/index.asp#mContainer" target="_blank">��� �ձ� ><br>(���ҵ�/������)</a></li>
                        <li><a href="/s/gong/event/2021/09280029/index.asp#mContent" target="_blank">���� ���� ></a></li>
                    </ul>
                </div>
                <% end if %>
            </div>
        </div><!-- .main_sky_banner -->
    </div>
    <a href="#" class="btn_toggle_sky_bs"></a>
</div>             
    `;

const css = ``;

const excCss = `.main_sky_bs.renew{position:relative;left:0;top:0;margin:0;}
[class*=main_sky_bs].renew.renew_0619 .main_sky_banner + .main_sky_banner.type-2.top_re{margin-top:10px;}`;

const js = `$('.main_sky_banner:not(.no_slick)').not('.slick-initialized').slick({
    autoplay: true,
    dots:true,
    adaptiveHeight: true,
    fade:true,
    arrows: false,
});


// start: special_sale_bnr �ڽ� ���������� �����̱�
var idx = 0;
var box = $('.special_sale_bnr ul li');

// �ʱ� ����: �������� ������ ù ��° ��ҿ� 'on' Ŭ������ �߰�
box.eq(idx).addClass('on');

setTimeout(function() {
    setInterval(time, 2000);
}, 300);

function time() {
    box.removeClass('on');
    idx = (idx + 1) % box.length; // idx�� box ���̸� ���� �ʵ��� ����
    box.eq(idx).addClass('on');
}
// end: special_sale_bnr �ڽ� ���������� �����̱�


// .main_sky_banner.type-2.top_re �������� margin-top ������ ����
$(window).on('load', function() {
    
    var mainwrp_off = $(".main_wrp").offset().top;
    var superTea_off = $(".main_superTea").offset().top;
    $('.main_sky_banner.type-2.top_re').css('marginTop', superTea_off-mainwrp_off + 'px');
    $('.main_sky_banner.type-2.top_re').addClass('on');
});`;

    return (
      <PageContent
        title={title}
        desc=""
        image="/images/demo/main_banner_rightsky.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["�̺�Ʈ ���","���� ���"]}
        link="<%=url_main%>/megagong.asp"
        onChange={onChange}
      />
    )
  }
</script>