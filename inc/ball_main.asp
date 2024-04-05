    <div class="ball_fir_wrap">
        <div class="ball fir ver1" id="paraBall1"></div>
        <div class="ball fir ver2" id="paraBall2"></div>
        <div class="ball fir ver3" id="paraBall3"></div>
        <div class="ball fir ver4" id="paraBall4"></div>
        <div class="ball fir ver5"></div>
        <div class="ball fir ver6"></div>
    </div>
    <div class="ball_white">
    </div>
    <style>
    .ball_white {border-radius: inherit; transform: rotate(90deg);  animation-name: rot; animation-duration:0.5s;animation-iteration-count:1;animation-fill-mode: forwards;animation-delay:3.5s;}
    .ball{will-change: transform;}
    .ball.fir.ver1 {filter: inherit;-webkit-filter:inherit;}
    .ball.fir.ver2 {filter: inherit;-webkit-filter:inherit;}
    .ball.fir.ver3 {filter: inherit;-webkit-filter:inherit;}
    .ball.fir.ver4 {filter: inherit;-webkit-filter:inherit;}
    .ball.fir.ver5 {filter: inherit;-webkit-filter:inherit;}
    .ball.fir.ver6 {filter: inherit;-webkit-filter:inherit;}
    </style>

    <%If 1=2 Then%>
    <div class="parallax-layer snow" id="paraSnow">
        <div class="snow1"></div>
        <div class="snow2"></div>
    </div>
    <style>
    .parallax-layer {position: fixed;height: inherit;background-position: top center;background-size: auto 100%;background-repeat: no-repeat;width: 4000px;left: 50%;margin-left: -2000px;will-change: transform;}
    .parallax-layer.snow {overflow: hidden;}
    .parallax-layer.snow div {width: 100%;height: 200%;position: absolute;left: 0;top: 0;animation: ani_snow 20s linear 0s infinite;}
    .parallax-layer.snow div:nth-child(1) {background: url('images/snow1.png') center top repeat-y;animation-duration: 15s;}
    .parallax-layer.snow div:nth-child(2) {background: url('images/snow2.png') center top repeat-y;}
    @keyframes ani_snow {
        0% {transform: translate3d(0, -50%, 0);}
        100% {transform: translateZ(0);}
    }
    </style>

    <script>
    var para_x = 0;
    var para_y = 0;
    var para_mx = 0;
    var para_my = 0;
    var para_speed = 0.03;
    var para_scrollTop = 0;
    var paraBall1, paraBall2, paraBall3, paraBall4, paraSnow;
    window.onload = function() {
        paraSnow = document.getElementById("paraSnow");
    }
    function para_scrollFunc(e) {
        para_scrollTop = document.documentElement.scrollTop;
        paraSnow.style.transform = "translate3d(0,"+ -para_scrollTop * .21 +"px,0)";
    }
    </script>
    <%End if%>