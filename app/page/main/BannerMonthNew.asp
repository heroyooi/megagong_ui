<script type="text/babel">
  'use strict';

  function BannerMonthNew({ title, onChange }) {

const html = `<div class="main_wrp">
  <div class="wide_wrap flex first">
    <div id="main_monthNew" class="main_monthNew">
        <div class="cont_wrap border_1">
            <div class="title_wrap">
                <h3>�� ���� <b>�� ����</b></h3>
            </div>
            
            <a href="javascript:;" class="arrow border_1">������</a>

            <div class="monthnew_slider_wrap">
                <div id="monthnew_slider" class="monthnew_slider slider">
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21875" title="���� ������">
                            <i class="open ">����</i>
                            <span class="tit">[Ư��] 2024��� ���¼� POINT �ι� �ֽ� �Ƿ� ����</span>
                            <span class="name">�ι�&nbsp;���¼�</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21849" title="���� ������">
                            <i class="open ">����</i>
                            <span class="tit">[���̳�] 2024 ��ȯ �ѱ��� ������ ��� �۵� ���ǰ��</span>
                            <span class="name">�ѱ���&nbsp;��ȯ</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21850" title="���� ������">
                            <i class="open ">����</i>
                            <span class="tit">[Ư��] 2024 ��ȯ �ѱ��� ������ ��� �۵�Ư�� ��Ʈ��</span>
                            <span class="name">�ѱ���&nbsp;��ȯ</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21861" title="���� ������">
                            <i class="open ">����</i>
                            <span class="tit">2024 ������ ���ϸ� ��ƾ Advanced8 : ����� �ᱹ ������ ��ƾ���� �ϼ��ϴ� ��</span>
                            <span class="name">����&nbsp;������</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21817" title="���� ������">
                            <i class="open ">����</i>
                            <span class="tit">[Ư��] 2024 �۾Ƹ� ��ȣ���� ����ġ�� Ư��</span>
                            <span class="name">��ȣ����&nbsp;�۾Ƹ�</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21818" title="���� ������">
                            <i class="open ">����</i>
                            <span class="tit">[Ư��] 2024 �۾Ƹ� ������ȸ��ȣ ����ġ�� Ư��</span>
                            <span class="name">������ȸ��ȣ&nbsp;�۾Ƹ�</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21832" title="���� ������">
                            <i class="open ">����</i>
                            <span class="tit">2025 ������ ���� �� ���� �˰��� ��Ű�� SCHEMA</span>
                            <span class="name">����&nbsp;������</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21848" title="���� ������">
                            <i class="open ">����</i>
                            <span class="tit">[���̳�] 2024 ������ ��� �̻��� ������ ���� ���� ���ǰ��</span>
                            <span class="name">������&nbsp;�̻���</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21960" title="���� ������">
                            <i class="open ">����</i>
                            <span class="tit">2025 ������ ������� ���� ȨƮ_������� ���� ������Ʈ��</span>
                            <span class="name">����&nbsp;������</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21808" title="���� ������">
                            <i class="open ">����</i>
                            <span class="tit">[9��] [�Թ�] 2025 ���ѱ� �ѱ��� 1.0 �Թ�</span>
                            <span class="name">�ѱ���&nbsp;���ѱ�</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21833" title="���� ������">
                            <i class="open ">����</i>
                            <span class="tit">2025 ������ ���� �� ���� �˰��� ������ DEEP LEARNING</span>
                            <span class="name">����&nbsp;������</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21872" title="���� ������">
                            <i class="open ">����</i>
                            <span class="tit">[������] 2024 ��뿵�� ��DAY���� ���� ���ǰ��</span>
                            <span class="name">����&nbsp;��뿵</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21811" title="���� ������">
                            <i class="open ">����</i>
                            <span class="tit">[�̷��Թ�] 2025 �ſ��� ������ STEP1.�̷��Թ�: �ʼ�������</span>
                            <span class="name">������&nbsp;�ſ���</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21826" title="���� ������">
                            <i class="open ">����</i>
                            <span class="tit">[���̳�] 2024 ������ ȸ���� �����/������ ��� 9�� ������ Ư��(���� K-IFRS ���� ������+OX ����Ǯ��)</span>
                            <span class="name">ȸ����&nbsp;������</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21865" title="���� ������">
                            <i class="open ">����</i>
                            <span class="tit">2025 ���ؿ��� �� �뺣�̽� ����</span>
                            <span class="name">����&nbsp;�ڳ���</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21944" title="���� ������">
                            <i class="open ">����</i>
                            <span class="tit">[����/�Թ�] 2025 ���ֿ� �������ѷ� &lt;������SŸƮ&gt;</span>
                            <span class="name">������&nbsp;���ֿ�</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21979" title="���� ������">
                            <i class="open ">����</i>
                            <span class="tit">2025 ������ �����Թ� �����̽�(Rebase)(6�� ����)</span>
                            <span class="name">����&nbsp;������</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21874" title="���� ������">
                            <i class="open ">����</i>
                            <span class="tit">&lt;������&gt;[4��ȯ] 2024 ���¼� POINT �ι� �ٽ����� ������</span>
                            <span class="name">�ι�&nbsp;���¼�</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21965" title="���� ������">
                            <i class="open ">����</i>
                            <span class="tit">[9��] 2025 ��ȯ �ѱ��� �ϱ⻧ ���� ������ (�Թ�) </span>
                            <span class="name">�ѱ���&nbsp;��ȯ</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21966" title="���� ������">
                            <i class="open ">����</i>
                            <span class="tit">2024 �ڼ��� ���� ������ ������_����/��ĭ ������� Ư��</span>
                            <span class="name">����&nbsp;�ڼ���</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21749" title="���� ������">
                            <i class="open ">����</i>
                            <span class="tit">[���̳�] ������ 2024 ��ȸ�����а��� ������ ������ FINAL</span>
                            <span class="name">��ȸ������&nbsp;������</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21939" title="���� ������">
                            <i class="open ">����</i>
                            <span class="tit">[9��] [Ư��] 2025 ���ѱ� �ѱ��� �ʱ��Ʈ ����</span>
                            <span class="name">�ѱ���&nbsp;���ѱ�</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21806" title="���� ������">
                            <i class="open yet">����<br>����</i>
                            <span class="tit">[����] 2024 ���ȣ ��� ���հݳ�Ʈ �ٽ� ���</span>
                            <span class="name">���&nbsp;���ȣ</span>
                        </a>
                    </div>
                </div>

                <div id="monthnew_scroll" class="monthnew_slider scroll">
            
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21875" title="���� ������">
                            <i class="open ">����</i>
                            <span class="tit">[Ư��] 2024��� ���¼� POINT �ι� �ֽ� �Ƿ� ����</span>
                            <span class="name">�ι�&nbsp;���¼�</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21849" title="���� ������">
                            <i class="open ">����</i>
                            <span class="tit">[���̳�] 2024 ��ȯ �ѱ��� ������ ��� �۵� ���ǰ��</span>
                            <span class="name">�ѱ���&nbsp;��ȯ</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21850" title="���� ������">
                            <i class="open ">����</i>
                            <span class="tit">[Ư��] 2024 ��ȯ �ѱ��� ������ ��� �۵�Ư�� ��Ʈ��</span>
                            <span class="name">�ѱ���&nbsp;��ȯ</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21861" title="���� ������">
                            <i class="open ">����</i>
                            <span class="tit">2024 ������ ���ϸ� ��ƾ Advanced8 : ����� �ᱹ ������ ��ƾ���� �ϼ��ϴ� ��</span>
                            <span class="name">����&nbsp;������</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21817" title="���� ������">
                            <i class="open ">����</i>
                            <span class="tit">[Ư��] 2024 �۾Ƹ� ��ȣ���� ����ġ�� Ư��</span>
                            <span class="name">��ȣ����&nbsp;�۾Ƹ�</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21818" title="���� ������">
                            <i class="open ">����</i>
                            <span class="tit">[Ư��] 2024 �۾Ƹ� ������ȸ��ȣ ����ġ�� Ư��</span>
                            <span class="name">������ȸ��ȣ&nbsp;�۾Ƹ�</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21832" title="���� ������">
                            <i class="open ">����</i>
                            <span class="tit">2025 ������ ���� �� ���� �˰��� ��Ű�� SCHEMA</span>
                            <span class="name">����&nbsp;������</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21848" title="���� ������">
                            <i class="open ">����</i>
                            <span class="tit">[���̳�] 2024 ������ ��� �̻��� ������ ���� ���� ���ǰ��</span>
                            <span class="name">������&nbsp;�̻���</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21960" title="���� ������">
                            <i class="open ">����</i>
                            <span class="tit">2025 ������ ������� ���� ȨƮ_������� ���� ������Ʈ��</span>
                            <span class="name">����&nbsp;������</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21808" title="���� ������">
                            <i class="open ">����</i>
                            <span class="tit">[9��] [�Թ�] 2025 ���ѱ� �ѱ��� 1.0 �Թ�</span>
                            <span class="name">�ѱ���&nbsp;���ѱ�</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21833" title="���� ������">
                            <i class="open ">����</i>
                            <span class="tit">2025 ������ ���� �� ���� �˰��� ������ DEEP LEARNING</span>
                            <span class="name">����&nbsp;������</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21872" title="���� ������">
                            <i class="open ">����</i>
                            <span class="tit">[������] 2024 ��뿵�� ��DAY���� ���� ���ǰ��</span>
                            <span class="name">����&nbsp;��뿵</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21811" title="���� ������">
                            <i class="open ">����</i>
                            <span class="tit">[�̷��Թ�] 2025 �ſ��� ������ STEP1.�̷��Թ�: �ʼ�������</span>
                            <span class="name">������&nbsp;�ſ���</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21826" title="���� ������">
                            <i class="open ">����</i>
                            <span class="tit">[���̳�] 2024 ������ ȸ���� �����/������ ��� 9�� ������ Ư��(���� K-IFRS ���� ������+OX ����Ǯ��)</span>
                            <span class="name">ȸ����&nbsp;������</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21865" title="���� ������">
                            <i class="open ">����</i>
                            <span class="tit">2025 ���ؿ��� �� �뺣�̽� ����</span>
                            <span class="name">����&nbsp;�ڳ���</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21944" title="���� ������">
                            <i class="open ">����</i>
                            <span class="tit">[����/�Թ�] 2025 ���ֿ� �������ѷ� &lt;������SŸƮ&gt;</span>
                            <span class="name">������&nbsp;���ֿ�</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21979" title="���� ������">
                            <i class="open ">����</i>
                            <span class="tit">2025 ������ �����Թ� �����̽�(Rebase)(6�� ����)</span>
                            <span class="name">����&nbsp;������</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21874" title="���� ������">
                            <i class="open ">����</i>
                            <span class="tit">&lt;������&gt;[4��ȯ] 2024 ���¼� POINT �ι� �ٽ����� ������</span>
                            <span class="name">�ι�&nbsp;���¼�</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21965" title="���� ������">
                            <i class="open ">����</i>
                            <span class="tit">[9��] 2025 ��ȯ �ѱ��� �ϱ⻧ ���� ������ (�Թ�) </span>
                            <span class="name">�ѱ���&nbsp;��ȯ</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21966" title="���� ������">
                            <i class="open ">����</i>
                            <span class="tit">2024 �ڼ��� ���� ������ ������_����/��ĭ ������� Ư��</span>
                            <span class="name">����&nbsp;�ڼ���</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21749" title="���� ������">
                            <i class="open ">����</i>
                            <span class="tit">[���̳�] ������ 2024 ��ȸ�����а��� ������ ������ FINAL</span>
                            <span class="name">��ȸ������&nbsp;������</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21939" title="���� ������">
                            <i class="open ">����</i>
                            <span class="tit">[9��] [Ư��] 2025 ���ѱ� �ѱ��� �ʱ��Ʈ ����</span>
                            <span class="name">�ѱ���&nbsp;���ѱ�</span>
                        </a>
                    </div>
                
                    <div class="item">
                        <a href="/vod/vod_chr_view.asp?chr_cd=21806" title="���� ������">
                            <i class="open yet">����<br>����</i>
                            <span class="tit">[����] 2024 ���ȣ ��� ���հݳ�Ʈ �ٽ� ���</span>
                            <span class="name">���&nbsp;���ȣ</span>
                        </a>
                    </div>
                
                </div>
            </div>

        </div><!-- / cont_wrap -->
    </div>
  </div>
</div>`;

const css = ``;

const excCss = `.main_wrp .wide_wrap.first{min-height:279px;}`;

const js = `/* --- S: �̴��� �� ���� �����̴� --- */ 
var monthNewSlider = undefined;
var monthNewTimer = null;

function initMonthNewSlider(runSlick) {
    if ( runSlick && monthNewSlider == undefined ) {
        //console.log('>> slick')
        $('#monthnew_slider').show(0);
        monthNewSlider = $('#monthnew_slider').not('.slick-initialized').slick({
            slidesToShow: 1,
            slidesPerRow: 2,
            slidesToScroll: 1,
            arrows: false,
            vertical: true,
            infinite: true,
            speed: 500,
            autoplaySpeed: 3000,
            autoplay: true,
            dots: false,
            responsive: [{
                breakpoint: 769,
                settings: {
                    slidesPerRow: 1,
                }
            }]
        });
    } else if ( !runSlick && monthNewSlider != undefined  ) {
        //console.log('>> unslick')
        $('#monthnew_slider').hide(0);
        monthNewSlider.slick('unslick');
        monthNewSlider = undefined;
    }
}

initMonthNewSlider($(window).width() > 1200);

$(window).on('resize', function(){
    if($(window).width() <= 1200) { 
        clearTimeout(monthNewTimer);
        monthNewTimer = setTimeout(function() {
            $('.main_monthNew').removeClass('on');
            initMonthNewSlider(false);
        }, 50);
    } 
    if($(window).width() > 1200) { 
        clearTimeout(monthNewTimer);
        monthNewTimer = setTimeout(function() {
            initMonthNewSlider(true);
        }, 50);
    }
});
/* --- E: �̴��� �� ���� �����̴� --- */ 

/* --- S: �̴��� �� ���� onoff --- */ 
$('.main_monthNew .arrow').on('click', function(){
    if ( !$('.main_monthNew').hasClass('on') ) {
        $('.main_monthNew').addClass('on');
        initMonthNewSlider(false);
    }else{
        $('.main_monthNew').removeClass('on');
        initMonthNewSlider(true);
    }
});
/* --- E: �̴��� �� ���� onoff --- */ 

/* --- S: �ܺο��� Ŭ�� �� �˾� �ݱ� --- */ 
$(document).on('click', function(e){
    if($('.main_monthNew').has(e.target).length == 0) {
        $('.main_monthNew').removeClass('on');
        initMonthNewSlider(true);
    }
});
/* --- E: �ܺο��� Ŭ�� �� �˾� �ݱ� --- */ `;

    return (
      <PageContent
        title={title}
        desc=""
        image="/images/demo/main_banner_monthnew.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["�� ���� �� ����","���ι��"]}
        link="<%=url_main%>/megagong.asp"
        onChange={onChange}
      />
    )
  }
</script>