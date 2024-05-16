<script type="text/babel">
  'use strict';

  function Teacher1({ title, onChange }) {

const html = `<div class="wrap_content tec_renew">
    <div class="wrap_inner">
        <div class="tab_square_wrap pcView">
            <ul class="tab_square tab_square_4">
                <li><a href="javascript:void(0);" onclick="clickTab('sub', '61');"><span>����</span></a></li>
                <li><a href="javascript:void(0);" onclick="clickTab('sub', '62');"><span>����</span></a></li>
                <li><a href="javascript:void(0);" onclick="clickTab('sub', '63');"><span>�ѱ���</span></a></li>
                <li><a href="javascript:void(0);" onclick="clickTab('sub', '85');"><span>PSAT</span></a></li>
                <li class="on"><a href="javascript:void(0);" onclick="clickTab('cate', '1');"><span>������</span></a></li>
                <li><a href="javascript:void(0);" onclick="clickTab('cate', '2');"><span>�����</span></a></li>
                <li><a href="javascript:void(0);" onclick="clickTab('sub', '86/87');"><span>�ѱ���/����<br>����</span></a></li>
                <li><a href="javascript:void(0);" onclick="clickTab('sub', '84');"><span>����</span></a></li>
                <li><a href="javascript:void(0);" onclick="clickTab('sub', 'B5');"><span>���ε���Ī</span></a></li>
            </ul>
        </div>
        <div class="tab_square_mo_wrap moView">
            <div class="tab_square_mo_inner">
                <div class="tab_square_mo swiper-container swiper-container-horizontal">
                    <div class="swiper-wrapper" style="transition-duration: 0ms;">
                        <div class="swiper-slide">
                            <a href="javascript:void(0);" onclick="clickTab('sub', '61');">����</a>
                        </div>
                        <div class="swiper-slide">
                            <a href="javascript:void(0);" onclick="clickTab('sub', '62');">����</a>
                        </div>
                        <div class="swiper-slide on">
                            <a href="javascript:void(0);" onclick="clickTab('sub', '63');">�ѱ���</a>
                        </div>
                        <div class="swiper-slide">
                            <a href="javascript:void(0);" onclick="clickTab('sub', '85');">PSAT</a>
                        </div>
                        <div class="swiper-slide">
                            <a href="javascript:void(0);" onclick="clickTab('cate', '1');">������</a>
                        </div>
                        <div class="swiper-slide">
                            <a href="javascript:void(0);" onclick="clickTab('cate', '2');">�����</a>
                        </div>
                        <div class="swiper-slide">
                            <a href="javascript:void(0);" onclick="clickTab('sub', '86/87');">�ѱ���/���� ����</a>
                        </div>
                        <div class="swiper-slide">
                            <a href="javascript:void(0);" onclick="clickTab('sub', '84');">����</a>
                        </div>
                    </div>
                    <div class="swiper-scrollbar"><div class="swiper-scrollbar-drag"></div></div>
                <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
            </div>
        </div>
        <div class="tab_text_box">
            <div class="tab_label_area">
                <span class="tab_label moView">
                    <em class="txt" id="moSub_nm">������</em>
                    <em class="ico">��</em>
                </span>
            </div>
            <ul id="sub_list">
                <li id="cateSub_64" class="on"><a href="javascript:void(0);" onclick="clickTab('cate_sub', '64');"> ������ </a></li>
                <li id="cateSub_65"><a href="javascript:void(0);" onclick="clickTab('cate_sub', '65');"> ������ </a></li>
                <li id="cateSub_81"><a href="javascript:void(0);" onclick="clickTab('cate_sub', '81');"> ������ </a></li>
                <li id="cateSub_70"><a href="javascript:void(0);" onclick="clickTab('cate_sub', '70');"> �������Ź� </a></li>
                <li id="cateSub_82"><a href="javascript:void(0);" onclick="clickTab('cate_sub', '82');"> ������ </a></li>
                <li id="cateSub_91"><a href="javascript:void(0);" onclick="clickTab('cate_sub', '91');"> ������ </a></li>
                <li id="cateSub_73"><a href="javascript:void(0);" onclick="clickTab('cate_sub', '73');"> ������ </a></li>
                <li id="cateSub_92"><a href="javascript:void(0);" onclick="clickTab('cate_sub', '92');"> ������ </a></li>
                <li id="cateSub_60"><a href="javascript:void(0);" onclick="clickTab('cate_sub', '60');"> ������ġ�� </a></li>
                <li id="cateSub_72"><a href="javascript:void(0);" onclick="clickTab('cate_sub', '72');"> �뵿�� </a></li>
                <li id="cateSub_89"><a href="javascript:void(0);" onclick="clickTab('cate_sub', '89');"> �ι� </a></li>
                <li id="cateSub_88"><a href="javascript:void(0);" onclick="clickTab('cate_sub', '88');"> �λ�Ҽ۹� </a></li>
                <li id="cateSub_83"><a href="javascript:void(0);" onclick="clickTab('cate_sub', '83');"> ��ȸ������ </a></li>
                <li id="cateSub_68"><a href="javascript:void(0);" onclick="clickTab('cate_sub', '68');"> ���� </a></li>
                <li id="cateSub_94"><a href="javascript:void(0);" onclick="clickTab('cate_sub', '94');"> �ɸ��� </a></li>
                <li id="cateSub_71"><a href="javascript:void(0);" onclick="clickTab('cate_sub', '71');"> ������ġ�� </a></li>
                <li id="cateSub_93"><a href="javascript:void(0);" onclick="clickTab('cate_sub', '93');"> �������ɸ��� </a></li>
                <li id="cateSub_69"><a href="javascript:void(0);" onclick="clickTab('cate_sub', '69');"> ��� </a></li>
                <li id="cateSub_90"><a href="javascript:void(0);" onclick="clickTab('cate_sub', '90');"> ���� </a></li>
                <li id="cateSub_74"><a href="javascript:void(0);" onclick="clickTab('cate_sub', '74');"> ����Ҽ۹� </a></li>
                <li id="cateSub_66"><a href="javascript:void(0);" onclick="clickTab('cate_sub', '66');"> ȸ���� </a></li>
            </ul>
        </div>
        <div class="tea_list_wrap">
            <ul class="tea_list" id="tea_list">
                <li class="tecCard 64" style="">
                    <a href="https://www.megagong.net/teacher/home.asp?bcode=shin242" target="_blank" title="�ſ���">
                        <span class="t_desc">
                        �հ����� �����ϴ� <br>�ſ��� ������
                        </span>
                        <span class="t_name">�ſ��� ������</span>
                        <span class="t_img"><img src="https://img.megagong.net/profphoto/gong/shin242/Prof3.png" alt="64 �ſ���"></span>
                    </a>
                    <ul class="notice">
                        <li>
                            <a href="https://www.megagong.net/teacher/notice/notice.asp?bcode=shin242&idx=6067">
                                <span class="label">���ҽ�</span>
                                <span class="con">[10/15] ������ 7�� ������ ����:������ ������ 88�� �̻��̸� �Ǹ��ϰ�, 80�� �̻��̸� �հݼ� ����</span>
                            </a>
                        </li>
                        <li>
                            <a href="https://www.megagong.net/teacher/review/view.asp?bcode=shin242&idx=22993&mv=content_area">
                                <span class="label">BEST�ı�</span>
                                <span class="con">��鼭 ����Ǯ�� ������..[2022������ 9�� �հݼ���]</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="tecCard 64" style="">
                    <a href="https://www.megagong.net/teacher/home.asp?bcode=plower3362" target="_blank" title="Ȳö��">
                        <span class="t_desc">
                        �հ����� �ٷ� �����ϴ�<br>240����
                        </span>
                        <span class="t_name">Ȳö�� ������</span>
                        <span class="t_img"><img src="https://img.megagong.net/profphoto/gong/plower3362/Prof3.png" alt="64 Ȳö��"></span>
                    </a>
                    <ul class="notice">
                        <li>
                            <a href="https://www.megagong.net/teacher/notice/notice.asp?bcode=plower3362&idx=6114">
                                <span class="label">���ҽ�</span>
                                <span class="con">[10/29] ������ 7�� ������ ����: ���⼱���� �״�� ������ ������ ������ ����</span>
                            </a>
                        </li>
                        <li>
                            <a href="https://www.megagong.net/teacher/review/view.asp?bcode=plower3362&idx=21875&mv=content_area">
                                <span class="label">BEST�ı�</span>
                                <span class="con">[������ �����հ� / ������ �ʱ��հ�] �������� ���� ����� ����!!!</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="tecCard 64" style="">
                    <a href="https://www.megagong.net/teacher/home.asp?bcode=happy0308" target="_blank" title="�̻���">
                        <span class="t_desc">
                        ����� ������ Slim&Fit �ϴ� <br>DIET ������
                        </span>
                        <span class="t_name">�̻��� ������</span>
                        <span class="t_img"><img src="https://img.megagong.net/profphoto/gong/happy0308/Prof3.png" alt="64 �̻���"></span>
                    </a>
                    <ul class="notice">
                        <li>
                            <a href="https://www.megagong.net/teacher/notice/notice.asp?bcode=happy0308&idx=6117">
                                <span class="label">���ҽ�</span>
                                <span class="con">[10/29] ������ 7�� ������ ����: ���������� �����ϰ� �����Ǿ����� ������ �ִ� ���������� �ð��й谡 ������� ��</span>
                            </a>
                        </li>
                        <li>
                            <a href="https://www.megagong.net/teacher/review/view.asp?bcode=happy0308&idx=21479&mv=content_area">
                                <span class="label">BEST�ı�</span>
                                <span class="con">��! �� ������ 9�� �Ϲ����� �հ��߽��ϴ�!</span>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>`;

const css = ``;

const excCss = ``;

const js = `var tabSquarePC = $('.tab_square');
var tabSquareMO = new Swiper('.tab_square_mo', {
    slidesPerView: 'auto',
    observer: true,
    observeParents: true,
    observeSlideChildren: true,
    scrollbar: {
    el: '.tab_square_mo .swiper-scrollbar',
    draggable: true,
    },
});
var tabTextBox = $('.tab_text_box');

$(window).on('load resize', function(){
    var tabSquareMO_active_index = $('.tab_square_mo .swiper-slide.on').index();
    if (tabSquareMO_active_index) {
        tabSquareMO.slideTo(tabSquareMO_active_index, 0)
    }
});

var tabSquareMO_slide = $('.tab_square_mo .swiper-slide');
tabSquareMO_slide.find('a').on('click', function(e){
    e.preventDefault();
    var activeIndex = tabSquareMO_slide.find('a').index(this);
    $(this).closest('.swiper-slide').addClass('on');
    $(this).closest('.swiper-slide').siblings().removeClass('on');
    tabSquareMO.slideTo(activeIndex)
    tabSquarePC.find('li').eq(activeIndex).siblings().removeClass('on');
    tabSquarePC.find('li').eq(activeIndex).addClass('on');
});

tabSquarePC.find('li').on('click', function(e){
    e.preventDefault();
    var activeIndex = $(this).index();
    $(this).addClass('on');
    $(this).siblings().removeClass('on');
    $('.tab_square_mo .swiper-slide').eq(activeIndex).addClass('on');
    $('.tab_square_mo .swiper-slide').eq(activeIndex).siblings().removeClass('on');
    tabSquareMO.slideTo(activeIndex);
});

tabTextBox.find('.tab_label').on('click', function(){
    if (!tabTextBox.hasClass('on')) {
        tabTextBox.addClass('on');
    } else {
        tabTextBox.removeClass('on');
    }
});
`;

    return (
      <PageContent
        title={title}
        desc="�ް��������� ������ ���������� �ַ� ���Ǵ� ��� ����Դϴ�. <br />
        �� �������� ���еǸ�, �ش� ���� ���� ���� ������ ����� ����ڿ��� �����˴ϴ�. <br />
        ����� Ŭ���ϸ� �ش� ���� �������� ������������ �̵��Ǹ� Ŀ��ŧ���� ���� �� ���� ������ �������� �� �ֽ��ϴ�."
        // image="/images/popup1.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["���Ǹ��","����Ȩ","��"]}
        link="<%=url_main%>/teacher/index.asp"
        onChange={onChange}
      />
    )
  }
</script>