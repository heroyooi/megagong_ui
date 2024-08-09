<script type="text/babel">
  'use strict';

  function MenuLnb({ title, onChange }) {

const html = `<div id="mContainer">
	<div id="mLnb" class="ver2">
		<button class="dropdown_nav show-1200">강좌 더보기</button>
		<div class="nav_wrap">
			<h5>법원직</h5>
			<ul class="nav">
				<li class="on"><a href="javascript: void(0);" title="전체강좌">전체강좌</a></li>
				<li>
					<a href="javascript: void(0);" title="시즌추천">시즌추천</a>
					<ul class="sub_nav">
						<li><a href="/s/gong/pass/law/2025/index.asp#eventWrap" title="법원직 메가패스">법원직 메가패스 <img src="https://design.megagong.net/image/common/ic_new_blue.gif" style="vertical-align: inherit; margin-left: 2px;"></a></li>
						<li><a href="/s/gong/event/2022/05120053/index.asp" title="[예비순환] 법원직 START">[예비순환] 법원직 START</a></li>
						<li><a href="/s/gong/event/2022/07280123/index.asp#eventWrap" title="[1순환] 법원직 개념완성">[1순환] 법원직 개념완성</a></li>
					</ul>
				</li>
				<li>
					<a href="javascript: void(0);" title="직렬 &amp; 과목별 기획전">직렬 &amp; 과목별 기획전</a>
					<ul class="sub_nav">
						<li><a href="/vod/vod_chr_list.asp?mcode=6&amp;scode=C1" title="실무대비">실무대비</a></li>
					</ul>
				</li>
				<li><a href="/vod/vod_chr_list.asp?mcode=7&amp;scode=B5" title="마인드코칭 강좌">마인드코칭 강좌</a></li>
				<li><a href="/event/2021/03040005/" title="무료특강 ZONE">무료특강 ZONE <img src="https://design.megagong.net/image/common/ic_new_blue.gif" style="vertical-align: inherit; margin-left: 2px;"></a></li>
			</ul>
		</div>
	</div>
</div>`;

const css = ``;

const excCss = `#mContainer #mLnb.ver2 ul.nav > li img{display: inline;}`;

const js = ``;

const outJs = ``;

    return (
      <PageContent
        title={title}
        desc="메뉴 컴포넌트는 메가공무원 사이트를 이용하는 학생들이 필요로 하는 정보와 서비스를 쉽게 찾을 수 있도록 구성되어 있습니다."
        image="/images/demo/menu_lnb.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        outJs={outJs}
        items={["좌측메뉴","LNB"]}
        link="<%=url_main%>/vod/vod_chr_list.asp?mcode=5&grd_fg=9&cate_cd=3"
        onChange={onChange}
      />
    )
  }
</script>