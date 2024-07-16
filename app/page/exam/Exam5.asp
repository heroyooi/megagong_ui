<script type="text/babel">
  'use strict';

  function Exam5({ title, onChange }) {

const html = `<!-- �ް������� 9�� �հݴ�� �����н� ������ S -->
<div id="eventWrap" class="eventWrap">
    <!-- ���ܰ���м� S -->
    <div id="apply_result" class="evSection apply_result">
        <div class="inner">
            <div class="title_default">
                <h4>���� ��� �м�</h4>
            </div>

            <div class="box_default">
                <div class="box_title"><span>��</span>&ensp;���� ���� ����</div>
                <div class="info_wrap type_2">
                    <div class="info flex">
                        <div class="info_title">������ ����</div>
                        <div class="info_content">������ 9��</div>
                    </div>
                    <div class="info flex">
                        <div class="info_title">������ ����</div>
                        <div class="info_content">���� �����</div>
                    </div>
                    <div class="info">
                        <div class="info_title">������ ����</div>
                        <table class="info_table">
                            <colgroup>
                                <col style="width: 21%;">
                                <col style="width: 29%;">
                                <col style="width: 21%;">
                                <col style="width: 29%;">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <th scope="row">����</th>
                                    <td>��������</td>
                                    <th scope="row">����</th>
                                    <td>�Ϲ�����-����</td>
                                </tr>
                                <tr>
                                    <th scope="row">�������</th>
                                    <td> ����, ����, �ѱ���</td>
                                    <th scope="row">��������</th>
                                    <td>�������ѷ�, �����а���</td>
                                </tr>
                                <tr id="special_subj_know" style="">
                                    <th scope="row"><div>�������ѷ� <br />��� ���� ���� ����</div></th>
                                    <td>����</td>
                                    <th scope="row"><div>�����а��� <br />��� ���� ���� ����</div></th>
                                    <td>����</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="info">
                        <div class="info_title">������ ����</div>
                        <table class="info_table">
                            <colgroup>
                                <col style="width: 21%;">
                                <col style="width: 29%;">
                                <col style="width: 21%;">
                                <col style="width: 29%;">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <th scope="row">������ �غ� ����</th>
                                    <td>�������� ������</td>
                                    <th scope="row">��ǥ ���� �Ⱓ</th>
                                    <td>6����~1��</td>
                                </tr>
                                <tr>
                                    <th scope="row">���� ���� ����</th>
                                    <td>��ҿ� ���� ���� �����̾</td>
                                    <th scope="row">���� �з�</th>
                                    <td>����(4����) ����</td>
                                </tr>
                                <tr>
                                    <th scope="row">���� ���</th>
                                    <td colspan="3" class="col_3">
                                        <div class="flex">
                                            <span>���� 1���</span>
                                            <span>���� 1���</span>
                                            <span>�ѱ��� 1���</span>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <div class="box_default">
                <div class="box_title"><span>��</span> ä�� ���</div>
                
                <div class="table_default result_tbl grade_tbl">
                    <!-- PC -->
                    <table class="tbl_pc">
                        <colgroup>
                            <col style="width: 10.2%;">
                            <col style="width: auto;">
                        </colgroup>
                        <thead>
                            <tr>
                                <th scope="row" class="cr_1">����</th>
                                <th scope="col" colspan="5" class="cr_2">����</th>
                                <th scope="col" colspan="5" class="cr_2">����</th>
                                <th scope="col" colspan="5" class="cr_2">�ѱ���</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="num">
                                <th scope="row" class="cr_1">��ȣ</th>
                                
                                <td>1</td> 
                                <td>2</td> 
                                <td>3</td> 
                                <td>4</td> 
                                <td>5</td> 
                                <td>1</td> 
                                <td>2</td> 
                                <td>3</td> 
                                <td>4</td> 
                                <td>5</td> 
                                <td>1</td> 
                                <td>2</td> 
                                <td>3</td> 
                                <td>4</td> 
                                <td>5</td> 
                            </tr>
                            <tr>
                                <th scope="row" class="cr_1">�Է´��</th>
                                
                                <td>1</td> 
                                <td>2</td> 
                                <td>3</td> 
                                <td>4</td> 
                                <td>4</td> 
                                <td>2</td> 
                                <td>1</td> 
                                <td>2</td> 
                                <td>3</td> 
                                <td>3</td> 
                                <td>4</td> 
                                <td>3</td> 
                                <td>2</td> 
                                <td>1</td> 
                                <td>1</td> 
                            </tr>
                            <tr>
                                <th scope="row" class="cr_1">����</th>
                                
                                <td>4</td> 
                                <td>2</td> 
                                <td>3</td> 
                                <td>4</td> 
                                <td>1</td> 
                                <td>1</td> 
                                <td>1</td> 
                                <td>3</td> 
                                <td>2</td> 
                                <td>3</td> 
                                <td>1</td> 
                                <td>4</td> 
                                <td>4</td> 
                                <td>3</td> 
                                <td>1</td> 
                            </tr>
                            <tr>
                                <th scope="row" class="cr_1">����</th>
                                
                                <td class="ans_X">��</td>
                                
                                <td class="ans_O">��</td>
                                
                                <td class="ans_O">��</td>
                                
                                <td class="ans_O">��</td>
                                
                                <td class="ans_X">��</td>
                                
                                <td class="ans_X">��</td>
                                
                                <td class="ans_O">��</td>
                                
                                <td class="ans_X">��</td>
                                
                                <td class="ans_X">��</td>
                                
                                <td class="ans_O">��</td>
                                
                                <td class="ans_X">��</td>
                                
                                <td class="ans_X">��</td>
                                
                                <td class="ans_X">��</td>
                                
                                <td class="ans_X">��</td>
                                
                                <td class="ans_O">��</td>
                                
                            </tr>
                            <tr>
                                <th scope="row" class="cr_1">�������ؼ�</th>
                                
                                <td><a href="javascript: void(0);" onclick="showQst('10', '1')" class="qst_view" title="�������ؼ� ����">�������ؼ� ����</a></td>
                                
                                <td><a href="javascript: void(0);" onclick="showQst('10', '2')" class="qst_view" title="�������ؼ� ����">�������ؼ� ����</a></td>
                                
                                <td><a href="javascript: void(0);" onclick="showQst('10', '3')" class="qst_view" title="�������ؼ� ����">�������ؼ� ����</a></td>
                                
                                <td><a href="javascript: void(0);" onclick="showQst('10', '4')" class="qst_view" title="�������ؼ� ����">�������ؼ� ����</a></td>
                                
                                <td><a href="javascript: void(0);" onclick="showQst('10', '5')" class="qst_view" title="�������ؼ� ����">�������ؼ� ����</a></td>
                                
                                <td><a href="javascript: void(0);" onclick="showQst('11', '1')" class="qst_view" title="�������ؼ� ����">�������ؼ� ����</a></td>
                                
                                <td><a href="javascript: void(0);" onclick="showQst('11', '2')" class="qst_view" title="�������ؼ� ����">�������ؼ� ����</a></td>
                                
                                <td><a href="javascript: void(0);" onclick="showQst('11', '3')" class="qst_view" title="�������ؼ� ����">�������ؼ� ����</a></td>
                                
                                <td><a href="javascript: void(0);" onclick="showQst('11', '4')" class="qst_view" title="�������ؼ� ����">�������ؼ� ����</a></td>
                                
                                <td><a href="javascript: void(0);" onclick="showQst('11', '5')" class="qst_view" title="�������ؼ� ����">�������ؼ� ����</a></td>
                                
                                <td><a href="javascript: void(0);" onclick="showQst('12', '1')" class="qst_view" title="�������ؼ� ����">�������ؼ� ����</a></td>
                                
                                <td><a href="javascript: void(0);" onclick="showQst('12', '2')" class="qst_view" title="�������ؼ� ����">�������ؼ� ����</a></td>
                                
                                <td><a href="javascript: void(0);" onclick="showQst('12', '3')" class="qst_view" title="�������ؼ� ����">�������ؼ� ����</a></td>
                                
                                <td><a href="javascript: void(0);" onclick="showQst('12', '4')" class="qst_view" title="�������ؼ� ����">�������ؼ� ����</a></td>
                                
                                <td><a href="javascript: void(0);" onclick="showQst('12', '5')" class="qst_view" title="�������ؼ� ����">�������ؼ� ����</a></td>
                                
                            </tr>
                        </tbody>
                    </table>
                    <!-- ����� -->
                    <table class="tbl_mo">
                        <colgroup>
                            <col style="width: 16%">
                            <col style="width: 16.8%">
                            <col style="width: 16.8%">
                            <col style="width: 16.8%">
                            <col style="width: 16.8%">
                            <col style="width: 16.8%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th scope="col" class="cr_1">����</th>
                                <th scope="col" class="cr_1">��ȣ</th>
                                <th scope="col" class="cr_1">�Է´��</th>
                                <th scope="col" class="cr_1">����</th>
                                <th scope="col" class="cr_1">����</th>
                                <th scope="col" class="cr_1">�������ؼ�</th>
                            </tr>
                        </thead>
                        <tbody>
                            
                            <tr>
                                
                                <th scope="row" rowspan="5" class="cr_2">����</th>
                                
                                <th scope="row" class="num">1</th>
                                <td>1</td>
                                <td>4</td>
                                <td class="ans_X">��</td>
                                <td><a href="javascript: void(0);" onclick="showQst('10', '1')" class="qst_view" title="�������ؼ� ����">�������ؼ� ����</a></td>
                            </tr>
                            
                            <tr>
                                
                                <th scope="row" class="num">2</th>
                                <td>2</td>
                                <td>2</td>
                                <td class="ans_O">��</td>
                                <td><a href="javascript: void(0);" onclick="showQst('10', '2')" class="qst_view" title="�������ؼ� ����">�������ؼ� ����</a></td>
                            </tr>
                            
                            <tr>
                                
                                <th scope="row" class="num">3</th>
                                <td>3</td>
                                <td>3</td>
                                <td class="ans_O">��</td>
                                <td><a href="javascript: void(0);" onclick="showQst('10', '3')" class="qst_view" title="�������ؼ� ����">�������ؼ� ����</a></td>
                            </tr>
                            
                            <tr>
                                
                                <th scope="row" class="num">4</th>
                                <td>4</td>
                                <td>4</td>
                                <td class="ans_O">��</td>
                                <td><a href="javascript: void(0);" onclick="showQst('10', '4')" class="qst_view" title="�������ؼ� ����">�������ؼ� ����</a></td>
                            </tr>
                            
                            <tr>
                                
                                <th scope="row" class="num">5</th>
                                <td>4</td>
                                <td>1</td>
                                <td class="ans_X">��</td>
                                <td><a href="javascript: void(0);" onclick="showQst('10', '5')" class="qst_view" title="�������ؼ� ����">�������ؼ� ����</a></td>
                            </tr>
                            
                            <tr>
                                
                                <th scope="row" rowspan="5" class="cr_2">����</th>
                                
                                <th scope="row" class="num">1</th>
                                <td>2</td>
                                <td>1</td>
                                <td class="ans_X">��</td>
                                <td><a href="javascript: void(0);" onclick="showQst('11', '1')" class="qst_view" title="�������ؼ� ����">�������ؼ� ����</a></td>
                            </tr>
                            
                            <tr>
                                
                                <th scope="row" class="num">2</th>
                                <td>1</td>
                                <td>1</td>
                                <td class="ans_O">��</td>
                                <td><a href="javascript: void(0);" onclick="showQst('11', '2')" class="qst_view" title="�������ؼ� ����">�������ؼ� ����</a></td>
                            </tr>
                            
                            <tr>
                                
                                <th scope="row" class="num">3</th>
                                <td>2</td>
                                <td>3</td>
                                <td class="ans_X">��</td>
                                <td><a href="javascript: void(0);" onclick="showQst('11', '3')" class="qst_view" title="�������ؼ� ����">�������ؼ� ����</a></td>
                            </tr>
                            
                            <tr>
                                
                                <th scope="row" class="num">4</th>
                                <td>3</td>
                                <td>2</td>
                                <td class="ans_X">��</td>
                                <td><a href="javascript: void(0);" onclick="showQst('11', '4')" class="qst_view" title="�������ؼ� ����">�������ؼ� ����</a></td>
                            </tr>
                            
                            <tr>
                                
                                <th scope="row" class="num">5</th>
                                <td>3</td>
                                <td>3</td>
                                <td class="ans_O">��</td>
                                <td><a href="javascript: void(0);" onclick="showQst('11', '5')" class="qst_view" title="�������ؼ� ����">�������ؼ� ����</a></td>
                            </tr>
                            
                            <tr>
                                
                                <th scope="row" rowspan="5" class="cr_2">�ѱ���</th>
                                
                                <th scope="row" class="num">1</th>
                                <td>4</td>
                                <td>1</td>
                                <td class="ans_X">��</td>
                                <td><a href="javascript: void(0);" onclick="showQst('12', '1')" class="qst_view" title="�������ؼ� ����">�������ؼ� ����</a></td>
                            </tr>
                            
                            <tr>
                                
                                <th scope="row" class="num">2</th>
                                <td>3</td>
                                <td>4</td>
                                <td class="ans_X">��</td>
                                <td><a href="javascript: void(0);" onclick="showQst('12', '2')" class="qst_view" title="�������ؼ� ����">�������ؼ� ����</a></td>
                            </tr>
                            
                            <tr>
                                
                                <th scope="row" class="num">3</th>
                                <td>2</td>
                                <td>4</td>
                                <td class="ans_X">��</td>
                                <td><a href="javascript: void(0);" onclick="showQst('12', '3')" class="qst_view" title="�������ؼ� ����">�������ؼ� ����</a></td>
                            </tr>
                            
                            <tr>
                                
                                <th scope="row" class="num">4</th>
                                <td>1</td>
                                <td>3</td>
                                <td class="ans_X">��</td>
                                <td><a href="javascript: void(0);" onclick="showQst('12', '4')" class="qst_view" title="�������ؼ� ����">�������ؼ� ����</a></td>
                            </tr>
                            
                            <tr>
                                
                                <th scope="row" class="num">5</th>
                                <td>1</td>
                                <td>1</td>
                                <td class="ans_O">��</td>
                                <td><a href="javascript: void(0);" onclick="showQst('12', '5')" class="qst_view" title="�������ؼ� ����">�������ؼ� ����</a></td>
                            </tr>
                            
                        </tbody>
                    </table>
                </div>
                <div class="bnr_default quizbank">
                    <a href="/l/share/quizbank/index.asp" target="_blank">�� ���� ������ ������ �ʹٸ�? <br class="show-992"><span class="cr_1">9�� ������ ��������</span>���� <span class="cr_2">���⹮�� ���</span> �ٷΰ��� <i class="arrow"></i></a>
                </div>
            </div>

            <div class="box_default">
                <div class="box_title"><span>��</span> 2025 ������ 9�� ���� ����</div>
                <div class="table_default result_tbl predict_tbl">
                    <!-- PC -->
                    <table class="tbl_pc">
                        <colgroup>
                            <col style="width: auto;">
                        </colgroup>
                        <thead>
                            <tr>
                                <th scope="col" class="cr_1">���� ���</th>
                                <th scope="col" class="cr_2">����</th>
                                <th scope="col" class="cr_2">����</th>
                                <th scope="col" class="cr_2">�ѱ���</th>
                                <th scope="col" class="cr_2">�������ѷ�</th>
                                <th scope="col" class="cr_2">�����а���</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>80��</td>
                                <td>90��</td>
                                <td>80��</td>
                                <td>80��</td>
                                <td>75��</td>
                                <td>75��</td>
                            </tr>
                        </tbody>
                    </table>
                    <!-- ����� -->
                    <table class="tbl_mo">
                        <colgroup>
                            <col style="width: 40%;">
                            <col style="width: 60%;">
                        </colgroup>
                        <tbody>
                            <tr>
                                <th scope="row" class="cr_1">���� ���</th>
                                <td>80��</td>
                            </tr>
                            <tr>
                                <th scope="row" class="cr_2">����</th>
                                <td>90��</td>
                            </tr>
                            <tr>
                                <th scope="row" class="cr_2">����</th>
                                <td>80��</td>
                            </tr>
                            <tr>
                                <th scope="row" class="cr_2">�ѱ���</th>
                                <td>80��</td>
                            </tr>
                            <tr>
                                <th scope="row" class="cr_2">�������ѷ�</th>
                                <td>75��</td>
                            </tr>
                            <tr>
                                <th scope="row" class="cr_2">�����а���</th>
                                <td>75��</td>
                            </tr>
                        </tbody>
                    </table>
                    <ul class="tiny_noti">
                        <li>�� 2025 ���� ������ �ް������� ��������� ���� �Ⱓ�� ���� ������ ������ ��ȭ�� �м��� ������ ����Դϴ�.</li>
                        <li>�� �� �ڷ�� ����θ� Ȱ���Ͻñ� �ٶ��ϴ�.</li>
                    </ul>
                </div>
                <div class="bnr_default pass_opinion">
                    <a href="/l/gong/pass_opinion/index.asp" target="_blank">���! ������ ���Ƶ� �������� �������! <br class="show-992">�հ� ������� <span class="cr_1">���� ����</span> <span class="cr_2">�հ� ����</span> ���� ���� <i class="arrow"></i></a>
                </div>
            </div>

            <div class="box_default">
                <div class="box_title"><span>��</span> ���� ���� �հ� ����</div>
                <div class="table_default result_tbl pass_tbl">
                    <!-- PC -->
                    <table class="tbl_pc">
                        <colgroup>
                            <col style="width: 13.2%">
                            <col style="width: 13.2%">
                            <col style="width: 13.2%">
                            <col style="width: 13.2%">
                            <col style="width: 13.2%">
                            <col style="width: 17%">
                            <col style="width: 17%">
                        </colgroup>
                        <tbody>
                            <tr>
                                
                                <th rowspan="3"><span class="badge"><img src="https://design.megagong.net/image/m/2024/0708_exam/result_pass_badge2.png" alt="�հݵ���"></span></th>
                                
                                <th scope="col" colspan="7" class="cr_1">������ 9�� ��������&nbsp;�Ϲ�����-����<sup>*</sup></th>
                                <!--<th scope="col" colspan="7" class="cr_1">������ 9�� �������� ���뵿*</th>-->
                            </tr>
                            <tr>
                                <th scope="col" class="cr_2">�����ο�</th>
                                <th scope="col" class="cr_2">�����<sup>**</sup></th>
                                <th scope="col" class="cr_2">�� �����<sup>***</sup></th>
                                <th scope="col" class="cr_2">�հݼ�</th>
                                <th scope="col" colspan="2" class="cr_2">�������� �н��� ��������</th>
                            </tr>
                            <tr>
                                <td>344</td>
                                <td>77.5</td>
                                <td>58</td>
                                <td>90</td>
                                
                                <td><a href="javascript:;" onclick="openSubjGuide('2','1');">�������ѷ� &gt;</a></td>
                                <td><a href="javascript:;" onclick="openSubjGuide('2','2');">�����а��� &gt;</a></td>
                            </tr>
                        </tbody>
                    </table>
                    <!-- ����� -->
                    <table class="tbl_mo">
                        <colgroup>
                            <col style="width: 25%">
                            <col style="width: 35%">
                            <col style="width: 40%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th scope="col" colspan="3" class="cr_1">������ 9�� ��������&nbsp;�Ϲ�����-����<sup>*</sup></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                
                                <th rowspan="4"><span class="badge"><img src="https://design.megagong.net/image/m/2024/0708_exam/result_pass_badge2.png" alt="�հݵ���"></span></th>
                                
                                <th scope="row" class="cr_2">�����ο�</th>
                                <td>344</td>
                            </tr>
                            <tr>
                                <th scope="row" class="cr_2">�����<sup>**</sup></th>
                                <td>77.5</td>
                            </tr>
                            <tr>
                                <th scope="row" class="cr_2">�� �����<sup>***</sup></th>
                                <td>58</td>
                            </tr>
                            <tr>
                                <th scope="row" class="cr_2">�հݼ�</th>
                                <td>90</td>
                            </tr>
                        </tbody>
                    </table>
                    <ul class="tiny_noti">
                        <li>* 2024�� ������ 9�� �������� ����</li>
                        <li>** �����: �ش� ����(����)�� ������ �ο� �� �����ο�</li>
                        <li>*** �� �����: ������ ���迡 ������ �ο� �� �����ο�</li>
                    </ul>
                </div>
            </div>

            <div class="box_default">
                <div class="box_title"><span>��</span> ���� ���� 3���� ����</div>
                <div class="part-wrp">
                    <div id="insRecent">
                        <h4 style="display: none;">�ֱ� 3���� ����</h4>
                        <div class="pc-view">
                            <table title="2���ʱ�">
                                <colgroup>
                                    <col width="8%">
                                    <col width="15%">
                                    <col width="15%">
                                    <col width="15%">
                                    <col width="15%">
                                    <col width="15%">
                                    <col width="15%">
                                    <col width="15%">
                                    <col width="15%">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th scope="col">�⵵</th>
                                        <th scope="col">����(��)</th>
                                        <th scope="col">���(��)</th>
                                        <th scope="col">�����(:1)</th>
                                        <th scope="col">����(��)</th>
                                        <th scope="col">������(%)</th>
                                        <th scope="col">�� �����(:1)</th>
                                        <th scope="col">�ʱ��հ�(��)</th>
                                        <th scope="col">�հݼ�</th>
                                    </tr>
                                </thead>
                                <tbody>
                                
                                    <tr>
                                        <td>2023</td>
                                        <td>
                                            411<br />(<span class="type2"></span>45)
                                        </td>
                                        <td>
                                            30,206<br />(<span class="type2"></span>12,622)
                                        </td>
                                        <td>
                                            73.5
                                                <!--  : 1 -->
                                                <br />(<span class="type2"></span>20.4)
                                        </td>
                                        <td>
                                            23,349<br />(<span class="type2"></span>9,541)
                                        </td>
                                        <td>
                                            77.3<br />(<span class="type1"></span>0.5)
                                        </td>
                                        <td>
                                            56.8
                                                <!--  : 1 -->
                                                <br />(<span class="type2"></span>15.3)
                                        </td>
                                        <td>
                                            603<br />(<span class="type1"></span>75)
                                        </td>
                                        <td>
                                            89.00<br />(<span class="type2"></span>2.00)
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <td>2022</td>
                                        <td>
                                            456<br />(<span class="type1"></span>40)
                                        </td>
                                        <td>
                                            42,828<br />(<span class="type1"></span>1,074)
                                        </td>
                                        <td>
                                            93.9
                                                <!--  : 1 -->
                                                <br />(<span class="type2"></span>6.5)
                                        </td>
                                        <td>
                                            32,890<br />(<span class="type1"></span>118)
                                        </td>
                                        <td>
                                            76.8<br />(<span class="type2"></span>1.7)
                                        </td>
                                        <td>
                                            72.1
                                                <!--  : 1 -->
                                                <br />(<span class="type2"></span>6.7)
                                        </td>
                                        <td>
                                            528<br />(<span class="type2"></span>27)
                                        </td>
                                        <td>
                                            91.00
                                        </td>
                                    </tr>
                                
                                    <tr>
                                        <td>2021</td>
                                        <td>
                                            416
                                        </td>
                                        <td>
                                            41,754
                                        </td>
                                        <td>
                                            100.4
                                                <!--  : 1 -->
                                            
                                        </td>
                                        <td>
                                            32,772
                                        </td>
                                        <td>
                                            78.5
                                        </td>
                                        <td>
                                            78.8
                                                <!--  : 1 -->
                                            
                                        </td>
                                        <td>
                                            555
                                        </td>
                                        <td>
                                            400.84
                                        </td>
                                    </tr>
                                
                                </tbody>
                            </table>
                            
                            <p class="tiny-noti">�� �ֱ� 3���� �հݼ��� ��������(2021��), ���� ���(2022��,2023��) �� �ݿ��� ������, �̴� �����ڷ�� ����Ͻñ� �ٶ��ϴ�.</p>        
                            
                        </div>
                        <div class="mo-view" style="margin-top:30px">
                            <table title="2���ʱ�">
                                <colgroup>
                                    <col width="25%">
                                    <col width="25%">
                                    <col width="25%">
                                    <col width="25%">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th scope="col">�⵵</th>
                                        <th scope="col">2023</th>
                                        <th scope="col">2022</th>
                                        <th scope="col">2021</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th>����(��)</th>
                                        <td>
                                            411<br />(<span class="type2"></span>45)
                                        </td>
                                        <td>
                                            456<br />(<span class="type1"></span>40)
                                        </td>
                                        <td>
                                            416
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>���(��)</th>
                                        <td>
                                            30,206<br />(<span class="type2"></span>12,622)
                                        </td>
                                        <td>
                                            42,828<br />(<span class="type1"></span>1,074)
                                        </td>
                                        <td>
                                            41,754
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>�����(:1)</th>
                                        <td>
                                            73.5
                                                <!--  : 1 -->
                                                <br />(<span class="type2"></span>20.4)
                                        </td>
                                        <td>
                                            93.9
                                                <!--  : 1 -->
                                                <br />(<span class="type2"></span>6.5)
                                        </td>
                                        <td>
                                            100.4
                                                <!--  : 1 -->
                                            
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>����(��)</th>
                                        <td>
                                            23,349<br />(<span class="type2"></span>9,541)
                                        </td>
                                        <td>
                                            32,890<br />(<span class="type1"></span>118)
                                        </td>
                                        <td>
                                            32,772
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>������(%)</th>
                                        <td>
                                            77.3<br />(<span class="type1"></span>0.5)
                                        </td>
                                        <td>
                                            76.8<br />(<span class="type2"></span>1.7)
                                        </td>
                                        <td>
                                            78.5
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>�� �����(:1)</th>
                                        <td>
                                            56.8
                                                <!--  : 1 -->
                                                <br />(<span class="type2"></span>15.3)
                                        </td>
                                        <td>
                                            72.1
                                                <!--  : 1 -->
                                                <br />(<span class="type2"></span>6.7)
                                        </td>
                                        <td>
                                            78.8
                                            <!--  : 1 -->
                                            
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>�ʱ��հ�(��)</th>
                                        <td>
                                            603<br />(<span class="type1"></span>75)
                                        </td>
                                        <td>
                                            528<br />(<span class="type2"></span>27)
                                        </td>
                                        <td>
                                            555
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>�հݼ�</th>
                                        <td>
                                            89.00<br />(<span class="type2"></span>2.00)
                                        </td>
                                        <td>
                                            91.00
                                        </td>
                                        <td>
                                            400.84
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            
                            <p class="tiny-noti">�� �ֱ� 3���� �հݼ��� ��������(2021��), ���� ���(2022��,2023��) �� �ݿ��� ������, �̴� �����ڷ�� ����Ͻñ� �ٶ��ϴ�. </p>        
                            
                        </div>
                        <div class="series_graph">
                            <div id="chart1" style="height: 350px;"><div style="position: relative;"><div dir="ltr" style="position: relative; width: 333px; height: 350px;"><div aria-label="A chart." style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%;"><svg width="333" height="350" aria-label="A chart." style="overflow: hidden;"><defs id="_ABSTRACT_RENDERER_ID_0"><clipPath id="_ABSTRACT_RENDERER_ID_1"><rect x="64" y="67" width="206" height="216"></rect></clipPath></defs><rect x="0" y="0" width="333" height="350" stroke="none" stroke-width="0" fill="#ffffff"></rect><g><text text-anchor="start" x="64" y="47.05" font-family="Arial" font-size="13" font-weight="bold" stroke="none" stroke-width="0" fill="#000000">�����ο�</text><rect x="64" y="36" width="206" height="13" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g><g><rect x="64" y="67" width="206" height="216" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g clip-path="url(https://labdev.megagong.net/l/exam/gong/2024_2/apply_result.asp#_ABSTRACT_RENDERER_ID_1)"><g><rect x="64" y="282" width="206" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="64" y="239" width="206" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="64" y="196" width="206" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="64" y="153" width="206" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="64" y="110" width="206" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="64" y="67" width="206" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="64" y="261" width="206" height="1" stroke="none" stroke-width="0" fill="#ebebeb"></rect><rect x="64" y="218" width="206" height="1" stroke="none" stroke-width="0" fill="#ebebeb"></rect><rect x="64" y="175" width="206" height="1" stroke="none" stroke-width="0" fill="#ebebeb"></rect><rect x="64" y="132" width="206" height="1" stroke="none" stroke-width="0" fill="#ebebeb"></rect><rect x="64" y="89" width="206" height="1" stroke="none" stroke-width="0" fill="#ebebeb"></rect></g><g><rect x="82" y="257" width="34" height="1788" stroke="#a6bce9" stroke-width="1" fill="#a6bce9"></rect><rect x="150" y="85" width="34" height="1960" stroke="#a6bce9" stroke-width="1" fill="#a6bce9"></rect><rect x="218" y="279" width="34" height="1766" stroke="#a6bce9" stroke-width="1" fill="#a6bce9"></rect></g><g><rect x="99" y="245" width="1" height="12" stroke="none" stroke-width="0" fill="#999999"></rect><rect x="167" y="85" width="1" height="12" stroke="none" stroke-width="0" fill="#999999"></rect><rect x="235" y="267" width="1" height="12" stroke="none" stroke-width="0" fill="#999999"></rect></g></g><g></g><g><g><text text-anchor="middle" x="98.66666666666666" y="299.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#222222">2021</text></g><g><text text-anchor="middle" x="167" y="299.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#222222">2022</text></g><g><text text-anchor="middle" x="235.33333333333331" y="299.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#222222">2023</text></g><g><text text-anchor="end" x="53" y="286.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#444444">410</text></g><g><text text-anchor="end" x="53" y="243.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#444444">420</text></g><g><text text-anchor="end" x="53" y="200.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#444444">430</text></g><g><text text-anchor="end" x="53" y="157.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#444444">440</text></g><g><text text-anchor="end" x="53" y="114.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#444444">450</text></g><g><text text-anchor="end" x="53" y="71.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#444444">460</text></g></g><g><g><g><rect x="88.5" y="233.5" width="22" height="13" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><text text-anchor="middle" x="99" y="243.35" font-family="Arial" font-size="11" stroke="#ffffff" stroke-width="3" fill="#7484a3" aria-hidden="true">416</text><text text-anchor="middle" x="99" y="243.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#7484a3">416</text></g><rect x="90.5" y="234" width="17" height="11" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g></g><g><g><rect x="156.5" y="96.5" width="22" height="13" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><text text-anchor="middle" x="167" y="106.35" font-family="Arial" font-size="11" stroke="#ffffff" stroke-width="3" fill="#7484a3" aria-hidden="true">456</text><text text-anchor="middle" x="167" y="106.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#7484a3">456</text></g><rect x="158.5" y="97" width="17" height="11" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g></g><g><g><rect x="224.5" y="255.5" width="22" height="13" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><text text-anchor="middle" x="235" y="265.35" font-family="Arial" font-size="11" stroke="#ffffff" stroke-width="3" fill="#7484a3" aria-hidden="true">411</text><text text-anchor="middle" x="235" y="265.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#7484a3">411</text></g><rect x="227" y="256" width="16" height="11" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g></g></g></g><g></g></svg><div aria-label="A tabular representation of the data in the chart." style="position: absolute; left: -10000px; top: auto; width: 1px; height: 1px; overflow: hidden;"><table><thead><tr><th>�����ο�</th><th>�����ο�</th></tr></thead><tbody><tr><td>2021</td><td>416</td></tr><tr><td>2022</td><td>456</td></tr><tr><td>2023</td><td>411</td></tr></tbody></table></div></div></div><div aria-hidden="true" style="display: none; position: absolute; top: 360px; left: 343px; white-space: nowrap; font-family: Arial; font-size: 13px; font-weight: bold;">�����ο�</div><div></div></div></div>
                            <div id="chart2" style="height: 350px;"><div style="position: relative;"><div dir="ltr" style="position: relative; width: 333px; height: 350px;"><div aria-label="A chart." style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%;"><svg width="333" height="350" aria-label="A chart." style="overflow: hidden;"><defs id="_ABSTRACT_RENDERER_ID_2"><clipPath id="_ABSTRACT_RENDERER_ID_3"><rect x="64" y="67" width="206" height="216"></rect></clipPath></defs><rect x="0" y="0" width="333" height="350" stroke="none" stroke-width="0" fill="#ffffff"></rect><g><text text-anchor="start" x="64" y="47.05" font-family="Arial" font-size="13" font-weight="bold" stroke="none" stroke-width="0" fill="#000000">�����</text><rect x="64" y="36" width="206" height="13" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g><g><rect x="64" y="67" width="206" height="216" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g clip-path="url(https://labdev.megagong.net/l/exam/gong/2024_2/apply_result.asp#_ABSTRACT_RENDERER_ID_3)"><g><rect x="64" y="282" width="206" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="64" y="228" width="206" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="64" y="175" width="206" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="64" y="121" width="206" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="64" y="67" width="206" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="64" y="255" width="206" height="1" stroke="none" stroke-width="0" fill="#ebebeb"></rect><rect x="64" y="201" width="206" height="1" stroke="none" stroke-width="0" fill="#ebebeb"></rect><rect x="64" y="148" width="206" height="1" stroke="none" stroke-width="0" fill="#ebebeb"></rect><rect x="64" y="94" width="206" height="1" stroke="none" stroke-width="0" fill="#ebebeb"></rect></g><g><path d="M98.66666666666666,119.10000000000002L167,154.03749999999997L235.33333333333331,263.6875" stroke="#3366cc" stroke-width="2" fill-opacity="1" fill="none"></path></g><g><rect x="98.66666666666666" y="107.10000000000002" width="1" height="12" stroke="none" stroke-width="0" fill="#999999"></rect><rect x="167" y="142.03749999999997" width="1" height="12" stroke="none" stroke-width="0" fill="#999999"></rect><rect x="235.33333333333331" y="251.6875" width="1" height="12" stroke="none" stroke-width="0" fill="#999999"></rect></g></g><g></g><g><g><text text-anchor="middle" x="98.66666666666666" y="299.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#222222">2021</text></g><g><text text-anchor="middle" x="167" y="299.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#222222">2022</text></g><g><text text-anchor="middle" x="235.33333333333331" y="299.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#222222">2023</text></g><g><text text-anchor="end" x="53" y="286.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#444444">70</text></g><g><text text-anchor="end" x="53" y="232.6" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#444444">80</text></g><g><text text-anchor="end" x="53" y="178.85" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#444444">90</text></g><g><text text-anchor="end" x="53" y="125.1" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#444444">100</text></g><g><text text-anchor="end" x="53" y="71.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#444444">110</text></g></g><g><g><g><rect x="84.5" y="95.5" width="30" height="13" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><text text-anchor="middle" x="98.66666666666666" y="105.45000000000002" font-family="Arial" font-size="11" stroke="#ffffff" stroke-width="3" fill="#3366cc" aria-hidden="true">100.4</text><text text-anchor="middle" x="98.66666666666666" y="105.45000000000002" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#3366cc">100.4</text></g><rect x="86.16666666666666" y="96.10000000000002" width="25" height="11" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g></g><g><g><rect x="155.5" y="130.5" width="24" height="13" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><text text-anchor="middle" x="167" y="140.38749999999996" font-family="Arial" font-size="11" stroke="#ffffff" stroke-width="3" fill="#3366cc" aria-hidden="true">93.9</text><text text-anchor="middle" x="167" y="140.38749999999996" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#3366cc">93.9</text></g><rect x="157.5" y="131.03749999999997" width="19" height="11" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g></g><g><g><rect x="223.5" y="239.5" width="24" height="13" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><text text-anchor="middle" x="235.33333333333331" y="250.0375" font-family="Arial" font-size="11" stroke="#ffffff" stroke-width="3" fill="#3366cc" aria-hidden="true">73.5</text><text text-anchor="middle" x="235.33333333333331" y="250.0375" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#3366cc">73.5</text></g><rect x="225.83333333333331" y="240.6875" width="19" height="11" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g></g></g></g><g></g></svg><div aria-label="A tabular representation of the data in the chart." style="position: absolute; left: -10000px; top: auto; width: 1px; height: 1px; overflow: hidden;"><table><thead><tr><th>����</th><th>�����</th></tr></thead><tbody><tr><td>2021</td><td>100.4</td></tr><tr><td>2022</td><td>93.9</td></tr><tr><td>2023</td><td>73.5</td></tr></tbody></table></div></div></div><div aria-hidden="true" style="display: none; position: absolute; top: 360px; left: 343px; white-space: nowrap; font-family: Arial; font-size: 13px; font-weight: bold;">�����</div><div></div></div></div>
                            
                            <div id="chart3" style="height: 350px;"><div style="position: relative;"><div dir="ltr" style="position: relative; width: 332px; height: 350px;"><div aria-label="A chart." style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%;"><svg width="332" height="350" aria-label="A chart." style="overflow: hidden;"><defs id="_ABSTRACT_RENDERER_ID_4"><clipPath id="_ABSTRACT_RENDERER_ID_5"><rect x="64" y="67" width="205" height="216"></rect></clipPath></defs><rect x="0" y="0" width="332" height="350" stroke="none" stroke-width="0" fill="#ffffff"></rect><g><text text-anchor="start" x="64" y="47.05" font-family="Arial" font-size="13" font-weight="bold" stroke="none" stroke-width="0" fill="#000000">�հݼ�</text><rect x="64" y="36" width="205" height="13" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g><g><rect x="64" y="67" width="205" height="216" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g clip-path="url(https://labdev.megagong.net/l/exam/gong/2024_2/apply_result.asp#_ABSTRACT_RENDERER_ID_5)"><g><rect x="64" y="282" width="205" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="64" y="239" width="205" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="64" y="196" width="205" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="64" y="153" width="205" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="64" y="110" width="205" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="64" y="67" width="205" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="64" y="261" width="205" height="1" stroke="none" stroke-width="0" fill="#ebebeb"></rect><rect x="64" y="218" width="205" height="1" stroke="none" stroke-width="0" fill="#ebebeb"></rect><rect x="64" y="175" width="205" height="1" stroke="none" stroke-width="0" fill="#ebebeb"></rect><rect x="64" y="132" width="205" height="1" stroke="none" stroke-width="0" fill="#ebebeb"></rect><rect x="64" y="89" width="205" height="1" stroke="none" stroke-width="0" fill="#ebebeb"></rect></g><g><rect x="64" y="282" width="205" height="1" stroke="none" stroke-width="0" fill="#333333"></rect></g><g><path d="M98.5,110.1388L166.5,243.37L234.5,244.23000000000002" stroke="#3366cc" stroke-width="2" fill-opacity="1" fill="none"></path></g><g><rect x="98.5" y="98.1388" width="1" height="12" stroke="none" stroke-width="0" fill="#999999"></rect><rect x="166.5" y="231.37" width="1" height="12" stroke="none" stroke-width="0" fill="#999999"></rect><rect x="234.5" y="232.23000000000002" width="1" height="12" stroke="none" stroke-width="0" fill="#999999"></rect></g></g><g></g><g><g><text text-anchor="middle" x="98.5" y="299.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#222222">2021</text></g><g><text text-anchor="middle" x="166.5" y="299.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#222222">2022</text></g><g><text text-anchor="middle" x="234.5" y="299.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#222222">2023</text></g><g><text text-anchor="end" x="53" y="286.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#444444">0</text></g><g><text text-anchor="end" x="53" y="243.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#444444">100</text></g><g><text text-anchor="end" x="53" y="200.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#444444">200</text></g><g><text text-anchor="end" x="53" y="157.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#444444">300</text></g><g><text text-anchor="end" x="53" y="114.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#444444">400</text></g><g><text text-anchor="end" x="53" y="71.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#444444">500</text></g></g><g><g><g><rect x="80.5" y="86.5" width="37" height="13" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><text text-anchor="middle" x="98.5" y="96.4888" font-family="Arial" font-size="11" stroke="#ffffff" stroke-width="3" fill="#3366cc" aria-hidden="true">400.84</text><text text-anchor="middle" x="98.5" y="96.4888" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#3366cc">400.84</text></g><rect x="83" y="87.1388" width="31" height="11" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g></g><g><g><rect x="151.5" y="219.5" width="31" height="13" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><text text-anchor="middle" x="166.5" y="229.72" font-family="Arial" font-size="11" stroke="#ffffff" stroke-width="3" fill="#3366cc" aria-hidden="true">91.00</text><text text-anchor="middle" x="166.5" y="229.72" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#3366cc">91.00</text></g><rect x="154" y="220.37" width="25" height="11" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g></g><g><g><rect x="219.5" y="220.5" width="31" height="13" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><text text-anchor="middle" x="234.5" y="230.58" font-family="Arial" font-size="11" stroke="#ffffff" stroke-width="3" fill="#3366cc" aria-hidden="true">89.00</text><text text-anchor="middle" x="234.5" y="230.58" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#3366cc">89.00</text></g><rect x="222" y="221.23000000000002" width="25" height="11" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g></g></g></g><g></g></svg><div aria-label="A tabular representation of the data in the chart." style="position: absolute; left: -10000px; top: auto; width: 1px; height: 1px; overflow: hidden;"><table><thead><tr><th>����</th><th>�հݼ�</th></tr></thead><tbody><tr><td>2021</td><td>400.84</td></tr><tr><td>2022</td><td>91</td></tr><tr><td>2023</td><td>89</td></tr></tbody></table></div></div></div><div aria-hidden="true" style="display: none; position: absolute; top: 360px; left: 342px; white-space: nowrap; font-family: Arial; font-size: 13px; font-weight: bold;">�հݼ�</div><div></div></div></div> 
                        </div>
                    </div>
                </div>
                <ul class="tiny_noti">
                    <li>�� �� ���� ������ ������ �ñ��ϴٸ�? �������� <a href="/l/gong/guide/series.asp" target="_blank">�ٷΰ��� &gt;</a></li>
                </ul>
            </div>

            <div class="box_default">
                <div class="box_title"><span>��</span>&ensp;2024 ������ 9�� �ʱ��հݼ�</div>
                <div class="result_tab">
                    <ul>
                        <li class="on"><a href="javascript:;" onclick="clickTabCutline('1', this);" title="��������">��������</a></li>
                        <li><a href="javascript:;" onclick="clickTabCutline('2', this);" title="�������">�������</a></li>
                    </ul>
                </div>
                <div class="graph_tab">
                    <!-- S: ������ , ����� ./apply_result_cutline.asp -->
                    <div class="grh">
                        <img src="<%=img_main%>/m/2024/0708_exam/result_graph_1.png" alt="-" class="hide-768">
                        <img src="<%=img_main%>/m/2024/0708_exam/result_graph_1_mo.png" alt="-" class="show-768">
                    </div>
                    <ul class="radio_list">
                        <li><label for="tblSort1_1"><input type="radio" name="tblSort" id="tblSort1_1" value="1" checked><span>�հݼ� ��</span></label></li>
                        <li><label for="tblSort1_2"><input type="radio" name="tblSort" id="tblSort1_2" value="2"><span>�� ����� ��</span></label></li>
                        <li><label for="tblSort1_3"><input type="radio" name="tblSort" id="tblSort1_3" value="3"><span>�����ο� ��</span></label></li>
                    </ul>
                    <div id="cutline_table" class="table_default result_tbl cut_tbl">
                        <table>
                            <colgroup>
                                <col style="width: 18%">
                                <col style="width: 14%">
                                <col style="width: 14%">
                                <col style="width: 14%">
                                <col style="width: 28%">
                                <col style="width: 12%">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th scope="col" rowspan="2" class="cr_1">����-���� <br /><span>(�� ���� Ŭ�� �� <br />3���� ���� ���� Ȯ�� ����)</span></th>
                                    <th scope="col" colspan="3" class="cr_1">2024</th>
                                    <th scope="col" rowspan="2" class="cr_1">
                                        <div class="hide-768">�������� <br /><span>(�� ���� Ŭ�� �� ������ ���� �� <br class="show-992" />���� Ȯ�� ����)</span></div>
                                        <div class="show-768" />�������� <br />������ Ŭ��</div>
                                    </th>
                                    <th scope="col" rowspan="2" class="cr_1">�հ� ���� <br />����</th>
                                </tr>
                                <tr>
                                    <th scope="col" class="cr_1">����<br class="show-768">�ο�(��)</th>
                                    <th scope="col" class="cr_1">�� <br class="show-768">�����(:1)</th>
                                    <th scope="col" class="cr_1">�ʱ�<br class="show-768">�հݼ�(��)</th>
                                </tr>
                            </thead>
                            <tbody>
                                <!-- ��������: tr Ŭ���� itrt, cr_2 -->
                                <!-- �հݰ��� result_cut_stamp1.png -->
                                
                                <tr>
                                    <th scope="row"><a href="/l/gong/guide/series.asp?exam_gbn=9&amp;exam_gbn_2=1&amp;p_code=1911-1000010110061" title="3���� ���� ����" target="_blank">��������</a></th>
                                    <td>50</td>
                                    <td>167.4</td>
                                    <td>93</td>
                                    <td class="subject">
                                        <div>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('�����а���', '1');">�����а��� &gt;</a>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('�������ѷ�', '1');">�������ѷ� &gt;</a>
                                        </div>
                                    </td>
                                    <td>
                                        
                                        <span class="result"><img src="https://design.megagong.net/image/m/2024/0708_exam/result_cut_stamp2.png" alt="�հݵ���"></span>
                                        
                                    </td>
                                </tr>
                                
                                <tr>
                                    <th scope="row"><a href="/l/gong/guide/series.asp?exam_gbn=9&amp;exam_gbn_2=1&amp;p_code=1911-1000010110041" title="3���� ���� ����" target="_blank">���뵿</a></th>
                                    <td>20</td>
                                    <td>35.8</td>
                                    <td>92</td>
                                    <td class="subject">
                                        <div>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('�뵿������', '1');">�뵿������ &gt;</a>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('�������ѷ�', '1');">�������ѷ� &gt;</a>
                                        </div>
                                    </td>
                                    <td>
                                        
                                        <span class="result"><img src="https://design.megagong.net/image/m/2024/0708_exam/result_cut_stamp2.png" alt="�հݵ���"></span>
                                        
                                    </td>
                                </tr>
                                
                                <tr class="itrt cr_2">
                                    <th scope="row"><a href="/l/gong/guide/series.asp?exam_gbn=9&amp;exam_gbn_2=1&amp;p_code=1911-1011410110531" title="3���� ���� ����" target="_blank">�Ϲ�����-����</a></th>
                                    <td>344</td>
                                    <td>58</td>
                                    <td>90</td>
                                    <td class="subject">
                                        <div>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('�������ѷ�', '1');">�������ѷ� &gt;</a>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('�����а���', '1');">�����а��� &gt;</a>
                                        </div>
                                    </td>
                                    <td>
                                        
                                        <span class="result"><img src="https://design.megagong.net/image/m/2024/0708_exam/result_cut_stamp2.png" alt="�հݵ���"></span>
                                        
                                    </td>
                                </tr>
                                
                                <tr>
                                    <th scope="row"><a href="/l/gong/guide/series.asp?exam_gbn=9&amp;exam_gbn_2=1&amp;p_code=1911-1000010370031" title="3���� ���� ����" target="_blank">����</a></th>
                                    <td>245</td>
                                    <td>16.8</td>
                                    <td>87</td>
                                    <td class="subject">
                                        <div>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('����', '1');">���� &gt;</a>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('����Ҽ۹�', '1');">����Ҽ۹� &gt;</a>
                                        </div>
                                    </td>
                                    <td>
                                        
                                        <span class="result"><img src="https://design.megagong.net/image/m/2024/0708_exam/result_cut_stamp2.png" alt="�հݵ���"></span>
                                        
                                    </td>
                                </tr>
                                
                                <tr>
                                    <th scope="row"><a href="/l/gong/guide/series.asp?exam_gbn=9&amp;exam_gbn_2=1&amp;p_code=1911-1011010110571" title="3���� ���� ����" target="_blank">�Ϲ�����(����)-����</a></th>
                                    <td>69</td>
                                    <td>14.7</td>
                                    <td>87</td>
                                    <td class="subject">
                                        <div>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('�������ѷ�', '1');">�������ѷ� &gt;</a>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('�����а���', '1');">�����а��� &gt;</a>
                                        </div>
                                    </td>
                                    <td>
                                        
                                        <span class="result"><img src="https://design.megagong.net/image/m/2024/0708_exam/result_cut_stamp2.png" alt="�հݵ���"></span>
                                        
                                    </td>
                                </tr>
                                
                                <tr>
                                    <th scope="row"><a href="/l/gong/guide/series.asp?exam_gbn=9&amp;exam_gbn_2=1&amp;p_code=1911-1000010110541" title="3���� ���� ����" target="_blank">�Ϲ�����(����)</a></th>
                                    <td>73</td>
                                    <td>26.6</td>
                                    <td>87</td>
                                    <td class="subject">
                                        <div>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('�������ѷ�', '1');">�������ѷ� &gt;</a>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('�����а���', '1');">�����а��� &gt;</a>
                                        </div>
                                    </td>
                                    <td>
                                        
                                        <span class="result"><img src="https://design.megagong.net/image/m/2024/0708_exam/result_cut_stamp2.png" alt="�հݵ���"></span>
                                        
                                    </td>
                                </tr>
                                
                                <tr>
                                    <th scope="row"><a href="/l/gong/guide/series.asp?exam_gbn=9&amp;exam_gbn_2=1&amp;p_code=1911-1000010110331" title="3���� ���� ����" target="_blank">��������</a></th>
                                    <td>56</td>
                                    <td>12.6</td>
                                    <td>86</td>
                                    <td class="subject">
                                        <div>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('�������Ź�', '1');">�������Ź� &gt;</a>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('�������ѷ�', '1');">�������ѷ� &gt;</a>
                                        </div>
                                    </td>
                                    <td>
                                        
                                        <span class="result"><img src="https://design.megagong.net/image/m/2024/0708_exam/result_cut_stamp2.png" alt="�հݵ���"></span>
                                        
                                    </td>
                                </tr>
                                
                                <tr>
                                    <th scope="row"><a href="/l/gong/guide/series.asp?exam_gbn=9&amp;exam_gbn_2=1&amp;p_code=1911-1000010320731" title="3���� ���� ����" target="_blank">�������</a></th>
                                    <td>14</td>
                                    <td>28.4</td>
                                    <td>86</td>
                                    <td class="subject">
                                        <div>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('�뵿������', '1');">�뵿������ &gt;</a>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('������㡤�ɸ��а���', '1');">������㡤�ɸ��а��� &gt;</a>
                                        </div>
                                    </td>
                                    <td>
                                        
                                        <span class="result"><img src="https://design.megagong.net/image/m/2024/0708_exam/result_cut_stamp2.png" alt="�հݵ���"></span>
                                        
                                    </td>
                                </tr>
                                
                                <tr>
                                    <th scope="row"><a href="/l/gong/guide/series.asp?exam_gbn=9&amp;exam_gbn_2=1&amp;p_code=1911-1011910110571" title="3���� ���� ����" target="_blank">�Ϲ�����(����)-��õ�����</a></th>
                                    <td>150</td>
                                    <td>12.7</td>
                                    <td>86</td>
                                    <td class="subject">
                                        <div>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('�������ѷ�', '1');">�������ѷ� &gt;</a>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('�����а���', '1');">�����а��� &gt;</a>
                                        </div>
                                    </td>
                                    <td>
                                        
                                        <span class="result"><img src="https://design.megagong.net/image/m/2024/0708_exam/result_cut_stamp2.png" alt="�հݵ���"></span>
                                        
                                    </td>
                                </tr>
                                
                                <tr>
                                    <th scope="row"><a href="/l/gong/guide/series.asp?exam_gbn=9&amp;exam_gbn_2=1&amp;p_code=1911-1000010380181" title="3���� ���� ����" target="_blank">�������</a></th>
                                    <td>31</td>
                                    <td>13.7</td>
                                    <td>85</td>
                                    <td class="subject">
                                        <div>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('����', '1');">���� &gt;</a>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('����Ҽ۹�', '1');">����Ҽ۹� &gt;</a>
                                        </div>
                                    </td>
                                    <td>
                                        
                                        <span class="result"><img src="https://design.megagong.net/image/m/2024/0708_exam/result_cut_stamp2.png" alt="�հݵ���"></span>
                                        
                                    </td>
                                </tr>
                                
                                <tr>
                                    <th scope="row"><a href="/l/gong/guide/series.asp?exam_gbn=9&amp;exam_gbn_2=1&amp;p_code=1911-1000010360283" title="3���� ���� ����" target="_blank">��ȣ(��)</a></th>
                                    <td>21</td>
                                    <td>49.6</td>
                                    <td>85</td>
                                    <td class="subject">
                                        <div>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('������å����', '1');">������å���� &gt;</a>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('��ȸ�����а���', '1');">��ȸ�����а��� &gt;</a>
                                        </div>
                                    </td>
                                    <td>
                                        
                                        <span class="result"><img src="https://design.megagong.net/image/m/2024/0708_exam/result_cut_stamp2.png" alt="�հݵ���"></span>
                                        
                                    </td>
                                </tr>
                                
                                <tr>
                                    <th scope="row"><a href="/l/gong/guide/series.asp?exam_gbn=9&amp;exam_gbn_2=1&amp;p_code=1911-1000010330051" title="3���� ���� ����" target="_blank">����</a></th>
                                    <td>82</td>
                                    <td>11.7</td>
                                    <td>85</td>
                                    <td class="subject">
                                        <div>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('����������', '1');">���������� &gt;</a>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('ȸ�����', '1');">ȸ����� &gt;</a>
                                        </div>
                                    </td>
                                    <td>
                                        
                                        <span class="result"><img src="https://design.megagong.net/image/m/2024/0708_exam/result_cut_stamp2.png" alt="�հݵ���"></span>
                                        
                                    </td>
                                </tr>
                                
                                <tr>
                                    <th scope="row"><a href="/l/gong/guide/series.asp?exam_gbn=9&amp;exam_gbn_2=1&amp;p_code=1911-1000010390761" title="3���� ���� ����" target="_blank">���Ա�����</a></th>
                                    <td>165</td>
                                    <td>8.4</td>
                                    <td>82</td>
                                    <td class="subject">
                                        <div>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('�������ѷ�', '1');">�������ѷ� &gt;</a>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('����������', '1');">���������� &gt;</a>
                                        </div>
                                    </td>
                                    <td>
                                        
                                        <span class="result"><img src="https://design.megagong.net/image/m/2024/0708_exam/result_cut_stamp2.png" alt="�հݵ���"></span>
                                        
                                    </td>
                                </tr>
                                
                                <tr>
                                    <th scope="row"><a href="/l/gong/guide/series.asp?exam_gbn=9&amp;exam_gbn_2=1&amp;p_code=1911-1000010360272" title="3���� ���� ����" target="_blank">��ȣ(��)</a></th>
                                    <td>50</td>
                                    <td>16.1</td>
                                    <td>82</td>
                                    <td class="subject">
                                        <div>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('������å����', '1');">������å���� &gt;</a>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('��ȸ�����а���', '1');">��ȸ�����а��� &gt;</a>
                                        </div>
                                    </td>
                                    <td>
                                        
                                        <span class="result"><img src="https://design.megagong.net/image/m/2024/0708_exam/result_cut_stamp2.png" alt="�հݵ���"></span>
                                        
                                    </td>
                                </tr>
                                
                                <tr>
                                    <th scope="row"><a href="/l/gong/guide/series.asp?exam_gbn=9&amp;exam_gbn_2=1&amp;p_code=1911-1000010400741" title="3���� ���� ����" target="_blank">ö������</a></th>
                                    <td>23</td>
                                    <td>7.1</td>
                                    <td>77</td>
                                    <td class="subject">
                                        <div>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('����Ҽ۹�����', '1');">����Ҽ۹����� &gt;</a>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('�����ѷ�', '1');">�����ѷ� &gt;</a>
                                        </div>
                                    </td>
                                    <td>
                                        
                                        <span class="result"><img src="https://design.megagong.net/image/m/2024/0708_exam/result_cut_stamp1.png" alt="�հݰ���"></span>
                                        
                                    </td>
                                </tr>
                                
                                <tr>
                                    <th scope="row"><a href="/l/gong/guide/series.asp?exam_gbn=9&amp;exam_gbn_2=1&amp;p_code=1911-1000010340791" title="3���� ���� ����" target="_blank">���</a></th>
                                    <td>86</td>
                                    <td>4.6</td>
                                    <td>75</td>
                                    <td class="subject">
                                        <div>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('����а���', '1');">����а��� &gt;</a>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('�����а���', '1');">�����а��� &gt;</a>
                                        </div>
                                    </td>
                                    <td>
                                        
                                        <span class="result"><img src="https://design.megagong.net/image/m/2024/0708_exam/result_cut_stamp1.png" alt="�հݰ���"></span>
                                        
                                    </td>
                                </tr>
                                
                                <tr>
                                    <th scope="row"><a href="/l/gong/guide/series.asp?exam_gbn=9&amp;exam_gbn_2=1&amp;p_code=1911-1000010350093" title="3���� ���� ����" target="_blank">����(��)</a></th>
                                    <td>112</td>
                                    <td>9.6</td>
                                    <td>73</td>
                                    <td class="subject">
                                        <div>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('�����а���', '1');">�����а��� &gt;</a>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('����Ҽ۹�����', '1');">����Ҽ۹����� &gt;</a>
                                        </div>
                                    </td>
                                    <td>
                                        
                                        <span class="result"><img src="https://design.megagong.net/image/m/2024/0708_exam/result_cut_stamp1.png" alt="�հݰ���"></span>
                                        
                                    </td>
                                </tr>
                                
                                <tr>
                                    <th scope="row"><a href="/l/gong/guide/series.asp?exam_gbn=9&amp;exam_gbn_2=1&amp;p_code=1911-1000010120361" title="3���� ���� ����" target="_blank">����</a></th>
                                    <td>1,023</td>
                                    <td>5.9</td>
                                    <td>70</td>
                                    <td class="subject">
                                        <div>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('��������', '1');">�������� &gt;</a>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('ȸ����', '1');">ȸ���� &gt;</a>
                                        </div>
                                    </td>
                                    <td>
                                        
                                        <span class="result"><img src="https://design.megagong.net/image/m/2024/0708_exam/result_cut_stamp1.png" alt="�հݰ���"></span>
                                        
                                    </td>
                                </tr>
                                
                                <tr>
                                    <th scope="row"><a href="/l/gong/guide/series.asp?exam_gbn=9&amp;exam_gbn_2=1&amp;p_code=1911-1000010350082" title="3���� ���� ����" target="_blank">����(��)</a></th>
                                    <td>699</td>
                                    <td>6.4</td>
                                    <td>63</td>
                                    <td class="subject">
                                        <div>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('�����а���', '1');">�����а��� &gt;</a>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('����Ҽ۹�����', '1');">����Ҽ۹����� &gt;</a>
                                        </div>
                                    </td>
                                    <td>
                                        
                                        <span class="result"><img src="https://design.megagong.net/image/m/2024/0708_exam/result_cut_stamp1.png" alt="�հݰ���"></span>
                                        
                                    </td>
                                </tr>
                                
                            </tbody>
                        </table>
                        <ul class="tiny_noti">
                            <li>�� �� �����н� �������� ����� 2024�� �ʱ��հݼ��� �ݿ��Ͽ� <i class="img"><img src="https://design.megagong.net/image/m/2024/0708_exam/result_tiny.png" alt="�հݵ��� �հݰ���"></i>���� �հ� ���ɼ��� �����Ͽ����ϴ�.</li>
                        </ul></div>
                    <!-- E: ������, ����� ./apply_result_cutline.asp -->
                </div>
            </div>
        </div>
    </div>

    <!--  ���� �̹��� �˾� -->
    <div id="questnPop" class="layerPopup questn_pop" style="display: none;">
        <span class="dimBg" onclick="">-</span>
        <div class="contentBox">
        <!-- <p class="tit">���� �� �ؼ�</p> -->
        <div class="scroll_box">
            <div class="question_wrap" id="questionBox">
                <!-- ���� �� �ؼ� �ҷ����� -->
                <div class="question">
                    <!-- ���� S -->
                    <div id="q10_1" class="q1_1">
                        <div class="tit">1. ���� ���� �������� ������ �͸��� &lt;����&gt;���� ��� ����?</div>
                        <div class="box">
                            <p>���� ���ϰ� ���� ����������� ���� �Ѵ�. ���� �ٸ� ������ �� �ϰ� ���� �������� �̷�� �ִٴ� ���̴�. ��� ������� ����� �ٸ� �ڿ� ���鿡�� �̿� �Ȱ��� ǥ���� �ִµ�, �̴� �ش� �ڿ� �� �������� ���� �����ϴ� ��ä ���ָ� �ϰ� ���� ����� �����̶�� �� �� �ִ�.</p>
                            <p>������� ���Ǿ�� ���� ���� ������ ���⼭ � ������ �����. �׵��� ���� �ٸ� �� ���� �Ƹ޸�ī ���ֹε鿡�� �������� �찡 �� ���İ� ������. ����� ������ �޶���. ���Ǿ�� ������ �� ���� ����� ����, ������� �ڽ��� �� ������ ä ���踦 �����Ѵٰ� �Ǵ��ߴ�. �� �Ǵ����κ���, ���츮�� �𱹾 �׾���� ���� ���� �ڿ����踦 �д��Ѵ�.����� ������ �߾��� ���Դ�. �̿� ������ Ư�� ����� ������ �ܾ �������� �ش� ������ ȭ�ڵ��� �� ���� ���� �ɵ� �ְ� �����ϴ� ���̴�. �� �ǽ���, ���� ������� �����Ѵٴ� �� ���ش� ��<u>���Ǿ�-��������</u>�̶� �Ҹ��� ����а� ���������� ����Ÿ��� �Ǿ�Դ�.</p>
                        </div>
                        <div class="box">
                            <div class="example">&lt;����&gt;</div>
                            <ul class="choices">
                                <li><span class="mark">��.</span>��[��]�� ����Ű�� �ܾ 4�� ���ϰ� �ִ� �̴���Ʈ���� 1�� ���ϰ� �ִ� ���� ȭ�ڵ麸�� ���� �а� �����ϰ� �����Ѵٴ� ���� ���� ��ȭ�Ѵ�.</li>
                                <li><span class="mark">��.</span>���� ���� �ܾ ���ϳ���, ���ѡ�, �����١� 3������ �Ƕ������� ������� �� �� �̻��� ����� ��� �����١��� �ν��ϴ� ���� ���� ��ȭ�Ѵ�.</li>
                                <li><span class="mark">��.</span>��ä ���ְ� ���� �ڿ���� ȭ�ڵ��� ��ä ���ְ� ���� �ڿ���� ȭ�ڵ鿡 ���� ��ä�� �����ϴ� �ɷ��� �پ�ٴ� ���� ���� ��ȭ�Ѵ�.</li>
                            </ul>
                        </div>
                        <ol class="choices">
                            <li><span class="mark">��</span>��</li>
                            <li><span class="mark">��</span>��, ��</li>
                            <li><span class="mark">��</span>��, ��</li>
                            <li><span class="mark">��</span>��, ��, ��</li>
                        </ol>
                    </div>
                    <div id="q10_2" class="q1_2" style="display: none;">
                        <div class="tit">2. ���� �ۿ��� �߷��� �������� ���� ������ ����?</div>
                        <div class="box">
                            <p>��ũ�γ��������� �׸������ �ð��� ������ ���ϴ� �� �ܾ ������ ������, �ð����� ���������� �����ϱ� ���� �����̴�. ũ�γ������� �������� ���� ��Ҽ��� �ٴ�Ҽ��� ���̸� ��Ȯ�ϰ� �ľ��� �� �ִ�.</p>
                            <p>��Ҽ����� ���ư��� �� �����μ��� ������ �����Ѵ�. �װ��� �����Ҽ�������� �߼��� �η��� ������� ������ �����̰�, �����Ҽ�������� ������ �߽����� ���� ���������� ��ȭ�Ӱ� �����ϴ� �����̴�. ��Ҽ����� ���ΰ��� �����ڿ� ���� �������� �и��Ǿ� ���� �޴´�. �׵��� ��ǥ�� ����� ������ ȸ���ϴ� ��, �� �װ����� �����ߴ� �̻��� ���·� �� <u>���ư��� </u>���̴�. ���ΰ��� ������ ������ ������ �����Ǵ� �ð��� ������ ����� �Ѵٸ�, ���ΰ��� �����ؾ� �� �������� ���ο� �̷��� �ƴ϶� �ٽ� ������ ���ŷμ��� �̷��̴�. �̷��� �ð����� �迭�� ��ȸ���� ũ�γ���������� �Ѵ�.</p>
                            <p>�ٴ�Ҽ� ���������� ȸ���� ũ�γ������� �����Ѵ�. �̰��� ���ΰ��� �����İ� �ڿ�ä�� �ð� ������ ���� Ȯ�εȴ�. ������ ������� �̻����� ������ ����� ���� �ִ�. �װ��� �� ������ ������ ��ä�� �Բ��ϴ� ���� ����̴�. �̴� ��ä�� ���������⿡, �׵鿡�� �� ������ ������ ǥ��Ǵ� ������ ���Ŵ� �̻��� ������ ������ �Ѵ�. �� ������ ������ �׵鿡�� ������ ����� ��¡�Ѵ�. �� ����� ������ �̻��� ������ ������ ȸ���� �� �ִ� ������ ����̰�����, �׵��� ���� �������� ���Ѵ�. ������ �� �ô��� �� �ι��� �Ǿ�� �Ѵٰ� �����ϸ� ���ŷ��� ���͸� �ź��Ѵ�.</p>
                        </div>
                        <ol class="choices">
                            <li><span class="mark">��</span>���������� ��Ҽ��� ȸ���� ũ�γ������� �����Ѵٴ� ������ �������̴�.</li>
                            <li><span class="mark">��</span>�����Ҽ��� ���ΰ��� ���������� �������� �׵��� �̻��� ������ ����ߴٴ� �������� ������ �ִ�.</li>
                            <li><span class="mark">��</span>������������ �������� �ڿ�ä�� �����ߴٸ� ���ο� �̷��μ��� �������� ������ �� �־��� ���̴�</li>
                            <li><span class="mark">��</span>�����Ҽ��� ���� ���������� ��ȭ�Ӱ� �����ϴ� �ḻ�� ���� ����ߴ� ���������� ���͸� �ź��Ѵ�.</li>
                        </ol>
                    </div>
                    <div id="q10_3" class="q1_3" style="display: none;">
                        <div class="tit">3. ���ƻ� ���� �ǹ̿� ���� ����� ����?</div>
                        <div class="box">
                            <p>��ũ�γ��������� �׸������ �ð��� ������ ���ϴ� �� �ܾ ������ ������, �ð����� ���������� �����ϱ� ���� �����̴�. ũ�γ������� �������� ���� ��Ҽ��� �ٴ�Ҽ��� ���̸� ��Ȯ�ϰ� �ľ��� �� �ִ�.</p>
                            <p>��Ҽ����� ���ư��� �� �����μ��� ������ �����Ѵ�. �װ��� �����Ҽ�������� �߼��� �η��� ������� ������ �����̰�, �����Ҽ�������� ������ �߽����� ���� ���������� ��ȭ�Ӱ� �����ϴ� �����̴�. ��Ҽ����� ���ΰ��� �����ڿ� ���� �������� �и��Ǿ� ���� �޴´�. �׵��� ��ǥ�� ����� ������ ȸ���ϴ� ��, �� �װ����� �����ߴ� �̻��� ���·� �� <u>���ư��� </u>���̴�. ���ΰ��� ������ ������ ������ �����Ǵ� �ð��� ������ ����� �Ѵٸ�, ���ΰ��� �����ؾ� �� �������� ���ο� �̷��� �ƴ϶� �ٽ� ������ ���ŷμ��� �̷��̴�. �̷��� �ð����� �迭�� ��ȸ���� ũ�γ���������� �Ѵ�.</p>
                            <p>�ٴ�Ҽ� ���������� ȸ���� ũ�γ������� �����Ѵ�. �̰��� ���ΰ��� �����İ� �ڿ�ä�� �ð� ������ ���� Ȯ�εȴ�. ������ ������� �̻����� ������ ����� ���� �ִ�. �װ��� �� ������ ������ ��ä�� �Բ��ϴ� ���� ����̴�. �̴� ��ä�� ���������⿡, �׵鿡�� �� ������ ������ ǥ��Ǵ� ������ ���Ŵ� �̻��� ������ ������ �Ѵ�. �� ������ ������ �׵鿡�� ������ ����� ��¡�Ѵ�. �� ����� ������ �̻��� ������ ������ ȸ���� �� �ִ� ������ ����̰�����, �׵��� ���� �������� ���Ѵ�. ������ �� �ô��� �� �ι��� �Ǿ�� �Ѵٰ� �����ϸ� ���ŷ��� ���͸� �ź��Ѵ�.</p>
                        </div>
                        <ol class="choices">
                            <li><span class="mark">��</span>������ ���ձ��� �¸��� <u>���ư���</u>.</li>
                            <li><span class="mark">��</span>����� �� ��� �տ� �� ���� <u>���ư���</u>.</li>
                            <li><span class="mark">��</span>�״� �Ҿ���� �������� <u>���ư���</u> �;���.</li>
                            <li><span class="mark">��</span>�׳�� �ڱ��� �� <u>���ư���</u> �ʴ´ٸ� �����ߴ�.</li>
                        </ol>
                    </div>
                    <div id="q10_4" class="q1_4" style="display: none;">
                        <div class="tit">4. ���� ������ ��� ���� �� �ݵ�� ���� ����?</div>
                        <div class="box">
                            <ul class="choices">
                                <li><span class="mark">��</span>�� �ֹ����� ȸ�ǿ� �����ϸ�, �� �ֹ����� �����Ѵ�.</li>
                                <li><span class="mark">��</span> �� �ֹ����� ȸ�ǿ� �����ϸ�, ȫ �ֹ����� �����Ѵ�.</li>
                                <li><span class="mark">��</span>ȫ �ֹ����� ȸ�ǿ� �������� ������, �� �ֹ����� �������� �ʴ´�.</li>
                            </ul>
                        </div>
                        <ol class="choices">
                            <li><span class="mark">��</span>�� �ֹ����� ȸ�ǿ� �����ϸ�, �� �ֹ����� �����Ѵ�.</li>
                            <li><span class="mark">��</span>�� �ֹ����� ȸ�ǿ� �����ϸ�, ȫ �ֹ����� �������� �ʴ´�.</li>
                            <li><span class="mark">��</span>�� �ֹ����� ȸ�ǿ� �������� ������, �� �ֹ����� �����Ѵ�.</li>
                            <li><span class="mark">��</span>ȫ �ֹ����� ȸ�ǿ� �������� ������, �� �ֹ����� �������� �ʴ´�.</li>
                        </ol>
                    </div>
                    <div id="q10_5" class="q1_5" style="display: none;">
                        <div class="tit">5. (��)�� (��)�� ������ �� �� ��ĭ�� �� ������� ���� ������ ����?</div>
                        <div class="box">
                            <ul class="choices">
                                <li><span class="mark">(��)</span>���κ��� ������ ������ �ִ� ��� �� �Ϻδ� ���ڸ� ������ ������ �ִ� ����� �ƴϴ�.</li>
                                <li><span class="mark">(��)</span>������ ������ �ִ� ����� ��� ���ڸ� ������ ������ �ִ� ����̴�. <br />���� <span class="blnk"></span>.</li>
                            </ul>
                        </div>
                        <ol class="choices">
                            <li><span class="mark">��</span>���κ��� ������ ������ �ִ� ��� �� �Ϻδ� ������ ������ �ִ� ����� �ƴϴ�</li>
                            <li><span class="mark">��</span>������ ������ �ִ� ��� �� �Ϻδ� ���κ��� ������ ������ �ִ� ����� �ƴϴ�</li>
                            <li><span class="mark">��</span>������ ������ �ִ� ����� ��� ���κ��� ������ ������ �ִ� ����� �ƴϴ�</li>
                            <li><span class="mark">��</span>���ڸ� ������ ������ ������ ���κ��� ������ ������ ���� ����� ��� ������ ������ �ִ� ����� �ƴϴ�</li>
                        </ol>
                    </div>
                    <!-- ���� E -->
                    <!-- ���� S -->
                    <div id="q11_1" class="q2_1" style="display: none;">
                        <div class="tit">1. ���� ģ �κп� �� ���� ���� ������ ���� ���ÿ�.</div>
                        <div class="box">
                            Recently, increasingly <u>???</u> weather patterns, often referred to as ��abnormal climate,�� have been observed around the world.
                        </div>
                        <ol class="choices">
                            <li><span class="mark">��</span>irregular</li>
                            <li><span class="mark">��</span>consistent</li>
                            <li><span class="mark">��</span>predictable</li>
                            <li><span class="mark">��</span>ineffective</li>
                        </ol>
                    </div>
                    <div id="q11_2" class="q2_2" style="display: none;">
                        <div class="tit">2. ���� ģ �κ� �� ����� ���� ���� ���� ���ÿ�.</div>
                        <div class="box">
                            You may conclude that knowledge of the sound systems, word patterns, and sentence structures �� <u>are</u> sufficient to help a student �� <u>become</u> competent in a language. Yet we have �� <u>all</u> worked with language learners who understand English structurally but still have difficulty �� <u>communicating</u>.
                        </div>
                    </div>
                    <div id="q11_3" class="q2_3" style="display: none;">
                        <div class="tit">3. ���� ģ �κп� �� ���� ���� ������ ���� ���ÿ�.</div>
                        <div class="box">
                            <img src="https://design.megagong.net/image/m/2024/0708_exam/q2_3_img.jpg" alt="-">
                            <div class="blindw">
                                <span>Kate Anderson: Are you coming to the workshop next Friday?(10:42)</span>
                                <span>Jim Henson: I'm not sure. I have a doctor's appointment that day. (10:42)</span>
                                <span>Kate Anderson: You should come! The workshop is about A.I. tools that can improve our work efficiency. (10:43)</span>
                                <span>Jim Henson: Wow, the topic sounds really interesting! (10:44)</span>
                                <span>Kate Anderson: Exactly. But don't forget to reserve a seat if you want to attend the workshop. (10:45)</span>
                                <span>Jim Henson: How do I do that? (10:45)</span>
                                <span>Kate Anderson: [______] (10:46)</span>
                            </div>
                        </div>
                        <ol class="choices">
                            <li><span class="mark">��</span>You need to bring your own laptop.</li>
                            <li><span class="mark">��</span>I already have a reservation.</li>
                            <li><span class="mark">��</span>Follow the instructions on the bulletin board.</li>
                            <li><span class="mark">��</span>You should call the doctor��s office for an appointment.</li>
                        </ol>
                    </div>
                    <div id="q11_4" class="q2_4" style="display: none;">
                        <div class="tit">4. (A)�� �� ���� ���� �������� ���� ������ ����?</div>
                        <div class="box">
                            <div class="blnk">(A)</div>
                            <p>We��re pleased to announce the upcoming City Harbour Festival, anannual event that brings our diverse community together to celebrateour shared heritage, culture, and local talent. Mark your calendars and join us for an exciting weekend!</p>
                            <strong>Details</strong>
                            <ul class="choices">
                                <li><span class="mark">��</span><b>Dates</b>: Friday, June 16 - Sunday, June 18</li>
                                <li><span class="mark">��</span><b>Times</b>: 10 : 00 a.m. - 8 : 00 p.m. (Friday &amp; Saturday) <br />10 : 00 a.m. - 6 : 00 p.m. (Sunday)</li>
                                <li><span class="mark">��</span><b>Location</b>: City Harbour Park, Main Street, and surrounding areas</li>
                            </ul>
                            <strong>Highlights</strong>
                            <ul class="choices">
                                <li><span class="mark">��</span><b>Live Performances</b><br />Enjoy a variety of live music, dance, and theatrical performances on multiple stages throughout the festival grounds.</li>
                                <li><span class="mark">��</span><b>Food Trucks</b><br />Have a feast with a wide selection of food trucks offering diverse and delicious cuisines, as well as free sample tastings.</li>
                            </ul>
                            <p>For the full schedule of events and activities, please visit our website at www.cityharbourfestival.org or contact the Festival Office at (552)234-5678.</p>
                        </div>
                        <ol class="choices">
                            <li><span class="mark">��</span>Make Safety Regulations for Your Community</li>
                            <li><span class="mark">��</span>Celebrate Our Vibrant Community Events</li>
                            <li><span class="mark">��</span>Plan Your Exciting Maritime Experience</li>
                            <li><span class="mark">��</span>Recreate Our City��s Heritage</li>
                        </ol>
                    </div>
                    <div id="q11_5" class="q2_5" style="display: none;">
                        <div class="tit">5. City Harbour Festival�� ���� ���� ���� ����� ��ġ���� �ʴ� ����?</div>
                        <div class="box">
                            <div class="blnk">(A)</div>
                            <p>We��re pleased to announce the upcoming City Harbour Festival, anannual event that brings our diverse community together to celebrateour shared heritage, culture, and local talent. Mark your calendars and join us for an exciting weekend!</p>
                            <strong>Details</strong>
                            <ul class="choices">
                                <li><span class="mark">��</span><b>Dates</b>: Friday, June 16 - Sunday, June 18</li>
                                <li><span class="mark">��</span><b>Times</b>: 10 : 00 a.m. - 8 : 00 p.m. (Friday &amp; Saturday) <br />10 : 00 a.m. - 6 : 00 p.m. (Sunday)</li>
                                <li><span class="mark">��</span><b>Location</b>: City Harbour Park, Main Street, and surrounding areas</li>
                            </ul>
                            <strong>Highlights</strong>
                            <ul class="choices">
                                <li><span class="mark">��</span><b>Live Performances</b><br />Enjoy a variety of live music, dance, and theatrical performances on multiple stages throughout the festival grounds.</li>
                                <li><span class="mark">��</span><b>Food Trucks</b><br />Have a feast with a wide selection of food trucks offering diverse and delicious cuisines, as well as free sample tastings.</li>
                            </ul>
                            <p>For the full schedule of events and activities, please visit our website at www.cityharbourfestival.org or contact the Festival Office at (552)234-5678.</p>
                        </div>
                        <ol class="choices">
                            <li><span class="mark">��</span>�ϳ⿡ �� �� ���ֵȴ�.</li>
                            <li><span class="mark">��</span>�Ͽ��Ͽ��� ���� 6�ñ��� ������.</li>
                            <li><span class="mark">��</span>�ֿ� ���� ���� �丮 ������ ����ȴ�.</li>
                            <li><span class="mark">��</span>������Ʈ�� ��ȭ ���Ǹ� ���� ��� ������ �� �� �ִ�.</li>
                        </ol>
                    </div>
                    <!-- ���� E -->
                    <!-- �ѱ��� S -->
                    <div id="q12_1" class="q3_1" style="display: none;">
                        <div class="tit">1. ���� ģ ���� ���󡯿� ���� �������� ���� ����?</div>
                        <div class="box">
                            5���� �Ĺ� ������ �ֵ� �������� ������ <u>�� ����</u>�� ������ �����̶�� ������ ������ ǳ���� ö�� Ȱ���Ͽ� �ı� ���� ������ ���ְ� �Ǿ���.
                        </div>
                        <ol class="choices">
                            <li><span class="mark">��</span>����տ� ���� ����Ͽ���.</li>
                            <li><span class="mark">��</span>���� õ���ϰ� ��ȣ�� ���ο��� �Ͽ���.</li>
                            <li><span class="mark">��</span>���� ���� ������ 5�� 15�� 62�ַ� ��������.</li>
                            <li><span class="mark">��</span>������� ������ �ű�� ���� ��å�� �����Ͽ���.</li>
                        </ol>
                    </div>
                    <div id="q12_2" class="q3_2" style="display: none;">
                        <div class="tit">2. (��)�� �� ���� ���� ����?</div>
                        <div class="box">
                            ������ ��ȭ ��å�� �����Ǹ鼭 ���� ���ΰ� ���� �������� �ݹ��Ͽ���. ����� ������ ���� ���� ���� ���ε��� ���� ����Ű�� ���� �������� ���⿡ �ռ��Ͽ����� û���� ���� ���еǾ���. ���� û�� ������ ���븦 �ֵн�Ű�� ������ ������ �����Ͽ���. �� <span class="blnk">(��)</span>�� ü���Ͽ� ������ û�� �ӹ����� ��ȭ�ϰ� û ������ ���� ������ �����޾Ҵ�.
                        </div>
                        <ol class="choices">
                            <li><span class="mark">��</span>�Ѽ� ����</li>
                            <li><span class="mark">��</span>���� ����</li>
                            <li><span class="mark">��</span>������ ����</li>
                            <li><span class="mark">��</span>����û ��� ���� ���� ����</li>
                        </ol>
                    </div>
                    <div id="q12_3" class="q3_3" style="display: none;">
                        <div class="tit">3. ��ȭ�� ȸ�� ���Ŀ� �־��� ��Ƿ� ���� ���� ����?</div>
                        <ol class="choices">
                            <li><span class="mark">��</span>�������� �ǽõǾ���.</li>
                            <li><span class="mark">��</span>�����ְ� ���صǾ���.</li>
                            <li><span class="mark">��</span>�Ѿ����� ������ �����Ͽ���.</li>
                            <li><span class="mark">��</span>Ȳ�� ��ø���� �ֱ��� ����Ͽ���.</li>
                        </ol>
                    </div>
                    <div id="q12_4" class="q3_4" style="display: none;">
                        <div class="tit">4. ���� ģ ���� ȸ�ǡ� ���Ŀ� �־��� ��Ƿ� ���� ���� ����?</div>
                        <div class="box">�̱�, ����, �ҷ� 3���� �ܹ� ����� ���� <u>�� ȸ��</u>������ �ѱ��� ���������� �ӽ� ���� ������ �̸� ���� �̡��� ���� ����ȸ�� ��ġ, �ִ� 5�Ⱓ�� ��Ź ��ġ ��� ���� �����Ǿ���.</div>
                        <ol class="choices">
                            <li><span class="mark">��</span>5��10 �Ѽ��Ű� �ǽõǾ���.</li>
                            <li><span class="mark">��</span>�¿� ���� 7��Ģ�� ��ǥ�Ǿ���.</li>
                            <li><span class="mark">��</span>���� �Ǳ� �غ� ����ȸ�� �Ἲ�Ǿ���.</li>
                            <li><span class="mark">��</span>�ݹ��� ���� Ư�� ���� ����ȸ�� �����Ǿ���.</li>
                        </ol>
                    </div>
                    <div id="q12_5" class="q3_5" style="display: none;">
                        <div class="tit">5. (��)�� (��) ������ �ñ⿡ �־��� ��Ƿ� ���� ����?</div>
                        <div class="box">
                            <ul class="choices">
                                <li><span class="mark">(��)</span>������ �λ����� ���Ͽ� ������ ô�� �ֽ�ȸ�縦 ö���϶�!��, ���Ϻ��� ���ֿ��� ���۷Ḧ ��ġ�� ����!�� ���� �ݹ��� ���� ��� �Ͼ��.</li>
                                <li><span class="mark">(��)</span>���ֿ��� �ѱ��� �л��� �Ϻ��� �л� ���̿� �Ͼ �浹�� ���� �л����� �ѱȱ��ϴ� ��� �Ͼ��.</li>
                            </ul>
                        </div>
                        <ol class="choices">
                            <li><span class="mark">��</span>�Ű�ȸ�� â���Ǿ���.</li>
                            <li><span class="mark">��</span>������ȸ�� �����Ǿ���.</li>
                            <li><span class="mark">��</span>���ֿ��� ���� ����簡 â���Ǿ���.</li>
                            <li><span class="mark">��</span>�뱸���� ��ä ���� ��� ���۵Ǿ���.</li>
                        </ol>
                    </div>
                    <!-- �ѱ��� E -->
                                            </div>
                <div class="answer_box">
                    <!-- ���� S -->
                    <div id="a10_1" class="a1_1">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>9�� �������� ��ȯ ���ù��� 14��</span>
                                <span>������ ������</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">���� Ư¡</div>
                            <p>
                                [����(����� ����) - ��� �߷�] <br />
                                ���� ������ ���� �������� Ȱ���� �����
                            </p>
                            <div class="s_tit">���� �ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>���õ� ����� ������ ������ �����Ͽ� &lt;����&gt;�� ���ð� ���� ���� ������ ��ȭ�ϴ��� ��ȭ�ϴ��� ���ϴ� �����̴�. ���� ���� �����Ǿ�� �������� ������ ���� ǥ���ϴ� ���ֿ� ������ ���� ���� ������ �������� Ž���Ͽ� ���� ��� �����Ѵ١��� ��(���Ǿ�-���� ����)�� �����Ͽ���. &lt;����&gt;�� ���õ� ���� ���� ���� �ܾ ���� ���� �̴���Ʈ���� ���� ȭ�ں��� ���� ���� ������ �ν��� ��ٴ� �����̹Ƿ� ���� ��ȭ�Ѵ�. <br />
                                �� ���� ���� ���� �ܾ 3�����̶� �� �� �̻��� �ܾ �ܼ��ϰ� �ν��Ѵٴ� �����̹Ƿ� ���� ��ȭ�Ѵ�. ���� ��ä ���ְ� ���� ȭ�ڵ��� ��ä ���ְ� ���� ȭ�ڵ麸�� ��ä ���� �ɷ��� �پ ����̹Ƿ� ���� ��ȭ�Ѵ�. ���� ���̶�� ��ä ���ְ� �������� ��ä�� ���� ������ ���ؾ� �ϱ� �����̴�.</li>
                            </ul>
                        </div>
                    </div>
                    <div id="a10_2" class="a1_2" style="display: none;">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>9�� �������� ��ȯ ���ù��� 10��</span>
                                <span>������ ������</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">���� Ư¡</div>
                            <p>
                                [���� ��Ʈ��(���� ����) - �Ϲ��߷� �����߹�] <br />
                                ���� ������ ���� �������� Ȱ��
                            </p>
                            <div class="s_tit">���� �ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>������ ������, ��Ҽ��� �ٴ�Ҽ� �������� ��� ���ư��� �� �����μ��� ������ �����ϴ�. �����Ҽ��� ���ΰ��� �����ڿ� ���� �������� �и��Ǿ� ���� �ް�, ���������� ������ ���� �� ������ �������� ���� ���� ����� �޴´�. �׵��� �̻��� ������ ����ߴٴ� �������� ������ �ִ� ���̴�.</li>
                            </ul>
                            <div class="s_tit">���� �ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>��° ���ܿ� ������ ��Ҽ��� ȸ���� ũ�γ������� �����Ѵ�. ������ ������ ���ܿ� ������ �ٴ�Ҽ� ���������� ȸ���� ũ�γ������� �����Ѵ�.</li>
                                <li><span class="mark">��</span> ������ ���ܿ� ������, ���ΰ��� �������� �ڿ�ä�� �����ϴ� ���� ���ο� �̷��μ��� �������� ������ �� �ִ� ����� �ƴ϶� ���̻��� ������ ������ ȸ���� �� �ִ� ������ ������̶� �Ͽ���. ������ �ٴ�Ҽ� ���������� ȸ���� ũ�γ������� �����ϹǷ� �׵��� ���� �������� ���Ѵ�. �������� �� �ô��� �� �ι��� �Ǿ�� �Ѵٰ� �����ϸ� ���ŷ��� ���͸� �ź��� ���̴�. </li>
                                <li><span class="mark">��</span>��° ���ܿ� ������, �����Ҽ��� ������ �������� �߽����� ���� ���������� ��ȭ�Ӱ� �����ϴ� �������̴�. ���� ���� ���������� ��ȭ�Ӱ� �����ϴ� �ḻ�� ����ߴ� �������� �����ϴ� ���̴�.</li>
                            </ul>
                        </div>
                    </div>
                    <div id="a10_3" class="a1_3" style="display: none;">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>9�� �������� ��ȯ ���ù��� 11��</span>
                                <span>������ ������</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">���� Ư¡</div>
                            <p>
                                ���� ��Ʈ��(���� ����) - ������ ����] <br />
                                ���� ������ ���� �������� Ȱ��
                            </p>
                            <div class="s_tit">���� �ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>���� ���Ե� ���ƿ��� �����ư��١��� ��Ҽ��� ���ΰ��� ����� ����(�װ����� �����ߴ� �̻��� ����)�� ȸ���ϴ� ���� �ǹ��Ѵ�. �̴� ���ٽ� ������ ���ŷμ��� �̷����� �Ͽ���. ���� �������� �ִ� ������ �ٽ� ���ų� �ٽ� �� ���°� �Ǵ�.����� �ǹ��� �����ư��١����� �� �� �ִ�. ���õ� ���� �� ���ŷ��� ȸ�͸� �ǹ��ϴ� ������ ������ ������ ����̴�. ���� �� ���Ҿ���� ���ɡ��� ������ ���ƿ� ���õ� ������� �������� �����Ǵ� �ǹ̸� ������ �ִ�. </li>
                            </ul>
                            <div class="s_tit">���� �ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>������ ���ձ��� �¸��� <u>���ư���</u>. - ���̳� ������ � ���·� ���� �δ�.</li>
                                <li><span class="mark">��</span>����� �� ��� �տ� �� ���� <u>���ư���</u>.  - ���ʳ� ��, �¸�, �� ������ �����̳� ��ü, �ⱸ, ���� ������ ������ �Ǵ�.</li>
                                <li><span class="mark">��</span>�׳�� �ڱ��� �� <u>���ư���</u> �ʴ´ٸ� �����ߴ�. - ���̳� ���� ������ ������ ��Ȱ�ϴ�.</li>
                            </ul>
                        </div>
                    </div>
                    <div id="a10_4" class="a1_4" style="display: none;">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>9�� �������� ��ȯ ���ù��� 5��</span>
                                <span>������ ������</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">���� Ư¡</div>
                            <p>[����(����) - �� �߷�]</p>
                            <div class="s_tit">���� �ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>���õ� ������ �����ϸ� ������ ����.</li>
                            </ul>
                            <div class="box">
                                <ul class="choices">
                                    <li><span class="mark">(��)</span>�� �ֹ����� ȸ�ǿ� �����ϸ�, �� �ֹ����� �����Ѵ�. <br />&gt;&gt;�� �ֹ��� �� �� �ֹ���</li>
                                    <li><span class="mark">(��)</span>�� �ֹ����� ȸ�ǿ� �����ϸ�, ȫ �ֹ����� �����Ѵ�. <br />&gt;&gt; �� �ֹ��� �� ȫ �ֹ���</li>
                                    <li><span class="mark">(��)</span>ȫ �ֹ����� ȸ�ǿ� �������� ������, �� �ֹ����� �������� �ʴ´�. <br />&gt;&gt; �� ȫ �ֹ��� �� ~ �� �ֹ���</li>
                                </ul>
                            </div>
                            <p>
                                ���� �ֹ������� �Ű������� �Ͽ� (��)�� (��)�� �����ϸ� ���� �ֹ��� �� ȫ �ֹ������� ������ �� �ְ�, �̿� ���� ���� ���� ȫ �ֹ��� �� �� �� �ֹ������̴�. ���� ��ȫ �ֹ����� ȸ�ǿ� �������� ������, �� �ֹ����� �������� �ʴ´�.���� ������ ������ �� �� �ִ�. 
                            </p>
                        </div>
                    </div>
                    <div id="a10_5" class="a1_5" style="display: none;">
                        <div class="ans">
                            <div class="tit">���� �� �ؼ�</div>
                            <div class="txt">
                                <div class="info flex">
                                    <span>9�� �������� ��ȯ ���ù��� 12��</span>
                                    <span>������ ������</span>
                                </div>
                                <div class="correct">���� ��</div>
                                <div class="s_tit">���� Ư¡</div>
                                <p>[����(����) - �� �߷�]</p>
                                <div class="s_tit">���� �ؼ�</div>
                                <ul class="choices">
                                    <li><span class="mark">��</span>���õ� �������� ���� ������ �� �ִ� ����� ã�� �����̴�. </li>
                                </ul>
                                <p>������ ���õ� ������ �����ϸ� ������ ����.</p>
                                <div class="box">
                                    <ul class="choices">
                                        <li><span class="mark">(��)</span>���κ��� ������ ������ �ִ� ��� �� �Ϻδ� ���ڸ� ������ ������ �ִ� ����� �ƴϴ�. <br />&gt;&gt; ���� ���� ����A ��~ ���ڸ� ����A</li>
                                        <li><span class="mark">(��)</span>������ ������ �ִ� ����� ��� ���ڸ� ������ ������ �ִ� ����̴�. <br />&gt;&gt; ���� �� ���ڸ� ����</li>
                                    </ul>
                                </div>
                                <p>
                                    (��)�� ���� �������ڸ� ���� �� ���������̴�. ���� ��~ ���ڸ� �������� �Ű�������(��)�� (��)�� ��칮�� �����ϸ�, ������ ���� ����A ��~ ����A(�� ���κ��� ������ ������ �ִ� ��� �� �Ϻδ� ������ ������ �ִ� ����� �ƴϴ�)����� ����� ����ȴ�.
                                </p>
                            </div>
                        </div>
                    </div>
                    <!-- ���� E -->
                    <!-- ���� S -->
                    <div id="a11_1" class="a2_1" style="display: none;">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>9�� �������� ��ȯ ���ù��� 1��</span>
                                <span>������ ������</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">���� �ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>�ٷ� ���� ǥ�� ��~��� ��Ī�Ǵ¡��� �ǹ��� ��referred to as�� �޺κ��� ��Ʈ�� �ȴ�. ��, ��abnormal climate�� ��� �����Ƿ�,  ��climate =weather pattern�� �̰�, ��ĭ�� abnormal �� ������ �ǹ��� �� irregular�� ����.</li>
                            </ul>
                            <div class="s_tit">�ؼ�</div>
                            <p>�ֱ� �� ���������� '�̻� ����'�� ���þ����� �ұ�Ģ�� ��� ������ ���� �� ���� �����ǰ� �ִ�.</p>
                            <ol class="choices">
                                <li><span class="mark">��</span>irregular �ұ�Ģ��, ���� ����</li>
                                <li><span class="mark">��</span>consistent �Ѱᰰ��, �ϰ���</li>
                                <li><span class="mark">��</span>predictable ������ �� �ִ�</li>
                                <li><span class="mark">��</span>ineffective ȿ������, ��ȿ������</li>
                            </ol>
                            <div class="s_tit">����</div>
                            <div class="voca">recently �ֱٿ�   abnormal climate �̻� ����   observe �����ϴ�   around the world �� ����������</div>
                        </div>
                    </div>
                    <div id="a11_2" class="a2_2" style="display: none;">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>9�� �������� ��ȯ ���ù��� 4��</span>
                                <span>������ ������</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">���� �ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>be ���簡 ������ ��� �ݵ�� �� ���� �־�� �� ��ġ ���θ� ��������. ��, �� ���翡 ���� �־�� ��knowledge (of ~ structures�� ����)�� �� �ܼ��̹Ƿ� ���� ���� �ܼ� ���·� ����Ѵ�. ���� �ܼ� ������ is�� ��ġ�� ���� �Ǵ�. (are �� is)</li>
                            </ul>
                            <div class="s_tit">���� �ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>�ػ翪������ help ���� ������ ���� �ڸ����� ��/to���� �� �� �����Ƿ�, �������� become�� �� ���� �Ǵ�.</li>
                                <li><span class="mark">��</span>�ش纸���� all�� have + pp ���̿� �λ�� ���� "���"�� �ǹ̰� �Ǿ���. �ùٸ� ǥ���̴�. 
                                <div><b>*all �н���</b></div>
                                <div class="box">all�� ����ġ / ��ǥ������ �ٷ�� ��������, all�� ���(����) / ������ / �λ� ���� �ǹ̷� �پ��ϰ� ���̸�, ������ �� ��ġ�� �����Ѵ�.</div>
                                </li>
                                <li><span class="mark">��</span>�ش� ����� ǥ���� ���� ������ ��-�ϴ��� ������� �޴١� ǥ���� have difficulty - ing���� ing ������ communicating�� �ǰ� ������.</li>
                            </ul>
                            <div class="s_tit">�ؼ�</div>
                            <p>
                                ����� �Ҹ� ü��, �ܾ� ����, ���� ������ ���� ������ �л��� �� �ɼ��������� ���⿡ ����ϴٰ� ��� ���� �� �ִ�. ������ �츮�� ��� ��� ���������� ���������� �ǻ���뿡 ������� �޴� ��� �н��ڵ�� �Բ� ���ؿԴ�.
                            </p>
                            <div class="s_tit">����</div>
                            <div class="voca">conclude ����� ������   knowledge ����   sound system �Ҹ� ü��   sentence structure ���� ����    sufficient �����   competent �ɼ���   have difficulty -ing : -�ϴµ� ������� �޴�</div>
                        </div>
                    </div>
                    <div id="a11_3" class="a2_3" style="display: none;">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>9�� �������� ��ȯ ���ù��� 7��</span>
                                <span>������ ������</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">���� �ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>��ĭ���� �������� ��� �ϴ°�?����� ������ ���� ���� �ؾ��Ѵ�. �� ����� �Ұ��ؾ� �ϹǷ� �Խ��ǿ� �ִ� ���ø� ���� ������ �ϸ� �ȴٰ� ���ϴ� ���� �ڿ�������.</li>
                            </ul>
                            <div class="s_tit">�ؼ�</div>
                            <p>
                                Kate: ���� �� �ݿ��Ͽ� ��ũ�� ���ó���? <br />
                                Jim: �𸣰ھ��. �׳� �ǻ�� ����� �־��. <br />
                                Kate: �� �;� �ؿ�! �̹� ��ũ���� �츮�� �۾� ȿ���� ����ų �� �ִ� �ΰ����� ������ ���� ���̿���. <br />
                                Jim: ��, ������ ���� ��̷Ӱ� �鸮�׿�! <br />
                                Kate: �¾ƿ�. ��ũ�� �����ϰ� �ʹٸ� �ڸ��� �����ؾ� �ϴ� ���� ���� ������. <br />
                                Jim: ��� �ϸ� �ǳ���? <br />
                                Kate: <u>??????</u>
                            </p>
                            <ol class="choices">
                                <li><span class="mark">��</span>��Ʈ���� ���� ������ �;� �ؿ�.</li>
                                <li><span class="mark">��</span>���� �̹� ������ �߾��.</li>
                                <li><span class="mark">��</span>�Խ��ǿ� �ִ� ���ø� ������ �ſ�.</li>
                                <li><span class="mark">��</span>����ǿ� ��ȭ�ؼ� ���Ḧ �޾ƾ� �ؿ�. </li>
                            </ol>
                            <div class="s_tit">����</div>
                            <div class="voca">appointment ���   improve ����Ű��   efficiency ȿ����   topic ����   reserve �����ϴ�   attend �����ϴ�, �ٴϴ�</div>
                        </div>
                    </div>
                    <div id="a11_4" class="a2_4" style="display: none;">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>9�� �������� ��ȯ ���ù��� 10��</span>
                                <span>������ ������</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">���� �ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>�� ���� ������ ���� ����� ����Ƽ �Ϲ� �佺Ƽ���� ������ ���� ���̴�. ���� �ش� ���� �������� ���� ������ ���� �谡 �����ϴ�.</li>
                            </ul>
                            <div class="s_tit">�ؼ�</div>
                            <div class="box">
                                <p>�츮�� ��ڰԵ� ���� ���� ����� ��Ƽ �Ϲ� �佺Ƽ���� ��ǥ�ϰ� �Ǿ��µ�, �̴� �츮�� ���� ����, ��ȭ, �׸��� �����ε��� ����ϱ� ���� �츮�� �پ��� ���� ��ȸ�� �Բ� ���̴� ����Դϴ�. �������� �޷¿� ǥ���ϰ� �ų��� �ָ��� �츮�� �Բ� �ϼ���!</p>
                                <strong>���� ����</strong>
                                <ul class="choices">
                                    <li><span class="mark">��</span><b>��¥</b>: 6�� 16�� �ݿ��� - 6�� 18�� �Ͽ���</li>
                                    <li><span class="mark">��</span><b>�ð�</b>: ���� 10:00 - ���� 8:00 (��,��) <br />���� 10:00 - ���� 6:00 (��)</li>
                                    <li><span class="mark">��</span><b>���</b>: ��Ƽ�Ϲ���ũ, ���ν�Ʈ��Ʈ�� �� �ֺ�����</li>
                                </ul>
                                <strong>���̶���Ʈ</strong>
                                <ul class="choices">
                                    <li><span class="mark">��</span><b>���̺� ����</b><br />������ �������� �پ��� ���̺� ���ǰ� ��, ���� ������ ���� ���뿡�� ��⼼��!</li>
                                    <li><span class="mark">��</span><b>Ǫ��Ʈ��</b><br />���� �ýĻӸ� �ƴ϶� �پ��� ������ Ǫ�� Ʈ���� �Բ� ������ ��⼼��!</li>
                                </ul>
                                <p>��� �� Ȱ���� ���� ��ü ������ ��� ������Ʈ(www.cityharbourfestival.org)�� �湮�ϰų� ���� �繫��(552) 234-5678)�� ������ �ּ���.</p>
                            </div>
                            <ol class="choices">
                                <li><span class="mark">��</span>Ŀ�´�Ƽ�� ���� ���� ���� �����</li>
                                <li><span class="mark">��</span>Ȱ���� ������ȸ �̺�Ʈ�� �������</li>
                                <li><span class="mark">��</span>�ų��� �ؾ� ü���� ��ȹ�ض�</li>
                                <li><span class="mark">��</span>�츮 ������ ������ �����ϴ�</li>
                            </ol>
                            <div class="s_tit">����</div>
                            <div class="voca">be pleased to ������ ~�ϴ�   announce �˸���, ��ǥ�ϴ�   upcoming �ٰ�����, �� ����   diverse �پ���   celebrate ����ϴ�   shared heritage ���� ����
                            </div>
                        </div>
                    </div>
                    <div id="a11_5" class="a2_5" style="display: none;">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>9�� �������� ��ȯ ���ù��� 11��</span>
                                <span>������ ������</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">���� �ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>�ֿ� ���� ���� �丮 ������ ����ȴ�. <br />�� �ش� ������ Ȯ���� �� ����.</li>
                            </ul>
                            <div class="s_tit">���� �ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>�� �⿡ �� �� ���ֵȴ�. <br />�桰We��re pleased to announce the upcoming City Harbour Festival, an annual event ~���� ���� �� �� 1�⸶�� ������ ������硱��� ���� �� �� �ִ�.</li>
                                <li><span class="mark">��</span>�Ͽ��Ͽ��� ���� 6�ñ��� ������. <br />�� ��10 : 00 a.m. - 6 : 00 p.m. (Sunday)���� ���� �Ͽ��Ͽ��� ���� 6�ñ��� �����ٴ� ���� �� �� �ִ�</li>
                                <li><span class="mark">��</span>������Ʈ�� ��ȭ ���Ǹ� ���� ��� ������ �� �� �ִ�. <br />�� ������ ������ �κС��� ���� ��� ������ ���� ������Ʈ�� ��ȭ�� ���� ������ �� �ִٴ� ���� �� �� �ִ�.</li>
                            </ul>
                            <div class="s_tit">�ؼ�</div>
                            <div class="box">
                                <p>�츮�� ��ڰԵ� ���� ���� ����� ��Ƽ �Ϲ� �佺Ƽ���� ��ǥ�ϰ� �Ǿ��µ�, �̴� �츮�� ���� ����, ��ȭ, �׸��� �����ε��� ����ϱ� ���� �츮�� �پ��� ���� ��ȸ�� �Բ� ���̴� ����Դϴ�. �������� �޷¿� ǥ���ϰ� �ų��� �ָ��� �츮�� �Բ� �ϼ���!</p>
                                <strong>���� ����</strong>
                                <ul class="choices">
                                    <li><span class="mark">��</span><b>��¥</b>: 6�� 16�� �ݿ��� - 6�� 18�� �Ͽ���</li>
                                    <li><span class="mark">��</span><b>�ð�</b>: ���� 10:00 - ���� 8:00 (��,��) <br />���� 10:00 - ���� 6:00 (��)</li>
                                    <li><span class="mark">��</span><b>���</b>: ��Ƽ�Ϲ���ũ, ���ν�Ʈ��Ʈ�� �� �ֺ�����</li>
                                </ul>
                                <strong>���̶���Ʈ</strong>
                                <ul class="choices">
                                    <li><span class="mark">��</span><b>���̺� ����</b><br />������ �������� �پ��� ���̺� ���ǰ� ��, ���� ������ ���� ���뿡�� ��⼼��!</li>
                                    <li><span class="mark">��</span><b>Ǫ��Ʈ��</b><br />���� �ýĻӸ� �ƴ϶� �پ��� ������ Ǫ�� Ʈ���� �Բ� ������ ��⼼��!</li>
                                </ul>
                                <p>��� �� Ȱ���� ���� ��ü ������ ��� ������Ʈ(www.cityharbourfestival.org)�� �湮�ϰų� ���� �繫��(552) 234-5678)�� ������ �ּ���.</p>
                            </div>
                            <ol class="choices">
                                <li><span class="mark">��</span>Ŀ�´�Ƽ�� ���� ���� ���� �����</li>
                                <li><span class="mark">��</span>Ȱ���� ������ȸ �̺�Ʈ�� �������</li>
                                <li><span class="mark">��</span>�ų��� �ؾ� ü���� ��ȹ�ض�</li>
                                <li><span class="mark">��</span>�츮 ������ ������ �����ϴ�</li>
                            </ol>
                            <div class="s_tit">����</div>
                            <div class="voca">be pleased to ������ ~�ϴ�   announce �˸���, ��ǥ�ϴ�   upcoming �ٰ�����, �� ����   diverse �پ���   celebrate ����ϴ�   shared heritage ���� ����
                            </div>
                        </div>
                    </div>
                    <!-- ���� E -->
                    <!-- �ѱ��� S -->
                    <div id="a12_1" class="a3_1" style="display: none;">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 1��</span>
                                <span>���ѱ� ������</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">���� Ư¡</div>
                            <p>
                                �ڷ��� ���� ģ ���� ���󡯴� �밡���̴�. 4���� ��~5���� �ʿ� �Ŷ� �����ֱ� ���� ������ ���� ������ ����� ��������, ���� ���� ������ �̲��� �ִ� ������ �ݰ����߰� ū Ÿ���� �Ծ���. �̶� ������ ��ġ�ϰ� �־� ������ �����ϰ� �ִ� ��� ������ �밡�߰� ����� ���� ����� �������� �����Ͽ� 5���� �Ĺݺ��� �ı� ���� ������ �̲�����.
                            </p>
                            <div class="s_tit">���� �ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>�밡�ߴ� 562�⿡ �Ŷ� ����տ� ���� ����Ͽ���.</li>
                            </ul>
                            <div class="s_tit">���� �ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>������ ���� �����̴�. 6���� ���� ���� �� ������ ����(����)���� ��� ������ ���� ���(�ο�)�� �ű��, ��ȣ�� ���ο��� ���� ������ ���Ͽ���.</li>
                                <li><span class="mark">��</span>���ؿ� ���� �����̴�. 9���� ���� ���� �� �ֺ� ���� ������ ���ӽ�Ű��, �䵿 �������� ������ ���� ���並 �����ϰ� �Ǿ���. ���� ������ ������ 5�� 15�� 62�ַ� ������ ��ġ�Ͽ���.</li>
                                <li><span class="mark">��</span>������ ���� �����̴�. 5���� ���� ������� ������ ǳ���ϰ� �ٴٷ� �����ϱ⿡ ������ ������� ������ �ű� �� ���������� ���� ��å�� �����Ͽ���. �̿� �����Ͽ� ������ �Ŷ�� ������ ������ ü���Ͽ���.</li>
                            </ul>
                        </div>
                    </div>
                    <div id="a12_2" class="a3_2" style="display: none;">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 4��</span>
                                <span>���ѱ� ������</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">���� Ư¡</div>
                            <p>
                                �ڷ�� �ӿ�����(1882)�� ���� �����̴�. ���ΰ� 5������ 2������ �����ϰ� �Ž� ������ ���ⱺ�� �������, ���� ���ε��� �Ҹ��� Ŀ�� ����. �̶� 13���� ���� ���� �ҿ� �ܿ� �𷡰� ���� ������, ���� ���ε��� ���� ������ �ξ� ����� ���� �����ϰ� ���ⱺ�� �Ϻ��� ������ �����Ͽ�����, �Ϻ� ������� �����Ͽ���. ���⿡ �Ϻ��� ���� ħŻ�� ��Ȱ�� ������� ���� �����α��� ��������, ������ �Ｑ ��������� ���� ������ �����ϰ� �ξ� ������ û�� ������ ��û�Ͽ���. �̿� ������ �⺴�� û���� ���� ������ �� �Ｑ ������� û���� �м��Ͽ�����, ������ ���븦 �ֵн�Ű�� ���� �ξ� ������ �����Ͽ���.
                            </p>
                            <div class="s_tit">���� �ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>�ӿ����� �� ������ û�� ����û ��� ���� ���� ����(1882)�� ü���Ͽ� û���� ������ ���� ������ ���������� ����ϴ� Ư���� �ο��Ͽ���.</li>
                            </ul>
                            <div class="s_tit">���� �ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>�Ѽ� ����(1884)�� �������� ���� ������ �Ϻ��� ü���� �����̴�. ���� ���� ������ �������� �Ϻ� ������ ���� ������ �����Ͽ�����, �Ϻ��� ���� �������� �Ϻ��ΰ� �Ϻ� ������� ������ ���� �Ϳ� ���� å���� ������ ������. �̿� �籹�� �Ѽ� ������ ü���Ͽ� ������ �Ϻ��� ������ �����ϰ� �Ϻ� ����� ����� �δ��ϴ� ������ �����Ͽ���.</li>
                                <li><span class="mark">��</span>���� ����(1885)�� �������� ���� û�� �Ϻ��� ü���� �����̴�. ���������� ���� �������� û���� �Ϻ��� ���̿� ���� �浹�� �־��µ�, �� å�� ���縦 �ѷ��ΰ� �籹�� �븳�Ͽ���. �ᱹ û�� �Ϻ��� �������� ���븦 ���ÿ� ö����Ű��, ���� ��� �� ���� ������ ���縦 ���� ��� ��뱹�� �̸� ����ϵ��� ������ ���� ������ ü���Ͽ���.</li>
                                <li><span class="mark">��</span>������ ����(1882)�� �ӿ����� ���� ������ �Ϻ��� ü���� �����̴�. ���� �������� ������ �Ϻ� ���� �ϳ��λ簡 ������ �̲��� �������� ��Ÿ�� ���½����� �ϸ� �Ϻ� ����� �ǽ��� �ҽ�, �Ϻ��� �ǻ��� ���Ƿ� ���� ���ο� �������� ������ ������ ���� ���� ���� �䱸�Ͽ���. �̿� ������ �Ϻ��� ������ ������ �ξ� ������ �����ϰ�, �Ϻ� ����� ��� ���� �Ϻ��� �ֵ��� �����Ͽ���.</li>
                            </ul>
                        </div>
                    </div>
                    <div id="a12_3" class="a3_3" style="display: none;">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 5��</span>
                                <span>���ѱ� ������</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">���� Ư¡</div>
                            <p>
                                ��� ��� �� ���� ���ſ� ���� ������ ö�� �̺��� ���� ���ӷ����� ��� ���� ö������ ��ġ�ϰڴٰ� �뺸�ؿ���, ��հ� �ֿ��� �̿� �ݴ��ϸ� �䵿 ������ �����Ͽ���. �̶� �䵿 ������ �ݴ��� �̼���� �⺴ �� ��ȭ��(�зϰ� �Ϸ��� ��ġ)���� ȸ���Ͽ� ����� �����ϰ� �ֿ��� ������ �� ������ �Ǳ��� ����Ͽ���(1388).
                            </p>
                            <div class="s_tit">���� �ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>Ȳ�� ��ø�� 1380���� ���̴�. ��� �� ��� �� ��Ը��� �ֱ��� ������ ħ������ �ֹ��� ���� ȭ���� �̿��Ͽ� �̵��� �����ƴ�(���� ��ø, 1380). �̶� ��Ƴ��� �ֱ����� �Լ��� �ҽǵǾ� ���ư��� ���ϰ� ��� �������� ���µ�, �̶� �̹� ����� �� �ִ� �ֱ���� �ռ��Ͽ� ��� �鼺���� ���ں��ϰ� ���̰� ��Ż�Ͽ���. �̸� �ذ��ϱ� ���� ������ �̼���� �������� �ֱ��� ����Ͽ��µ�, �̸� Ȳ�� ��ø�̶� �Ѵ�. ���� ��ȭ�� ȸ�� ������ ���̴�.</li>
                            </ul>
                            <div class="s_tit">���� �ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>��ȭ�� ȸ�� ���� �Ƿ��� ����� �̼���� ���� ���� ������ �ǹ������� ���� Ȯ��� ���� ������ ��ź ���� �鼺���� ���� ����������, ������ ������ �����Ͽ� �ǹ������� ����� �����ϰ� �ִ� ������ �����ϰ�, �������� �ǽ��Ͽ� �������� ��й��Ͽ���(1391).</li>
                                <li><span class="mark">��</span>�����ִ� 1392�⿡ ���صǾ���. �����ִ� ��� �� ��ǥ���� ��������, �̼��衤������������ ��� ��ġ������ �����Ͽ�����, �̵��� �̼��踦 ������ �ߴ��Ϸ��� ���� �̿� �ݴ��ϸ� �̼��踦 ������ ��ȹ�� ������. �׷��� �� ��ȹ�� ��ġ æ �̹��(���� ����)�� �����ָ� �����ϰ�, �̼���� ������ �Ǳ��Ͽ���(1392).</li>
                                <li><span class="mark">��</span>�̼���� 1392�⿡ ������ �Ǳ��� �� 1394�⿡ ������ ���濡�� �Ѿ����� �ű��, �Ѿ翡 �溹���� ����� �ñȰ� ����, ���� 4�빮 ���� �Ǽ��Ͽ���.</li>
                            </ul>
                        </div>
                    </div>
                    <div id="a12_4" class="a3_4" style="display: none;">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 11��</span>
                                <span>���ѱ� ������</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">���� Ư¡</div>
                            <p>
                                �ڷ��� ���� ģ ���� ȸ�ǡ��� ��ũ�� 3�� �ܻ� ȸ��(1945. 12.)�̴�. �̱�, ����, �ҷ��� 3�� �ܻ���� ��ũ�ٿ��� ī�̷� ���𿡼� ����Ͽ��� �ѹݵ� ������ ������ �� �ӽ� ���� ���� ������ �̸� �����ϱ� ���� �̡��� ���� ����ȸ ��ġ, �̱����������ҷá��߱��� ���� �������� ��Ź ��ġ �ǽ� ���� �������� �� ���ѱ� ������ ���� 4������ ���Ǽ����� ��ǥ�Ͽ���.
                            </p>
                            <div class="s_tit">���� �ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>���� �Ǳ� �غ� ����ȸ�� ��ũ�� 3�� �ܻ� ȸ�� ���� ������ 1945�� 8�� 15�Ͽ� �Ἲ�Ǿ���. ������ �и��� ��ġ�� �������� ����ȫ ���� ���� ��� ��翴�� ���� �Ǳ� ������ ������� ���� �Ǳ� �غ� ����ȸ�� �Ἲ�ϰ�, ġ�ȴ븦 �Ἲ�Ͽ� ������ �����ϴ� �� ���� ��ġ�� ġ���� ����Ͽ���.</li>
                            </ul>
                            <div class="s_tit">���� �ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>��ũ�� 3�� �ܻ� ȸ���� ������ ���� ���� �̡��� ���� ����ȸ�� �籹�� �ǰ� ���̷� ��ĵ���, �̱��� �ѱ� ������ ������ �����ϰ�, �� ��� ���� ����ȸ���� ���� ���� ����, �� ���ѿ������̶� ���Ÿ� �ǽ��� ���� �����Ͽ���. �̿� 1948�� 5�� 10�Ͽ� �츮���� ������ ������ ���뼱���� 5��10 �Ѽ��Ű� ���ѿ����� �ǽõǾ� �ӱ� 2���� ���� ��ȸ�ǿ��� ����Ǿ���.</li>
                                <li><span class="mark">��</span>��1�� �̡��� ���� ����ȸ�� ���� ��ȸ(1946. 5.)�ǰ� �̽¸��� �ܵ� ���� ������ ��â����, �д� ���⸦ �غ��ϱ� ���� ��Խİ� ������ ���� �¿� ���� ����ȸ�� �����Ͽ���(1946. 7.). �¿� ���� ����ȸ�� ��ũ�� 3�� �ܻ� ȸ�� ������ ���� �������� �ӽ� ���� ����, �̡��� ���� ����ȸ �簳, ���� ���� ���� �ֿ� �������� �ϴ� �¿� ���� 7��Ģ�� ��ǥ�Ͽ���(1946. 10.).</li>
                                <li><span class="mark">��</span>5��10 �Ѽ��ŷ� ������ ���� ��ȸ�� �ݹ��� ���� ó������ ����(1948. 9.)�ϰ�, 10���� ��ȸ�ǿ����� ������ �ݹ��� ���� Ư�� ���� ����ȸ(�ݹ� Ư��)�� ����(1948. 10.)�Ͽ���. �ݹ� Ư���� ģ�� ���Ǹ� ���� �ֿ� �λ���� ���硤�˰��Ͽ�����, �̽¸� ������ ���ط� �������� Ȱ���� ������ �� �� ���� �ʾ� ��ü�Ǿ���.</li>
                            </ul>
                        </div>
                    </div>
                    <div id="a12_5" class="a3_5" style="display: none;">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 17��</span>
                                <span>���ѱ� ������</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">���� Ư¡</div>
                            <p>
                                (��)�� 1926�⿡ �߻��� 6��10 ���� ��� ���� �����̴�. 6��10 ���� ��� ������ �λ����� ���� �Ͼ ���������, ���� ������ õ���� �Ϻ� ����, �׸��� ���� �л� ���� ����ȸ �� �л� ������ �����Ͽ� �غ��Ͽ���. �Ż� ������ ���� ������ õ���� �λ���� ü���Ǿ�����, �л����� ������� ���� ��� �����Ͽ� ���� ������ ��ġ�� �ݹ��� �Ѹ��� ���ν����� �����Ͽ���. <br />
                                (��)�� 1929�⿡ �߻��� ���� �л� ���� ��� ���� �����̴�. �ѱ��� �л��� �Ϻ��� �л� ���̿� �浹�� �߻��ߴµ�, ������ ���������� �ѱ��� �л��� �������� ���� ������ ���� �ݹ߷� ���� �л� ���� ��� �����Ǿ���. �� ����� �л����� �ֵ��ϰ� �ùΰ� �뵿�ڵ��� ������, 3��1 � ���� �ִ� �Ը��� ���� ��̾���.
                            </p>
                            <div class="s_tit">���� �ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>�Ű�ȸ�� 1927�⿡ �Ἲ�Ǿ���. 6��10 ���� � �غ� �������� �¿� ������ ������ ������ ���� ���� ���ϴ��� �Ἲ�� �� �ִ� �����밡 �����Ǿ���. �� ��� �������� �迭�� ��ȸ���� �迭�� ���� ���� �������� �Ű�ȸ�� �Ἲ�Ͽ���.</li>
                            </ul>
                            <div class="s_tit">���� �ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>������ȸ�� 1934�⿡ �����Ǿ���. ������ �Ĺ� ������ ���缺�� Ȯ���ϰ� �츮 ������ �ݹ��� �ﴩ���� ���� �ѱ��縦 �ְ�����, �̺����������� �� �Ϻ� ���л� ��� �������ڵ��� ������ȸ�� �����Ͽ� �ѱ��� ���硤������ ���� �����ϰ� �������к����� �����Ͽ���.</li>
                                <li><span class="mark">��</span>���� ������ 1923�⿡ â���Ǿ���. �ź����� �����Ǿ����� ���� �����⿡�� ������ ���� ������ ��ӵǾ���. �̿� ���� ����� �ڻ갡�� ������ ���� ���ֿ��� ���� ����縦 �����Ͽ� ������ ���� ��ȸ�� ���� ö�� �����ϴ� �ź� �ع� ��� ������.</li>
                                <li><span class="mark">��</span>��ä ���� ��� 1907�⿡ ���۵Ǿ���. ���� ��Ż ���� 1907�� ��� �Ϻ����κ��� �鿩�� ���� �Ѿ��� ���� ���� 1�� ����� �¸Դ� 1,300�� ���� ������, ���󵷰� �豤�� ���� �뱸���� �츮 ������ ��ä�� ���� ������ ��Ű�ڴ� ��ä ���� ��� �����Ͽ���. ��ä ���� ��� �� �������� Ȯ��Ǿ� �����α��� �����Ͽ�����, ���Ѹ��Ͻź��� ����� ��л���� �̸� ���������� ȫ���Ͽ���.</li>
                            </ul>
                        </div>
                    </div>
                    <!-- �ѱ��� E -->
                </div>
            </div>
        </div>
        <button onclick="" class="btnClose">�˾� �ݱ�</button>
        </div>
    </div>
    <!--  //���� �̹��� �˾� -->
    <!--  ���ǰ������� ���� �̹��� �˾� -->
    <div id="questnPop2" class="layerPopup questn_pop" style="display: none;">
        <span class="dimBg" onclick="">-</span>
        <div class="contentBox">
        <!-- <p class="tit">���� �� �ؼ�</p> -->
        <div class="scroll_box">
            <div class="question_wrap">
                <!-- ���� �� �ؼ� �ҷ����� -->
                <!-- �������� S -->
                <div data-title="�������ѷ�" class="subj_nm s_1">
                    <div class="question">
                        <div class="tit">5.	���������� ������� �� öȸ�� ���� �������� ���� ���� ����?</div>
                        <ol class="choices">
                            <li><span class="mark">��</span>ó�п� ���Ͽ� ���������̳� �����Ҽ��� ����Ǿ� ����� ����ǰ� �ִ� ���߿��� ����û�� ������ ��� ó���� ����� �� ����.</li>
                            <li><span class="mark">��</span>����û�� ������������ ������ ó���� �� �̻� ���ӽ�ų �ʿ䰡 ���� �� ��� �� ó���� ���� �Ǵ� �Ϻθ� �巡�� ���Ͽ� öȸ�� �� �ִ�.</li>
                            <li><span class="mark">��</span>���ұⰣ�� ��� ������ ó�п� �Ұ������ �߻��Ͽ��� �Ͽ��� ����û�� �Ǳ��� ������ �ش����� �ʴ´ٸ� �������� ó���� ����� �� �ִ�.</li>
                            <li><span class="mark">��</span>����û�� ���� �Ǵ� �δ��� ó���� ���γ� �Ϻθ� �ұ��Ͽ� ����� �� �ִ�. �ٸ�, ������� �ŷڸ� ��ȣ�� ��ġ�� �ִ� �� ������ ������ �ִ� ��쿡�� �巡�� ���Ͽ� ����� �� �ִ�.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 5��</span>
                                <span>���ֿ� ������</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">�ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>�� ó�п� ���� ���������̳� �Ҽ��� ��� ���̴��� ����û�� ������ ó���� ��������� �� �ִ�. <br>
                                �� ����� �ΰ�<u>ó�п� ���� <b>��ҼҼ�</b>�� <b>������</b>�̶� �� �ΰ����ڷμ��� ������ ó���� <b>������ ���</b></u>�ϰ� �� ���ڸ� �����Ͽ� �ٽ� ������ �ΰ�ó���� �� �� �ִ�.<span class="tiny_noti">(2006.2.10. 2003��5686)</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="�����а���" class="subj_nm s_2">
                    <div class="question">
                        <div class="tit">4.	������п� ���� �������� ���� ���� ����?</div>
                        <ol class="choices">
                            <li><span class="mark">��</span>�ο�ȭ�� �����ϴ� ���� ���η��� ������п� ���� �������� ����Ǿ���.</li>
                            <li><span class="mark">��</span>����ⱸ�� ���� �ڿ��� ȿ�������� ����� �� ���� ���¸� ���Ѵ�.</li>
                            <li><span class="mark">��</span>���δ� ���尳�� �� ������ ���� ������и� �����Ѵ�.</li>
                            <li><span class="mark">��</span>�������� ����� ������и� �߱��ϴ� �����̴�.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 4��</span>
                                <span>�ſ��� ������</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">�ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>�ο�ȭ�� �����ϴ� ���� ���η��� ������ ũ�⸦ ����� ������ ������ ������ �ش�ȭ�ؾ� �Ѵٴ� ������ ���ν��п� ���� �������� ����Ǿ���.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="�������Ź�" class="subj_nm s_3">
                    <div class="question">
                        <div class="tit">7.	����������ѿ� ���� �������� ���� ���� ����?</div>
                        <ol class="choices">
                            <li><span class="mark">��</span>������ �� ���Ƿ� ���ر�ȣ������ε���������ϼյ��� �� ��� �ڿ�����Ȱ���� �ϰų� �� �ڿ�����Ȱ���� ������ ������� ������ ���� ��������(����� �����Ѵ�)�� ������� �������� �Ļ���� ���Ĺ��� �����ϴ� ������ ��������� ���� �ƴ��Ѵ�.</li>
                            <li><span class="mark">��</span>�ڼ������ �ְ��������ϴ� ������������ġ��ü����б������ȸ��ü �Ǵ� ������ü �� �ۿ� ��������̳� ������ġ��ü�� �㰡�� �޾� ������ ���� �Ǵ� ��ü�� �ǿ���ǰ����ȣ��ǰ�� �����ϴ� ������ ��������� ���ϳ�, �������� ���ű����� ������� �ϴ� ��� �����ϴ� ���� ��ǰ �Ǵ� �� �������� ��������� �Ǵ� �� �Ҽ� ������ ��Ī�� ǥ���Ͽ� �����ϴ� ������ ��������� ���� �ƴ��Ѵ�.</li>
                            <li><span class="mark">��</span>�ĺ��ڰ� �ǰ��� �ϴ� �ڿ� �� ����ڴ� ���� ���ű��ȿ� �ִ� �� �Ǵ� ���� ���ű��� �ۿ� �ִ��� �� ���ű��ΰ� ���� �ִ� ���� ��ȥ�Ŀ��� �ַ������� �� �� ����.</li>
                            <li><span class="mark">��</span>������ ��ǥ�ڰ� �ְ��ϴ� �繫�� ���� ȸ�ǿ��� ������ ���� ����� ��ǥ�ڤ�å���� �Ǵ� ���޴����ڿ��� ������ ���� �Ļ���� ���Ĺ��� �����ϴ� ������ ��������� ���� �ƴ��Ѵ�.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 7��</span>
                                <span>ä���� ������</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">�ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>�������Ź� ��112�� ��2�� <br>
                                ���� �� ȣ�� ��� �ϳ��� �ش��ϴ� ������ ��������� ���� �ƴ��Ѵ�. <br>
                                �ڼ������ �ְ��������ϴ� ������������ġ��ü����б������ȸ��ü �Ǵ� ������ü �� �ۿ� ��������̳� ������ġ��ü�� �㰡�� �޾� ������ ���� �Ǵ� ��ü�� �ǿ���ǰ����ȣ��ǰ�� �����ϴ� ����. �ٸ�, �������� ���ű����� ������� �ϴ� ��� �����ϴ� ���� ��ǰ �Ǵ� �� �������� ��������� �Ǵ� �� �Ҽ� ������ ��Ī�� ǥ���Ͽ� �����ϴ� ������ �����Ѵ�.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="�뵿������" class="subj_nm s_4">
                    <div class="question">
                        <div class="tit">4.	���ٷα��ع����� ���� �����ް��� �־��������� �Ǵ��ϱ� ���� ����� ������ ���� �Ⱓ�� �ش����� �ʴ� ����?</div>
                        <ol class="choices">
                            <li><span class="mark">��</span>������������ �Ϥ����� �縳 ������ ���� �������� ���� ������������ �޾��� �Ⱓ</li>
                            <li><span class="mark">��</span>���뵿���� �� �뵿�������������� ���� ������ �������� �Ⱓ</li>
                            <li><span class="mark">��</span>�ӽ� ���� ������ ���ٷα��ع����� ���� ��������ް��� �޾��� �Ⱓ</li>
                            <li><span class="mark">��</span>�ٷ��ڰ� �������� �λ� �Ǵ� �������� �޾��� �Ⱓ</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 4��</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">�ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>�ٷα��ع� ��60�� ��6�� <br>
                                ���� �� ȣ�� ��� �ϳ��� �ش��ϴ� �Ⱓ�� ����� ������ ����. <br>
                                1. �ٷ��ڰ� �������� �λ� �Ǵ� �������� �޾��� �Ⱓ <br>
                                2. �ӽ� ���� ������ ��74�� ��1�׺��� ��3�ױ����� ������ ���� �ް��� �޾��� �Ⱓ <br>
                                3. ������������ �Ϥ����� �縳 ������ ���� ������ ��19�� ��1�׿� ���� ������������ �޾��� �Ⱓ</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="�����а���" class="subj_nm s_5">
                    <div class="question">
                        <div class="tit">5.	��Ȱ������ ������ ���� �͸��� ��� ����?</div>
                        <div class="box">
                            <ul class="choices">
                                <li><span class="mark">��.</span>��� �л��� ������� �ؾ� �Ѵ�.</li>
                                <li><span class="mark">��.</span>ġ�ᳪ ������ �ƴ϶� ���濡 ������ �ξ�� �Ѵ�.</li>
                                <li><span class="mark">��.</span>������ �ߴ޻Ӹ� �ƴ϶� ����������ü�� �ߴ޵� �Բ� �����ؾ� �Ѵ�.</li>
                            </ul>
                        </div>
                        <ol class="choices">
                            <li><span class="mark">��</span>��, ��</li>
                            <li><span class="mark">��</span>��, ��</li>
                            <li><span class="mark">��</span>��, ��</li>
                            <li><span class="mark">��</span>��, ��, ��</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 5��</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">�ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>���� ��Ȱ������ ���� �� �յ��� ����, ���� ���ؼ��� ����, ���� ������ ������, ��, ��, �� ��� ��Ȱ������ ������ �ش��Ѵ�.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="����������" class="subj_nm s_6">
                    <div class="question">
                        <div class="tit">12. �����αǹ��� ���� �������� ���� ���� ����?</div>
                        <ol class="choices">
                            <li><span class="mark">��</span>������ ��Ÿ ��Ȥ�ϰų� ���ε����̰ų� ������� ��� Ȥ�� ó���� �ݴ��ϴ� ���ࡹ�� �������ø� ������ �� � ��쿡�� ���� ���������� �����ϰ� �ִ�.</li>
                            <li><span class="mark">��</span>���Ƶ��� �Ǹ��� ���� ���ࡹ�� ��� ��Ȳ���� �Ƶ��� �ּ������� ���� �߿��� �Ǵܱ������� �����ϰ� �ִ�.</li>
                            <li><span class="mark">��</span>����� ���ֳ뵿�ڿ� �� ������ �Ǹ���ȣ�� ���� �������ࡹ�� �� �� �� ���� �Ⱓ�� �۾��� �����ϴ� �����뵿�ڵ� ���� ���� ��� �����ϰ� �ִ�.</li>
                            <li><span class="mark">��</span>����� ������ ��������ö�� ���� �������ࡹ�� �������� �������� ������ ���� ��������ö������ȸ�� ���縦 ��û�� �� ���ٰ� �����ϰ� �ִ�.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 12��</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">�ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>����� ������ ��������ö�� ���� �������ࡹ ��14�� <br>
                                ü�౹�� ��� ���� �� ü�౹�� ���� �� ���࿡ ������ �Ǹ� ������ ���������� �����ϰ� �ִ� <u>�����̳� �Ǵ� ������ �������κ��� �� ���ұǳ����� �뺸�� �����Ͽ� �ɻ��� �Ǵ��� ����ȸ�� �����ϰ� �ִٴ� ���� ����</u>�Ѵٰ� ������ �� �ִ�. �̷��� ������ ���� ���� ü�౹�� ���õǴ� �뺸�� ����ȸ�� �������� �ƴ��Ѵ�.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="������㡤�ɸ��а���" class="subj_nm s_7">
                    <div class="question">
                        <div class="tit">1.	��������� ��ǥ�� ���� ���� ����?</div>
                        <ol class="choices">
                            <li><span class="mark">��</span>�ùٸ� ���� ������ �ϱ� ���� �ڱ� �ڽ��� ��Ȯ�ϰ� ���������� �����ϵ��� �Ѵ�.</li>
                            <li><span class="mark">��</span>�����ȸ�� �����ϰ� �پ��� �ϰ� ������ ���� �� ������ ���� ���ظ� ���δ�.</li>
                            <li><span class="mark">��</span>������ ������ ������ �� �ֵ��� ������ �ո����� �ǻ���� �ɷ��� ������Ų��.</li>
                            <li><span class="mark">��</span>���� Ž���� Ȱ�뺸�ٴ� ������ �ʿ�� �ϴ� ���� ���� ���� ������ ������ �ξ�� �Ѵ�.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 1��</span>
                                <span>������ ������</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">�ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>��������� ��ǥ �� ���� �ڱ�����, ��� ��������, ���� �ǻ�����ɷ��� �Ծ翡 ���� �����̴�. ���� ���� Ž���� Ȱ��, ������ �ʿ�� �ϴ� ���� ���� ���� ������ �� �߿� �ϳ��� ������ �δ� ���� �ƴ� ����ڰ� �����ڸ� ���� �� �� ������ �ξ�� �ϹǷ� ���� ���� �����̴�.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="��������" class="subj_nm s_8">
                    <div class="question">
                        <div class="tit">2.	 ������ ���� �ε��� �絵�� ���� �絵�ҵ漼 �ΰ�ó���� �ִ� ���, ������ ���� �絵�ҵ漼 �����ǹ��� ���ϱ� ���Ͽ� ������ �� �ִ� �������⺻������ ���� �ΰ��� ��Ģ��?</div>
                        <div class="box">
                            <ul class="choise">
                                <li><span class="mark">��</span>ˣ�� �ε���(X)�� �࿡�� ���ǽ�Ź�Ͽ���.</li>
                                <li><span class="mark">��</span>ˣ�� �ε���(X)�� Aȸ�翡�� �絵�Ͽ� �� �絵�� ���� �ҵ��� ˣ���� �ͼӵǾ���.</li>
                                <li><span class="mark">��</span>���������� �࿡�� �絵�ҵ漼 �ΰ�ó���� �Ͽ���.</li>
                            </ul>
                        </div>
                        <ol class="choices">
                            <li><span class="mark">��</span>��������</li>
                            <li><span class="mark">��</span>���Ǽ���</li>
                            <li><span class="mark">��</span>������������ �緮�� �Ѱ�</li>
                            <li><span class="mark">��</span>���������� ���İ���</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 2��</span>
                                <span>����ȭ ������</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">�ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>[�ҵ� �ͼ��ڿ� ���� ��������] <br>
                                ������ ����� �Ǵ� �ҵ�, ����, ���, ���� �Ǵ� �ŷ��� �ͼ��� ������ ���̰� ��ǻ� �ͼӵǴ� �ڰ� ���� ���� ������ <u>��ǻ� �ͼӵǴ� ��</u>�� �����ǹ��ڷ� �Ͽ� ������ �����Ѵ�. <br>
                                [����������Ģ ���� ��� �� ���ǽ�Ź�ڿ� ���� ����] <br>
                                ���ǽ�Ź�ε����� �Ű�ó���� ��쿡�� �絵�� ��ü �� �����ǹ��ڴ� ���Ǽ�Ź�ڰ� �ƴϰ� <u>���ǽ�Ź��</u>�̴�.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="ȸ����" class="subj_nm s_9">
                    <div class="question">
                        <div class="tit">2.	�繫��ǥ ǥ�ÿ� ���� �������� ���� ���� ����?</div>
                        <ol class="choices">
                            <li><span class="mark">��</span>�濵���� �繫��ǥ�� �ۼ��� �� ��ӱ�����μ��� ���Ӱ��ɼ��� ���ؾ� �Ѵ�.</li>
                            <li><span class="mark">��</span>����� �����帧 ������ �����ϰ�� �߻����� ȸ�踦 ����Ͽ� �繫��ǥ�� �ۼ��Ѵ�.</li>
                            <li><span class="mark">��</span>��� �繫��ǥ�� �����ϴ� �� ���������ϴٸ� ������ ������ ��쿡�� �������� �����Ѵ�.</li>
                            <li><span class="mark">��</span>ȸ����ؿ��� ǥ�ù���� ������ �䱸�ϴ� ��쿡�� �繫��ǥ�� ǥ�ÿ� �з��� �ű� �����Ͽ��� �Ѵ�.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 2��</span>
                                <span>����ȭ ������</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">�ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>�繫��ǥ �׸��� ǥ�ÿ� �з��� �ű� �����Ͽ��� �񱳰��ɼ��� ����Ǿ� ȸ�������� ����������. �ٸ� ������ ���ó�� ����� ǥ�ù���� �繫��ǥ�̿��ڿ��� �ŷڼ� �ְ� ���� ���������� ������ �����ϸ�, ����� ������ ���������� ������ ���ɼ��� ���� �񱳰��ɼ��� �������� ���� ������ �Ǵ��� ������ <b>�繫��ǥ�� ǥ�ù���� ������ �� �ִ�.</b></li>
                            </ul>
                            <div class="box">
                                <ul class="choices">
                                    <li><span class="mark">��</span>���ȯ���� ��ȭ: ��������� �߿��� ��ȭ�� �繫��ǥ�� ������ ��� �ٸ� ǥ�ó� �з� ����� �� ������ ���� ����� ���</li>
                                    <li><span class="mark">��</span>������ �䱸: <u>�ѱ�ä�ñ���ȸ����ؿ��� ǥ�ù���� ������ �䱸�ϴ� ���</u></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div data-title="����������" class="subj_nm s_10">
                    <div class="question">
                        <div class="tit">6.	�������� ����ɡ� ��95��(���Ͱ���)�� ���� ������ ���� �� �ִ� �������� ������ ����?</div>
                        <ol class="choices">
                            <li><span class="mark">��</span>��ź, �̶�ũ, ����</li>
                            <li><span class="mark">��</span>�Ӱ��, �ڸ��, ��Ƽ���Ǿ�</li>
                            <li><span class="mark">��</span>�̶�, ����, �긶����</li>
                            <li><span class="mark">��</span>�ø���, �Ҹ�����, ��Ƽĭ</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 6��</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">�ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>������ ����� ��95�� ��1�� <br>
                                ������ ��74���� ���� ������ ���� ������ ������� �� �ִ� ������ ���� ǥ�� ����.</li>
                            </ul>
                            <table class="tbl tbl_3 pop_table">
                                <colgroup>
                                    <col style="width: 30%">
                                    <col style="width: 70%">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th scope="col">����</th>
                                        <th scope="col">����</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1. �ƽþ�</td>
                                        <td class="tal">��ź</td>
                                    </tr>
                                    <tr>
                                        <td>2. �ߵ�</td>
                                        <td class="tal">�̶�, �̶�ũ, ���ٳ�, <span class="cr_blue">�ø���</span></td>
                                    </tr>
                                    <tr>
                                        <td>3. �����</td>
                                        <td class="tal">�����</td>
                                    </tr>
                                    <tr>
                                        <td>4. ������ī</td>
                                        <td class="tal">�ڸ��, ��Ƽ���Ǿ�, <span class="cr_blue">�Ҹ�����</span></td>
                                    </tr>
                                    <tr>
                                        <td>5. ����</td>
                                        <td class="tal">�ȵ���, ����, �긶����, <span class="cr_blue">��Ƽĭ</span>, ����ũ(�׸����� �� ��������� �����Ѵ�)</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div data-title="ȸ�����" class="subj_nm s_11">
                    <div class="question">
                        <div class="tit">2.	�繫��ǥ ǥ�ÿ� ���� �������� ���� ���� ����?</div>
                        <ol class="choices">
                            <li><span class="mark">��</span>�濵���� �繫��ǥ�� �ۼ��� �� ��ӱ�����μ��� ���Ӱ��ɼ��� ���ؾ� �Ѵ�.</li>
                            <li><span class="mark">��</span>����� �����帧 ������ �����ϰ�� �߻����� ȸ�踦 ����Ͽ� �繫��ǥ�� �ۼ��Ѵ�.</li>
                            <li><span class="mark">��</span>��� �繫��ǥ�� �����ϴ� �� ���������ϴٸ� ������ ������ ��쿡�� �������� �����Ѵ�.</li>
                            <li><span class="mark">��</span>ȸ����ؿ��� ǥ�ù���� ������ �䱸�ϴ� ��쿡�� �繫��ǥ�� ǥ�ÿ� �з��� �ű� �����Ͽ��� �Ѵ�.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 2��</span>
                                <span>����ȭ ������</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">�ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>�繫��ǥ �׸��� ǥ�ÿ� �з��� �ű� �����Ͽ��� �񱳰��ɼ��� ����Ǿ� ȸ�������� ����������. �ٸ� ������ ���ó�� ����� ǥ�ù���� �繫��ǥ�̿��ڿ��� �ŷڼ� �ְ� ���� ���������� ������ �����ϸ�, ����� ������ ���������� ������ ���ɼ��� ���� �񱳰��ɼ��� �������� ���� ������ �Ǵ��� ������ <u>�繫��ǥ�� ǥ�ù���� ������ �� �ִ�.</u></li>
                            </ul>
                            <div class="box">
                                <ul class="choices">
                                    <li><span class="mark">��</span>���ȯ���� ��ȭ: ��������� �߿��� ��ȭ�� �繫��ǥ�� ������ ��� �ٸ� ǥ�ó� �з� ����� �� ������ ���� ����� ���</li>
                                    <li><span class="mark">��</span>������ �䱸: <u>�ѱ�ä�ñ���ȸ����ؿ��� ǥ�ù���� ������ �䱸�ϴ� ���</u></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div data-title="����а���" class="subj_nm s_12">
                    <div class="question">
                        <div class="tit">1.	������ ����� ���� �ⱸ ���� ����� ���� �����̴�. �̿� �ش��ϴ� ǥ�� ���� �����?</div>
                        <div class="box">��� ��ǥ�ڸ� ������� �����ϴ� ���� �ƴ϶�, ��ǥ�ڵ��� ������ ���� ������� �ⱸ ��ó���� ���ٰ� ���� �������� ��ǥ�ڸ� ������ �����մϴ�. ?������ �ʹ� ���� ��쿡�� ������� ���߷� ���Ϸ� �����ؾ� �� ��ǥ�ڸ� ��ĥ ���ɼ��� Ů�ϴ�. �ݴ�� ������ ������ ������� �ʹ� �ٺ� �����ڸ� ��Ȯ�ϰ� �������� ���� �� �ֽ��ϴ�. 16�� �뼱�� ���� ������ 6�̾���, 19�� �뼱�� 5�� ���� �����߽��ϴ�.</div>
                        <ol class="choices">
                            <li><span class="mark">��</span>�ܼ����������(simple random sampling)</li>
                            <li><span class="mark">��</span>���������(systematic sampling)</li>
                            <li><span class="mark">��</span>��ȭ���������(stratified random sampling)</li>
                            <li><span class="mark">��</span>���������(cluster sampling)</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 1��</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">�ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>�������� �����ϴ� ǥ�� ���� ����� ������������� ü���� ������̶�� �ϸ�, ù ��° ��Ҹ� �������� ���� �� ����� �Ź� n��° ��Ҹ� ǥ������ �����ϴ� ǥ������̴�.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="�����а���" class="subj_nm s_13">
                    <div class="question">
                        <div class="tit">1.	��������� ������ �ƴ� ����?</div>
                        <ol class="choices">
                            <li><span class="mark">��</span>�ܺμ�</li>
                            <li><span class="mark">��</span>��������</li>
                            <li><span class="mark">��</span>������</li>
                            <li><span class="mark">��</span>���Ī����</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 1��</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">�ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>��������� �������δ� �ܺμ�, <u>�ҿ�������</u>, ������, ������ ���Ī�� ���� �ִ�.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="�����а���" class="subj_nm s_14">
                    <div class="question">
                        <div class="tit">5.	������ ���� �� �������� ó�쿡 ���� �������� �������� ������ ���뿡 ���� �������� ���� ����?</div>
                        <ol class="choices">
                            <li><span class="mark">��</span>������ �����ڰ� �����ü��� ���� �Ǵ� �ⱸ ���� �ձ��ϰų� �ձ��Ϸ��� �ϴ� ���μ� �������� ����ϰų� ��ȣ��� ����Ͽ��� �� ������ �޼��� �� ���� ��쿡�� �����ǿ� ������ �� �ִ�. �� ��� �ǹ����� �ǰ��� ���� �Ѵ�.</li>
                            <li><span class="mark">��</span>�������� ������ ����Ⱓ�� 24�ð� �̳��� �Ѵ�. �ٸ�, ������ Ư�� ����Ͽ� ������ �ʿ䰡 ������ �ǹ����� �ǰ��� ����Ͽ� 1ȸ�� 12�ð��� �������� �Ⱓ�� ������ �� �ִ�.</li>
                            <li><span class="mark">��</span>�����ڸ� �����ǿ� ������ �� �ִ� �Ⱓ�� ����Ͽ� 2���� �ʰ��� �� ����.</li>
                            <li><span class="mark">��</span>������ �����ڸ� �����ǿ� �����ϰų� ����Ⱓ�� �����ϴ� ��쿡�� �� ������ �������� �˷� �־�� �Ѵ�.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 5��</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">�ؼ�</div>
                            <p>������ ���� �� �������� ó�쿡 ���� ������ ��96�� ��1��~��4��</p>
                            <ul class="choices">
                                <li><span class="mark">��</span><span class="cr_red">��</span> ������ �����ڰ� �����ü��� ���� �Ǵ� �ⱸ ���� �ձ��ϰų� �ձ��Ϸ��� �ϴ� �� �������� ����ϰų� ��ȣ��� ����Ͽ��� �� ������ �޼��� �� ���� ��쿡�� �����ǿ� ������ �� �ִ�. (�ǹ����� �ǰߡ�)</li>
                                <li><span class="mark">��</span><span class="cr_blue">��</span> �������� ������ ����Ⱓ�� 24�ð� �̳��� �Ѵ�. �ٸ�, ������ Ư�� ����Ͽ� ������ �ʿ䰡 ������ �ǹ����� �ǰ��� ����Ͽ� 1ȸ�� 12�ð��� �������� �Ⱓ�� ������ �� �ִ�.</li>
                                <li><span class="mark">��</span><span class="cr_red">��</span> �����ڸ� �����ǿ� ������ �� �ִ� �Ⱓ�� ����Ͽ� <b><u>3��</u></b>�� �ʰ��� �� ����.</li>
                                <li><span class="mark">��</span><span class="cr_red">��</span> ������ �����ڿ� ���Ͽ��� ��95�� ��4��(������ �����ڸ� ��ȣ�ǿ� �����ϰų� ����Ⱓ�� �����ϴ� ��쿡�� �� ������ <b><u>����</u></b>���� �˷� �־�� �Ѵ�)�� ������ �ؿ��Ѵ�.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="����Ҽ۹�����" class="subj_nm s_15">
                    <div class="question">
                        <div class="tit">18. �����غ������� ���� �������� ���� ���� ����?</div>
                        <ol class="choices">
                            <li><span class="mark">��</span>�����������ǿ����� �����غ������ �ʼ��� ����������, �Ϲ��������ǿ����� �����غ������ �ʼ��� ������ �ƴϴ�.</li>
                            <li><span class="mark">��</span>�����غ���Ͽ��� �ǰ����� �⼮�� �ʼ����� ����� �ƴϴ�.</li>
                            <li><span class="mark">��</span>�����غ������ ������ ��ǿ� ���� �ǰ��ο��� ��ȣ���� ��� ������ �������� ������ȣ���� ������ �ʿ�� ����.</li>
                            <li><span class="mark">��</span>�������� �����غ���Ͽ� �⼮�� �ǰ��ο��� ������ �ź��� �� ������ �˷��־�� �Ѵ�.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 18��</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">�ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>����Ҽ۹� ��266����8 ��4�� <br>
                                ������ �����غ������ ������ ��ǿ� ���Ͽ� <u>��ȣ���� ���� ������ �������� ��ȣ���� �����Ͽ��� �Ѵ�.</u></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="������å����" class="subj_nm s_16">
                    <div class="question">
                        <div class="tit">8.	�����̷п� ���� �������� ���� ���� ����?</div>
                        <ol class="choices">
                            <li><span class="mark">��</span>����Ŀ��(Akers)�� ��ȸ�н��̷п� ������, �����̳� ��Ż�� ��ȸ ������ ���� ��ȣ�ۿ��� ���� �н��ȴ�.</li>
                            <li><span class="mark">��</span>���̽�(Reiss)�� ����(Nye)�� ���������� �����̷п� ������, ������������������ �� ���ο� ���迡 ���� û�ҳ��� �屸�� ���� ������ �����ɼ��� ���˸� ������ Ȯ���� ��������.</li>
                            <li><span class="mark">��</span>�㽬(Hirschi)�� ��ȸ�����̷п� ������, ��� ����� ������ �����ڷμ� �ڽ��� ������ ���� �ֺ��ΰ��� ���谡 ��ȭ�ϴ� ���� �η����ϱ� ������ ���˸� �������� �ȴ�.</li>
                            <li><span class="mark">��</span>����ũ��(Sykes)�� ����(Matza)�� ��ȭ(���)�̷п� ������, �ڽ��� ���࿡ ���Ͽ� å���� ���ٰ� �ո�ȭ�ϴ� �͵� ��ȭ����� �ϳ��� �ش��Ѵ�.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 8��</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">�ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>�㽬(Hirschi)�� ��ȸ�����̷��� ��ȸ������(�������������������ų�)�� ���� ���˸� �����ϰ� �ȴٴ� �̷�����, �ڽ��� ������ ���� �ֺ��ΰ��� ���谡 ��ȭ�ϴ� ���� �η����ϱ� ������ <u>���˸� �������� �ʰ� �ȴ�</u>�� �̷��̴�.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="��ȸ�����а���" class="subj_nm s_17">
                    <div class="question">
                        <div class="tit">4.	�������� �����ϴ� ��ȸ������ �����?</div>
                        <div class="box">
                            <ul class="choices">
                                <li><span class="mark">��</span>��ȸ������ �����Ͽ� ��ȸ�� ����� �����ϰ��� ��</li>
                                <li><span class="mark">��</span>��ȸ���� �޿��� ���α׷��� ���������ν� ���ҵ����� ���ŷ��� ���� ��������</li>
                            </ul>
                        </div>
                        <ol class="choices">
                            <li><span class="mark">��</span>������ ����</li>
                            <li><span class="mark">��</span>������ ����</li>
                            <li><span class="mark">��</span>��ġ�� ����</li>
                            <li><span class="mark">��</span>������ ����</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 4��</span>
                                <span>������ ������</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">�ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>��ȸ������ ���� �� ������ ����� ��ȸ������ �����Ͽ� <u>��ȸ�� ����� ����</u>�� ��ȸ���� �޿��� ���α׷��� ���������ν� <u>���ҵ����� ���ŷ��� ���� ������ ����</u>��Ű�� �Ͱ� ������ �ִ�. ��, <u>������ ����� ��ȸ������ ������ �������� ����� �ʷ��� ���ɼ��� �ֱ� ������ ������ �����ϴ� �������� ��ȸ������ �̷������ ���� ����</u>�Ѵ�. </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="����" class="subj_nm s_18">
                    <div class="question">
                        <div class="tit">2.	���������� ���� �������� ���� ���� ����?</div>
                        <ol class="choices">
                            <li><span class="mark">��</span>�̸��� ������ ���������� ������ �������� �ϴ� ���˸� �������� ���Ͽ� �����ϴ� ��츦 ���Ѵ�.</li>
                            <li><span class="mark">��</span>������ ���������� �����ǹ��� ���� �ǹ��̾�� �ϹǷ� ��ȸ��� Ȥ�� ������ �����ǹ��� ���Ǵ� ��쿡�� �������� �ʴ´�.</li>
                            <li><span class="mark">��</span>�������� ������ ���������� �ټ��� ������������ ����� �ǹ��� �ο��Ǿ� �ְ� �� �ǹ��� �������� ������ �� �ִ� ��쿡 �����Ѵ�.</li>
                            <li><span class="mark">��</span>������ �߻��� ������ �ǹ��� �ִ� �ڻӸ� �ƴ϶� �ڱ��� ������ ���Ͽ� ����߻��� ������ �߱��� �ڵ� �� ����߻��� �������� ���� ������ �� �߻��� ����� ���Ͽ� ó���Ѵ�.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 2��</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">�ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>������ ���������� �����Ǳ� ���ؼ��� ������ �����ϰ� �ִ� ����ħ���� ��� �߻��� ������ ������ �����ǹ��� ���� �ִ� �ڰ� �� �ǹ��� ���������ν� ��� �߻��� ���� ������ �� �־������� �ұ��ϰ� �� ����� �߻��� �����ϰ� �̸� ����� ä �� �ǹ��� �������� �ƴ��� ��쿡, �� �������� ������ ���� ����ħ�ؿ� ������ ������ ��ġ�� �ִ� ���̾ �� ������ ���������� �򰡵� ���� ���̶��, ������ ���� ���������� �����ϰ� ������������ ó���� �� �ְ�, ���⼭ �����ǹ��� ������ �ǹ��̾�� �ϹǷ� �ܼ��� ������ �Ǵ� �������� �ǹ��� ���Ե��� ������ �����ǹ��� ������ �ǹ��� �� �������̰� �ҹ����̰� ����� ���� �� �����̰� ����̰� �ҹ��ϹǷ�, ����, ��������, ���������� ���� ���� �����̰� ��Ÿ ���Ǽ����� ��Ģ�̳� <u>��ȸ��� Ȥ�� ������ �����ǹ��� ���Ǵ� ��쿡�� ������ �����ǹ��� �ִ�.</u>(����� 1996. 9. 6. ���� 95��2551 �ǰ�)</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="����Ҽ۹�" class="subj_nm s_19">
                    <div class="question">
                        <div class="tit">2.	���ҽ�ȿ�� ���� �������� ���� ���� ����?</div>
                        <ol class="choices">
                            <li><span class="mark">��</span>�����庯���� �ִ� ��쿡 ���ҽ�ȿ�� �ϼ� ���δ� ������ �������Ⱑ �־��� ������ �������� �Ǵ��� ���̰� �����庯�� �ø� �������� ���� ���� �ƴϴ�.</li>
                            <li><span class="mark">��</span>����˰� ��ȣ��������˿� ����� ���հ��迡 �ִ� ���, ��ȣ����������� ���ҽ�ȿ�� �ϼ��Ǿ��ٰ� �Ͽ� ������� ���ҽ�ȿ���� �ϼ��Ǵ� ���� �ƴϴ�.</li>
                            <li><span class="mark">��</span>������Ҽ۹��� ��253����2���� ���������� �ؼ��� ������ �� ������ �������� ȿ���� ���� ������ Ȯ���ϴ� ���ܸ� �����Ͽ� ���� ���̹Ƿ� ��Ģ������ �����ϰ� �ؼ��Ͽ��� �ϰ� �ǰ��ο��� �Ҹ��� �������� Ȯ���Ͽ� �ؼ��ؼ��� �ƴ� �ȴ�.</li>
                            <li><span class="mark">��</span>������Ҽ۹��� ��253����3���� ���� �������� ����ó���� ���� �������� ���ܿ� �ִ� ��졯�� ������ �������� ���˸� �������� ����ó���� ���� �������� ���ܷ� ������ ��쿡 �����ǰ�, ���ܿ��� ���˸� �������� ����ó���� ���� �������� ���ܿ��� ü���� ����ϴ� ���� ���Ե��� �ʴ´�.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 2��</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">�ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>����Ҽ۹� ��253�� ��3���� �������� ����ó���� ���� �������� ���ܿ� �ִ� ��� �� �Ⱓ ���� ���ҽ�ȿ�� �����ȴ�.����� �����ϰ� �ִ�. �� ������ �Թ� ������ ������ �츮������ ������� ���������� ��ġ�� ���ϴ� ���ܿ� ü���� ���� ������ �������� �̿�� ��쿡 ü���Ⱓ ������ ���ҽ�ȿ�� ����Ǵ� ���� �����Ͽ� ������ ó���� �� �ֵ��� �Ͽ� �������� �����ϰ� �����ϰ��� �ϴ� �� �ִ�. ���� �� ������ ���� �������� ����ó���� ���� �������� ���ܿ� �ִ� ��졯�� ������ �������� ���˸� �������� ����ó���� ���� �������� ���ܷ� ������ ��쿡 �������� �ƴ��ϰ�, ������ <u>���ܿ��� ���˸� �������� ����ó���� ���� �������� ���ܿ��� ü���� ����ϴ� ��쵵 ���Եȴ�.</u>(����� 2015��5916 �Ƿ�)</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="�����ѷ�" class="subj_nm s_20">
                    <div class="question">
                        <div class="tit">2.	���������� ���� �������� ���� ���� ����?</div>
                        <ol class="choices">
                            <li><span class="mark">��</span>�̸��� ������ ���������� ������ �������� �ϴ� ���˸� �������� ���Ͽ� �����ϴ� ��츦 ���Ѵ�.</li>
                            <li><span class="mark">��</span>������ ���������� �����ǹ��� ���� �ǹ��̾�� �ϹǷ� ��ȸ��� Ȥ�� ������ �����ǹ��� ���Ǵ� ��쿡�� �������� �ʴ´�.</li>
                            <li><span class="mark">��</span>�������� ������ ���������� �ټ��� ������������ ����� �ǹ��� �ο��Ǿ� �ְ� �� �ǹ��� �������� ������ �� �ִ� ��쿡 �����Ѵ�.</li>
                            <li><span class="mark">��</span>������ �߻��� ������ �ǹ��� �ִ� �ڻӸ� �ƴ϶� �ڱ��� ������ ���Ͽ� ����߻��� ������ �߱��� �ڵ� �� ����߻��� �������� ���� ������ �� �߻��� ����� ���Ͽ� ó���Ѵ�.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 2��</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">�ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>������ ���������� �����Ǳ� ���ؼ��� ������ �����ϰ� �ִ� ����ħ���� ��� �߻��� ������ ������ �����ǹ��� ���� �ִ� �ڰ� �� �ǹ��� ���������ν� ��� �߻��� ���� ������ �� �־������� �ұ��ϰ� �� ����� �߻��� �����ϰ� �̸� ����� ä �� �ǹ��� �������� �ƴ��� ��쿡, �� �������� ������ ���� ����ħ�ؿ� ������ ������ ��ġ�� �ִ� ���̾ �� ������ ���������� �򰡵� ���� ���̶��, ������ ���� ���������� �����ϰ� ������������ ó���� �� �ְ�, ���⼭ �����ǹ��� ������ �ǹ��̾�� �ϹǷ� �ܼ��� ������ �Ǵ� �������� �ǹ��� ���Ե��� ������ �����ǹ��� ������ �ǹ��� �� �������̰� �ҹ����̰� ����� ���� �� �����̰� ����̰� �ҹ��ϹǷ�, ����, ��������, ���������� ���� ���� �����̰� ��Ÿ ���Ǽ����� ��Ģ�̳� <u>��ȸ��� Ȥ�� ������ �����ǹ��� ���Ǵ� ��쿡�� ������ �����ǹ��� �ִ�.</u>(����� 1996. 9. 6. ���� 95��2551 �ǰ�)</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- �������� E -->
                <!-- ������� S -->
                <div data-title="����Ϲ�" class="subj_nm s_21">
                    <div class="question">
                        <div class="tit">15. �̹� ������ ������ ���ݰ������� Ȯ���� �� ������ ����?</div>
                        <ol class="choices">
                            <li><span class="mark">��</span>�θ�(knurling)</li>
                            <li><span class="mark">��</span>����(boring)</li>
                            <li><span class="mark">��</span>������(slotting)</li>
                            <li><span class="mark">��</span>�ܸ�����(facing)</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 15��</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">�ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>����(boring)�� ���� ���� ��� �߿� �ϳ���, �帱������ �̹� �վ��� ������ ������ Ȯ���� �� ����ϴ� �������̴�.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="�����̷�" class="subj_nm s_22">
                    <div class="question">
                        <div class="tit">4.	������ �ִ� �� ������ ���̿� �ۿ��ϴ� ������¿� ���� �������� ���� ���� ����?</div>
                        <ol class="choices">
                            <li><span class="mark">��</span>�� ���Ϸ��� ���� ����Ѵ�.</li>
                            <li><span class="mark">��</span>���� ������ ������ ���� �ʴ´�.</li>
                            <li><span class="mark">��</span>�� ���� ������ �Ÿ� ������ �ݺ���Ѵ�.</li>
                            <li><span class="mark">��</span>�� ���ϸ� �����ϴ� ������ ���� �ۿ��Ѵ�.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 4��</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">�ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>���� ������ ������ �޴´�.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="ȭ�а����Ϲ�" class="subj_nm s_23">
                    <div class="question">
                        <div class="tit">3.	��ü�� �������� ������Ű�� ���� ��ġ�� �ƴ� ����?</div>
                        <ol class="choices">
                            <li><span class="mark">��</span>����(pump)</li>
                            <li><span class="mark">��</span>üũ ���(check valve)</li>
                            <li><span class="mark">��</span>��ǳ��(fan)</li>
                            <li><span class="mark">��</span>��ǳ��(blower)</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 3��</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">�ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>üũ ���� ���� ������ ��ġ�̸�, ��ü�� �������� ������Ű�� ���� ��ġ���� ����, ��ǳ��, ��ǳ��, ����� ���� �ִ�.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="����а���" class="subj_nm s_24">
                    <div class="question">
                        <div class="tit">1.	�۹� �� �۹���迡 ���� �������� ���� ���� ����?</div>
                        <ol class="choices">
                            <li><span class="mark">��</span>�۹��� �̿뼺�� �������� ���Ƽ� ������� �Ǵ� �Ĺ��� ���Ѵ�.</li>
                            <li><span class="mark">��</span>�۹����� �ΰ��� ������ �̿��Ͽ� �۹��� �⸣�� ��Ȯ�ϴ� ������ ���Ѵ�.</li>
                            <li><span class="mark">��</span>�۹����� �ڿ�ȯ���� ������ ũ�� �ް�, ���������� �������� ���ϴ�.</li>
                            <li><span class="mark">��</span>���ѳ���� ��������� Ȱ��ȭ�Ǳ� ������ ������ �����ϴ� ������� �ǽõǾ���.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 1��</span>
                                <span>��ġ�� ������</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">�ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>���ѳ���� ��������� Ȱ��ȭ�� <u>����</u>�� ������ �����ϴ� ������� �ǽõǾ���.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="����" class="subj_nm s_25">
                    <div class="question">
                        <div class="tit">3.	(��)�� (��)�� �� ������ �ٸ��� ������ ����?</div>
                        <div class="box">�ϳ��� �ɿ� �ϼ��� ������ �Բ� �ִ� ���� <span class="blnk">(��)</span>��� �ϸ�, �� ���� <span class="blnk">(��)</span>�� �ִ�.</div>
                        <ol class="choices">
                            <li><u>&ensp;(��)&ensp;</u>&emsp;&ensp;&emsp;<u>&ensp;(��)&ensp;</u></li>
                            <li><span class="mark">��</span>�ܼ�ȭ&emsp;&emsp;�ҳ���</li>
                            <li><span class="mark">��</span>�ܼ�ȭ&emsp;&emsp;������</li>
                            <li><span class="mark">��</span>�缺ȭ&emsp;&emsp;������</li>
                            <li><span class="mark">��</span>�缺ȭ&emsp;&emsp;�ҳ���</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 3��</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">�ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>�ϳ��� �ɿ� �ϼ��� ���� �� �ϳ��� �ִ� ���� �ܼ�ȭ, �ϼ��� ������ �Բ� �ִ� ���� �缺ȭ��� �Ѵ�. �ҳ����� �ܼ�ȭ, �������� �缺ȭ�̴�.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="���뿪�а���" class="subj_nm s_26">
                    <div class="question">
                        <div class="tit">5. �ڰ���(EI)�� ������ �� ĵƿ������ (a)�� (b)���� ������ B���� ó���� ���������� �ϴ� ���� P��? (��, �������� ������ �����Ѵ�)</div>
                        <div class="box"><img src="<%=img_main%>/m/2024/0708_exam/s_26_img1.jpg" alt="-"></div>
                        <div class="choices">
                            <img src="<%=img_main%>/m/2024/0708_exam/s_26_img2.jpg" alt="-">
                        </div>
                    </div>
                    <div class="answer_box">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 5��</span>
                                <span>������ ������</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">�ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span><img src="<%=img_main%>/m/2024/0708_exam/s_26_img3.jpg" alt="-"></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="�����ȹ" class="subj_nm s_27">
                    <div class="question">
                        <div class="tit">19. �ܿ���Ŀ� ���� �������� ���� ����?</div>
                        <ol class="choices">
                            <li><span class="mark">��</span>������ �ϴ� ���, ���ܿ��� �ܴܿ����� �ǿ��� �ʰ� ����ϰ� ������ �۴�.</li>
                            <li><span class="mark">��</span>���ܿ��� �ܴܿ����� ���ΰ�� ���濡 �����ϴ�.</li>
                            <li><span class="mark">��</span>�ܴܿ��� �ܽð� ����ϴ� ���溸�� ��ð� ����ϴ� ���濡 ȿ�����̴�.</li>
                            <li><span class="mark">��</span>���ܿ��� ���� �κ��� �ܿ� ��ȣ ó���� �����ϴ�.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 19��</span>
                                <span>������ ������</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">�ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span><span class="cr_red">��</span> ������ �ϴ� ���, <u>�ܴܿ��� ���ܿ�����</u> �ǿ��� �ʰ� ����ϰ� ������ �۴�.</li>
                                <li><span class="mark">��</span><span class="cr_red">��</span> ���ܿ��� �ܴܿ����� ���ΰ�� ���濡 <u>�Ҹ��ϴ�</u>.</li>
                                <li><span class="mark">��</span><span class="cr_blue">��</span> �ܴܿ��� �ܽð� ����ϴ� ���溸�� ��ð� ����ϴ� ���濡 ȿ�����̴�.</li>
                                <li><span class="mark">��</span><span class="cr_red">��</span> ���ܿ��� ���� �κ��� �ܿ� ��ȣ ó���� <u>�Ҹ��ϴ�</u>.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="������" class="subj_nm s_28">
                    <div class="question">
                        <div class="tit">2.	â���ÿ� �ִ� ����(���)�� �ƴ� ����?</div>
                        <ol class="choices">
                            <li><span class="mark">��</span>�����</li>
                            <li><span class="mark">��</span>�ַ���</li>
                            <li><span class="mark">��</span>�ݵ���</li>
                            <li><span class="mark">��</span>�ο���</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 2��</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">�ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>������� �溹�ÿ� �ִ� �����̴�.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="�糭������" class="subj_nm s_29">
                    <div class="question">
                        <div class="tit">3.	ȭ��߻� �� �ΰ��� ������ �ǳ��ൿ Ư���� ���� �������� ���� ���� ����?</div>
                        <ol class="choices">
                            <li><span class="mark">��</span>�ͼҺ��� �� ȭ�� �� ���ǽ��߿��� ��ҿ� ����ϴ� ���Ա�, ��η� ������ ����</li>
                            <li><span class="mark">��</span>�������� �� ȭ�� �� ����� �������� �þ߰� ������� ���� ������ �̵��Ϸ��� ����</li>
                            <li><span class="mark">��</span>��ȸ���� �� ȭ�� �� �Ǵܷ� ��ȭ�� �� ����� �����ڿ� ���� ������ �ൿ�� ��ü�� �̲����� ����</li>
                            <li><span class="mark">��</span>���Ǻ��� �� ȭ���� Ȯ�뿡 ���� ȭ��, ���⿡ ���� ���������� ��ȭ�� �ݴ� �������� �̵��Ϸ��� ����</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 3��</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">�ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>ȭ��߻� �� �ΰ��� ������ �ǳ��ൿ Ư�����δ� �ͼҺ���, ��������, ���Ǻ���, ��������, ��ȸ������ �ִ�. ��ȸ������ ���������� �ϰ� �ð�ݴ�������� ȸ���Ϸ��� ������ ���ϸ�, ȭ�� �� �Ǵܷ� ��ȭ�� �� ����� �����ڿ� ���� ������ �ൿ�� ��ü�� �̲����� ������ �������ɿ� ���� �����̴�.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="��ǻ���Ϲ�" class="subj_nm s_30">
                    <div class="question">
                        <div class="tit">1.	��ǻ�Ϳ��� ����ϴ� �������� ������ ũ�Ⱑ ���� �ͺ��� ū �� ������� �ٸ��� ������ ����?</div>
                        <ol class="choices">
                            <li><span class="mark">��</span>EB, GB, PB, TB</li>
                            <li><span class="mark">��</span>EB, PB, GB, TB</li>
                            <li><span class="mark">��</span>GB, TB, EB, PB</li>
                            <li><span class="mark">��</span>GB, TB, PB, EB</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 1��</span>
                                <span>������ ������</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">�ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>
                                    <table class="tbl tbl_3 pop_table">
                                        <colgroup>
                                            <col style="width: 32%">
                                            <col style="width: 68%">
                                        </colgroup>
                                        <thead>
                                            <tr>
                                                <th scope="col">����</th>
                                                <th scope="col">����</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1KB(Kilo Byte)</td>
                                                <td class="tal">2<sup>10</sup>byte  =  1024byte  ��  1000B</td>
                                            </tr>
                                            <tr>
                                                <td>1MB(Mega Byte)</td>
                                                <td class="tal">2<sup>10</sup>KB  =  2<sup>10</sup>��2<sup>10</sup>  =  2<sup>20</sup>byte ��1000KB</td>
                                            </tr>
                                            <tr>
                                                <td>1GB(Giga Byte)</td>
                                                <td class="tal">2<sup>10</sup>MB  =  2<sup>10</sup>��2<sup>20</sup>  =  2<sup>30</sup>byte ��1000MB</td>
                                            </tr>
                                            <tr>
                                                <td>1TB(Tera Byte)</td>
                                                <td class="tal">2<sup>10</sup>GB  =  2<sup>10</sup>��2<sup>30</sup>  =  2<sup>40</sup>byte  ��1000GB</td>
                                            </tr>
                                            <tr>
                                                <td>1PB(Peta Byte)</td>
                                                <td class="tal">2<sup>10</sup>TB  =  2<sup>10</sup>��2<sup>40</sup>  =  2<sup>50</sup>byte  ��1000TB</td>
                                            </tr>
                                            <tr>
                                                <td>1EB(Exa Byte)</td>
                                                <td class="tal">2<sup>10</sup>PB  =  2<sup>10</sup>��2<sup>50</sup>  =  2<sup>60</sup>byte  ��1000PB</td>
                                            </tr>
                                            <tr>
                                                <td>1ZB(Zetta Byte)</td>
                                                <td class="tal">2<sup>10</sup>EB  =  2<sup>10</sup>��2<sup>60</sup>  =  2<sup>70</sup>byte  ��1000EB</td>
                                            </tr>
                                            <tr>
                                                <td>1YB(Yotta Byte)</td>
                                                <td class="tal">2<sup>10</sup>ZB  =  2<sup>10</sup>��2<sup>70</sup>  =  2<sup>80</sup>byte  ��1000ZB</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="�����ͺ��̽���" class="subj_nm s_31">
                    <div class="question">
                        <div class="tit">5.	�信 ���� �������� ���� ���� ����?</div>
                        <ol class="choices">
                            <li><span class="mark">��</span>�並 �����ϴ� ���ǰ� ����Ǹ� ��� �����Ͱ� ������ ���� ��ġ�� ����ȴ�.</li>
                            <li><span class="mark">��</span>�ϳ��� ���̺�� ���� ���� ������ �並 ������ �� �ִ�.</li>
                            <li><span class="mark">��</span>��� �������� ������ ���������ν� ������ ������ �� �ִ�.</li>
                            <li><span class="mark">��</span>DROP ���� �̿��� �並 ������ �� �ִ�.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 5��</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">�ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>�並 �����ϴ� ���ǰ� ����Ǹ� �����Ͱ� ���������� ����Ǵ� ���� �ƴ϶� ���� ���� ������ ������ ���� ����� ������ ���̺�� ����� �����ϰ� �ȴ�.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="��Ʈ��ũ����" class="subj_nm s_32">
                    <div class="question">
                        <div class="tit">3.	�������� �����ϴ� ����?</div>
                        <div class="box">
                            <ul class="choices">
                                <li><span class="mark">��</span>�ܺ� ��ȭ���� ���� ��ȭ�� ���̿� �����Ѵ�.</li>
                                <li><span class="mark">��</span>�ܺο��� ������ �� �־�� �ϸ� ��ȣ�Ǿ�� �ϴ� �ý���(��: ȸ���� ������Ʈ, �̸��� ���� ��)�� ���⿡ ��ġ�Ѵ�.</li>
                            </ul>
                        </div>
                        <ol class="choices">
                            <li><span class="mark">��</span>NAT(Network Address Translation)</li>
                            <li><span class="mark">��</span>DMZ(Demilitarized Zone)</li>
                            <li><span class="mark">��</span>VPN(Virtual Private Network)</li>
                            <li><span class="mark">��</span>PAN(Personal Area Network)</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 3��</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">�ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>DMZ(Demilitarized Zone)�� �ܺ� ��ȭ���� ���� ��ȭ�� ���̿� ������ �߸� ������ ��ġ�Ǵ� ȣ��Ʈ �Ǵ� ��Ʈ��ũ��, �ܺ� ����ڰ� ���� ������ ���� �����ϴ� ���� �����Ѵ�.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="���ڰ��а���" class="subj_nm s_33">
                    <div class="question">
                        <div class="tit">12. pn ������ ���̾�� ���� �������� ���� ���� ����?</div>
                        <ol class="choices">
                            <li><span class="mark">��</span>������ ���̾�� ��� �����ϸ� �׺� ���п� �����Ѵ�.</li>
                            <li><span class="mark">��</span>������ ���̾�� �ΰ��Ǹ� ������ p���� n �������� �带 �� �ִ�.</li>
                            <li><span class="mark">��</span>������ ���̾�� �ΰ��Ǹ� pn ������ ���̿����� �پ���.</li>
                            <li><span class="mark">��</span>������ ���̾�� p�� ���ؿ� ��(��)�� ����, n�� ���ؿ� ��(��)�� ������ �ΰ��� �����̴�.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 12��</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">�ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>������ ���̾�� �ΰ��Ǹ� pn ������ ���̿����� <u>�þ��.</u></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="��輳��" class="subj_nm s_34">
                    <div class="question">
                        <div class="tit">5.	�� ���� �߽ɼ��� �������� ���� ���� ��쿡 ����� �� �ִ� Ŀ�ø����� ��� ����?</div>
                        <div class="box">
                            <ul class="choices">
                                <li><span class="mark">��.</span>���� Ŀ�ø�</li>
                                <li><span class="mark">��.</span>�ô� Ŀ�ø�</li>
                                <li><span class="mark">��.</span>�÷��� Ŀ�ø�</li>
                                <li><span class="mark">��.</span>���Ϲ��� Ŀ�ø�</li>
                            </ul>
                        </div>
                        <ol class="choices">
                            <li><span class="mark">��</span>��, ��</li>
                            <li><span class="mark">��</span>��, ��</li>
                            <li><span class="mark">��</span>��, ��</li>
                            <li><span class="mark">��</span>��, ��</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 5��</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">�ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>���� Ŀ�ø��� �÷��� Ŀ�ø��� �� ���� �߽ɼ��� ������ ���� �ִ� ��쿡 ����� �� �ִ� Ŀ�ø��̸�, �� ���� �߽ɼ��� �������� ���� ���� ��쿡 ����� �� �ִ� ���� �ô� Ŀ�ø��� ���Ϲ��� Ŀ�ø��̴�.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="������" class="subj_nm s_35">
                    <div class="question">
                        <div class="tit">20. ���º�ȯ�⿡ ���� �������� ���� ���� ����?</div>
                        <ol class="choices">
                            <li><span class="mark">��</span>�ι��ʹ� ������ ������ ��ȯ�ϴ� ���º�ȯ���̴�.</li>
                            <li><span class="mark">��</span>���������� �����Ϳ��� �Է����к��� ��������� ũ�� �� �� �ִ�.</li>
                            <li><span class="mark">��</span>������ ������ ��ȯ�ϴ� ���º�ȯ��� ���̿��� ������, ���� ���� ������ ���� �ִ�.</li>
                            <li><span class="mark">��</span>������ ������ ���� ��ȯ�ϸ鼭 ���а� ���ļ��� ���ÿ� �����ϴ� ���º�ȯ��� ����.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 20��</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">�ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>������ ������ ���� ��ȯ�ϸ鼭 ���а� ���ļ��� ���ÿ� �����ϴ� ���º�ȯ�Ⱑ �ִ�(VVVF ��)</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="����ȭ��" class="subj_nm s_36">
                    <div class="question">
                        <div class="tit">9.	���� �� ��ȭ �������?</div>
                        <ol class="choices">
                            <li><span class="mark">��</span>�÷���(oleic acid)</li>
                            <li><span class="mark">��</span>�����(linoleic acid)</li>
                            <li><span class="mark">��</span>�����(linolenic acid)</li>
                            <li><span class="mark">��</span>���׾Ƹ���(stearic acid)</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 9��</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">�ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>��ȭ ����꿡�� ��츣��, �̸���Ʈ��, �ȹ�Ʈ��, ���׾Ƹ��� ���� �ִ�.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="�Ŀ��۹�" class="subj_nm s_37">
                    <div class="question">
                        <div class="tit">3.	������ ����� Ư���� ���� �������� ���� ���� ����?</div>
                        <ol class="choices">
                            <li><span class="mark">��</span>������ ���Ѽ��� ���Ҽ��� ��ü�� ���ļ� ������ ���Ƽ� ������ �ʾ����� ������ �ִ�.</li>
                            <li><span class="mark">��</span>������ ǰ���� �Ϲ� ǰ������ ª�� �Ѱ������ ���� �µ����� ������ ������ �����Ǵ� Ư���� ���δ�.</li>
                            <li><span class="mark">��</span>Ű�� ���� ������ ǰ���� ���ռ� �ɷ��� ũ�� ���������� ���ϴ�.</li>
                            <li><span class="mark">��</span>���ȭ ��迡�� ���� ��� �ٿ��� ������ �����Ͽ� �ټ�Ȯ�� �����ϴ�.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 3��</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">�ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>���� ��� �ٿ��� �ټ�Ȯ�� ���� �ʴ�.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="�Ӿ��濵" class="subj_nm s_38">
                    <div class="question">
                        <div class="tit">8.	�츮���� �긲��ȹ�� ���� �������� ���� ����?</div>
                        <ol class="choices">
                            <li><span class="mark">��</span>��1�� ġ���ȭ 10���� ��ȹ�� 100�� ha�� ������ȹ�� 4�� �մ�� �޼��Ͽ���.</li>
                            <li><span class="mark">��</span>��2�� ġ���ȭ 10���� ��ȹ�� ��ȭ�� ���� ���� �����ڿ�ȭ ����� �����Ѵٴ� ��ǥ�� �����Ͽ���.</li>
                            <li><span class="mark">��</span>��3�� �긲�⺻��ȹ�� ���� ������ �긲�濵��� ����� ����� ���� ��췯�� ǳ��ο� ������� �����̶�� ��ǥ�� �����Ͽ���.</li>
                            <li><span class="mark">��</span>��4�� �긲�⺻��ȹ�� ��ġ �ִ� �����ڿ�, �ǰ��� ����ȯ��, ������ ������� ������ ���� �긲����� ���� ���ָ� ��ǥ�� �Ͽ���.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 8��</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">�ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span><span class="cr_blue">��</span> ��1�� ġ���ȭ 10���� ��ȹ�� 1973����� 10������ ��ȹ�Ǿ� �־�����, 4�� �մ�� 1978�⿡ �޼��Ǿ���.</li>
                                <li><span class="mark">��</span><span class="cr_red">��</span> ��ȭ�� ���� ���� �����ڿ�ȭ ����� �����Ѵٴ� ��ǥ�� ������ ���� ��3�� �긲�⺻��ȹ�̴�.</li>
                                <li><span class="mark">��</span><span class="cr_red">��</span> ���� ������ �긲�濵��� ����� ����� ���� ��췯�� ǳ��ο� ������� �����̶�� ��ǥ�� ������ ���� ��4�� �긲�⺻��ȹ�̴�.</li>
                                <li><span class="mark">��</span><span class="cr_red">��</span> ��ġ �ִ� �����ڿ�, �ǰ��� ����ȯ��, ������ ������� ������ ���� �긲����� ���� ���ָ� ��ǥ�� �� ���� ��5�� �긲�⺻��ȹ�̴�.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="��񼳰�" class="subj_nm s_39">
                    <div class="question">
                        <div class="tit">9.	��ũ��Ʈ�� ũ������ �������࿡ ���� �������� ���� ���� ����?</div>
                        <ol class="choices">
                            <li><span class="mark">��</span>������ ������ ���ӵ� ������ ���������� �������࿡ ���� ������ �߻��Ѵ�.</li>
                            <li><span class="mark">��</span>�����ø�Ʈ�� �����Ҽ��� ũ������ ���������� �����Ѵ�.</li>
                            <li><span class="mark">��</span>�������� �������� ���������� �����Ѵ�.</li>
                            <li><span class="mark">��</span>��ũ��Ʈ ���� �ʱ⿡�� ��ũ��Ʈ ������ ǥ�鿡�� ����������, ���ο��� ���������� �߻��Ѵ�.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 9��</span>
                                <span>������ ������</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">�ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>������ ���� �µ��� ���ƾ� ���������� �����Ѵ�.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="���౸��" class="subj_nm s_40">
                    <div class="question">
                        <div class="tit">5.	�������� ���迡 ���� �������� ���� ���� ����?</div>
                        <ol class="choices">
                            <li><span class="mark">��</span>������ ���� 300 mm �̻��̾�� �Ѵ�.</li>
                            <li><span class="mark">��</span>��ܽ� ������ ��θ��� �����Ͽ��� �ϸ�, ������ �Ϻθ��� 1/10�� �ʰ����� �ʴ� ���� ���ȴ�.</li>
                            <li><span class="mark">��</span>���������� ���������� ������ �������ݿ� �����ؼ��� �� �ȴ�.</li>
                            <li><span class="mark">��</span>������ ����, �������� ���� ä���� �Ǵ� ������� ���� ��������� ���� �ð��Ͽ��� �Ѵ�.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 5��</span>
                                <span>��â�� ������</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">�ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>�������� ���� ����, ������ �� ä���� �Ǵ� ��� �� ��������� ���� �ð��Ͽ��� �Ѵ�.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="�����ȹ�׼���" class="subj_nm s_41">
                    <div class="question">
                        <div class="tit">20.���긲��ȭ���޾翡 ���� �������� ������ ���� �� ���� (��), (��)�� �� ���� ���� ����?</div>
                        <div class="box">
                            <span class="blnk">(��)</span>��/�� ���� �����鼭 �ɽ��� �ܷ��ϴ� Ȱ���� �ϴ� ���̸�, <span class="blnk">(��)</span>��/�� ���� �����鼭 ������ �������ȭ�� ü���ϰ� ����� ���� �ǰ��� �����ϴ� Ȱ���� �ϴ� ��μ� ������ ������ ����ǵ��� ���� �ѷ��� ���� ������ ���� ���Ѵ�.
                        </div>
                        <ol class="choices">
                            <li>&emsp;<u>&emsp;&ensp;(��)&ensp;&emsp;</u>&emsp;&emsp;&ensp;&emsp;<u>&emsp;&ensp;(��)&ensp;&emsp;</u>&emsp;</li>
                            <li><span class="mark">��</span>����&emsp;&emsp;&emsp;&emsp;&emsp;�ѷ���</li>
                            <li><span class="mark">��</span>�ѷ���&emsp;&emsp;&emsp;&emsp;&emsp;Ʈ����</li>
                            <li><span class="mark">��</span>�긲��������&emsp;&emsp;&nbsp;Ž���</li>
                            <li><span class="mark">��</span>Ʈ����&emsp;&emsp;&emsp;&emsp;&emsp;�޾��ġ������</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 20��</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">�ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>
                                    ���긲��ȭ���޾翡 ���� ������ ��22����2 <br>
                                    ������ ������ ���� �� ȣ�� ����. <br>
                                    1. <u>����</u>: ���� �����鼭 �ɽ��� �ܷ��ϴ� Ȱ��(���� ����ꡱ�̶� �Ѵ�)�� �ϴ� �� <br>
                                    2. Ʈ��ŷ��: ���� �����鼭 ������ �������ȭ�� ü���ϰ� ����� ���� �ǰ��� �����ϴ� Ȱ��(���� ��Ʈ��ŷ���̶� �Ѵ�)�� �ϴ� ���� �� ���� �� <br>
                                    ��. <u>�ѷ���</u>: ������ ������ ����ǵ��� ���� �ѷ��� ���� ������ �� <br>
                                    ��. Ʈ����: ���ٱ⳪ ���ڶ��� ���� ��� �����Ͽ� ������ ������ ������� �ʴ� �� <br>
                                    3. �긲��������: �긲�������� �ϴ� �� <br>
                                    4. Ž���: �긲���¸� ü����н� �Ǵ� �����ϴ� Ȱ��(���� ��Ž�桱�̶� �Ѵ�)�� �ϴ� �� <br>
                                    5. �޾��ġ������: �긲���� �޾��ġ�� �� �ǰ������̳� ���� Ȱ���� �ϴ� ��
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="����������" class="subj_nm s_42">
                    <div class="question">
                        <div class="tit">9.	���ҹ�ü� ��ġ �� ������ ���� ���� ����ɡ��� ��ȭ���� �ش����� �ʴ� ����?</div>
                        <ol class="choices">
                            <li><span class="mark">��</span>��ȭ�ⱸ</li>
                            <li><span class="mark">��</span>ȭ��˸�����</li>
                            <li><span class="mark">��</span>�ڵ���ȭ��ġ</li>
                            <li><span class="mark">��</span>������ȭ������</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 9��</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">�ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>���ҹ�ü� ��ġ �� ������ ���� ���� ����ɡ� ��ǥ 1�� ������, ��ȭ���񿡴� ��ȭ�ⱸ, �ڵ���ȭ��ġ, ������ȭ������, ������Ŭ�������, ���й����ȭ����, ���ܼ�ȭ������ ������, <u>ȭ��˸������ ��ȭ���� �ƴ� �溸����</u>�� �ش��Ѵ�.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="������ȣ��" class="subj_nm s_43">
                    <div class="question">
                        <div class="tit">3.	�������� �����ϴ� ���� �����?</div>
                        <div class="box">
                            <ul class="choices">
                                <li><span class="mark">��</span>����� �ɸ��� �̿��Ͽ� ���� ����� ����ȭ��Ű�� ������ ��� ���� ���</li>
                                <li><span class="mark">��</span>�ŷ��� �� �ִ� ������� �����Ͽ� �ٸ� ����� ������ �����ϴ� ���� ���</li>
                            </ul>
                        </div>
                        <ol class="choices">
                            <li><span class="mark">��</span>������ ����(Replay Attack)</li>
                            <li><span class="mark">��</span>������ ���� ����(Brute-Force Attack)</li>
                            <li><span class="mark">��</span>��ȸ���� ����(Social Engineering Attack)</li>
                            <li><span class="mark">��</span>�߰��� ����(Man-in-the-Middle Attack)</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 3��</span>
                                <span>������ ������</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">�ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>
                                    ������ ����(repaly) <br>
                                    �� �����ڰ� ����� ������ ����ä�� ����ϰ� ���߿� ������ ������ �ٽ� �����Ͽ� �����ϴ� ���̴�. <br>
                                    �� �����͸� ȹ���Ͽ� �� �ΰ��� ȿ���� ��� ���Ͽ� �������Ѵ�. <br>
                                    �� ������ ���Ǵ� ���������� ���ϰų� ����� �������� ���� ���, �����ڰ� �߰����� ����� ����ä��  ���� ��û�� ����ϰ� ���߿� ������ ��û�� �������Ͽ� ������ ��ȸ�ϴ� �� ����� �� �ִ�. <br>
                                    �� �����ڰ� ���� ID�� ���� ��ū�� ���� ���� ��Ҹ� ����ä�� �ٽ� ��������ν� ������ ������ �� �ִ�. �̸� ���� �����ڴ� ������� ������ Ż���ϰų� �������� �ý��ۿ� ������ �� �ִ�.
                                </li>
                                <li><span class="mark">��</span>
                                    ������ ���� ����(Brute-Force Attack) <br>
                                    �� �����ڰ� ����� �̸��� ��й�ȣ�� �������� �����ϰų� ������ ���ǵ� ��Ͽ��� �����Ͽ� �ý��ۿ� ���������� �õ��ϴ� �����̴�. <br>
                                    �� �̷��� ������ �Ϲ������� �ڵ�ȭ�� ��ũ��Ʈ�� ���α׷��� ����Ͽ� �뷮�� ���� �õ��� �õ��ϹǷ� ���� ���� �����Ͱ� ������ ó���� �� �ִ�.
                                </li>
                                <li><span class="mark">��</span>
                                    ��ȸ ������(Social Engineering)�� ���� <br>
                                    �� ��ȸ�� ������ ����� �κ��� �̿�Ǵ� �������� �ΰ����谡 �ǿ�Ǿ� �н����峪 �߿� ������ ����ǰų� �ı�, �����Ǵ� �����̴�. <br>
                                    �� �Ͼ��� ������� �߿��� ������ ����ǰų� ���ѱ�� ����̴�. <br>
                                    �� �ҹ����� ������ �������� ������ ����ȴ�. <br>
                                    �� ���� ���ο� �����ϴ� ���� �����̿��� �̿���Ѵ�. <br>
                                    �� �ΰ� ����(�Խ���, ���ڿ���)�� �̿�Ǿ� �߿� ������ ����ȴ�. 
                                </li>
                                <li><span class="mark">��</span>
                                    �߰��� ����(Man-in-the-Middle Attack) <br>
                                    �� ����ϴ� �� ����� ���̿� ��3�ڰ� ������ ������ ����ä�ų� �����ϴ� �����̴�. <br>
                                    �� �� ������ ���� ��Ʈ��ũ ����� ����ä�� �ش� ����� �����Ͽ� �����ڰ� ���ϴ� ������ Ż���ϰų� �����ϴ� �� ���ȴ�. <br>
                                    �� ���� �������� ��Ʈ��ũ���� �����ڰ� ��Ʈ��ũ�� �����Ͽ� �������� �����͸� ����ä�ų� ������ �� �ִ�. <br>
                                    �� ���õ� ��ġ: �����ڰ� �������� ��ǻ�ͳ� ����� ��ġ�� �Ǽ� ����Ʈ��� ��ġ�Ͽ� ��Ʈ��ũ ����� ����ä�� �����Ѵ�.
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="�˰���" class="subj_nm s_44">
                    <div class="question">
                        <div class="tit">17. �� ���� �� �ð����⵵�� �־��� ��찡 �Ǵ� ������ ���� ������ ����?</div>
                        <ol class="choices">
                            <li><span class="mark">��</span>�ǹ�(pivot)�� �ִ밪���� ���Ѵ�.</li>
                            <li><span class="mark">��</span>�ǹ��� ����(random)�ϰ� ���Ѵ�.</li>
                            <li><span class="mark">��</span>�ǹ��� �߰���(median)���� ���Ѵ�.</li>
                            <li><span class="mark">��</span>�ǹ��� ��Ƽ��(partition)�� �߰��� ��ġ�� ������ ���Ѵ�.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 17��</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">�ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>�ǹ�(pivot)�� �ִ밪���� ���ϸ� �ұ����� ��Ƽ�Ŵ��� �Ͼ�Ƿ� �����ϴ�.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="�����ý��ۺ���" class="subj_nm s_45">
                    <div class="question">
                        <div class="tit">17. ������ bash shell�� ȯ�� ������ ���� �������� ���� ����?</div>
                        <ol class="choices">
                            <li><span class="mark">��</span>TERM�� ���� ȣ��Ʈ �̸��� ��Ÿ����.</li>
                            <li><span class="mark">��</span>SHELL�� ���� ���� ����� �� ���� ���� �ǹ��Ѵ�.</li>
                            <li><span class="mark">��</span>PATH�� ����� Ž���� ��θ� �ǹ��Ѵ�.</li>
                            <li><span class="mark">��</span>PWD�� ���� ��� ���� �н������� ��ġ�� ��Ÿ����.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 17��</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">�ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span><span class="cr_red">��</span> TERM�� �α��� �͹̳� ������ �ǹ��Ѵ�.</li>
                                <li><span class="mark">��</span><span class="cr_red">��</span> SHELL�� �α��� ���� �ǹ��Ѵ�.</li>
                                <li><span class="mark">��</span><span class="cr_blue">��</span> PATH�� ����� Ž���� ��θ� �ǹ��Ѵ�.</li>
                                <li><span class="mark">��</span><span class="cr_red">��</span> PWD�� ���� �۾� ���͸��� �ǹ��Ѵ�.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="�������а���" class="subj_nm s_46">
                    <div class="question">
                        <div class="tit">3.	���� ���� �� �� ���� ū ����?</div>
                        <ol class="choices">
                            <li><span class="mark">��</span>10 [W]</li>
                            <li><span class="mark">��</span>1,000 [mW]</li>
                            <li><span class="mark">��</span>10 [dBm]</li>
                            <li><span class="mark">��</span>0 [dBW]</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">���� �� �ؼ�</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 ������ 9�� 3��</span>
                            </div>
                            <div class="correct">���� ��</div>
                            <div class="s_tit">�ؼ�</div>
                            <ul class="choices">
                                <li><span class="mark">��</span>���� 1000 [mW]�� ���� 0 [dBW]�� 1 [W]�̸�, ���� 10 [dBm]�� 10 [mW]�̹Ƿ� ���� ū ���� ���� 10 [W]�̴�.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- ������� E -->

            </div>
        </div>
        <button onclick="" class="btnClose">�˾� �ݱ�</button>
        </div>
    </div>
    <!--  //���ǰ������� ���� �̹��� �˾� -->

</div><!-- //eventWrap -->
<!-- �ް������� 9�� �հݴ�� �����н� ������ E -->`;

const css = `/* setting */
.show-1400 {display: none;}
.cr_red {color: #f00;}
.cr_blue {color: #00f;}

.evSection {padding: 100px 0 150px; background: #fffde6;}
.evSection .con_tit h5 {font-weight: 900; font-size: 38px;}
.title_default {padding-bottom: 40px; border-bottom: 2px solid #000; margin-bottom: 50px;}
.title_default h4 {font-weight: 900; font-size: 34px;}

/* �⺻ �� */
.evSection .tab_base.tab_default {display: flex; justify-content: center; align-items: center; gap: 20px; margin: 0 auto 30px;}
.evSection .tab_base.tab_default li {width: 33%; max-width: 220px;}
.evSection .tab_base.tab_default li a {display: block; font-size: 18px; color: #a48ab3; background: #e8d1ff; padding: 17px 0; border-radius: 30px;}
.evSection .tab_base.tab_default li.on a {font-weight: 500; color: #fff; background: #c081ff;}

/* ���� �� */
.evSection .tab_base.tab_sub{display:flex;justify-content:center;gap:8px;flex-wrap:wrap;}
.evSection .tab_base.tab_sub li a{font-size:16px;color:#bbb99e;border:1px solid #bbb99e;display:inline-block;padding:6px 20px;border-radius:20px;}
.evSection .tab_base.tab_sub li.on a{color:#c081ff;font-weight:700;border-color:#c081ff;}
.evSection .panel_base.panel_sub{margin-top:40px;}

/* ���� �� */
.result_tab {border-bottom: 1px solid #000; margin-bottom: 20px;}
.result_tab ul {display: flex; justify-content: flex-start; align-items: center;}
.result_tab ul li {width: 130px; max-width: 30%;}
.result_tab ul li a {display: block; font-size: 16px; color: #8a8a8a; border: 1px solid #ddd; border-bottom: none; border-radius: 20px 20px 0 0; padding: 18px 0;}
.result_tab ul li + li a {border-left: none;}
.result_tab ul li.on a {font-weight: 700; color: #fff; background: #000}

/* ������ �ڽ� */
.box_default {background: #fff; border: 1px solid #ddd; border-radius: 20px; padding: 38px 40px; font-size: 16px;}
.box_default + .box_default {margin-top: 50px;}
.box_default .box_title {font-weight: 700; font-size: 20px; text-align: left; margin-bottom: 20px;}
.box_default .box_title span {font-size: 13px; vertical-align: middle;}

.box_default.apply_noti {text-align: left;}
.box_default.apply_noti li {position: relative; font-weight: 400; font-size: 16px; padding-left: 15px;}
.box_default.apply_noti li .mark {position: absolute; top: 0; left: 0;}
.box_default.apply_noti li b {color: #c081ff;}

/* ���� ���� ���� */
.info_wrap {font-size: 16px; color: #333;}
.info_wrap .info.flex {display: flex; justify-content: flex-start; align-items: center;}
.info_wrap .info + .info {margin-top: 15px;}
.info_wrap .info .info_title {font-weight: 700; text-align: left;}
.info_wrap .info.flex .info_title::after {content: ''; display: inline-block; width: 1px; height: 14px; background: #999; margin: 0 10px; vertical-align: middle;}
.info_wrap .info .radio_list {display: flex; justify-content: flex-start; align-items: center; gap: 14px;}
.info_wrap .info .radio_list li label {cursor: pointer;}
.info_wrap .info .radio_list li label input[type=radio] {cursor: pointer;}
.info_wrap .info .info_table {color: #111; border-top: 2px solid #e9e4ab; border-bottom: 2px solid #e9e4ab; margin-top: 10px;}
.info_wrap .info .info_table th {background: #fffcd7; border: 1px solid #ddd; padding: 14px 10px;}
.info_wrap .info .info_table td {text-align: left; border: 1px solid #ddd; padding: 14px 10px;}
.info_wrap .info .info_table th:first-child {border-left: none;}
.info_wrap .info .info_table td:last-child {border-right: none;}
.info_wrap .info .info_table td .select_box {margin-right: 40px;}
.info_wrap .info .info_table td .select_box select {width: 100%; height: 29px; font-family: var(--font); font-size: 16px; color: #888; padding: 0 8px; border: 1px solid #ddd; border-radius: 0; appearance: none; cursor: pointer; background-color: #fff; background-image: url(https://image.megagong.net/m/2024/0708_exam/select_arrow.png); background-repeat: no-repeat; background-position: 100% 0;}
.info_wrap .info .info_table td.col_3 .flex {display: flex; justify-content: flex-start; align-items: center;}
.info_wrap .info .info_table td.col_3 .select_box {display: flex; justify-content: flex-start; align-items: center; gap: 10px; text-wrap: nowrap; margin-right: 18px;}
.info_wrap .info .info_table td.col_3 .select_box select {width: 128px;}
.info_btn {display: flex; justify-content: center; align-items: center; gap: 20px; margin: 40px auto;}
.info_btn a {display: block; width: 290px; max-width: 48%; font-weight: 500; font-size: 18px; color: #fff; background: #000; padding: 17px 0; border-radius: 10px;}
.info_btn a.apply {background: #c081ff;}
/* ���� �� */
.info_wrap.type_2 .info .info_table th {padding: 9px 10px;}
.info_wrap.type_2 .info .info_table td {padding: 9px 10px;}
.info_wrap.type_2 .info .info_table td.col_3 .flex span + span::before {content: ''; display: inline-block;; width: 1px; height: 14px; background: #c3c3c3; margin: 0 7px; vertical-align: middle;}

/* �� ���� �˾� */
.tiny_pop {text-align: left; font-size: 12px; color: #888; margin-top: 10px;}
.tiny_pop a {font-size: 11px; color: #fff; background: #c081ff; border-radius: 3px; padding: 0 5px; margin-left: 5px; text-wrap: nowrap;}
.interest_pop {text-align: center;}


/* ���� */
.bnr_default a {position: relative; display: block; font-weight: 700; font-size: 20px; letter-spacing: -0.04em; padding-top: 21px; padding-bottom: 21px; border-radius: 10px;}
.bnr_default.series {margin-bottom: 30px;}
.bnr_default.series a {font-size: 24px; color: #fff; background: #63c6ff; padding: 30px 0; border-radius: 20px;}
.bnr_default.series a::before,
.bnr_default.series a::after {content: ''; position: absolute; bottom: 0;}
.bnr_default.series a::before {left: 55px; width: 114px; height: 74px; background-image: url(https://image.megagong.net/m/2024/0708_exam/bnr_series_bg1.png); background-size: contain; background-repeat: no-repeat; background-position: 50% 100%;}
.bnr_default.series a::after {right: 40px; width: 128px; height: 76px; background-image: url(https://image.megagong.net/m/2024/0708_exam/bnr_series_bg2.png); background-size: contain; background-repeat: no-repeat; background-position: 50% 100%;}
.bnr_default.series a span {color: #111;}
.bnr_default.series a .arrow {display: inline-block; width: 10px; height: 16px; background: url(https://image.megagong.net/m/2024/0708_exam/bnr_arrow_wht.png) no-repeat; background-size: contain; vertical-align: middle;}
.bnr_default.quizbank {margin-top: 30px;}
.bnr_default.quizbank a {background: #e0f3f8; padding-left: 90px; text-align: left;}
.bnr_default.quizbank a::after {content: ''; position: absolute; width: 142px; height: 70px; bottom: 0; right: 90px; background-image: url(https://image.megagong.net/m/2024/0708_exam/bnr_quizbank_bg.png); background-size: contain; background-repeat: no-repeat; background-position: 50% 100%;}
.bnr_default.quizbank a span.cr_1 {color: #c081ff;}
.bnr_default.quizbank a span.cr_2 {color: #63c6ff;}
.bnr_default.quizbank a .arrow {display: inline-block; width: 7px; height: 16px; background: url(https://image.megagong.net/m/2024/0708_exam/bnr_arrow_blk.png) no-repeat; background-size: contain; vertical-align: middle;}
.bnr_default.pass_opinion {margin-top: 30px;}
.bnr_default.pass_opinion a {background: #fae9e0;}
.bnr_default.pass_opinion a::before,
.bnr_default.pass_opinion a::after {content: ''; position: absolute; bottom: 0;}
.bnr_default.pass_opinion a::before {left: 30px; width: 105px; height: 59px; background-image: url(https://image.megagong.net/m/2024/0708_exam/bnr_pass_opinion_bg1.png); background-size: contain; background-repeat: no-repeat; background-position: 50% 100%;}
.bnr_default.pass_opinion a::after {right: 36px; width: 117px; height: 60px; background-image: url(https://image.megagong.net/m/2024/0708_exam/bnr_pass_opinion_bg2.png); background-size: contain; background-repeat: no-repeat; background-position: 50% 100%;}
.bnr_default.pass_opinion a span.cr_1 {color: #63c6ff;}
.bnr_default.pass_opinion a span.cr_2 {color: #ff737a;}
.bnr_default.pass_opinion a .arrow {display: inline-block; width: 7px; height: 16px; background: url(https://image.megagong.net/m/2024/0708_exam/bnr_arrow_blk.png) no-repeat; background-size: contain; vertical-align: middle;}
.bnr_default.sub_guide a {background: #e0f3f8; border-radius: 29px; padding: 15px 0; padding-left: 120px;}
.bnr_default.sub_guide a::before {content: ''; position: absolute; width: 115px; height: 68px; bottom: 0; left: 260px; background-image: url(https://image.megagong.net/m/2024/0708_exam/bnr_sub_guide_bg.png); background-size: contain; background-repeat: no-repeat; background-position: 50% 100%;}
.bnr_default.sub_guide a span {color: #63c6ff;}
.bnr_default.price a {background: #e0f3f8; border-radius: 29px; padding: 15px 0; padding-left: 160px;}
.bnr_default.price a::before {content: ''; position: absolute; width: 134px; height: 68px; bottom: 0; left: 250px; background-image: url(https://image.megagong.net/m/2024/0708_exam/bnr_price_bg.png); background-size: contain; background-repeat: no-repeat; background-position: 50% 100%;}
.bnr_default.price a span {color: #63c6ff;}
.bnr_default.price + .tiny_noti {color: #888; margin-top: 10px; text-align: right;}

/* �⺻ ���̺� */
.table_default {font-size: 16px;}
.table_default table {background: #fff;}
.table_default tr th,
.table_default tr td {padding: 10px 5px; border: 1px solid #ddd; line-height: 1.2;}
.table_default tr th:first-child,
.table_default tr td:first-child {border-left: none;}
.table_default tr th:last-child,
.table_default tr td:last-child {border-right: none;}

.table_default .tbl_mo {display: none;}
.table_default .cr_1 {color: #fff; background: #6d1ac1;}
.table_default .cr_2 {background: #fffcd7;}
.table_default .tal {text-align: left;}

.table_default .tiny_noti {color: #888; margin-top: 10px; text-align: left;}
.table_default .tiny_noti a {font-size: 11px; color: #fff; background: #c081ff; border-radius: 3px; padding: 0 5px; margin-left: 5px; text-wrap: nowrap;}

/* S: left.asp */
.lnb_bar {position: absolute; top: 140px; left: 50%; margin-left: -640px; transform: translateX(-100%); z-index: 1;}
.lnb_bar.pofixed {position: fixed;}
.lnb_bar .depth1 {background: #fff; border: 1px solid #ddd; border-radius: 15px;}
.lnb_bar .depth1 > li {position: relative;}
.lnb_bar .depth1 > li + li {border-top: 1px solid #ddd;}
.lnb_bar .depth1 > li > a {position: relative; width: 230px; display: flex; justify-content: flex-start; align-items: center; gap: 14px; padding: 22px 27px;}
.lnb_bar .depth1 > li > a strong {font-size: 18px; line-height: 1.2; text-align: left;}
.lnb_bar .depth1 > li.on > a {color: #c081ff;}
/* lnb - depth2 */
.lnb_bar .depth1 > li.accordion > a.on {color: #c081ff;}
.lnb_bar .depth1 > li.accordion > a::before {content: ''; position: absolute; top: calc(50% - 17px/2); right: 30px; width: 17px; height: 11px; background: url(https://image.megagong.net/m/2024/0708_exam/left_arrow.png) no-repeat; transition: transform 0.3s;}
.lnb_bar .depth1 > li.accordion.on > a::before {transform: rotateX(180deg);}
.lnb_bar .depth1 > li.accordion.on > a.hideDepth::before {transform: rotateX(0deg);}
.lnb_bar .depth1 .depth2 {display: none; padding-bottom: 27px; margin-top: -10px;}
.lnb_bar .depth1 .on .depth2 {display: block;}
.lnb_bar .depth1 .depth2 li a {display: block; font-size: 16px; color: #888; padding: 0 25px; text-align: left;}
.lnb_bar .depth1 .depth2 li a > div {position: relative; width: fit-content; margin-left: 10px; border-bottom: 1px solid transparent;}
.lnb_bar .depth1 .depth2 li a .mark {position: absolute; top: calc(50% - 2.5px); left: -10px; width: 5px; height: 5px; background: #888; border-radius: 50%;}
.lnb_bar .depth1 .depth2 li:hover a,
.lnb_bar .depth1 .depth2 li.on a {color: #c081ff;}
.lnb_bar .depth1 .depth2 li:hover a > div,
.lnb_bar .depth1 .depth2 li.on a > div {border-bottom-color: #c081ff;}
.lnb_bar .depth1 .depth2 li:hover a .mark,
.lnb_bar .depth1 .depth2 li.on a .mark {background: #c081ff;}
.lnb_bar .depth1 .depth2 li:hover ~ li.on a {color: #888;}
.lnb_bar .depth1 .depth2 li:hover ~ li.on a > div {border-bottom-color: transparent;}
.lnb_bar .depth1 .depth2 li:hover ~ li.on a .mark {background: #888;}
/* E: left.asp */

/* S: �����򰡶�? - main.asp */
/* con_top */
.con_top {padding: 140px 0 150px; background: url(https://image.megagong.net/m/2024/0708_exam/main_bg.jpg) no-repeat; background-size: auto 100%;}
.con_top h3 {margin: 0 auto 60px;}
.con_top .visual_slider {margin: 0 -80px 45px -70px;}
.con_top .visual_slider .item {position: relative;}
.con_top .visual_slider .item .arrow {position: absolute; width: fit-content; max-width: 40%; top: 53%; right: 0;}
.con_top .visual_slider .item .arrow::before {content: ''; position: absolute; width: 0; height: 100%; top: 0; background: url(https://img.megagong.net/m/2024/0708_exam/main_arrow.png); background-size: auto 100%; animation: aniWidth 2s linear infinite; animation-delay: 2s; filter: brightness(1.1);}
.con_top .link_btn {display: block; width: 80%; max-width: 340px; font-weight: 900; font-size: 32px; color: #fff; background: #c081ff; padding: 22px 0; border-radius: 45px; margin: 0 auto;}
.con_top .link_btn.result {background: #6d1ac1;}
.con_top .slick-dots {display: flex; justify-content: center; align-items: center; gap: 12px;}
.con_top .slick-dots li button {font-size: 0; width: clamp(10px, 2.4vmin, 18px); height: clamp(10px, 2.4vmin, 18px); background: #fff; border: 1px solid #000; border-radius: 50%;}
.con_top .slick-dots li.slick-active button {background: #000;}

@keyframes aniWidth {
    0% {width: 0; left: 0; background-position: 0 50%;}
    25% {width: 100%; background-position: 0 50%;}
    50% {width: 100%; left: auto; right: 0; background-position: 100% 50%;}
    100% {width: 0; right: 0;  background-position: 100% 50%;}
}

/* evCon1 */
.evCon1 {padding: 150px 0;}
.evCon1 h4 {font-weight: 900; font-size: 68px; color: #6d1ac1; margin-bottom: 80px;}
.evCon1 .step_wrap .step + .step {margin-top: 140px;}
.evCon1 .step_wrap .con_tit {margin-bottom: 60px;}
.evCon1 .step_wrap .con_tit .label {display: block; position: relative; z-index: 0; margin-bottom: 30px;}
.evCon1 .step_wrap .con_tit .label::before {content: ''; position: absolute; width: 100%; height: 1px; top: 50%; left: 0; background: #c081ff; z-index: -1;}
.evCon1 .step_wrap .con_tit .label span {display: inline-block; width: 130px; font-style: normal; font-size: 21px; color: #fff; background: #c081ff; border-radius: 18px; padding: 3px 0;}
.evCon1 .step_wrap .con_tit .sub_tit {font-weight: 400; font-size: 21px; color: #666; margin-top: 10px;}
.evCon1 .step_wrap .con_tit .sub_tit span {font-weight: 700; color: #c081ff;}
.evCon1 .step_wrap .step .content {position: relative; z-index: 0;}
.evCon1 .step_wrap .step .content .badge {position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); width: 150px; height: 150px; border-radius: 50%; display: flex; justify-content: center; align-items: center; font-weight: 700; font-size: 18px; line-height: 1.2; color: #d7afff; background: rgba(0, 0, 0, 0.9); z-index: 1;}
.evCon1 .step_wrap .step_slider .slick-track {display: flex !important; align-items: center;}
.evCon1 .step_wrap .step_slider .item {background: #fff; border-radius: 20px; border: 1px solid #e5deed; overflow: hidden;}
.evCon1 .step_wrap .step_slider img {margin: 0 auto;}
.evCon1 .step_wrap .step_slider .slick-arrow {position: absolute; width: 50px; height: 96px; top: 50%; transform: translateY(-50%); font-size: 0; z-index: 1;}
.evCon1 .step_wrap .step_slider .slick-prev {left: -90px; background: url(https://image.megagong.net/m/2024/0708_exam/con1_prev.png) no-repeat;}
.evCon1 .step_wrap .step_slider .slick-next {right: -90px; background: url(https://image.megagong.net/m/2024/0708_exam/con1_next.png) no-repeat;}
.evCon1 .step_wrap .step_slider .slick-dots {display: flex; justify-content: center; align-items: center; gap: 12px;}
.evCon1 .step_wrap .step_slider .slick-dots li button {font-size: 0; width: clamp(10px, 2.4vmin, 18px); height: clamp(10px, 2.4vmin, 18px); background: #fffcd7; border: 1px solid #6d1ac1; border-radius: 50%;}
.evCon1 .step_wrap .step_slider .slick-dots li.slick-active button {background: #6d1ac1;}
/* E: �����򰡶�? - main.asp */

/* S: ���� ���� ���̵� - series_guide.asp */
.evSeries .box_default b {color: #c081ff;}
.evSeries .tip_title {font-weight: 700; font-size: 24px; text-align: left; margin: 80px auto 20px;}
.evSeries .tip_title span {font-size: 18px;}
.evSeries .tip_title::before {content: ''; display: inline-block; width: 58px; height: 58px; vertical-align: middle; margin-right: 5px; background-image: url(https://image.megagong.net/m/2024/0708_exam/series_tip_icon.png); background-repeat: no-repeat; background-size: auto 100%;}
.evSeries .tip_title.tip1::before {background-position: 0 0;}
.evSeries .tip_title.tip2::before {background-position: -58px 0;}
.evSeries .tip_title.tip3::before {background-position: -116px 0;}
.evSeries .table_default {margin-top: 50px;}
.evSeries .msg {font-size: 18px; margin-top: 20px;}
.evSeries .msg b {color: #c081ff;}

.series_cont {display: flex; flex-wrap: wrap; justify-content: center; align-items: center; gap: 40px; background: url(https://image.megagong.net/m/2024/0708_exam/series_arrow.png) no-repeat 50% 50%;}
.series_cont .item {width: 450px; height: 450px; color: #111; background: #fff; border-radius: 50%; border: 1px solid #ddd; padding: 100px 0;}
.series_cont .item_title {width: fit-content; font-weight: 900; font-size: 26px; color: #c081ff; padding-bottom: 5px; border-bottom: 2px solid #c081ff; margin: 0 auto 20px;}  
.series_cont .item dl dt {font-weight: 900; font-size: 20px; margin-bottom: 20px;} 
.series_cont .item dl dt span {display: block; font-weight: 400; font-size: 16px; color: #555;}
.series_cont .item dl dd {font-size: 16px;} 
.series_cont .item dl dd ul {display: flex; justify-content: center; align-items: center; gap: 5px 10px; flex-wrap: wrap;} 
.series_cont .item dl dd ul::before {content: ''; display: block; width: 100%; height: 0; order: 2;}
.series_cont .item dl dd ul li:nth-child(n + 4) {order: 3;} 
.series_cont .item dl dd ul li a {display: block; font-size: 19px; color: #a48ab3; border: 1px solid #a48ab3; border-radius: 18px; padding: 2px 20px;} 
.series_cont .item dl dd ul li:hover a {font-weight: 700; color: #fff; background: #6d1ac1; border-color: #6d1ac1;}
/* E: ���� ���� ���̵� - series_guide.asp */

/* S: ���� Ư¡ �� �н��� - subject_guide.asp */
.subject_intro_wrap .tec_info{display:flex;justify-content:center;align-items:center;gap:0 10px;}
.subject_intro_wrap .tec_info dt{width:230px;height:230px;overflow:hidden;}
.subject_intro_wrap .tec_info dd{text-align:left;}
.subject_intro_wrap .tec_info dd .slogan{font-size:18px;color:#555555;display:block;}
.subject_intro_wrap .tec_info dd .home{display:flex;font-size:28px;font-weight:bold;align-items:center;gap:0 6px;}
.subject_intro_wrap .tec_info dd .home span{display:flex;font-size:13px;font-weight:900;color:#fff;background-color:#000;border-radius:50%;width:24px;height:24px;align-items:center;justify-content:center;}
.subject_intro_wrap .tec_info dd .btns_wrap{display:flex;gap:0 5px;margin-top:20px;display:none;}
.subject_intro_wrap .tec_info dd .btns_wrap .btn_base{display:inline-block;font-size:13px;color:#fff;background-color:#333;padding:4.5px 14px;border-radius:5px;min-width:110px;text-align:center;}
.subject_info_list > li{padding:40px;background-color:#fff;border:1px solid #ddd;border-radius:15px;margin-top:20px;text-align: justify; font-size:16px;color:#555;font-weight:400;}
.subject_info_list > li:first-child{margin-top:0;}
.subject_info_list > li .num{font-weight:900;color:#111;font-size:18px;margin-bottom:20px;display:block;}
.subject_info_list > li .con{margin-top:10px;}
.subject_info_list > li .con:first-child{margin-top:0;}
.subject_info_list > li .s-tit{font-weight:900;margin-top:20px;}
.subject_info_list > li .s-tit,
.subject_info_list > li .con strong.black{color:#000;}
.subject_info_list > li .s-tit.primary,
.subject_info_list > li .con strong{color:#c081ff;}
.subject_info_list > li .con strong span{font-weight:400;color:#000;}
.subject_info_list > li .con li{padding-left:10px;text-indent:-10px;}
.subject_info_list > li .con.type-2 li{margin-top:20px;padding-left:20px;text-indent:-20px;}
.subject_info_list > li .con.type-2 li:first-child{margin-top:0;}
.subject_info_list > li .con.type-2 li strong{display:block;margin-bottom:10px;}
.subject_info_list > li .tbl_subject{table-layout:fixed;width:100%;}
.subject_info_list > li .tbl_subject th,.subject_info_list > li .tbl_subject td{padding:10px;text-align:center;border-bottom:1px solid #dddddd;border-left:1px solid #dddddd;font-size:16px;}
.subject_info_list > li .tbl_subject thead tr:first-child th{border-top:1px solid #ddd;}
.subject_info_list > li .tbl_subject th:last-child,
.subject_info_list > li .tbl_subject td:last-child{border-right:1px solid #ddd;}
.subject_info_list > li .tbl_subject th.bl{border-left:1px solid #ddd;}
.subject_info_list > li .tbl_subject th{background-color:#fffcd7;font-weight:700;}
.subject_info_list > li .tbl_subject td{font-weight:400;color:#111;}
.subject_info_list > li .tbl_subject.type-2 th, .subject_info_list > li .tbl_subject.type-2 td{text-align:left;}
.subject_info_list > li .tbl_subject.type-2 tr:first-child th,
.subject_info_list > li .tbl_subject.type-2 tr:first-child td{border-top:1px solid #ddd;}
.subject_info_list > li .con.type-2 .tbl_subject.type-2 th strong{margin-bottom:0;}
.tbl_subject_wrap{display:flex;justify-content:space-between;align-items:center;gap:0 20px;}
.tbl_subject_wrap .tbl_subject{flex-grow:1;}
.tbl_subject_wrap .tbl_arrow{flex-shrink:0;}
.subject_info_list > li .tiny{font-size:12px;color:#999;margin-top:10px;}
.subject_info_list > li .info_box{font-size: 14px; border:1px solid #ccc;padding:10px;border-radius:5px;margin-top:10px;}
.subject_info_list > li .info_box li{padding-left:10px;text-indent:-10px;line-height:1.6;color:#111;}
.subject_info_list > li .b_tit{color:#000;font-weight:500;font-size:16px;text-align:center;display:block;}
.subject_info_list > li .b_tit .primary{color:#c081ff;}
/* E: ���� Ư¡ �� �н��� - subject_guide.asp */

/* S: ���� - apply_start.asp */
.apply_start .test_paper {display: flex; justify-content: center; align-items: stretch; gap: 20px; height: 770px; margin-bottom: 40px;}
.apply_start .question_wrap {position: relative; width: 590px;}
.apply_start .question_wrap .question_zone .btn_wrap a {position: absolute; top: 50%; display: block; width: 24px; height: 40px; font-size: 0; background-image: url(https://img.megagong.net/m/2023/0222_gongexam/paging_arrow.png); background-repeat: no-repeat;}
.apply_start .question_wrap .question_zone .btn_wrap a.prev {left: 3%; background-position: 0 0;}
.apply_start .question_wrap .question_zone .btn_wrap a.next {right: 3%; background-position: 100% 0;}
.apply_start .answer_sheet {width: 390px; border: 1px solid #ddd; overflow-y: auto; background: #fff; padding: 15px 15px 20px 15px;}
.apply_start .answer_sheet .tbl_wrap {font-size: 16px; color: #111; margin-bottom: 30px;}
.apply_start .answer_sheet .tbl_wrap + .tbl_wrap {margin-top: 15px;}
.apply_start .answer_sheet .tbl_wrap thead th {background: #fffcd7; border: 1px solid #ddd; padding: 8px 10px;}
.apply_start .answer_sheet .tbl_wrap tbody th {background: #fffcd7; border: 1px solid #ddd; padding: 8px 10px;}
.apply_start .answer_sheet .tbl_wrap tbody td {font-family: var(--font-warning); border: 1px solid #ddd; padding: 8px 10px;}
.apply_start .answer_sheet .tbl_wrap tbody td a {display: block;}
.apply_start .answer_sheet .tbl_wrap tbody td a span {display: block; width: 20px; height: 20px; border: 1px solid #898989; border-radius: 50%; font-size: 12px; line-height: 18px; color: #898989; background: #fff; text-align: center; margin: 0 auto;}
.apply_start .answer_sheet .tbl_wrap tbody td a span.last {font-size: 10px; letter-spacing: -0.1em;}
.apply_start .answer_sheet .tbl_wrap tbody td.on a span {color: #fff; background: #c081ff; border: 1px solid #c081ff;}
.apply_start .answer_sheet .tiny_txt {font-size: 13px; color: #888; text-align: center; margin-bottom: 10px;}
.apply_start .answer_sheet .apply_btn a {display: block; width: 290px; font-weight: 500; font-size: 18px; color: #fff; background: #000; padding: 17px 0; border-radius: 10px; margin: 0 auto;}

/* ���� */
.question_wrap {word-break: break-all; text-align: justify;}
.question_wrap .question {height: 770px; font-size: 16px; line-height: 1.6; text-align: left; padding: 20px 50px 40px; border: 1px solid #ddd; overflow-y: auto;}
.question_wrap .question .tit {font-size: 15px; margin-bottom: 10px;}
.question_wrap .box {position: relative; padding: 20px; border: 1px solid #000; margin-bottom: 30px;}
.question_wrap .box p {text-indent: 1em;}
.question_wrap .box .example {position: absolute; top: 0; left: 50%; transform: translate(-50%, -50%); background: #fff; padding: 0 10px;}
.question_wrap .choices li {position: relative; padding-left: 25px;}
.question_wrap .choices li + li {margin-top: 5px;}
.question_wrap .choices li .mark {position: absolute; top: 0; left: 0;}
.question_wrap u {text-decoration: none; border-bottom: 1px solid #000;}

.question_wrap .question .q1_5 .choices li {padding-left: 28px;}
.question_wrap .question .q1_5 .blnk {display: inline-block; width: 50%; max-width: 240px; height: 18px; vertical-align: middle; border: 1px solid #000; margin-right: 5px;}
.question_wrap .question .q2_4 .box,
.question_wrap .question .q2_5 .box {background: #f5f5f5;}
.question_wrap .question .q2_4 .blnk,
.question_wrap .question .q2_5 .blnk {width: 80%; text-align: center; background: #fff; border: 1px solid #000; margin: 0 auto 15px;}
.question_wrap .question .q2_4 .box p,
.question_wrap .question .q2_5 .box p {text-indent: unset;}
.question_wrap .question .q2_4 .box strong,
.question_wrap .question .q2_5 .box strong {display: block; margin: 15px auto 5px;}
.question_wrap .question .q2_4 .choices,
.question_wrap .question .q2_5 .choices {font-size: 15px;}
.question_wrap .question .q2_4 .box p:last-of-type,
.question_wrap .question .q2_5 .box p:last-of-type {margin-top: 15px;}
.question_wrap .question .q3_2 .blnk {display: inline-block; width: 80px; text-align: center; border: 1px solid #000; margin-left: 10px; margin-right: 5px;}

/* ���� �� �ؼ� */
.scroll_box {height: auto; max-height: 700px; overflow-y: auto;}
.scroll_box .question_wrap .question {height: auto; overflow: visible;}
.answer_box {position: relative; background: #bce8ff; text-align: left; font-size: 16px; line-height: 1.6;}
.answer_box .tit {position: absolute; top: 0; left: 50%; transform: translate(-50%, -50%); color: #fff; background: #00a6ff; padding: 5px 10px; border-radius: 10px;}
.answer_box .txt {padding: 30px;}
.answer_box .txt .info {display: flex; justify-content: space-between;}
.answer_box .txt .correct {font-weight: 700; color: #0184ff; font-size: 18px; margin-top: 20px;}
.answer_box .txt .s_tit {font-weight: 700; margin: 10px auto 5px;}
.answer_box .box {margin-top: 10px;}
/* E: ���� - apply_start.asp */

/* S: ���ܰ���м� - apply_result.asp */
/* ���̺� */
.result_tbl sup {opacity: 0.5; font-size: 0.75em; vertical-align: top;}
.result_tbl tr .cr_1 {border-color: #fff;}
.result_tbl.grade_tbl thead th:not(:first-child),
.result_tbl.grade_tbl tr td:nth-of-type(5n) {border-right-color: #e9e4ab;}
.result_tbl.grade_tbl .num {background: #f3e7ff;}
.result_tbl.grade_tbl td.ans_X {font-weight: 700; color: #f00;}
.result_tbl.grade_tbl td.ans_O {font-weight: 700; color: #0c00ff;}
.result_tbl.grade_tbl td .qst_view {display: block; font-size: 0; width: 26px; max-width: 76%; height: 22px; background: url('https://img.megagong.net/m/2024/0708_exam/result_qst.png') center center no-repeat; background-size: 100% auto; margin: 0 auto;}
.result_tbl.predict_tbl colgroup col:first-child {border: 2px solid #c081ff;}
.result_tbl.predict_tbl tr td:first-of-type {font-weight: 700; color: #c081ff;}
.result_tbl.pass_tbl td a {color: #c081ff; border-bottom: 1px solid #c081ff;}
.result_tbl.cut_tbl {font-size: 15px;}
.result_tbl.cut_tbl tr th,
.result_tbl.cut_tbl tr td {padding: 7px 5px;}
.result_tbl.cut_tbl thead th span {font-size: 13px;}
.result_tbl.cut_tbl tbody th a {border-bottom: 1px solid #000;}
.result_tbl.cut_tbl .subject {position: relative; font-size: 13px; padding: 0;}
.result_tbl.cut_tbl .subject::before {content: ''; position: absolute; top: 0; left: 50%; width: 1px; height: 100%; background: #ddd;}
.result_tbl.cut_tbl .subject > div {display: flex;}
.result_tbl.cut_tbl .subject a {position: relative; display: block; flex: 1; padding: 10px 5px;}
.result_tbl.cut_tbl .tiny_noti .img {vertical-align: bottom; margin: 0 2px;}

/* �ʱ��հݼ� */
.graph_tab {margin-top: 30px;}
.graph_tab .grh {margin-bottom: 40px;}
.graph_tab .grh > img {margin: 0 auto;}
.graph_tab .radio_list {display: flex; justify-content: flex-start; align-items: center; gap: 18px; margin-bottom: 15px;}
.graph_tab .radio_list li label {font-size: 16px;}
.graph_tab .radio_list li input[type=radio] {margin-right: 5px;}
.graph_tab .radio_list li input[type=radio]:checked + span {font-weight: 700;}

/* ���� �ؼ� �˾� */
.eventWrap .layerPopup { position:fixed; left:0; top:0; width:100%; height:100%; z-index:100; } 
.eventWrap .layerPopup.questn_pop {display: flex;justify-content: center;align-items: center;} 
.eventWrap .layerPopup .dimBg { position:absolute; top:0; left:0; width:100%; height:100%; background-color:#000; opacity:0.7; } 
.eventWrap .layerPopup .contentBox { position: relative; width: 770px; margin: 6% auto 0; line-height: 1.3; background: #fff; } 
.eventWrap .layerPopup .contentBox .pop_box { padding: 0; position: relative; height: 650px; overflow-y: auto; } 
.eventWrap .layerPopup .btnClose { position: absolute; bottom: -30px; right: 0; background: #000; padding: 3px; width:30px; height:30px; box-sizing: border-box; } 
.eventWrap .layerPopup .btnClose { position:absolute; top: -35px; right: 0; display:block; font-size:0; line-height:0; width:35px; height:35px; background: url('https://img.megagong.net/m/2021/0106_basicexam/pop_x.png') center center no-repeat;} 

/* �������� �˾� */
.subj_nm {display: none;}
.pop_table {background: #fff; margin-top: 10px;}

.s_3 {text-align: left;}

.s_25 .question .blnk,
.s_41 .question .blnk {display: inline-block; width: 80px; text-align: center; border: 1px solid #000; margin: 0 5px;}

.part-wrp + .tiny_noti {color: #888; margin-top: 10px; text-align: left;}
.part-wrp + .tiny_noti a {font-size: 11px; color: #fff; background: #c081ff; border-radius: 3px; padding: 0 5px; margin-left: 5px; text-wrap: nowrap;}
/* E: ���ܰ���м� - apply_result.asp */

/* S: �н���ȹ���̵� - learning_guide.asp */
.evLearning .box_default .box_title b {color: #c081ff;}
.evLearning .box_default .box_title .tiny {font-weight: 500; font-size: 14px; color: #666;}
.evLearning .txtbox_default {font-size: 16px; text-align: left; background: #fbf7ff; border: 1px solid #ddd; padding: 40px; border-radius: 20px;}
.evLearning .txtbox_default .cr_1 {color: #c081ff;}
.evLearning .txtbox_default .cr_2 {color: #6d1ac1;}

.evLearning .graph_wrap.pie_graph {display: flex; justify-content: center; align-items: center; gap: 40px; margin-bottom: 40px;}
.evLearning .graph_wrap.pie_graph .grp {flex: 0 0 auto; width: 360px; height: auto;}
.evLearning .graph_wrap.pie_graph .grp .piechart {width: 360px; height: 360px; margin: 0 auto;}
.evLearning .graph_wrap.pie_graph .legend_list {display: flex; justify-content: center; align-items: center; flex-wrap: wrap; gap: 5px 10px; margin-top: 20px; font-size: 16px;}
.evLearning .graph_wrap.pie_graph .legend_list::before {content: ''; display: block; width: 100%; height: 0; order: 2;}
.evLearning .graph_wrap.pie_graph .legend_list li:nth-of-type(n+4) {order: 3;}
.evLearning .graph_wrap.pie_graph .legend_list li::before {content: ''; display: inline-block; width: 10px; height: 10px; border-radius: 50%; margin-right: 5px;}
.evLearning .graph_wrap.pie_graph .legend_list li:nth-of-type(1):before {background: #dcc950;}
.evLearning .graph_wrap.pie_graph .legend_list li:nth-of-type(2):before {background: #eedd67;}
.evLearning .graph_wrap.pie_graph .legend_list li:nth-of-type(3):before {background: #ffee78;}
.evLearning .graph_wrap.pie_graph .legend_list li:nth-of-type(4):before {background: #fff19f;}
.evLearning .graph_wrap.pie_graph .legend_list li:nth-of-type(5):before {background: #fff8d0;}
.evLearning .graph_wrap.pie_graph text {font-size: 16px; text-align: center; }
.evLearning .graph_wrap.pie_graph p {flex: 1; position: relative; font-weight: 400; font-size: 16px; text-align: left; background: #fff8d0; border-radius: 0 40px 0 40px; padding: 30px;}
.evLearning .graph_wrap.pie_graph p::before {content: ''; position: absolute; top: 0; left: 0; transform: translateX(-100%); border-bottom: 30px solid transparent; border-right: 42px solid #fff8d0;}
.evLearning .graph_wrap.bar_graph {display: flex; justify-content: center; align-items: center; gap: 10px; margin-bottom: 30px;}
.evLearning .graph_wrap.bar_graph .ico span {display: block; font-weight: 500; font-size: 16px; line-height: 1.2; margin-top: 5px;}
.evLearning .graph_wrap.bar_graph .grp {flex: 1; display: flex;}
.evLearning .graph_wrap.bar_graph .grp li {position: relative; display: flex; justify-content: center; align-items: center; font-size: 16px; line-height: 1.2; color: #fff; height: 60px;}
.evLearning .graph_wrap.bar_graph .grp li:nth-child(1) {color: #000; background: #e8d1ff; background: -webkit-linear-gradient(0deg, transparent 0%, #e8d1ff 50%); background: linear-gradient(90deg, transparent 0%, #e8d1ff 50%);}
.evLearning .graph_wrap.bar_graph .grp li:nth-child(2) {background: #c081ff;}
.evLearning .graph_wrap.bar_graph .grp li:nth-child(3) {background: #9948eb;}
.evLearning .graph_wrap.bar_graph .grp li:nth-child(4) {background: #6d1ac1; z-index: 0; padding-right: 2%;}
.evLearning .graph_wrap.bar_graph .grp li:nth-child(4)::after {content: ''; position: absolute; top: 50%; right: 0; transform: translateY(-50%); ;border-top: 45px solid transparent; border-bottom: 45px solid transparent; border-left: 54px solid #6d1ac1; background: #fff; z-index: -1;}
.evLearning .curr .txtbox_default {margin-bottom: 60px;}
.evLearning .curr_list li {display: flex; justify-content: center; align-items: stretch; gap: 10px;}
.evLearning .curr_list li + li {margin-top: 10px;}
.evLearning .curr_list li .step {
    --arrow-height: 30px;
    position: relative; flex: 0 0 200px; display: flex; flex-direction: column; justify-content: center; align-items: center; font-weight: 700; font-size: 18px; color: #fff; margin-bottom: var(--arrow-height); border-radius: 10px;}
.evLearning .curr_list li .step::after {content: ''; position: absolute; bottom: 0; left: 50%; transform: translate(-50%, 100%); width: 40px; height: var(--arrow-height); background-image: url('https://img.megagong.net/m/2024/0708_exam/curr_arrow.png'); background-repeat: no-repeat; background-size: auto 100%;}
.evLearning .curr_list li .step span {font-size: 14px;}
.evLearning .curr_list li:nth-child(1) .step {background: #e69dff;}
.evLearning .curr_list li:nth-child(2) .step {background: #c081ff;}
.evLearning .curr_list li:nth-child(3) .step {background: #9948eb;}
.evLearning .curr_list li:nth-child(4) .step {background: #6d1ac1; margin-bottom: 0;}
.evLearning .curr_list li:nth-child(1) .step::after {background-position: 0 0;}
.evLearning .curr_list li:nth-child(2) .step::after {background-position: -40px 0;}
.evLearning .curr_list li:nth-child(3) .step::after {background-position: -80px 0;}
.evLearning .curr_list li:nth-child(4) .step::after {content: none;}
.evLearning .curr_list li p {flex: 1; font-size: 16px; text-align: left; border: 1px solid #e5deed; border-radius: 10px; padding: 25px 30px;}

.evLearning .tip .txtbox_default {margin-bottom: 30px;}
.tip_tbl {margin-bottom: 40px;}
.tip_tbl tbody td.cr_2 {font-weight: 700;}
.tip_tbl tbody td.prosncons {padding: 20px 15px;}
.tip_tbl tbody td.prosncons ul li {position: relative; padding-left: 10px;}
.tip_tbl tbody td.prosncons ul li + li {margin-top: 5px;}
.tip_tbl tbody td.prosncons ul li .mark {position: absolute; top: 0; left: 0;}
.tip_tbl tbody td.prosncons ul li.link .mark {color: #c081ff;}
.tip_tbl tbody td.prosncons ul li.link a {font-size: 14px;}
.tip_tbl tbody td.prosncons ul li.link a b {color: #c081ff; border-bottom: 1px solid #c081ff;}
/* E: �н���ȹ���̵� - learning_guide.asp */

@media screen and (max-width: 1750px){
    .lnb_bar {margin-left: -35vw;}
}
@media screen and (max-width: 1400px){
    .show-1400 {display: block;}
    .hide-1400 {display: none;}

    /* S: left.asp */
    .lnb_bar {position: relative; top: 0; left: 0; width: 100%; margin-left: 0; transform: none;}
    .lnb_bar.pofixed {position: fixed; top: 0; left: 0; z-index: 3;}
    .lnb_bar.pofixed.mofixed {/*top: 49px;*/ top: 0;}
    .lnb_bar h2 {font-size: clamp(18px, 2.6vmin, 24px); color: #fff; background: #c081ff; padding: 1.5vw 0;}
    .lnb_bar .depth1 {display: flex; justify-content: center; align-items: center; gap: 2vw; border: none; border-radius: 0;}
    .lnb_bar .depth1 > li + li {border-top: none;}
    .lnb_bar .depth1 > li + li::before {content: ''; position: absolute; width: 1px; height: clamp(10px, 2.2vmin, 14px); background: #c2c2c2; top: 50%; left: -1vw; transform: translateY(-50%);}
    .lnb_bar .depth1 > li > a {width: auto; padding: 1.5vw 0 2vw;}
    .lnb_bar .depth1 > li > a .ico {display: none;}
    .lnb_bar .depth1 > li > a strong {font-weight: 400; font-size: clamp(13px, 2.2vmin, 20px);}
    .lnb_bar .depth1 > li.on > a strong {font-weight: 700;}
    /* lnb - depth2 */
    .lnb_bar .depth1 > li.accordion > a.on strong {font-weight: 700;}
    .lnb_bar .depth1 > li.accordion > a::before {content: none;}
    .lnb_bar .depth1 .depth2 {position: absolute; bottom: 1px; left: -15px; transform: translateY(100%); padding-bottom: 0; padding: 5px 0; margin-top: 0; background: #fff; border: 1px solid #ddd; text-wrap: nowrap;}
    .lnb_bar .depth1 .on .depth2 {display: flex;}

    .lnb_bar .depth1 li:last-of-type .depth2 {left: auto; right: 0;}
    .lnb_bar .depth1 .depth2 li a {font-size: clamp(12px, 1.8vmin, 16px); padding: 0 10px;}
    /* E: left.asp */
}
@media screen and (max-width: 1200px){
    /* setting */
    .evSection {padding: 8% 0 14%;}
    .title_default {padding-bottom: 4%; margin-bottom: 5%;}
    .title_default h4 {font-size: clamp(20px, 3.6vmin, 34px);}

    /* �⺻ �� */
    .evSection .tab_base.tab_default {gap: 1vmin; margin: 0 auto 3%;}
    .evSection .tab_base.tab_default li a {font-size: clamp(15px, 2vmin, 18px); padding: clamp(8px, 1.5vmin, 17px) 0;}

    /* ���� �� */
    .evSection .tab_base.tab_sub {gap: 1vmin;}
    .evSection .tab_base.tab_sub li a {font-size: clamp(13px, 1.7vmin, 16px); padding: 0.5vmin 2vmin;}
    .evSection .panel_base.panel_sub {margin-top: 5%;}

    /* ���� �� */
    .result_tab {margin-bottom: 3%;}
    .result_tab ul li a {font-size: clamp(13px, 1.8vmin, 16px); padding: 1.5vw 0; border-radius: 10px 10px 0 0;}

    /* ������ �ڽ� */
    .box_default {padding: 30px 20px; font-size: clamp(13px, 1.8vmin, 16px);}
    .box_default + .box_default {margin-top: 5%;}
    .box_default .box_title {font-size: clamp(16px, 2.2vmin, 20px); margin-bottom: 2%;}

    .box_default.apply_noti li {font-size: clamp(13px, 1.8vmin, 16px);}

    /* ���� ���� ���� */
    .info_wrap {font-size: clamp(13px, 1.8vmin, 16px);}
    .info_wrap .info + .info {margin-top: 2vmin;}
    .info_wrap .info .info_table {margin-top: 1vmin;}
    .info_wrap .info .info_table td .select_box {margin-right: 0;}
    .info_wrap .info .info_table td .select_box select {font-size: clamp(13px, 1.8vmin, 16px);}
    .info_btn {gap: 2vmin; margin: 4% auto;}
    .info_btn a {font-size: clamp(16px, 2vmin, 18px); padding: 1.5vmin 0;}

    /* �� ���� �˾� */

    /* ���� */
    .bnr_default a {font-size: clamp(13px, 2.2vmin, 20px); padding: 2vmin 0;}
    .bnr_default.series {margin-bottom: 3%;}
    .bnr_default.series a {font-size: clamp(14px, 2.6vmin, 24px); padding: 3vmin 0;}
    .bnr_default.series a::before {left: 2%; width: 17vw;}
    .bnr_default.series a::after {right: 2%; width: 18vw;}
    .bnr_default.quizbank {margin-top: 3%;}
    .bnr_default.quizbank a {padding-left: 5vw;}
    .bnr_default.quizbank a::after {right: 2%; width: 12vw;}
    .bnr_default.pass_opinion {margin-top: 3%;}
    .bnr_default.pass_opinion a::before {left: 2%; width: 10vw;}
    .bnr_default.pass_opinion a::after {right: 2%; width: 10vw;}
    .bnr_default.sub_guide a {padding: 1.5vmin 0;}
    .bnr_default.sub_guide a::before {width: 13vw; left: 2%;}
    .bnr_default.price a {padding: 1.5vmin 0; padding-left: 2vmin;}
    .bnr_default.price a::before {width: 13vw; left: 2%;}

    /* �⺻ ���̺� */
    .table_default {font-size: clamp(13px, 1.8vmin, 16px);}

    /* S: left.asp */
    /* E: left.asp */

    /* S: �����򰡶�? - main.asp */
    /* con_top */
    .con_top {padding: 12% 0;}
    .con_top h3 {margin: 0 auto 6%;}
    .con_top h3 {margin: 0 auto 6%;}
    .con_top .visual_slider {margin: 0 -2% 5%;}
    .con_top .visual_slider .item.after {padding-top: 6vmin;}
    .con_top .link_btn {font-size: clamp(20px, 3.4vmin, 32px); padding: 2.2vmin 0;}

    /* evCon1 */
    .evCon1 {padding: 14% 0;}
    .evCon1 h4 {font-size: clamp(32px, 7vmin, 68px); margin-bottom: 8%;}
    .evCon1 .step_wrap .step + .step {margin-top: 10%;}
    .evCon1 .step_wrap .con_tit {margin-bottom: 6%;}
    .evCon1 .step_wrap .con_tit h5 {font-size: clamp(22px, 4vmin, 38px);}
    .evCon1 .step_wrap .con_tit .label {margin-bottom: 3%;}
    .evCon1 .step_wrap .con_tit .label span {font-size: clamp(14px, 2.3vmin, 21px); padding: 0.5vw 0;}
    .evCon1 .step_wrap .con_tit .sub_tit {font-size: clamp(16px, 2.3vmin, 21px);}
    .evCon1 .step_wrap .step .content .badge {width: clamp(90px, 16vmin, 150px); height: clamp(90px, 16vmin, 150px); font-size: clamp(13px, 2vmin, 18px);}
    /* E: �����򰡶�? - main.asp */

    /* S: ���� ���� ���̵� - series_guide.asp */
    .evSeries .tip_title {font-size: clamp(18px, 2.6vmin, 24px); margin: 8% auto 2%;}
    .evSeries .tip_title span {font-size: clamp(15px, 2vmin, 18px);}
    .evSeries .table_default {margin-top: 5%;}
    .evSeries .msg {font-size: clamp(15px, 2vmin, 18px); margin-top: 4%;}
    /* E: ���� ���� ���̵� - series_guide.asp */

    /* S: ���� Ư¡ �� �н��� - subject_guide.asp */
    .subject_info_list > li{padding:30px;}
    /* E: ���� Ư¡ �� �н��� - subject_guide.asp */

    /* S: ���� - apply_start.asp */
    .apply_start .test_paper {flex-direction: column; height: auto; gap: 2vw; margin-bottom: 5%;}
    .apply_start .question_wrap {width: 100%;}

    .apply_start .question_wrap .question_zone .btn_wrap {display: flex; justify-content: center; align-items: center; gap: 1vw; margin-top: 2%;}
    .apply_start .question_wrap .question_zone .btn_wrap a {flex: 1; position: static; width: auto; height: auto; font-weight: 700; font-size: 14px; background: #fff; border: 1px solid #c3c3c3; padding: 11px 0; border-radius: 6px;}
    .apply_start .answer_sheet {width: 100%;}
    .apply_start .answer_sheet .tbl_wrap {margin-bottom: 3%;}
    .apply_start .answer_sheet .tbl_wrap + .tbl_wrap {margin-top: 1%;}

    .apply_start .answer_sheet .apply_btn a {font-size: clamp(14px, 2vmin, 18px); padding: 2vw 0;}

    /* ���� */
    .question_wrap .question {height: auto; padding: 20px 20px 40px;}

    /* ���� �� �ؼ� */
    .answer_box .txt {padding: 20px 20px 30px;}
    /* E: ���� - apply_start.asp */

    /* S: ���ܰ���м� - apply_result.asp */
    /* ���̺� */
    .result_tbl.grade_tbl td .qst_view {height: 3vmin;}
    .result_tbl.cut_tbl {font-size: clamp(12px, 1.7vmin, 15px);}
    .result_tbl.cut_tbl thead th span {font-size: clamp(11px, 1.5vmin, 13px);}
    .result_tbl.cut_tbl td .result {display: inline-block; width: 88%;}

    /* �ʱ��հݼ� */
    .graph_tab {margin-top: 3%;}
    .graph_tab .grh {margin-bottom: 8%;}
    .graph_tab .radio_list {gap: 1.5vmin; margin-bottom: 2%;}
    .graph_tab .radio_list li label {font-size: clamp(13px, 1.8vmin, 16px);}

    /* ���� �ؼ� �˾� */
    .eventWrap .layerPopup .contentBox {width: 90%;}
    .scroll_box {height: auto; max-height: 90vh;}
    /* E: ���ܰ���м� - apply_result.asp */

    /* S: �н���ȹ���̵� - learning_guide.asp */
    .evLearning .box_default .box_title .tiny {font-size: clamp(11px, 1.6vmin, 14px);}
    .evLearning .txtbox_default {font-size: clamp(13px, 1.8vmin, 16px); padding: 30px 20px;}

    .evLearning .graph_wrap.pie_graph {gap: 2vw; margin-bottom: 6%;}
    .evLearning .graph_wrap.pie_graph .grp {width: 40vmin;}
    .evLearning .graph_wrap.pie_graph .grp .piechart {width: 100%; height: 40vmin;}
    .evLearning .graph_wrap.pie_graph .legend_list {font-size: clamp(13px, 1.8vmin, 16px); gap: 0.25vmin 1vmin;}
    .evLearning .graph_wrap.pie_graph p {font-size: clamp(13px, 1.8vmin, 16px); padding: 20px;}
    .evLearning .graph_wrap.pie_graph p::before {border-bottom-width: 3vmin; border-right-width: 4vmin;}
    .evLearning .graph_wrap.pie_graph text {font-size: clamp(11px, 1.8vmin, 16px);}
    .evLearning .graph_wrap.bar_graph {gap: 1vw; margin-bottom: 4%;}
    .evLearning .graph_wrap.bar_graph .ico span {font-size: clamp(11px, 1.8vmin, 16px);}
    .evLearning .graph_wrap.bar_graph .grp li {font-size: clamp(11px, 1.8vmin, 16px); height: clamp(36px, 6vmin, 60px);}
    .evLearning .graph_wrap.bar_graph .grp li:nth-child(4)::after {border-top-width: 4.4vmin; border-bottom-width: 4.4vmin; border-left-width: 5vmin;}
    .evLearning .curr .txtbox_default {margin-bottom: 6%;}
    .evLearning .curr_list li .step {flex-basis: 24%; min-width: 0; font-size: clamp(13px, 2vmin, 18px);}
    .evLearning .curr_list li .step span {font-size: clamp(11px, 1.6vmin, 14px);}
    .evLearning .curr_list li p {font-size: clamp(13px, 1.8vmin, 16px); padding: 20px 15px;}
    
    .evLearning .tip .txtbox_default {margin-bottom: 4%;}
    .tip_tbl {margin-bottom: 6%;}
    /* E: �н���ȹ���̵� - learning_guide.asp */
}
@media screen and (max-width: 992px){
    /* S: ���� ���� ���̵� - series_guide.asp */
    .series_cont {gap: 4vmin; background-size: 6vmin;}
    .series_cont .item {width: calc(50% - 2vmin); height: 43vmin; padding: 5vmin 0; border-radius: 20px; display: flex; flex-direction: column;}
    .series_cont .item_title {font-size: clamp(18px, 2.8vmin, 26px); margin: 0 auto 2vmin;}
    .series_cont .item dl {margin: auto;}
    .series_cont .item dl dt {font-size: clamp(15px, 2.2vmin, 20px); margin: 0 auto 2vmin;}
    .series_cont .item dl dt span {font-size: clamp(13px, 1.8vmin, 16px);}
    .series_cont .item dl dd {font-size: clamp(13px, 1.8vmin, 16px);} 
    .series_cont .item dl dd ul li a {font-size: clamp(14px, 2.1vmin, 19px); padding: 2px 2vmin;}
    /* E: ���� ���� ���̵� - series_guide.asp */

    /* S: ���� Ư¡ �� �н��� - subject_guide.asp */
    .subject_info_list > li .num{font-size:16px;}
    .subject_info_list > li .tbl_subject th, .subject_info_list > li .tbl_subject td{font-size:14px;padding:5px;}
    .subject_intro_wrap .tec_info dd .slogan{font-size:16px;}
    .subject_intro_wrap .tec_info dd .home{font-size:24px;gap:0 3px;}
    .subject_intro_wrap .tec_info dd .home span{font-size:12px;width:20px;height:20px;}
    .tbl_subject_wrap{gap:0 10px;}
    .tbl_subject_wrap .tbl_arrow{width:120px;}
    .tbl_subject_wrap .tbl_subject.lg{width:70%;}
    .tbl_subject_wrap .tbl_subject.sm{width:30%;} 
    /* E: ���� Ư¡ �� �н��� - subject_guide.asp */
}
@media screen and (max-width: 768px){
    .eventWrap .tiny_noti {font-size: 11px;}

    /* ���� ���� ���� */
    .info_wrap .info .info_table colgroup {display: none;}
    .info_wrap .info .info_table tr {display: flex; flex-wrap: wrap;}
    .info_wrap .info .info_table th {flex: 1 0 34%; border: none; border-right: 1px solid #ddd; border-bottom: 1px solid #ddd; display: flex; justify-content: center; align-items: center; padding: 7px 5px;}
    .info_wrap .info .info_table td {flex: 1 0 66%; border: none; border-bottom: 1px solid #ddd; display: flex; justify-content: flex-start; align-items: center; padding: 7px 5px;}
    .info_wrap .info .info_table tr:last-child th:last-of-type,
    .info_wrap .info .info_table tr:last-child td:last-of-type {border-bottom: none;}
    .info_wrap .info .info_table td .select_box {flex: 1;}
    .info_wrap .info .info_table td.col_3 .flex {flex: 1; flex-direction: column; align-items: stretch; gap: 1vw;}
    .info_wrap .info .info_table td.col_3 .select_box {margin-right: 0;}
    .info_wrap .info .info_table td.col_3 .select_box select {width: calc(100% - 50px); margin-left: auto;}
    /* ���� �� */
    .info_wrap.type_2 .info .info_table th {padding: 7px 5px;}
    .info_wrap.type_2 .info .info_table td {padding: 7px 5px;}
    .info_wrap.type_2 .info .info_table td.col_3 .flex {flex-direction: row; gap: 0;}

    /* �� ���� �˾� */
    .tiny_pop {font-size: 11px;}
    .tiny_pop a {font-size: 10px;}

    /* ���� */
    .bnr_default.series a .arrow {width: clamp(5px, 2.2vmin, 8px); height: clamp(8px, 2.2vmin, 13px);}
    .bnr_default.quizbank a .arrow,
    .bnr_default.pass_opinion a .arrow {width: clamp(5px, 2vmin, 7px); height: clamp(8px, 2vmin, 16px);}

    /* �⺻ ���̺� */
    .table_default tr th,
    .table_default tr td {padding: 7px 3px;}
    .table_default .tbl_pc {display: none;}
    .table_default .tbl_mo {display: table;} 
    .table_default .tiny_noti a {font-size: 10px;}

    /* S: left.asp */
    #headertop .depth2-wrp > div.fixed {position: static;}
    /* E: left.asp */

    /* S: �����򰡶�? - main.asp */
    /* con_top */
    .con_top .visual_slider .item img {margin: 0 auto;}
    .con_top .visual_slider .item .arrow {right: 10vmin;}

    /* E: �����򰡶�? - main.asp */

    /* S: ���� ���� ���̵� - series_guide.asp */
    .evSeries .tip_title::before {width: 40px; height: 40px;}
    .evSeries .tip_title.tip2::before {background-position: -40px 0;}
    .evSeries .tip_title.tip3::before {background-position: -80px 0;}
    .evSeries .table_info colgroup col:nth-child(1) {width: 14% !important;}
    .evSeries .table_info colgroup col:nth-child(5) {width: 9% !important;}

    .series_cont .item {height: clamp(320px, 48vmin, 365px);}
    /* E: ���� ���� ���̵� - series_guide.asp */

    /* S: ���� Ư¡ �� �н��� - subject_guide.asp */
    .subject_info_list > li{font-size:14px;padding:20px;}
    .subject_info_list > li .info_box {font-size: 12px;}
    .subject_info_list > li .b_tit {font-size: 14px;}
    .subject_info_list > li .num{margin-bottom:10px;}
    .subject_intro_wrap .tec_info dt {width: 40%; height: clamp(140px, 40vmin, 230px);}
    .subject_intro_wrap .tec_info dd {width: 60%;}
    /* E: ���� Ư¡ �� �н��� - subject_guide.asp */

    /* S: ���� - apply_start.asp */
    .apply_start .answer_sheet .tbl_wrap {font-size: 14px;}
    .apply_start .answer_sheet .tbl_wrap tbody td {padding: 6px 0;}
    /* ���� */
    .question_wrap .question {font-size: 14px;}
    .question_wrap .question .tit {font-size: 13px;}
    .question_wrap .question .box {padding: 10px;}

    /* ���� �� �ؼ� */
    .answer_box {font-size: 14px;}
    .answer_box .txt .correct {font-size: 16px; margin-top: 10px;}
    /* E: ���� - apply_start.asp */

    /* S: ���ܰ���м� - apply_result.asp */
    /* ���̺� */
    .result_tbl.grade_tbl td .qst_view {height: clamp(15px, 4vmin, 22px); background-size: auto 100%;}
    .result_tbl.predict_tbl colgroup col:first-child {border: none;}
    .result_tbl.predict_tbl tbody tr:first-child {border: 2px solid #c081ff;}
    .result_tbl.pass_tbl .badge {display: inline-block; max-width: 80%;}
    .result_tbl.cut_tbl tr th,
    .result_tbl.cut_tbl tr td {padding: 5px 2px;}
    .result_tbl.cut_tbl tr th > div.show-768 {display: inline-block !important;}
    .result_tbl.cut_tbl .subject::before {width: 100%; height: 1px; top: 50%; left: 0;}
    .result_tbl.cut_tbl .subject > div {flex-direction: column;}
    .result_tbl.cut_tbl .subject {font-size: 11px;}
    .result_tbl.cut_tbl .subject a {padding: 7px 3px;}
    .result_tbl.cut_tbl colgroup col:nth-child(n+2):nth-child(-n+4) {width: 13.5% !important;}
    .result_tbl.cut_tbl colgroup col:nth-child(5) {width: 27.5% !important;}
    .result_tbl.cut_tbl colgroup col:last-child {width: 14% !important;}

    .part-wrp + .tiny_noti a {font-size: 10px;}

    /* �ʱ��հݼ� */
    .graph_tab .grh > img {max-width: 80%;}
    /* E: ���ܰ���м� - apply_result.asp */

    /* S: �н���ȹ���̵� - learning_guide.asp */
    .evLearning .graph_wrap.bar_graph {flex-wrap: wrap; justify-content: space-between;}
    .evLearning .graph_wrap.bar_graph .ico {order: 1;}
    .evLearning .graph_wrap.bar_graph .ico:first-of-type {text-align: left;}
    .evLearning .graph_wrap.bar_graph .ico:last-of-type {text-align: right;}
    .evLearning .graph_wrap.bar_graph .ico > img {width: 50%;}
    .evLearning .graph_wrap.bar_graph .grp {flex-basis: 100%; order: 2;}
    .evLearning .graph_wrap.bar_graph .grp li:nth-child(1) {background: #e8d1ff;}
    .evLearning .graph_wrap.bar_graph .grp li:nth-child(4) {padding-right: 0;}
    .evLearning .graph_wrap.bar_graph .grp li:nth-child(4)::after {content: none;}

    .tip_tbl thead {display: none;}
    .tip_tbl .tbl_mo .cr_2 {background: #fef8b4;}
    .tip_tbl .tbl_mo tr td:nth-last-child(2) {background: #fffcd7;}
    .tip_tbl tbody td.prosncons {
        --title-height: clamp(20px, 3.2vmin, 30px);
        padding: 0; position: relative; line-height: 1.4;
    }
    .tip_tbl tbody td.prosncons > b {position: absolute; top: 0; left: 0; width: 100%; line-height: var(--title-height);}
    .tip_tbl tbody td.prosncons ul {padding: 15px 10px; /*margin-top: var(--title-height);*/}

    .tip_tbl tbody td.prosncons ul li.link a {font-size: 12px;}

    /* E: �н���ȹ���̵� - learning_guide.asp */
}
@media screen and (max-width: 576px){
    /* ������ �ڽ� */
    .box_default {padding: 20px 10px;}

    /* ���� ���� ���� */
    .info_wrap .info.flex .info_title {align-self: flex-start;}
    .info_wrap .info .radio_list {flex-direction: column; align-items: flex-start; gap: 5px;}

    /* S: ���� ���� ���̵� - series_guide.asp */
    .series_cont {flex-wrap: nowrap; flex-direction: column; background: none; gap: 2vmin;}
    .series_cont .item {width: 100%; height: auto;}
    /* E: ���� ���� ���̵� - series_guide.asp */

    /* S: ���� Ư¡ �� �н��� - subject_guide.asp */
    .subject_intro_wrap .tec_info dd .slogan {font-size: 13px;}
    .subject_intro_wrap .tec_info dd .home {font-size: 22px;}
    .tbl_subject_wrap .tbl_arrow{width:100px;}
    .subject_info_list > li .tbl_subject th, .subject_info_list > li .tbl_subject td{font-size:12px;}
    /* E: ���� Ư¡ �� �н��� - subject_guide.asp */

    /* S: �н���ȹ���̵� - learning_guide.asp */
    .evLearning .txtbox_default {padding: 20px 10px;}
    .evLearning .box_default .box_title .tiny {display: block; margin-top: 0.5vmin;}

    .evLearning .graph_wrap.pie_graph {flex-direction: column; gap: 5vmin;}
    .evLearning .graph_wrap.pie_graph .grp {width: 68vmin;}
    .evLearning .graph_wrap.pie_graph .grp .piechart {height: 68vmin;}
    .evLearning .graph_wrap.pie_graph text {font-size: clamp(14px, 3vmin, 17px);}
    .evLearning .graph_wrap.pie_graph p::before {content: none;}
    .bnr_default.price + .tiny_noti {margin-top: 5px;}
    /* E: �н���ȹ���̵� - learning_guide.asp */
}`;

const excCss = `.eventWrap{max-height:80vh;overflow-y:auto;}
.eventWrap::-webkit-scrollbar{border-radius:4px;background:transparent;width:8px;}
.eventWrap::-webkit-scrollbar-track{/*background:#34374c;border-left:1px solid #212332;*/} 
.eventWrap::-webkit-scrollbar-thumb{background-color:#3333ff;border-radius:4px;background-clip:padding-box;border:1px solid transparent;}
.eventWrap::-webkit-scrollbar-thumb:hover{background-color:#778298;}`;

const js = `//3���� ���� 
$(window).on("load", function() {
    var cd = "1911-1011410110531"; //�������� �ڵ�
    var exam_gbn = "9"; //7��,9�� ����  
    var exam_gbn_2 = "1";//������,������,����û  
    var exam_grp = ("��������" == "��������") ? "101" : "102"; //����(������/�����..) 

    $.get("/l/gong/guide/get_info2.asp?mode=get_3y_trans&cd="+cd+"&exam_code="+exam_gbn+"&exam_code2="+exam_gbn_2+"&exam_grp="+exam_grp,function(data) {
        $("#insRecent").html(data);
        $(window).resize();
        $("#insRecent h4").hide();
    });   
});

$("#special_subj_know").show();


var curr_dpt_kbn = ("�������" == "��������") ? "2" : "1";  

function clickTabCutline(dpt_kbn) {
    curr_dpt_kbn = dpt_kbn;
    $(".result_tab ul li").removeClass("on");
    $(".result_tab ul li").eq(Number(dpt_kbn)-1).addClass("on");
    $(".graph_tab .grh").children().eq(0).attr("src", "https://design.megagong.net/image/m/2024/0708_exam/result_graph_" + dpt_kbn + ".png");
    $(".graph_tab .grh").children().eq(1).attr("src", "https://design.megagong.net/image/m/2024/0708_exam/result_graph_" + dpt_kbn + "_mo.png");
    loadCutlineTable('1');
}
clickTabCutline(curr_dpt_kbn);

function loadCutlineTable(ord_kbn) { 
    var params = {
        exam_idx: "13",
        bpd_code: "1911-1011410110531",
        tot_avg_scr: "80",
        dpt_kbn: curr_dpt_kbn,
        order_kbn: ord_kbn,
        now: "2024-07-16 13:41:58"
    }
    // $("#cutline_table").load("./apply_result_cutline.asp", params);
}

$("input[name=tblSort]").change(function() {
    loadCutlineTable($(this).val());
});

function showQst(subj_cd,qno) {
    $("#questionBox .question").children("div").hide();
    $("#questionBox .answer_box").children("div").hide();
    $("#q" + subj_cd + "_" + qno).show();
    $("#a" + subj_cd + "_" + qno).show();

    qst_popupOn();

    $('div.scroll_box').animate({scrollTop : 0}, 0);
}

function openSubjGuide(tab, sub) {
    if (sub == '0') {
        alert('�غ� ���Դϴ�.');
        return;
    }
    window.open('about:blank').location.href="/l/exam/gong/2024_2/subject_guide.asp?tab=" + tab + "&s" + tab + "=" + sub;
}

//  �˾� ����
function qst_popupOn(subj_nm) {
    if($("#questnPop").css("display") == "none"){
        $("#questnPop").show();
        //wrapWindowByMask();
        // $("body").bind('touchmove', function(e){e.preventDefault()});
    }else{
        $("questnPop").hide();
        // $("body").unbind('touchmove');
    }
    return false;
}
(function () {
$('#questnPop .btnClose').on('click', function (e) {
    e.preventDefault();
    $('#questnPop').hide().removeClass('on');
});
$('#questnPop .dimBg').on('click', function () {
    $('#questnPop .btnClose').trigger('click');
});
})();

//  �˾� ����
function qst_popupOn2(subj_nm, dpt_kbn) {
    // ������
    if (dpt_kbn == '1') {
        
    }
    // �����
    if (dpt_kbn == '2') {
        
    }

    $(".subj_nm[data-title=" + subj_nm +"]").show();

    if($("#questnPop2").css("display") == "none"){
        $("#questnPop2").show();
        //wrapWindowByMask();
        // $("body").bind('touchmove', function(e){e.preventDefault()});
    }else{
        $("questnPop2").hide();
        // $("body").unbind('touchmove');
    }
    return false;
}
(function () {
    $('#questnPop2 .btnClose').on('click', function (e) {
        e.preventDefault();
        $('#questnPop2').hide().removeClass('on');
        $('.subj_nm').hide();
    });
    $('#questnPop2 .dimBg').on('click', function () {
        $('#questnPop2 .btnClose').trigger('click');
    });
})();`;

const outJs = ``;

    return (
      <PageContent
        title={title}
        desc=""
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        outJs={outJs}
        items={["������", "���� ��� �м�"]}
        link="<%=lab_main%>/l/exam/gong/2024_2/apply_result.asp#eventWrap"
        onChange={onChange}
      />
    )
  }
</script>