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
            [ 2023 이유진 모의고사 채점/성적 분석 서비스 ]
        </h3>
        <h4>
            <b>실전처럼 모의고사를 풀고 정답을 입력하세요.</b><br>
            정답을 입력하고 나면 수정이 불가합니다. 시험명, 회차, 문항번호를 꼼꼼하게 확인하세요.
        </h4>
        <table class="test_info ">
            <colgroup>
                <col style="width:16.6667%">
                <col style="width:33.3333%">
                <col style="width:16.6667%">
                <col style="width:33.3333%">
            </colgroup>
            <tr>
                <th>시험명</th>
                <td>
                    <select name="examnm" id="examnm" onchange="examnmchg('A');">
                        <option value="">시험 선택</option>
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
                <th>시험회차</th>
                <td>
                    <select id="examqcnt" name="examqcnt" onchange="examcntchg('A');"></select>
                </td>
            </tr>
        </table>
        <dl class="infoBox">
            <dd>회차별 점수, 문항별 정오, 정답 등은 정답을 입력하면 즉시 확인이 가능합니다.</dd>
            <dd>평균 점수, 상위 30%, 상위 10% 평균 점수 및 문항별 정답률, 선택지별 선택 비율 등은 유의미한 통계 모수가 확보된 뒤 공개됩니다.
                <br>(일반적으로 백일기도 모의고사는 해당 회차의 해설 강의가 진행된 당일 오후 6시 이후(해설강의가 주말에 진행되는 회차의 경우 월요일 오후 6시 이후), 
                <br>화제의 모의고사는 해설강의가 업로드 된 이후 일주일 뒤 공개 예정).
            </dd>
            <!-- <dd>모의고사 분석 서비스의 정답 제출은 최초 1회만 가능하니 시험명,회차정보 등을 반드시 확인하세요.</dd> -->
            <dd>제출된 정답은 삭제 및 수정이 불가능하니 신중하게 답안을 입력해 주세요.</dd>
            <dd>답안이 제출이 완료되기 전 브라우저를 종료할 경우, 답안은 저장되지 않으며 다시 제출해야 채점결과를 확인할 수 있습니다.</dd>
            <dd>가급적 제한시간 내 응시 완료하는 것을 권장해 드리며, 시간이 초과되어도 답안 제출은 가능합니다.</dd>
        </dl>
        <div class="submit_btn" id="ans">
            <a href="javascript:applyX('',0);"><img src="<%=img_main%>/m/2022/1222_lyj4718/tab2_btn1.png" alt="정답 입력"></a>
        </div>
        <h4>
            <b>본인의 성적을 확인하고 실력을 분석하세요.</b><br>
            문제의 정오를 확인하고, 오답 분석 및 실력과 약점을 확인하세요.
        </h4>
        
        <div class="tab_wrap2" id="anchor1">
            <!-- <h5>채점 분석 결과</h5> -->
            <div class="tab_area2">
                <div class="tab_cont2" id="mem_scr"></div>
            </div>
        </div>        
    </div>
</div>
<!-- 정답입력 팝업 -->
<div id="apply"></div>
<!-- //정답입력 팝업 -->

<script>
$(document).ready(function() {
    examnmchg('A'); 
//    Tot_lst("","");
});
//시험선택
function examnmchg(GB){
    var examidx = $("#examnm").val();    //시험 선택
    var applyexamidx = "<%=applyexamidx%>";
    var applyexamcnt = "<%=applyexamcnt%>";
    //답안제출 후 시험명,회차받아온값으로 처리
    if(GB == undefined || GB == ""){    
        if(applyexamidx != ""){
            examidx = applyexamidx;
        }    
    }   
    <%'if cook_id ="" then %>
    //    loginEvent();
    <%'else%>   
        $.get("./teacher_exam/get_info.asp?mode=exam_nm&examidx="+examidx,function(data) {
            var html = "<option value=\"\">회차 선택</option>";
            if(data.proc_result == "succ") {
                for(var i=0;i<data.proc_data.length;i++) {
                    var tmpSelected = "";
                    if(applyexamcnt != "" && data.proc_data[i].cnt == applyexamcnt){
                        tmpSelected = "selected";
                    }                        
                    var tmpStyled = data.proc_data[i].chk == "N" ? "style='color:#B7B7B7'" : "";
                    html += "<option value=\""+data.proc_data[i].cnt+"\" "+tmpSelected+" "+tmpStyled+">"+(data.proc_data[i].cnt)+"회차</option>";
                }
            }
            $("#examqcnt").html(html)       
        },"json");   

        if (applyexamidx != "" && applyexamcnt != ""){
            examcntchg();
        }else{
            $("#ans").html('<a href=javascript:applyX("'+examidx+'",0);><img src="<%=img_main%>/m/2022/1222_lyj4718/tab2_btn1.png" alt="정답 입력"></a>');                   
            Tot_lst(examidx,"",GB);
        }

    <%'end if %>    
}
//회차 선택
function examcntchg(GB){
    var examidx = $("#examnm").val();    //선택한 시험
    var examqcnt = $("#examqcnt").val();    //선택한 회차
    var applyexamidx = "<%=applyexamidx%>";
    var applyexamcnt = "<%=applyexamcnt%>";

    //답안제출 후 시험명,회차받아온값으로 처리
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
                $("#ans").html('<img src="<%=img_main%>/m/2022/1222_lyj4718/tab2_btn2.png" alt="입력 완료">');  
            }else if (data.proc_data =="N" && data.proc_data2 =="Y")    {  
                $("#ans").html('<a href=javascript:applyX("'+examidx+'","'+examqcnt+'");><img src="<%=img_main%>/m/2022/1222_lyj4718/tab2_btn1.png" alt="정답 입력"></a>');                   
            }else {
                $("#ans").html("");  
            }
        },"json");    
        Tot_lst(examidx,examqcnt,GB);
    <%'end if %>    
}
//정답입력
function applyX(no,cnt) {
    //alert("현재 서비스 사용자 증가로 인해 정답 입력 및 성적 분석 서비스 이용이 어렵습니다.\n서비스 정상화 이후 다시 안내해 드리도록 하겠습니다.\n이용에 불편을 드려 죄송합니다.");
    //return;
    $("#apply").html("")
     <%if cook_id ="" then %>
        alert("로그인이 필요 합니다.");
        document.location.href = "/member/login.asp";
        return;
    <%end if %>
    var examidx = $("#examnm").val();    //시험 선택
    var examqcnt = $("#examqcnt").val();

    if(no == ""){
        alert("시험명을 선택해주세요");
        return;        
    }else if (cnt == 0){
       alert("회차를 선택해주세요");
       return;
    }else{  
        $.get("./pop_apply.asp?examidx="+examidx+"&examqcnt="+examqcnt+"&now=<%=lo_now_date%>",function(html) {
            $("#apply").html(html);   
        });     
    }   
}
// 해당 회차  전체 점수
function Tot_lst(examidx,examqcnt,GB){   
    var examidx = examidx
    var examqcnt = examqcnt    //선택한 회차
    
    $.get("./tab_rst.asp?examidx="+examidx+"&examqcnt="+examqcnt+"&"+ new Date().getTime(),function(html) {
        $("#mem_scr").html(html);   
    });    
    //답안제출 후 앵커이동
    if(GB == undefined || GB == ""){
        fnMove_exam();
    }
}
</script>

