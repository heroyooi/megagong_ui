<%
    if area_max = "" Then area_max = 1
    if area_no = "" Then
        area_no = 1
    Else
        area_no = area_no + 1
    End if

    if area_pkg_no = "" then
        area_pkg_no = 1
    Else
        area_pkg_no = area_pkg_no + 1
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
            <div class="chrarea" id="chrarea<%=area_no %>"></div>
        </div>
    </div>
</div>

<% if area_no = "1" or area_pkg_no = "1" Then %>
    <script type="text/javascript">
        var arr_pkg_para = new Array();

        function fncLoading(e) {
            $(e).html("<p class='loading'><img src='<%=img_main%>/btn/indicator_white.gif'></p>");
        }

        function fncPkgList(a, p) {
            fncLoading("#chrarea" + a);
            var pkg_ajax = "<%=pkg_ajax %>";

            $("#chrarea" + a).load(pkg_ajax + "?" + p, function (data) {
                if (data.indexOf("lectlist") > 0) {
                    $("#chrarea" + a).parent().parent().show();
                }
            });
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
    arr_pkg_para["<%=area_no - 1 %>"] = "<%=pkg_para & pkg_plus %>&area_no=<%=area_no %>&area_pkg_no=<%=area_pkg_no %>";
    
</script>
<% if CStr(area_max) = CStr(area_no) Then %>
    <script type="text/javascript">
        $(document).ready(function () {
            var area_no = "<%=area_no %>";
            for (i = area_no; i <= area_no; i++) {
                fncPkgList(i, arr_pkg_para[i - 1]);
            }
        });
    </script>
<% End if %>
