<div id="divTabMenu" style="margin-top:30px; background-color:#45454d;" >
	<div class="rightArea rightArea2">

		<!--div class="tab__common tab__ot tab__1ea"--> <!-- 1���� ��� -->
		<!--div class="tab__common tab__ot tab__2ea"--> <!-- 2���� ��� -->
		<!--div class="tab__common tab__ot tab__3ea"--> <!-- 3���� ��� -->
		<div class="tab__common tab__ot tab__2ea"> <!-- 4���� ��� -->
			<div class="tab__inner">
				<a href="#_blank" acd="subtitle" >�ڸ�</a>
				<a href="#_blank" acd="index" >�ε���</a>
			</div>
		</div>


		<div id="divTabContent" class="list--container "></div>

	</div>
</div>
<script type="text/javascript">
    var pno = 0;

    function fncRightTopTab(n) {
        var ax = $(".tab__inner a").eq(n).attr("acd");
        if (ax != "") {
            $(".tab__inner a").removeClass("on");
            $(".tab__inner a").eq(n).addClass("on");
            $("#divTabContent").load("/Player/kollus/admin/" + ax + "_ax.asp?LEC_CD=<%=lec_cd%>");
            $("#divEditolCtrl").load("/Player/kollus/admin/" + ax + "_ctrl.asp", function () {
                fncTimeSet();
            });
        }
    }

    $(document).ready(function () {
        $(".tab__inner a").bind({
            click: function () { fncRightTopTab($(".tab__inner a").index(this)); }
        });

        fncRightTopTab(pno);
    });
</script>
