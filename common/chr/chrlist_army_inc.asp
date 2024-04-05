<div class="lecture_sobangcampus">
    <div id="chrarea"></div>
</div>
<script type="text/javascript">

    function fncGoPayOff(acd, ccd) {

        var c = "";
        var amsg = "";
        var alnk = "";
        if (acd == "C") {
            amsg = "장바구니에 담을 강좌를 선택해주세요.";
            alnk = "/mypage/payment/my_cart_pre_off.asp";
        } else {
            amsg = "결제하실 강좌를 선택해주세요.";
            //alnk = "/mypage/payment/my_direct_pay_pre_off.asp";
            alnk = "/mypage/pay/my_direct_pay_off.asp";
        }

        if (ccd > 0) {
            $("#chr_" + ccd).prop("checked", true);
            c = ccd;
        } else {
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
        }

        var cartform = $("#cartform");
        if (cartform.length > 0) {
            cartform.empty();
        }
        cartform = $("<form/>").attr({ id: "cartform", method: 'post', action: alnk });
        $(document.body).append(cartform);

        $("<input></input>").attr({ type: "hidden", name: "chrChk", value: c }).appendTo(cartform);

        if (acd == "C") {
            if (confirm("장바구니로 이동 하시겠습니까?")) {
                cartform.submit();
            } else {
                $.post(alnk, {
                    "chrChk": c
                })
                    .done(function () {
                        $("input:checkbox[name='chr']:checked").prop("checked", false);
                    });
            }
        } else {
            cartform.submit();
        }
    }

    function fncLoading(e) {
        $(e).html("<p class='loading'><img src='<%=img_main%>/btn/indicator_white.gif'></p>");
    }

    function fncChrList(p) {
        fncLoading("#chrarea");
        var chr_ajax = "/common/chr/chrlist_army_ax.asp";
        $("#chrarea").load(chr_ajax + "?" + p);
    }

    $(document).ready(function () {
        fncChrList("<%=chr_para & chr_plus %>");
    });
</script>