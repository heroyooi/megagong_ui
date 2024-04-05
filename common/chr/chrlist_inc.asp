<%
    if area_max = "" Then area_max = 1
    if area_no = "" Then
        area_no = 1
    Else
        area_no = area_no + 1
    End if
%>
<style>
    
    .grade_tab_wrap .tab_list{margin: -37px 0 0 125px; }
    .grade_tab_wrap .tab_list li{float: left;width:64px; height: 22px; color: #777; background: #f5f5f5; border: 1px solid #e3e3e3;box-sizing: border-box; border-radius: 30px; margin-right: 7px;}
    .grade_tab_wrap .tab_list li.on{background:#26b7bc;border: 1px solid #26b7bc; color: #fff;} 
    .grade_tab_wrap .tab_list li:last-child{margin-right: 0;}
    .grade_tab_wrap .tab_list li a{text-align: center;padding:2px 0;display: block;font-size: 14px;padding-right: 13px;position: relative;}
    .grade_tab_wrap .tab_list li a::before{content:""; display: block; width:4px; height:4px; border-top:1px solid #777; border-right:1px solid #777; -webkit-transform: rotate(135deg); transform: rotate(135deg); position: absolute; right:13px; top:auto; margin-top:4px;}
    .grade_tab_wrap .tab_list li.on a::before{border-top: 1px solid #fff;border-right: 1px solid #fff;}
    .grade_tab_wrap .tab_cont{display: none;padding: 23px 0 35px; position: relative;} 
    .grade_tab_wrap .tab_cont.on{display: block;}
    @media (max-width:992px){
        .grade_tab_wrap .tab_list{margin: -34px 0 0 100px;}
    }
    @media (max-width:768px){
        .grade_tab_wrap .tab_list{margin:-30px 0 0 90px;}
        .grade_tab_wrap .tab_list li{width: 60px;height: auto;}
        .grade_tab_wrap .tab_list li a{font-size: 12px;}
    }
</style>

<div class="grade_tab_wrap">
    <div class="lecture" style="display:none; padding-bottom:100px;">
        <div class="lecList">
            <% if chr_title <> "" Then %>
                <h3 class="subtit"><%=chr_title %></h3>
            <% End if %>
            <% if hcode = "gong" and cate_cd = "1" then %>
                <%if chr_type <> "s2" then %>
                <ul class="tab_list clearfix"> 
                    <li <% if grd_fg = "9" then %> class="on" <% end if %>><a href="/vod/vod_chr_list.asp?mcode=5&grd_fg=9&cate_cd=<%=cate_cd%>">9급</a></li> 
                    <li <% if grd_fg = "7" then %> class="on" <% end if %>><a href="/vod/vod_chr_list.asp?mcode=5&grd_fg=7&cate_cd=<%=cate_cd%>">7급</a></li> 
                </ul> 
                <% end if %>
            <% end if %>

            <div class="vodchr_banner">
    
                    <%If cdate(lo_now_date) < cdate("2020-03-30") Then%>
                        <% if hcode = "gong" Then %>
                        <div style="background-color:#fb5f08">
                            <img src="<%=img_main%>/m/2020/0316_chrbnr/chr_bnr.jpg" class="img_pc" alt="전 강좌 30% 할인" />
                            <img src="<%=img_main%>/m/2020/0316_chrbnr/chr_bnr_m.jpg" class="img_mb" alt="전 강좌 30% 할인" />
                        </div>
                        <% elseif hcode = "sobang" Then %>
                        <div style="background-color:#118ffd">
                            <img src="<%=img_main%>/m/2020/0316_chrbnr/chr_sb_bnr.jpg" class="img_pc" alt="전 강좌 30% 할인" />
                            <img src="<%=img_main%>/m/2020/0316_chrbnr/chr_sb_bnr_m.jpg" class="img_mb" alt="전 강좌 30% 할인" />
                        </div>
                        <% End if %>
                    <%elseif CDate(lo_now_date) < CDate("2020-04-06") Then%>
                        <div style="background-color:#a624fe">
                            <img src="<%=img_main%>/m/2020/0316_chrbnr/chr_bnr_0330.jpg" class="img_pc" alt="전 강좌 30% 할인" />
                            <img src="<%=img_main%>/m/2020/0316_chrbnr/chr_bnr_0330_m.jpg" class="img_mb" alt="전 강좌 30% 할인" />
                        </div>
                    <%End if%>
    
    
            </div>
    
            <% if chr_bnr <> "" Then %>
                <p class="bnr">
                    <% if hcode = "sobang" Then %>
                        <%if CDate(lo_now_date) < CDate("2018-08-14") Then%>
                            <a href="/s/sobang/lecture/guide/final.asp"><img src="<%=img_main %>/etc/2018/0726_01/180726_bnr_sobang_ingang.jpg" alt="" /></a>
                        <% Else %>
                            <a href="/s/sobang/lecture/guide/deep.asp?mcode=1&scode=5"><img src="<%=img_main %>/m/2018/0830_passstep/bnr_intband_180830.jpg" alt="" /></a>
                        <% End if %>
                    <% Else %>
                        <img src="<%=chr_bnr %>" alt="" />
                    <% End if %>
                </p>
            <% End if %>
    
            <div class="chrarea" id="chrarea<%=area_no %>"></div>
        </div>
    </div>
</div>

<% if area_no = "1" Then %>
    <script type="text/javascript">
        var arr_para = new Array();

        function fncLoading(e) {
            $(e).html("<p class='loading'><img src='<%=img_main%>/btn/indicator_white.gif'></p>");
        }

        function fncChrList(a, p) {
            fncLoading("#chrarea" + a);
            var chr_ajax = "<%=chr_ajax %>";
            //console.log("a" + a + " / p " + p );

            $("#chrarea" + a).load(chr_ajax + "?" + p, function (data) {
                //console.log(p);
                if (data.indexOf("lectlist") > 0) {
                    $("#chrarea" + a).parent().parent().show();
                }
            });
        }

        function fncGoPay(a, acd, ccd) {
            var c = "";
            var b = "";
            var amsg = "";
            var alnk = "";
            if (acd == "C") {
                amsg = "장바구니에 담을 강좌 또는 교재를 선택해주세요.";
                alnk = "/mypage/pay/my_cart_pre.asp";
            } else {
                amsg = "결제하실 강좌 또는 교재를 선택해주세요.";
                alnk = "/mypage/pay/my_direct_pay_pre.asp";
            }

            $("#list" + a + "_" + ccd + " input:checkbox").each(function () {
                var t = $(this);
                var n = t.attr("name");

                if (t.prop("checked") == true) {
                    if (n == "chr") {
                        if (c != "") { c += "," }
                        c += t.val();
                    } else if (n == "book") {
                        if (b != "") { b += "," }
                        b += t.val();
                    }
                }
            });

            if (c == "" && b == "") {
                alert(amsg);
                return;
            }

            var cartform = $("#cartform");
            if (cartform.length > 0) {
                cartform.remove();
            }
            cartform = $("<form/>").attr({ id: "cartform", method: 'post', action: alnk });
            $(document.body).append(cartform);

            $("<input></input>").attr({ type: "hidden", name: "chrChk", value: c }).appendTo(cartform);
            $("<input></input>").attr({ type: "hidden", name: "bookChk", value: b }).appendTo(cartform);

            if (acd == "C") {
                if (confirm("장바구니로 이동 하시겠습니까?")) {
                    cartform.submit();
                } else {
                    $.post(alnk, {
                        "chrChk": c,
                        "bookChk": b
                    })
                        .done(function () {
                            $("#list" + a + "_" + ccd + " input:checkbox").prop("checked", false);
                        });
                }
            } else {
                cartform.submit();
            }
        }

        function fncGoCartPass(pno, ino) {
            close_pop('#popup_not');
            var c = "";

            amsg = "수강신청하실 강좌를 선택해주세요.";
            alnk = "/mypage/study/cartchr_set_ax.asp";

            $("input:checkbox[name='chr']:checked").each(function () {
                var t = $(this);

                if (t.prop("checked") == true) {
                    if (c != "") { c += "," }
                    c += t.val();
                }
            });

            if (c == "") {
                alert(amsg);
                return;
            }

            $.post(alnk, {
                "chrChk": c,
                "pay_no": pno,
                "item_no": ino
            }, function (data) {
                d = JSON.parse(data);
                if(d.result=="succ"){
                    open_pop('#popup_ok');
                }else{
                    alert(d.msg);
                    document.location.reload();
                }
            })
        }        

        function fncCartLayer(a, ccd){
            fncLayerClose();   
	        var params = {
	        	area_no: a,
	        	ccd: ccd,
                mode: "popup"
	        }                
            $("#cartPocket" + a + "_" + ccd).load("/common/chr/cart_ax.asp", params); 
        }


        function fucPrevwLayer(a, ccd, mcd){
            if($("#list" + a + "_" + ccd).children(".pocket_pop.prevw").children().length == 0 || mcd != ""){    
	            var params = {
	            	area_no: a,
	            	ccd: ccd,
                    mcd: mcd,
                    mode: "popup"
	            }
                $("#list" + a + "_" + ccd).children(".pocket_pop.prevw").load("/common/chr/preview_ax.asp", params);
            }
            fncLayerClose();
            $("#list" + a + "_" + ccd).children(".pocket_pop.prevw").show();       
        } 



        function fncPickGoPay(a, acd, ccd, mpcd) {
            var c = "";
            var b = "";
            var amsg = "";
            var alnk = "";
            if (acd == "C") {
                amsg = "장바구니에 담을 강좌 또는 교재를 선택해주세요.";
                alnk = "/mypage/pay/my_cart_pre.asp";
            } else {
                amsg = "결제하실 강좌 또는 교재를 선택해주세요.";
                alnk = "/mypage/pay/my_direct_pay_pre.asp";
            }


            var pickChrDiv = $(".lectlist_wrap").find(".lect_item");
            var tmp2;

            $.each(pickChrDiv, function(key, val)
            {
                var tmp = $(this);

                if (tmp.attr("value2") == mpcd && tmp.attr("id") == ("list" + a + "_" + ccd)) {
                    tmp2 = tmp.children("#cartPocket" + a + "_" + ccd).find(".cart_list");

                    tmp2.find("input:checkbox").each(function () {
                        var t = $(this);
                        var n = t.attr("name");

                        if (t.prop("checked") == true) {
                            if (n == "chr") {
                                if (c != "") { c += "," }
                                c += t.val();
                            } else if (n == "book") {
                                if (b != "") { b += "," }
                                b += t.val();
                            }
                        }
                    });

                    return false;
                }
            });


            if (c == "" && b == "") {
                alert(amsg);
                return;
            }

            var cartform = $("#cartform");
            if (cartform.length > 0) {
                cartform.remove();
            }
            cartform = $("<form/>").attr({ id: "cartform", method: 'post', action: alnk });
            $(document.body).append(cartform);

            $("<input></input>").attr({ type: "hidden", name: "chrChk", value: c }).appendTo(cartform);
            $("<input></input>").attr({ type: "hidden", name: "bookChk", value: b }).appendTo(cartform);

            if (acd == "C") {
                if (confirm("장바구니로 이동 하시겠습니까?")) {
                    cartform.submit();
                } else {
                    $.post(alnk, {
                        "chrChk": c,
                        "bookChk": b
                    })
                    .done(function () {
                        tmp2.find("input:checkbox").each(function () {
                            $(this).prop("checked", false);
                        });
                    });
                }
            } else {
                cartform.submit();
            }
        }


        function fncPickCartLayer(a, ccd, mpcd){
            var pickChrDiv = $(".lectlist_wrap").find(".lect_item");

            fncLayerClose();
            $.each(pickChrDiv, function(key, val)
            {
                var tmp = $(this);

                if (tmp.attr("value2") == mpcd && tmp.attr("id") == ("list" + a + "_" + ccd)) {
                    var params = {
                        area_no: a,
                        ccd: ccd,
                        mpcd: mpcd,
                        mode: "popup"
                    }
                    $(this).children("#cartPocket" + a + "_" + ccd).load("/common/chr/cart_ax.asp", params); 

                    return false;
                }
            });
        }

        function fncPickPrevwLayer(a, ccd, mcd, mpcd){
            var pickChrDiv = $(".lectlist_wrap").find(".lect_item");

            $.each(pickChrDiv, function(key, val)
            {
                var tmp = $(this);

                if (tmp.attr("value2") == mpcd && tmp.attr("id") == ("list" + a + "_" + ccd)) {
                    if($(this).children(".pocket_pop.prevw").children().length == 0 || mcd != ""){    
                        var params = {
                            area_no: a,
                            ccd: ccd,
                            mcd: mcd,
                            mode: "popup"
                        }
                        $(this).children(".pocket_pop.prevw").load("/common/chr/preview_ax.asp", params);
                    }
                    fncLayerClose();
                    $(this).children(".pocket_pop.prevw").show();

                    return false;
                }
            });
        } 


        function fncPkgLayer(a, pcd, mpcd){
            var pcdDiv = (mpcd == "" || mpcd == 0) ? "" : "_"+mpcd;

            fncLayerClose();   
	        var params = {
	        	area_no: a,
	        	pcd: pcd,
                mpcd: mpcd,
                mode: "popup"
	        }

            $("#packagePocket" + a + "_" + pcd + pcdDiv).load("/common/chr/pkgcart_ax.asp", params);
        }

        function fucPkgPrevwLayer(a, pcd, ccd, mcd, mpcd){
            var pcdDiv = (mpcd == "" || mpcd == 0) ? "" : "_"+mpcd;

            $(".pocket_pop.prevw").html("");
            if($("#list" + a + "_" + pcd + pcdDiv).find(".pocket_pop.prevw").children().length == 0 || mcd != ""){    
	            var params = {
	            	area_no: a,
	            	ccd: ccd,
                    mcd: mcd,
                    mode: "popup"
	            }
                $("#prevwPocket" + a + "_" + pcd + "_" + ccd + pcdDiv).load("/common/chr/preview_ax.asp", params);
            }
            fncLayerClose();
            $("#prevwPocket" + a + "_" + pcd + "_" + ccd + pcdDiv).show();
        } 

        function fncPkgPay(a, gubn, pcd, buyOK, mpcd) {
            var p = "";
            var b = "";

            <% if SmartLearingFlg <> "Y" then %>
            if (gubn == "pkg") {

                var pcdDiv = (mpcd == "" || mpcd == 0) ? "" : "_"+mpcd;

                var prcarea = $("#list"+a+"_"+pcd+pcdDiv+" input:checkbox");
                prcarea.each(function () {
                    if ($(this).prop("checked") == true) {
                        if ($(this).attr("name") == "pkg") {
                            p = $(this).val();
                        } 

                        if ($(this).attr("name") == "book") {
                            if (b == "") {
                                b = $(this).val();
                            } else {
                                b += "," + $(this).val();
                            }
                        }
                    }
                });

                if (p == "" && b == "") {
                    alert("결제하실 강좌 또는 교재를 선택해주세요.");
                    return;
                }

                var mainfrm = $("#mainfrm");
                if (mainfrm.length > 0) {
                    mainfrm.remove();
                }
                mainfrm = $("<form/>").attr({ name: "mainfrm", id: "mainfrm" });
                $(document.body).append(mainfrm);

                $("<input></input>").attr({ type: "checkbox", name: "pkgChk", id: "TmpPayVal", style: "position:absolute; display:none;", value: "" }).appendTo(mainfrm);
                $("<input></input>").attr({ type: "checkbox", name: "bookChk", id: "TmpPayVal2", style: "position:absolute; display:none;", value: "" }).appendTo(mainfrm);


                if (p != "") {
                    if (buyOK != 0) {
                        alert("구매하시는 패키지 상품에 현재 수강 중인 강좌가 포함되어 있습니다. \n수강 중인 강좌를 삭제 혹은 환불 후 패키지 구매가 가능합니다.");
                        return;
                    } else {
                        $('#TmpPayVal').val(p);
                    }
                }

                if (b != "") {
                    $('#TmpPayVal2').val(b);
                }

                var h = document.getElementById("TmpPayVal");
                h.checked = true;
                var h2 = document.getElementById("TmpPayVal2");
                h2.checked = true;
                
                goDirectPay();
            }
            <% end if %>
        }

        function fncLayerClose(){
		    if (typeof (controller) != 'undefined') {
                controller.pause();            
		    }          
            $(".pocket_pop").hide();
            $(".pocket_pop_prevw").html("");
        }

    </script>
<% End if %>
<script type="text/javascript">
    arr_para["<%=area_no - 1 %>"] = "<%=chr_para & chr_plus %>&area_no=<%=area_no %>";
    
</script>
<% if CStr(area_max) = CStr(area_no) Then %>
    <script type="text/javascript">
        $(document).ready(function () {
            var area_no = "<%=area_no %>";
            for (i = area_no; i <= area_no; i++) {
                fncChrList(i, arr_para[i - 1]);
            }
        });
    </script>
<% End if %>
