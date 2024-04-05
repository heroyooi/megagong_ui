<div class="lecture_sobangcampus">
    <div id="chrarea"></div>
</div>
<script type="text/javascript">
        
    function fncLoading(e) {
        $(e).html("<p class='loading'><img src='<%=img_main%>/btn/indicator_white.gif'></p>");
    }

    function fncChrList(p) {
        fncLoading("#chrarea");
        var chr_ajax = "/common/chr/chrlist_gongssel_ax.asp";
        $("#chrarea").load(chr_ajax + "?" + p);
    }

    $(document).ready(function () {
        fncChrList("<%=chr_para & chr_plus %>");
    });
</script>