<script type="text/babel">
  'use strict';

  function Tab4({ title, error, errorLink, onChange }) {

const html = `<ul id="tab3-1" class="tab_base col3">
  <li><a href="#tab3_1_1">탭3-1</a></li>
  <li><a href="#tab3_1_2">탭3-2</a></li>
  <li><a href="#tab3_1_3">탭3-3</a></li>
</ul>
<ul id="panel3-1" class="panel_base">
  <li id="tab3_1_1">내용 3-1 <br>Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis vel tenetur excepturi omnis recusandae illo eius, quaerat optio commodi quisquam maiores molestiae neque atque inventore laboriosam! Earum saepe recusandae aut!</li>
  <li id="tab3_1_2">내용 3-2 <br>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Et enim corrupti in commodi nemo quos nobis voluptatibus ut, nesciunt sequi, eveniet voluptates quas animi, obcaecati distinctio rerum ipsum iure inventore.</li>
  <li id="tab3_1_3">내용 3-3 <br>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Et enim corrupti in commodi nemo quos nobis voluptatibus ut, nesciunt sequi, eveniet voluptates quas animi, obcaecati distinctio rerum ipsum iure inventore.</li>
</ul>
<ul id="tab3-2" class="tab_base col3">
  <li><a href="#tab3_2_1">탭4-1</a></li>
  <li><a href="#tab3_2_2">탭4-2</a></li>
  <li><a href="#tab3_2_3">탭4-3</a></li>
</ul>
<ul id="panel3-2" class="panel_base">
  <li id="tab3_2_1">내용 4-1 <br>Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis vel tenetur excepturi omnis recusandae illo eius, quaerat optio commodi quisquam maiores molestiae neque atque inventore laboriosam! Earum saepe recusandae aut!</li>
  <li id="tab3_2_2">내용 4-2 <br>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Et enim corrupti in commodi nemo quos nobis voluptatibus ut, nesciunt sequi, eveniet voluptates quas animi, obcaecati distinctio rerum ipsum iure inventore.</li>
  <li id="tab3_2_3">내용 4-3 <br>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Et enim corrupti in commodi nemo quos nobis voluptatibus ut, nesciunt sequi, eveniet voluptates quas animi, obcaecati distinctio rerum ipsum iure inventore.</li>
</ul>`;

const css = `.tab_base{ clear: both; width:100%;}
.tab_base:after{content:'';display:block;clear:both;}
.tab_base > li{float:left;width:50%;text-align:center;}
.tab_base.col3 > li{width:33.333%;}
.tab_base > li a{display:block;padding:10px;color:#111; background-color: #f8f8f8;}
.tab_base > li.on a{background-color:#111;color:#fff;}
.panel_base > li { padding: 30px;display:none;}`;

const excCss = `.panel_base{min-height:123px;}`;

const js = `$('.tab_base').each(function(){
    var target = $(this).find('li.on').find('a').attr('href');
    $(target).show();
});
$('.tab_base a').on('click', function(e){
    e.preventDefault();
    var target = $(this).attr('href');
    $(this).closest('li').addClass('on');
    $(this).closest('li').siblings().removeClass('on');
    $(target).show();
    $(target).siblings().hide();
});
$('.panel_base').each(function(){
    if ($(this).hasClass('w_slide')) {
        setTimeout(function(){
            $(this).children('li, div').hide();
            $(this).children('li, div').eq($(this).prev('.tab_base').children('li.on').index()).show();
            $(this).addClass('active');
        }, 250);
    }
});

var initRandomTab = function($tab, $panel) {
    var tlength = $($tab + ' > li').length;
    var tInterval = null;
    var tRandom =  Math.ceil(Math.random() * tlength);
    var tCurrent = tRandom || 1;
    var tFlag = false;

    function activeTab(index) {
        $($tab + ' > li').eq(index - 1).siblings().removeClass('on');
        $($tab + ' > li').eq(index - 1).addClass('on');
        $($($tab + ' > li').eq(index - 1).find('a').attr('href')).show();
        $($($tab + ' > li').eq(index - 1).find('a').attr('href')).siblings().hide();
        $($panel + ' > li').eq(index).css('display', 'none');
    }

    function intervalTab(speed) {
        tInterval = setInterval(function() {
            if (tCurrent < tlength) {
                tCurrent++;
            } else {
                tCurrent = 1;
            }
            activeTab(tCurrent);
        }, speed);
    }

    setTimeout(function() {
        activeTab(tRandom);
    }, 250);

    intervalTab(3000);

    $($tab + ' > li').on('click', function() {
        tFlag = true;
    });
    
    $($panel + ' > li').on('click', function() {
        tFlag = true;
    });

    $($tab + ' > li').on('mouseenter', function() {
        clearInterval(tInterval);
    });

    $($tab + ' > li').on('mouseleave', function() {
        if (!tFlag) {
            intervalTab(3000);
        }
    });

    $($panel + ' > li').on('mouseenter', function() {
        clearInterval(tInterval);
    });

    $($panel + ' > li').on('mouseleave', function() {
        if (!tFlag) {
            intervalTab(3000);
        }
    });
}

initRandomTab('#tab3-1', '#panel3-1');
initRandomTab('#tab3-2', '#panel3-2');`;

    return (
      <PageContent
        title={title}
        desc="- 탭이나 내용 마우스 오버시 자동 롤링 멈춤 <br />- 탭이나 내용 마우스 떠나면 다시 자동 롤링 <br />- 탭을 클릭 한 이후부터는 자동 롤링 멈춤"
        // image="/images/tab1.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["랜덤탭", "자동롤링", "다수 사용"]}
        // link="<%=lab_main%>/l/gong/guide/guide.asp"
        error={error}
				errorLink={errorLink}
        onChange={onChange}
      />
    )
  }
</script>