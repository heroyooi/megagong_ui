<script type="text/babel">
    'use strict';

    function MainLayout() {
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
                <span>MEGASTUDY</span>
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
                  <img src="images/con2_img2.jpg" alt="����̹���" />
                </div>
              </div>

              <div className="bk_msg pc">
                <p className="bk_head">������Ʈ ���̵��?
                  <span className="tit_line"></span>
                </p>
                
                <p>
                  <span>
                  ������Ʈ�� ���� ������ ���� ������Ҹ� �ǹ��ϸ�, 
                  �����ڰ� �ٸ� �� �������� ���� ���α׷����� ���� ������ UI ���� ��Ҹ� ���� �� �ֵ��� �����ϴ�.
                  <br/><br/>
                  ������Ʈ ���̵�� �׷��� '�� ��������� �ȳ���' ������ �����ϸ� HTML, CSS, �ڹٽ�ũ��Ʈ �ڵ带 �����ϵ��� ����Ǿ����ϴ�.
                  �⺻������ ���� ����� ���� ����� ���̺귯���� �� ���� ��Ҹ� �����ϱ� ���� ��ħ �� ��� ��ʸ� �����մϴ�. 
                  ������Ʈ ���̵� ������ ������ �����ڰ� �پ��� ������Ʈ�� ���ø����̼ǿ��� ����� �� �ִ� ���� ������ UI ��������� �߾� ����Ҹ� �����Ͽ� ���� ��â���ϴ� ���� �����ϴ� ���Դϴ�.
                  �̸� ���� ���������� �ʿ��� �ߺ� �ڵ��� ���� ���̴� ���ÿ� �� ������ �� �������α׷��� �ϰ����� ����� ������ ����ų �� �ֽ��ϴ�.
                  </span>
                </p>
              </div>

              <div className="bk_msg mo">
                <p className="bk_head">������Ʈ ���̵��?
                  <span className="tit_line"></span>
                </p>
                
                <p>
                  <span>
                  ������Ʈ�� ���� ������ ���� ������Ҹ� �ǹ��ϸ�, 
                  �����ڰ� �ٸ� �� �������� ���� ���α׷����� ���� ������ UI ���� ��Ҹ� ���� �� �ֵ��� �����ϴ�.
                  �̸� ���� ���������� �ʿ��� �ߺ� �ڵ��� ���� ���̴� ���ÿ� �� ������ �� �������α׷��� �ϰ����� ����� ������ ����ų �� �ֽ��ϴ�.
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
                    �ش� ������Ʈ ���̵�� ���� �� �� ����Ʈ ������ ��ȯ���� �پ��� ���ҽ��� �ڷḦ �����ϸ�, 
                    �ް����͵��� ������������� �Ҽ� �ۺ��� ���� ���� �� ���񽺸� ����ϰ� �ֽ��ϴ�.<br/>
                    <br/>
                    �ް����͵��� ������������δ� ���� �ް�������, �ް��ҹ�, �ް������� ���������, �����Ҷ� ���� 
                    �پ��� ���� �� �� ����Ʈ ���񽺸� �����ϰ� �ֽ��ϴ�.
                    ���� �� ����Ʈ�� ���� �� ����, ������ �ۼ� �� ������Ʈ, ����Ʈ�� ������ �� ���ټ� ����, 
                    �˻� ���� �� ��Ÿ ������ �÷����� ���� ����ȭ ���� å���� ���ϰ� ������
                    ���� ���� ���� �ۺ��� ������ ����ϰ� �ֽ��ϴ�.
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
                    �ش� ������Ʈ ���̵�� ���� �� �� ����Ʈ ������ ��ȯ���� �پ��� ���ҽ��� �ڷḦ �����ϸ�, 
                    �ް����͵��� ������������� �Ҽ� �ۺ��� ���� ���� �� ���񽺸� ����ϰ� �ֽ��ϴ�.<br/>
                    <br/>
                    �ް����͵��� ������������δ� ���� �ް�������, �ް��ҹ�, �ް������� ���������, �����Ҷ� ���� 
                    �پ��� ���� �� �� ����Ʈ ���񽺸� �����ϰ� �ֽ��ϴ�.
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
                      �ۺ��� ���� �ް������� ���� �پ��� ���������� �����ϰ� �����ϴ� ������ ����ϸ�
                      �̷��� �� ���������� �̺�Ʈ ���θ�� ������, ������ ���� ������ �� ��Ÿ ������ �������� ���Ե˴ϴ�.
                      <br/><br/>
                      �̿� ���Ͽ� �ۺ��� ���� �� �������� �ϰ��� �ð��� ��Ÿ�Ϸ� �ۼ��ǵ��� ��ȹ �� ���� �ʾ��� ����ȭ�ϰ� �ֽ��ϴ�.
                      ���� �������� �پ��� ��ġ���� ���� �����ϰ� ��� �����ϵ��� ���踦 �����ϰ� �����ϴ� �۾� ���� �ð� �ֽ��ϴ�.
                      
                      ���� ���������� �ۺ��� ���� ���� ������ ��ǥ�� �޼��ϰ� ���� �� ������� �䱸�� ������Ű�� �� ������ �Ǵ�,
                      ��ǰ���� �� �������� �����ϴ� �Ͽ� �ֿ��� ������ ����ϰ� �ֽ��ϴ�.
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
                      �ۺ��� ���� �ް������� ���� �پ��� ���������� �����ϰ� �����ϴ� ������ ����ϸ�
                      �̷��� �� ���������� �̺�Ʈ ���θ�� ������, ������ ���� ������ �� ��Ÿ ������ �������� ���Ե˴ϴ�.
                      <br/><br/>
                      �̿� ���Ͽ� �ۺ��� ���� �� �������� �ϰ��� �ð��� ��Ÿ�Ϸ� �ۼ��ǵ��� ��ȹ �� ���� �ʾ��� ����ȭ�ϰ� �ֽ��ϴ�.
                      ���� �������� �پ��� ��ġ���� ���� �����ϰ� ��� �����ϵ��� ���踦 �����ϰ� �����ϴ� �۾� ���� �ð� �ֽ��ϴ�.
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
                      �ް��������� �� �оߺ��� �ְ��� �����Ե�� �����Ǿ� �ֽ��ϴ�.
                      �ۺ��� ���� �̷��� ���� �����Ե��� ���� Ŀ��ŧ�� �������� ������� ��õ �Ǵ� �ǵ���� �����Ͽ� �� �������� �����ϰ� �ֽ��ϴ�.<br/>
                      �׷��� ����� �� �������� ���Ͽ� ���� �����Ե��� �������� ������� �����ְ� �������� �л� �� ����ڵ鿡�� �Ʒð� ������ ���� ������ �����ϰ� �ֽ��ϴ�.
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
                      �ް��������� �� �оߺ��� �ְ��� �����Ե�� �����Ǿ� �ֽ��ϴ�.
                      �ۺ��� ���� �̷��� ���� �����Ե��� ���� Ŀ��ŧ�� �������� ������� ��õ �Ǵ� �ǵ���� �����Ͽ� �� �������� �����ϰ� �ֽ��ϴ�.<br/>
                      �׷��� ����� �� �������� ���Ͽ� ���� �����Ե��� �������� ������� �����ְ� �������� �л� �� ����ڵ鿡�� �Ʒð� ������ ���� ������ �����ϰ� �ֽ��ϴ�.
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
                      �ް��������� �� �оߺ��� �ְ��� �����Ե�� �����Ǿ� �ֽ��ϴ�.
                      �ۺ��� ���� �̷��� ���� �����Ե��� ���� Ŀ��ŧ�� �������� ������� ��õ �Ǵ� �ǵ���� �����Ͽ� �� �������� �����ϰ� �ֽ��ϴ�.<br/>
                      �׷��� ����� �� �������� ���Ͽ� ���� �����Ե��� �������� ������� �����ְ� �������� �л� �� ����ڵ鿡�� �Ʒð� ������ ���� ������ �����ϰ� �ֽ��ϴ�.
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
                      �ް��������� �� �оߺ��� �ְ��� �����Ե�� �����Ǿ� �ֽ��ϴ�.
                      �ۺ��� ���� �̷��� ���� �����Ե��� ���� Ŀ��ŧ�� �������� ������� ��õ �Ǵ� �ǵ���� �����Ͽ� �� �������� �����ϰ� �ֽ��ϴ�.<br/>
                      �׷��� ����� �� �������� ���Ͽ� ���� �����Ե��� �������� ������� �����ְ� �������� �л� �� ����ڵ鿡�� �Ʒð� ������ ���� ������ �����ϰ� �ֽ��ϴ�.
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
                      �ް��������� �� �оߺ��� �ְ��� �����Ե�� �����Ǿ� �ֽ��ϴ�.
                      �ۺ��� ���� �̷��� ���� �����Ե��� ���� Ŀ��ŧ�� �������� ������� ��õ �Ǵ� �ǵ���� �����Ͽ� �� �������� �����ϰ� �ֽ��ϴ�.<br/>
                      �׷��� ����� �� �������� ���Ͽ� ���� �����Ե��� �������� ������� �����ְ� �������� �л� �� ����ڵ鿡�� �Ʒð� ������ ���� ������ �����ϰ� �ֽ��ϴ�.
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
                      �ް��������� �� �оߺ��� �ְ��� �����Ե�� �����Ǿ� �ֽ��ϴ�.
                      �ۺ��� ���� �̷��� ���� �����Ե��� ���� Ŀ��ŧ�� �������� ������� ��õ �Ǵ� �ǵ���� �����Ͽ� �� �������� �����ϰ� �ֽ��ϴ�.<br/>
                      �׷��� ����� �� �������� ���Ͽ� ���� �����Ե��� �������� ������� �����ְ� �������� �л� �� ����ڵ鿡�� �Ʒð� ������ ���� ������ �����ϰ� �ֽ��ϴ�.
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
                            <p className="page_text">����ϱ⿡�� <br/> ������ �ð�<span>&#128149;</span></p> 
                        </div>
                    </li>
                    <li className="member_box">
                        <div className="imo_wrap"><img src="images/char4.png" alt="" /></div>
                        <div className="info_mem_wrap">
                            <p className="member_name">KHR</p>
                            <p className="page_text">�� �԰� �� ����! <br/> *'='*</p> 
                        </div>
                    </li>
                    <li className="member_box">
                        <div className="imo_wrap"><img src="images/char6.png" alt="" /></div>
                        <div className="info_mem_wrap">
                            <p className="member_name">CHJ</p>
                            <p className="page_text">�λ��̶� <br/> �ڷ� �ȴ� �ɱ�<span className="flower">&#127804;</span></p> 
                        </div>
                    </li>
                    <li className="member_box">
                        <div className="imo_wrap"><img src="images/char7.png" alt="" /></div>
                        <div className="info_mem_wrap">
                            <p className="member_name">JDI</p>
                            <p className="page_text">�������� ���� <br/> ���� ����.</p> 
                        </div>
                    </li>
                    <li className="member_box">
                        <div className="imo_wrap"><img src="images/char5.png" alt="" /></div>
                        <div className="info_mem_wrap">
                            <p className="member_name">YHR</p>
                            <p className="page_text">������ ������ <br/> ����� K-������</p> 
                        </div>
                    </li>
                    <li className="member_box">
                        <div className="imo_wrap"><img src="images/char2.png" alt="" /></div>
                        <div className="info_mem_wrap">
                            <p className="member_name">SYR</p>
                            <p className="page_text">�λ��� ��ΰ� <br/> �Բ��ϴ� �����̴�.</p> 
                        </div>
                    </li>
                    <li className="member_box">
                        <div className="imo_wrap"><img src="images/char1.png" alt="" /></div>
                        <div className="info_mem_wrap">
                            <p className="member_name">GYO</p>
                            <p className="page_text">�������� ��.</p> 
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
<!-- <script src="/js/smoothScroll.js"></script> -->
<!-- <script src="/js/main.production.js"></script> -->