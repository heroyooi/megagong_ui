<script type="text/babel">
  'use strict';

  function Tab2({ title, onChange, simple = false }) {

const html = `<ul class="tab-base type-2">
    <li class="on"><a href="javascript:void(0);">성적분석</a></li>
    <li><a href="javascript:void(0);">누적분석</a></li>
</ul>`;

const css = ``;

const js = `$('.tab-base li').on('click', function(e){
    e.preventDefault();
    $(this).addClass('on');
    $(this).siblings().removeClass('on');
});`;

    return (
      <PageContent
        title={title}
        desc="메가공무원에서 사용하는 탭 컴포넌트입니다."
        html={html}
        css={css}
        js={js}
        items={["탭", "검은배경", "캡슐"]}
        link="<%=dev_url_main%>/test/heroyooi/component.asp?id=tab"
        file="test\heroyooi\component.asp"
        designFile="\\10.1.0.100\공무원사업본부_공무원 사업부\마케팅서비스실\웹디자인팀(공)\@디자인가이드\@new_탭.psd"
        simple={simple}
        onChange={onChange}
      />
    )
  }
</script>