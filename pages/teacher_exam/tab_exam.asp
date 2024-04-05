<!-- #include file = "./inc.asp"-->
<%
    applyexamidx = fncRequest("applyexamidx")
    applyexamcnt = fncRequest("applyexamcnt") 
%>
<script>
    $(function () { 
        $(".tab_wrap2").find(".tab_cont2").addClass("on"); 
    });
	function fnMove_exam() {
		var offset_anchor1 = $("#anchor1").offset();
		$('html, body').animate({ scrollTop: offset_anchor1.top }, 400);
	}

</script>

<div class="cont cont2">
    <div class="inner">
        <h3>
            [ 2023 ������ ���ǰ�� ä��/���� �м� ���� ]
        </h3>
        <h4>
            <b>����ó�� ���ǰ�縦 Ǯ�� ������ �Է��ϼ���.</b><br>
            ������ �Է��ϰ� ���� ������ �Ұ��մϴ�. �����, ȸ��, ���׹�ȣ�� �Ĳ��ϰ� Ȯ���ϼ���.
        </h4>
        <table class="test_info ">
            <colgroup>
                <col style="width:16.6667%">
                <col style="width:33.3333%">
                <col style="width:16.6667%">
                <col style="width:33.3333%">
            </colgroup>
            <tr>
                <th>�����</th>
                <td>
                    <select name="examnm" id="examnm" onchange="examnmchg('A');">
                        <option value="">���� ����</option>
                    <%
                    if isarray(examnmlist) = true then
                        for n = 0 to ubound(examnmlist,2)
                            examidx   = examnmlist(0,n)
                            examnm    = examnmlist(1,n)        
                    %>                        
                        <option value="<%=examidx%>" <%if trim(applyexamidx)=trim(examidx) then %>selected<%end if%>><%=examnm%></option>
                    <%
                        next 
                    end if 
                    %>     
                    </select>                  
                </td>
                <th>����ȸ��</th>
                <td>
                    <select id="examqcnt" name="examqcnt" onchange="examcntchg('A');"></select>
                </td>
            </tr>
        </table>
        <dl class="infoBox">
            <dd>ȸ���� ����, ���׺� ����, ���� ���� ������ �Է��ϸ� ��� Ȯ���� �����մϴ�.</dd>
            <dd>��� ����, ���� 30%, ���� 10% ��� ���� �� ���׺� �����, �������� ���� ���� ���� ���ǹ��� ��� ����� Ȯ���� �� �����˴ϴ�.
                <br>(�Ϲ������� ���ϱ⵵ ���ǰ��� �ش� ȸ���� �ؼ� ���ǰ� ����� ���� ���� 6�� ����(�ؼ����ǰ� �ָ��� ����Ǵ� ȸ���� ��� ������ ���� 6�� ����), 
                <br>ȭ���� ���ǰ��� �ؼ����ǰ� ���ε� �� ���� ������ �� ���� ����).
            </dd>
            <!-- <dd>���ǰ�� �м� ������ ���� ������ ���� 1ȸ�� �����ϴ� �����,ȸ������ ���� �ݵ�� Ȯ���ϼ���.</dd> -->
            <dd>����� ������ ���� �� ������ �Ұ����ϴ� �����ϰ� ����� �Է��� �ּ���.</dd>
            <dd>����� ������ �Ϸ�Ǳ� �� �������� ������ ���, ����� ������� ������ �ٽ� �����ؾ� ä������� Ȯ���� �� �ֽ��ϴ�.</dd>
            <dd>������ ���ѽð� �� ���� �Ϸ��ϴ� ���� ������ �帮��, �ð��� �ʰ��Ǿ ��� ������ �����մϴ�.</dd>
        </dl>
        <div class="submit_btn" id="ans">
            <a href="javascript:applyX('',0);"><img src="<%=img_main%>/m/2022/1222_lyj4718/tab2_btn1.png" alt="���� �Է�"></a>
        </div>
        <h4>
            <b>������ ������ Ȯ���ϰ� �Ƿ��� �м��ϼ���.</b><br>
            ������ ������ Ȯ���ϰ�, ���� �м� �� �Ƿ°� ������ Ȯ���ϼ���.
        </h4>
        
        <div class="tab_wrap2" id="anchor1">
            <!-- <h5>ä�� �м� ���</h5> -->
            <div class="tab_area2">
                <div class="tab_cont2" id="mem_scr"></div>
            </div>
        </div>        
    </div>
</div>
<!-- �����Է� �˾� -->
<div id="apply"></div>
<!-- //�����Է� �˾� -->

<script>
$(document).ready(function() {
    examnmchg('A'); 
//    Tot_lst("","");
});
//���輱��
function examnmchg(GB){
    var examidx = $("#examnm").val();    //���� ����
    var applyexamidx = "<%=applyexamidx%>";
    var applyexamcnt = "<%=applyexamcnt%>";
    //������� �� �����,ȸ���޾ƿ°����� ó��
    if(GB == undefined || GB == ""){    
        if(applyexamidx != ""){
            examidx = applyexamidx;
        }    
    }   
    <%'if cook_id ="" then %>
    //    loginEvent();
    <%'else%>   
        $.get("./teacher_exam/get_info.asp?mode=exam_nm&examidx="+examidx,function(data) {
            var html = "<option value=\"\">ȸ�� ����</option>";
            if(data.proc_result == "succ") {
                for(var i=0;i<data.proc_data.length;i++) {
                    var tmpSelected = "";
                    if(applyexamcnt != "" && data.proc_data[i].cnt == applyexamcnt){
                        tmpSelected = "selected";
                    }                        
                    var tmpStyled = data.proc_data[i].chk == "N" ? "style='color:#B7B7B7'" : "";
                    html += "<option value=\""+data.proc_data[i].cnt+"\" "+tmpSelected+" "+tmpStyled+">"+(data.proc_data[i].cnt)+"ȸ��</option>";
                }
            }
            $("#examqcnt").html(html)       
        },"json");   

        if (applyexamidx != "" && applyexamcnt != ""){
            examcntchg();
        }else{
            $("#ans").html('<a href=javascript:applyX("'+examidx+'",0);><img src="<%=img_main%>/m/2022/1222_lyj4718/tab2_btn1.png" alt="���� �Է�"></a>');                   
            Tot_lst(examidx,"",GB);
        }

    <%'end if %>    
}
//ȸ�� ����
function examcntchg(GB){
    var examidx = $("#examnm").val();    //������ ����
    var examqcnt = $("#examqcnt").val();    //������ ȸ��
    var applyexamidx = "<%=applyexamidx%>";
    var applyexamcnt = "<%=applyexamcnt%>";

    //������� �� �����,ȸ���޾ƿ°����� ó��
    if(GB == undefined || GB == ""){
        if(applyexamidx != ""){
            examidx = applyexamidx;
        }       
        if(applyexamcnt != ""){
            examqcnt = applyexamcnt;
        }  
    }      
    <%'if cook_id ="" then %>
    //    loginEvent();
    <%'else%>
        $.get("./get_info.asp?mode=exam_cnt&examidx="+examidx+"&examqcnt="+examqcnt,function(data) {
            var html = "";
            if (data.proc_data =="Y"){
                $("#ans").html('<img src="<%=img_main%>/m/2022/1222_lyj4718/tab2_btn2.png" alt="�Է� �Ϸ�">');  
            }else if (data.proc_data =="N" && data.proc_data2 =="Y")    {  
                $("#ans").html('<a href=javascript:applyX("'+examidx+'","'+examqcnt+'");><img src="<%=img_main%>/m/2022/1222_lyj4718/tab2_btn1.png" alt="���� �Է�"></a>');                   
            }else {
                $("#ans").html("");  
            }
        },"json");    
        Tot_lst(examidx,examqcnt,GB);
    <%'end if %>    
}
//�����Է�
function applyX(no,cnt) {
    //alert("���� ���� ����� ������ ���� ���� �Է� �� ���� �м� ���� �̿��� ��ƽ��ϴ�.\n���� ����ȭ ���� �ٽ� �ȳ��� �帮���� �ϰڽ��ϴ�.\n�̿뿡 ������ ��� �˼��մϴ�.");
    //return;
    $("#apply").html("")
     <%if cook_id ="" then %>
        alert("�α����� �ʿ� �մϴ�.");
        document.location.href = "/member/login.asp";
        return;
    <%end if %>
    var examidx = $("#examnm").val();    //���� ����
    var examqcnt = $("#examqcnt").val();

    if(no == ""){
        alert("������� �������ּ���");
        return;        
    }else if (cnt == 0){
       alert("ȸ���� �������ּ���");
       return;
    }else{  
        $.get("./pop_apply.asp?examidx="+examidx+"&examqcnt="+examqcnt+"&now=<%=lo_now_date%>",function(html) {
            $("#apply").html(html);   
        });     
    }   
}
// �ش� ȸ��  ��ü ����
function Tot_lst(examidx,examqcnt,GB){   
    var examidx = examidx
    var examqcnt = examqcnt    //������ ȸ��
    
    $.get("./tab_rst.asp?examidx="+examidx+"&examqcnt="+examqcnt+"&"+ new Date().getTime(),function(html) {
        $("#mem_scr").html(html);   
    });    
    //������� �� ��Ŀ�̵�
    if(GB == undefined || GB == ""){
        fnMove_exam();
    }
}
</script>

