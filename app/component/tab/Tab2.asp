<script type="text/babel">
  'use strict';

  function Tab2({ title, onChange }) {

const html = `<ul id="tab1" class="tab_base">
  <li class="on"><a href="#tab1_1">ÅÇ1-1</a></li>
  <li><a href="#tab1_2">ÅÇ1-2</a></li>
</ul>
<ul class="panel_base">
  <li id="tab1_1">³»¿ë 1-1 <br>Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis vel tenetur excepturi omnis recusandae illo eius, quaerat optio commodi quisquam maiores molestiae neque atque inventore laboriosam! Earum saepe recusandae aut!</li>
  <li id="tab1_2">³»¿ë 1-2 <br>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Et enim corrupti in commodi nemo quos nobis voluptatibus ut, nesciunt sequi, eveniet voluptates quas animi, obcaecati distinctio rerum ipsum iure inventore.</li>
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
});`;

    return (
      <PageContent
        title={title}
        desc=""
        // image="/images/tab1.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["±âº»ÅÇ"]}
        // link="<%=lab_main%>/l/gong/guide/guide.asp"
        onChange={onChange}
      />
    )
  }
</script>