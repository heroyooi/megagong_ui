<%
call SET_GOURL(request.servervariables("path_info"))

'today_dt = date : today_stock = "0" : today_soldout_yn="Y" : today_gift_tot = 0
today_dt = "" : today_stock = "0" : today_soldout_yn="Y" : today_gift_tot = 0 : cur_tec_nm = ""
strSql = ""
strSql = strSql & " SELECT CG_ALLOW_DT, CG_SOLDOUT_YN, CG_GIFT_TOT, STOCK = CG_GIFT_TOT - CUR_CNT, CG_GIFT_NM "
strSql = strSql & " FROM ( "
strSql = strSql & " 	SELECT *, CUR_CNT = (SELECT COUNT(*) FROM MS_CLICKEVT_WINNER WITH(NOLOCK) WHERE CW_GIFT_IDX=CG_IDX) "
strSql = strSql & " 	FROM MS_CLICKEVT_GIFT WITH(NOLOCK) "
strSql = strSql & " 	WHERE CG_MAS_IDX = "&clickevt_mas_idx&" AND CG_IDX='"&gift_idx&"'"
strSql = strSql & " ) T  "
strSql = strSql & " ORDER BY CG_ALLOW_DT "

if cook_id = "jyheo" then
    response.write strSql
end if 
Set objRs = DBExec(strSql, "study")
If Not (objRs.EoF And objRs.BoF) Then
        today_soldout_yn=objRs(1)
        today_gift_tot = objRs(2)
        today_stock = objRs(3)
        gift_nm = objRs(4)

    if today_soldout_yn = "Y" then
        today_stock = 0
    end if
End If
Call DBClose(objRs)

if shutdown_yn="Y" or not isClickEvent then 
	today_stock = 0
	today_soldout_yn="Y"
end if 

today_stock_fake = today_stock

if today_stock="50" Then today_stock_fake ="100"

weekDt = fncWeekDay(now_date)

cur_gift_dt = month(now_date) & "�� " & day(now_date) & "��"
%>
<div class="con_box" id="con_box">
    <div class="click_wrap">
        <div class="count_wrap">
            <p class="today">2023 Ȳö�� ������ �⺻��</p>
            <div class="count_box">
                <div class="cspan">
                    <span>1</span>
                    <span>0</span>
                    <span>0</span>
                    ��
                </div>
            </div>

            <div class="clickEvtBtn">
                <% if winnerYn <> "Y" then %>
                <a href="javascript:void(0);" onclick="applyX();" class="btnApply">
                    <img src="<%=img_main%>/m/2022/0712_plower3362/evt1_btn.png" alt="������ ���� ���� ��û�ϱ�">
                </a>
                <% else %>
                <a class="btnApply">
                    <img src="<%=img_main%>/m/2022/0712_plower3362/evt1_btn_finish.png" alt="��û �Ϸ�">
                </a>
                <% end if %>

            </div>
            <p class="textEvt">* ������ �ϴ��� ���ǻ����� �ݵ�� Ȯ���ϼ���. <a href="javascript:void(0);" onclick="getResult();">�� ��÷���� ���� ></a></p>
            
            <%if not isClickEvent then%>
            <!--������ ������-->
            
                <!--img src="<%=img_main %>/m/2021/0210_nojoony/evt1_sold_b.png" alt="������ ����" /-->
                <!-- 20�� ���� �Ʒ� ���� ����-->

                <!--�̺�Ʈ ����� ���� �߰� 0711-->
                <p class="sold"><img src="<%=img_main%>/m/2022/0712_plower3362/evt_end.png" alt="�̺�Ʈ ����"></p>
            
            <%Elseif today_soldout_yn = "Y" AND not(isComingSoon) and gift_idx <> "" Then %>
                <!-- ������ ���� ���� ���� //-->
                <p class="sold"><img src="<%=img_main %>/m/2021/0716_megaggoarimy/evt_sold.png" alt="������ ����"></p> 
                <!-- //������ ���� ���� ����-->
            <%End if%>
            
            
        </div>

        <%if isComingSoon Then%>
        <span class="soon">
            <img src="<%=img_main%>/m/2022/0712_plower3362/evt1_coming.png" alt="7/13(��) ����5�� ���۵˴ϴ�.">
        </span>
        <%End if%>
    </div>
    <div class="book_check">
        <ul class="book_check--ul">
            <!-- ����� ��¥�� li�� end Ŭ���� �ο� -->
            <li <% If now_date > cdate("2022-07-13") or (now_date = cdate("2022-07-13") and today_soldout_yn="Y") Then %>class="end" <%end if%>>
                <p>
                    <span>7/13 (��)</span>
                    <span><strong>100</strong>��</span>
                </p>
                <span class="end">����</span>
            </li>
            <li <% If now_date > cdate("2022-07-14") or (now_date = cdate("2022-07-14") and today_soldout_yn="Y") Then %>class="end" <%end if%>>
                <p>
                    <span>7/14 (��)</span>
                    <span><strong>100</strong>��</span>
                </p>
                <span class="end">����</span>
            </li>
            <li <% If now_date > cdate("2022-07-15") or (now_date = cdate("2022-07-15") and today_soldout_yn="Y") Then %>class="end" <%end if%>>
                <p>
                    <span>7/15 (��)</span>
                    <span><strong>100</strong>��</span>
                </p>
                <span class="end">����</span>
            </li>
            <li <% If now_date > cdate("2022-07-18") or (now_date = cdate("2022-07-18") and today_soldout_yn="Y") Then %>class="end" <%end if%>>
                <p>
                    <span>7/18 (��)</span>
                    <span><strong>100</strong>��</span>
                    <span class="end">����</span>
                </p>
            </li>
            <li <% If now_date > cdate("2022-07-19") or (now_date = cdate("2022-07-19") and today_soldout_yn="Y") Then %>class="end" <%end if%>>
                <p>
                    <span>7/19 (ȭ)</span>
                    <span><strong>100</strong>��</span>
                    <span class="end">����</span>
                </p>
            </li>
        </ul>
    </div>
</div>

<!-- ��÷ �˾� -->
<div class="dim_bnrwrp_wrap gift" style="display:none;">
    <div class="dim_bnrwrp" style="z-index:3;">
        <span class="dim_bg">-</span>
    </div>
    <div class="dim_popup clickPop" id="my_result">
    </div>
</div>

<script>


    var loginClickEvent = function() {
        alert('�α��� �� �̿��� �ּ���.');
        document.location.href = "<%=url_main%>/member/login.asp";
    }
    var finishClickEvent = function() {
        alert("�̺�Ʈ�� ����Ǿ����ϴ�.");
    }
    
    function applyX() {
        <% If not isClickEvent Then %>
            finishClickEvent();
            return false;
        <% elseif cook_id = "" then %>
            loginClickEvent();
            return false;
        <%ElseIF isComingSoon then%>
            return false;
        <% elseif gift_idx = "" then %>
            alert("7/18(��) ���� 5�ÿ� ��û �����մϴ�.");
            return false;
        <% Elseif today_soldout_yn="Y" then %> //���� ���� ��
            alert("�ƽ����� �غ��� ������ ��� �����Ǿ����ϴ�.\n������ �ٽ� ������ �ּ���.");
            return false;
        <% Else %>//��Ŭ ����
        $.post("./proc.asp",{"mode":"apply","now":"<%=lo_now_date%>"},function(data) {
            if( data.msg != "" ) {
                alert(data.msg);
            }
            if(data.result == "succ" || data.result == "already_win"){
                location.reload();
                return false;
            }
            getStock();
        },"json");
        <%End if%>
    }

    function getResult() {
        <% if cook_id = "" then %>
        loginClickEvent();
        return;
        <%else%>
        //$(".dim_bnrwrp_wrap").show();
        //return false;
        $.post("./proc.asp",{"mode":"confirm_result"},function(data){	
            $('#my_result').html(data.result);
            $(document).verticalMiddle("1");
            if(data.msg != "") {
                alert(data.msg);
            }
            if(data.class != "succ") {
                //$('#my_result').addClass('no');
            } else {
                //$('#my_result').removeClass('no');
            }
            $('#my_result > button.btnClose, #my_result .btnConfirm, #my_result .btnClose').on('click', function(e){
                e.preventDefault();
                $('.dim_bnrwrp_wrap').hide().removeClass('on');
            });
        },"json");
        <% end if %>
    }
    /*
    function evtpopview_gonghalf(gbn) {
    
        if($("#pop_"+gbn).css("display") == "none"){
            $("#pop_"+gbn).show();
        }else{
            $("#pop_"+gbn).hide();
        }
    }
    */
    function getStock() {	
        $.post("./proc.asp",{"mode":"confirm_stock","now":"<%=lo_now_date%>"},function(data){
            setStock(false,data.stock);
        },"json");
    }
    
    function setStock(init,stock) {
        var html = "";
        html += "<span>"+Math.floor(stock/100)+"</span>"+"<span>"+Math.floor(stock%100/10)+"</span>"+"</span>"+"<span>"+stock%10+"</span> ��"
  
        $(".count_box .cspan").html(html);
        if(!init && stock==0) {
            location.reload();
        }
    }

    setStock(true,<%=today_stock_fake%>);

    // �ٸ� input, textarea�� ������ �ִ� �ڵ��̹Ƿ� �ּ� ó��
	// $(document).on("keydown keyup keypress", function(e){
	// 	if(e.type=="keyup"){
	// 		if(e.keyCode == 13){
	// 			return false;
	// 		}
	// 	}else{
	// 		if(e.keyCode == 13){
	// 			return false;
	// 		}
	// 	}
	// });    
</script>