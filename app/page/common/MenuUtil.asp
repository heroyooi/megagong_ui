<script type="text/babel">
  'use strict';

  function MenuUtil({ title, onChange, simple = false }) {

const html = `<div id="headertop">
  <div class="hd_top">
    <div class="login_wrap">
      <ul class="login_after">
        <li><a href="/help/faq/" title="학습지원센터"> 학습지원센터 </a></li>
        <li><a href="/mypage/" title="마이페이지"> 마이페이지 </a></li>
        <li><a href="/mypage/study/my_study.asp"> 내 강의실 </a></li>
        <li><a href="/mypage/paper/my_paper.asp">쪽지</a></li>
        <li><a href="https://dev.megagong.net/mypage/pay/my_cart.asp">장바구니</a></li>
        <li><a href="/member/logout_sql.asp"> 로그아웃</a></li>
      </ul>
      <ul class="sns_list hdtop">
        <li class="blog"><a href="https://blog.naver.com/gongcamp" target="_blank">블로그</a></li>
        <li class="instagram"><a href="https://www.instagram.com/megagong" target="_blank">인스타그램</a></li>
        <li class="youtube"><a href="https://www.youtube.com/channel/UCkY2Tq32Mpy8Qq-QljPFLag" target="_blank">유튜브</a></li>
      </ul>
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
#headertop .hd_top{overflow:hidden;padding-right:120px;}
#headertop .sns_list.hdtop{right:0;}
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
        image="/images/demo/menu_utilmenu.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        outJs={outJs}
        items={["유틸메뉴","직렬 메뉴"]}
        link="<%=url_main%>/teacher/qna/qna.asp"
        simple={simple}
        onChange={onChange}
      />
    )
  }
</script>