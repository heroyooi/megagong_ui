<script type="text/babel">
  'use strict';

  function Tab6({ title, onChange }) {

const html = `<div class="evSection evCon4">
<div class="con_box">
  <ul id="tab1" class="tab_base2">
    <li><a href="#tab1_1"><span>������� ���� å�Ӱ� ����</span>���ѱ�</a></li>
    <li><a href="#tab1_2"><span>�հ��� ���� ���� ��</span>������</a></li>
    <li><a href="#tab1_3"><span>�����ڸ� �ռ��� �ְ��� ����Ƽ</span>��ȯ</a></li>
    <li><a href="#tab1_4"><span>���� ���� ���� �ڵ� ȸ�� �ý���</span>�ֿ���</a></li>
    <li><a href="#tab1_5"><span>�������� �ѱ��� ������ �հ�</span>������</a></li>
  </ul>
  <ul class="panel_base">
    <!-- ���ѱ� S -->

    <li id="tab1_1" class="jeonhangil tea_tab">
      <div class="cont_top">
        <div class="cont_l">
          <img src="<%=img_main%>/profphoto/gong/jeonhangil/prof.png" alt="�ѱ��� ���ѱ� ������" />
          <a href="<%=url_main%>/teacher/home.asp?bcode=jeonhangil" target="_blank">
            <img src="<%=img_main%>/m/2023/0126_history/con4_img01.png" alt="�ѱ��� ���ѱ� ������" />
          </a>
        </div>
        <div class="cont_r">
          <p>�� �Ƿ��� ������ ���� <br class="mo_hide">�ֻ��� ���̳��� �����϶�</p>
          <div class="eventVideo video_renewal">
            <div class="video_box">
              <%
                evt_no = ""
                vod_KBN = "40" '40:������, 55:OT 
                playerKBN = ""
                CHR_CD = "19976"
                LEC_CD = "210819"
                IMG_URL = img_main & "/m/2023/0126_history/tab_video1.jpg"
                P_WIDTH = "600"
                P_HEIGHT = "338"
                AutoPlay = "N"
              %>
              <!-- #include virtual="/Player/kollus/play/play_inc.asp"-->
            </div>
          </div>
        </div>
      </div>
      <div class="cont_mid">
        <p>RIGHT NOW! ���ѱ� ������ ���̳� Ŀ��ŧ��</p>
      </div>
      <div class="cont_btm">
        <div class="cont_l flex4">
          <p><span>���̳� ���� Ư��</span></p>
          <ul>
            <li>
              <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19422" title="5.0 ������ ��������">
                <div class="kind_tit">5.0 ������<br>��������</div>
                <div class="kind_cont">
                  �ô뺰,������<br>��������<br>
                  <span>GO</span>
                </div>
              </a>
            </li>
            <li>
              <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19423" title="��ǥ ��� ��Ʈ Ư��">
                <div class="kind_tit">��ǥ ���<br>��Ʈ Ư��</div>
                <div class="kind_cont">
                  ��� ����<br>�ϼ�<br>
                  <span>GO</span>
                </div>
              </a>
            </li>
            <li>
              <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19191" title="����� Ư��">
                <div class="kind_tit">�����<br>Ư��</div>
                <div class="kind_cont">
                  ����� ��Ʈ<br>�Ϻ� ����<br>
                  <span>GO</span>
                </div>
              </a>
            </li>
            <li>
              <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19978" title="��ȭ�� Ư��">
                <div class="kind_tit">��ȭ��<br>Ư��</div>
                <div class="kind_cont">
                  ��ȭ�� ��Ʈ<br>�Ϻ� ����<br>
                  <span>GO</span>
                </div>
              </a>
            </li>
          </ul>
        </div>
        <div class="cont_r flex2">
          <p><span>���� ���ǰ��</span></p>
          <ul>
            <li>
              <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19424" title="���� ȸ�� Ʈ���̴� ���ǰ��">
                <div class="kind_tit">���� ȸ��<br>Ʈ���̴� ���ǰ��</div>
                <div class="kind_cont">
                  �ô뺰 ȸ�� ����Ʈ��<br>���� ���<br>
                  <span>GO</span>
                </div>
              </a>
            </li>
            <li>
              <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19976" title="4.0 ���� ����  ���ǰ��">
                <div class="kind_tit">4.0 ���� ���� <br>���ǰ��</div>
                <div class="kind_cont">
                  ������Ƽ ��������<br>�հ� ���� �ϼ�<br>
                  <span>GO</span>
                </div>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </li>

    <!-- ���ѱ� E -->
    <!-- ������ S -->
    <li id="tab1_2" class="gosabu88 tea_tab">
      <div class="cont_top">
        <div class="cont_l">
          <img src="<%=img_main%>/profphoto/gong/gosabu88/prof.png" alt="�ѱ��� ������ ������" />
          <a href="<%=url_main%>/teacher/home.asp?bcode=gosabu88" target="_blank">
            <img src="<%=img_main%>/m/2023/0126_history/con4_img02.png" alt="�ѱ��� ������ ������" />
          </a>
        </div>
        <div class="cont_r">
          <p>���� �� �ñ�, ��������� �����ϴ� <br class="mo_hide">���� �Ϻ��� �ѱ��� ����</p>
          <div class="eventVideo video_renewal">
            <div class="video_box">
              <%
                evt_no = ""
                vod_KBN = "40" '40:������, 55:OT 
                playerKBN = ""
                CHR_CD = "19948"
                LEC_CD = "211794"
                IMG_URL = img_main & "/m/2023/0126_history/tab_video2.jpg"
                P_WIDTH = "600"
                P_HEIGHT = "338"
                AutoPlay = "N"
              %>
              <!-- #include virtual="/Player/kollus/play/play_inc.asp"-->
            </div>
          </div>
        </div>
      </div>
      <div class="cont_mid">
        <i>
          <a href="javascript:;" onclick="GongcampusFreePlay('E', 4421, '', '');" >
            <img src="<%=img_main%>/m/2023/0126_history/final_btn.png" alt="���̳� ���� Ŀ��ŧ��" />
          </a>
        </i>
        <p>RIGHT NOW! ������ ������ ���̳� Ŀ��ŧ��</p>
      </div>
      <div class="cont_btm">
        <div class="cont_l flex2">
          <p><span>���̳� ���� Ư��</span></p>
          <ul>
            <li>
              <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19379" title="���̳� ��������">
                <div class="kind_tit">���̳� ��������</div>
                <div class="kind_cont">
                  ������ ���� ��õ!<br><br>
                  <span>GO</span>
                </div>
              </a>
            </li>
            <li>
              <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=20003 " title="�з��� ��ĭ��Ʈ">
                <div class="kind_tit">�з��� ��ĭ��Ʈ</div>
                <div class="kind_cont">
                  ��ȭ/��ġ/��ȸ����/<br>������ Ű���� ����<br>
                  <span>GO</span>
                </div>
              </a>
            </li>
          </ul>
        </div>
        <div class="cont_r flex4">
          <p><span>���� ���ǰ��</span></p>
          <ul>
            <li>
              <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19306" title="���⹮���� ���� ���� ���ǰ��">
                <div class="kind_tit">���⹮����<br>���� ����<br>���ǰ��</div>
                <div class="kind_cont">
                  �ʽ� ��õ!<br><br>
                  <span>GO</span>
                </div>
              </a>
            </li>
            <li>
              <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19468" title="���� ���ǰ��  ����1">
                <div class="kind_tit">���� ���ǰ�� <br>����1</div>
                <div class="kind_cont">
                  9�� ���� ��õ!<br><br>
                  <span>GO</span>
                </div>
              </a>
            </li>
            <li>
              <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19948" title="���� ���ǰ�� ����2">
                <div class="kind_tit">���� ���ǰ�� <br>����2</div>
                <div class="kind_cont">
                  9�� ���� ��õ!<br><br>
                  <span>GO</span>
                </div>
              </a>
            </li>
            <li>
              <a href="javascript:;" onclick="alert('�� ������ �����Դϴ�. ��ø� ��ٷ� �ּ���.');" title="������ũ ���ǰ��">
                <div class="kind_tit">������ũ <br>���ǰ��</div>
                <div class="kind_cont">
                  �ֽ� ����<br>�籸��<br>
                  <span>GO</span>
                </div>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </li>
    <!-- ������ E -->
    <!-- ��ȯ S -->
    <li id="tab1_3" class="vision0911 tea_tab">
      <div class="cont_top">
        <div class="cont_l">
          <img src="<%=img_main%>/profphoto/gong/vision0911/prof.png" alt="�ѱ��� ��ȯ ������">
          <a href="<%=url_main%>/teacher/home.asp?bcode=vision0911" target="_blank">
            <img src="<%=img_main%>/m/2023/0126_history/con4_img03.png" alt="�ѱ��� ��ȯ ������">
          </a>
        </div>
        <div class="cont_r">
          <p>���� ����, �پ ���߷��� <br class="mo_hide">�հ��� ���� �Ѵ�</p>
          <div class="eventVideo video_renewal">
            <div class="video_box">
              <%
                evt_no = ""
                vod_KBN = "40" '40:������, 55:OT 
                playerKBN = ""
                CHR_CD = "19929"
                LEC_CD = "211270"
                IMG_URL = img_main & "/m/2023/0126_history/tab_video3.jpg"
                P_WIDTH = "600"
                P_HEIGHT = "338"
                AutoPlay = "N"
              %>
              <!-- #include virtual="/Player/kollus/play/play_inc.asp"-->
            </div>
          </div>
        </div>
      </div>
      <div class="cont_mid">
        <i>
          <a href="javascript:;" onclick="GongcampusFreePlay('E', 4408, '', '');" >
            <img src="<%=img_main%>/m/2023/0126_history/final_btn.png" alt="���̳� ���� Ŀ��ŧ��" />
          </a>
        </i>
        <p>RIGHT NOW! ��ȯ ������ ���̳� Ŀ��ŧ��</p>
      </div>
      <div class="cont_btm">
        <div class="cont_l flex2">
          <p><span>���̳� ���� Ư��</span></p>
          <ul>
            <li>
              <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19929" title="������ ����һ�">
                <div class="kind_tit">������ ����һ�</div>
                <div class="kind_cont">
                  ������ ������ ä���<br>������ ���భ��<br>
                  <span>GO</span>
                </div>
              </a>
            </li>
            <li>
              <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19274" title="4�ð� ������ Ư��">
                <div class="kind_tit">4�ð� ������ Ư��</div>
                <div class="kind_cont">
                  4�ð� ���� ������<br>�з��� Ư��<br>
                  <span>GO</span>
                </div>
              </a>
            </li>
          </ul>
        </div>
        <div class="cont_r flex2">
          <p><span>���� ���ǰ��</span></p>
          <ul>
            <li>
              <a href="javascript:;" onclick="alert('�� ������ �����Դϴ�. ��ø� ��ٷ� �ּ���.');" title="���� ���ں� ���ǰ��">
                <div class="kind_tit">���� ���ں� ���ǰ��</div>
                <div class="kind_cont">
                  ���� ȸ�� ȿ�� &<br>���ǰ�� �Ʒ�<br>
                  <span>GO</span>
                </div>
              </a>
            </li>
            <li>
              <a href="javascript:;" onclick="alert('�� ������ �����Դϴ�. ��ø� ��ٷ� �ּ���.');" title="������ ���ǰ��">
                <div class="kind_tit">������ ���ǰ��</div>
                <div class="kind_cont">
                  ���� ����� <br>���� ���̵� �� ����<br>
                  <span>GO</span>
                </div>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </li>
    <!-- ��ȯ E -->
    <!-- �ֿ��� S -->
    <li id="tab1_4" class="duwo20405 tea_tab">
      <div class="cont_top">
        <div class="cont_l">
          <img src="<%=img_main%>/profphoto/gong/duwo20405/prof.png" alt="�ѱ��� �ֿ��� ������">
          <a href="<%=url_main%>/teacher/home.asp?bcode=duwo20405" target="_blank">
            <img src="<%=img_main%>/m/2023/0126_history/con4_img04.png" alt="�ѱ��� �ֿ��� ������">
          </a>
        </div>
        <div class="cont_r">
          <p>������ ���迡 �˸��� �������ռ����� <br class="mo_hide">���� �հ� ����</p>
          <div class="eventVideo video_renewal">
            <div class="video_box">
              <%
                evt_no = ""
                vod_KBN = "40" '40:������, 55:OT 
                playerKBN = ""
                CHR_CD = "19593"
                LEC_CD = "211468"
                IMG_URL = img_main & "/m/2023/0126_history/tab_video4.jpg"
                P_WIDTH = "600"
                P_HEIGHT = "338"
                AutoPlay = "N"
              %>
              <!-- #include virtual="/Player/kollus/play/play_inc.asp"-->
            </div>
          </div>
        </div>
      </div>
      <div class="cont_mid">
        <p>RIGHT NOW! �ֿ��� ������ ���̳� Ŀ��ŧ��</p>
      </div>
      <div class="cont_btm">
        <div class="cont_l flex2">
          <p><span>���̳� ���� Ư��</span></p>
          <ul>
            <li>
              <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=19593" title="���ǵ� ������/���м�/�ܿ��� ��Ǯ">
                <div class="kind_tit">���ǵ� ������/<br>���м�/�ܿ��� ��Ǯ</div>
                <div class="kind_cont">
                  �ٽ� ���� + �ٽɻ��<br>+ �ٽɹ������� ������<br>
                  <span>GO</span>
                </div>
              </a>
            </li>
          </ul>
        </div>
        <div class="cont_r flex2">
          <p><span>���� ���ǰ��</span></p>
          <ul>
            <li>
              <a href="javascript:;" onclick="alert('�� ������ �����Դϴ�. ��ø� ��ٷ� �ּ���.');" title="���� ���� ���ǰ��">
                <div class="kind_tit">���� ���� ���ǰ��</div>
                <div class="kind_cont">
                  �ѱ��� ���� ������<br>�ݿ��� �Ϻ��� ����<br>
                  <span>GO</span>
                </div>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </li>
    <!-- �ֿ��� E -->
    <!-- ������ S -->
    <li id="tab1_5" class="k1mj1njae tea_tab">
      <div class="cont_top">
        <div class="cont_l">
          <img src="<%=img_main%>/profphoto/gong/k1mj1njae/prof.png" alt="�ѱ��� ������ ������">
          <a href="<%=url_main%>/teacher/home.asp?bcode=k1mj1njae" target="_blank">
            <img src="<%=img_main%>/m/2023/0126_history/con4_img05.png" alt="�ѱ��� ������ ������">
          </a>
        </div>
        <div class="cont_r">
          <p>�����ϰ��� �ϴ� ������ ������ �ִٸ� <br class="mo_hide">�������� �ѱ��� �ϼ�</p>
          <div class="eventVideo video_renewal" onclick="javascript: alert('���� ������ �����Դϴ�. ��ø� ��ٷ� �ּ���.');">
            <img src="<%=img_main%>/m/2023/0126_history/tab_video5.jpg" alt="">
            <!-- <div class="video_box">
              <%
                evt_no = ""
                vod_KBN = "40" '40:������, 55:OT 
                playerKBN = ""
                CHR_CD = "19948"
                LEC_CD = "211794"
                IMG_URL = img_main & "/m/2023/0126_history/tab_video5.jpg"
                P_WIDTH = "600"
                P_HEIGHT = "338"
                AutoPlay = "N"
              %>
              include virtual="/Player/kollus/play/play_inc.asp"
            </div> -->
          </div>
        </div>
      </div>
      <div class="cont_mid">
        <p>RIGHT NOW! ������ ������ ���̳� Ŀ��ŧ��</p>
      </div>
      <div class="cont_btm">
        <div class="cont_l flex2">
          <p><span>���̳� ���� Ư��</span></p>
          <ul>
            <li>
              <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=18414" title="������ ��ᰭȭ Ư��">
                <div class="kind_tit">������<br>��ᰭȭ Ư��</div>
                <div class="kind_cont">
                  ���⵵ �߽�����<br>�߿� ���� ���<br>
                  <span>GO</span>
                </div>
              </a>
            </li>
          </ul>
        </div>
        <div class="cont_r flex2">
          <p><span>���� ���ǰ��</span></p>
          <ul>
            <li>
              <a href="<%=url_main%>/vod/vod_chr_view.asp?chr_cd=18324" title="�����̹� ������ ���ǰ��">
                <div class="kind_tit">�����̹� <br>������ ���ǰ��</div>
                <div class="kind_cont">
                  �ٷ��� ���� ������ <br>�ѱ��� ���� ���<br>
                  <span>GO</span>
                </div>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </li>
    <!-- ������ E -->
  </ul>
</div>
</div>`;

const css = `.evCon4 {background: #fff;text-align: center;font-family: 'NotoSans KR';}
.evCon4 .tab_base2 {}
.evCon4 .tab_base2 .slick-track {transform: none !important;}
.evCon4 .tab_base2 .slick-slide {width: 20%; background: #eee; color: #999; font-size: 23px; margin: 0 2px 0 0;}
.evCon4 .tab_base2 .slick-current {background: #000; color: #fff;}
.evCon4 .tab_base2 .slick-current li a {color:#fff;}
.evCon4 .tab_base2 li a {display: block; padding: 16px 0;}
.evCon4 .tab_base2 li span {display: block; font-size: 14px;}
.evCon4 .panel_base {}
.evCon4 .panel_base .slick-slide {opacity: 0 !important;}
.evCon4 .panel_base .slick-active {opacity: 1 !important; transition: opacity .5s ease-in;}
.evCon4 .panel_base .slick-slide > div {width: calc(100% - 2px);}
.evCon4 .panel_base li {}
.evCon4 .panel_base li .cont_top {margin: 40px 0 60px; display: flex; justify-content: space-between; align-items: center;}
.evCon4 .panel_base li .cont_top .cont_l {position: relative;}
.evCon4 .panel_base li .cont_top .cont_l::after {content: ''; width: 100%; height: 30%; background: linear-gradient(to top, #fff 20%, #ffffff70 60%, transparent); position: absolute; left: 0; bottom: -2px;}
.evCon4 .panel_base li .cont_top .cont_l a {position: absolute; bottom: 36px; left: 50%; transform: translateX(-50%); z-index: 1;}
.evCon4 .panel_base li .cont_top .cont_r {flex: 1; max-width: 600px;}
.evCon4 .panel_base li .cont_top .cont_r p {font-size: 30px; font-weight: bold; line-height: 1.2; margin: 0 0 46px;    color: #000;}
.evCon4 .panel_base li .cont_top .cont_r .eventVideo {}
.evCon4 .panel_base li .cont_mid {position: relative; margin: 0 0 45px;}
.evCon4 .panel_base li .cont_mid i {position: absolute; top: -56%; right: 10px; z-index: 2;}
.evCon4 .panel_base li .cont_mid p {background: #513fe7; color: #fff; font-size: 26px; font-weight: bold; padding: 16px 0;}
.evCon4 .panel_base li .cont_btm {display: flex; justify-content: center;}
.evCon4 .panel_base .duwo20405 .cont_btm .cont_l,
.evCon4 .panel_base .duwo20405 .cont_btm .cont_r,
.evCon4 .panel_base .k1mj1njae .cont_btm .cont_l,
.evCon4 .panel_base .k1mj1njae .cont_btm .cont_r {flex: 0 0 25%;}
.evCon4 .panel_base li .cont_btm .cont_l {flex: 1; margin: 0 10px 0 0;}
.evCon4 .panel_base li .cont_btm .cont_r {flex: 1;}
.evCon4 .panel_base li .cont_btm p {position: relative; z-index: 1; margin: 0 0 20px;}
.evCon4 .panel_base li .cont_btm p::after {content: ''; position: absolute; width: 100%; height: 20px; border: 1px solid #000; border-bottom: none; top: 50%; left: 0; z-index: -1;}
.evCon4 .panel_base li .cont_btm p span {background: #fff; padding: 0 30px; font-size: 23px; font-weight: bold;color: #000;}
.evCon4 .panel_base li .cont_btm ul {display: flex; justify-content: space-between;}
.evCon4 .panel_base li .cont_btm ul li {flex: 1; height: 240px; background: #eee; margin: 0 5px 0 0; flex: 1;}
.evCon4 .panel_base li .cont_btm ul li:last-child {margin: 0;}
.evCon4 .panel_base li .cont_btm ul li a {height: 100%; display: flex; flex-direction: column; justify-content: flex-end; padding: 35px 10px;}
.evCon4 .panel_base li .cont_btm ul li .kind_tit {font-weight: bold;color: #000;}
.evCon4 .panel_base li .cont_btm .flex4 ul li .kind_tit {font-size: 18px;}
.evCon4 .panel_base li .cont_btm .flex2 ul li .kind_tit {font-size: 21px;}
.evCon4 .panel_base li .cont_btm ul li .kind_tit::after {content: ''; display: block; width: 80%; height: 1px; background: #dcdcdc; margin: 18px 10%;}
.evCon4 .panel_base .gosabu88 .cont_btm .cont_l ul li .kind_tit::after,
.evCon4 .panel_base .vision0911 .cont_btm ul li .kind_tit::after,
.evCon4 .panel_base .duwo20405 .cont_btm .cont_r ul li .kind_tit::after {margin: 30px 10% 18px;}
.evCon4 .panel_base .gosabu88 .cont_btm .cont_r ul li:first-child .kind_tit::after {margin: 10px 10% 18px;}
.evCon4 .panel_base li .cont_btm ul li .kind_cont {font-size: 16px; font-weight: 300; color: #333;}
.evCon4 .panel_base li .cont_btm ul li .kind_cont span {font-size: 14px; background: #555; color: #fff; border-radius: 14px; line-height: 1; padding: 2px 18px; margin: 20px 0 0; display: inline-block;}

@media screen and (max-width: 1200px) {
  .evCon4 .panel_base li .cont_top {margin: 2% 0 4%;}
  .evCon4 .panel_base li .cont_top .cont_r p {margin: 0 0 6%;}
  .evCon4 .panel_base li .cont_mid i {width: 18%; top: -70%;}
}

@media screen and (max-width: 992px) {
  .evCon4 .tab_base2 li a {padding: 10px 0; font-size: 18px;}
  .evCon4 .tab_base2 li span {display: none;}
  .evCon4 .panel_base li .cont_top .cont_l {flex-basis: 40%;}
  .evCon4 .panel_base li .cont_top .cont_r {flex-basis: 58%; margin: 0 0 0 2%;}
  .evCon4 .panel_base li .cont_top .cont_r p {font-size: 26px;}
  .evCon4 .panel_base li .cont_mid {margin: 0 0 4%;}
  .evCon4 .panel_base li .cont_mid p {font-size: 20px; padding: 10px 0;}
  .evCon4 .panel_base li .cont_btm {flex-direction: column;}
  .evCon4 .panel_base li .cont_btm p span {font-size: 20px;}
  .evCon4 .panel_base li .cont_btm .cont_l {margin: 0 0 2%;}
  .evCon4 .panel_base .duwo20405 .cont_btm .cont_l,
  .evCon4 .panel_base .duwo20405 .cont_btm .cont_r,
  .evCon4 .panel_base .k1mj1njae .cont_btm .cont_l,
  .evCon4 .panel_base .k1mj1njae .cont_btm .cont_r {flex: 1;}
  .evCon4 .panel_base li .cont_btm ul li a {padding: 30px 5px;}
}

@media screen and (max-width: 768px) {
  .evCon4 .panel_base li .cont_top {flex-direction: column; margin: 2% 0 6%;}
  .evCon4 .panel_base li .cont_top .cont_l {width: 40%;}
  .evCon4 .panel_base li .cont_top .cont_l a {width: 60%; bottom: 10px;}
  .evCon4 .panel_base li .cont_top .cont_r {width: 100%; margin: 2% 0 0;}
  .evCon4 .panel_base li .cont_top .cont_r p {font-size: 20px; margin: 0 0 4%;}
  .evCon4 .panel_base li .cont_mid p {font-size: 16px;}
  .evCon4 .panel_base li .cont_btm {flex-direction: column;}
  .evCon4 .panel_base li .cont_btm .flex4,
  .evCon4 .panel_base li .cont_btm .flex2 {width: 98%; margin: 0 auto;}
  .evCon4 .panel_base li .cont_btm .cont_l {margin: 0 auto 4%;}
}

@media screen and (max-width: 576px) {
  .evCon4 .tab_base2 li a {font-size: 14px; padding: 6px 0 8px;}
  .evCon4 .panel_base li .cont_top .cont_l a {width: 90%;}
  .evCon4 .panel_base li .cont_top .cont_r p {font-size: 16px;}
  .evCon4 .panel_base li .cont_top .cont_r p .mo_hide {display: block;}
  .evCon4 .panel_base li .cont_mid p {font-size: 14px;}
  .evCon4 .panel_base li .cont_mid i {top: -150%; width: 22%; right: 0;}
  .evCon4 .panel_base li .cont_btm p::after {height: 10px;}
  .evCon4 .panel_base li .cont_btm p span {font-size: 18px; padding: 0 20px;}
  .evCon4 .panel_base li .cont_btm ul li {height: 190px;}
  .evCon4 .panel_base li .cont_btm .flex2 ul li .kind_tit {font-size: 16px;}
  .evCon4 .panel_base li .cont_btm .flex4 ul li .kind_tit {font-size: 13px;}
  .evCon4 .panel_base li .cont_btm ul li .kind_cont {font-size: 12px;}
  .evCon4 .panel_base li .cont_btm ul li .kind_tit::after {margin: 10px 10%;}
  .evCon4 .panel_base .gosabu88 .cont_btm .cont_r ul li:first-child .kind_tit::after {margin: 6px 10% 10px;}
  .evCon4 .panel_base .gosabu88 .cont_btm .cont_l ul li .kind_tit::after,
  .evCon4 .panel_base .vision0911 .cont_btm ul li .kind_tit::after,
  .evCon4 .panel_base .duwo20405 .cont_btm .cont_r ul li .kind_tit::after {margin: 18px 10% 10px;}
  .evCon4 .panel_base li .cont_btm ul li .kind_cont span {font-size: 12px;}

  .evCon4 .panel_base li .cont_top .cont_r .eventVideo {position: relative;width: auto;height: auto;background: #000;}
  .evCon4  .video_box {position: relative; top: unset; left: unset; width: auto; height: auto;padding-bottom: 56.2%;}
  .evCon4  .video_box .play_area {width: 100% !important;height: 100% !important;position: absolute;}
}`;

const js = `var panelLength = $('.evCon4 .panel_base .tea_tab').length;
// var rand = Math.floor(Math.random() * panelLength);

$('.evCon4 .panel_base').slick({
  slidesToShow: 1,
  slidesToScroll: 1,
  arrows: false,
  // autoplay: true,
  fade: true,
  // initialSlide: rand,
  initialSlide: 0,
  asNavFor: '.evCon4 .tab_base2',
});
$('.evCon4 .tab_base2').slick({
  slidesToShow: 5,
  asNavFor: '.evCon4 .panel_base',
  dots: true,
  focusOnSelect: true,
  // initialSlide: rand,
  initialSlide: 0,
});

$('.evCon4 .panel_base').on('afterChange', function(event, slick, currentSlide, nextSlide) {
  iframePause();
});

$('.evCon4 .tab_base2 li').click(function() {
  iframePause();
})

function iframePause() {
  if (typeof (controller) != 'undefined') {
    controller.pause();            
  }

  var autoV = $('.evCon4 .panel_base').get(0).slick.options.autoplay;
  if (autoV == false) {
    $('.evCon4 .panel_base').slick("slickSetOption","autoplay",true);
    $('.evCon4 .panel_base').slick("slickPlay");
  }

  var ifrm = $('.evCon4 .panel_base .slick-active').find("iframe");
  if (ifrm.length != 0) {
    $('.evCon4 .panel_base').slick("slickPause");
    $('.evCon4 .panel_base').slick("slickSetOption","autoplay",false);
  }
}

$('.tea_tab .video_renewal').click(function(){
  $('.evCon4 .panel_base').slick("slickPause");
  $('.evCon4 .panel_base').slick("slickSetOption","autoplay",false);
});`;

    return (
      <PageContent
        title={title}
        desc="�̺�Ʈ ������ ��� ���Ǵ� �� ����Դϴ�.<br />������ �ǿ������� 2~3�� �������� ���� �ڵ� �Ѹ��ǰ� �ǰ� ������ �̹��� �� ������ �����մϴ�.<br />���� �� ���ο��� �������� ����� ���, �Ѹ��� �ڵ����� �ߴܵ˴ϴ�."
        image="/images/tab1.png"
        html={html}
        css={css}
        js={js}
        items={["�ڵ��Ѹ�","������","�Ǿȿ�������"]}
        link="<%=url_main%>/s/gong/event/2023/01260015/index.asp"
        onChange={onChange}
      />
    )
  }
</script>