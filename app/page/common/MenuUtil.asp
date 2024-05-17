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
    </div>
    <div class="dday_wrap">
        <div class="dday_txt" onclick="window.open('<%=lab_main%>/l/gong/guide/schedule.asp')">국가직 5급 1차 <strong>D-45</strong></div>
        <div class="dday_txt" onclick="window.open('<%=lab_main%>/l/gong/guide/schedule.asp')">경찰 1차 <strong>D-50</strong></div>
        <div class="dday_txt" onclick="window.open('<%=lab_main%>/l/gong/guide/schedule.asp')">국가직 9급 <strong>D-55</strong></div>
        <div class="dday_txt" onclick="window.open('<%=lab_main%>/l/gong/guide/schedule.asp')">소방공무원 <strong>D-60</strong></div>
        <div class="dday_txt" onclick="window.open('<%=lab_main%>/l/gong/guide/schedule.asp')">지방직 9급 <strong>D-65</strong></div>
        <div class="dday_txt" onclick="window.open('<%=lab_main%>/l/gong/guide/schedule.asp')">국가직 5급 2차 <strong>D-70</strong></div>
        <div class="dday_txt" onclick="window.open('<%=lab_main%>/l/gong/guide/schedule.asp')">법원직 9급 <strong>D-75</strong></div>
        <div class="dday_txt" onclick="window.open('<%=lab_main%>/l/gong/guide/schedule.asp')">국가직 7급 1차 <strong>D-80</strong></div>
        <div class="dday_txt" onclick="window.open('<%=lab_main%>/l/gong/guide/schedule.asp')">국가직 7급 2차 <strong>D-85</strong></div>
        <div class="dday_txt" onclick="window.open('<%=lab_main%>/l/gong/guide/schedule.asp')">지방직 7급 <strong>D-172</strong></div>
      </div> 
  </div>
</div>`;

const css = ``;

const excCss = `
#headertop .hd_top{overflow:hidden;}
`;

const js = `(function($){
    $('.dday_wrap').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        infinite: true,
        dots: false,
        arrows: false,
        speed: 200,
        autoplaySpeed: 3000,
        autoplay: true,
        rows: 0,
        vertical: true
    });
})(jQuery);`;

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
      />
    )
  }
</script>