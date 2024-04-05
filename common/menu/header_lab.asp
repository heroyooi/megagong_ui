<%

Dim subUrl
subUrl = "/l/" + h_gubn

%>

<div id="hd-wrp">
    <h1 class="hd-logo center">
        <a href="/" title="메가공무원 합격전략연구소 메인페이지 바로가기">
            <img src="<%=img_main%>/lab/common/logo.png" alt="메가공무원 합격전략연구소" class="pc-view">
            <img src="<%=img_main%>/lab/common/logo_mo.png" alt="메가공무원 합격전략연구소" class="mo-view">
        </a>
    </h1>

    <!-- hd-utility / S -->
    <div class="hd-utility">
        <h2 class="blindw">메가공무원 합격전략연구소 메뉴</h2>
            <div class="dday-slider pc-view <%=h_gubn%>">
                <div><b>지방직 7급</b> <span>D-100</span></div>
                <div><b>ㅇㅇ직 8급</b> <span>D-100</span></div>
                <div><b>ㄴㄴ직 9급</b> <span>D-100</span></div>
            </div>
        <nav role="navigation" class="nav">
        
            <ul class="depth1-wrp <%=h_gubn%>">
                <li><a class="<%if h_dcd = "4" then%> on <%end if%>" href="javascript:void(0);" onclick="labMain(4);" title="공무원">공무원</a></li>
                <li><a class="<%if h_dcd = "3" then%> on <%end if%>" href="javascript:void(0);" onclick="labMain(3);" title="소방">소방</a></li>
                <li><a class="<%if h_dcd = "5" then%> on <%end if%>" href="javascript:void(0);" onclick="labMain(5);" title="군무원">군무원</a></li>
            </ul>
            <script>
                function labMain(g) {
                    $.post("/common/menu/setCookie_ax.asp?mode=lab&g="+g, function(data){
                        document.location.href = "<%=lab_main + "/megagong.asp"%>";
                    });
                }
            </script>
            <div class="depth2-wrp">
                <div class="<%=h_gubn%>"><!--추가 클래스명: //공:gong 군:army 소:sobang-->
                    <div class="depth2-swiper swiper-container">
                        <div class="swiper-wrapper">
                            <!-- 공무원 S -->
                            <div class="swiper-slide<%If instr(1, NowUrl, "/guide/") > 0 Then%> on<%End if%>">
                                <a href="<%=subUrl%>/guide/guide.asp">공무원 가이드</a>
                            </div>
                            
                            <div class="swiper-slide">
                                <a href="<%=url_main%>/exam/basic/gong_3/index.asp#eventWrap" target="_blank">진단평가</a>
                            </div>

                            <div class="swiper-slide <%If instr(1, NowUrl, "/news/") > 0 or instr(1, NowUrl, "/strategy/") > 0 or instr(1, NowUrl, "/nangongtv/") > 0 or instr(1, NowUrl, "/followm/") > 0 or instr(1, NowUrl, "/pass_opinion/") > 0 Then%> on<%End if%>">
                                <a href="<%=subUrl%>/news/list.asp">합격전략</a>
                            </div>
                            
                            <div class="swiper-slide">
                                <a href="<%=url_main%>/s/gong/examinfo/passmate/list.asp#mContainer" target="_blank">수험 상담실</a>
                            </div>

                            <div class="swiper-slide <%If instr(1, NowUrl, "/statistic/") > 0 Then%> on<%End if%>">
                                <a href="<%=subUrl%>/statistic/pass.asp">합격자 통계</a>
                            </div>
                            
                            <div class="swiper-slide <%If instr(1, NowUrl, "/news/") > 0 Then%> on<%End if%>">
                                <a href="<%=subUrl%>/news/list.asp">시험공고&amp;뉴스</a>
                            </div>
                            
                            <div class="swiper-slide <%If instr(1, NowUrl, "/library/") > 0 or instr(1, NowUrl, "/analysis/") > 0 Then%> on<%End if%>">
                                <a href="<%=subUrl%>/library/list.asp">기출문제</a>
                            </div>
                            <!-- 공무원 E -->

                        <% if h_gubn = "sobang" then %>
                            <!-- 소방 S -->
                            <!-- 소방 E -->
                        <% end if %>

                        <% if h_gubn = "army" then %>
                            <!-- 군무원 S -->
                            <!-- 군무원 E -->
                        <% end if %>
                        </div>
                    </div>
                </div>
            </div>

            
            
            <div class="depth3-wrp" <% if instr(1, NowUrl, "/l/") > 0 Then %>style="min-height: 40px;"<% End if %>>
                <ul class="depth3-box">
                    <li class="depth3"><a href="javascript:;">시험제도<i></i></a></li>
                    <li <% if instr(1, NowUrl, "/guide/guide.asp") > 0 Then %>class="current"<% End if %>><a href="<%=subUrl%>/guide/guide.asp">시험제도</a></li>
                    <li <% if instr(1, NowUrl, "/guide/schedule.asp") > 0 Then %>class="current"<% End if %>><a href="<%=subUrl%>/guide/schedule.asp">시험일정</a></li>
                    <li <% if instr(1, NowUrl, "/guide/series.asp") > 0 Then %>class="current"<% End if %>><a href="<%=subUrl%>/guide/series.asp">모집정보</a></li>
                    <li><a href="javascript:void(0);">전지적 직렬탐구시점</a></li>
                </ul>
                <ul class="depth3-box">
                    <li class="depth3"><a href="javascript:;">9급 진단평가<i></i></a></li>
                    <li><a href="<%=url_main%>/exam/basic/gong_3/index.asp#eventWrap" target="_blank">9급 진단평가</a></li>
                    <li><a href="<%=url_main%>/exam/basic/gong_4/index.asp#eventWrap" target="_blank">PSAT 진단평가</a></li>
                </ul>
                <ul class="depth3-box">
                    <li class="depth3"><a href="javascript:;">합격전략컬럼<i></i></a></li>
                    <li <% if instr(1, NowUrl, "/news/list.asp") > 0 Then %>class="current"<% End if %>><a href="<%=subUrl%>/news/list.asp">합격전략컬럼</a></li>
                    <% if 1 = 2  then %><li><a href="javascript:;">문제은행(구축 후 오픈예정)</a></li><% end if %>
                    <li <% if instr(1, NowUrl, "/strategy/list.asp") > 0 Then %>class="current"<% End if %>><a href="<%=subUrl%>/strategy/list.asp">과목별 학습전략</a></li>
                    <li <% if instr(1, NowUrl, "/nangongtv/list.asp") > 0 Then %>class="current"<% End if %>><a href="<%=subUrl%>/nangongtv/list.asp">난공TV</a></li>
                    <li <% if instr(1, NowUrl, "/followm/followm.asp#mContainer") > 0 Then %>class="current"<% End if %>><a href="<%=subUrl%>/followm/followm.asp#mContainer">Follow M</a></li>
                    <li><a href="<%=url_main%>/s/gong/examinfo/pass_opinion/index.asp" target="_blank">합격수기</a></li>
                </ul>
                <ul class="depth3-box">
                    <li class="depth3"><a href="javascript:;">Pass Mate<i></i></a></li>
                    <li><a href="<%=url_main%>/s/gong/examinfo/passmate/list.asp#mContainer" target="_blank">Pass Mate</a></li>
                </ul>
                <ul class="depth3-box">
                    <li class="depth3"><a href="javascript:;">경쟁률&합격선<i></i></a></li>
                    <li <% if instr(1, NowUrl, "/statistic/pass.asp") > 0 Then %>class="current"<% End if %>><a href="<%=subUrl%>/statistic/pass.asp">경쟁률&합격선</a></li>
                    <li <% if instr(1, NowUrl, "/statistic/statistic_2022.asp") > 0 Then %>class="current"<% End if %>><a href="<%=subUrl%>/statistic/statistic_2022.asp">합격자 분석</a></li>
                </ul>
                <ul class="depth3-box">
                    <li class="depth3"><a href="javascript:;">시험공고<i></i></a></li>
                    <!--합격전략칼럼 탭 분리후 파일생성 필요-->
                    <li <% if instr(1, NowUrl, "/news/list.asp") > 0 Then %>class="current"<% End if %>><a href="<%=subUrl%>/news/list.asp">시험공고</a></li>
                    <li <% if instr(1, NowUrl, "/news/list.asp") > 0 Then %>class="current"<% End if %>><a href="<%=subUrl%>/news/list.asp">수험뉴스</a></li>
                </ul>
                <ul class="depth3-box">
                    <li class="depth3"><a href="javascript:;">기출문제<i></i></a></li>
                    <li <% if instr(1, NowUrl, "/library/list.asp") > 0 Then %>class="current"<% End if %>><a href="<%=subUrl%>/library/list.asp">기출문제</a></li>
                    <li><a href="<%=url_main%>/s/gong/examinfo/explain/explain.asp?dt=20220618" target="_blank">해설강의&총평</a></li>
                    <!--off 요청 <li <% 'if instr(1, NowUrl, "/analysis/index.asp") > 0 Then %>class="current"<% 'End if %>><a href="<%=subUrl%>/analysis/index.asp">기출심층분석</a></li>-->
                </ul>
            </div>

            <div class="fulldown-wrp <%=h_gubn%>">
                <!-- 공무원 S -->
                <ul class="inner">
                    <li>
                        <ul>
                            <li><a class="<%If instr(1, NowUrl, "/guide/guide.asp") > 0 Then%> on<%End if%>" href="<%=subUrl%>/guide/guide.asp"><span>시험제도</span></a></li>
                            <li><a class="<%If instr(1, NowUrl, "/guide/schedule.asp") > 0 Then%> on<%End if%>" href="<%=subUrl%>/guide/schedule.asp"><span>시험일정</span></a></li>
                            <li><a class="<%If instr(1, NowUrl, "/guide/series.asp") > 0 Then%> on<%End if%>" href="<%=subUrl%>/guide/series.asp"><span>모집정보</span></a></li>
                            <li><a class="" href="javascript:;"><span>전지적 직렬탐구</span></a></li>
                        </ul>
                    </li>
                    <li>
                        <ul>
                            <li><a class="" href="<%=url_main%>/exam/basic/gong_3/index.asp#eventWrap" target="_blank"><span>9급 진단평가</span></a></li>
                            <li><a class="" href="<%=url_main%>/exam/basic/gong_4/index.asp#eventWrap" target="_blank"><span>PSAT 진단평가</span></a></li>
                        </ul>
                    </li>
                    <li>
                        <ul>
                            <li><a class="<%If instr(1, NowUrl, "/news/list.asp") > 0 Then%> on<%End if%>" href="<%=subUrl%>/news/list.asp"><span>합격전략 컬럼</span></a></li>
                            <li><a class="<%If instr(1, NowUrl, "/strategy/list.asp") > 0 Then%> on<%End if%>" href="<%=subUrl%>/strategy/list.asp"><span>과목별 학습전략</span></a></li>
                            <li><a class="<%If instr(1, NowUrl, "/nangongtv/list.asp") > 0 Then%> on<%End if%>" href="<%=subUrl%>/nangongtv/list.asp"><span>난공TV</span></a></li>
                            <li><a class="<%If instr(1, NowUrl, "/followm/followm.asp#mContainer") > 0 Then%> on<%End if%>" href="<%=subUrl%>/followm/followm.asp#mContainer"><span>Follow M</span></a></li>
                            <li><a href="<%=url_main%>/s/gong/examinfo/pass_opinion/index.asp" target="_blank"><span>합격수기</span></a></li>
                        </ul>
                    </li>
                    <li>
                        <ul>
                            <li><a class="" href="<%=url_main%>/s/gong/examinfo/passmate/list.asp#mContainer" target="_blank"><span>PASS MATE</span></a></li>
                        </ul>
                    </li>
                    <li>
                        <ul>
                            <li><a class="<%If instr(1, NowUrl, "/statistic/pass.asp") > 0 Then%> on<%End if%>" href="<%=subUrl%>/statistic/pass.asp"><span>경쟁률&합격선</span></a></li>
                            <li><a class="<%If instr(1, NowUrl, "/statistic/statistic_2022.asp") > 0 Then%> on<%End if%>" href="<%=subUrl%>/statistic/statistic_2022.asp"><span>합격자 분석</span></a></li>
                        </ul>
                    </li>
                    <li>
                        <ul>
                            <li><a class="<%If instr(1, NowUrl, "/news/list.asp") > 0 Then%> on<%End if%>" href="<%=subUrl%>/news/list.asp"><span>시험공고</span></a></li>
                            <li><a class="<%If instr(1, NowUrl, "/news/list.asp") > 0 Then%> on<%End if%>" href="<%=subUrl%>/news/list.asp"><span>수험뉴스</span></a></li>
                        </ul>
                    </li>
                    <li>
                        <ul>
                            <li><a class="<%If instr(1, NowUrl, "/library/list.asp") > 0 Then%> on<%End if%>" href="<%=subUrl%>/library/list.asp"><span>기출문제</span></a></li>
                            <li><a href="<%=url_main%>/s/gong/examinfo/explain/explain.asp?dt=20220618" target="_blank"><span>해설강의 & 총평</span></a></li>
                            <!--off 요청 <li><a class="<%If instr(1, NowUrl, "/analysis/index.asp") > 0 Then%> on<%End if%>" href="<%=subUrl%>/l/gong/analysis/index.asp"><span>기출심층분석</span></a></li>-->
                        </ul>
                    </li>
                </ul>
                <!-- 공무원 E -->
                <% if h_gubn = "sobang" then %>
                    <!-- 소방 S -->
                    <!-- 소방 E -->
                <% end if %>

                <% if h_gubn = "army" then %>
                    <!-- 군무원 S -->
                    <!-- 군무원 E -->
                <% end if %>                
            </div>


        </nav>
    </div>
    <!-- hd-utility / E -->
</div>
<script>
    var $ddaySlider = $('.dday-slider').slick({
        autoplay: true,
        autoplaySpeed: 3000,
        arrows: false,
        dots: false,
        infinite: true,
        vertical: true,
        verticalSwiping: true,     
        slidesToShow:1,
        direction: 'vertical',
        // pauseOnHover: false,
        touchThreshold: 100,
        pauseOnFocus: false,
    });
</script>

