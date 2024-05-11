<script type="text/babel">
  'use strict';

  function MenuUtil({ title, onChange }) {

const html = `<div id="headertop">
  <div class="hd_top">
    <div class="login_wrap">
      <!-- �α��� �� ���� ���� -->
      <form name="frmLogin_top" method="post" action="<%=url_main%>/member/login_sql.asp?site_gubun=gong">
          <ul class="login_after">
              <li><a href="/help/faq/" title="�н���������" style="color:#1e6dc9;font-weight: bold;"> �н��������� </a></li>
              <li><a href="<%=url_main%>/member/login.asp">�α���</a></li>
              <li><a href="<%=url_main%>/member/agree.asp">ȸ������</a></li>
              <li><a href="<%=url_main%>/member/login.asp?r_url=%2Fmypage%2F">����������</a></li>
              <li><a href="<%=url_main%>/mypage/pay/my_cart.asp">��ٱ���</a></li>
          </ul>
      </form>
      <!-- �α��� �� ���� ���� -->
      <div class="dday_wrap">
        
      </div> 
    </div>
  </div>
</div>`;

const css = ``;

const excCss = `
#headertop .hd_top{overflow:hidden;}
`;

const js = ``;

const outJs = ``;

    return (
      <PageContent
        title={title}
        desc="�޴� ������Ʈ�� �ް������� ����Ʈ�� �̿��ϴ� �л����� �ʿ�� �ϴ� ������ ���񽺸� ���� ã�� �� �ֵ��� �����Ǿ� �ֽ��ϴ�."
        // image="/images/btn.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        outJs={outJs}
        items={["��ƿ�޴�","���� �޴�"]}
        link="<%=url_main%>/teacher/qna/qna.asp"
        onChange={onChange}
        version="no-padding"
      />
    )
  }
</script>