<!-- #include virtual = "/inc/top.asp"-->
<%
dp1 = 3
dp2 = 2
%>
    <!-- #include virtual = "/inc/aside.asp"-->
    
    <div class="page_wrap page_wide page_exam" id="page_wrap">

        <div class="page_inner">
            <div class="page_name_wrap">
                <h3 class="page_name">EXAM</h3>
                <h3 class="page_name_sub">�հݿ��� ������</h3>
                <p class="page_sub_text">�ް����������� �����ϰ� �ִ� �հݿ��� ������ ������ UI ������Ʈ�Դϴ�.<br>
            SELECT BOX�� ���� ���� ������ �����Ͽ� �����ϸ� �ش� ���� ������ �����ο� �� ����� ������ ���� ���� �� �ֽ��ϴ�.<br>
            ���� �ش� ���� ���� ������ ���� �� ä���� �ؼ�, ���� ��� �հ� ������ ������ ���� ���� ��õ ���� ���� �����ϰ� �־�<br>
            �¶��� ȯ�濡���� �������� �հ� �ɾ� ���񽺸� �޾ƺ� �� �ֽ��ϴ�.</p>
              <div class="page_print"><input type="button" value="�μ��ϱ�" id="print" onclick="window.print()"/></div>
            </div>


            <div class="page_text_wrap">
                <p class="page_head">�������� �˾� - �������� ���� ��</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                
<!-- HTML -->
<div class="code-box html"><div class="eventWrap">
    <div id="certifiPop1" class="certifi_pop">
        <div class="popinner">
            <div class="interest_pop interest_pop_1">
                <strong class="bb_tit">������ ���� �� ���������� ������ �ּ���.</strong>
                <div class="gray_area_box">
                    <ul>
                        <li>�����򰡸� �����ϱ� ��, �����ִ� ������ �������ּ���. (����� ����)</li>
                        <li>������ 9�� ���� �������� ���� ���� ������ �����մϴ�.</li>
                    </ul>
                </div>
                <strong class="bg_b_tit">���� ���� ����</strong>
                <div class="itrt_area">
                    <div class="itrt_box itrt_box1">
                        <strong class="itrt_tit">�� ����1</strong>
                        <table class="table_itrt">
                            <colgroup>
                                <col width="31%">
                                <col>
                            </colgroup>
                            <tbody>
                                <tr>
                                    <th>����</th>
                                    <td>������ 9��</td>
                                </tr>
                                <tr>
                                    <th>����</th>
                                    <td>
                                        <span class="select_box">
                                            <select name="dpt1_part1" id="dpt1_part1">
                                                <option value="">����</option>
                                            </select>
                                        </span>
                                    </td>
                                </tr>
                                <tr>
                                    <th>����</th>
                                    <td>
                                        <span class="select_box">
                                            <select name="dpt2_part1" id="dpt2_part1">
                                                <option value="">����</option>
                                            </select>
                                        </span>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div> <!-- //itrt_box -->
                    <div class="itrt_box itrt_box2">
                        <strong class="itrt_tit">�� ����2</strong>
                        <table class="table_itrt">
                            <colgroup>
                                <col width="31%">
                                <col>
                            </colgroup>
                            <tbody>
                                <tr>
                                    <th>����</th>
                                    <td>������ 9��</td>
                                </tr>
                                <tr>
                                    <th>����</th>
                                    <td>
                                        <span class="select_box">
                                            <select name="dpt1_part2" id="dpt1_part2">
                                                <option value="">����</option>
                                            </select>
                                        </span>
                                    </td>
                                </tr>
                                <tr>
                                    <th>����</th>
                                    <td>
                                        <span class="select_box">
                                            <select name="dpt2_part2" id="dpt2_part2">
                                                <option value="">����</option>
                                            </select>
                                        </span>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div> <!-- //itrt_box -->
                </div> <!-- //itrt_area -->
                <a href="javascript:;" class="btn" onclick="setMemInfoX();">�����ϱ�</a> <!-- �������������� onclick="popview_fnc2();" -->
            </div>
        </div>
        <div class="bg" onclick="clearpop_fnc();"></div>
    </div>
    <div class="black_bg" style="">�˾� �� ���</div>
</div></div>

<!-- CSS -->
<div class="code-box css"><link type="text/css" rel="stylesheet" href="/css/exam_style.css">
<link type="text/css" rel="stylesheet" href="/css/exam_style2.css">
<link type="text/css" rel="stylesheet" href="/css/exam_popup.css"></div>

<p class="page_text">�ް������� ������ ���������� �ַ� ���Ǵ� ����Դϴ�.<br> 
����ڴ� �ش� ����� ���Ͽ� ������ �ִ� ������ �����ϰ� ������ ������ �� �ֽ��ϴ�.<br>
���� �׷��� ������ �������� �ش� ������ �����ο��� ����� ������ �����ϰ� �� �հݿ����� ���� ������ ����� �����ϰ� �ֽ��ϴ�.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-html css act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/exam/basic/gong_3/apply_start.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE<!--- ���ó : �ް������� �հݿ��� ������--></a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#�հݿ���</p> </li>
                            <li><p>#����</p> </li>
                            <li><p>#������</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->

            <div class="page_text_wrap">
                <p class="page_head">���� ����</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                
<!-- HTML -->
<div class="code-box html"><div class="amblem_set">
    <img src="<%=img_main%>/m/2022/0708_examinfo/amblem/1911-1000010110041.png" alt="���뵿��" />
    <img src="<%=img_main%>/m/2022/0708_examinfo/amblem/1911-1000010110061.png" alt="������" />
    <img src="<%=img_main%>/m/2022/0708_examinfo/amblem/1911-1000010110331.png" alt="�߾Ӽ��Ű�������ȸ" />
    <img src="<%=img_main%>/m/2022/0708_examinfo/amblem/1911-1000010110541.png" alt="����û" />
    <img src="<%=img_main%>/m/2022/0708_examinfo/amblem/1911-1000010120361.png" alt="����û" />
    <img src="<%=img_main%>/m/2022/0708_examinfo/amblem/1911-1000010320731.png" alt="����������" />
    <img src="<%=img_main%>/m/2022/0708_examinfo/amblem/1911-1000010330051.png" alt="����û" />
    <img src="<%=img_main%>/m/2022/0708_examinfo/amblem/1911-1000010340791.png" alt="���û" />
    <img src="<%=img_main%>/m/2022/0708_examinfo/amblem/1911-1000010350082.png" alt="������" />
    <img src="<%=img_main%>/m/2022/0708_examinfo/amblem/1911-1000010370031.png" alt="����" />
    <img src="<%=img_main%>/m/2022/0708_examinfo/amblem/1911-1000010400741.png" alt="���䱳���" />
    <img src="<%=img_main%>/m/2022/0708_examinfo/amblem/1911-1011010110571.png" alt="KOREA POST" />
</div></div>
                
<!-- CSS -->
<div class="code-box css"><link type="text/css" rel="stylesheet" href="/css/exam_style.css">
<link type="text/css" rel="stylesheet" href="/css/exam_style2.css">
<link type="text/css" rel="stylesheet" href="/css/exam_popup.css"></div>

<p class="page_text">�ް������� ������ ���������� �ַ� ���Ǵ� �̹����Դϴ�.<br> ������ ���� ���� �ش�Ǵ� ������� ������ ����ڿ��� ���̰� �˴ϴ�.</p>

<!-- Code View -->
<pre class="language-html act html"></pre>
<pre class="language-html act css"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/exam/basic/gong_3/apply_start.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE<!--- ���ó : �ް������� �հݿ��� ������--></a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#�̹����ڷ�</p> </li>
                            <li><p>#����</p> </li>
                            <li><p>#������</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->







            <div class="page_text_wrap">
                <p class="page_head">�հݿ��� ������</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                
<!-- HTML -->
<div class="code-box html"><div class="eventWrap">
    <div id="apply_start" class="apply_start">
        <div class="inner">
            <h4>�ް������� �����н� ������</h4>
            <ul class="question_info">
                <li>
                    �����򰡴� <strong>1ȸ�� ����</strong>�� �� ������, ��Ȯ�� ���� ����� ��� ���ؼ��� �𸣴� �����̶� �׳� �Ѿ�⺸�� <strong>������ ��� ������ Ǫ�� ��</strong>�� �����ϴ�.
                </li>
                <li>
                    ���� ���迡���� 100���� �� 100���� �־����ϴ�. ���� �� �����򰡿����� <strong>����� 5�� ~ 10�� �̳��� ���� Ǯ�� �� ��� �ۼ��� �Ϸ�</strong>�Ͻñ� �ٶ��ϴ�.
                </li>
                <li>��� ���׿� ����� �Է��Ͽ��� ���� ������ �����մϴ�.</li>
            </ul>
            <div class="result_tab on">
                <ul class="on">
                    <li name="li_subj_cd_10" class="on"><a href="javascript:;" title="����">����</a></li>
                    <li name="li_subj_cd_11" class=""><a href="javascript:;" title="����">����</a></li>
                    <li name="li_subj_cd_12" class=""><a href="javascript:;" title="�ѱ���">�ѱ���</a></li>
                </ul>
            </div>

            <!-- �������� S -->
            <div class="question_wrap">
                <div class="question_zone">
                    <div class="question">
                        <!-- ���� �̹��� -->
                        <div class="img_box">
                            <% '�̹��� ��� :   /m/2022/0708_examinfo/q/  %>
                            <img src="<%=img_main%>/m/2022/0708_examinfo/q/q_10_1.png" alt="�����̹���" id="q_img" onclick="return false" oncontextmenu="return false" style="-webkit-touch-callout:none;-webkit-user-select:none;-khtml-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none">
                            <br/>
                        </div>
                        <!-- // ���� �̹��� -->
                    </div>

                    <!-- ���� ��ư -->
                    <div class="btn_wrap subject">
                        <a href="javascript:;" name="btn_prev_subj" title="���� ����">�� ���� ����</a>
                        <a href="javascript:;" name="btn_next_subj" class="next" title="���� ����">���� ���� ��</a>
                    </div>
                    <!-- //���� ��ư -->
                </div>
            </div>
            <!-- �������� E -->

            <!-- ����� S -->
            <div class="answer_sheet">
                <div class="tbl_wrap">
                    <table title="����� �Է�">
                        <colgroup>
                            <col width="16.666%">
                            <col width="16.666%">
                            <col width="16.666%">
                            <col width="16.666%">
                            <col width="16.666%">
                            <col width="16.666%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th colspan="6">���� �����</th>
                            </tr>
                        </thead>
                        <tbody>
                            
                            <tr id="answer_10_1" class="">
                                <th>1</th>
                                <td><a href="javascript:;" title="1"><span>1</span></a></td>
                                <td><a href="javascript:;" title="2"><span>2</span></a></td>
                                <td><a href="javascript:;" title="3"><span>3</span></a></td>
                                <td><a href="javascript:;" title="4"><span>4</span></a></td>
                                <td><a href="javascript:;" title="5"><span class="last">��</span></a></td>
                            </tr>
                            
                            <tr id="answer_10_2" class="">
                                <th>2</th>
                                <td><a href="javascript:;" title="1"><span>1</span></a></td>
                                <td><a href="javascript:;" title="2"><span>2</span></a></td>
                                <td><a href="javascript:;" title="3"><span>3</span></a></td>
                                <td><a href="javascript:;" title="4"><span>4</span></a></td>
                                <td><a href="javascript:;" title="5"><span class="last">��</span></a></td>
                            </tr>
                            
                            <tr id="answer_10_3" class="">
                                <th>3</th>
                                <td><a href="javascript:;" title="1"><span>1</span></a></td>
                                <td><a href="javascript:;" title="2"><span>2</span></a></td>
                                <td><a href="javascript:;" title="3"><span>3</span></a></td>
                                <td><a href="javascript:;" title="4"><span>4</span></a></td>
                                <td><a href="javascript:;" title="5"><span class="last">��</span></a></td>
                            </tr>
                            
                            <tr id="answer_10_4" class="end">
                                <th>4</th>
                                <td><a href="javascript:;" title="1"><span>1</span></a></td>
                                <td><a href="javascript:;" title="2"><span>2</span></a></td>
                                <td><a href="javascript:;" title="3"><span>3</span></a></td>
                                <td><a class="on" href="javascript:;" title="4"><span>4</span></a></td>
                                <td><a href="javascript:;" title="5"><span class="last">��</span></a></td>
                            </tr>
                            
                            <tr id="answer_10_5" class="">
                                <th>5</th>
                                <td><a href="javascript:;" title="1"><span>1</span></a></td>
                                <td><a href="javascript:;" title="2"><span>2</span></a></td>
                                <td><a href="javascript:;" title="3"><span>3</span></a></td>
                                <td><a href="javascript:;" title="4"><span>4</span></a></td>
                                <td><a href="javascript:;" title="5"><span class="last">��</span></a></td>
                            </tr>
                            
                        </tbody>
                    </table>
                    <table title="����� �Է�">
                        <colgroup>
                            <col width="16.666%">
                            <col width="16.666%">
                            <col width="16.666%">
                            <col width="16.666%">
                            <col width="16.666%">
                            <col width="16.666%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th colspan="6">���� �����</th>
                            </tr>
                        </thead>
                        <tbody>
                            
                            <tr id="answer_11_1" class="end">
                                <th>1</th>
                                <td><a class="on" href="javascript:;" title="1"><span>1</span></a></td>
                                <td><a href="javascript:;" title="2"><span>2</span></a></td>
                                <td><a href="javascript:;" title="3"><span>3</span></a></td>
                                <td><a href="javascript:;" title="4"><span>4</span></a></td>
                                <td><a href="javascript:;" title="5"><span class="last">��</span></a></td>
                            </tr>
                            
                            <tr id="answer_11_2" class="end">
                                <th>2</th>
                                <td><a href="javascript:;" title="1"><span>1</span></a></td>
                                <td><a class="on" href="javascript:;" title="2"><span>2</span></a></td>
                                <td><a href="javascript:;" title="3"><span>3</span></a></td>
                                <td><a href="javascript:;" title="4"><span>4</span></a></td>
                                <td><a href="javascript:;" title="5"><span class="last">��</span></a></td>
                            </tr>
                            
                            <tr id="answer_11_3" class="end">
                                <th>3</th>
                                <td><a href="javascript:;" title="1"><span>1</span></a></td>
                                <td><a href="javascript:;" title="2"><span>2</span></a></td>
                                <td><a class="on" href="javascript:;" title="3"><span>3</span></a></td>
                                <td><a href="javascript:;" title="4"><span>4</span></a></td>
                                <td><a href="javascript:;" title="5"><span class="last">��</span></a></td>
                            </tr>
                            
                            <tr id="answer_11_4" class="">
                                <th>4</th>
                                <td><a href="javascript:;" title="1"><span>1</span></a></td>
                                <td><a href="javascript:;" title="2"><span>2</span></a></td>
                                <td><a href="javascript:;" title="3"><span>3</span></a></td>
                                <td><a href="javascript:;" title="4"><span>4</span></a></td>
                                <td><a href="javascript:;" title="5"><span class="last">��</span></a></td>
                            </tr>
                            
                            <tr id="answer_11_5" class="end">
                                <th>5</th>
                                <td><a href="javascript:;" title="1"><span>1</span></a></td>
                                <td><a href="javascript:;" title="2"><span>2</span></a></td>
                                <td><a href="javascript:;" title="3"><span>3</span></a></td>
                                <td><a href="javascript:;" title="4"><span>4</span></a></td>
                                <td><a class="on" href="javascript:;" title="5"><span class="last">��</span></a></td>
                            </tr>
                            
                        </tbody>
                    </table>
                    <table title="����� �Է�">
                        <colgroup>
                            <col width="16.666%">
                            <col width="16.666%">
                            <col width="16.666%">
                            <col width="16.666%">
                            <col width="16.666%">
                            <col width="16.666%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th colspan="6">�ѱ��� �����</th>
                            </tr>
                        </thead>
                        <tbody>
                            
                            <tr id="answer_12_1" class="">
                                <th>1</th>
                                <td><a href="javascript:;" title="1"><span>1</span></a></td>
                                <td><a href="javascript:;" title="2"><span>2</span></a></td>
                                <td><a href="javascript:;" title="3"><span>3</span></a></td>
                                <td><a href="javascript:;" title="4"><span>4</span></a></td>
                                <td><a href="javascript:;" title="5"><span class="last">��</span></a></td>
                            </tr>
                            
                            <tr id="answer_12_2" class="">
                                <th>2</th>
                                <td><a href="javascript:;" title="1"><span>1</span></a></td>
                                <td><a href="javascript:;" title="2"><span>2</span></a></td>
                                <td><a href="javascript:;" title="3"><span>3</span></a></td>
                                <td><a href="javascript:;" title="4"><span>4</span></a></td>
                                <td><a href="javascript:;" title="5"><span class="last">��</span></a></td>
                            </tr>
                            
                            <tr id="answer_12_3" class="">
                                <th>3</th>
                                <td><a href="javascript:;" title="1"><span>1</span></a></td>
                                <td><a href="javascript:;" title="2"><span>2</span></a></td>
                                <td><a href="javascript:;" title="3"><span>3</span></a></td>
                                <td><a href="javascript:;" title="4"><span>4</span></a></td>
                                <td><a href="javascript:;" title="5"><span class="last">��</span></a></td>
                            </tr>
                            
                            <tr id="answer_12_4" class="">
                                <th>4</th>
                                <td><a href="javascript:;" title="1"><span>1</span></a></td>
                                <td><a href="javascript:;" title="2"><span>2</span></a></td>
                                <td><a href="javascript:;" title="3"><span>3</span></a></td>
                                <td><a href="javascript:;" title="4"><span>4</span></a></td>
                                <td><a href="javascript:;" title="5"><span class="last">��</span></a></td>
                            </tr>
                            
                            <tr id="answer_12_5" class="">
                                <th>5</th>
                                <td><a href="javascript:;" title="1"><span>1</span></a></td>
                                <td><a href="javascript:;" title="2"><span>2</span></a></td>
                                <td><a href="javascript:;" title="3"><span>3</span></a></td>
                                <td><a href="javascript:;" title="4"><span>4</span></a></td>
                                <td><a href="javascript:;" title="5"><span class="last">��</span></a></td>
                            </tr>
                            
                        </tbody>
                    </table>
                </div>

                <p class="tiny_txt">* ��� ����� �Է��ϸ� ��� ������ �����մϴ�.</p>
                <a id="btn_final_apply" href="javascript:;" class="answer_check" title="��� ����">��� ����</a>
            </div>
            <!-- // ����� E -->
        </div>
    </div>
</div></div>
                
<!-- CSS -->
<div class="code-box css"><link type="text/css" rel="stylesheet" href="/css/exam_style.css">
<link type="text/css" rel="stylesheet" href="/css/exam_style2.css">
<link type="text/css" rel="stylesheet" href="/css/exam_popup.css"></div>

<p class="page_text">�ް������� ������ ���������� ���Ǵ� �����н� ���� ����Դϴ�.<br>
�������� �������� ����, ����, �ѱ��� �� ����� 5���� ��, �� 15������ �����ϸ�<br>
�ش� �������� ����� �������� ���� ������� �н� ������ �����ϰ� �����ϰ� ���� ������ �������ݴϴ�.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-html css act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/exam/basic/gong_3/apply_start.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE<!--- ���ó : �ް������� �հݿ��� ������--></a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#�����н�</p> </li>
                            <li><p>#������</p> </li>
                            <li><p>#������</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->
            







            <div class="page_text_wrap">
                <p class="page_head">ä�����</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                
<!-- HTML -->
<div class="code-box html"><div class="eventWrap">
    <div id="apply_result" class="exam_info result on">
        <div class="new_basic_cont on">
            <div class="inner">
                <h5>ä�����</h5>
                <div class="result_tab on">
                    <ul class="on">
                        <li class="on"><a href="javascript:;" title="���ռ���">���ռ���</a></li>
                        <li><a href="javascript:;" title="����">����</a></li>
                        <li><a href="javascript:;" title="����">����</a></li>
                        <li><a href="javascript:;" title="�ѱ���">�ѱ���</a></li>
                    </ul>
                </div>
                <div class="tbl_wrap">
                    <div class="exm_tblpoint"><strong>�����</strong> ���� �������Դϴ�.</div>

                    <!-- ���ռ��� ����ǥ S -->
                    <table title="���ռ��� ä����� ����" class="tb_scr" id="tb_scr_total">
                        <colgroup>
                            <col width="">
                            <col width="7.333%">
                            <col width="7.333%">
                            <col width="7.333%">
                            <col width="7.333%">
                            <col width="7.333%">
                            <col width="7.333%">
                            <col width="7.333%">
                            <col width="7.333%">
                            <col width="7.333%">
                            <col width="7.333%">
                            <col width="">
                        </colgroup>
                        <thead>
                            <tr>
                                <th scope="col">����</th>
                                <th scope="col" colspan="2">1��</th>
                                <th scope="col" colspan="2">2��</th>
                                <th scope="col" colspan="2">3��</th>
                                <th scope="col" colspan="2">4��</th>
                                <th scope="col" colspan="2">5��</th>
                                <th scope="col">����/��ü</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th>����</th>
                                <td class="ans_X">X</td>
                                <td>86.7</td>
                                <td class="ans_X">X</td>
                                <td>95.5</td>
                                <td class="ans_X">X</td>
                                <td>88</td>
                                <td class="ans_X">X</td>
                                <td>92.9</td>
                                <td class="ans_X">X</td>
                                <td>88.1</td>
                                <td>0/5</td>
                            </tr>
                            <tr>
                                <th>����</th>
                                <td class="ans_X">X</td>
                                <td>89</td>
                                <td class="ans_X">X</td>
                                <td>86.8</td>
                                <td class="ans_X">X</td>
                                <td>63.3</td>
                                <td class="ans_O">O</td>
                                <td>94.6</td>
                                <td class="ans_X">X</td>
                                <td>85.8</td>
                                <td>1/5</td>
                            </tr>
                            <tr>
                                <th>�ѱ���</th>
                                
                                <td class="ans_X">X</td>
                                <td>86.5</td>
                                <td class="ans_X">X</td>
                                <td>85.6</td>
                                <td class="ans_O">O</td>
                                <td>88.1</td>
                                <td class="ans_X">X</td>
                                <td>89</td>
                                <td class="ans_X">X</td>
                                <td>87.9</td>
                                <td>1/5</td>
                            </tr>
                        </tbody>
                    </table>
                    <!-- // ���ռ��� ����ǥ E -->

                    <!-- ���� ����ǥ S -->
                    <table title="���� ä����� ����" class="tb_scr" id="tb_scr_10" style="display: none;">
                        <colgroup>
                            <col width="16.666%">
                            <col width="16.666%">
                            <col width="16.666%">
                            <col width="16.666%">
                            <col width="16.666%">
                            <col width="16.666%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th scope="col">��ȣ</th>
                                <th scope="col">1��</th>
                                <th scope="col">2��</th>
                                <th scope="col">3��</th>
                                <th scope="col">4��</th>
                                <th scope="col">5��</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th>�Է´��</th>
                                <td>5</td>
                                <td>5</td>
                                <td>5</td>
                                <td>3</td>
                                <td>3</td>
                            </tr>
                            <tr>
                                <th>����</th>
                                <td class="ans_X">X(2)</td>
                                <td class="ans_X">X(3)</td>
                                <td class="ans_X">X(1)</td>
                                <td class="ans_X">X(4)</td>
                                <td class="ans_X">X(1)</td>
                            </tr>
                            <tr>
                                <th>�����(%)</th>
                                <td>86.7</td>
                                <td>95.5</td>
                                <td>88</td>
                                <td>92.9</td>
                                <td>88.1</td>
                            </tr>
                            <tr>
                                <th>���� �� �ؼ�</th>
                                <td>
                                    <a onclick="showQst('10', '1')" href="javascript:;" id="" class="qst_view" title="���� ����">���� ����</a>
                                    <a onclick="javascript:GongcampusFreePlay('E',3674, '', 0);" href="javascript:;" id="" class="qst_view" title="�ؼ����� ����"><img src="<%=img_main%>/m/2021/0819_basicexam/icon_1.png" alt=""></a>
                                </td>
                                <td>
                                    <a onclick="showQst('10', '2')" href="javascript:;" id="" class="qst_view" title="���� ����">���� ����</a>
                                    <a onclick="javascript:GongcampusFreePlay('E',3675, '', 0);" href="javascript:;" id="" class="qst_view" title="�ؼ����� ����"><img src="<%=img_main%>/m/2021/0819_basicexam/icon_1.png" alt=""></a>
                                </td>
                                <td>
                                    <a onclick="showQst('10', '3')" href="javascript:;" id="" class="qst_view" title="���� ����">���� ����</a>
                                    <a onclick="javascript:GongcampusFreePlay('E',3676, '', 0);" href="javascript:;" id="" class="qst_view" title="�ؼ����� ����"><img src="<%=img_main%>/m/2021/0819_basicexam/icon_1.png" alt=""></a>
                                </td>
                                <td>
                                    <a onclick="showQst('10', '4')" href="javascript:;" id="" class="qst_view" title="���� ����">���� ����</a>
                                    <a onclick="javascript:GongcampusFreePlay('E',3677, '', 0);" href="javascript:;" id="" class="qst_view" title="�ؼ����� ����"><img src="<%=img_main%>/m/2021/0819_basicexam/icon_1.png" alt=""></a>
                                </td>
                                <td>
                                    <a onclick="showQst('10', '5')" href="javascript:;" id="" class="qst_view" title="���� ����">���� ����</a>
                                    <a onclick="javascript:GongcampusFreePlay('E',3678, '', 0);" href="javascript:;" id="" class="qst_view" title="�ؼ����� ����"><img src="<%=img_main%>/m/2021/0819_basicexam/icon_1.png" alt=""></a>
                                </td>
                                        
                            </tr>
                        </tbody>
                    </table>
                            
                    <table title="���� ä����� ����" class="tb_scr" id="tb_scr_11" style="display: none;">
                        <colgroup>
                            <col width="16.666%">
                            <col width="16.666%">
                            <col width="16.666%">
                            <col width="16.666%">
                            <col width="16.666%">
                            <col width="16.666%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th scope="col">��ȣ</th>
                                <th scope="col">1��</th>
                                <th scope="col">2��</th>
                                <th scope="col">3��</th>
                                <th scope="col">4��</th>
                                <th scope="col">5��</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th>�Է´��</th>
                                <td>3</td>
                                <td>1</td>
                                <td>3</td>
                                <td>3</td>
                                <td>5</td>
                            </tr>
                            <tr>
                                <th>����</th>
                                <td class="ans_X">X(1)</td>
                                <td class="ans_X">X(4)</td>
                                <td class="ans_X">X(2)</td>
                                <td class="ans_O">O</td>
                                <td class="ans_X">X(4)</td>
                            </tr>
                            <tr>
                                <th>�����(%)</th>
                                <td>89</td>
                                <td>86.8</td>
                                <td>63.3</td>
                                <td>94.6</td>
                                <td>85.8</td>
                            </tr>
                            <tr>
                                <th>���� �� �ؼ�</th>
                                <td>
                                    <a onclick="showQst('11', '1')" href="javascript:;" id="" class="qst_view" title="���� ����">���� ����</a>
                                    <a onclick="javascript:GongcampusFreePlay('E',3684, '', 0);" href="javascript:;" id="" class="qst_view" title="�ؼ����� ����"><img src="<%=img_main%>/m/2021/0819_basicexam/icon_1.png" alt=""></a>
                                </td>
                                <td>
                                    <a onclick="showQst('11', '2')" href="javascript:;" id="" class="qst_view" title="���� ����">���� ����</a>
                                    <a onclick="javascript:GongcampusFreePlay('E',3685, '', 0);" href="javascript:;" id="" class="qst_view" title="�ؼ����� ����"><img src="<%=img_main%>/m/2021/0819_basicexam/icon_1.png" alt=""></a>
                                </td>
                                <td>
                                    <a onclick="showQst('11', '3')" href="javascript:;" id="" class="qst_view" title="���� ����">���� ����</a>
                                    <a onclick="javascript:GongcampusFreePlay('E',3686, '', 0);" href="javascript:;" id="" class="qst_view" title="�ؼ����� ����"><img src="<%=img_main%>/m/2021/0819_basicexam/icon_1.png" alt=""></a>
                                </td>
                                <td>
                                    <a onclick="showQst('11', '4')" href="javascript:;" id="" class="qst_view" title="���� ����">���� ����</a>
                                    <a onclick="javascript:GongcampusFreePlay('E',3687, '', 0);" href="javascript:;" id="" class="qst_view" title="�ؼ����� ����"><img src="<%=img_main%>/m/2021/0819_basicexam/icon_1.png" alt=""></a>
                                </td>
                                <td>
                                    <a onclick="showQst('11', '5')" href="javascript:;" id="" class="qst_view" title="���� ����">���� ����</a>
                                    <a onclick="javascript:GongcampusFreePlay('E',3688, '', 0);" href="javascript:;" id="" class="qst_view" title="�ؼ����� ����"><img src="<%=img_main%>/m/2021/0819_basicexam/icon_1.png" alt=""></a>
                                </td>
                            </tr>
                        </tbody>
                    </table>

                    <table title="�ѱ��� ä����� ����" class="tb_scr" id="tb_scr_12" style="display: none;">
                        <colgroup>
                            <col width="16.666%">
                            <col width="16.666%">
                            <col width="16.666%">
                            <col width="16.666%">
                            <col width="16.666%">
                            <col width="16.666%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th scope="col">��ȣ</th>
                                <th scope="col">1��</th>
                                <th scope="col">2��</th>
                                <th scope="col">3��</th>
                                <th scope="col">4��</th>
                                <th scope="col">5��</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th>�Է´��</th>
                                <td>3</td>
                                <td>2</td>
                                <td>2</td>
                                <td>2</td>
                                <td>5</td>
                            </tr>
                            <tr>
                                <th>����</th>
                                <td class="ans_X">X(1)</td>
                                <td class="ans_X">X(4)</td>
                                <td class="ans_O">O</td>
                                <td class="ans_X">X(1)</td>
                                <td class="ans_X">X(2)</td>
                            </tr>
                            <tr>
                                <th>�����(%)</th>
                                <td>86.5</td>
                                <td>85.6</td>
                                <td>88.1</td>
                                <td>89</td>
                                <td>87.9</td>
                            </tr>
                            <tr>
                                <th>���� �� �ؼ�</th>
                                <td>
                                    <a onclick="javascript:GongcampusFreePlay('E',3679, '', 0);" href="javascript:;" id="" class="qst_view" title="�ؼ����� ����"><img src="<%=img_main%>/m/2021/0819_basicexam/icon_1.png" alt=""></a>
                                </td>
                                <td>
                                    <a onclick="javascript:GongcampusFreePlay('E',3680, '', 0);" href="javascript:;" id="" class="qst_view" title="�ؼ����� ����"><img src="<%=img_main%>/m/2021/0819_basicexam/icon_1.png" alt=""></a>
                                </td>
                                <td>
                                    <a onclick="javascript:GongcampusFreePlay('E',3681, '', 0);" href="javascript:;" id="" class="qst_view" title="�ؼ����� ����"><img src="<%=img_main%>/m/2021/0819_basicexam/icon_1.png" alt=""></a>
                                </td>
                                <td>
                                    <a onclick="javascript:GongcampusFreePlay('E',3682, '', 0);" href="javascript:;" id="" class="qst_view" title="�ؼ����� ����"><img src="<%=img_main%>/m/2021/0819_basicexam/icon_1.png" alt=""></a>
                                </td>
                                <td>
                                    <a onclick="javascript:GongcampusFreePlay('E',3683, '', 0);" href="javascript:;" id="" class="qst_view" title="�ؼ����� ����"><img src="<%=img_main%>/m/2021/0819_basicexam/icon_1.png" alt=""></a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <!-- // ���� ����ǥ E -->
                    <p class="tiny_txt" style="text-align: left;opacity:0.5;">
                        * ������� �ް������� Ǯ���� ������ �����Դϴ�.
                    </p>
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
                <div class="img_box">
                    <img src="<%=img_main%>/m/2021/0106_basicexam/exam_img/question_01_res.png" alt="�����̹���" id="q_img2" onclick="return false;" oncontextmenu="return false" style="-webkit-touch-callout:none;-webkit-user-select:none;-khtml-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none">
                </div>
            </div>
            <button onclick="" class="btnClose">�˾� �ݱ�</button>
        </div>
    </div>
</div></div>
                
<!-- CSS -->
<div class="code-box css"><link type="text/css" rel="stylesheet" href="/css/exam_style.css">
<link type="text/css" rel="stylesheet" href="/css/exam_style2.css">
<link type="text/css" rel="stylesheet" href="/css/exam_popup.css"></div>

<!-- JS -->
<script>$('#apply_result .result_tab li').on('click', function(e){
    e.preventDefault();
    $(this).addClass('on');
    $(this).siblings().removeClass('on');
    $('#apply_result .tbl_wrap').find('.tb_scr').hide();
    $('#apply_result .tbl_wrap').find('.tb_scr').eq($(this).index()).show();;
});

function showQst(subj_cd,qno) {
    var ts = new Date().getTime();
    src_no = qno;
    var src = "<%=img_main%>/m/2022/0708_examinfo/qa/qa_"+subj_cd+"_"+src_no+".png?now="+ts
    // console.log(src)
    
    $("#q_img2").prop("src",src);
    
    qst_popupOn();
    $('div.scroll_box').animate({scrollTop : 0}, 0);
}

function qst_popupOn(subj_nm) {
    if($("#questnPop").css("display") == "none"){
        $("#questnPop").show();
        //wrapWindowByMask();
        $("body").bind('touchmove', function(e){e.preventDefault()});
    }else{
        $("questnPop").hide();
        $("body").unbind('touchmove');
    }
    return false;
}
(function() {
    $('#questnPop .btnClose').on('click', function (e) {
        e.preventDefault();
        $('#questnPop').hide().removeClass('on');
    });
    $('#questnPop .dimBg').on('click', function () {
        $('#questnPop .btnClose').trigger('click');
    });
})();
</script>

<p class="page_text">�ް������� ������ ���������� ���Ǵ� �����н� ���� ä�� ����Դϴ�.<br> ����, ����, �ѱ����� ���ռ����� ����� �� �ؼ� ���� ���� �����ϰ� �ֽ��ϴ�.<br> �ؼ� ������ �÷��� ��ư�� ������ Popup�� �������� ��Ÿ���� �����ڵ带 �̿��Ͽ� ������ �� �ֽ��ϴ�. </p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-html css act"></pre>
<pre class="language-javascript act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/exam/basic/gong_3/apply_start.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE<!--- ���ó : �ް������� �հݿ��� ������--></a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#ä��</p> </li>
                            <li><p>#���ռ���</p> </li>
                            <li><p>#�ؼ�</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->

            <div class="page_text_wrap">
                <p class="page_head">���� ���� �� �հ� ���� ����</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                
<!-- HTML -->
<div class="code-box html"><div class="eventWrap">
    <div id="apply_result" class="exam_info result on">
        <div class="new_basic_cont on">
            <div class="inner">
                <h5>���� ���� �� �հ� ���� ����</h5>
                <div class="exm_point">2023 <br>���� ���� <br>����</div>
                <div class="exm_tblpoint"><strong>�հݰ��ɼ�</strong> ���� �������Դϴ�.</div>
                <div class="tbl_wrap mb0">
                    <table title="2023 ���� ����ǥ">
                        <colgroup>
                            <col width="20%">
                            <col width="20%">
                            <col width="20%">
                            <col width="20%">
                            <col width="20%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th colspan="5">
                                    2023 ���� ����
                                    <span class="predict_score"><strong>68 ��</strong> (100�� ����)</span>
                                </th>
                            </tr>
                            <tr>
                                <th scope="col">����</th>
                                <th scope="col">����</th>
                                <th scope="col">�ѱ���</th>
                                <th scope="col">�������ѷ�</th>
                                <th scope="col">�����а���</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>75</td>
                                <td>70</td>
                                <td>80</td>
                                <td>55</td>
                                <td>60</td>
                            </tr>
                        </tbody>
                    </table>
                    <p class="tiny_txt gray">�� 2023 ���� ������ �ް������� ��������� ���� �Ⱓ�� ���� ������ ������ ��ȭ�� �м��� ������ ����Դϴ�.</p>
                    <p class="tiny_txt gray">�� �� �ڷ�� ����θ� Ȱ���Ͻñ� �ٶ��ϴ�.</p>
                </div>
                <!-- ���� ���� �� �հ� ���� ���� E -->
                <!-- ���� ���� �հ� ���� ���� S -->
                <div class="cont_atpt">
                    <h5 class="bg_tit"><span>ȫ�浿</span>���� ���� ���� �հ� ���� ����</h5>
                    <div class="interest_box interest_box1">
                        <h6><strong>����1</strong> - ������ 9�� �Ϲ�����-����</h6>
                        <table>
                            <colgroup>
                                <col width="20%">
                                <col width="24%">
                                <col width="">
                                <col width="">
                                <col width="">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <td rowspan="4">
                                        <img src="<%=img_main%>/m/2022/0708_examinfo/amblem/1911-1011410110531.png" alt="">
                                    </td>
                                </tr>
                                <tr>
                                    <th>����</th>
                                    <td><strong>2022</strong></td>
                                    <td><strong>2021</strong></td>
                                    <td><strong>�հݰ��ɼ�</strong></td>
                                </tr>
                                <tr>
                                    <th>�����ο�(��)</th>
                                    <td>456</td>
                                    <td>416</td>
                                    <td rowspan="2">
                                        <span class="state st1">�հ�<br />����</span>
                                        <!-- <span class="state st2">�հ�<br />����</span> -->
                                    </td>
                                </tr>
                                <tr>
                                    <th>�����(:1)</th>
                                    <td>93.92</td>
                                    <td>100.37</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="interest_box interest_box2">
                        <h6><strong>����2</strong> - ������ 9�� �Ϲ�����(����)-����</h6>
                        <table>
                            <colgroup>
                                <col width="20%">
                                <col width="24%">
                                <col width="">
                                <col width="">
                                <col width="">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <td rowspan="4">
                                        <img src="<%=img_main%>/m/2022/0708_examinfo/amblem/1911-1011010110571.png" alt="">
                                    </td>
                                </tr>
                                <tr>
                                    <th>����</th>
                                    <td><strong>2022</strong></td>
                                    <td><strong>2021</strong></td>
                                    <td><strong>�հݰ��ɼ�</strong></td>
                                </tr>
                                <tr>
                                    <th>�����ο�(��)</th>
                                    <td>90</td>
                                    <td>26</td>
                                    <td rowspan="2">
                                        <span class="state st2">�հ�<br />����</span>
                                    </td>
                                </tr>
                                <tr>
                                    <th>�����(:1)</th>
                                    <td>20.47</td>
                                    <td>33.85</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div> <!-- // cont_atpt -->
                <div class="cont_atpt_explain">
                    <h5 class="bg_tit">���� ���� �� �հ� ���� ����</h5>
                    <div>
                        2023�� ������ ������ <strong>���� ���� ������ <span class="cr_blue">68��</span>�̸�,</strong><br>
                        �ڽ��� ���� ������ �������� �ϴ��� ����Ʈ���� ���ĺ� �հ� ���ɼ��� ������ �� �ֽ��ϴ�.
                        <br><br>
                        ���θ� �������� �󸶵��� �ʾ� ���ʰ� ������ ��Ȳ�Դϴ�.<br />
                        �� ���� ������ �����ڲ��� ���θ� ������ ���� �ʰ� ���迡 �������� �� �ް� �Ǵ� �����Դϴ�.<br />
                        �ް��������� �����ϴ� �н����� ���� ������ �����Ͻø� � ������ ���Ͻô��� �հ��Ͻ� �� ������, ��ǥ�� ��� ������ �����Ͻñ� �ٶ��ϴ�.
                    </div>
                </div> <!-- // cont_atpt_explain -->
                <!-- ���� ���� �հ� ���� ���� E -->
            </div>
        </div>
    </div>
</div></div>
                
<!-- CSS -->
<div class="code-box css"><link type="text/css" rel="stylesheet" href="/css/exam_style.css">
<link type="text/css" rel="stylesheet" href="/css/exam_style2.css">
<link type="text/css" rel="stylesheet" href="/css/exam_popup.css"></div>

<p class="page_text">�ް������� ������ ���������� ���Ǵ� ����Դϴ�.<br> 
����ڰ� ������ �������� ����� ���� ���� ���迡���� ���� ������ �����ϰ� �ֽ��ϴ�.<br> 
���� ���� ������ �������� ����ڰ� ����ϴ� ������ �հ� ���ɼ��� ���հݰ��ɡ��� ���հݵ��������� ������ ǥ���Ͽ� �ְ� �ֽ��ϴ�.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-html css act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/exam/basic/gong_3/apply_start.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE<!--- ���ó : �ް������� �հݿ��� ������--></a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#�հݿ���</p> </li>
                            <li><p>#������</p> </li>
                            <li><p>#��������</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->

            <div class="page_text_wrap">
                <p class="page_head">���� ���� ����</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                
<!-- HTML -->
<div class="code-box html"><div class="eventWrap">
    <div id="apply_result" class="exam_info result on">
        <div class="new_basic_cont on">
            <div class="inner">
                <div class="item tm2">
                    <div class="itrt_series">
                        <strong class="series_tit"><img src="<%=img_main%>/m/2021/0709_basicexam/icon_i.png" alt=""> ���� ���� ����</strong>
                        <div class="series_w">
                            <span class="sample_ex">������ ����</span>
                            <div class="series_table_w">
                                <table class="series_table">
                                    <colgroup class="mo_none">
                                        <col width="18%">
                                        <col width="8%">
                                        <col width="8%">
                                        <col width="8%">
                                        <col width="8%">
                                        <col width="10%">
                                        <col width="28%">
                                        <col width="12%">
                                    </colgroup>
                                    <colgroup class="mo_block">
                                        <col width="18%">
                                        <col width="8%">
                                        <col width="8%">
                                        <col width="8%">
                                        <col width="8%">
                                        <col width="10%">
                                        <col width="28%">
                                        <col width="12%">
                                    </colgroup>
                                    <thead>
                                        <tr class="mo_none">
                                            <th rowspan="2">����<span class="mo_none">-����</span></th>
                                            <th colspan="2">2022</th>
                                            <th colspan="3">2021</th>
                                            <th rowspan="2">��������</th>
                                            <th rowspan="2">�հ� ���� ����</th>
                                        </tr>
                                        <tr>
                                            <th class="mo_block">����</th>
                                            <th class="mo_none">�����ο�</th>
                                            <th class="mo_none">�����(:1)</th>
                                            <th class="mo_none">�����ο�</th>
                                            <th class="mo_none">�����(:1)</th>
                                            <th>21�� �հݼ�</th>
                                            <th class="mo_block">��������</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        
                                        <tr class="challenge">
                                            <th>��������</th> 
                                            <td class="mo_none">71</td>   
                                            <td class="mo_none">-</td>  
                                            <td class="mo_none">51</td>  
                                            <td class="mo_none">282.24</td>    
                                            <td>411.84</td>
                                            <td class="subject">
                                                <a href="javascript:;" onclick="qst_popupOn2('�����а���');">�����а���</a>
                                                <a href="javascript:;" onclick="qst_popupOn2('�������ѷ�');">�������ѷ�</a>
                                            </td>
                                            <td class="mo_none"><span class="result">����</span></td>
                                        </tr>
                                                
                                        <tr class="possibility">
                                            <th>���Ա�����</th> 
                                            <td class="mo_none">17</td>   
                                            <td class="mo_none">-</td>  
                                            <td class="mo_none">28</td>  
                                            <td class="mo_none">144.46</td>    
                                            <td>403.66</td>
                                            <td class="subject">
                                                <a href="javascript:;" onclick="qst_popupOn2('�������ѷ�');">�������ѷ�</a>
                                                <a href="javascript:;" onclick="qst_popupOn2('����������');">����������</a>
                                            </td>
                                            <td class="mo_none"><span class="result">����</span></td>
                                        </tr>
                                                
                                        <tr class="challenge good">
                                            <th>�Ϲ�����-����</th> 
                                            <td class="mo_none">456</td>   
                                            <td class="mo_none">-</td>  
                                            <td class="mo_none">416</td>  
                                            <td class="mo_none">100.37</td>    
                                            <td>400.84</td>
                                            <td class="subject">
                                                <a href="javascript:;" onclick="qst_popupOn2('�������ѷ�');">�������ѷ�</a>
                                                <a href="javascript:;" onclick="qst_popupOn2('�����а���');">�����а���</a>
                                            </td>
                                            <td class="mo_none"><span class="result">����</span></td>
                                        </tr>
                                                
                                        <tr class="challenge">
                                            <th>����</th> 
                                            <td class="mo_none">38</td>   
                                            <td class="mo_none">-</td>  
                                            <td class="mo_none">55</td>  
                                            <td class="mo_none">51.56</td>    
                                            <td>400.09</td>
                                            <td class="subject">
                                                <a href="javascript:;" onclick="qst_popupOn2('����������');">����������</a>
                                                <a href="javascript:;" onclick="qst_popupOn2('ȸ�����');">ȸ�����</a>
                                            </td>
                                            <td class="mo_none"><span class="result">����</span></td>
                                        </tr>
                                                
                                        <tr class="challenge">
                                            <th>��������</th> 
                                            <td class="mo_none">60</td>   
                                            <td class="mo_none">-</td>  
                                            <td class="mo_none">60</td>  
                                            <td class="mo_none">20.52</td>    
                                            <td>396.75</td>
                                            <td class="subject">
                                                <a href="javascript:;" onclick="qst_popupOn2('�������Ź�');">�������Ź�</a>
                                                <a href="javascript:;" onclick="qst_popupOn2('�������ѷ�');">�������ѷ�</a>
                                            </td>
                                            <td class="mo_none"><span class="result">����</span></td>
                                        </tr>
                                                
                                        <tr class="challenge">
                                            <th>�Ϲ�����(����)</th> 
                                            <td class="mo_none">338</td>   
                                            <td class="mo_none">-</td>  
                                            <td class="mo_none">383</td>  
                                            <td class="mo_none">30.37</td>    
                                            <td>394.1</td>
                                            <td class="subject">
                                                <a href="javascript:;" onclick="qst_popupOn2('�������ѷ�');">�������ѷ�</a>
                                                <a href="javascript:;" onclick="qst_popupOn2('�����а���');">�����а���</a>
                                            </td>
                                            <td class="mo_none"><span class="result">����</span></td>
                                        </tr>
                                                
                                        <tr class="possibility">
                                            <th>���</th> 
                                            <td class="mo_none">47</td>   
                                            <td class="mo_none">-</td>  
                                            <td class="mo_none">66</td>  
                                            <td class="mo_none">19.42</td>    
                                            <td>393.42</td>
                                            <td class="subject">
                                                <a href="javascript:;" onclick="qst_popupOn2('����а���');">����а���</a>
                                                <a href="javascript:;" onclick="qst_popupOn2('�����а���');">�����а���</a>
                                            </td>
                                            <td class="mo_none"><span class="result">����</span></td>
                                        </tr>
                                                
                                        <tr class="challenge">
                                            <th>����</th> 
                                            <td class="mo_none">248</td>   
                                            <td class="mo_none">-</td>  
                                            <td class="mo_none">233</td>  
                                            <td class="mo_none">44.68</td>    
                                            <td>389.08</td>
                                            <td class="subject">
                                                <a href="javascript:;" onclick="qst_popupOn2('����');">����</a>
                                                <a href="javascript:;" onclick="qst_popupOn2('����Ҽ۹�');">����Ҽ۹�</a>
                                            </td>
                                            <td class="mo_none"><span class="result">����</span></td>
                                        </tr>
                                                
                                        <tr class="challenge">
                                            <th>�Ϲ�����(����)-����</th> 
                                            <td class="mo_none">90</td>   
                                            <td class="mo_none">-</td>  
                                            <td class="mo_none">26</td>  
                                            <td class="mo_none">33.85</td>    
                                            <td>388.18</td>
                                            <td class="subject">
                                                <a href="javascript:;" onclick="qst_popupOn2('�������ѷ�');">�������ѷ�</a>
                                                <a href="javascript:;" onclick="qst_popupOn2('�����а���');">�����а���</a>
                                            </td>
                                            <td class="mo_none"><span class="result">����</span></td>
                                        </tr>
                                                
                                        <tr class="challenge">
                                            <th>���뵿</th> 
                                            <td class="mo_none">469</td>   
                                            <td class="mo_none">-</td>  
                                            <td class="mo_none">656</td>  
                                            <td class="mo_none">27.27</td>    
                                            <td>387.34</td>
                                            <td class="subject">
                                                <a href="javascript:;" onclick="qst_popupOn2('�뵿������');">�뵿������</a>
                                                <a href="javascript:;" onclick="qst_popupOn2('�������ѷ�');">�������ѷ�</a>
                                            </td>
                                            <td class="mo_none"><span class="result">����</span></td>
                                        </tr>
                                                
                                        <tr class="challenge">
                                            <th>�������</th> 
                                            <td class="mo_none">19</td>   
                                            <td class="mo_none">-</td>  
                                            <td class="mo_none">15</td>  
                                            <td class="mo_none">52.73</td>    
                                            <td>382.14</td>
                                            <td class="subject">
                                                <a href="javascript:;" onclick="qst_popupOn2('����');">����</a>
                                                <a href="javascript:;" onclick="qst_popupOn2('����Ҽ۹�');">����Ҽ۹�</a>
                                            </td>
                                            <td class="mo_none"><span class="result">����</span></td>
                                        </tr>
                                                
                                        <tr class="challenge">
                                            <th>��ȣ(��)</th> 
                                            <td class="mo_none">59</td>   
                                            <td class="mo_none">-</td>  
                                            <td class="mo_none">56</td>  
                                            <td class="mo_none">60.7</td>    
                                            <td>381.85</td>
                                            <td class="subject">
                                                <a href="javascript:;" onclick="qst_popupOn2('����Ҽ۹�����');">����Ҽ۹�����</a>
                                                <a href="javascript:;" onclick="qst_popupOn2('��ȸ�����а���');">��ȸ�����а���</a>
                                            </td>
                                            <td class="mo_none"><span class="result">����</span></td>
                                        </tr>
                                                
                                        <tr class="challenge">
                                            <th>�Ϲ�����(����)-��õ�����</th> 
                                            <td class="mo_none">149</td>   
                                            <td class="mo_none">-</td>  
                                            <td class="mo_none">31</td>  
                                            <td class="mo_none">29.16</td>    
                                            <td>379.5</td>
                                            <td class="subject">
                                                <a href="javascript:;" onclick="qst_popupOn2('�������ѷ�');">�������ѷ�</a>
                                                <a href="javascript:;" onclick="qst_popupOn2('�����а���');">�����а���</a>
                                            </td>
                                            <td class="mo_none"><span class="result">����</span></td>
                                        </tr>
                                                
                                        <tr class="challenge good">
                                            <th>����</th> 
                                            <td class="mo_none">850</td>   
                                            <td class="mo_none">-</td>  
                                            <td class="mo_none">1,111</td>  
                                            <td class="mo_none">17.72</td>    
                                            <td>375.34</td>
                                            <td class="subject">
                                                <a href="javascript:;" onclick="qst_popupOn2('��������');">��������</a>
                                                <a href="javascript:;" onclick="qst_popupOn2('ȸ����');">ȸ����</a>
                                            </td>
                                            <td class="mo_none"><span class="result">����</span></td>
                                        </tr>
                                                
                                        <tr class="challenge">
                                            <th>ö������</th> 
                                            <td class="mo_none">19</td>   
                                            <td class="mo_none">-</td>  
                                            <td class="mo_none">18</td>  
                                            <td class="mo_none">44.78</td>    
                                            <td>372.56</td>
                                            <td class="subject">
                                                <a href="javascript:;" onclick="qst_popupOn2('����Ҽ۹�����');">����Ҽ۹�����</a>
                                                <a href="javascript:;" onclick="qst_popupOn2('�����ѷ�');">�����ѷ�</a>
                                            </td>
                                            <td class="mo_none"><span class="result">����</span></td>
                                        </tr>
                                                
                                        <tr class="challenge">
                                            <th>����(��)</th> 
                                            <td class="mo_none">118</td>   
                                            <td class="mo_none">-</td>  
                                            <td class="mo_none">52</td>  
                                            <td class="mo_none">24.54</td>    
                                            <td>365.06</td>
                                            <td class="subject">
                                                <a href="javascript:;" onclick="qst_popupOn2('�����а���');">�����а���</a>
                                                <a href="javascript:;" onclick="qst_popupOn2('����Ҽ۹�����');">����Ҽ۹�����</a>
                                            </td>
                                            <td class="mo_none"><span class="result">����</span></td>
                                        </tr>
                                                
                                        <tr class="challenge">
                                            <th>��ȣ(��)</th> 
                                            <td class="mo_none">137</td>   
                                            <td class="mo_none">-</td>  
                                            <td class="mo_none">131</td>  
                                            <td class="mo_none">18.85</td>    
                                            <td>364.62</td>
                                            <td class="subject">
                                                <a href="javascript:;" onclick="qst_popupOn2('����Ҽ۹�����');">����Ҽ۹�����</a>
                                                <a href="javascript:;" onclick="qst_popupOn2('��ȸ�����а���');">��ȸ�����а���</a>
                                            </td>
                                            <td class="mo_none"><span class="result">����</span></td>
                                        </tr>
                                                
                                        <tr class="challenge">
                                            <th>�������</th> 
                                            <td class="mo_none">125</td>   
                                            <td class="mo_none">-</td>  
                                            <td class="mo_none">180</td>  
                                            <td class="mo_none">17.81</td>    
                                            <td>361.72</td>
                                            <td class="subject">
                                                <a href="javascript:;" onclick="qst_popupOn2('�뵿������');">�뵿������</a>
                                                <a href="javascript:;" onclick="qst_popupOn2('�������_�ɸ��а���');">������㡤�ɸ��а���</a>
                                            </td>
                                            <td class="mo_none"><span class="result">����</span></td>
                                        </tr>
                                                
                                        <tr class="challenge">
                                            <th>����(��)</th> 
                                            <td class="mo_none">705</td>   
                                            <td class="mo_none">-</td>  
                                            <td class="mo_none">603</td>  
                                            <td class="mo_none">11.28</td>    
                                            <td>340.59</td>
                                            <td class="subject">
                                                <a href="javascript:;" onclick="qst_popupOn2('�����а���');">�����а���</a>
                                                <a href="javascript:;" onclick="qst_popupOn2('����Ҽ۹�����');">����Ҽ۹�����</a>
                                            </td>
                                            <td class="mo_none"><span class="result">����</span></td>
                                        </tr>
                                                
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="pc_txt">
                            <p class="tiny_txt gray">�� 2021�� ���� �հݼ��� ���ð��� �� ���������� ������ �����Դϴ�.</p>
                            <p class="tiny_txt gray">�� �� �����н� �������� ����� 2023�� ���������� �ݿ��Ͽ� <span class="icon_cl">����</span> <span class="icon_pb">����</span> ���� �հ� ���ɼ��� �����Ͽ����ϴ�.</p>
                            <p class="tiny_txt gray">�� �������� �����⸦ Ŭ���Ͽ� �� ������ ���ù����� Ȯ���� �� �ֽ��ϴ�. ���� ������ ���� ������� ���� ���� ������ �����˴ϴ�.</p>
                        </div>
                        <div class="mo_txt">
                            <p class="tiny_txt gray">�� �հ� ������ <span class="bg_pink"></span> , �հ� ���ɱ� <span class="bg_sky"></span></p>
                            <p class="tiny_txt gray">�� �� �����н� �������� ����� 2023�� ���� ������ �ݿ��Ͽ� �հ� ���ɼ��� �����Ͽ����ϴ�.</p>
                            <p class="tiny_txt gray">�� 2021�� ���� �հݼ��� ���ð��� �� ���������� ������ �����Դϴ�.</p>
                            <p class="tiny_txt gray">�� �������� �����⸦ Ŭ���Ͽ� �� ������ ���ù����� Ȯ���� �� �ֽ��ϴ�. ���� ������ ���� ������� ���� ���� ������ �����˴ϴ�.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <!--  ���ǰ������� ���� �̹��� �˾� -->
    <div id="questnPop2" class="layerPopup questn_pop" style="display: none;">
        <span class="dimBg" onclick="">-</span>
        <div class="contentBox">
            <!-- <p class="tit">���� �� �ؼ�</p> -->
            <div class="scroll_box">
                <div class="img_box">
                    <img src="<%=img_main%>/m/2021/0106_basicexam/exam_img/question_01_res.png" alt="�����̹���" id="sample_q_img" onclick="return false;" oncontextmenu="return false" style="-webkit-touch-callout:none;-webkit-user-select:none;-khtml-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none">
                </div>
            </div>
            <button onclick="" class="btnClose">�˾� �ݱ�</button>
        </div>
    </div>
</div></div>
                
<!-- CSS -->
<div class="code-box css"><link type="text/css" rel="stylesheet" href="/css/exam_style.css">
<link type="text/css" rel="stylesheet" href="/css/exam_style2.css">
<link type="text/css" rel="stylesheet" href="/css/exam_popup.css"></div>

<!-- JS -->
<script>//  �˾� ����
function qst_popupOn2(subj_nm) {
    var ts = new Date().getTime();
    var src = "<%=img_main%>/m/2022/0708_examinfo/sample_q/"+subj_nm+".png?now="+ts
    $("#sample_q_img").prop("src",src);
    
    if($("#questnPop2").css("display") == "none"){
        $("#questnPop2").show();
        //wrapWindowByMask();
        $("body").bind('touchmove', function(e){e.preventDefault()});
    }else{
        $("questnPop2").hide();
        $("body").unbind('touchmove');
    }
    return false;
}
(function () {
    $('#questnPop2 .btnClose').on('click', function (e) {
        e.preventDefault();
        $('#questnPop2').hide().removeClass('on');
    });
    $('#questnPop2 .dimBg').on('click', function () {
        $('#questnPop2 .btnClose').trigger('click');
    });
})();
</script>

<p class="page_text">�ް������� ������ ���������� ���Ǵ� ����Դϴ�.<br> ������� ���������� �������� ���ĺ� �հ� ���� ���� �� �ش� ���� ������ ������ �����ϰ� �ֽ��ϴ�.<br> ����ڰ� ���� ���ķ� ����� ������ ��� #6a68ff �������� ���� ǥ�õ˴ϴ�.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-html css act"></pre>
<pre class="language-javascript act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/exam/basic/gong_3/apply_start.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE<!--- ���ó : �ް������� �հݿ��� ������--></a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#�հݿ���</p> </li>
                            <li><p>#ǥ</p> </li>
                            <li><p>#��������</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->

            <!-- #include virtual = "/inc/tweet_popup_all.asp"-->
            <!-- #include virtual = "/inc/ball.asp"-->
            <!-- #include virtual = "/inc/footer.asp"-->
        </div> <!--//page_inner -->
    
    </div>


    <div class="ank"></div>

    <style>
    .page_wrap.page_exam .eventWrap{min-height:inherit;position:relative;padding:0;}
    .page_wrap.page_exam .certifi_pop{position:relative;}
    .page_wrap.page_exam .certifi_pop .bg{position:absolute;}
    .page_wrap.page_exam .black_bg{position:absolute;}
    .page_wrap.page_exam .eventWrap .inner{width:100%;}
    .page_wrap.page_exam .eventWrap .exam_info{padding:30px 0;}

    .page_wrap.page_exam .amblem_set{position:relative;left:-5px;text-align: center;}
    .page_wrap.page_exam .amblem_set img{width:95px;margin:5px;}

    .page_wrap.page_exam .eventWrap .tbl_wrap{overflow:inherit;max-height:inherit;}
    .page_wrap.page_exam .layerPopup{position: absolute;}
    .page_wrap.page_exam .certifi_pop .popinner{width:auto;}

    .interest_pop .btn:hover {color:#fff;}
    .eventWrap .layerPopup.questn_pop .scroll_box {max-height: 440px; }

    @media (max-width: 768px) {
        .eventWrap .layerPopup.questn_pop .contentBox .img_box { max-height: 45vw;}
    }
    </style>

<!-- #include virtual = "/inc/bottom.asp"-->