<!-- #include virtual = "/inc/top.asp"-->
<link type="text/css" rel="stylesheet" href="<%=url_main%>/teacher/curr/curr.css" />
<link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/tech.css" />
<%
dp1 = 3
dp2 = 1
%>
    <!-- #include virtual = "/inc/aside.asp"-->
    
    <div class="page_wrap page_wide page_teacher" id="page_wrap">

        <div class="page_inner">
            <div class="page_name_wrap">
                <h3 class="page_name">Teacher</h3>
                <h3 class="page_name_sub">������</h3>
                <p class="page_sub_text">�ް��������� ���� �����Ե�� ���õ� ���������� �ַ� ���Ǵ� ��ҵ��Դϴ�.<br> 
                �ش� ����� ������ �� ����� ����ȭ �Ǿ������Ƿ� Ư���� ������ �ִ� ��츦 �����ϰ� �� �԰ݾ���� ������ ���� ��Ģ���� �մϴ�.</p>
                <div class="page_print"><input type="button" value="�μ��ϱ�" id="print" onclick="window.print()"/></div>
            </div>

<pre class="language-html css"><code><link type="text/css" rel="stylesheet" href="<%=url_main%>/teacher/curr/curr.css" />
<link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/tech.css" /></code></pre>            

            <div class="page_text_wrap">
                <p class="page_head">������ ���</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                
<!-- HTML -->
<div class="code-box html tp2"><div class="wrap_content tec_renew">
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
            </ul>
        </div>
        <div class="tab_square_mo_wrap moView">
            <div class="tab_square_mo_inner">
                <div class="tab_square_mo swiper-container">
                    <div class="swiper-wrapper">
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
                    <div class="swiper-scrollbar"></div>
                </div>
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
                    <a href="<%=url_main%>/teacher/home.asp?bcode=shin242" target="_blank" title="�ſ���">
                        <span class="t_desc">
                        �հ����� �����ϴ� <br>�ſ��� ������
                        </span>
                        <span class="t_name">�ſ��� ������</span>
                        <span class="t_img"><img src="<%=img_main%>/profphoto/gong/shin242/Prof3.png" alt="64&nbsp;�ſ���"></span>
                    </a>
                    <ul class="notice">
                        <li>
                            <a href="<%=url_main%>/teacher/notice/notice.asp?bcode=shin242&amp;idx=6067">
                                <span class="label">���ҽ�</span>
                                <span class="con">[10/15] ������ 7�� ������ ����:������ ������ 88�� �̻��̸� �Ǹ��ϰ�, 80�� �̻��̸� �հݼ� ����</span>
                            </a>
                        </li>
                        <li>
                            <a href="<%=url_main%>/teacher/review/view.asp?bcode=shin242&amp;idx=22993&amp;mv=content_area">
                                <span class="label">BEST�ı�</span>
                                <span class="con">��鼭 ����Ǯ�� ������..[2022������ 9�� �հݼ���]</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="tecCard 64" style="">
                    <a href="<%=url_main%>/teacher/home.asp?bcode=plower3362" target="_blank" title="Ȳö��">
                        <span class="t_desc">
                        �հ����� �ٷ� �����ϴ�<br>240����
                        </span>
                        <span class="t_name">Ȳö�� ������</span>
                        <span class="t_img"><img src="<%=img_main%>/profphoto/gong/plower3362/Prof3.png" alt="64&nbsp;Ȳö��"></span>
                    </a>
                    <ul class="notice">
                        <li>
                            <a href="<%=url_main%>/teacher/notice/notice.asp?bcode=plower3362&amp;idx=6114">
                                <span class="label">���ҽ�</span>
                                <span class="con">[10/29] ������ 7�� ������ ����: ���⼱���� �״�� ������ ������ ������ ����</span>
                            </a>
                        </li>
                        <li>
                            <a href="<%=url_main%>/teacher/review/view.asp?bcode=plower3362&amp;idx=21875&amp;mv=content_area">
                                <span class="label">BEST�ı�</span>
                                <span class="con">[������ �����հ� / ������ �ʱ��հ�] �������� ���� ����� ����!!!</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="tecCard 64" style="">
                    <a href="<%=url_main%>/teacher/home.asp?bcode=happy0308" target="_blank" title="�̻���">
                        <span class="t_desc">
                        ����� ������ Slim&amp;Fit �ϴ� <br>DIET ������
                        </span>
                        <span class="t_name">�̻��� ������</span>
                        <span class="t_img"><img src="<%=img_main%>/profphoto/gong/happy0308/Prof3.png" alt="64&nbsp;�̻���"></span>
                    </a>
                    <ul class="notice">
                        <li>
                            <a href="<%=url_main%>/teacher/notice/notice.asp?bcode=happy0308&amp;idx=6117">
                                <span class="label">���ҽ�</span>
                                <span class="con">[10/29] ������ 7�� ������ ����: ���������� �����ϰ� �����Ǿ����� ������ �ִ� ���������� �ð��й谡 ������� ��</span>
                            </a>
                        </li>
                        <li>
                            <a href="<%=url_main%>/teacher/review/view.asp?bcode=happy0308&amp;idx=21479&amp;mv=content_area">
                                <span class="label">BEST�ı�</span>
                                <span class="con">��! �� ������ 9�� �Ϲ����� �հ��߽��ϴ�!</span>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div></div>

<script>var tabSquarePC = $('.tab_square');
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
});</script>

<p class="page_text">�ް��������� ������ ���������� �ַ� ���Ǵ� ��� ����Դϴ�.<br>
�� �������� ���еǸ�, �ش� ���� ���� ���� ������ ����� ����ڿ��� �����˴ϴ�.<br> 
����� Ŭ���ϸ� �ش� ���� �������� ������������ �̵��Ǹ� Ŀ��ŧ���� ���� �� ���� ������ �������� �� �ֽ��ϴ�.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-javascript act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/teacher/index.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#������</p> </li>
                            <li><p>#����Ȩ</p> </li>
                            <li><p>#��</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->




            <div class="page_text_wrap">
                <p class="page_head">Ȩ</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                
<!-- HTML -->
<div class="code-box html tp2"><div class="tec_renew techWrap">
    <div class="tec_top_menu">
        <div class="tec_topmenu_wrap">
            <div class="tec_topmenu_inner">
                <div class="tec_topmenu_swiper swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <a href="<%=url_main%>/teacher/curr/curr.asp?bcode=jeonhangil" title="Ŀ��ŧ��">Ŀ��ŧ��</a>
                        </div>
                        <div class="swiper-slide ">
                            <a href="<%=url_main%>/teacher/chr/chrlist.asp?bcode=jeonhangil">��������<em>(39)</em></a>
                            <div class="class_info">
                                <a href="<%=url_main%>/teacher/chr/chrlist.asp?bcode=jeonhangil">
                                    <span>�ϰ�:<em>32</em></span>
                                    <span>������:<em>4</em></span>
                                </a>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <a href="<%=url_main%>/teacher/notice/notice.asp?bcode=jeonhangil">
                                ������ ���ҽ�
                            </a>
                        </div>
                        <div class="swiper-slide ">
                            <a href="<%=url_main%>/teacher/qna/qna.asp?bcode=jeonhangil">
                                �н� Q&amp;A
                                <img src="<%=img_main%>/common/ic_new.gif" style="">
                            </a>
                        </div>
                        <div class="swiper-slide ">
                            <a href="<%=url_main%>/teacher/pds/pds.asp?bcode=jeonhangil">
                                �н��ڷ��
                            </a>
                        </div>
                        <div class="swiper-slide ">
                            <a href="<%=url_main%>/teacher/cast/cast.asp?bcode=jeonhangil">
                                ������ ĳ��Ʈ
                            </a>
                        </div>
                        <div class="swiper-slide ">
                            <a href="<%=url_main%>/teacher/review/review.asp?bcode=jeonhangil">
                                �����ı�
                                <img src="<%=img_main%>/common/ic_new.gif" style="">
                            </a>
                        </div>
                        <div class="swiper-slide">
                            <a href="javascript:void(0);" class="btn_more_display">��ȹ��</a>
                            <ul class="tec_display_list">
                                <li>
                                    <a href="<%=url_main%>/s/gong/event/2021/08260111/index.asp" target="_blank" title="������ 1���� ������<br>���ѱ� Ŭ���� ">
                                        <span>-</span>������ 1���� ������<br>���ѱ� Ŭ����  
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=18772" title="[�ѱ���] 1.0 �Թ�  ">
                                        <span>-</span>[�ѱ���] 1.0 �Թ�   
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=18879" title="[�ѱ���] 2.0 ���ο� ">
                                        <span>-</span>[�ѱ���] 2.0 ���ο�  
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19163" target="_blank" title="[�ѱ���] 3.0 ���⹮Ǯ">
                                        <span>-</span>[�ѱ���] 3.0 ���⹮Ǯ 
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19191" title="[�ѱ���] ����� Ư��">
                                        <span>-</span>[�ѱ���] ����� Ư�� 
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=18632" target="_blank" title="[�Ѵɰ�] �ʳ� ���� ">
                                        <span>-</span>[�Ѵɰ�] �ʳ� ����  
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=18762" target="_blank" title="[�Ѵɰ�] �ʳ� 1/2 ����">
                                        <span>-</span>[�Ѵɰ�] �ʳ� 1/2 ���� 
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=18312" target="_blank" title="[�Ѵɰ�] �ʳ� ����">
                                        <span>-</span>[�Ѵɰ�] �ʳ� ���� 
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="tec_detail_wrap">
        <div class="tec_detail_cont_wrapper">
            <div class="tec_detail_cont_wrap">
                <div class="tec_detail_content">
                    <div class="tec_detail_left" data-aos="fade-right" data-aos-delay="300">
                        <p class="b-desc pcv">
                        <strong>ó������ ������, <br>������� ���� å�Ӱ� ����</strong>
                        </p>
                        <p class="b-desc mov"><strong>ó������ ������, <br>������� ���� å�Ӱ� ����</strong></p>
                        <p class="s-desc">
                            <a href="<%=url_main%>/teacher/home.asp?bcode=jeonhangil">
                            �ѱ���/�Ѵɰ�&nbsp;<strong>���ѱ�</strong>
                            </a>
                        </p>
                        <div class="btns_wrap">
                            <a class="btn" href="javascript:GongcampusFreePlay('E', 4022, '', '');" title="��ǥ����">��ǥ����</a>
                            <a class="btn" href="javascript:void(0);" onclick="window.open('<%=url_main%>/teacher/popup/profile.asp?bCode=jeonhangil', '_tec', 'left=100,top=100,width=500,height=480');" title="������">������</a>
                        </div>
                        <div class="tec_display_wrap">
                            <div class="tit_area">
                                <p class="tit">������ ��ȹ��</p>
                            </div>
                            <ul class="tec_display_list">
                                <li>
                                    <a href="<%=url_main%>/s/gong/event/2021/08260111/index.asp" target="_blank" title="������ 1���� ������<br>���ѱ� Ŭ���� ">
                                        <span>-</span>������ 1���� ������<br>���ѱ� Ŭ����  
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=18772" title="[�ѱ���] 1.0 �Թ�  ">
                                        <span>-</span>[�ѱ���] 1.0 �Թ�   
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=18879" title="[�ѱ���] 2.0 ���ο� ">
                                        <span>-</span>[�ѱ���] 2.0 ���ο�  
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19163" target="_blank" title="[�ѱ���] 3.0 ���⹮Ǯ">
                                        <span>-</span>[�ѱ���] 3.0 ���⹮Ǯ 
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19191" title="[�ѱ���] ����� Ư��">
                                        <span>-</span>[�ѱ���] ����� Ư�� 
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=18632" target="_blank" title="[�Ѵɰ�] �ʳ� ���� ">
                                        <span>-</span>[�Ѵɰ�] �ʳ� ����  
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=18762" target="_blank" title="[�Ѵɰ�] �ʳ� 1/2 ����">
                                        <span>-</span>[�Ѵɰ�] �ʳ� 1/2 ���� 
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=18312" target="_blank" title="[�Ѵɰ�] �ʳ� ����">
                                        <span>-</span>[�Ѵɰ�] �ʳ� ���� 
                                    </a>
                                </li>
                            </ul>
                        </div>
                        
                    </div>
                    <div class="tec_detail_right" data-aos="fade-left" data-aos-delay="300">
                        <div class="cast_wrap">
                            <div class="tit_area">
                                <p class="tit">������ ĳ��Ʈ</p>
                                <a href="<%=url_main%>/teacher/cast/cast.asp?bcode=jeonhangil" class="btn_more">������</a>
                            </div>
                            <div class="cast_slider">
                                <div>
                                    <div class="item">
                                        <a href="<%=url_main%>/teacher/cast/cast.asp?bcode=jeonhangil&amp;idx=1328" title="������ ĳ��Ʈ �󼼺���" tabindex="-1">
                                            <span class="img">
                                                <img src="https://file.megagong.net/board_data/megacast/img/2022061813_01.jpg" alt="6/18 ������ 9�� �ѱ��� �ؼ����� : '���� ������ 9�ް� ����� ���̵��� �����ߴ�.'">
                                                <strong style="background:#e02463;">�ؼ�����</strong>
                                            </span>
                                            <span class="info">
                                                <strong class="tit">6/18 ������ 9�� �ѱ��� �ؼ����� : '���� ������ 9�ް� ����� ���̵��� �����ߴ�.'</strong>
                                                <strong class="tea">�ѱ���&nbsp;���ѱ漱���� <span class="date">�� ��ȸ�� 2,951</span></strong>
                                            </span>
                                        </a>
                                    </div>
                                    <div class="item">
                                        <a href="<%=url_main%>/teacher/cast/cast.asp?bcode=jeonhangil&amp;idx=1328" title="������ ĳ��Ʈ �󼼺���" tabindex="-1">
                                            <span class="img">
                                                <img src="https://file.megagong.net/board_data/megacast/img/2022061813_01.jpg" alt="6/18 ������ 9�� �ѱ��� �ؼ����� : '���� ������ 9�ް� ����� ���̵��� �����ߴ�.'">
                                                <strong style="background:#e02463;">�ؼ�����</strong>
                                            </span>
                                            <span class="info">
                                                <strong class="tit">6/18 ������ 9�� �ѱ��� �ؼ����� : '���� ������ 9�ް� ����� ���̵��� �����ߴ�.'</strong>
                                                <strong class="tea">�ѱ���&nbsp;���ѱ漱���� <span class="date">�� ��ȸ�� 2,951</span></strong>
                                            </span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="review_wrap">
                            <div class="tit_area">
                                <p class="tit"><strong>BEST</strong> �����ı�</p>
                                <a href="<%=url_main%>/teacher/review/review.asp?bcode=jeonhangil" class="btn_more">������</a>
                            </div>
                            <div class="best_opinn">
                                <ul>
                                    <li>
                                        <a href="<%=url_main%>/teacher/review/view.asp?bcode=jeonhangil&amp;idx=23057&amp;mv=content_area" title="�����ı� �󼼺���">
                                            <strong>�հ��ı⸦ �ۼ��ϰ� �Ǵ� ���� ���ٴ� �ʹ� ��޴ϴ�. ?</strong>
                                            <span>���� �״��, �հ��ı⸦ �ۼ��ϰ� �Ǵ� ���� ���ٴ� �ʹ� ��޴ϴ�.&nbsp;?&nbsp;16�⵵���� ������ �غ��ߴٰ� ������ �Ŀ�, ������θ� ���� �׳� ���� ��Ȱ�� �߾����ϴ�.�ѹ��� ��Ʃ��� �ѱ�� ���Ҹ� ���ϸ�, ���� �ݰ��� �װ� �ִٰ� ��¼�ٺ��� �ٽ� �ѱ�� ���Ǹ� ��� �̷��� �����ı⸦ ���� ���� �Խ��ϴ� :)�ѱ�� �ʳ� �ݺ��ϰ�, ���� ������� ���� ȸ���� ���� �߾����ϴ�!�ٵ� �ƽð�����, "�ʳ롱�ϳ��� ������, �ѱ���� ��� ���Ǹ� ���� �� �ִٴ� ���� ���ҽ��ϴ٤�&nbsp;??&nbsp;[����Ⱓ: 21�� 10�� ~12�� �����Ȱ�ϸ� ���� + 1������ ���������� ������!]&nbsp;1) 2.0 ���ο� ����[2.0�⺻��+�ʳ�]�ѱ��� �ɷ°��� ������ �غ��غ� ������ �־, 1.0 �Թ��� �н��ϰ� �ٷ� 2.0���ο����� �����߽��ϴ�!���ο� ���°� compact������ �ִ��ؼ� �װ͵� ���ôµ�, �߰��� ���Ҹ��� �����ǰ� �ϴٺ��� ����� ������ ���...�ѱ���� ���Ҹ��� ��� ���� ���� ��°ǵ�, �ƽ����� �׳� ���� 2.0���ο����� ������ϴ�. �ð����̵� ũ�� ���� �ʾƼ� �����Ҿ��׸��� ó������ 1.3~1.4������� ������ϴ�.��� �Ŀ� ��°Ŷ� �ʹ� ���� ������� �ϸ� ������ ���߷��� ������ �� ���Ƽ�, ���� ���� �� �ִ� ���� ���缭 ���Ǹ� ������ϴ�.2.0 ���ο� ���� ���� ����, �⺻���� �ʱ��Ʈ�� �����߰� ���߿��� �ʱ��Ʈ�� �ý��ϴ�!2) 3.0 ���Ⱝ�� ����[3.0����+�ʳ�]2.0���ο� �ϰ� �Ŀ��� �ٷ� ���Ⱝ�� ������ϴ�!���Ⱝ�� ���� �� ���Ҵ� ����, ���� Ǯ�� ���� �ش� �ܿ��� �ʿ��� ������ �ٽ� �ѹ� �������ֽô°� ����ȿ���� �־ ���Ұ�, �� �ʿ��� �κп����� �Ǽ��� ���ּż� ���ҽ��ϴ�.���� �ð��� �������, �װ� �� ������ �ʿ��� �κ��̱� ������ �װſ� ���� �Ҹ��� �������!�׷��� ���Ⱝ�ǿ��� �ϴ� �������������δ� �� �����ϴ� ������, �׳� �ٷ� ���� �ʱ��Ʈ ���భ�ǳ� ���ظ� ���� ������� �����鼭 ������ �κ��� �����߽��ϴ�.3) �پ��� Ư�� Ȱ��!!**�ʳ� ����, ���భ��&nbsp;??3.0���� 1ȸ�� �ϰ� �Ŀ���, �ʳ� ����, ������ ���� ������� ��� ������ ȥ�ڼ� Ǯ�����ϴ�.���� �ٷ� �ؿ� �ؼ��� �־ �װɷ� �����ϰ�, ���ǰ� �ʿ��ϴٰ� �ǴܵǴ� ������ ������ �޸��س��� ���� �ð���� ã�ư��� ���...�׷��� �����߽��ϴ�.&nbsp;(�׷��� 3.0���� 1ȸ�� �� ��, ���¸�� �ð��븦 �޸��س����. ���߿� ã�� �ð��� ���̷���...)**���� �ϱ��Ʈ&nbsp;??...å�� �۰� �ȹ��ſ��� ���Ҿ��. ������� ��, ���Ͼϱ��Ʈ ��� �ٴϸ鼭 ���� ���� ���� �����ϰ�...**������ Ư��&nbsp;??&nbsp;������ Ư���� ��¥ �̸��״�� ������ Ư���Դϴ�! �������ñ⿡ �ѹ���� �������� 2ȸ������ ������ϴ�. ȥ�ڼ��� ������ ���Ҵ� �ʱ��Ʈ�� ��¶�� �ѹ��� ���� �� �־���, �� �׷��� �ô� ������ �����尡�� �������� ȿ�ڰ��ǤФ�**��ġ�� ��, ����� ��, �׳� ������� �� �ִ� �ð����� ���� ��ų� ���Ͼϱ��Ʈ���鼭 �ݺ� �� �ݺ�&nbsp;���ΰ� �� ���� ���� ��, �ѱ���� ���ֽô� ���Ҹ���, �����ڰ� �� ���� ����� �����ϸ� ����� �� �����ϴ� !!&nbsp;&nbsp;</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="<%=url_main%>/teacher/review/view.asp?bcode=jeonhangil&amp;idx=21336&amp;mv=content_area" title="�����ı� �󼼺���">
                                            <strong>2022 ������ ����� 5���� �ܱ��հ�</strong>
                                            <span>�ް��� ������ ���� �� ���� ū �κ��� ���ѱ� �������� ���Ǹ� �����ϰ� �;�����ϴ�. ���� ���߷��� ���� Ǯ������ ������ ���ѱ� �������� ����ִ� ���°� �� �¾ҽ��ϴ�. �׸��� ���ѱ� �������� ���� Ư���� ���丮�ڸ����� ����Ǵµ� �׷��ٺ��� ���� �� ��￡ ���� ����, ����� �����ߴ��� �� �� �־� ���������� ���ö��� ���� ������ ���� �� ���ѱ� �����Բ��� �������ֽ� ���丮�� ���󰡸� ���� ������ Ǯ �� �־����ϴ�.&nbsp; �� �ι��� ������ �̾߱� �ϴ� ���� �ƴ϶� �� �׷� ������ �ϰ� �Ǿ����� ������ּż� ���� ��ó ���� ���� ��ᰡ �������� ������ �о�� �ѱ���� ������ֽ� �κ��� �־� �ι��� �ľ��ϴ� ���� �����߽��ϴ�. Ű���� ���ְ� �ƴ� ��¥ ���縦 ���� ���Ƕ�� �����մϴ�.&nbsp;���� �ѱ��� 2.0 ���ο� -&gt; 3.0 ����Ǯ��(���� x) ������ Ǯ�����ϴ�. 3.0 ���� å ������ ����Ǯ�̰� ���� �Ǿ��־� �ð��� ������ ���� ���Ǹ� �����ϴ� �ͺ��� ���� ���� Ǯ�̸� ���ҽ��ϴ�. �� ���¸� ���� �� �����Ե鲲�� ĥ�ǿ� ���� �����ŵ� � ���� �������ֽ� �� �ߴ� ����(���ó� ���丮 ��)�� ���翡 �ۼ��߽��ϴ�. �׷��� �Ŀ� �ٽ� ���� �������� �������̴ּ��� ����� ���鼭 ���ذ� �� �ߵǴ� ȿ���� �־����ϴ�?</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="tec_img_wrap" data-aos="fade"><img src="<%=img_main%>/profphoto/gong/jeonhangil/Prof3.png" alt="�ѱ���/�Ѵɰ�&nbsp;���ѱ�"></div>
                    <div class="flo_wrap">
                        <div id="floSlider" class="flo_slider">
                            <div class="item">
                                <a href="<%=url_main%>/s/gong/event/2022/10270165/index.asp#event1" target="_blank" class="subno" title="2023 5.0 ������ �������� ���������û�ϱ�">
                                    <img src="<%=img_main%>/m/2022/1027_han/bnr1.png" alt="2023 5.0 ������ �������� ���������û�ϱ�">
                                </a>
                            </div>
                            <div class="item">
                                <a href="<%=url_main%>/s/gong/event/2022/10270165/index.asp?scrgo2=event2" target="_blank" class="subno" title="���� ���� �̺�Ʈ ������ǰ���� ���ΰ���?">
                                    <img src="<%=img_main%>/m/2022/1027_han/bnr2.png" alt="���� ���� �̺�Ʈ ������ǰ���� ���ΰ���?">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="tea_bnr">
            <!--
            <style>
                @media (max-width: 1470px){
                    .tea_bnr a.mo_hide {display:none;}
                }
            </style>
            -->
            <a href="<%=url_main%>/s/gong/event/2021/02020022/index.asp#eventWrap" target="_blank" title="�ް��н� 7�� ����ü��" class="mo_hide">
                <img src="https://img.megagong.net/m/2022/0927_teacher/tec_banner_renew_01.jpg" alt="�ް��н� 7�� ����ü��">
                �� ���� �ް��н� <strong class="sobang_impor">NEW <br>7�� ����ü��</strong>
            </a>
            <a href="<%=url_main%>/s/gong/event/2022/06020063/index.asp#eventWrap" target="_blank" title="�� �������� �հ� �ε��! 2023 Ŀ��ŧ��">
                <img src="https://img.megagong.net/m/2022/0927_teacher/tec_banner_renew_02.jpg" alt="�� �������� �հ� �ε��! 2023 Ŀ��ŧ��">
                �� �������� <strong class="sobang_impor">2023 Ŀ��ŧ��</strong>
            </a>
            <a href="<%=url_main%>/s/gong/event/2020/10280102/index.asp#eventWrap" target="_blank">
                <img src="https://img.megagong.net/m/2022/1027_new/tec_banner_army.png" alt="11~12�� ���� �ű� ����">2023 ���<strong class="sobang_impor">11~12�� �ű� ����</strong>
            </a>
            
            <a href="<%=url_main%>/event/2022/04200007/index.asp#eventWrap" target="_blank" style="border-left: 1px solid #fff;" title="���ѱ� �Ѵɰ� APP">
                <img src="https://img.megagong.net/m/2022/0420_branding/bnr_5.jpg" alt="���ѱ� �Ѵɰ� APP">���ѱ� <strong>�Ѵɰ� APP</strong>
            </a>
        </div>
    </div>
</div></div>

<script>var tecTopmenu = undefined;
function initTopmenuSwiper() {
    if ($(window).width() <= 768 && tecTopmenu === undefined)  {
        tecTopmenu = new Swiper('.tec_topmenu_swiper', {
            slidesPerView: 'auto',
            observer: true,
            observeParents: true,
            observeSlideChildren: true,
            on: {
                init: function(){
                    $('.tec_topmenu_wrap').addClass('active');
                }
            },
        });
        var tecTopmenu_index = $('.tec_topmenu_swiper .swiper-slide.on').index();
        if (tecTopmenu_index) {
            tecTopmenu.slideTo(tecTopmenu_index, 0)
        }
    } else if ($(window).width() > 768 && tecTopmenu != undefined) {
        tecTopmenu.destroy();
        tecTopmenu = undefined;
    }
}

$(window).on('load resize', function(){
    initTopmenuSwiper();    
});

var cast_slider_cnt = $(".cast_wrap .cast_slider > div .item").length;
if (cast_slider_cnt > 1) {
    var cast_slider = $('.cast_wrap .cast_slider > div').slick({
        infinite: true,
        speed: 200,
        autoplay: false,
        slidesToShow: 1,
        slidesToScroll: 1,
        dots: true,
        arrows: true,
        easing: 'easeOutElastic',
    });
}

$('#floSlider').slick({
    dots: true,
    arrows: false,
    speed: 0,
    autoplaySpeed: 3000,
    autoplay: true,
    cssEase: 'linear',
});
</script>


<p class="page_text">�ް��������� ����Ȩ ���������� ���Ǵ� ����Դϴ�.<br> 
���� �������� ���� ������ �� ���� ����, �����ı� ���� ������ Ȯ���� �� �ֽ��ϴ�.<br> 
���� ���� �̺�Ʈ ��ʰ� �ϴܺο� ǥ��Ǿ� �پ��� �̺�Ʈ ������ �������� �� �ֽ��ϴ�.<br> 
�̺�Ʈ ��ʴ� ���� 280px�� �⺻���� �ϸ� ���δ� �ּ� 100px���� �ִ� 114px�� ���� �ʵ��� �մϴ�.</p>

<div class="bnrb"><img src="/images/bnrg.png"  alt="����Ȩ ��� ���̵�"></div>

<p class="page_text">���� ������ 114px�� �̺�Ʈ ��ʸ� ������ ���, ���� ���̵������ �ؼ��ؾ� �մϴ�.</p>


<!-- Code View -->
<pre class="language-html html act direct"><code><div class="tec_renew techWrap">
    <div class="tec_top_menu">
        <div class="tec_topmenu_wrap">
            <div class="tec_topmenu_inner">
                <div class="tec_topmenu_swiper swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <a href="<%=url_main%>/teacher/curr/curr.asp?bcode=jeonhangil" title="Ŀ��ŧ��">Ŀ��ŧ��</a>
                        </div>
                        <div class="swiper-slide ">
                            <a href="<%=url_main%>/teacher/chr/chrlist.asp?bcode=jeonhangil">��������<em>(39)</em></a>
                            <div class="class_info">
                                <a href="<%=url_main%>/teacher/chr/chrlist.asp?bcode=jeonhangil">
                                    <span>�ϰ�:<em>32</em></span>
                                    <span>������:<em>4</em></span>
                                </a>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <a href="<%=url_main%>/teacher/notice/notice.asp?bcode=jeonhangil">
                                ������ ���ҽ�
                            </a>
                        </div>
                        <div class="swiper-slide ">
                            <a href="<%=url_main%>/teacher/qna/qna.asp?bcode=jeonhangil">
                                �н� Q&amp;A
                                <img src="<%=img_main%>/common/ic_new.gif" style="">
                            </a>
                        </div>
                        <div class="swiper-slide ">
                            <a href="<%=url_main%>/teacher/pds/pds.asp?bcode=jeonhangil">
                                �н��ڷ��
                            </a>
                        </div>
                        <div class="swiper-slide ">
                            <a href="<%=url_main%>/teacher/cast/cast.asp?bcode=jeonhangil">
                                ������ ĳ��Ʈ
                            </a>
                        </div>
                        <div class="swiper-slide ">
                            <a href="<%=url_main%>/teacher/review/review.asp?bcode=jeonhangil">
                                �����ı�
                                <img src="<%=img_main%>/common/ic_new.gif" style="">
                            </a>
                        </div>
                        <div class="swiper-slide">
                            <a href="javascript:void(0);" class="btn_more_display">��ȹ��</a>
                            <ul class="tec_display_list">
                                <li>
                                    <a href="<%=url_main%>/s/gong/event/2021/08260111/index.asp" target="_blank" title="������ 1���� ������<br>���ѱ� Ŭ���� ">
                                        <span>-</span>������ 1���� ������<br>���ѱ� Ŭ����  
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=18772" title="[�ѱ���] 1.0 �Թ�  ">
                                        <span>-</span>[�ѱ���] 1.0 �Թ�   
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=18879" title="[�ѱ���] 2.0 ���ο� ">
                                        <span>-</span>[�ѱ���] 2.0 ���ο�  
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19163" target="_blank" title="[�ѱ���] 3.0 ���⹮Ǯ">
                                        <span>-</span>[�ѱ���] 3.0 ���⹮Ǯ 
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19191" title="[�ѱ���] ����� Ư��">
                                        <span>-</span>[�ѱ���] ����� Ư�� 
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=18632" target="_blank" title="[�Ѵɰ�] �ʳ� ���� ">
                                        <span>-</span>[�Ѵɰ�] �ʳ� ����  
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=18762" target="_blank" title="[�Ѵɰ�] �ʳ� 1/2 ����">
                                        <span>-</span>[�Ѵɰ�] �ʳ� 1/2 ���� 
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=18312" target="_blank" title="[�Ѵɰ�] �ʳ� ����">
                                        <span>-</span>[�Ѵɰ�] �ʳ� ���� 
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="tec_detail_wrap">
        <div class="tec_detail_cont_wrapper">
            <div class="tec_detail_cont_wrap">
                <div class="tec_detail_content">
                    <div class="tec_detail_left" data-aos="fade-right" data-aos-delay="300">
                        <p class="b-desc pcv">
                        <strong>ó������ ������, <br>������� ���� å�Ӱ� ����</strong>
                        </p>
                        <p class="b-desc mov"><strong>ó������ ������, <br>������� ���� å�Ӱ� ����</strong></p>
                        <p class="s-desc">
                            <a href="<%=url_main%>/teacher/home.asp?bcode=jeonhangil">
                            �ѱ���/�Ѵɰ�&nbsp;<strong>���ѱ�</strong>
                            </a>
                        </p>
                        <div class="btns_wrap">
                            <a class="btn" href="javascript:GongcampusFreePlay('E', 4022, '', '');" title="��ǥ����">��ǥ����</a>
                            <a class="btn" href="javascript:void(0);" onclick="window.open('<%=url_main%>/teacher/popup/profile.asp?bCode=jeonhangil', '_tec', 'left=100,top=100,width=500,height=480');" title="������">������</a>
                        </div>
                        <div class="tec_display_wrap">
                            <div class="tit_area">
                                <p class="tit">������ ��ȹ��</p>
                            </div>
                            <ul class="tec_display_list">
                                <li>
                                    <a href="<%=url_main%>/s/gong/event/2021/08260111/index.asp" target="_blank" title="������ 1���� ������<br>���ѱ� Ŭ���� ">
                                        <span>-</span>������ 1���� ������<br>���ѱ� Ŭ����  
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=18772" title="[�ѱ���] 1.0 �Թ�  ">
                                        <span>-</span>[�ѱ���] 1.0 �Թ�   
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=18879" title="[�ѱ���] 2.0 ���ο� ">
                                        <span>-</span>[�ѱ���] 2.0 ���ο�  
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19163" target="_blank" title="[�ѱ���] 3.0 ���⹮Ǯ">
                                        <span>-</span>[�ѱ���] 3.0 ���⹮Ǯ 
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19191" title="[�ѱ���] ����� Ư��">
                                        <span>-</span>[�ѱ���] ����� Ư�� 
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=18632" target="_blank" title="[�Ѵɰ�] �ʳ� ���� ">
                                        <span>-</span>[�Ѵɰ�] �ʳ� ����  
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=18762" target="_blank" title="[�Ѵɰ�] �ʳ� 1/2 ����">
                                        <span>-</span>[�Ѵɰ�] �ʳ� 1/2 ���� 
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=18312" target="_blank" title="[�Ѵɰ�] �ʳ� ����">
                                        <span>-</span>[�Ѵɰ�] �ʳ� ���� 
                                    </a>
                                </li>
                            </ul>
                        </div>
                        
                    </div>
                    <div class="tec_detail_right" data-aos="fade-left" data-aos-delay="300">
                        <div class="cast_wrap">
                            <div class="tit_area">
                                <p class="tit">������ ĳ��Ʈ</p>
                                <a href="<%=url_main%>/teacher/cast/cast.asp?bcode=jeonhangil" class="btn_more">������</a>
                            </div>
                            <div class="cast_slider">
                                <div>
                                    <div class="item">
                                        <a href="<%=url_main%>/teacher/cast/cast.asp?bcode=jeonhangil&amp;idx=1328" title="������ ĳ��Ʈ �󼼺���" tabindex="-1">
                                            <span class="img">
                                                <img src="https://file.megagong.net/board_data/megacast/img/2022061813_01.jpg" alt="6/18 ������ 9�� �ѱ��� �ؼ����� : '���� ������ 9�ް� ����� ���̵��� �����ߴ�.'">
                                                <strong style="background:#e02463;">�ؼ�����</strong>
                                            </span>
                                            <span class="info">
                                                <strong class="tit">6/18 ������ 9�� �ѱ��� �ؼ����� : '���� ������ 9�ް� ����� ���̵��� �����ߴ�.'</strong>
                                                <strong class="tea">�ѱ���&nbsp;���ѱ漱���� <span class="date">�� ��ȸ�� 2,951</span></strong>
                                            </span>
                                        </a>
                                    </div>
                                    <div class="item">
                                        <a href="<%=url_main%>/teacher/cast/cast.asp?bcode=jeonhangil&amp;idx=1328" title="������ ĳ��Ʈ �󼼺���" tabindex="-1">
                                            <span class="img">
                                                <img src="https://file.megagong.net/board_data/megacast/img/2022061813_01.jpg" alt="6/18 ������ 9�� �ѱ��� �ؼ����� : '���� ������ 9�ް� ����� ���̵��� �����ߴ�.'">
                                                <strong style="background:#e02463;">�ؼ�����</strong>
                                            </span>
                                            <span class="info">
                                                <strong class="tit">6/18 ������ 9�� �ѱ��� �ؼ����� : '���� ������ 9�ް� ����� ���̵��� �����ߴ�.'</strong>
                                                <strong class="tea">�ѱ���&nbsp;���ѱ漱���� <span class="date">�� ��ȸ�� 2,951</span></strong>
                                            </span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="review_wrap">
                            <div class="tit_area">
                                <p class="tit"><strong>BEST</strong> �����ı�</p>
                                <a href="<%=url_main%>/teacher/review/review.asp?bcode=jeonhangil" class="btn_more">������</a>
                            </div>
                            <div class="best_opinn">
                                <ul>
                                    <li>
                                        <a href="<%=url_main%>/teacher/review/view.asp?bcode=jeonhangil&amp;idx=23057&amp;mv=content_area" title="�����ı� �󼼺���">
                                            <strong>�հ��ı⸦ �ۼ��ϰ� �Ǵ� ���� ���ٴ� �ʹ� ��޴ϴ�. ?</strong>
                                            <span>���� �״��, �հ��ı⸦ �ۼ��ϰ� �Ǵ� ���� ���ٴ� �ʹ� ��޴ϴ�.&nbsp;?&nbsp;16�⵵���� ������ �غ��ߴٰ� ������ �Ŀ�, ������θ� ���� �׳� ���� ��Ȱ�� �߾����ϴ�.�ѹ��� ��Ʃ��� �ѱ�� ���Ҹ� ���ϸ�, ���� �ݰ��� �װ� �ִٰ� ��¼�ٺ��� �ٽ� �ѱ�� ���Ǹ� ��� �̷��� �����ı⸦ ���� ���� �Խ��ϴ� :)�ѱ�� �ʳ� �ݺ��ϰ�, ���� ������� ���� ȸ���� ���� �߾����ϴ�!�ٵ� �ƽð�����, "�ʳ롱�ϳ��� ������, �ѱ���� ��� ���Ǹ� ���� �� �ִٴ� ���� ���ҽ��ϴ٤�&nbsp;??&nbsp;[����Ⱓ: 21�� 10�� ~12�� �����Ȱ�ϸ� ���� + 1������ ���������� ������!]&nbsp;1) 2.0 ���ο� ����[2.0�⺻��+�ʳ�]�ѱ��� �ɷ°��� ������ �غ��غ� ������ �־, 1.0 �Թ��� �н��ϰ� �ٷ� 2.0���ο����� �����߽��ϴ�!���ο� ���°� compact������ �ִ��ؼ� �װ͵� ���ôµ�, �߰��� ���Ҹ��� �����ǰ� �ϴٺ��� ����� ������ ���...�ѱ���� ���Ҹ��� ��� ���� ���� ��°ǵ�, �ƽ����� �׳� ���� 2.0���ο����� ������ϴ�. �ð����̵� ũ�� ���� �ʾƼ� �����Ҿ��׸��� ó������ 1.3~1.4������� ������ϴ�.��� �Ŀ� ��°Ŷ� �ʹ� ���� ������� �ϸ� ������ ���߷��� ������ �� ���Ƽ�, ���� ���� �� �ִ� ���� ���缭 ���Ǹ� ������ϴ�.2.0 ���ο� ���� ���� ����, �⺻���� �ʱ��Ʈ�� �����߰� ���߿��� �ʱ��Ʈ�� �ý��ϴ�!2) 3.0 ���Ⱝ�� ����[3.0����+�ʳ�]2.0���ο� �ϰ� �Ŀ��� �ٷ� ���Ⱝ�� ������ϴ�!���Ⱝ�� ���� �� ���Ҵ� ����, ���� Ǯ�� ���� �ش� �ܿ��� �ʿ��� ������ �ٽ� �ѹ� �������ֽô°� ����ȿ���� �־ ���Ұ�, �� �ʿ��� �κп����� �Ǽ��� ���ּż� ���ҽ��ϴ�.���� �ð��� �������, �װ� �� ������ �ʿ��� �κ��̱� ������ �װſ� ���� �Ҹ��� �������!�׷��� ���Ⱝ�ǿ��� �ϴ� �������������δ� �� �����ϴ� ������, �׳� �ٷ� ���� �ʱ��Ʈ ���భ�ǳ� ���ظ� ���� ������� �����鼭 ������ �κ��� �����߽��ϴ�.3) �پ��� Ư�� Ȱ��!!**�ʳ� ����, ���భ��&nbsp;??3.0���� 1ȸ�� �ϰ� �Ŀ���, �ʳ� ����, ������ ���� ������� ��� ������ ȥ�ڼ� Ǯ�����ϴ�.���� �ٷ� �ؿ� �ؼ��� �־ �װɷ� �����ϰ�, ���ǰ� �ʿ��ϴٰ� �ǴܵǴ� ������ ������ �޸��س��� ���� �ð���� ã�ư��� ���...�׷��� �����߽��ϴ�.&nbsp;(�׷��� 3.0���� 1ȸ�� �� ��, ���¸�� �ð��븦 �޸��س����. ���߿� ã�� �ð��� ���̷���...)**���� �ϱ��Ʈ&nbsp;??...å�� �۰� �ȹ��ſ��� ���Ҿ��. ������� ��, ���Ͼϱ��Ʈ ��� �ٴϸ鼭 ���� ���� ���� �����ϰ�...**������ Ư��&nbsp;??&nbsp;������ Ư���� ��¥ �̸��״�� ������ Ư���Դϴ�! �������ñ⿡ �ѹ���� �������� 2ȸ������ ������ϴ�. ȥ�ڼ��� ������ ���Ҵ� �ʱ��Ʈ�� ��¶�� �ѹ��� ���� �� �־���, �� �׷��� �ô� ������ �����尡�� �������� ȿ�ڰ��ǤФ�**��ġ�� ��, ����� ��, �׳� ������� �� �ִ� �ð����� ���� ��ų� ���Ͼϱ��Ʈ���鼭 �ݺ� �� �ݺ�&nbsp;���ΰ� �� ���� ���� ��, �ѱ���� ���ֽô� ���Ҹ���, �����ڰ� �� ���� ����� �����ϸ� ����� �� �����ϴ� !!&nbsp;&nbsp;</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="<%=url_main%>/teacher/review/view.asp?bcode=jeonhangil&amp;idx=21336&amp;mv=content_area" title="�����ı� �󼼺���">
                                            <strong>2022 ������ ����� 5���� �ܱ��հ�</strong>
                                            <span>�ް��� ������ ���� �� ���� ū �κ��� ���ѱ� �������� ���Ǹ� �����ϰ� �;�����ϴ�. ���� ���߷��� ���� Ǯ������ ������ ���ѱ� �������� ����ִ� ���°� �� �¾ҽ��ϴ�. �׸��� ���ѱ� �������� ���� Ư���� ���丮�ڸ����� ����Ǵµ� �׷��ٺ��� ���� �� ��￡ ���� ����, ����� �����ߴ��� �� �� �־� ���������� ���ö��� ���� ������ ���� �� ���ѱ� �����Բ��� �������ֽ� ���丮�� ���󰡸� ���� ������ Ǯ �� �־����ϴ�.&nbsp; �� �ι��� ������ �̾߱� �ϴ� ���� �ƴ϶� �� �׷� ������ �ϰ� �Ǿ����� ������ּż� ���� ��ó ���� ���� ��ᰡ �������� ������ �о�� �ѱ���� ������ֽ� �κ��� �־� �ι��� �ľ��ϴ� ���� �����߽��ϴ�. Ű���� ���ְ� �ƴ� ��¥ ���縦 ���� ���Ƕ�� �����մϴ�.&nbsp;���� �ѱ��� 2.0 ���ο� -&gt; 3.0 ����Ǯ��(���� x) ������ Ǯ�����ϴ�. 3.0 ���� å ������ ����Ǯ�̰� ���� �Ǿ��־� �ð��� ������ ���� ���Ǹ� �����ϴ� �ͺ��� ���� ���� Ǯ�̸� ���ҽ��ϴ�. �� ���¸� ���� �� �����Ե鲲�� ĥ�ǿ� ���� �����ŵ� � ���� �������ֽ� �� �ߴ� ����(���ó� ���丮 ��)�� ���翡 �ۼ��߽��ϴ�. �׷��� �Ŀ� �ٽ� ���� �������� �������̴ּ��� ����� ���鼭 ���ذ� �� �ߵǴ� ȿ���� �־����ϴ�?</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="tec_img_wrap" data-aos="fade"><img src="<%=img_main%>/profphoto/gong/jeonhangil/Prof3.png" alt="�ѱ���/�Ѵɰ�&nbsp;���ѱ�"></div>
                    <div class="flo_wrap">
                        <div id="floSlider" class="flo_slider">
                            <div class="item">
                                <a href="<%=url_main%>/s/gong/event/2022/10270165/index.asp#event1" target="_blank" class="subno" title="2023 5.0 ������ �������� ���������û�ϱ�">
                                    <img src="<%=img_main%>/m/2022/1027_han/bnr1.png" alt="2023 5.0 ������ �������� ���������û�ϱ�">
                                </a>
                            </div>
                            <div class="item">
                                <a href="<%=url_main%>/s/gong/event/2022/10270165/index.asp?scrgo2=event2" target="_blank" class="subno" title="���� ���� �̺�Ʈ ������ǰ���� ���ΰ���?">
                                    <img src="<%=img_main%>/m/2022/1027_han/bnr2.png" alt="���� ���� �̺�Ʈ ������ǰ���� ���ΰ���?">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="tea_bnr">
            <!--
            <style>
                @media (max-width: 1470px){
                    .tea_bnr a.mo_hide {display:none;}
                }
            </style>
            -->
            <a href="<%=url_main%>/s/gong/event/2021/02020022/index.asp#eventWrap" target="_blank" title="�ް��н� 7�� ����ü��" class="mo_hide">
                <img src="https://img.megagong.net/m/2022/0927_teacher/tec_banner_renew_01.jpg" alt="�ް��н� 7�� ����ü��">
                �� ���� �ް��н� <strong class="sobang_impor">NEW <br>7�� ����ü��</strong>
            </a>
            <a href="<%=url_main%>/s/gong/event/2022/06020063/index.asp#eventWrap" target="_blank" title="�� �������� �հ� �ε��! 2023 Ŀ��ŧ��">
                <img src="https://img.megagong.net/m/2022/0927_teacher/tec_banner_renew_02.jpg" alt="�� �������� �հ� �ε��! 2023 Ŀ��ŧ��">
                �� �������� <strong class="sobang_impor">2023 Ŀ��ŧ��</strong>
            </a>
            <a href="<%=url_main%>/s/gong/event/2020/10280102/index.asp#eventWrap" target="_blank">
                <img src="https://img.megagong.net/m/2022/1027_new/tec_banner_army.png" alt="11~12�� ���� �ű� ����">2023 ���<strong class="sobang_impor">11~12�� �ű� ����</strong>
            </a>
            
            <a href="<%=url_main%>/event/2022/04200007/index.asp#eventWrap" target="_blank" style="border-left: 1px solid #fff;" title="���ѱ� �Ѵɰ� APP">
                <img src="https://img.megagong.net/m/2022/0420_branding/bnr_5.jpg" alt="���ѱ� �Ѵɰ� APP">���ѱ� <strong>�Ѵɰ� APP</strong>
            </a>
        </div>
    </div>
</div></code></pre>
<pre class="language-javascript act direct"><code>var tecTopmenu = undefined;
function initTopmenuSwiper() {
    if ($(window).width() <= 768 && tecTopmenu === undefined)  {
        tecTopmenu = new Swiper('.tec_topmenu_swiper', {
            slidesPerView: 'auto',
            observer: true,
            observeParents: true,
            observeSlideChildren: true,
            on: {
                init: function(){
                    $('.tec_topmenu_wrap').addClass('active');
                }
            },
        });
        var tecTopmenu_index = $('.tec_topmenu_swiper .swiper-slide.on').index();
        if (tecTopmenu_index) {
            tecTopmenu.slideTo(tecTopmenu_index, 0)
        }
    } else if ($(window).width() > 768 && tecTopmenu != undefined) {
        tecTopmenu.destroy();
        tecTopmenu = undefined;
    }
}

$(window).on('load resize', function(){
    initTopmenuSwiper();    
});

var cast_slider_cnt = $(".cast_wrap .cast_slider > div .item").length;
if (cast_slider_cnt > 1) {
    var cast_slider = $('.cast_wrap .cast_slider > div').slick({
        infinite: true,
        speed: 200,
        autoplay: false,
        slidesToShow: 1,
        slidesToScroll: 1,
        dots: true,
        arrows: true,
        easing: 'easeOutElastic',
    });
}

$('#floSlider').slick({
    dots: true,
    arrows: false,
    speed: 0,
    autoplaySpeed: 3000,
    autoplay: true,
    cssEase: 'linear',
});</code></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/teacher/home.asp?bcode=jeonhangil" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#����Ȩ</p> </li>
                            <li><p>#������</p> </li>
                            <li><p>#����Ȩ</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->




            <div class="page_text_wrap">
                <p class="page_head">Ȩ ���</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                
<!-- HTML -->
<div class="code-box html tp2"><div class="tec_renew tech_content">
    <div class="tcbanner_zone new">
        <div class="tcbannerZin">
            <div class="tcbanner_slider">
                <div class="item bn_txt" style="width: 100%; display: inline-block;">
                    <a href="<%=url_main%>/s/gong/event/2021/08260111/index.asp" target="_blank" style="background-color:#0c998d;" tabindex="0">
                        <span class="sub_tit">
                            <span>�ʱ��Ʈ ���� �н����� ����+���� ���ÿϼ�!</span>
                        </span>
                        <strong class="tit">[�ѱ���] 3.0 ���� ����Ǯ��</strong>
                        <span class="point"><span>�ֽŰ���<br>�Ϻ��ݿ�</span></span>
                    </a>
                </div>
                <div class="item bn_txt" style="width: 100%; display: inline-block;">
                    <a href="<%=url_main%>/event/2022/04200007/index.asp#eventWrap" target="_blank" style="background-color:#72427c;" tabindex="0">
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
</div></div>

<script>var bnnr_slider_cnt = $(".tcbanner_slider .item").length;
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
</script>

<p class="page_text">�ް��������� ����Ȩ ���������� ���Ǵ� ��� ����Դϴ�.<br>
�ַ� �ش� ���� �������� ��ȹ�� ������ Ȥ�� ���� �������� ����Ǹ� ���� �ð����� �ڵ� �Ѹ��˴ϴ�.</p>

<!-- Code View -->
<pre class="language-html html act direct"><code><div class="tec_renew tech_content">
    <div class="tcbanner_zone new">
        <div class="tcbannerZin">
            <div class="tcbanner_slider">
                <div class="item bn_txt" style="width: 100%; display: inline-block;">
                    <a href="<%=url_main%>/s/gong/event/2021/08260111/index.asp" target="_blank" style="background-color:#0c998d;" tabindex="0">
                        <span class="sub_tit">
                            <span>�ʱ��Ʈ ���� �н����� ����+���� ���ÿϼ�!</span>
                        </span>
                        <strong class="tit">[�ѱ���] 3.0 ���� ����Ǯ��</strong>
                        <span class="point"><span>�ֽŰ���<br>�Ϻ��ݿ�</span></span>
                    </a>
                </div>
                <div class="item bn_txt" style="width: 100%; display: inline-block;">
                    <a href="<%=url_main%>/event/2022/04200007/index.asp#eventWrap" target="_blank" style="background-color:#72427c;" tabindex="0">
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
</div></code></pre>
<pre class="language-javascript act direct"><code>var bnnr_slider_cnt = $(".tcbanner_slider .item").length;
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
}</code></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/teacher/home.asp?bcode=jeonhangil" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#����Ȩ</p> </li>
                            <li><p>#���</p> </li>
                            <li><p>#��ũ����</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->



            <div class="page_text_wrap">
                <p class="page_head">���ҽ�, �����ı�</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                
<!-- HTML -->
<div class="code-box html tp2"><div class="tec_renew tech_content">
    <div class="techBoard">
        <div class="board_wrap notice dotin">
            <div class="inner">
                <h3>������ ���ҽ�<a href="<%=url_main%>/teacher/notice/notice.asp?bcode=jeonhangil" class="btn_more">������</a></h3>
                <ul class="board_list">
                    <li><a href="<%=url_main%>/teacher/notice/notice.asp?bcode=jeonhangil&amp;idx=6098" style="display:inline-block;vertical-align:middle"><img src="https://img.megagong.net/s/common/main_important_icon.gif" alt="�ʵ�" class="importantIcon"> ��61ȸ �Ѵɰ� ����/�����/���߰���</a><span class="date">2022.10.24</span></li>
                    <li><a href="<%=url_main%>/teacher/notice/notice.asp?bcode=jeonhangil&amp;idx=6096" style="display:inline-block;vertical-align:middle"><img src="https://img.megagong.net/s/common/main_important_icon.gif" alt="�ʵ�" class="importantIcon"> �ѱ���Դϴ�. �� 61ȸ �Ѵɰ� D-1 LIVEƯ�� �� �����մϴ�.</a><em class="count">(1)</em><span class="date">2022.10.21</span></li>
                    <li><a href="<%=url_main%>/teacher/notice/notice.asp?bcode=jeonhangil&amp;idx=6076" style="display:inline-block;vertical-align:middle"><img src="https://img.megagong.net/s/common/main_important_icon.gif" alt="�ʵ�" class="importantIcon"> ?10/21(��) ���� 7�� LIVE ?61ȸ �Ѵɰ� ��� �ѱ� ���� ���� Ư��!</a><em class="count">(3)</em><span class="date">2022.10.17</span></li>
                    <li><a href="<%=url_main%>/teacher/notice/notice.asp?bcode=jeonhangil&amp;idx=6058" style="display:inline-block;vertical-align:middle"><img src="https://img.megagong.net/s/common/main_important_icon.gif" alt="�ʵ�" class="importantIcon"> 2023 ��� 11-12�� ���� �� ����Ŀ��ŧ��</a><span class="date">2022.10.14</span></li>
                    <li><a href="<%=url_main%>/teacher/notice/notice.asp?bcode=jeonhangil&amp;idx=6050" style="display:inline-block;vertical-align:middle"><img src="https://img.megagong.net/s/common/main_important_icon.gif" alt="�ʵ�" class="importantIcon"> "�� 2�� �ʳ�"�� �޲ٴ� ���� ������ ���</a><span class="date">2022.10.12</span></li>
                </ul>
            </div>
        </div>
        <div class="board_wrap opinn">
            <div class="inner">
                <h3>�����ı�
                    <a href="<%=url_main%>/teacher/review/review.asp?bcode=jeonhangil" class="btn_more">������</a>
                </h3>
                <ul class="board_list">
                    <li><a href="<%=url_main%>/teacher/review/view.asp?bcode=jeonhangil&amp;idx=23715&amp;mv=content_area">�Ѵɰ˵� ���� ���ѱ� <img src="https://img.megagong.net/common/ic_new.gif"></a><span class="writer">��*��</span></li> <!--����ŷ�� �̸� -->
                    <li><a href="<%=url_main%>/teacher/review/view.asp?bcode=jeonhangil&amp;idx=23685&amp;mv=content_area">�Ѵɰ˵� ���ѱ� T �����ϴ�.</a><span class="writer">��*��</span></li> <!--����ŷ�� �̸� -->
                    <li><a href="<%=url_main%>/teacher/review/view.asp?bcode=jeonhangil&amp;idx=23684&amp;mv=content_area">������ �ѱ��� 1���� ������ ������ �Ѵɰ� ������ �հ��� �ѱ��� �����Ѵ�.!!</a><span class="writer">��*��</span></li> <!--����ŷ�� �̸� -->
                    <li><a href="<%=url_main%>/teacher/review/view.asp?bcode=jeonhangil&amp;idx=23675&amp;mv=content_area">�����Ը� �ϰ� ������ ��ǥ �޼� ����</a><span class="writer">��*��</span></li> <!--����ŷ�� �̸� -->
                    <li><a href="<%=url_main%>/teacher/review/view.asp?bcode=jeonhangil&amp;idx=23671&amp;mv=content_area">�ʱ��Ʈ ���ظ� ��� 1�� �� ���!!!</a><span class="writer">��*��</span></li> <!--����ŷ�� �̸� -->
                </ul>
            </div>
        </div>
    </div>
</div></div>

<p class="page_text">�ް��������� ����Ȩ ���������� ���Ǵ� ����Ʈ ����Դϴ�.<br> 
���� �������� �ۼ��� �ҽ� �����̳� ���������� �ۼ��� �����ı���� Ȯ���� �� �ֽ��ϴ�.<br><br> ���� �������� �ۼ��� ���ҽ��� ���, �Խñ��� ������ ���� �ʵ�, �̺�Ʈ, ���� ������ ������ �������� ǥ��˴ϴ�.<br> ���� �ֱٿ� �ۼ��� ���ҽ� Ȥ�� �����ı��� ��� ������ �Ⱓ���� New �������� �ٰ� �˴ϴ�.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/teacher/home.asp?bcode=jeonhangil" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#����Ȩ</p> </li>
                            <li><p>#����Ʈ</p> </li>
                            <li><p>#���ҽ�</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->

            <div class="page_text_wrap">
                <p class="page_head">Ŀ��ŧ��</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                
<!-- HTML -->
<div class="code-box html tp2"><div class="tec_renew tech_content">
    <div class="homeConmain">
        <div id="curr" class="tccont curr_zone">
            <div id="t_curr" class="teaCurr">
                <div class="char_zone">
                    <img src="<%=img_main%>/teacher/curr/gong/shin242_char_0519.jpg" alt="����������">
                </div>
                <p class="curr_tit">���ѹα� ����� 100������ ����!*<br>110% �̷�+���� �ϼ�<br><strong>�ſ��� ������&amp;������ġ�� �հ� ���̵�</strong></p>
                <p class="curr_Stit">
                    <span>100% �հ��� �����ϴ� ���� Ŀ��ŧ��</span>
                    <a href="javascript:;" onclick="GongcampusFreePlay('E', 3638, '', '');return flase;" class="curr_vdo_btn" title="���� Ŀ��ŧ��">���� Ŀ��ŧ��</a>
                </p>
                <div class="tbl_wrp essential subcurr2 pcView">
                    <table class="tbl" title="���� Ŀ��ŧ��">
                        <colgroup>
                            <col width="20%">
                            <col width="16%">
                            <col width="16%">
                            <col width="16%">
                            <col width="16%">
                            <col width="16%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>�н��ܰ�</th>
                                <th colspan="4">9�� ������</th>
                                <th>7�� ������</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th>��ƴ����<br>�̷пϼ�<br>[90�� �ϼ�]</th>
                                <td colspan="2">�ſ��� ������ STEP1.<br>�̷пϼ�: All-in-one</td>
                                <td>�ſ��� ������ STEP2.<br>���⹮Ǯ: 10�� 2000��<br>+�ٽ�OX 500��</td>
                                <td>�ſ��� ������ STEP3.<br>��������:�հ��� 24�ð�</td>
                                <td>�ſ��� 7��<br>������ġ��<br>All-in-one</td>
                            </tr>
                            <tr>
                                <th>�Ϻ��� �����<br>��������<br>[100�� �ϼ�]</th>
                                <td><i class="focusIcon blue">������ ����ON</i><br>�ſ��� ������ STEP4.<br>���ǰ��:(1)��������</td>
                                <td><i class="focusIcon blue">������ ����ON</i><br>�ſ��� ������ STEP4.<br>���ǰ��:(2)������ ������</td>
                                <td colspan="2"><i class="focusIcon">������ ����ON</i><br>�ſ��� ������ STEP5.<br>���ǰ��:������ ������</td>
                                <td>�ſ��� 7��<br>���� ���� ���ǰ��</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="tbl_wrp essential subcurr2 mobileView">
                    <table class="tbl" title="���� Ŀ��ŧ��">
                        <colgroup>
                            <col width="25%">
                            <col width="37.5%">
                            <col width="37.5%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>�н��ܰ�</th>
                                <th>��ƴ���� �̷пϼ�<br>[90�� �ϼ�]</th>
                                <th>�Ϻ��� ����� ���� ����<br>[100�� �ϼ�]</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th rowspan="4">9�� ������</th>
                                <td rowspan="2">�ſ��� ������ STEP1.<br>�̷пϼ�: All-in-one</td>
                                <td><i class="focusIcon blue">������ ����ON</i><br>�ſ��� ������ STEP4.<br>���ǰ��:(1)��������</td>
                            </tr>
                            <tr>
                                <td><i class="focusIcon blue">������ ����ON</i><br>�ſ��� ������ STEP4.<br>���ǰ��:(2)������ ������</td>
                            </tr>
                            <tr>
                                <td>�ſ��� ������ STEP2.<br>���⹮Ǯ: 10�� 2000��<br>+�ٽ�OX 500��</td>
                                <td rowspan="2"><i class="focusIcon">������ ����ON</i><br>�ſ��� ������ STEP5.<br>���ǰ��:������ ������</td>
                            </tr>
                            <tr>
                                <td>�ſ��� ������ STEP3.<br>��������:�հ��� 24�ð�</td>
                            </tr>
                            <tr>
                                <th>7�� ������</th>
                                <td>�ſ��� 7��<br>������ġ��<br>All-in-one</td>
                                <td>�ſ��� 7��<br>���� ���� ���ǰ��</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <p class="curr_Stit"><span>110% �հ����� ������ �Ƚɽ�Ű�� Ư��</span></p>
                <div class="tbl_wrp essential subcurr2 pcView" style="margin-bottom:0;">
                    <table class="tbl" title="���� Ŀ��ŧ��">
                        <colgroup>
                            <col width="20%">
                            <col width="13.3333%">
                            <col width="13.3333%">
                            <col width="13.3333%">
                            <col width="13.3333%">
                            <col width="13.3333%">
                            <col width="13.3333%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>��������</th>
                                <th colspan="6">9/7�� ������</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th>����Ư��</th>
                                <td colspan="3">�ſ��� ������ STEP1.<br>�������&amp;�������� Ư��</td>
                                <td colspan="3">�ſ��� ������ STEP2.<br>���� ���� �ֽ� �������� Ư��</td>
                            </tr>
                            <tr>
                                <th>����Ư��</th>
                                <td colspan="6">�ſ��� ������ All-STEP<br>�ֽ� 1���� �ܿ��� ���� Ư��</td>
                            </tr>
                        </tbody>
                    </table>
                    <!-- <p class="noti_txt">* ���� ���´� ������ �Ǵ� �п� �������� ���� ����� �� �ֽ��ϴ�.</p> -->
                </div>

                <div class="tbl_wrp essential subcurr2 mobileView" style="margin-bottom:0;">
                    <table class="tbl" title="���� Ŀ��ŧ��">
                        <colgroup>
                            <col width="25%">
                            <col width="12.5%">
                            <col width="12.5%">
                            <col width="12.5%">
                            <col width="12.5%">
                            <col width="12.5%">
                            <col width="12.5%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>�н��ܰ�</th>
                                <th colspan="3">����Ư��</th>
                                <th colspan="3">����Ư��</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th rowspan="2">9/7��<br>������</th>
                                <td colspan="3">�ſ��� ������ STEP1.<br>�������&amp;�������� Ư��</td>
                                <td colspan="3" rowspan="2">�ſ��� ������ All-STEP<br>�ֽ� 1���� �ܿ��� ���� Ư��</td>
                            </tr>
                            <tr>
                                <td colspan="3">�ſ��� ������ STEP2.<br>���� ���� �ֽ� �������� Ư��</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <p class="noti_txt" style="text-align:right;margin-bottom:40px;">
                    *2012�� 4��~2021�� 9�� ������/������ġ�� �ſ��� ���� ���μ�<br>
                    (�Ǹſ����+���������+���ǰ ��� ����)
                </p>



                <style>
                    .pcView { display:block; }
                    .mobileView { display:none; }
                    @media (max-width:748px){
                        .mobileView { display:block; }
                        .pcView { display:none; }
                    }
                </style>

                </div>
        </div>
    </div>
</div></div>

<p class="page_text">�ް��������� ����Ȩ �� �پ��� �̺�Ʈ ���������� ���Ǵ� Ŀ��ŧ�� ����Դϴ�.<br> 
�̹��� �ڷ�� ǥ, ������ �������� ���� ������ Ŀ��ŧ�� ������ �����ϰ� �ֽ��ϴ�.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/teacher/home.asp?bcode=shin242" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#����Ȩ</p> </li>
                            <li><p>#Ŀ��ŧ��</p> </li>
                            <li><p>#ǥ</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->

            <div class="page_text_wrap">
                <p class="page_head">���� ���</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                
<!-- HTML -->
<div class="code-box html tp2"><div class="tec_renew tech_content">
    <div class="homeConmain">
        <div id="chr" class="tccount incl_zone">
            <div class="lecCont">
                <div class="Tab_wrap">
                    <div class="grade_tab_wrap">
                        <div class="lecture" style="padding-bottom: 100px;">
                            <div class="lecList">
                                <div class="chrarea" id="chrarea1">
                                    <div class="lecTab_wrap" style="border-top: 1px solid #000;">
                                        <div id="chrtab_1" class="lecTab">
                                            <p class="tit"><span>����</span></p>
                                            <ul class="lec_list">
                                                <li scd="63" class=" on"><button type="button" class="lec_item">
                                                    <span class="">�ѱ���
                                                    </span></button>
                                                </li>
                                                <li scd="86" class=""><button type="button" class="lec_item">
                                                    <span class="">�ѱ���ɷ°���
                                                    </span></button>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="lecTab_wrap">
                                        <div id="chrgubn_1" class="gubnTab">
                                            <p class="tit"><span>����</span></p>
                                            <ul class="gubn_list">
                                                <li gubn="pick" class="on">
                                                    <button type="button" class="gubn_item"><span class="">Mega's Pick</span></button>
                                                </li>
                                                <li gubn="all" class="">
                                                    <button type="button" class="gubn_item"><span class="">��ü ����</span></button>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="stepTab_wrap">
                                        <div id="chrstep_1" class="stepTab">
                                            <p class="tit"><span>�н��ܰ�</span></p>
                                            <ul class="step_list">
                                                <li stc="" class="on"><button type="button" class="step_item"><span class="">��ü</span></button></li>
                                                <li stc="401" class=""><button type="button" class="step_item"><span class="">�����Թ�</span></button></li>
                                                <li stc="410" class=""><button type="button" class="step_item"><span class="">�⺻��ȭ</span></button></li>
                                                <li stc="406" class=""><button type="button" class="step_item"><span class="">����м�/����Ǯ��</span></button></li>
                                                <li stc="407" class=""><button type="button" class="step_item"><span class="">���̳�/���ǰ��</span></button></li>
                                                <li stc="408" class=""><button type="button" class="step_item"><span class="">����Ư��</span></button></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <p class="tit_s3">MEGA��S PICK!</p>
                                    <div class="lectlist ver2">
                                        <div class="lectlist_s3">
                                            <p class="subtit on">&lt;�ѱ���&gt; ���̳��� ���� �ѱ� ���� �ű԰���</p>
                                            <ul class="lectlist_wrap">
                                                <li id="list1_19422" class="lect_item" value2="198">
                                                    <div class="listName">
                                                        <p class="txt1">�ѱ���<br><span>���̳�<br>/���ǰ��</span></p>
                                                        <p class="name">���ѱ�</p>
                                                    </div>
                                                    <div class="listWrap">
                                                        <div class="listTitle  clearfix">
                                                            <div class="f_left listTxt">
                                                                <p class="icon">
                                                                    <span class="icon1">N</span> <span class="icon6">����</span> 
                                                                    <!---->
                                                                    <span class="icon7">9�޴��</span>
                                                                </p>
                                                                <p class="subTxt">10/27~11/11 ������� EVENT</p>
                                                                <p class="subject"><a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19422">[9��][���̳�] 2023 ���ѱ� �ѱ��� 5.0 ������ ��������</a></p>
                                                                <p class="subNoti">11�� 16�ϣ����� ���� �����Դϴ�.</p>
                                                            </div>
                                                        </div>
                                                        <div class="lecBook">
                                                            <ul class="bookList">
                                                                <li class="clearfix">
                                                                    <div class="f_left">
                                                                        <strong>����</strong>
                                                                        <span>
                                                                            2023 ���ѱ� �ѱ��� 5.0 ������ ��������
                                                                        </span>
                                                                    </div>
                                                                </li>
                                                        
                                                                <li class="clearfix">
                                                                    <div class="f_left">
                                                                        <strong>����</strong>
                                                                        <strong>e-����</strong>
                                                                        <span>
                                                                            2023 ���ѱ� �ѱ��� �հݻ� �ʱ��Ʈ (��������)
                                                                        </span>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="leclistBtn clearfix">
                                                        <div class="listotal f_right">
                                                            <div class="lecMoney">
                                                                <ul>
                                                                    <li>
                                                                        <strong class="name">����</strong>
                                                                        <strong class="price">
                                                                        0��
                                                                        </strong>
                                                                    </li>
                                                                    
                                                                    <li>
                                                                        <strong class="name">����(2)</strong>
                                                                        <strong class="price">
                                                                        30,600��
                                                                        </strong>
                                                                    </li>
                                                                    
                                                                    <li>
                                                                        <strong class="name">e-����(1)</strong>
                                                                        <strong class="price">
                                                                        10,500��
                                                                        </strong>
                                                                    </li>
                                                                    
                                                                </ul>
                                                                <a href="javascript:void(0);" onclick="fncPickCartLayer(1, 19422, 198);" class="cart_btn" title="��ٱ���">��ٱ���</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div id="cartPocket1_19422" class="pocket_pop_prevw">
                                                    </div>
                                                    <div id="prevwPocket1_19422" class="pocket_pop prevw" style="display:none">
                                                    </div>
                                                </li>
                                                <li id="list1_19424" class="lect_item" value2="198">
                                                    <div class="listName">
                                                        <p class="txt1">�ѱ���<br><span>����м�<br>/����Ǯ��</span></p>
                                                        <p class="name">���ѱ�</p>
                                                    </div>
                                                    <div class="listWrap">
                                                        <div class="listTitle  clearfix">
                                                            <div class="f_left listTxt">
                                                                <p class="icon">
                                                                    <span class="icon1">N</span> <span class="icon6">����</span> 
                                                                    <!--<span class="icon4">�̺�Ʈ</span> -->
                                                                    <span class="icon7">9�޴��</span>
                                                                </p>
                                                                <p class="subTxt">�ڹ��� ������ �ô뺰 ���� ȸ�� �Ʒ�! </p>
                                                                <p class="subject"><a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19424">[9��][Ư��] 2023 ���ѱ� �ѱ��� ���� ȸ�� Ʈ���̴� ���ǰ��</a></p>
                                                                <p class="subNoti">11/7������ ���� �����Դϴ�.</p>
                                                            </div>
                                                        </div>
                                                        <div class="lecBook">
                                                            <ul class="bookList">
                                                                <li class="clearfix">
                                                                    <div class="f_left">
                                                                            <strong>����</strong>
                                                                        <span>
                                                                            2023 ���ѱ� �ѱ��� ���� ȸ�� Ʈ���̴� ���ǰ��
                                                                        </span>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="leclistBtn clearfix">
                                                        <div class="listotal f_right">
                                                            <div class="lecMoney">
                                                                <ul>
                                                                    <li>
                                                                        <strong class="name">����</strong>
                                                                        <strong class="price">
                                                                        0��
                                                                        </strong>
                                                                    </li>
                                                                    <li>
                                                                        <strong class="name">����(1)</strong>
                                                                        <strong class="price">
                                                                        13,500��
                                                                        </strong>
                                                                    </li>
                                                                    
                                                                </ul>
                                                                <a href="javascript:void(0);" onclick="fncPickCartLayer(1, 19424, 198);" class="cart_btn" title="��ٱ���">��ٱ���</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div id="cartPocket1_19424" class="pocket_pop_prevw">
                                                    </div>
                                                    <div id="prevwPocket1_19424" class="pocket_pop prevw" style="display:none">
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div></div>

<script>
$(function() {
    $('.tech_content .lectlist_s3 .subtit').addClass('on');
    $('.tech_content .lectlist_s3 .subtit').on('click', function () {
        $(this).toggleClass('on');
    });
});
</script>

<p class="page_text">�ް��������� �پ��� ���������� ���Ǵ� ���� ����Ʈ�Դϴ�.<br> ����Ʈ�� ���� ������ ����, ��� �������� ����, ���� ����, ���� ������ �� ���� Ȯ���� �� �ֽ��ϴ�. </p>

<!-- Code View -->

<pre class="language-html html act direct"><code><div class="lecture">
    <div class="lecture_whtwrp">
    &lt;%
        area_max = 1
        dom_cd = "4"
        sub_cd = ""
        sel_type = ""

        chr_cd = ""

        grp_cd = "634" 
        grp_ord = "N"
        
        chr_tab = "N" '����/�ܰ��� ���
        chr_tec = "N" '������ ���� ���

        chr_type = "s" '���±���(s : ����, m : �ܰ躰, k : �����ä, f : ���ᰭ��, e : g�ؼ�����) - ������ ��Ȳ �ð� ���
        chr_title = ""
        chr_bnr =  ""

        chr_ajax = "/common/chr/chrlist_ax.asp"
        chr_para = "chr_tab=" & chr_tab & "&chr_tec=" & chr_tec & "&sel_type=" & sel_type & "&dom_cd=" & dom_cd & "&chr_type=" & chr_type & "&sub_cd=" & sub_cd
        chr_plus = "&grp_cd=" & grp_cd & "&grp_ord=" & grp_ord & "&chr_cd=" & chr_cd
    %&gt;
    &lt;!-- #'include virtual = "/common/chr/chrlist_inc.asp"--&gt;
    </div>
</div></code></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/teacher/home.asp?bcode=shin242" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#����Ȩ</p> </li>
                            <li><p>#���¸���Ʈ</p> </li>
                            <li><p>#���¸��</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->

            <!-- #include virtual = "/inc/tweet_popup_all.asp"-->
            <!-- #include virtual = "/inc/ball.asp"-->
            <!-- #include virtual = "/inc/footer.asp"-->
        </div> <!--//page_inner -->
    
    </div>


    <div class="ank"></div>

    <style>
    .tech_content {min-height:inherit; padding-bottom: 0px;}
    .tech_content .tcbannerZin .tcbanner_slider {margin:0px}
    .tech_content .board_wrap h3 {font-size:inherit; background:inherit;}
    .tech_content .board_wrap.dotin h3,.tech_content .board_wrap.opinn h3 {background:inherit;}
    .bnrb {margin: auto;display: block;width: 50%;}
    @media screen and (max-width: 1200px) {
        .bnrb {width: 60%;}
    }
    @media screen and (max-width: 992px) {
        .bnrb {width: 90%;}
    }
    @media screen and (max-width: 576px) {
        .bnrb {width: 100%;}
    }
    </style>

<!-- #include virtual = "/inc/bottom.asp"-->