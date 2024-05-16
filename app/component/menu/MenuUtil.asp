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
    </div>
    <div class="dday_wrap">
        <div class="dday_txt" onclick="window.open('<%=lab_main%>/l/gong/guide/schedule.asp')">������ 5�� 1�� <strong>D-45</strong></div>
        <div class="dday_txt" onclick="window.open('<%=lab_main%>/l/gong/guide/schedule.asp')">���� 1�� <strong>D-50</strong></div>
        <div class="dday_txt" onclick="window.open('<%=lab_main%>/l/gong/guide/schedule.asp')">������ 9�� <strong>D-55</strong></div>
        <div class="dday_txt" onclick="window.open('<%=lab_main%>/l/gong/guide/schedule.asp')">�ҹ������ <strong>D-60</strong></div>
        <div class="dday_txt" onclick="window.open('<%=lab_main%>/l/gong/guide/schedule.asp')">������ 9�� <strong>D-65</strong></div>
        <div class="dday_txt" onclick="window.open('<%=lab_main%>/l/gong/guide/schedule.asp')">������ 5�� 2�� <strong>D-70</strong></div>
        <div class="dday_txt" onclick="window.open('<%=lab_main%>/l/gong/guide/schedule.asp')">������ 9�� <strong>D-75</strong></div>
        <div class="dday_txt" onclick="window.open('<%=lab_main%>/l/gong/guide/schedule.asp')">������ 7�� 1�� <strong>D-80</strong></div>
        <div class="dday_txt" onclick="window.open('<%=lab_main%>/l/gong/guide/schedule.asp')">������ 7�� 2�� <strong>D-85</strong></div>
        <div class="dday_txt" onclick="window.open('<%=lab_main%>/l/gong/guide/schedule.asp')">������ 7�� <strong>D-172</strong></div>
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
      />
    )
  }
</script>