<!-- #include virtual = "/app/component/button/Button1.asp"-->

<script type="text/babel">
  'use strict';

  function ButtonComponent() {
    const { setDp1, setDp2 } = useAside();

    useEffect(() => {
      Lab.top();
      Lab.showCode();
      setDp1(2);
      setDp2(1);
    }, []);

    return (
      <>
      <div className="page_wrap" id="page_wrap">

        <div className="page_inner">
            <PageHeader name="Button" sub="��ư" text="�ް������� ����Ʈ���� ��������� ���Ǵ� ��ư ������Ʈ�Դϴ�.<br />���Ǵ� �������� ������ �� �뵵�� �°� �پ��� ������ �����մϴ�." />
            
            <Button1 />

            <div className="page_text_wrap">
                <p className="page_head">��ư - �����̵� �¿���</p> 
                <button className="code_open"><span className="open_bg"></span><span className="open_shape"></span></button>
                
                <div className="issue-box-wrap"></div>
                <div className="position_site"><img src="/images/btn2.png" alt='��ư��ġ' /></div>
                

<div className="code-box html"><button className="slick-prev slick-arrow" aria-label="Previous" type="button">Previous</button>
<button className="slick-next slick-arrow" aria-label="Next" type="button">Next</button>

<button className="slick-prev2 slick-arrow2" aria-label="Previous" type="button">Previous</button>
<button className="slick-next2 slick-arrow2" aria-label="Next" type="button">Next</button>

<button className="slick-prev3 slick-arrow3" aria-label="Previous" type="button">Previous</button>
<button className="slick-next3 slick-arrow3" aria-label="Next" type="button">Next</button>

<button className="slick-prev4 slick-arrow4" aria-label="Previous" type="button">Previous</button>
<button className="slick-next4 slick-arrow4" aria-label="Next" type="button">Next</button>

<button className="slick-prev5 slick-arrow5" aria-label="Previous" type="button">Previous</button>
<button className="slick-next5 slick-arrow5" aria-label="Next" type="button">Next</button>

<button className="slick-prev6 slick-arrow6" aria-label="Previous" type="button">Previous</button>
<button className="slick-next6 slick-arrow6" aria-label="Next" type="button">Next</button>

<br />

<button className="slick-prev7 slick-arrow7" aria-label="Previous" type="button">Previous</button>
<button className="slick-next7 slick-arrow7" aria-label="Next" type="button">Next</button>

<button className="slick-prev8 slick-arrow8" aria-label="Previous" type="button">Previous</button>
<button className="slick-next8 slick-arrow8" aria-label="Next" type="button">Next</button>

<button className="slick-prev9 slick-arrow9" aria-label="Previous" type="button">Previous</button>
<button className="slick-next9 slick-arrow9" aria-label="Next" type="button">Next</button>

<button className="slick-prev10 slick-arrow10" aria-label="Previous" type="button">Previous</button>
<button className="slick-next10 slick-arrow10" aria-label="Next" type="button">Next</button>
</div>

{/*<style>.slick-arrow {font-size: 0; width: 7px; height: 13px;}
.slick-prev {background: url(https://img.megagong.net/m/2022/0616_main/arr_L.png) no-repeat center;background-size: 100% auto;}
.slick-next {background: url(https://img.megagong.net/m/2022/0616_main/arr_R.png) no-repeat center; background-size: 100% auto;}

.slick-arrow2 { width: 21px; height: 29px; font-size: 0;}
.slick-prev2 { background: #2b2c30 url(https://img.megagong.net/m/2022/0616_main/white_arr_L.png) no-repeat center;}
.slick-next2 {background: #2b2c30 url(https://img.megagong.net/m/2022/0616_main/white_arr_R.png) no-repeat center;}

.slick-arrow3 { width: 22px;height: 35px; font-size: 0;background: #e7e7e7 url(https://img.megagong.net/m/2021/0615_gongRNL/teacher_notice_arrow.png) no-repeat 6px 3px;opacity: 0.7;}
.slick-next3 {background-position: -27px 3px;}

.slick-arrow4 {width: 24px;height: 32px; font-size: 0;  background-repeat: no-repeat; background-image: url(https://img.megagong.net/m/2021/0615_gongRNL/cast_arrow.png);opacity: 0.7;}
.slick-prev4 {background-position: 0 0;}
.slick-next4 {background-position: 100% 0;}

.slick-arrow5 { width: 17px;height: 26px; font-size: 0; background: rgba(0,0,0,0.5) url(https://img.megagong.net/m/2022/1219_pass/evt_arrow_w.png) no-repeat;}
.slick-prev5 {background-position: 0 center;}
.slick-next5 { background-position: 100% center;}

.slick-arrow6 { width: 17px;height: 26px; font-size: 0; background: url(https://img.megagong.net/m/2021/1007_mainrenw/evt_arrow.png) no-repeat;}
.slick-prev6 {background-position: 0 center;}
.slick-next6 { background-position: 100% center;}

.slick-arrow7 { width: 20px; height: 39px; font-size: 0; }
.slick-prev7 {background: url(https://img.megagong.net/m/2022/0404_pass/all/btn_slider_prev.png) no-repeat;}
.slick-next7 { background: url(https://img.megagong.net/m/2022/0404_pass/all/btn_slider_next.png) no-repeat;}

.slick-arrow8 { width: 20px; height: 35px; font-size: 0; }
.slick-prev8 {background: url(https://img.megagong.net/m/2022/0317_psat/0331/con2_sd_al.png) no-repeat;}
.slick-next8 { background: url(https://img.megagong.net/m/2022/0317_psat/0331/con2_sd_ar.png) no-repeat;}

.slick-arrow9 { width: 20px; height: 96px; font-size: 0; }
.slick-prev9 {background: url(https://img.megagong.net/m/2022/0708_examinfo/btn_prev.png) no-repeat;}
.slick-next9 { background: url(https://img.megagong.net/m/2022/0708_examinfo/btn_next.png) no-repeat;}

.slick-arrow10 { width: 24px; height: 40px; font-size: 0; }
.slick-prev10 {background: url(https://img.megagong.net/m/2022/0929_gosabu88/btn_prev.png) no-repeat;}
.slick-next10 { background: url(https://img.megagong.net/m/2022/0929_gosabu88/btn_next.png) no-repeat;}
</style>*/}

<p className="page_text">�����̵忡 ���Ǵ� ��, ���� ��ư�� �����Դϴ�. <br /> 
�����̵� ��ư�� ���, �������� ����Ͽ� ����� å���ϰ� �� ��ư�� ������ �����ϴ� ���� �����մϴ�. </p>

<pre className="language-html html act"></pre>
<pre className="language-css act"></pre>

                <div className="page_bot_wrap">
                    <a className="use_link" href="<%=url_main%>/megagong.asp" target="_blank"><i className='bx bx-link'></i>EXAMPLE</a>
                    <div className="cap_tag">
                        <ul>
                            <li><p>#�����̵��ư</p> </li>
                            <li><p>#�ѱ���ư</p> </li>
                            <li><p>#ȭ��ǥ</p> </li>
                        </ul>
                    </div>
                </div>
            </div>



            <div className="page_text_wrap">
                <p className="page_head">��ư - ����</p> 
                <button className="code_open"><span className="open_bg"></span><span className="open_shape"></span></button>
                
                <div className="issue-box-wrap"></div>
                <div className="position_site"><img src="/images/btn3.png" alt='��ư��ġ' /></div>
                

<div className="code-box html"><ul className="btns_list">
    <li className="buy" style={{ display: "block" }}>
        <div id="pass_bnr_btn_wrap7">   
            <a href="javascript:;" onclick="go_fbuy(34, 6976);">�����ϱ�</a>
        </div> 
    </li>                  
</ul>
<br />
<ul className="btns_list2">
    <li>
        <a href="javascript:;" className="btn">
            <div className="btn_in">
                <span className="txt1">Change Your Days, Change Your Result!</span>
                <span className="txt2">2023��� FINAL �н�����</span>
            </div>
        </a>
    </li>
</ul>
<br />
<ul className="btns_list3">
    <li>
        <a href="javascript:void(0);" className="purchase_btn" onclick="go_fbuy(1, 7094);">�ް��н� �����ϱ�</a>
    </li>
</ul></div>

{/*<style>.btns_list { margin-top: 0;justify-content: center;    display: flex; flex-wrap: wrap; text-align: center; font-family: "NotoSans KR";}
.btns_list li { position: relative;}
.btns_list li {width: 100%;margin: 0;}
.btns_list li a {font-size: 20px;color: #fff; background: #000;padding: 30px 0;}
.btns_list a {display: block;}
.btns_list li a::before {content: '';display: block;position: absolute; right: 0;top: 50%; transform: translateY(-50%);background: url(https://img.megagong.net/m/2022/1219_pass/btn_arr.png) no-repeat center; width: 72px; height: 80px;}

.btns_list2 {width: 100%;text-align: center; font-family: "NotoSans KR"; border:1px solid #268490;}
.btns_list2 li .btn {display: block; background-color: #ffffff;padding: 20px 0;}
.btns_list2 li .btn .btn_in {position: relative;}
.btns_list2 li .btn span {display: block;}
.btns_list2 li .btn .txt1 {font-size: 17px;color: #268490;}
.btns_list2 li .btn .txt2 {font-size: 26px;font-weight: 900; color: #111;}
.btns_list2 li .btn .btn_in:after { content: '';display: block; width: 90px; height: 100%; background: url(https://img.megagong.net/m/2023/0109_finalpass/btn_arrow_black.png) 50% 50% no-repeat; position: absolute; right: 0; top: 0; border-left: 1px solid #b7b7b7;}

.btns_list3 .purchase_btn {text-align: center; font-family: "NotoSans KR";display: block;background-color: #268490;font-size: 22px;font-weight: 700; color: #fff;padding: 25px 72px; position: relative;}
.btns_list3 .purchase_btn:after { width: 72px;background: url(https://img.megagong.net/m/2023/0109_finalpass/btn_arrow_white.png) 50% 50% no-repeat; position: absolute; right: 0;top: 50%;   margin-top: -16px; height: 32px; display: block;  content: ''; border-left: 1px solid #68a9b2;}



@media screen and (max-width: 1200px) {
    .btns_list li a{font-size: 18px;}
    .btns_list2 li .btn .btn_in {padding-right: 60px;}
    .btns_list2 li .btn .txt1 {font-size: 1.6vw;}
    .btns_list2 li .btn .txt2 {font-size: 2.2vw;}
    .btns_list2 li .btn .btn_in:after {width: 60px;}
}

@media screen and (max-width: 768px) {
    .btns_list li a{font-size: 18px;padding: 15px 36px 15px 0;}
    .btns_list3 .purchase_btn {font-size: 18px;padding: 20px 72px;}
}

@media screen and (max-width: 576px) {
    .btn_wrp a.btn_base {font-size: 14px;}
    .btns_list2 li .btn .btn_in {padding-right: 30px;}
    .btns_list2 li .btn .txt1 {font-size: 14px;}
    .btns_list2 li .btn .txt2 {font-size: 16px;}
    .btns_list2 li .btn .btn_in:after {width: 30px;background-size: 6px auto;}
}
</style>*/}

<p className="page_text">�ް��н� �� ���� �̺�Ʈ ���������� ���Ǵ� �簢�� ������ ��ư ����Դϴ�. <br /> 
������ �þ��� ���� �°� Color �ڵ庯�� �� �� ������ �����մϴ�.</p>


<pre className="language-html html act"></pre>
<pre className="language-css act"></pre>

                <div className="page_bot_wrap">
                    <a className="use_link" href="<%=url_main%>//s/gong/pass/final_2023.asp#eventWrap" target="_blank"><i className='bx bx-link'></i>EXAMPLE</a>
                    <div className="cap_tag">
                        <ul>
                            <li><p>#�����ϱ�</p> </li>
                            <li><p>#�簢��</p> </li>
                            <li><p>#�ް��н�</p> </li>
                        </ul>
                    </div>
                </div>

            </div>




            <div className="page_text_wrap">
                <p className="page_head">��ư - ������</p> 
                <button className="code_open"><span className="open_bg"></span><span className="open_shape"></span></button>
                
                <div className="issue-box-wrap"></div>
                <div className="position_site"><img src="/images/btn3.png" alt='��ư��ġ' /></div>
                

<div className="code-box html"><div className="round_btn_wrap">
    <a href="javascript:openPop_popup1();" title="�����ϱ�" className="btn_round">�����ϱ�
        <i>-</i>
    </a>
</div></div>

{/*<style>.btn_round {display: block;background: #000; color: #fff;font-size: 24px;line-height: 75px; height: 75px;font-weight: bold; border-radius: 7px; position: relative;text-align: center; font-family: "NotoSans KR";}
.btn_round i { background: url(https://img.megagong.net/m/2022/0708_trans/coupon_btn_icon.png) 0 0 no-repeat; width: 17px; height: 27px; margin: 25px 0 0 60px; position: absolute; top: 0; left: 50%; font-size: 0;}
</style>*/}

<p className="page_text">���� �̺�Ʈ ���������� ���Ǵ� �ձ� ������ ��ư ����Դϴ�.<br /> 
������ �þ��� ���� �°� Color �ڵ庯�� �� �� ������ �����մϴ�. </p>

<pre className="language-html html act"></pre>
<pre className="language-css act"></pre>

                <div className="page_bot_wrap">
                    <a className="use_link" href="<%=url_main%>/event/2023/02090007/index.asp#eventWrap" target="_blank"><i className='bx bx-link'></i>EXAMPLE</a>
                    <div className="cap_tag">
                        <ul>
                            <li><p>#�����ϱ�</p> </li>
                            <li><p>#�ձٴ���</p> </li>
                            <li><p>#���θ��</p> </li>
                        </ul>
                    </div>
                </div>
            </div>

            <div className="page_text_wrap">
                <p className="page_head">��ư - hover �÷�</p> 
                <button className="code_open"><span className="open_bg"></span><span className="open_shape"></span></button>
                
                <div className="issue-box-wrap"></div>
                <div className="position_site"><img src="/images/btn4.png" alt='��ư��ġ' /></div>
                

<div className="code-box html"><ul className="info_list notosans">
    <li><a href="https://lab.megagong.net/l/gong/guide/guide.asp" title="������ ���̵�" target="_blank"><span>������ ���̵�</span></a></li>
    <li><a href="https://lab.megagong.net/l/gong/guide/schedule.asp" title="���� ����" target="_blank"><span>���� ���� <img src="https://img.megagong.net/common/ic_new.gif" alt="New" style={{verticalAlign:"middle", margin:"-3px 0 0 3px"}} /></span></a></li>
    <li><a href="https://lab.megagong.net/l/gong/statistic/pass.asp" title="��������հݼ�" target="_blank"><span>��������հݼ� </span></a></li>
    <li><a href="https://lab.megagong.net/l/gong/guide/series.asp" title="���ĺ� ���� ����" target="_blank"><span>���ĺ� ���� ���� </span></a></li>
    <li>
        <a href="https://lab.megagong.net/l/gong/pass_opinion/index.asp" title="�հݼ���" target="_blank">
            <span>�հݼ��� <img src="https://img.megagong.net/common/ic_new.gif" alt="New" style={{verticalAlign:"middle", margin:"-3px 0 0 3px"}} /></span>
        </a>
    </li>
    <li><a href="https://lab.megagong.net/l/gong/library/list.asp" title="��������" target="_blank"><span>�������� </span></a></li>
    <li><a href="https://www.megagong.net/s/gong/examinfo/passmate/list.asp#mContainer" title="PASS MATE"><span>PASS MATE </span></a></li>
    <li><a href="https://lab.megagong.net/l/gong/followm/followm.asp" title="�����ڱ� ����(follow M)" target="_blank"><span>�����ڱ� ����(follow M)</span></a></li>
    <li className="for_mo lnk1"><a href="https://lab.megagong.net/l/gong/guide/guide.asp" title="������ ���̵�" target="_blank"><span>������ ���̵�</span></a></li>
    <li className="for_mo lnk2"><a href="https://lab.megagong.net/l/gong/news/list.asp?schExtra1=2" title="�հ�����" target="_blank"><span>�հ�����</span></a></li>
    <li className="for_mo lnk3"><a href="https://lab.megagong.net/l/gong/news/list.asp?schExtra1=3" title="�������" target="_blank"><span>�������</span></a></li>
    <li className="for_mo lnk4"><a href="https://lab.megagong.net/l/gong/library/list.asp" title="���⹮��" target="_blank"><span>���⹮��</span></a></li> 
</ul></div>

{/*<style>.info_list {font-weight: 200;display: flex;flex-wrap: wrap;justify-content: center;}
.info_list::after {content:"";clear:both;display:block}
.info_list li {float: left; margin: 0 10px 10px 0;padding: 0 0 0; border-radius: 6px; padding: 1px; text-decoration: none;}
.info_list li a { position: relative; display: block; padding: 0; border-radius: 6px; color: #f5bae8; width: 170px; height: 40px; line-height: 38px; border: 1px solid #d953ff; text-align: center;}
.info_list li a span {display: inline-block;padding: 0 3px 0 0;}
.info_list li a:hover {background: #fbafb1;background: linear-gradient(90deg, rgba(198,32,145,1) 0%, rgba(108,20,208,1) 100%);color: #fff;}
</style>*/}

<p className="page_text">�ް������� ���� �ϴܿ��� ���Ǵ� ��ũ �̵� ��ư�Դϴ�.<br /> 
Hover�� ���, Background�� ������ ū ������ ����Ǹ�, �̸� ���Ͽ� ����ڰ� ��Ȱ�ϰ� ����� �ν��� �� �ֵ��� �����ϴ�.<br /> 
������ �þ��� ���� �°� Color �ڵ庯�� �� �� ������ �����մϴ�. </p>

<pre className="language-html html act"></pre>
<pre className="language-css act"></pre>

                <div className="page_bot_wrap">
                    <a className="use_link" href="<%=url_main%>/megagong.asp" target="_blank"><i className='bx bx-link'></i>EXAMPLE</a>
                    <div className="cap_tag">
                        <ul>
                            <li><p>#���콺ȿ��</p> </li>
                            <li><p>#�׶���Ʈ</p> </li>
                            <li><p>#�����ϴ�</p> </li>
                        </ul>
                    </div>
                </div>
            </div>
      

            {/*
            <!-- #include virtual = "/inc/tweet_popup_all.asp"-->
            <!-- #include virtual = "/inc/ball.asp"-->
            <!-- #include virtual = "/inc/footer.asp"-->
            */}
            
        </div>
    
    </div>


    <div className="ank"></div>
      </>
    )
  }
</script>