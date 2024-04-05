<!-- #include virtual = "/inc/top.asp"-->
<%
dp1 = 2
dp2 = 10
%>
    <!-- #include virtual = "/inc/aside.asp"-->
    
    <div class="page_wrap" id="page_wrap">

        <div class="page_inner">
            <div class="page_name_wrap">
                <h3 class="page_name">CHART</h3>
                <h3 class="page_name_sub">차트</h3>
                <p class="page_sub_text">메가공무원의 다양한 페이지에서 많은 양의 데이터 정보를 사용자에게 전달할 때 사용되는 요소입니다.<br>
                구글의 그래프 차트 기능을 활용하여 제작되었습니다. </p>
              <div class="page_print"><input type="button" value="인쇄하기" id="print" onclick="window.print()"/></div>

            </div>

            <!--<p class="page_sub_text">여기에 줄글로 설명을 적습니다. 여기에 줄글로 설명을 적습니다. 여기에 줄글로 설명을 적습니다.</p>
            <hr/>-->
            
            <div class="page_text_wrap">
                <p class="page_head">구글 차트 - Bar</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/chart.png" alt='위치' ></div>
                

<!-- HTML -->
<div class="code-box html"><div class="passline">
    <div id="barChart" style="width: 100%; "></div>
    <div id="barChart_mo" style="width: 100%;"></div>
</div></div>

<!-- CSS -->
<style>.passline { overflow:hidden; }
.passline #barChart,
.passline #barChart_mo { width:118%; margin-left:0; }
.passline #barChart_mo { display:none; }

@media (max-width: 1200px){
    .passline #barChart,
    .passline #barChart_mo { width:100%; margin-left:0; }   
}
@media (max-width: 768px){
    .passline #barChart_mo { display:block; width:90%; }
    .passline #barChart { display:none; }
}
</style>

<!-- JS -->
<script>google.charts.load("current", {packages:['corechart']});
google.charts.setOnLoadCallback(drawBarChart);

function drawBarChart() {
    var mq = window.matchMedia( "(max-width: 992px)" );
    var barHeight = (mq.matches) ? 340 : 400;

    var mockBarChart = "부산,400,#f5180d||전북,390,#e6e6e6||제주,390,#e6e6e6||서울,385,#f5180d||대구,385,#e6e6e6||경기,385,#e6e6e6||충남,385,#e6e6e6||경남,385,#e6e6e6||강원,380,#e6e6e6||전남,380,#e6e6e6||광주,375,#e6e6e6||경북,375,#e6e6e6||충북,370,#e6e6e6||인천,365,#e6e6e6||세종,355,#e6e6e6||경남(창원),335,#e6e6e6||울산,330,#e6e6e6||대전,320,#e6e6e6";

    var data = google.visualization.arrayToDataTable(splitBar(mockBarChart));
    var view = new google.visualization.DataView(data);
    view.setColumns([0, 1,
        { 
            calc: "stringify",
            sourceColumn: 1,
            type: "string",
            role: "annotation" 
        },
        2
    ]);

    var options = {
        width: "100%",
        height: 340,
        //height: barHeight,
        bar: {groupWidth: "60%"},
        chartArea: {width: '90%', height: '80%'},
        legend: { position: "none" }
        };
    var options_m = {
        width: "100%",
        height: 340,
        bar: {groupWidth: "60%"},
        chartArea: {width: '60%', height: '80%'},
        legend: { position: "none" }
        };
    var chart_m = new google.visualization.BarChart(document.getElementById("barChart_mo"));
        chart_m.draw(view, options_m);
    var chart = new google.visualization.ColumnChart(document.getElementById("barChart"));
        chart.draw(view, options);
}

function splitBar(arr) {
    var tmpArr = arr.split("||");
    var rtnArr = [["지역", "합격선", { role: "style" } ]];

    for (var i=0; i < tmpArr.length; i++) {
        var tmp = tmpArr[i].split(",");
        tmp[1] = parseInt(tmp[1]);
        rtnArr.push(tmp);
    }
    return rtnArr;
}</script>

<p class="page_text">메가스터디 공무원의 합격솔루션 등의 페이지에서 주로 사용되는 기능입니다.<br>
구글 차트 기능을 활용하여 사용자가 원하는 합격관련 정보를 막대 그래프 형식으로 제공하고 있습니다. </p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css css act"></pre>
<pre class="language-javascript act"></pre>


                
                <div class="page_bot_wrap">
                    <a class="use_link" href="https://sobang.megagong.net/exam/basic/sobang_3/apply_info.asp#eventWrap" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#합격솔루션</p> </li>
                            <li><p>#구글차트</p> </li>
                            <li><p>#막대그래프</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->






            <div class="page_text_wrap">
                <p class="page_head">구글 차트 - Pie</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/chart.png" alt='위치' ></div>
                

<!-- HTML -->
<div class="code-box html"><div class="graphBox">
    <div>
        <h6>수험기간</h6>
        <div class="grp" id="piechart1"></div>
    </div>
    <div>
        <h6>일 평균 학습시간</h6>
        <div class="grp" id="piechart2"></div>
    </div>
</div>

<div class="graphBox">
    <div>
        <h6>과목별 평균 회독수</h6>
        <div class="grp" id="piechart3"></div>
    </div>
    <div>
        <h6>과목별 평균 문제집 권수</h6>
        <div class="grp" id="piechart4"></div>
    </div>
</div></div>

<!-- CSS -->
<style>.graphBox { overflow:hidden; padding-top:15px; }
.graphBox > div { border:1px solid #d8d8d8; width:49%; border:1px solid #d8d8d8; float:left; position:relative; }
.graphBox > div:last-child { float:right; }
.graphBox > div h6 { position:absolute; top:-15px; left:50%; transform:translateX(-50%); width:auto; font-weight:700; font-size:18px; padding:5px 20px; color:#000; background:#e6e6e6; border-radius:15px; display:inline-block; z-index:3;  }
.graphBox > div > .grp { width:100%; height:350px; overflow:hidden; box-sizing:border-box; padding:30px; }

@media (max-width: 1200px){
    .graphBox { overflow:hidden; padding-top:15px; }
    .graphBox > div h6 { top:-15px; width:auto; font-size:13px; padding:5px; border-radius:10px; }
    .graphBox > div > .grp { max-height:350px; height:23vw; margin-top:3vw; padding:10px; }
    .passline #barChart_mo > div > div {margin:auto;}
}

@media (max-width: 850px){
    /* 단기합격 솔루션 */
    .graphBox > div { clear:both; width:100%; height:auto; }
    .graphBox > div:last-child { margin-top:20px; }
}
@media(max-width:768px){
    .graphBox > div > .grp { max-height:auto; height:50vw; padding:5vw; }

}

@media (max-width: 576px){
    .graphBox { overflow:hidden; padding-top:15px; }
    .graphBox > div h6 { top:-15px; width:65%; font-size:12px; padding:5px; border-radius:10px; }
    .graphBox > div > .grp { max-height:auto; height:45vw; padding:5vw; }
}
@media(max-width:480px) {
    .graphBox > div > .grp { height:50vw; }
}</style>

<!-- JS -->
<script>google.charts.load("current", {packages:['corechart']});
google.charts.setOnLoadCallback(drawPieChart);

function drawPieChart() {
    var mq = window.matchMedia( "(max-width: 992px)" );
    var Piefont = (mq.matches) ? 11 : 14;

    var mockPieChart1 = "6개월~1년,29||1년~1년 6개월,29||1년 6개월~2년,14||2년~2년 6개월,14||2년 6개월~3년,0||3년~3년 6개월,14||3년 6개월~4년,0||4년 이상,0";
    var mockPieChart2 = "4시간 이하,0||4~6시간,0||6~8시간,14||8~10시간,36||10시간 이상,50";
    var mockPieChart3 = "1~2회,0||3~4회,10||5~6회,25||7~8회,37||9회 이상,28";
    var mockPieChart4 = "0권,0||1권,5||2권,27||3권,42||4권 이상,26";

    var pie_options = {
        width: "100%",
        chartArea: {width: '100%', height: '100%'},
        colors:['#ffdcda','#f1bbb8','#e2a19e','#e07a75','#cc5c56','#b7443e','#9e2b25','#74140f'],
        legend: { 
            position: 'right', 
            textStyle:{ color: '#000', fontSize: 11}, 
            alignment:'center' 
        }
    }; 
    var pie_options2 = {
        width: "100%",
        chartArea: {width: '100%', height: '100%'},
        colors:['#ceaffd','#bd9af2','#af88e9','#9a68e8','#7b46cc','#6630b8','#521da2','#3c0d84'],
        legend: { 
            position: 'right', 
            textStyle:{ color: '#000', fontSize: 11}, 
            alignment:'center' 
        }
    }; 
    var pie_options3 = {
        width: "100%",
        chartArea: {width: '100%', height: '100%'},
        colors:['#bcc9fd','#9caff9','#768ee8','#536fdb','#4a64c6','#334db0','#1f3896','#11277c'],
        legend: { 
            position: 'right', 
            textStyle:{ color: '#000', fontSize: 11}, 
            alignment:'center' 
        }
    }; 
    var pie_options4 = {
        width: "100%",
        chartArea: {width: '100%', height: '100%'},
        colors:['#92c37a','#7eb065','#5e9444','#41732a','#316419','#24540e','#1a4706','#0f2c01'],
        legend: { 
            position: 'right', 
            textStyle:{ color: '#000', fontSize: 11}, 
            alignment:'center' 
        }
    }; 

    var pie_data1 = google.visualization.arrayToDataTable(splitPie(mockPieChart1));
    var pie_data2 = google.visualization.arrayToDataTable(splitPie(mockPieChart2));
    var pie_data3 = google.visualization.arrayToDataTable(splitPie(mockPieChart3));
    var pie_data4 = google.visualization.arrayToDataTable(splitPie(mockPieChart4));

    var chart1 = new google.visualization.PieChart(document.getElementById('piechart1'));
    chart1.draw(pie_data1, pie_options);

    var chart2 = new google.visualization.PieChart(document.getElementById('piechart2'));
    chart2.draw(pie_data2, pie_options2);

    var chart3 = new google.visualization.PieChart(document.getElementById('piechart3'));
    chart3.draw(pie_data3, pie_options3);

    var chart4 = new google.visualization.PieChart(document.getElementById('piechart4'));
    chart4.draw(pie_data4, pie_options4);

    window.addEventListener('resize',drawPieChart,false);
}

function splitPie(arr) {
    var tmpArr = arr.split("||");
    var rtnArr = [['Task', 'Persent', {type: 'string', role: 'tooltip'}]];

    for (var i=0; i < tmpArr.length; i++) {
        var tmp = tmpArr[i].split(",");
        tmp[1] = parseInt(tmp[1]);
        tmp.push(tmp[0]+"\n"+tmp[1].toString()+"%");
        rtnArr.push(tmp);
    }

    return rtnArr;
}
</script>

<p class="page_text">메가스터디 공무원의 합격솔루션 등의 페이지에서 주로 사용되는 기능입니다.<br>
구글 차트 기능을 활용하여 사용자가 원하는 합격관련 정보를 원형 그래프 형식으로 제공하고 있습니다. </p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css css act"></pre>
<pre class="language-javascript act"></pre>


                
                <div class="page_bot_wrap">
                    <a class="use_link" href="https://sobang.megagong.net/exam/basic/sobang_3/apply_solution.asp#eventWrap" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#합격솔루션</p> </li>
                            <li><p>#원형그래프</p> </li>
                            <li><p>#구글차트</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->




            <div class="page_text_wrap">
                <p class="page_head">풀서비스 메인 - 과목별 성적 분포도</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/chart.png" alt='위치' ></div>

<!-- HTML -->
<div class="code-box html"><div class="totalbf_zone">
    <div class="difficulty_view">
        <div class="difficulty_grpwrp">
            <div id="stkSlider1" class="stk_slider">
                <div class="row_stk scrollx_box">
                    <div class="sg_inner" > <!-- 테이블 딤 : class="dim_on" 추가 -->
                        <!-- dim -->
                        <div class="tbl_dim">
                            <p class="agn">
                                <strong class="loading">집계중입니다.</strong>
                                <i class="icon_loading">
                                    <img src="https://img.megagong.net/m/2022/0402_fullserv/loading.png" alt="로딩중">
                                </i>
                            </p>
                        </div> <!-- // dim -->
                        <strong class="tit">국어</strong>
                        <canvas id="divSubDistribution_req_1" style="width:316px;height:195px;"></canvas>
                    </div>
                    <div class="sg_inner" > <!-- 테이블 딤 : class="dim_on" 추가 -->
                        <!-- dim -->
                        <div class="tbl_dim">
                            <p class="agn">
                                <strong class="loading">집계중입니다.</strong>
                                <i class="icon_loading">
                                    <img src="https://img.megagong.net/m/2022/0402_fullserv/loading.png" alt="로딩중">
                                </i>
                            </p>
                        </div> <!-- // dim -->
                        <strong class="tit">헌법</strong>
                        <canvas id="divSubDistribution_req_2" style="width:316px;height:195px;"></canvas>
                    </div>
                    <div class="sg_inner" > <!-- 테이블 딤 : class="dim_on" 추가 -->
                        <!-- dim -->
                        <div class="tbl_dim">
                            <p class="agn">
                                <strong class="loading">집계중입니다.</strong>
                                <i class="icon_loading">
                                    <img src="https://img.megagong.net/m/2022/0402_fullserv/loading.png" alt="로딩중">
                                </i>
                            </p>
                        </div> <!-- // dim -->
                        <strong class="tit">행정법</strong>
                        <canvas id="divSubDistribution_req_3" style="width:316px;height:195px;"></canvas>
                    </div>
                    <div class="sg_inner" > <!-- 테이블 딤 : class="dim_on" 추가 -->
                        <!-- dim -->
                        <div class="tbl_dim">
                            <p class="agn">
                                <strong class="loading">집계중입니다.</strong>
                                <i class="icon_loading">
                                    <img src="https://img.megagong.net/m/2022/0402_fullserv/loading.png" alt="로딩중">
                                </i>
                            </p>
                        </div> <!-- // dim -->
                        <strong class="tit">행정학</strong>
                        <canvas id="divSubDistribution_req_4" style="width:316px;height:195px;"></canvas>
                    </div>
                    <div class="sg_inner" > <!-- 테이블 딤 : class="dim_on" 추가 -->
                        <!-- dim -->
                        <div class="tbl_dim">
                            <p class="agn">
                                <strong class="loading">집계중입니다.</strong>
                                <i class="icon_loading">
                                    <img src="https://img.megagong.net/m/2022/0402_fullserv/loading.png" alt="로딩중">
                                </i>
                            </p>
                        </div> <!-- // dim -->
                        <strong class="tit">지방자치론</strong>
                        <canvas id="divSubDistribution_req_6" style="width:316px;height:195px;"></canvas>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div></div>

<div class="code-box css"><link type="text/css" rel="stylesheet" href="<%=url_main%>/s/gong/full/20221029/full_main.css" />
<link type="text/css" rel="stylesheet" href="<%=url_main%>/s/gong/full/20221029/style.css" /></div>
<div class="code-box js"><script src="https://www.chartjs.org/dist/2.9.3/Chart.min.js"></script></div>
<script>var arrChartColor = ["#922d3b","#922d3b","#922d3b","#922d3b","#922d3b","#922d3b","#922d3b","#922d3b","#922d3b","#922d3b","#922d3b"]
var barChartOpt = {
    //responsive: true,
    legend: {
        position: 'top',
        display: false
    },
    title: {
        display: false,
        text: 'Chart.js Bar Chart'
    }
    ,scales:{
        yAxes:[{
            ticks:{
                //"beginAtZero":true
                min: 0,
                max: 50,
                stepSize: 10,
                callback: function(value,index,values) {
                    return value+'%';
                }
            }
        }]
    }
}

var barChartData_subj_1 = {
    labels: ['50미만','50~55','55~60','60~65','65~70','70~75','75~80','80~85','85~90','90~95','95이상'],
    datasets: [
        {
            label: '국어',
            backgroundColor: arrChartColor,
            //borderColor: ["rgb(255, 99, 132)","rgb(255, 159, 64)","rgb(255, 205, 86)"],
            borderWidth: 1,
            barThickness: 12,
            data: [7.5,1.8,2.8,6.6,10.7,15.6,18.7,17.4,12,4.8,2.1]
        }
    ]
};
new Chart(document.getElementById('divSubDistribution_req_1').getContext('2d'), {
    type: 'bar',
    data: barChartData_subj_1,
    options: barChartOpt
});


var barChartData_subj_2 = {
    labels: ['50미만','50~55','55~60','60~65','65~70','70~75','75~80','80~85','85~90','90~95','95이상'],
    datasets: [
        {
            label: '헌법',
            backgroundColor: arrChartColor,
            //borderColor: ["rgb(255, 99, 132)","rgb(255, 159, 64)","rgb(255, 205, 86)"],
            borderWidth: 1,
            barThickness: 12,
            data: [22.8,2.8,4.9,4.5,4.9,5.8,7.3,7.1,9.5,13.7,16.6]
        }
    ]
};
new Chart(document.getElementById('divSubDistribution_req_2').getContext('2d'), {
    type: 'bar',
    data: barChartData_subj_2,
    options: barChartOpt
});

var barChartData_subj_3 = {
    labels: ['50미만','50~55','55~60','60~65','65~70','70~75','75~80','80~85','85~90','90~95','95이상'],
    datasets: [
        {
            label: '행정법',
            backgroundColor: arrChartColor,
            //borderColor: ["rgb(255, 99, 132)","rgb(255, 159, 64)","rgb(255, 205, 86)"],
            borderWidth: 1,
            barThickness: 12,
            data: [15.7,3.1,3.1,4.4,5.1,6,8.9,8.5,13.1,15.6,16.6]
        }
    ]
};
new Chart(document.getElementById('divSubDistribution_req_3').getContext('2d'), {
    type: 'bar',
    data: barChartData_subj_3,
    options: barChartOpt
});

var barChartData_subj_4 = {
    labels: ['50미만','50~55','55~60','60~65','65~70','70~75','75~80','80~85','85~90','90~95','95이상'],
    datasets: [
        {
            label: '행정학',
            backgroundColor: arrChartColor,
            //borderColor: ["rgb(255, 99, 132)","rgb(255, 159, 64)","rgb(255, 205, 86)"],
            borderWidth: 1,
            barThickness: 12,
            data: [11.1,3.5,3.4,5.4,8.2,10.3,12.9,15.8,15.5,10.2,3.8]
        }
    ]
};
new Chart(document.getElementById('divSubDistribution_req_4').getContext('2d'), {
    type: 'bar',
    data: barChartData_subj_4,
    options: barChartOpt
});

var barChartData_subj_6 = {
    labels: ['50미만','50~55','55~60','60~65','65~70','70~75','75~80','80~85','85~90','90~95','95이상'],
    datasets: [
        {
            label: '지방자치론',
            backgroundColor: arrChartColor,
            //borderColor: ["rgb(255, 99, 132)","rgb(255, 159, 64)","rgb(255, 205, 86)"],
            borderWidth: 1,
            barThickness: 12,
            data: [20.7,4.2,5,5.4,5.3,6.2,7.1,8.5,11.4,12.3,13.9]
        }
    ]
};
new Chart(document.getElementById('divSubDistribution_req_6').getContext('2d'), {
    type: 'bar',
    data: barChartData_subj_6,
    options: barChartOpt
});</script>

<p class="page_text">메가스터디 공무원의 풀서비스 페이지 등에서 주로 사용되는 차트 기능입니다.<br>
입력한 가채점 데이터들을 바탕으로 과목별 성적 분포도를 표기하여 제공하고 있습니다. </p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-html css act"></pre>
<pre class="language-html js act"></pre>
<pre class="language-javascript act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/s/gong/full/20221029/index.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#풀서비스</p> </li>
                            <li><p>#성적분포도</p> </li>
                            <li><p>#가채점</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->




            <div class="page_text_wrap">
                <p class="page_head">풀서비스 메인 - 과목별 오답률 및 체감 난이도</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/chart.png" alt='위치' ></div>

<!-- HTML -->
<div class="code-box html"><div class="totalbf_zone v2">
    <div class="level_view">
        <div class="circle_grp">
            <div class="cg_inner" >
                <h5>[ 체감 난이도 ]</h5>
                <div style="width:100%;height:300px;" >
                    <canvas id="divSubSurv" style="width:100%;height:100%"></canvas>
                </div>
            </div>
        </div>
    </div>
</div></div>

<div class="code-box css"><link type="text/css" rel="stylesheet" href="<%=url_main%>/s/gong/full/20221029/full_main.css" />
<link type="text/css" rel="stylesheet" href="<%=url_main%>/s/gong/full/20221029/style.css" /></div>
<div class="code-box js"><script src="https://www.chartjs.org/dist/2.9.3/Chart.min.js"></script></div>
<script>var HbarChartData = {
    labels: ['매우쉬움','쉬움','보통','어려움','매우어려움']
    ,datasets: [
        {
            //backgroundColor: ["#7b2c18","#7b2c18","#7b2c18","#7b2c18","#7b2c18"],
            // backgroundColor: ["#c6da55","#81ac2f","#cbb25b","#fc552c","#7b2c18"],
            backgroundColor: ["#922d3b","#922d3b","#922d3b","#922d3b","#922d3b"],
            //borderColor: ["rgb(255, 99, 132)","rgb(255, 159, 64)","rgb(255, 205, 86)"],
            borderWidth: 1,
            barThickness: 25,
            data: [36,28,8,16,12]
        }
    ]
    
};
var HbarChartOpt = {
    responsive: true,
    legend: {
        position: 'right',
        display: false
    },
    title: {
        display: false,
        text: 'Chart.js Bar Chart'
    }
    ,tooltips: {
        callbacks: {
            label: function(tti,data) {
                return data["datasets"][0]["data"][tti["index"]]+"%"
            }
        }
    }
    ,scales:{
        xAxes:[{
            ticks:{
                //"beginAtZero":true
                min: 0,
                max: 60,
                stepSize: 10,
                callback: function(value,index,values) {
                    return value+'%';
                }
            }
        }]
    }
}

new Chart(document.getElementById('divSubSurv').getContext('2d'), {
    type: 'horizontalBar',
    data: HbarChartData,
    options: HbarChartOpt
});</script>

<p class="page_text">메가스터디 공무원의 풀서비스 페이지 등에서 주로 사용되는 차트 기능입니다.<br>
입력한 가채점 데이터들을 바탕으로 체감 난이도를 표기하여 제공하고 있습니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-html css act"></pre>
<pre class="language-html js act"></pre>
<pre class="language-javascript act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/s/gong/full/20221029/index.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#풀페이지</p> </li>
                            <li><p>#가채점</p> </li>
                            <li><p>#막대그래프</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->















            <div class="page_text_wrap">
                <p class="page_head">문제은행 - 과목별 분석 결과</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/chart.png" alt='위치' ></div>

<!-- HTML -->
<div class="code-box html"><div class="quizbank">
    <div id="subj-comp-per"></div>
    <div id="compper-graph-btn" class="graph-btn">
        <button id="subj-comp-per-prev">이전</button>
        <button id="subj-comp-per-next">다음</button>
        <button id="subj-comp-per-large">확대/축소</button>
    </div>
</div></div>

<div class="code-box css"><link type="text/css" rel="stylesheet" href="<%=url_main%>/l/share/quizbank/style.css" /></div>
<div class="code-box js"><script src="https://www.gstatic.com/charts/loader.js"></script></div>

<!-- CSS -->
<style>.quizbank .graph-btn{display: flex;flex-direction: row;flex-wrap: wrap;justify-content: center;padding-top: 30px;}
.quizbank .graph-btn button{border: 1px solid #333;border-radius: 4px;padding: 5px 10px;line-height: 1;margin: 0 4px;}
.quizbank .graph-btn button:disabled{border-color: #c3c3c3;color: #c3c3c3;}
</style>
    
<!-- JS -->
<script>/* ========= 단원별 정답률 그래프 S ========= */
function resizeChart_g() {
    google.charts.load('current', {packages:['corechart']});
    
    if ($(window).width() > 768) {
        google.charts.setOnLoadCallback(g2_drawChart); // 단원별 정답률 그래프 PC
    } else {
        google.charts.setOnLoadCallback(g2_drawBarChart); // 단원별 정답률 그래프 MO
    }
}

$(function(){
    
    resizeChart_g();

    $(window).resize(function() {
        if(this.resizeTO) clearTimeout(this.resizeTO);
        this.resizeTO = setTimeout(function() {
            $(this).trigger('resizeEnd');
        }, 0);
    });

    $(window).on('resizeEnd', function() {
        resizeChart_g();
    });
})

function g2_drawChart() {
    var g2_options = {
        width: '100%',
        height: 300,
        animation: {
            duration: 200,
            easing: 'in'
        },
        hAxis: {
            viewWindow: {
                min:0,
                max:6
            },
            baselineColor:{
                color: '#ddd'
            },
            gridlines:{
                color: '#ddd'
            },
            textStyle:{
                color: '#333',
                fontSize: 13
            },
            
        },
        vAxis: {
            viewWindow: {
                    max:100,
                    min:0
            },
            baselineColor:{
                color: '#ddd'
            },
            gridlines:{
                color: '#ddd'
            },
            textStyle:{
                color: '#333',
                fontSize: 13
            },
            format: '#\'%\''
        },
        bar: {groupWidth: "30%"},
        chartArea: {
            'top':5,
            'left':50,
            'right':20,
            'height': '90%'
        },
        legend: { position: "none" },
    };

    var g2_chart = new google.visualization.ColumnChart(document.getElementById('subj-comp-per'));

    var g2_data = google.visualization.arrayToDataTable([
        ['', '경쟁자', { role: 'style' }, '나', { role: 'style' }],
        ['국어', {v:30, f: String('30') + '%'}, '#dddddd', {v:50, f: String('50') + '%'}, '#0d998e'],
        ['영어', {v:10, f: String('10') + '%'}, '#dddddd', {v:80, f: String('80') + '%'}, '#0d998e'],
        ['한국사', {v:50, f: String('50') + '%'}, '#dddddd', {v:50, f: String('50') + '%'}, '#0d998e'],
        ['행정학', {v:70, f: String('70') + '%'}, '#dddddd', {v:90, f: String('90') + '%'}, '#0d998e'],
        ['행정법', {v:40, f: String('40') + '%'}, '#dddddd', {v:70, f: String('70') + '%'}, '#0d998e'],
        ['국어', {v:30, f: String('30') + '%'}, '#dddddd', {v:50, f: String('50') + '%'}, '#0d998e'],
        ['영어', {v:10, f: String('10') + '%'}, '#dddddd', {v:80, f: String('80') + '%'}, '#0d998e'],
        ['한국사', {v:50, f: String('50') + '%'}, '#dddddd', {v:50, f: String('50') + '%'}, '#0d998e'],
        ['행정학', {v:70, f: String('70') + '%'}, '#dddddd', {v:90, f: String('90') + '%'}, '#0d998e'],
        ['행정법', {v:40, f: String('40') + '%'}, '#dddddd', {v:70, f: String('70') + '%'}, '#0d998e'],
    ]);

    var g2_format = new google.visualization.NumberFormat({
        pattern: '#,##0.0%'
    });
    var g2_view = new google.visualization.DataView(g2_data);
    g2_view.setColumns([
        0, 
        1,{ calc: "stringify",
            sourceColumn: 1,
            type: "string",
            role: "annotation",
            calc: function (dt, row) {
                var percent = g2_format.formatValue(dt.getValue(row, 1)/100);
                return percent;
            },
        },
        2,
        3,{ calc: "stringify",
            sourceColumn: 2,
            type: "string",
            role: "annotation",
            calc: function (dt, row) {
                var percent = g2_format.formatValue(dt.getValue(row, 3)/100);
                return percent;
            },
        },4
    ]);

    
    var g2_max = g2_data.getNumberOfRows()-1; // 열 최대개수
    //console.log('>'+g2_max);
    
    var g2_buttonWrap = document.getElementById('compper-graph-btn'); // 이전/다음버튼 wrap
    var g2_prevButton = document.getElementById('subj-comp-per-prev'); // 이전 버튼
    var g2_nextButton = document.getElementById('subj-comp-per-next'); // 다음 버튼
    var g2_changeZoomButton = document.getElementById('subj-comp-per-large');

    
    if(g2_max < 7){
        // 열 7개 이하일때 이전/다음 버튼 숨기기
        g2_buttonWrap.style.display ='none';
    }


    function g2_button() {
        g2_prevButton.disabled = true;
        g2_nextButton.disabled = true;
        g2_changeZoomButton.disabled = true;
        google.visualization.events.addListener(g2_chart, 'ready',
            function() {
                g2_prevButton.disabled = g2_options.hAxis.viewWindow.min <= 0;
                g2_nextButton.disabled = g2_options.hAxis.viewWindow.max >= g2_max;
                g2_changeZoomButton.disabled = false;
            }
        );

        g2_chart.draw(g2_view, g2_options);

    }


    //이전버튼 클릭시
    g2_prevButton.onclick = function() {
        g2_options.hAxis.viewWindow.min -= 1;
        g2_options.hAxis.viewWindow.max -= 1;
        g2_button();
    }

    //다음버튼 클릭시
    g2_nextButton.onclick = function() {
        g2_options.hAxis.viewWindow.min += 1;
        g2_options.hAxis.viewWindow.max += 1;
        g2_button();
    }

    //확대/축소 클릭시
    var g2_zoomed = false;
    g2_changeZoomButton.onclick = function() {
        if (g2_zoomed) {
            g2_options.hAxis.viewWindow.min = 0;
            g2_options.hAxis.viewWindow.max = 5;
        } else {
            g2_options.hAxis.viewWindow.min = 0;
            g2_options.hAxis.viewWindow.max = g2_max;
        }
        g2_zoomed = !g2_zoomed;
        g2_button();
    }
    g2_button();
}

function g2_drawBarChart() {
    var g2_options_mo = {
        width: '100%',
        height: 350,
        animation: {
            duration: 200,
            easing: 'in'
        },
        hAxis: {
            textStyle:{
                color: '#333',
                fontSize: 13
            },
            baselineColor:{
                color: '#ddd'
            },
            gridlines:{
                color: '#ddd'
            },
        },
        vAxis: {
            textStyle:{
                color: '#333',
                fontSize: 13
            },
            baselineColor:{
                color: '#ddd'
            },
            gridlines:{
                color: '#ddd'
            },
        },
        bar: {groupWidth: "70%"},
        chartArea: {
            'right':50,
            'height': '90%'
        },
        legend: { position: "none" },
        bars: 'horizontal', 
    };

    var g2_chart_mo = new google.visualization.BarChart(document.getElementById('subj-comp-per'));

    var g2_data_mo = google.visualization.arrayToDataTable([
        ['', '경쟁자', { role: 'style' }, '나', { role: 'style' }],
        ['국어', {v:30, f: String('30') + '%'}, '#dddddd', {v:50, f: String('50') + '%'}, '#0d998e'],
        ['영어', {v:10, f: String('10') + '%'}, '#dddddd', {v:80, f: String('80') + '%'}, '#0d998e'],
        ['한국사', {v:50, f: String('50') + '%'}, '#dddddd', {v:50, f: String('50') + '%'}, '#0d998e'],
        ['행정학', {v:70, f: String('70') + '%'}, '#dddddd', {v:90, f: String('90') + '%'}, '#0d998e'],
        ['행정법', {v:40, f: String('40') + '%'}, '#dddddd', {v:70, f: String('70') + '%'}, '#0d998e'],
        ['행정법', {v:40, f: String('40') + '%'}, '#dddddd', {v:70, f: String('70') + '%'}, '#0d998e'],
        ['행정법', {v:40, f: String('40') + '%'}, '#dddddd', {v:70, f: String('70') + '%'}, '#0d998e'],
        ['행정법', {v:40, f: String('40') + '%'}, '#dddddd', {v:70, f: String('70') + '%'}, '#0d998e'],
    ]);

    
    var g2_format_mo = new google.visualization.NumberFormat({
        pattern: '#,##0.0%'
    });
    var g2_view_mo = new google.visualization.DataView(g2_data_mo);
    g2_view_mo.setColumns([
        0, 
        1,{ calc: "stringify",
            sourceColumn: 1,
            type: "string",
            role: "annotation",
            calc: function (dt, row) {
                var percent = g2_format_mo.formatValue(dt.getValue(row, 1)/100);
                return percent;
            },
        },
        2,
        3,{ calc: "stringify",
            sourceColumn: 2,
            type: "string",
            role: "annotation",
            calc: function (dt, row) {
                var percent = g2_format_mo.formatValue(dt.getValue(row, 3)/100);
                return percent;
            },
        },4
    ]);

    
    g2_chart_mo.draw(g2_view_mo, g2_options_mo);

}

// 참고 : https://developers.google.com/chart/interactive/docs/animation?hl=ko#changing-the-view-window

/* // ========= 단원별 정답률 그래프 E ========= */</script>





<p class="page_text">메가스터디 공무원의 합격전략연구소 문제은행에서 사용되는 구글차트 입니다.<br>X축 열의 기준 개수를 초과하면 이전/다음 버튼이 노출되어 그래프 좌우이동이 가능하며, 확대/축소 기능도 제공됩니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-html css act"></pre>
<pre class="language-html js act"></pre>
<pre class="language-javascript act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=lab_main%>/l/share/quizbank/index.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#합격전략</p> </li>
                            <li><p>#그래프넘기기</p> </li>
                            <li><p>#그래프확대축소</p> </li>
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
    .payWrap .pay_sort { margin-bottom: 0px; }
    .pay_sort p {font-weight: 900; font-size: 15px;margin-bottom: 21px;}
    .board3 .code-box a , .board4 .code-box a {text-align: center;display: block;}
    .quizbank .graph-btn button {    background: #7687fe;color: #fff;font-family: 'NotoSans KR';padding: 11px 17px;border-radius: 25px;font-size: 15px;transition: 0.3s;border: 2px solid #7687fe;}
    .quizbank .graph-btn button:hover {background: #fff;color: #7687fe;border: 2px solid #7687fe;}
    .quizbank .graph-btn button:disabled {border-color: aliceblue;color: #fff; background: #bbc0e3;}

    @media screen and (max-width: 768px) {
        .quizbank .graph-btn {display:none;}
    }
    </style>
    
    
    


<!-- #include virtual = "/inc/bottom.asp"-->