<script type="text/babel">
  'use strict';

  function MenuLnb({ title, onChange }) {

const html = `<div id="mContainer">
<div id="mLnb" class="ver2">
	
	<button class="dropdown_nav show-1200">���� ������</button>
	<div class="nav_wrap">
		<h5>������</h5>
		<ul class="nav">
			<li class="on"><a href="javascript: void(0);" title="��ü����">��ü����</a></li>
			<li>
				<a href="javascript: void(0);" title="������õ">������õ</a>
				<ul class="sub_nav">
					<li><a href="/s/gong/pass/law/2025/index.asp#eventWrap" title="������ �ް��н�">������ �ް��н� <img src="https://design.megagong.net/image/common/ic_new_blue.gif" style="vertical-align: inherit; margin-left: 2px;"></a></li>
					<li><a href="/s/gong/event/2022/05120053/index.asp" title="[�����ȯ] ������ START">[�����ȯ] ������ START</a></li>
					<li><a href="/s/gong/event/2022/07280123/index.asp#eventWrap" title="[1��ȯ] ������ ����ϼ�">[1��ȯ] ������ ����ϼ�</a></li>
				</ul>
			</li>
			<li>
				<a href="javascript: void(0);" title="���� &amp; ���� ��ȹ��">���� &amp; ���� ��ȹ��</a>
				<ul class="sub_nav">
					<li><a href="/vod/vod_chr_list.asp?mcode=6&amp;scode=C1" title="�ǹ����">�ǹ����</a></li>
				</ul>
			</li>
			<li><a href="/vod/vod_chr_list.asp?mcode=7&amp;scode=B5" title="���ε���Ī ����">���ε���Ī ����</a></li>
			<li><a href="/event/2021/03040005/" title="����Ư�� ZONE">����Ư�� ZONE <img src="https://design.megagong.net/image/common/ic_new_blue.gif" style="vertical-align: inherit; margin-left: 2px;"></a></li>
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
        desc="�޴� ������Ʈ�� �ް������� ����Ʈ�� �̿��ϴ� �л����� �ʿ�� �ϴ� ������ ���񽺸� ���� ã�� �� �ֵ��� �����Ǿ� �ֽ��ϴ�."
        image="/images/demo/menu_lnb.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        outJs={outJs}
        items={["�����޴�","LNB"]}
        link="<%=url_main%>/vod/vod_chr_list.asp?mcode=5&grd_fg=9&cate_cd=3"
        onChange={onChange}
      />
    )
  }
</script>