<script type="text/babel">
  'use strict';

  function BannerMegasPick({ title, onChange }) {

const html = `<div class="main_wrp">
  <!-- S: [PC] MEGA's PICK / main_sPick -->
  <div id="main_sPick" class="main_sPick">

      <div class="title_wrap lv1">
          <h3>Mega's <b>Pick</b></h3>
      </div>

      <div class="cont_wrap">
          <ul>
              <li>
                  <a href="" title="2025 ����.�Թ� ������ �������">
                      <span>6.21~7.5 ���� ���� ����</span>
                      <strong>2025 ����.�Թ� ������ �������</strong>
                  </a>
              </li>
              <li>
                  <a href="" title="�ް��н� ���� �̺�Ʈ ">
                      <span>�ʼ����� ������ �ִ� 20���� ����</span>
                      <strong>�ް��н� ���� �̺�Ʈ </strong>
                  </a>
              </li>
              <li>
                  <a href="/s/gong/event/2024/01030004/index.asp#eventWrap" title="����� ���� ����� �ǿ��� �ɷ�">
                      <span>���� Ǯ�� ���̴� ����/����</span>
                      <strong>����� ���� ����� �ǿ��� �ɷ�</strong>
                  </a>
              </li>
              <li>
                  <a href="/s/gong/event/2024/05210045/index.asp#eventWrap" title="2025 �հ� Ŀ��ŧ�� ���̵� ">
                      <span>ù �������� �հ��ϴ� ���</span>
                      <strong>2025 �հ� Ŀ��ŧ�� ���̵�</strong>
                  </a>
              </li>
          </ul>
      </div><!-- / cont_wrap -->

  </div><!-- / main_sPick -->
</div>`;

const css = ``;

const excCss = ``;

const js = ``;

    return (
      <PageContent
        title={title}
        desc=""
        image="/images/demo/main_banner_megaspick.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["Mega's Pick", "���� ���"]}
        link="<%=url_main%>/megagong.asp"
        onChange={onChange}
      />
    )
  }
</script>