<script type="text/babel">
  'use strict';

  function MenuUtil({ title, onChange }) {

const html = `<div id="headertop">
  <div class="hd_top">
    <div class="login_wrap">
      <!-- 로그인 전 정보 영역 -->
      <form name="frmLogin_top" method="post" action="<%=url_main%>/member/login_sql.asp?site_gubun=gong">
          <ul class="login_after">
              <li><a href="/help/faq/" title="학습지원센터" style="color:#1e6dc9;font-weight: bold;"> 학습지원센터 </a></li>
              <li><a href="<%=url_main%>/member/login.asp">로그인</a></li>
              <li><a href="<%=url_main%>/member/agree.asp">회원가입</a></li>
              <li><a href="<%=url_main%>/member/login.asp?r_url=%2Fmypage%2F">마이페이지</a></li>
              <li><a href="<%=url_main%>/mypage/pay/my_cart.asp">장바구니</a></li>
          </ul>
      </form>
      <!-- 로그인 전 정보 영역 -->
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
        desc="메뉴 컴포넌트는 메가공무원 사이트를 이용하는 학생들이 필요로 하는 정보와 서비스를 쉽게 찾을 수 있도록 구성되어 있습니다."
        // image="/images/btn.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        outJs={outJs}
        items={["유틸메뉴","직렬 메뉴"]}
        link="<%=url_main%>/teacher/qna/qna.asp"
        onChange={onChange}
        version="no-padding"
      />
    )
  }
</script>