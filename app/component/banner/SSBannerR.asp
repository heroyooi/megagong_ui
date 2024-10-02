<script type="text/babel">
  'use strict';

  function SSBannerR({ title, onChange }) {

const html = `<div class="pass_side_banner top_pos_ver">
    <div class="item">
        <a href="/help/notice/view.asp?idx=5203" title="�հݿ��� Ǯ���� ��/��/��/��">
            <img src="<%=img_main %>/m/2024/0926_full/main_r_bnr.png" alt="" />
        </a>
    </div>
</div>
    
<div class="wide_wrap show-1200">
    <div class="main_sky_bs_mo <%=hcode%>">
        <div class="area">
            <div class="tit-area">
                <span class="tit">2024 2�� (9/24~10/9)</span>
                <b class="b-tit">�ް��н� ȯ��/����</b>
            </div>
            <span class="btn">
                <a href="/help/refund/<%=hcode%>/index.asp#top_visual">ȯ�� ></a>
                <a href="/help/extend/<%=hcode%>/index.asp#top_visual">���� ></a>
            </span>
        </div>
    </div>
</div>

<div id="main_sky_bs" class="main_sky_bs right renew <%=hcode%> renew_0619 type_top">
    <div class="inner">

        <% if hcode = "gong" then %>

            <%'If cook_id <> "" And Mem_Union_YN = "N" And UnifySv_YN = "Y" And UnifyDb_YN = "Y" Then%>
            <div class="main_sky_banner">       
                <a href="javascript:void(0);" onclick="openNoticeUnionPopup('popupNoticeUnion')" title="���� ȸ�� ��ȯ�ϱ�">
                    <img src="<%=img_main %>/m/2024/0807_newsletter/union_bnr.png" alt="���� ȸ�� ��ȯ�ϱ�" />
                </a>
            </div><!-- .main_sky_banner -->
            <%' end if %>
	 

            <% if cdate(lo_now_date) >= cdate("2024-09-24") and cdate(lo_now_date) < cdate("2024-10-10")then %>
            <div class="main_sky_banner">
                <div class="item type2">
                    <div class="area">
                        <div class="tit-area">
                            <span class="tit">2024 2��</span>
                            <span class="b-tit">�ް��н�<br>ȯ��/����</span>
                            <span class="tit">(9/24~10/9)</span>
                        </div>
                        <span class="btn">
                            <a href="/help/refund/<%=hcode%>/index.asp#top_visual">ȯ�� ></a>
                            <a href="/help/extend/<%=hcode%>/index.asp#top_visual">���� ></a>
                        </span>
                    </div>
                </div>                    
            </div>
            <%end if%>	         
            <style>
                [class*=main_sky_bs].right.renew.renew_0619.gong .main_sky_banner.type-4 .slick-dots{right:auto;left:50%;transform:translateX(-50%);bottom: 5px;}
                [class*=main_sky_bs].right.renew.renew_0619.gong .main_sky_banner.type-4 .slick-dots .slick-active button{background:#fff;}
                [class*=main_sky_bs].right.renew.renew_0619.gong .main_sky_banner.type-4 .slick-dots button{opacity: 1;background:#808080;}
            </style>
            <div class="main_sky_banner type-4">
                <%if cdate(lo_now_date) >= cdate("2024-09-15") and cdate(lo_now_date) < cdate("2024-10-07") then%>
                <div class="item">
                    <a href="/s/gong/event/2024/09110106/index.asp#eventWrap" title="2025 ������ ���� �ø��� ���� SAB&����GS" target="_blank">
                        <img src="<%=img_main %>/m/2024/0912_tech/right_main_bnr.png" alt="" />
                    </a>
                </div>
                <% end if %>

                <%if cdate(lo_now_date) >= cdate("2024-08-08") and cdate(lo_now_date) < cdate("2024-08-23") then%>
                <div class="item">
                    <a href="/s/gong/event/2024/07040073/index.asp#event3" title="2025 ������ 16�� ���� �а� �Ǵ� ����">
                        <img src="<%=img_main %>/m/2024/0704_megamega2/main_bnr.png" alt="" />
                    </a>
                </div>
                <% end if %>

                <%if cdate(lo_now_date) >= cdate("2024-08-05") and cdate(lo_now_date) < cdate("2024-08-19") then%>
                <div class="item">
                    <a href="/event/2024/08050029/index.asp#event" title="�̾ϱ� 30% ���� ���� ��.��.��.��">
                        <img src="<%=img_main %>/m/2024/0805_ysw7/main_bnr.png" alt="" />
                    </a>
                </div>
                <% end if %>
            </div><!-- .main_sky_banner -->

            <div class="main_sky_banner">       
                <% if 1=2 then %>      
                <div class="item">
                    <a href="/s/gong/event/2024/01250013/index.asp?go=tab3" title="�ٸ� PSAT 1ȸ ���ǰ��">
                        <div class="tit-area">
                            <span class="tit">2024 <br>������ 7��<br>1�� ���</span>
                            <span class="b-tit">�ٸ� PSAT<br>1ȸ ���ǰ�� </span>
                        </div>
                        <span class="btn">�����ϱ�</span>
                    </a>
                </div>
                <% end if %>
                <% if 1=2 then %>
                <div class="item">
                    <a href="/s/gong/event/2022/12140184/index.asp#eventWrap" title="�¶��� ���ǰ�� ����.ZIP">
                        <div class="tit-area">
                            <span class="tit">���� ���� ������?</span>
                            <span class="b-tit">�¶���<br>���ǰ�� ����.<br>ZIP</span>
                        </div>
                        <span class="btn">�ڼ��� ����</span>
                    </a>
                </div>
                <% end if %>
            </div><!-- .main_sky_banner -->

            <div class="main_sky_banner">
                <% if cdate(lo_now_date) < cdate("2024-09-26") then %>
                    <div class="item">
                        <a href="/book/ebookshop.asp" title="�ް� e-����">
                            <div class="tit-area">
                                <span class="tit">�����ա��ȿ�<br>�������ǡ������<br>�հ� ����ȭ</span>
                                <span class="b-tit">�ް� e-����</span>
                            </div>
                            <span class="btn">�ڼ��� ����</span>
                        </a>
                    </div>
                    <% if cdate(lo_now_date) < cdate("2024-09-10") then%>
                    <div class="item">
                        <a href="https://www.mebook.io/" target="_blank" title="meBook �űԷ�Ī">
                            <div class="tit-area">
                                <span class="tit">���� ��𼭳� <br>�º� �ϳ��� <br>������</span>
                                <span class="b-tit">e-���� ���� ��<br>meBOOK</span>
                            </div>
                            <span class="btn">�ڼ��� ����</span>
                        </a>
                    </div>
                    <% end if %>
                <% else %>
                    <div class="item">
                        <a href="/event/2024/09260035/index.asp#eventWrap" title="E-�н��ڷ�">
                            <div class="tit-area">
                                <span class="tit">������ �� ������</span>
                                <span class="b-tit">�ް�������<br>����<br>E-�н��ڷ�</span>
                            </div>
                            <span class="btn">�ڼ��� ����</span>
                        </a>
                    </div>
                    <div class="item">
                        <a href="/book/ebookshop.asp" title="�ް� e-����">
                            <div class="tit-area">
                                <span class="tit">�����ա��ȿ�<br>�������ǡ������<br>�հ� ����ȭ</span>
                                <span class="b-tit">�ް� e-����</span>
                            </div>
                            <span class="btn">�ڼ��� ����</span>
                        </a>
                    </div>
                    <% if cdate(lo_now_date) < cdate("2024-10-15") then%>
                    <div class="item">
                        <a href="https://store.mebook.io/" target="_blank" title="meBook �űԷ�Ī">
                            <div class="tit-area">
                                <span class="tit">[EVENT] <br>�ް������� <br>���ǰ�� ���� ��</span>
                                <span class="b-tit">meBOOK�����<br>�ű� ����</span>
                            </div>
                            <span class="btn">�ڼ��� ����</span>
                        </a>
                    </div>
                    <% end if %>
                <% end if %>
            </div><!-- .main_sky_banner -->

            

            <% if cdate(lo_now_date) >= cdate("2024-09-26") then %>
            <div class="main_sky_banner type-2 no_slick" style="margin-top: 0px;"> 
                <div class="item">
                    <div class="special_sale_bnr">
                        <div class="tit-area">
                            <span class="tit">��� ������� ����</span>
                            <span class="b-tit">������ �ް��н� <br />���� ���� ����</span>
                        </div>
                        <ul>
                            <li><a href="/event/2024/02050009/index.asp#mContainer" target="_blank">�������� ������ ></a></li>
                            <% if cdate(lo_now_date) < cdate("2024-08-27 09:00") then %>
                            <li><a href="/event/2024/05270022/index.asp#mContainer" target="_blank">Ÿ�� ���� ȸ�� ></a></li>
                            <li><a href="/event/2024/05270022/index.asp#mContainer" target="_blank">������ ���л� ></a></li>
                            <% end if %>
                            <li><a href="/help/scholarship/index.asp#mContainer" target="_blank">��� �ձ� ><br>(���ҵ�/������)</a></li>
                            <li><a href="/s/gong/event/2021/09280029/index.asp#mContent" target="_blank">���� ���� ></a></li>
                        </ul>
                    </div>
                </div>

                <div class="illeg_banner type-5" style="margin-top: 10px;">
                    <a href="/help/notice/view.asp?idx=5135&cate=02&searchkey=&searchword=&page=1">
                        <div class="illeg_img">
                            <img src="<%=img_main%>/m/2024/0819_illeg/gong_pc.png" alt="" />
                        </div>
                    </a>
                    <% if cdate(lo_now_date) >= cdate("2024-08-19") then %>
                    <a href="/help/notice/view.asp?idx=4330&cate=02&searchkey=BCS_SUBJECT&searchword=%BA%D2%B9%FD&page=1" style="display:block; margin: 10px 0 0;">
                        <div class="illeg_img">
                            <img src="<%=img_main%>/m/2024/0819_pdfcamp/gong_pc.png" alt="" />
                        </div>
                    </a>
                    <% end if %>
                </div><!-- .illeg_banner -->

            </div><!-- .main_sky_banner -->
            <% end if %>

            

        <% ' / hcode = "gong" %>

        <% elseif hcode ="sobang" then %>
            
            <%'If cook_id <> "" And Mem_Union_YN = "N" And UnifySv_YN = "Y" And UnifyDb_YN = "Y" Then%>
            <div class="main_sky_banner">       
                <a href="javascript:void(0);" onclick="openNoticeUnionPopup('popupNoticeUnion')" title="���� ȸ�� ��ȯ�ϱ�">
                    <img src="<%=img_main %>/m/2024/0807_newsletter/union_bnr.png" alt="���� ȸ�� ��ȯ�ϱ�" />
                </a>
            </div><!-- .main_sky_banner -->
            <%' end if %>

            <% if cdate(lo_now_date) >= cdate("2024-09-24") and cdate(lo_now_date) < cdate("2024-10-10")then %>
            <div class="main_sky_banner">
                <div class="item type2">
                    <div class="area">
                        <div class="tit-area">
                            <span class="tit">2024 2��</span>
                            <span class="b-tit">�ް��н�<br>ȯ��/����</span>
                            <span class="tit">(9/24~10/9)</span>
                        </div>
                        <span class="btn">
                            <a href="/help/refund/<%=hcode%>/index.asp#top_visual">ȯ�� ></a>
                            <a href="/help/extend/<%=hcode%>/index.asp#top_visual">���� ></a>
                        </span>
                    </div>
                </div>                    
            </div>
            <%end if%>	   

            <div class="main_sky_banner">
                <% if cdate(lo_now_date) < cdate("2024-09-26") then%>
                    <div class="item">
                        <a href="/book/ebookshop.asp" title="�ް� e-����">
                            <div class="tit-area">
                                <span class="tit">�����ա��ȿ� <br>�������ǡ������ <br>�հ� ����ȭ</span>
                                <span class="b-tit">�ް� e-����</span>
                            </div>
                            <span class="btn">�ڼ��� ����</span>
                        </a>
                    </div>
                    <% if cdate(lo_now_date) < cdate("2024-09-10") then%>
                    <div class="item">
                        <a href="https://www.mebook.io/" target="_blank" title="�ٸ� PSAT 1ȸ ���ǰ��">
                            <div class="tit-area">
                                <span class="tit">���� ��𼭳� <br>�º� �ϳ��� <br>������</span>
                                <span class="b-tit">e-���� ���� ��<br>meBOOK</span>
                            </div>
                            <span class="btn">�ڼ��� ����</span>
                        </a>
                    </div>
                    <% end if %>
                <% else %>
                    <div class="item">
                        <a href="/event/2024/09260035/index.asp#eventWrap" title="E-�н��ڷ�">
                            <div class="tit-area">
                                <span class="tit">������ �� ������</span>
                                <span class="b-tit">�ް��ҹ�<br>����<br>E-�н��ڷ�</span>
                            </div>
                            <span class="btn">�ڼ��� ����</span>
                        </a>
                    </div>
                    <div class="item">
                        <a href="/book/ebookshop.asp" title="�ް� e-����">
                            <div class="tit-area">
                                <span class="tit">�����ա��ȿ� <br>�������ǡ������ <br>�հ� ����ȭ</span>
                                <span class="b-tit">�ް� e-����</span>
                            </div>
                            <span class="btn">�ڼ��� ����</span>
                        </a>
                    </div>
                    <% if cdate(lo_now_date) < cdate("2024-10-15") then%>
                    <div class="item">
                        <a href="https://store.mebook.io/" target="_blank" title="meBook �űԷ�Ī">
                            <div class="tit-area">
                                <span class="tit">[EVENT] <br>�ް��ҹ� <br>���ǰ�� ���� ��</span>
                                <span class="b-tit">meBOOK�����<br>�ű� ����</span>
                            </div>
                            <span class="btn">�ڼ��� ����</span>
                        </a>
                    </div>
                    <% end if %>
                <% end if %>
            </div><!-- .main_sky_banner -->

            

            <% if cdate(lo_now_date) >= cdate("2024-09-26") then %>
            <div class="main_sky_banner type-2 no_slick" style="margin-top:0px;">
                <div class="item">
                    <div class="special_sale_bnr">
                        <div class="tit-area">
                            <span class="tit">��� ������� ����</span>
                            <span class="b-tit">�ҹ� �ް��н� <br />���� ���� ����</span>
                        </div>
                        <ul>
                            <li><a href="/event/2024/02050009/index.asp#mContainer" target="_blank">�������� ������ ></a></li>
                            <% if cdate(lo_now_date) < cdate("2024-08-27 09:00") then %>
                            <li><a href="/event/2024/05270022/index.asp#mContainer" target="_blank">Ÿ�� ���� ȸ�� ></a></li>
                            <li><a href="/event/2024/05270022/index.asp#mContainer" target="_blank">������ ���л� ></a></li>
                            <% end if %>
                            <li><a href="/help/scholarship/index.asp#mContainer" target="_blank">��� �ձ� ><br>(���ҵ�/������)</a></li>
                            <li><a href="<%=url_main %>/s/gong/event/2021/09280029/index.asp#mContent" target="_blank">���� ���� ></a></li>
                        </ul>
                    </div>
                </div>

                <div class="illeg_banner type-5" style="margin-top: 10px;">
                    <a href="/help/notice/view.asp?idx=5136&cate=02&searchkey=&searchword=&page=1">
                        <div class="illeg_img">
                            <img src="<%=img_main%>/m/2024/0819_illeg/sobang_pc.png" alt="" />
                        </div>
                    </a>
                    <% if cdate(lo_now_date) >= cdate("2024-08-19") then %>
                    <a href="/help/notice/view.asp?idx=4330&cate=02" style="display:block; margin: 10px 0 0;">
                        <div class="illeg_img">
                            <img src="<%=img_main%>/m/2024/0819_pdfcamp/sobang_pc.png" alt="" />
                        </div>
                    </a>
                    <% end if %>
                </div><!-- .illeg_banner -->
            </div><!-- .main_sky_banner -->
            <% end if %>

            
            
        <% ' / hcode = "sobang" %>

        <% end if %>
    </div>
    <a href="#" class="btn_toggle_sky_bs"></a>
</div> `;

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

const excCss = `.main_sky_bs.renew{position:relative;left:0;top:0;margin:30px 0 0;}
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
        desc="�ް����������� ����ϴ� SS ��ʸ� �Ұ��մϴ�. <br />�ް������� ������������ ���� ��ܿ��� �����Ͽ� ����ϰ� ������ �ް����������� ��ϰ� �ִ� �پ��� ���������� ������ Ȯ���ϰ� ������ �� �ֽ��ϴ�."
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["SS ���","���� ��� ���"]}
        link="<%=url_main%>/megagong.asp"
        file="common\banner\right_sky_banner.asp"
        designFile="\\10.1.0.100\�������������_������ �����\�����ü��񽺽�\����������(��)\@�����ΰ��̵�"
        onChange={onChange}
      />
    )
  }
</script>