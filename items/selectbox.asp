<!-- #include virtual = "/inc/top.asp"-->
<link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/megagong_common_lab.css" />
<script src="<%=url_main%>/common/js/ui_lab.js"></script>
<%
dp1 = 2
dp2 = 11
%>
    <!-- #include virtual = "/inc/aside.asp"-->
    
    <div class="page_wrap" id="page_wrap">

        <div class="page_inner">
            <div class="page_name_wrap">
                <h3 class="page_name">SELECTBOX</h3>
                <h3 class="page_name_sub">����Ʈ�ڽ�</h3>
                <p class="page_sub_text">�ް������� ����Ʈ���� ��������� ���Ǵ� ����Ʈ�ڽ� ����Դϴ�.<br>
                ������� ��Ȱ�� �����˻� Ȥ�� �ɼǼ����� ���� �����Ǹ�, <br>
                �������� ������ ���⼺�� ���� ����Ʈ�ڽ� �ܰ��� ���� �� ������ �����մϴ�.
                </p>
              <div class="page_print"><input type="button" value="�μ��ϱ�" id="print" onclick="window.print()"/></div>
            </div>

<pre class="language-html css"><code><link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/megagong_common_lab.css" /></code></pre>
<pre class="language-html js"><code><script src="<%=url_main%>/common/js/ui_lab.js"></script></code></pre>

            <!--<p class="page_sub_text">���⿡ �ٱ۷� ������ �����ϴ�. ���⿡ �ٱ۷� ������ �����ϴ�. ���⿡ �ٱ۷� ������ �����ϴ�.</p>
            <hr/>-->
            <div class="page_text_wrap">
                <p class="page_head">������ ����Ʈ�ڽ�</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->

<!-- HTML -->
<div class="code-box html"><div class="tbl-wrp select-wrp">
    <div class="choice-box">
        <span class="select-base">
            <span class="value"></span>
            <select name="ag_apptype" id="ag_apptype">
                <option value="1" selected>��ä</option>
                <option value="2">��ä</option>
            </select>
        </span>
    </div>
</div></div>

<p class="page_text">�հ����� ������ ��� ���Ǵ� ����Ʈ�ڽ� ����Դϴ�. <br>������ ä�� �� ��, �پ��� ���������� Ȯ���ϱ� ���� ���˴ϴ�.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="https://lab.megagong.net/l/sobang/guide/series.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#�հ�����</p> </li>
                            <li><p>#ä������</p> </li>
                            <li><p>#ä�����</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->




            <div class="page_text_wrap">
                <p class="page_head">������ ����Ʈ�ڽ� - ������ ���</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <!-- <div class="position_site"><img src="/images/btn.png" alt='��ư��ġ' ></div> -->
                

<!-- HTML -->
<div class="code-box html"><div class="select-wrp">
    <ul>
        <li class="choice-box">
            <span class="select-base">
                <span class="value"></span>
                <select id="exam_apptype" name="exam_apptype">
                    <option value="1" selected>�Ϲ�����</option>
                    <option value="2">�����</option>
                    <option value="3">���ҵ�</option>
                </select>
            </span>								
        </li>
        <li class="choice-box">
            <span class="select-base">
                <span class="value"></span>
                <select id="exam_grp" name="exam_grp">
                    <option value="101">��������</option>
                    <option value="102">�������</option>
                </select>
            </span>								
        </li>
    </ul>
</div></div>


<p class="page_text">�ް������� ����Ʈ���� �پ��ϰ� ���Ǵ� ����Ʈ�ڽ� ����Դϴ�. <br>�н� Q&A ��, ����ڰ� ���ϴ� ������ ������ �����ϰ� ã�� ���� ���˴ϴ�.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/teacher/qna/qna.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#2��</p> </li>
                            <li><p>#����Ʈ�ڽ�</p> </li>
                            <li><p>#����</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->




            <div class="page_text_wrap">
                <p class="page_head">����Ʈ�ڽ� - ����ȸ��</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <!-- <div class="position_site"><img src="/images/btn.png" alt='��ư��ġ' ></div> -->
                

<!-- HTML -->
<div class="code-box html"><table class="test_info">
<colgroup>
    <col style="width:14.5667%">
    <col style="width:35.8333%">
    <col style="width:16.6667%">
    <col style="width:33.3333%">
</colgroup>
<tbody>
    <tr>
        <th>�����</th>
        <td>
            <select name="examnm" id="examnm" onchange="examnmchg();">
                <!-- <option value="">���� ����</option> -->
                <!--<'%
                    if isarray(examnmlist) = true then
                        for n = 0 to ubound(examnmlist,2)
                            examidx   = examnmlist(0,n)
                            examnm    = examnmlist(1,n)
                            row_no    = examnmlist(2,n) '�ֽŵ���� ���踶����
                    %>                        
                        <option value="<'%=examidx%>" style="color:black" <'%if row_no = "1" then%>selected<'%end if%>><'%=examnm%></option>
            
                    <'%
                        next 
                    end if 
                %'>-->
                <!-- ���� -->
                <option value="19" style="color:black" selected="">2023 ������ ���� ���ǰ�� ����2</option>
                <option value="16" style="color:black">2023 �������ǰ�� ����1 </option>
                <option value="15" style="color:black">2023 ������ ������ ���� ���ǰ�� </option>
            </select>    
        </td>
        <th>����ȸ��</th>
        <td>
            <select id="examqcnt" name="examqcnt">
                <option value="">ȸ�� ����</option>
                <option value="1">1ȸ��</option>
                <option value="2">2ȸ��</option>
                <option value="3" style="color:#B7B7B7">3ȸ��</option>
                <option value="4" style="color:#B7B7B7">4ȸ��</option>
                <option value="5" style="color:#B7B7B7">5ȸ��</option>
                <option value="6" style="color:#B7B7B7">6ȸ��</option>
                <option value="7" style="color:#B7B7B7">7ȸ��</option>
                <option value="8" style="color:#B7B7B7">8ȸ��</option>
                <option value="9" style="color:#B7B7B7">9ȸ��</option>
                <option value="10" style="color:#B7B7B7">10ȸ��</option>
                <option value="11">11ȸ��</option>
                <option value="12" style="color:#B7B7B7">12ȸ��</option>
                <option value="13" style="color:#B7B7B7">13ȸ��</option>
                <option value="14" style="color:#B7B7B7">14ȸ��</option>
            </select>
        </td>
    </tr>
</tbody>
</table></div>
<style>.test_info { font-size: 15px;border: 1px solid rgba(204,204,204, 1);background: #fff; }
.test_info th, .test_info td {padding: 10px 0;}
.test_info th {font-weight: 900;background: #f5f5f5; text-align: center; }
.test_info td {text-align: left; border: 1px solid rgba(204,204,204, 1);border-width: 0 1px; padding-left: 20px;}
.test_info select { padding: 2% 5%; font-size: 15px;}

@media (max-width: 1200px){
.test_info {font-size: 14px;}
.test_info select {font-size: 14px;}
}
@media (max-width: 1081px){
.test_info td {padding-right: 20px;}
.test_info select {width: 100%;}
}
@media (max-width: 768px){
.test_info {font-size: 13px;}
.test_info th {padding: 10px 2px;}
.test_info td {padding: 10px 3px;}
.test_info select {font-size: 13px;padding: 0 7px;height: 30px;line-height: 30px;}
}
@media (max-width: 576px){
.test_info {font-size: 12px;}
.test_info select {font-size: 12px;}
}
@media (max-width: 480px){
.test_info {font-size: 11px;}
.test_info select {font-size: 11px;}
}
</style>

<p class="page_text">�̺�Ʈ �� ���ǰ�� ȫ�� ���������� �ַ� ���Ǵ� ����Ʈ�ڽ� ����Դϴ�.<br>
����ڰ� ����ϴ� ���� �� ȸ���� �����Ͽ� ���ǰ�� ���񽺸� �̿��� �� �ֵ��� �����ϴ�. </p>


<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/event/2023/02200013/exam.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#����ȸ��</p> </li>
                            <li><p>#���輱��</p> </li>
                            <li><p>#���ǰ��</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->




            <div class="page_text_wrap">
                <p class="page_head">����Ʈ�ڽ� - �ٷΰ���</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <!-- <div class="position_site"><img src="/images/btn.png" alt='��ư��ġ' ></div> -->
                

<!-- HTML -->
<div class="code-box html"><ul class="hdtop-wrap">
<li class="link-wrap">
    <a href="javascript:;" class="link-btn" title="�ް�������">�ް������� �ٷΰ���</a>
    <ul class="link-list">
        <li><a href="https://www.megagong.net/megagong.asp" target="_blank">�ް������� �ٷΰ���</a></li>
        <li><a href="https://sobang.megagong.net/megagong.asp" target="_blank">�ް��ҹ� �ٷΰ���</a></li>
        <li><a href="https://army.megagong.net/megagong.asp" target="_blank">�ް������� �ٷΰ���</a></li>
    </ul>
</li>
</ul></div>
<style>
.hdtop-wrap .link-wrap {position: relative;}
.hdtop-wrap .link-wrap .link-btn {min-width: 110px;position: relative;display: block;color: #777;border: 1px solid #777; font-size: 13px;padding: 4px 32px 4px 15px;  border-radius: 30px; text-align: left;}
.hdtop-wrap .link-wrap .link-btn::before {content: "";display: block;position: absolute;right: 15px;top: 50%;transform: translateY(-50%); background: url(https://img.megagong.net/lab/common/arr_down.png) center center no-repeat; width: 8px; height: 4px;}
.hdtop-wrap .link-wrap .link-list {display: none;}
.hdtop-wrap .link-wrap .link-btn.on::before { transform: rotate(180deg); top: 40%;}
.hdtop-wrap .link-wrap .link-list.on { display: block; position: absolute; top: 27px; right: 0; z-index: 4;background: #fff;border: 1px solid #777; border-radius: 10px;}
.hdtop-wrap > li a { position: relative;}
.hdtop-wrap .link-wrap .link-list li a {display: block;color: #777;padding: 0 32px 7px 15px;min-width: 110px;white-space: nowrap;}
.hdtop-wrap .link-wrap .link-list li:first-child a {padding-top: 15px;}

</style>
<script>
$(document).ready(function() {
    $('.hdtop-wrap').click(function(){
        /* --- Ŭ���� on ���--- */
        if($('.link-btn').hasClass('on')){
            $('.link-btn').removeClass('on');
            $('.link-list').removeClass('on');
        }else{
            $('.link-btn').addClass('on');
            $('.link-list').addClass('on');
        }
    });
});
</script>

<p class="page_text">�ް������� �հ����� ���λ���Ʈ �ֻ�� ������ ��ġ�� ����Ʈ��ư ����Դϴ�.<br>
�ش� ����Ʈ��ư�� �̿��ϸ� �հ����� ����Ʈ���� �ް�������, �ް��ҹ�, �ް������� ���λ���Ʈ���� �ٷΰ��Ⱑ �����մϴ�.
</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>
<pre class="language-javascript act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/teacher/qna/qna.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#�ٷΰ���</p> </li>
                            <li><p>#����</p> </li>
                            <li><p>#�׺���̼�</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->




            <div class="page_text_wrap">
                <p class="page_head">����Ʈ�ڽ� - �հ�����������</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <!-- <div class="position_site"><img src="/images/btn.png" alt='��ư��ġ' ></div> -->
                

<!-- HTML -->
<div class="code-box html"><ul class="depth3-box" style="display: block;">
    <li class="depth3"><a href="javascript:void(0);">��������</a></li>
    <li class="current"><a href="javascript:void(0);" title="��������">��������</a></li>
    <li class=" "><a href="javascript:void(0);" title="��������">��������</a></li>
    <li class=" "><a href="javascript:void(0);" title="��������">��������</a></li>
    <li class=" "><a href="javascript:void(0);" title="������ ����Ž������">������ ����Ž������</a> </li>
</ul></div>
<style>
.depth3-box li a {font-weight: bold;height: 40px;    line-height: 14px;position: relative;display: block;padding: 13px 20px;font-size: 13px; text-align: left;  font-size: 14px; color: #333; background: #f5f5f5;}
.depth3-box li:first-child a { border-radius: 20px;}
.depth3-box li.on:first-child a { border-top-right-radius: 20px;border-top-left-radius: 20px;}
.depth3-box li:last-child a {padding-bottom: 25px;border-bottom-right-radius: 20px;border-bottom-left-radius: 20px;}

.depth3-box .depth3.on a {border-bottom-right-radius: 0;border-bottom-left-radius: 0;padding: 13px 20px 25px;}
.depth3-box .depth3 a:before {content: ''; display: block; right: 20px;top: 50%; position: absolute; background: url(https://img.megagong.net/lab/common/arr_depdown.png) no-repeat center center; width: 8px;  height: 4px;  transform: translateY(-50%);}
.depth3-box .depth3.on a:before {background: url(https://img.megagong.net/lab/common/arr_depup.png) no-repeat center center; top: 37%;}
.depth3-box .depth3 ~ li {display: none;}
.depth3-box .depth3.on ~ li {display: block;}

</style>
<script>
$(document).ready(function() {
    $('.depth3').click(function(){
        /* --- Ŭ���� on ���--- */
        if($('.depth3').hasClass('on')){
            $('.depth3').removeClass('on');
        }else{
            $('.depth3').addClass('on');
        }
    });
});
</script>

<p class="page_text">�ް������� �հ����� ����Ʈ���� �ַ� ���Ǵ� ����Ʈ�ڽ� ����Դϴ�.<br>
Ŭ���� ��� �ش� �������� ���� ������ ��ϵ��� �����Ǹ�, Nav�� �̿����� �ʰ��� ����Ʈ�ڽ��� ���� ���� ���������� �̵��� �����մϴ�.
</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>
<pre class="language-javascript act"></pre>


                <div class="page_bot_wrap">
                    <a class="use_link" href="https://lab.megagong.net/l/gong/guide/guide.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#����</p> </li>
                            <li><p>#����Ʈ�ڽ�</p> </li>
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
    html {overflow-x:hidden;}
    .guide-aside {border-right: none; /*background:rgba(255,255,255,0.2);*/ backdrop-filter: blur( 11px );-webkit-backdrop-filter: blur( 11px );}
    .board1 .btn_wrap {float: right;margin-top: 20px;}
    .btn_list {margin-top:0px}
    /* .co-loading{display:block !important;} */
    .select-wrp ul li, .select-wrp.tbl-wrp .choice-box{padding:5px 15px;}
    .test_info select {width: 93%;}
    .issue-box-wrap {border-bottom:none;}
    </style>

<!-- #include virtual = "/inc/bottom.asp"-->