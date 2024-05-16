<script type="text/babel">
  'use strict';

  function Teacher4({ title, onChange }) {

const html = `<div class="tec_renew tech_content">
    <div class="techBoard">
        <div class="board_wrap notice dotin">
            <div class="inner">
                <h3>������ ���ҽ�<a href="https://www.megagong.net/teacher/notice/notice.asp?bcode=jeonhangil" class="btn_more">������</a></h3>
                <ul class="board_list">
                    <li><a href="https://www.megagong.net/teacher/notice/notice.asp?bcode=jeonhangil&idx=6098" style="display:inline-block;vertical-align:middle"><img src="https://img.megagong.net/s/common/main_important_icon.gif" alt="�ʵ�" class="importantIcon"> ��61ȸ �Ѵɰ� ����/�����/���߰���</a><span class="date">2022.10.24</span></li>
                    <li><a href="https://www.megagong.net/teacher/notice/notice.asp?bcode=jeonhangil&idx=6096" style="display:inline-block;vertical-align:middle"><img src="https://img.megagong.net/s/common/main_important_icon.gif" alt="�ʵ�" class="importantIcon"> �ѱ���Դϴ�. �� 61ȸ �Ѵɰ� D-1 LIVEƯ�� �� �����մϴ�.</a><em class="count">(1)</em><span class="date">2022.10.21</span></li>
                    <li><a href="https://www.megagong.net/teacher/notice/notice.asp?bcode=jeonhangil&idx=6076" style="display:inline-block;vertical-align:middle"><img src="https://img.megagong.net/s/common/main_important_icon.gif" alt="�ʵ�" class="importantIcon"> ?10/21(��) ���� 7�� LIVE ?61ȸ �Ѵɰ� ��� �ѱ� ���� ���� Ư��!</a><em class="count">(3)</em><span class="date">2022.10.17</span></li>
                    <li><a href="https://www.megagong.net/teacher/notice/notice.asp?bcode=jeonhangil&idx=6058" style="display:inline-block;vertical-align:middle"><img src="https://img.megagong.net/s/common/main_important_icon.gif" alt="�ʵ�" class="importantIcon"> 2023 ��� 11-12�� ���� �� ����Ŀ��ŧ��</a><span class="date">2022.10.14</span></li>
                    <li><a href="https://www.megagong.net/teacher/notice/notice.asp?bcode=jeonhangil&idx=6050" style="display:inline-block;vertical-align:middle"><img src="https://img.megagong.net/s/common/main_important_icon.gif" alt="�ʵ�" class="importantIcon"> "�� 2�� �ʳ�"�� �޲ٴ� ���� ������ ���</a><span class="date">2022.10.12</span></li>
                </ul>
            </div>
        </div>
        <div class="board_wrap opinn">
            <div class="inner">
                <h3>�����ı�
                    <a href="https://www.megagong.net/teacher/review/review.asp?bcode=jeonhangil" class="btn_more">������</a>
                </h3>
                <ul class="board_list">
                    <li><a href="https://www.megagong.net/teacher/review/view.asp?bcode=jeonhangil&idx=23715&mv=content_area">�Ѵɰ˵� ���� ���ѱ� <img src="https://img.megagong.net/common/ic_new.gif"></a><span class="writer">��*��</span></li> <!--����ŷ�� �̸� -->
                    <li><a href="https://www.megagong.net/teacher/review/view.asp?bcode=jeonhangil&idx=23685&mv=content_area">�Ѵɰ˵� ���ѱ� T �����ϴ�.</a><span class="writer">��*��</span></li> <!--����ŷ�� �̸� -->
                    <li><a href="https://www.megagong.net/teacher/review/view.asp?bcode=jeonhangil&idx=23684&mv=content_area">������ �ѱ��� 1���� ������ ������ �Ѵɰ� ������ �հ��� �ѱ��� �����Ѵ�.!!</a><span class="writer">��*��</span></li> <!--����ŷ�� �̸� -->
                    <li><a href="https://www.megagong.net/teacher/review/view.asp?bcode=jeonhangil&idx=23675&mv=content_area">�����Ը� �ϰ� ������ ��ǥ �޼� ����</a><span class="writer">��*��</span></li> <!--����ŷ�� �̸� -->
                    <li><a href="https://www.megagong.net/teacher/review/view.asp?bcode=jeonhangil&idx=23671&mv=content_area">�ʱ��Ʈ ���ظ� ��� 1�� �� ���!!!</a><span class="writer">��*��</span></li> <!--����ŷ�� �̸� -->
                </ul>
            </div>
        </div>
    </div>
</div>`;

const css = ``;

const excCss = `img{display: inline;vertical-align:top;}
.tech_content .board_wrap h3{box-sizing:content-box;}
`;

const js = ``;

    return (
      <PageContent
        title={title}
        desc="�ް��������� ����Ȩ ���������� ���Ǵ� ����Ʈ ����Դϴ�. <br />
        ���� �������� �ۼ��� �ҽ� �����̳� ���������� �ۼ��� �����ı���� Ȯ���� �� �ֽ��ϴ�. <br /><br />
        ���� �������� �ۼ��� ���ҽ��� ���, �Խñ��� ������ ���� �ʵ�, �̺�Ʈ, ���� ������ ������ �������� ǥ��˴ϴ�. <br />
        ���� �ֱٿ� �ۼ��� ���ҽ� Ȥ�� �����ı��� ��� ������ �Ⱓ���� New �������� �ٰ� �˴ϴ�."
        // image="/images/popup1.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["����Ȩ","����Ʈ","���ҽ�"]}
        link="<%=url_main%>/teacher/home.asp?bcode=jeonhangil"
        onChange={onChange}
      />
    )
  }
</script>