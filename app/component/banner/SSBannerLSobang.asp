<script type="text/babel">
  'use strict';

  function SSBannerLSobang({ title, onChange, simple = false }) {

const html = `<div id="main_sky_bs_left" class="main_sky_bs_left renew sobang top_re <% if (hcode = "gong" or hcode = "sobang") then %> renew_0619 dots_center <% end if %> type_top">
    <div class="inner">
        <div class="main_sky_banner">
        
            <div class="item">
                <a href="javascript:mainShow('.new_popup.sobang');" title="�ʽû� ��õ!">
                    <img src="<%=img_main %>/m/2024/0619_main/sbleft_sk_first.png" alt="������ �غ� ó���̶��?">
                </a>
            </div> 
            
        </div><!-- .main_sky_banner -->

        <div class="main_sky_banner">
            
            
            <% If cdate(lo_now_date) >= cdate("2024-09-10") then %>
            <div class="item">
                <a href="/s/sobang/event/2024/09100028/index.asp#eventWrap" title="�п� ���⸶�� �ɽ¾� ���⹮��Ǯ��" target="_blank">
                    <img src="<%=img_main%>/m/2024/0904_tmddk4521/0910/sbleft_sk_2.png" alt="�п� ���⸶�� �ɽ¾� ���⹮��Ǯ��">
                </a>
            </div>
            <% end if %>
            <% if cdate(lo_now_date) >= cdate("2024-09-04") and cdate(lo_now_date) < cdate("2024-09-10")  then %>
            <div class="item">
                <a href="/s/sobang/event/2024/09040028/index.asp#eventWrap" title="�е��� 1��* �ɽ¾� �������ǰ��">
                    <img src="<%=img_main%>/m/2024/0904_tmddk4521/sbleft_sk_2.png" alt="�е��� 1��* �ɽ¾� �������ǰ��">
                </a>
            </div>
            <% end if %>

            <% if cdate(lo_now_date) >= cdate("2024-09-01")  and cdate(lo_now_date) < cdate("2024-09-04") then %>
            <div class="item">
                <a href="/s/sobang/event/2024/06210019/index.asp#eventWrap" title="�ɽ¾�">
                    <img src="<%=img_main%>/m/2024/0808_tmddk4521/sbleft_sk_2.png" alt="�ɽ¾�">
                </a>
            </div>
            <% end if %>

            <% if cdate(lo_now_date) >= cdate("2024-09-30") and cdate(lo_now_date) < cdate("2024-10-14") then %>
            <div class="item">
                <a href="/event/2024/09050033/index.asp#eventWrap" title="2025 ���ֿ� ������ ������ ����Ǯ��">
                    <img src="<%=img_main %>/m/2024/0930_allawyer/bnr1.png" alt="2025 ���ֿ� ������ ������ ����Ǯ��">
                </a>
            </div>
            <% elseif cdate(lo_now_date) >= cdate("2024-10-14") and cdate(lo_now_date) < cdate("2024-10-28") then %>
            <div class="item">
                <a href="/event/2024/09120034/index.asp#eventWrap" title="2025 ���ֿ� ������ ������ ����Ǯ��">
                    <img src="<%=img_main %>/m/2024/0912_allawyer/bnr_1.png" alt="2025 ���ֿ� ������ ������ ����Ǯ��">
                </a>
            </div>
            <% elseif cdate(lo_now_date) >= cdate("2024-09-05") and cdate(lo_now_date) < cdate("2024-09-24") then %>
            <div class="item">
                <a href="/event/2024/09050033/index.asp#eventWrap" title="�հ����� ���� 2�� �� ���� ���, 2025 ���� ��Ʈ">
                    <img src="<%=img_main %>/m/2024/0905_allawyer/bn_tec.png" alt="�հ����� ���� 2�� �� ���� ���, 2025 ���� ��Ʈ">
                </a>
            </div>
            <% end if %>  
            
            
        </div><!-- .main_sky_banner -->
    </div>
    <a href="#" class="btn_toggle_sky_bs"></a>
</div> 



<div id="" class="main_sky_bs_left renew sobang top_re <% if (hcode = "gong" or hcode = "sobang") then %> renew_0619 dots_center <% end if %> type_bottom">
    <div class="inner">
        <div class="main_sky_banner no_slick type-2 top_re">

            <div class="tec-recruit">

                <div class="tiny-slide"></div>
                        
                <a href="http://corp.megastudy.net/bbs/board.php?tbl=bbs52#none" target="_blank"><img src="<%=img_main%>/m/common/bnr/tec_recruit_sobang_v240619.jpg" alt="���� ä��"></a>
            </div>
                
            <ul class="academy-list">
                <li><a href="<%=gongssel_main%>" target="_blank">�������п�</a></li>
                <li><a href="<%=sobangcampus_main%>" target="_blank">�ҹ��п�</a></li>
                <% if cdate(lo_now_date) >= cdate("2024-08-23") then %>
                <% else %>	
                <li><a href="<%=army_main%>/s/army/campus/index.asp" target="_blank">�������п�</a></li>
                <% end if %>
                <li><a href="<%=ansung_main%>" target="_blank">��� ������</a></li>
                <li><a href="<%=ngbr_main%>" target="_blank">���ĸ�Ÿ</a></li>
            </ul>
        </div>
    </div>
</div>`;

const css = `.main_sky_bs_mo{display: flex;border: 1px solid #89c4fc;;margin: 0 0 30px;justify-content:center;border-radius: 10px;min-height: 60px;}
.main_sky_bs_mo .area{display: flex;padding: 10px clamp(20px,4vmin,30px);justify-content:space-between;width: 100%;}
.main_sky_bs_mo .area .tit-area{display: flex;align-items: center; gap: 10px;}
.main_sky_bs_mo .area .tit{font-size: clamp(12px,3vmin,22px);}
.main_sky_bs_mo .area .b-tit{font-size: clamp(14px,3.2vmin,24px);color:#0082ff}
.main_sky_bs_mo .btn{display: flex;gap:5px}
.main_sky_bs_mo .btn a{font-size: clamp(11px,2vmin,21px);height: 100%;border: 1px solid #777;width: clamp(70px,12vmin,100px);border-radius: 3px;display: flex;justify-content:center;align-items:center;}
.main_sky_bs_mo.sobang{border-color: #fbb2bb;}
.main_sky_bs_mo.sobang .area .b-tit{color: #ed3333;}
@media screen and (max-width: 768px){
.main_sky_bs_mo .area .tit-area{flex-direction:column;align-items: flex-start;gap:0}
}
@media screen and (max-width: 576px){
.top_banner .banner_wrap{margin:0 0 20px;}
.main_sky_bs_mo{margin:0 0 20px;}
}`;

const excCss = `.main_sky_bs_left.renew{position:relative;left:0;top:0;margin:0;}
[class*=main_sky_bs].renew.renew_0619 .main_sky_banner + .main_sky_banner.type-2.top_re{margin-top:10px;}`;

const js = `$('.tiny-slide').not('.slick-initialized').slick({
    autoplay: true,
    dots:true,
    adaptiveHeight: true,
    fade:true,
    arrows: false,
});

$('.main_sky_banner:not(.no_slick)').not('.slick-initialized').slick({
    autoplay: true,
    dots:true,
    adaptiveHeight: true,
    fade:true,
    arrows: false,
});

var calcTop = 0;
$(function(){ // html �Ľ� ����
    $('.main_sky_bs_left.renew.type_bottom').css({ top: calcTop , opacity:1})
});`;

    return (
      <PageContent
        title={title}
        desc="�ް��ҹ濡�� ����ϴ� SS ��ʸ� �Ұ��մϴ�. <br />�ް��ҹ� ������������ ���� ��ܿ��� �����Ͽ� ����ϰ� ������ �ް��ҹ濡�� ��ϰ� �ִ� �پ��� ���������� ������ Ȯ���ϰ� ������ �� �ֽ��ϴ�. ����� �ϴ� �κ��� �п� ����Ʈ��� �����Ǿ� �ֽ��ϴ�."
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["SS ���","���� ��� ���","�ް��ҹ�"]}
        link="<%=sobang_main%>/megagong.asp"
        file="common\banner\right_sky_banner.asp"
        designFile="\\10.1.0.100\�������������_������ �����\�����ü��񽺽�\����������(��)\@�����ΰ��̵�"
        simple={simple}
        onChange={onChange}
      />
    )
  }
</script>