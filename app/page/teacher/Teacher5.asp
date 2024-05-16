<script type="text/babel">
  'use strict';

  function Teacher5({ title, onChange }) {

const html = `<div id="curr" class="tccont curr_zone">
    <p class="subtit">Ŀ��ŧ��</p>
    <div id="t_curr" class="teaCurr">
        <div class="tab_wrap">
            <div class="tab_cont">
                <div class="tc tc_1 on">
                    <div class="char_zone">
                        <img src="https://img.megagong.net/teacher/curr/gong/jeonhangil_char_221026.png" alt="����������">
                    </div>
                    <div class="tiny_txt">
                        <p>
                            *�ް������� ��/�������� �ѱ��� ������ �� ���� (2020.09~2023.05)<br>
                            ** ���ѱ� �ѱ��� ���̹� ī�� ���հ��ı⡱�Խ��� �Խñ� �� �ջ� (2022.10.24 14:00 ����)<br>
                            *** YES24 ���輭/�ڰ���-������-�ѱ��� ��������Ʈ ���� ����<br>
                            (2013.10-12, 2014.01-03, 05-12, 2015.01-12, 2016.01-12, 2017.01-05, 07-12, 2018.01-02, 08-12, 2019.01-03, 08-12, 2020.01-02, 06-12, 2021.01-02, 08-10, 12, 2022.01-02, 07-10.24)
                        </p>
                    </div>
                    <p class="curr_tit"><strong class="line">������ �հ��� ���� Ȯ���� ��!</strong><br><strong>���ѱ� �ѱ��� �ܱ� ����� Ŀ��ŧ�� </strong></p>
            
                    <p class="curr_Stit">
                        <span><strong>8�� ���� 95~100���� �ϼ��ϴ� �ʼ� ����</strong></span>
                        <a href="javascript:GongcampusFreePlay('E', 5287, '', '');" class="curr_vdo_btn" title="���� Ŀ��ŧ��">���� Ŀ��ŧ��</a>
                    <!--  <a href="javascript:alert('�غ����Դϴ�.')" class="curr_vdo_btn" title="���� Ŀ��ŧ��">���� Ŀ��ŧ��</a> -->
                    </p>

                    <div class="tbl_wrp essential">
                        <table class="tbl icoTbl" title="���� Ŀ��ŧ��">
                            <colgroup>
                                <col width="8%">
                                <col width="11.5%">
                                <col width="11.5%">
                                <col width="11.5%">
                                <col width="11.5%">
                                <col width="11.5%">
                                <col width="11.5%">
                                <col width="11.5%">
                                <col width="11.5%">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th scope="col" colspan="9">ù �����ϴ� �����</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                <th scope="col">����</th>
                                <th scope="col" colspan="2">�����н�</th>
                                <th scope="col" colspan="2">����ϼ�</th>
                                <th scope="col" colspan="2">�Ƿ�����</th>
                                <th scope="col" colspan="2">���̳� �����Ʒ�</th>
                                </tr>
                                <tr>
                                <th scope="row">���¸�</th>
                                <td class="col_gray">1.0 �Թ� <br> <span class="tiny_noti">(���־��� ��õ)</span> <div class="ico bg_orange">����</div></td>
                                <td>2.0 All-in-one<div class="ico bg_blue">+ �ʱ�<br class="mo">��Ʈ</div></td>
                                <td colspan="2">3.0 ���⹮��Ǯ��<div class="ico bg_blue">+ �ʱ�<br class="mo">��Ʈ</div></td>
                                
                                <td colspan="2">���ٳ�Ʈ �÷���<div class="ico bg_blue">+ �ʱ�<br class="mo">��Ʈ</div></td>
                                <td colspan="2">4.0 ���� ���ǰ�� ����1,2<div class="ico bg_blue">+ �ʱ�<br class="mo">��Ʈ</div></td>
                                
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="tbl_wrp optional">
                    <table class="tbl icoTbl" title="���� Ŀ��ŧ��">
                        <colgroup>
                            <col width="8%">
                            <col width="11.5%">
                            <col width="11.5%">
                            <col width="11.5%">
                            <col width="11.5%">
                            <col width="11.5%">
                            <col width="11.5%">
                            <col width="11.5%">
                            <col width="11.5%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th scope="col" colspan="9">�ٽ� �����ϴ� �����</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th scope="col" class="bg_gray">����</th>
                                <th scope="col" colspan="2" class="bg_gray">�����н�</th>
                                <th scope="col" colspan="2" class="bg_gray">����ϼ�</th>
                                <th scope="col" colspan="2" class="bg_gray">�Ƿ�����</th>
                                <th scope="col" colspan="2" class="bg_gray">���̳� �����Ʒ�</th>
                            </tr>
                            <tr>
                                <th scope="row" class="bg_gray">���¸�</th>
                                <td colspan="2" class="col_gray">�ʱ��Ʈ ���� <br> <span class="tiny_noti">(80�� ���� ����� ����)</span> <div class="ico bg_orange">����</div></td>
                                <td colspan="2">3.0 ���⹮��Ǯ��<div class="ico bg_blue">+ �ʱ�<br class="mo">��Ʈ</div></td>

                                
                                <td colspan="2">���ٳ�Ʈ �÷���<div class="ico bg_blue">+ �ʱ�<br class="mo">��Ʈ</div></td>
                                <td colspan="2">4.0 ���� ���ǰ�� ����1,2<div class="ico bg_blue">+ �ʱ�<br class="mo">��Ʈ</div></td>
                                
                            </tr>
                        </tbody>
                    </table>
                    </div>
            
                    <p class="curr_Stit"><strong>������ ��ȭ�� ���� �ܰ躰 ���ǰ�� ���� (�ɼ�)</strong></p>  
                    <div class="tbl_wrp optional">
                        <table class="tbl" title="���� Ŀ��ŧ��">
                            <colgroup>
                                <col width="8%">
                                <col width="23%">
                                <col width="23%">
                                <col width="23%">
                                <col width="23%">
                            </colgroup>
                            <thead>
                            </thead>
                            <tbody>
                            <tr>
                                <th scope="row" class="bg_gray">���¸�</th>
                                <td>���� ȸ�� ���ǰ��</td>
                                <td>���� ȸ�� ���ǰ�� ����1,2</td>
                                <td>���� ȸ�� ���ǰ��</td>
                                <td>���� ���ǰ�� <br> / �����Ӱ� ���ǰ��</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <p class="curr_Stit"><strong>���ѱ� �ѱ��� �ñ״�ó! �ʱ��Ʈ ���� (�ɼ�) </strong></p>  
                    <div class="tbl_wrp optional">
                        <table class="tbl" title="���� Ŀ��ŧ��">
                            <colgroup>
                                <col width="8%">
                                <col width="23%">
                                <col width="23%">
                                <col width="23%">
                                <col width="23%">
                            </colgroup>
                            <thead>
                            </thead>
                            <tbody>
                            <tr>
                                <th scope="row" class="bg_gray">���¸�</th>
                                <td>�ʱ��Ʈ ���� <span class="best bg_red">BEST</span></td>
                                <td>�ʱ��Ʈ ����</td>
                                <td>�ʱ��Ʈ 10�� ���</td>
                                <td>�ʱ��Ʈ ����</td>
                            </tr>
                            <tr>
                                <th scope="row" class="bg_gray">���� ����Ʈ</th>
                                <td>�ٽ� ������ ����Ʈ�ϰ� �н� <span class="tiny_noti col_gray">#���� ������ ������ ����� ��õ</span></td>
                                <td>���ظ� 1/2�� ����! �ʼ� ���� �н� <span class="tiny_noti col_gray">#��û� ��õ</span></td>
                                <td>���� ����Ʈ ���ַ� ������ ���� <span class="tiny_noti col_gray">#���� �Ǵ� 2.0 ������ ������ ��õ</span></td>
                                <td>���� �������� �� ���� ����Ʈ üũ <span class="tiny_noti col_gray">#���� ���� ��� ����� ��õ</span></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <p class="curr_Stit"><strong>��Ʈ�� ���� &amp; �ϱ� ��ȭ�� ���� ����Ư�� (�ɼ�)</strong></p>  
                    <div class="tbl_wrp optional">
                        <table class="tbl" title="���� Ŀ��ŧ��">
                            <colgroup>
                                <col width="8%">
                                <col width="23%">
                                <col width="23%">
                                <col width="23%">
                                <col width="23%">
                            </colgroup>
                            <thead>
                            </thead>
                            <tbody>
                            <tr>
                                <th scope="row" class="bg_gray">���¸�</th>
                                <td>�����</td>
                                <td>��ȭ��</td>
                                <td>������</td>
                                <td>��ǥ����Ʈ</td>
                            </tr>
                            </tbody>
                        </table>
                        <p class="noti_txt">* ���� ���´� ������ �Ǵ� �п� �������� ���� ����� �� �ֽ��ϴ�.</p>
                        <div class="curr_side_bnr">
                            <ul>
                                <li>
                                    <div class="inner">
                                        <p class="tit">���û����� Clean�� ���� ����<br><strong>���ѱ� �ѱ��� NAVER ���� ī��</strong></p>
                                        <p class="tag"><span>#�н� Q&amp;A</span><span>#�հ��ı�</span><span>#�Խ�����</span></p>
                                        <div class="btn_wrp col1">
                                            <a class="btn_txt" href="https://cafe.naver.com/hangilhistory" target="_blank">�ٷΰ���</a>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="inner">
                                        <p class="tit">�� �� ���� Smart�� �ϱ� �����<br><strong>���ѱ� �Ѵɰ� ���� APP</strong></p>
                                        <p class="tag"><span>#���ᰭ��</span><span>#OX����</span><span>#�����ٰ���</span></p>
                                        <div class="btn_wrp col2">
                                            <a href="https://apps.apple.com/us/app/%EC%A0%84%ED%95%9C%EA%B8%B8%ED%95%9C%EB%8A%A5%EA%B2%80/id1621280169" target="_blank"><img src="https://img.megagong.net/m/2023/0228_curr/btn_appstore.png" alt="App Store"></a>
                                            <a href="https://play.google.com/store/apps/details?id=kr.co.asnet.hangilhistory_app" target="_blank"><img src="https://img.megagong.net/m/2023/0228_curr/btn_googleplay.png" alt="Google Play"></a>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="tc tc_2">
                    <div class="char_zone">
                        <img src="https://img.megagong.net/teacher/curr/gong/jeonhangil_char2_230120.png" alt="����������">
                    </div>
                    <div class="tiny_txt">
                        <p>
                            * YES24 ���輭/�ڰ���-������-�ѱ��� ��������Ʈ ���� ���� <br>
                            (2013.10-12, 2014.01-03, 05-12, 2015.01-12, 2016.01-12, 2017.01-05, 07-12, 2018.01-02, <br>08-12, 2019.01-03, 08-12, 2020.01-02, 06-12, 2021.01-02, 08-10, 12, 2022.01-02, 07-10.24)
                        </p>
            
                        <p>** ���ѱ� �ѱ��� ���̹� ī�� ���հ��ı⡱�Խ��� �Խñ� �� �ջ� (2022.10.24 14:00 ����)</p>
                    </div>
                    <p class="curr_tit">� ���ǡ����縦 �����ص� ������ �� ���!<br><strong>���ѱ� �Ѵɰ� ���� �ơ� Ŀ��ŧ��</strong></p>
                    <p class="curr_Stit">
                        <span>����� ������ ���ÿ� �ϼ��ϴ� <strong>���� ����</strong></span>
                        <a href="javascript:GongcampusFreePlay('E', 4554, '', '');" class="curr_vdo_btn" title="���� Ŀ��ŧ��">���� Ŀ��ŧ��</a>
                    </p>
            
                    <div class="tbl_wrp essential">
                        <table class="tbl" title="���� Ŀ��ŧ��">
                            <colgroup>
                                <col width="25%">
                                <col width="*">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>����</th>
                                    <th>���¸�</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="essential"><strong>���� Main</strong> + ����</td>
                                    <td>�Ѵɰ� ������� �� �� ���� </td>
                                </tr>
                                <tr>
                                    <td class="essential"><strong>���� Main</strong> + ����</td>
                                    <td>�Ѵɰ� ���ⰳ�� �� �� ���� </td>
                                </tr>
                                <tr>
                                    <td class="essential">���� + ���� <strong>���</strong></td>
                                    <td>�Ѵɰ� �ʱ��Ʈ �� �� ���� </td>
                                </tr>
                            </tbody>
                        </table>

                        <table class="tbl" title="���� Ŀ��ŧ��">
                            <colgroup>
                                <col width="25%">
                                <col width="*">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <td class="essential">��õ ���</td>
                                    <td>
                                    ��ü���� �帧�� ���� ���ذ� �����ϰų� �⺻ ������ ������ ��<br>
                                    ���� ������ ���ų� �ʹ� �����Ǿ� ����� �ʱ�ȭ �ǽ� ��
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>




                    <p class="curr_Stit">
                        <span>�ٽ� ����� ������ �ʰ������ �����ϴ� <strong>����&amp;�Ӽ� ���� </strong></span>
                    </p>
            
                    <div class="tbl_wrp essential">
                        <table class="tbl" title="���� Ŀ��ŧ��">
                            <colgroup>
                                <col width="25%">
                                <col width="*">
                                <col width="*">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>����</th>
                                    <th colspan="2">���¸�</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="essential"><strong>���� Main</strong> + ����</td>
                                    <td>�Ѵɰ� ������� �� �� �� ���� </td>
                                    <td>�Ѵɰ� ������� �� �� ���� </td>
                                </tr>
                                <tr>
                                    <td class="essential"><strong>���� Main</strong> + ����</td>
                                    <td>�Ѵɰ� ���ⰳ�� �� �� �� ���� </td>
                                    <td>�Ѵɰ� ���ⰳ�� �� �� ���� </td>
                                </tr>
                                <tr>
                                    <td class="essential">���� + ���� <strong>���</strong></td>
                                    <td>�Ѵɰ� �ʱ��Ʈ �� �� �� ���� </td>
                                    <td>�Ѵɰ� �ʱ��Ʈ �� �� ���� </td>
                                </tr>
                            </tbody>
                        </table>

                        <table class="tbl" title="���� Ŀ��ŧ��">
                            <colgroup>
                                <col width="25%">
                                <col width="*">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <td class="essential">��õ ���</td>
                                    <td>
                                    ��� �ѱ��翡 ���� �⺻ ������ �ְų� ���� ������ �ִ� ��<br>
                                    �ʼ� ���� Ű���� ������ �� �ð� ���ڷ� �� ����� ���Ͻô� ��
                                    </td>
                                </tr>
                            </tbody>
                        </table>

                        <div class="curr_side_bnr">
                            <ul>
                                <li>
                                    <div class="inner">
                                        <p class="tit">���û����� Clean�� ���� ����<br><strong>���ѱ� �ѱ��� NAVER ���� ī��</strong></p>
                                        <p class="tag"><span>#�н� Q&amp;A</span><span>#�հ��ı�</span><span>#�Խ�����</span></p>
                                        <div class="btn_wrp col1">
                                            <a class="btn_txt" href="https://cafe.naver.com/hangilhistory" target="_blank">�ٷΰ���</a>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="inner">
                                        <p class="tit">�� �� ���� Smart�� �ϱ� �����<br><strong>���ѱ� �Ѵɰ� ���� APP</strong></p>
                                        <p class="tag"><span>#���ᰭ��</span><span>#OX����</span><span>#�����ٰ���</span></p>
                                        <div class="btn_wrp col2">
                                            <a href="https://apps.apple.com/us/app/%EC%A0%84%ED%95%9C%EA%B8%B8%ED%95%9C%EB%8A%A5%EA%B2%80/id1621280169" target="_blank"><img src="https://img.megagong.net/m/2023/0228_curr/btn_appstore.png" alt="App Store"></a>
                                            <a href="https://play.google.com/store/apps/details?id=kr.co.asnet.hangilhistory_app" target="_blank"><img src="https://img.megagong.net/m/2023/0228_curr/btn_googleplay.png" alt="Google Play"></a>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                
                <style>
                    td.essential { background: #fef0ed;}
                </style>
            </div>
        </div>
    </div>
</div>`;

const css = `.char_zone{margin:0 0 20px;}
.tiny_txt{text-align:right;color:#bbb;font-size:11px;margin:20px 0 -16px;}
.line{font-weight:normal;border-bottom:1px solid #000;}
.teaCurr .curr_tit{text-align:center;}`;

const excCss = `img{display: inline;vertical-align:top;}
.tech_content .board_wrap h3{box-sizing:content-box;}
`;

const js = ``;

    return (
      <PageContent
        title={title}
        desc="�ް��������� ����Ȩ ���������� ���Ǵ� ����Ʈ ����Դϴ�. <br />
        ���� �������� �ۼ��� �ҽ� �����̳� ���������� �ۼ��� �����ı���� Ȯ���� �� �ֽ��ϴ�. <br /><br />
        ���� �������� �ۼ��� ���ҽ��� ���, �Խñ��� ������ ���� �ʵ�, �̺�Ʈ, ���� ������ ������ �������� ǥ��˴ϴ�. <br />
        ���� �ֱٿ� �ۼ��� ���ҽ� Ȥ�� �����ı��� ��� ������ �Ⱓ���� New �������� �ٰ� �˴ϴ�."
        // image="/images/popup1.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["����Ȩ","Ŀ��ŧ��","ǥ"]}
        link="<%=url_main%>/teacher/home.asp?bcode=jeonhangil"
        onChange={onChange}
      />
    )
  }
</script>