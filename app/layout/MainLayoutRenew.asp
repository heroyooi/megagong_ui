<script type="text/babel">
    'use strict';

    function MainLayoutRenew() {
      useEffect(() => {
        Lab.top();
        Lab.main();
        // Lab.showCode();

        document.querySelector('.header_wrp h1').addEventListener('click', Lab.top);

        return () => {
          $('body').removeClass('main');
          $('body').removeClass('gsap');
          $('.header_wrp').removeClass('on');
          document.querySelector('.header_wrp h1').removeEventListener('click', Lab.top);
        }
      }, []);

      return (
        <>
        <div className="megagong_main_wrap">

          <section className="sec_top sec_dark" id="Top">
            <div className="top_msg_wrp">
              
              <div className="glass"></div>

              <div className="top_msg">
                <span>MEGASTUDY - yerin</span>
                <span>MEGAGONG</span>
                <span>COMPONENT GUIDE</span>
              </div>

              <video muted autoPlay loop>
                <source src="images/back.mp4" type="video/mp4" />
              </video>
            </div>
            
          </section>

          <section className="sec_black sec_dark" id="Black">
            <div className="bk_wrp">

              <div className="bk_box_wrap">
                <div className="bk_box">
                  <img src="images/con2_img2.jpg" alt="배경이미지" />
                </div>
              </div>

              <div className="bk_msg pc">
                <p className="bk_head">컴포넌트 가이드란?
                  <span className="tit_line"></span>
                </p>
                
                <p>
                  <span>
                  컴포넌트란 재사용 가능한 웹의 구성요소를 의미하며, 
                  개발자가 다른 웹 페이지와 응용 프로그램에서 재사용 가능한 UI 구성 요소를 만들 수 있도록 돕습니다.
                  <br/><br/>
                  컴포넌트 가이드는 그러한 '웹 구성요소의 안내서' 역할을 수행하며 HTML, CSS, 자바스크립트 코드를 포함하도록 설계되었습니다.
                  기본적으로 사전 구축된 구성 요소의 라이브러리와 새 구성 요소를 생성하기 위한 지침 및 모범 사례를 제공합니다. 
                  컴포넌트 가이드 서비스의 목적은 개발자가 다양한 프로젝트와 애플리케이션에서 사용할 수 있는 재사용 가능한 UI 구성요소의 중앙 저장소를 제공하여 휠을 재창조하는 것을 방지하는 것입니다.
                  이를 통해 유지관리에 필요한 중복 코드의 양을 줄이는 동시에 웹 페이지 및 응용프로그램의 일관성과 사용자 경험을 향상시킬 수 있습니다.
                  </span>
                </p>
              </div>

              <div className="bk_msg mo">
                <p className="bk_head">컴포넌트 가이드란?
                  <span className="tit_line"></span>
                </p>
                
                <p>
                  <span>
                  컴포넌트란 재사용 가능한 웹의 구성요소를 의미하며, 
                  개발자가 다른 웹 페이지와 응용 프로그램에서 재사용 가능한 UI 구성 요소를 만들 수 있도록 돕습니다.
                  이를 통해 유지관리에 필요한 중복 코드의 양을 줄이는 동시에 웹 페이지 및 응용프로그램의 일관성과 사용자 경험을 향상시킬 수 있습니다.
                  </span>
                </p>
              </div>

              <div className="glass2">
              </div>

              <div className="glass3">
              </div>
            </div>
          </section>

          <section className="sec_intro">
            <div className="intro_wrp">

              <div className="intro_logo">
                <div className="msg_wrp">
                  <video muted autoPlay loop>
                    <source src="images/back2.mp4" type="video/mp4" />
                  </video>
                  <div className="logo">
                    <span>M</span>
                    <span>E</span>
                    <span>G</span>
                    <span>A</span>
                    <span>G</span>
                    <span>O</span>
                    <span>N</span>
                    <span>G</span>
                  </div>
                  <div className="logo">
                    <span>C</span>
                    <span>O</span>
                    <span>M</span>
                    <span>P</span>
                    <span>O</span>
                    <span>N</span>
                    <span>E</span>
                    <span>N</span>
                    <span>T</span>
                    <span className="ml">G</span>
                    <span>U</span>
                    <span>I</span>
                    <span>D</span>
                    <span>E</span>
                  </div>
                </div>
                <div className="shadow_bg"></div>
              </div>
            </div>
          </section>

          <section className="sec_slide sec_dark" id="Slide">
            <div className="slide_wrp">
              <div className="slide_panel slide_1">
                <div className="slide_inner">
                  <div className="pic_wrp"><img src="images/sec_slide_1.jpg" alt="" /></div>
                  
                  <div className="txt_wrp pc">
                    <p className="tit">
                      TEAM IN CHARGE
                    </p>
                    <p className="tit mini_font">
                      <span className="tit_line"></span>PUBLISHING TEAM
                    </p>
                    <p className="desc">
                    해당 컴포넌트 가이드는 교육 및 웹 사이트 서비스의 일환으로 다양한 리소스와 자료를 제공하며, 
                    메가스터디교육 공무원사업본부 소속 퍼블리싱 팀이 제작 및 서비스를 담당하고 있습니다.<br/>
                    <br/>
                    메가스터디교육 공무원사업본부는 현재 메가공무원, 메가소방, 메가군무원 기숙전문관, 난공불락 등의 
                    다양한 교육 및 웹 사이트 서비스를 제공하고 있습니다.
                    따라서 웹 사이트의 설계 및 개발, 콘텐츠 작성 및 업데이트, 사이트의 안전성 및 접근성 보장, 
                    검색 엔진 및 기타 디지털 플랫폼에 대한 최적화 등의 책임을 지니고 있으며
                    관련 업무 또한 퍼블리싱 팀에서 담당하고 있습니다.
                    </p>
                  </div>

                  <div className="txt_wrp mo">
                    <p className="tit">
                      TEAM IN CHARGE
                    </p>
                    <p className="tit mini_font">
                      <span className="tit_line"></span>PUBLISHING TEAM
                    </p>
                    <p className="desc">
                    해당 컴포넌트 가이드는 교육 및 웹 사이트 서비스의 일환으로 다양한 리소스와 자료를 제공하며, 
                    메가스터디교육 공무원사업본부 소속 퍼블리싱 팀이 제작 및 서비스를 담당하고 있습니다.<br/>
                    <br/>
                    메가스터디교육 공무원사업본부는 현재 메가공무원, 메가소방, 메가군무원 기숙전문관, 난공불락 등의 
                    다양한 교육 및 웹 사이트 서비스를 제공하고 있습니다.
                    </p>
                  </div>
                  
                </div>
              </div>
              <div className="slide_panel slide_2">
                
                <div className="slide_inner">
                  
                  <div className="pic_wrp bulrver">
                    <div className="motion_wrap">
                      <div className="motion_left_navi">
                        <ul>
                          <li></li>
                          <li></li>
                          <li></li>
                        </ul>
                      </div>
                      <div className="motion_right_navi">
                        <div className="motion_header">
                          <div className="motion_fir_lay"></div>
                          <div className="motion_logo">
                            <ul>
                              <li></li>
                              <li></li>
                              <li></li>
                            </ul>
                          </div>
                        </div>

                        <div className="motion_nav">
                        </div>

                        <div className="motion_banner">
                        </div>

                        <div className="motion_banner2">
                          <ul>
                              <li></li>
                              <li></li>
                              <li></li>
                            </ul>
                        </div>
                        <div className="motion_foot_banner">
                        </div>
                      </div>
                      <div className="light_wrap"></div>
                    </div>
                  </div>
                  
                  <div className="txt_wrp pc">
                    <p className="tit">
                      ABOUT
                    </p>
                    <p className="tit mini_font">
                      <span className="tit_line"></span>BASIC WORK
                    </p>
                    <p className="desc">
                      퍼블리싱 팀은 메가공무원 내의 다양한 웹페이지를 제작하고 관리하는 역할을 담당하며
                      이러한 웹 페이지에는 이벤트 프로모션 페이지, 강사의 개인 페이지 및 기타 유형의 페이지가 포함됩니다.
                      <br/><br/>
                      이에 대하여 퍼블리싱 팀은 웹 페이지가 일관된 시각적 스타일로 작성되도록 계획 및 설계 초안을 유형화하고 있습니다.
                      또한 페이지가 다양한 장치에서 접근 가능하고 사용 가능하도록 설계를 수정하고 구축하는 작업 역시 맡고 있습니다.
                      
                      따라서 전반적으로 퍼블리싱 팀은 교육 서비스의 목표를 달성하고 직원 및 사용자의 요구를 충족시키는 데 도움이 되는,
                      고품질의 웹 페이지를 제작하는 일에 주요한 역할을 담당하고 있습니다.
                    </p>
                  </div>

                  <div className="txt_wrp mo">
                    <p className="tit">
                      ABOUT
                    </p>
                    <p className="tit mini_font">
                      <span className="tit_line"></span>BASIC WORK
                    </p>
                    <p className="desc">
                      퍼블리싱 팀은 메가공무원 내의 다양한 웹페이지를 제작하고 관리하는 역할을 담당하며
                      이러한 웹 페이지에는 이벤트 프로모션 페이지, 강사의 개인 페이지 및 기타 유형의 페이지가 포함됩니다.
                      <br/><br/>
                      이에 대하여 퍼블리싱 팀은 웹 페이지가 일관된 시각적 스타일로 작성되도록 계획 및 설계 초안을 유형화하고 있습니다.
                      또한 페이지가 다양한 장치에서 접근 가능하고 사용 가능하도록 설계를 수정하고 구축하는 작업 역시 맡고 있습니다.
                    </p>
                  </div>
                </div>
              </div>
              <div className="slide_panel gong" id="gong">
                <div className="slide_inner">
                  <div className="Subject_wrap">
                    <p>language</p>
                  </div>
                  <div className="pic_wrp_sample"><img src="images/page_sam1.jpg" alt="" /></div>
                  <div className="pic_wrp"><img src="images/T_img2.png" alt="" /></div>
                  <div className="glass4"></div>
                  <div className="txt_wrp">
                    <p className="tit">
                      INTRODUCTION
                    </p>
                    <p className="tit mini_font">
                      <span className="tit_line"></span>MEGAGONG
                    </p>
                    <p className="desc">
                      메가공무원은 각 분야별로 최고의 선생님들로 구성되어 있습니다.
                      퍼블리싱 팀은 이러한 강사 선생님들의 교육 커리큘럼 정보부터 사용자의 추천 또는 피드백을 포함하여 웹 페이지를 구축하고 있습니다.<br/>
                      그렇게 구축된 웹 페이지를 통하여 강사 선생님들의 전문성과 우수성을 보여주고 잠재적인 학생 및 사용자들에게 훈련과 교육에 대한 정보를 제공하고 있습니다.
                    </p>
                    
                  </div>
                </div>
              </div>

              <div className="slide_panel gong">
                <div className="slide_inner">
                  <div className="Subject_wrap">
                    <p>English</p>
                  </div>
                  <div className="pic_wrp_sample"><img src="images/page_sam1.jpg" alt="" /></div>
                  <div className="pic_wrp"><img src="images/T_img5.png" alt="" /></div>
                  <div className="glass4"></div>
                  <div className="txt_wrp">
                    <p className="tit">
                      INTRODUCTION
                    </p>
                    <p className="tit mini_font">
                      <span className="tit_line"></span>MEGAGONG
                    </p>
                    <p className="desc">
                      메가공무원은 각 분야별로 최고의 선생님들로 구성되어 있습니다.
                      퍼블리싱 팀은 이러한 강사 선생님들의 교육 커리큘럼 정보부터 사용자의 추천 또는 피드백을 포함하여 웹 페이지를 구축하고 있습니다.<br/>
                      그렇게 구축된 웹 페이지를 통하여 강사 선생님들의 전문성과 우수성을 보여주고 잠재적인 학생 및 사용자들에게 훈련과 교육에 대한 정보를 제공하고 있습니다.
                    </p>
                    
                  </div>
                </div>
              </div>

              <div className="slide_panel sobang">
                <div className="slide_inner">
                  <div className="Subject_wrap">
                    <p>History</p>
                  </div>
                  <div className="pic_wrp_sample"><img src="images/page_sam1.jpg" alt="" /></div>
                  <div className="pic_wrp"><img src="images/T_img3.png" alt="" /></div>
                  <div className="glass4"></div>
                  <div className="txt_wrp">
                    <p className="tit">
                      INTRODUCTION
                    </p>
                    <p className="tit mini_font">
                      <span className="tit_line"></span>MEGAGONG
                    </p>
                    <p className="desc">
                      메가공무원은 각 분야별로 최고의 선생님들로 구성되어 있습니다.
                      퍼블리싱 팀은 이러한 강사 선생님들의 교육 커리큘럼 정보부터 사용자의 추천 또는 피드백을 포함하여 웹 페이지를 구축하고 있습니다.<br/>
                      그렇게 구축된 웹 페이지를 통하여 강사 선생님들의 전문성과 우수성을 보여주고 잠재적인 학생 및 사용자들에게 훈련과 교육에 대한 정보를 제공하고 있습니다.
                    </p>
                    
                  </div>
                </div>
              </div>
              <div className="slide_panel army">
                <div className="slide_inner">
                  <div className="Subject_wrap">
                    <p>administration</p>
                  </div>
                  <div className="pic_wrp_sample"><img src="images/page_sam1.jpg" alt="" /></div>
                  <div className="pic_wrp"><img src="images/T_img4.png" alt="" /></div>
                  <div className="glass4"></div>
                  <div className="txt_wrp">
                    <p className="tit">
                      INTRODUCTION
                    </p>
                    <p className="tit mini_font">
                      <span className="tit_line"></span>MEGAGONG
                    </p>
                    <p className="desc">
                      메가공무원은 각 분야별로 최고의 선생님들로 구성되어 있습니다.
                      퍼블리싱 팀은 이러한 강사 선생님들의 교육 커리큘럼 정보부터 사용자의 추천 또는 피드백을 포함하여 웹 페이지를 구축하고 있습니다.<br/>
                      그렇게 구축된 웹 페이지를 통하여 강사 선생님들의 전문성과 우수성을 보여주고 잠재적인 학생 및 사용자들에게 훈련과 교육에 대한 정보를 제공하고 있습니다.
                    </p>
                    
                  </div>
                </div>
              </div>
              
              <div className="slide_panel sobang">
                <div className="slide_inner">
                  <div className="Subject_wrap">
                    <p>administrative</p>
                  </div>
                  <div className="pic_wrp_sample"><img src="images/page_sam1.jpg" alt="" /></div>
                  <div className="pic_wrp"><img src="images/T_img6.png" alt="" /></div>
                  <div className="glass4"></div>
                  <div className="txt_wrp">
                    <p className="tit">
                      INTRODUCTION
                    </p>
                    <p className="tit mini_font">
                      <span className="tit_line"></span>MEGAGONG
                    </p>
                    <p className="desc">
                      메가공무원은 각 분야별로 최고의 선생님들로 구성되어 있습니다.
                      퍼블리싱 팀은 이러한 강사 선생님들의 교육 커리큘럼 정보부터 사용자의 추천 또는 피드백을 포함하여 웹 페이지를 구축하고 있습니다.<br/>
                      그렇게 구축된 웹 페이지를 통하여 강사 선생님들의 전문성과 우수성을 보여주고 잠재적인 학생 및 사용자들에게 훈련과 교육에 대한 정보를 제공하고 있습니다.
                    </p>
                    
                  </div>
                </div>
              </div>
              <div className="slide_panel gong">
                <div className="slide_inner">
                  <div className="Subject_wrap">
                    <p>tax law</p>
                  </div>
                  <div className="pic_wrp_sample"><img src="images/page_sam1.jpg" alt="" /></div>
                  <div className="pic_wrp"><img src="images/T_img7.png" alt="" /></div>
                  <div className="glass4"></div>
                  <div className="txt_wrp">
                    <p className="tit">
                      INTRODUCTION
                    </p>
                    <p className="tit mini_font">
                      <span className="tit_line"></span>MEGAGONG
                    </p>
                    <p className="desc">
                      메가공무원은 각 분야별로 최고의 선생님들로 구성되어 있습니다.
                      퍼블리싱 팀은 이러한 강사 선생님들의 교육 커리큘럼 정보부터 사용자의 추천 또는 피드백을 포함하여 웹 페이지를 구축하고 있습니다.<br/>
                      그렇게 구축된 웹 페이지를 통하여 강사 선생님들의 전문성과 우수성을 보여주고 잠재적인 학생 및 사용자들에게 훈련과 교육에 대한 정보를 제공하고 있습니다.
                    </p>
                    
                  </div>
                </div>
              </div>
            </div>
          </section>

          <section className="sec_publish"  id="Publish">
            <div className="publish_wrp">
              <p className="member_tit ">
                MEGAGONG'S PUBLISHERS
                <br/>
                <span className="tit_line blackver "></span>
              </p>
              <div className="member_wrap ">
                <ul className="member_ul"> 
                    <li className="member_box">
                        <div className="imo_wrap"><img src="images/char3.png" alt="" /></div>
                        <div className="info_mem_wrap">
                            <p className="member_name">SYW</p>
                            <p className="page_text">사랑하기에도 <br/> 부족한 시간<span>&#128149;</span></p> 
                        </div>
                    </li>
                    <li className="member_box">
                        <div className="imo_wrap"><img src="images/char4.png" alt="" /></div>
                        <div className="info_mem_wrap">
                            <p className="member_name">KHR</p>
                            <p className="page_text">잘 먹고 잘 살자! <br/> *'='*</p> 
                        </div>
                    </li>
                    <li className="member_box">
                        <div className="imo_wrap"><img src="images/char6.png" alt="" /></div>
                        <div className="info_mem_wrap">
                            <p className="member_name">CHJ</p>
                            <p className="page_text">인생이란 <br/> 뒤로 걷는 꽃길<span className="flower">&#127804;</span></p> 
                        </div>
                    </li>
                    <li className="member_box">
                        <div className="imo_wrap"><img src="images/char7.png" alt="" /></div>
                        <div className="info_mem_wrap">
                            <p className="member_name">JDI</p>
                            <p className="page_text">어제보다 나은 <br/> 내가 되자.</p> 
                        </div>
                    </li>
                    <li className="member_box">
                        <div className="imo_wrap"><img src="images/char5.png" alt="" /></div>
                        <div className="info_mem_wrap">
                            <p className="member_name">YHR</p>
                            <p className="page_text">영양제 없으면 <br/> 못사는 K-직장인</p> 
                        </div>
                    </li>
                    <li className="member_box">
                        <div className="imo_wrap"><img src="images/char2.png" alt="" /></div>
                        <div className="info_mem_wrap">
                            <p className="member_name">SYR</p>
                            <p className="page_text">인생은 모두가 <br/> 함께하는 여행이다.</p> 
                        </div>
                    </li>
                    <li className="member_box">
                        <div className="imo_wrap"><img src="images/char1.png" alt="" /></div>
                        <div className="info_mem_wrap">
                            <p className="member_name">GYO</p>
                            <p className="page_text">꾸준함의 힘.</p> 
                        </div>
                    </li>
                </ul>
            </div>
            </div>
          </section>
        </div>
        <div className="custom_pointer"></div>
        </>
      )
    }
</script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.11.4/gsap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.11.4/ScrollTrigger.min.js"></script>
<script src="/js/smoothScroll.js"></script>
<!-- <script src="/js/main.production.js"></script> -->