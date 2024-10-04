<script type="text/babel">
  'use strict';

  function Tab3({ title, onChange, simple = false }) {

const html = `<ul class="tab-base type-3">
    <li class="on"><a href="javascript:void(0);">9급</a></li>
    <li><a href="javascript:void(0);">7급</a></li>
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
        items={["탭", "크기", "색상"]}
        link="<%=dev_url_main%>/test/heroyooi/component.asp?id=tab"
        file="test\heroyooi\component.asp"
        designFile="\\10.1.0.100\공무원사업본부_공무원 사업부\마케팅서비스실\웹디자인팀(공)\@디자인가이드\@new_탭.psd"
        simple={simple}
        onChange={onChange}
      />
    )
  }
</script>