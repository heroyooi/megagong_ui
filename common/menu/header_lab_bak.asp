<%
'BOS_BID �� ���� (gongcam_news -> news_and_strategy) �� �Խ��� ������ ���� �߰� (2021.07.27)
gongcam_news_new = false
strSql = ""
strSql = strSql & " SELECT TOP 1 CONVERT(VARCHAR(10), BOS_WRITE_DATE, 102) FROM MS_BRD_ON_SL with (nolock) WHERE BOS_BID='news_and_strategy' AND BOS_SITE_SHOW IN ('all', '3') AND BOS_EXTRA2 = '0' ORDER BY BOS_WRITE_DATE DESC "
Set objrs = dbexec(strsql, "study")
If Not (objrs.eof And objrs.bof) Then 
    bos_write_date = objrs(0)
    If DATEDIFF("D",(Replace(bos_write_date,".","-")),DATE) <= 7 Then
        gongcam_news_new = true
    End If	
End If 
Call dbclose(objrs)
%>




 
<div id="header-wrap">
    <div class="hd-box">
        <h1 class="hd-logo center">
            <a href="/" title="�ް������� �հ����������� ���������� �ٷΰ���">
                <img src="<%=img_main%>/lab/common/logo.png" alt="�ް������� �հ�����������" class="pc-view">
                <img src="<%=img_main%>/lab/common/logo_mo.png" alt="�ް������� �հ�����������" class="mo-view">
            </a>
        </h1>
        <div class="hd-right-bnr pc-view">
            <div class="dday-bnr"><b>������ 7��</b><span>D-100</span></div>
        </div>
    </div>


    <!-- hd-utility / S -->
    <div id="header-utility" class="hd-utility">
        <h2 class="blindw">�ް������� �հ����������� �޴�</h2>
        <nav role="navigation" class="nav">
            <div class="">
                <ul class="menu-wrap clearfix">
                    <li><a class="menu on" href="javascript:;" title="������">������</a></li>
                    <li><a class="menu" href="javascript:;" title="�ҹ�">�ҹ�</a></li>
                    <li><a class="menu" href="javascript:;" title="������">������</a></li>
                </ul>
                <div class="pc-menu-wrap pc-view">
                    <div class="lab-menu gong"><!--�߰� Ŭ������: //��:gong ��:army ��:sobang-->
                        <!-- ������ S -->
                        <ul class="depth-wrap1 on clearfix">
                            <li>
                                <a href="javascript:;" class="depth1<%If instr(1, NowUrl, "/l/gong/guide.asp") > 0 or instr(1, NowUrl, "/l/gong/schedule.asp") > 0 or instr(1, NowUrl, "/l/gong/series.asp") > 0 Then%> current<%End if%>">������ ���̵�</a>
                                <ul class="depth-wrap2">
                                    <li class="depth2"><a href="javascript:;">��������<i></i></a></li>
                                    <li <% if instr(1, NowUrl, "/l/gong/guide.asp") > 0 Then %>class="current"<% End if %>><a href="/l/gong/guide.asp">��������</a></li>
                                    <li <% if instr(1, NowUrl, "/l/gong/schedule.asp") > 0 Then %>class="current"<% End if %>><a href="/l/gong/schedule.asp">��������</a></li>
                                    <li <% if instr(1, NowUrl, "/l/gong/series.asp") > 0 Then %>class="current"<% End if %>><a href="/l/gong/series.asp">��������</a></li>
                                    <li><a href="javascript:;">������ ����Ž������</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="javascript:;" class="depth1">������</a>
                                <ul class="depth-wrap2">
                                    <li class="depth2"><a href="javascript:;">9�� ������<i></i></a></li>
                                    <li><a href="<%=url_main%>/exam/basic/gong_3/index.asp#eventWrap" target="_blank">9�� ������</a></li>
                                    <li><a href="<%=url_main%>/exam/basic/gong_4/index.asp#eventWrap" target="_blank">PSAT ������</a></li>
                                </ul>
                            </li>
                
                            <li>
                                <a href="javascript:;" class="depth1">�հ�����</a>
                                <ul class="depth-wrap2">
                                    <li class="depth2"><a href="javascript:;">�հ������÷�<i></i></a></li>
                                    <li <% if instr(1, NowUrl, "/l/gong/news/list.asp") > 0 Then %>class="current"<% End if %>><a href="/l/gong/news/list.asp">�հ������÷�</a></li>
                                    <% if 1 = 2  then %><li><a href="javascript:;">��������(���� �� ���¿���)</a></li><% end if %>
                                    <li <% if instr(1, NowUrl, "/l/gong/strategy/list.asp") > 0 Then %>class="current"<% End if %>><a href="/l/gong/strategy/list.asp">���� �н�����</a></li>
                                    <li <% if instr(1, NowUrl, "/l/gong/nangongtv/list.asp") > 0 Then %>class="current"<% End if %>><a href="/l/gong/nangongtv/list.asp">����TV</a></li>
                                    <li <% if instr(1, NowUrl, "/l/gong/followm.asp#mContainer") > 0 Then %>class="current"<% End if %>><a href="/l/gong/followm.asp#mContainer">Follow M</a></li>
                                    <li <% if instr(1, NowUrl, "/l/gong/pass_opinion/index.asp") > 0 Then %>class="current"<% End if %>><a href="/l/gong/pass_opinion/index.asp">�հݼ���</a></li>
                                </ul>
                            </li>
                
                            <li>
                                <a href="javascript:;" class="depth1">���� ����</a>
                                <ul class="depth-wrap2">
                                    <li class="depth2"><a href="javascript:;">Pass Mate<i></i></a></li>
                                    <li><a href="<%=url_main%>/s/gong/examinfo/passmate/list.asp#mContainer" target="_blank">Pass Mate</a></li>
                                </ul>
                            </li>
                
                            <li>
                                <a href="javascript:;" class="depth1">�հ��� ���</a>
                                <ul class="depth-wrap2">
                                    <li class="depth2"><a href="javascript:;">�����&�հݼ�<i></i></a></li>
                                    <li <% if instr(1, NowUrl, "/l/gong/pass.asp") > 0 Then %>class="current"<% End if %>><a href="/l/gong/pass.asp">�����&�հݼ�</a></li>
                                    <li <% if instr(1, NowUrl, "/l/gong/statistic_2022.asp") > 0 Then %>class="current"<% End if %>><a href="/l/gong/statistic_2022.asp">�հ��� �м�</a></li>
                                </ul>
                            </li>
                
                            <li>
                                <a href="javascript:;" class="depth1">�������&����</a>
                                <ul class="depth-wrap2">
                                    <li class="depth2"><a href="javascript:;">�������<i></i></a></li>
                                    <!--�հ�����Į�� �� �и��� ���ϻ��� �ʿ�-->
                                    <li <% if instr(1, NowUrl, "/l/gong/news/list.asp") > 0 Then %>class="current"<% End if %>><a href="/l/gong/news/list.asp">�������</a></li>
                                    <li <% if instr(1, NowUrl, "/l/gong/news/list.asp") > 0 Then %>class="current"<% End if %>><a href="/l/gong/news/list.asp">���贺��</a></li>
                                </ul>
                            </li>
                
                            <li>
                                <a href="javascript:;" class="depth1">���⹮��</a>
                                <ul class="depth-wrap2">
                                    <li class="depth2"><a href="javascript:;">���⹮��<i></i></a></li>
                                    <li <% if instr(1, NowUrl, "/l/gong/library/list.asp") > 0 Then %>class="current"<% End if %>><a href="/l/gong/library/list.asp">���⹮��</a></li>
                                    <li><a href="<%=url_main%>/s/gong/examinfo/explain/explain.asp?dt=20220618" target="_blank">�ؼ�����&����</a></li>
                                    <li <% if instr(1, NowUrl, "/l/gong/analysis/index.asp") > 0 Then %>class="current"<% End if %>><a href="/l/gong/analysis/index.asp">��������м�</a></li>
                                </ul>
                            </li>
                        </ul>
                        <!-- ������ E -->

                        <!-- ������ S -->
                        <!-- ������ E -->

                        <!-- �ҹ� S -->
                        <!-- �ҹ� E -->
                    </div>
                </div>
                <div class="mo-menu-wrap mo-view">
                    <div class="mo-swiper-wrap">
                        <div class="mo-swiper-menu_wrap">
                            <div class="mo-swiper-menu_inner">
                                <div class="mo-swiper-menu swiper-container">
                                    <div class="swiper-wrapper">
                                        <!-- ������ S -->
                                        <div class="swiper-slide<%If instr(1, NowUrl, "/l/gong/guide.asp") > 0 or instr(1, NowUrl, "/l/gong/schedule.asp") > 0 or instr(1, NowUrl, "/l/gong/series.asp") > 0 Then%> on<%End if%>"><a href="#">������ ���̵�</a></div>
                                        <div class="swiper-slide <% If 1=2 Then %>on<% End if %>"><a href="#">������</a></div>
                                        <div class="swiper-slide <% If 1=2 Then %>on<% End if %>"><a href="#">�հ�����</a></div>
                                        <div class="swiper-slide <% If 1=2 Then %>on<% End if %>"><a href="#">���� ����</a></div>
                                        <div class="swiper-slide <% If 1=2 Then %>on<% End if %>"><a href="#">�հ��� ���</a></div>
                                        <div class="swiper-slide <% If 1=2 Then %>on<% End if %>"><a href="#">�������&amp;����</a></div>
                                        <div class="swiper-slide <% If 1=2 Then %>on<% End if %>"><a href="#">���⹮��</a></div>
                                        <!-- ������ E -->

                                        <!-- ������ S -->
                                        <!-- ������ E -->

                                        <!-- �ҹ� S -->
                                        <!-- �ҹ� E -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="mo-depth-wrap"></div>
                </div>
            </div>
        </nav>
        <div class="gnbbg-wrap gnbbg-wrap"><div class="bgArea"></div></div>
    </div>
    <!-- hd-utility / E -->
</div>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.3.5/css/swiper.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.3.5/js/swiper.js"></script>
<script type="text/javascript">
    var $pc_menu = $('.pc-menu-wrap');
    $('.pc-menu-wrap').each(function(){
        $(this).find('.depth-wrap1 > li').each(function(){
            $(this).closest('.pc-menu-wrap').next('.mo-menu-wrap').find('.mo-depth-wrap').append($(this).find('.depth-wrap2').clone());
        });
    });
    var mo_swiper_menu = new Swiper('.mo-swiper-menu', {
        slidesPerView: 'auto',
        observer: true,
        observeParents: true,
        observeSlideChildren: true,
        // scrollbar: {
        //     el: '.mo-swiper-menu .swiper-scrollbar',
        //     draggable: true,
        // },
    });

    var mo_swiper_menu_slide = $('.mo-swiper-menu .swiper-slide');
    mo_swiper_menu_slide.find('a').on('click', function(e){
        e.preventDefault();
        var activeIndex = mo_swiper_menu_slide.find('a').index(this);
        var mo_this_swiper_slide = $(this).closest('.swiper-slide')
        //��Ŭ�� ����
        if( mo_this_swiper_slide.hasClass('on')){
            mo_this_swiper_slide.removeClass('on');
            $('.mo-depth-wrap').children('.depth-wrap2').css('display', 'none');
            $(".depth2").removeClass("on");
            $('.depth-wrap1').children('li').children('a').removeClass('on');
        //���
        }else{
            mo_swiper_menu_slide.removeClass("on");
            mo_this_swiper_slide.addClass('on');
            mo_this_swiper_slide.siblings().removeClass('on');
            $(".depth2").removeClass("on");
            mo_swiper_menu.slideTo(activeIndex);
            $('.mo-depth-wrap').children('.depth-wrap2').css('display', 'none');
            $('.mo-depth-wrap').children('.depth-wrap2').eq(activeIndex).css('display', 'block');
            $('.depth-wrap1').children('li').eq(activeIndex).siblings().children('a').removeClass('on');
            $('.depth-wrap1').children('li').eq(activeIndex).children('a').addClass('on');
        }
    });

    var _thisBgWrap = $('.gnbbg-wrap');
    var _thisNavBg = $(".nav > div")
    var $depth1 = $pc_menu.find(".depth1");
    var $depth2 = $(".depth2");

    function foldMenu() {
        _thisBgWrap.hide();
        _thisNavBg.css("height",190)
    }   

    function openMenu() {
        _thisBgWrap.show();
        _thisNavBg.css("height",'auto')
    }
    
    $depth1.on('click', function(e){
        var _this = $(this);
        e.preventDefault();
        
        if(_this.hasClass('on')){
            _this.removeClass("on");
            _thisBgWrap.hide();
            _thisNavBg.css("height","auto")
        }else{
            foldMenu()
            $depth1.removeClass("on");
            $(".depth2").removeClass("on");
            _this.addClass("on");
            var activeIndex = $depth1.index(this);
            $('.mo-swiper-menu .swiper-slide').eq(activeIndex).addClass('on');
            $('.mo-swiper-menu .swiper-slide').eq(activeIndex).siblings().removeClass('on');
            mo_swiper_menu.slideTo(activeIndex);
        }
    });

    $depth2.on('click', function(){
        var _this = $(this);
        var _thisDepth2Warp = _this.closest('.depth-wrap2')
        var _thisOtherDepth2 = _thisDepth2Warp.children('li:not(.depth2)');

        if(_this.hasClass('on')){
            _this.removeClass('on');
            _thisNavBg.css("height",190)
            _thisBgWrap.hide();
            _thisBgWrap.css('height', 'auto');
        }else{
            openMenu();
            $depth2.removeClass('on');
            _this.addClass('on');	
            _thisBgWrap.css('height', $(this).closest('.depth-wrap2').outerHeight() + 50);
        };
 
        //�޴� �ٽ� ����
        if(_this2.hasClass('on2')){
            openMenu();
            _thisOtherDepth2.show();
            _thisDepth2Warp.children('.depth2').removeClass('on2');
            $('.depth2').addClass('on');
        }

        _thisDepth2Warp.on("click", "li:not(.depth2)", function() {
            $('.depth2').removeClass('on');
            _thisDepth2Warp.children('.depth2').html($(this).html());
            
            //�ٽ� ����
            _thisDepth2Warp.children('.depth2').addClass('on2')
            _thisOtherDepth2.hide();
            foldMenu()
        });		

    });

    $(window).on('load', function(){
        var $target = $('.pc-menu-wrap').eq(0).find('.depth-wrap2 li.current');
        $target.closest('.depth-wrap2').find('.depth2 a').text($target.children('a').text());

        if ($('#headertop .depth1.current').length) {
            $('#headertop .depth1.current').click();
        }
    })

    $(window).on('load resize', function(){
        var activeIndex = $('.mo-swiper-menu .swiper-slide.on').index();
        if (activeIndex) {
            mo_swiper_menu.slideTo(activeIndex, 0);
            
        }
        //$('.mo-depth-wrap').children('.depth-wrap2').eq(activeIndex).css('display', 'block');
    });

    // ����1
    function activeDp1Menu(index) {}
    function noActiveDp1Menu(index) {}

    // ����2
    function activeDp2Menu(index) {}
    function noActiveDp2Menu(index) {}

    // ����3
    function activeDp3Menu(index) {}
    function noActiveDp3Menu(index) {}
</script>