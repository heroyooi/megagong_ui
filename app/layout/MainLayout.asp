<script type="text/babel">
    'use strict';

    function MainLayout() {
      const timeout = useRef(null);
      useEffect(() => {
        Lab.top();

        const header = document.querySelector('.header_wrp');
        const mainContent = document.querySelector('.main_content_wrap');

        const handleScroll = () => {
          if (window.scrollY > mainContent.offsetHeight - header.offsetHeight) {
            header.classList.add('on');
          } else {
            header.classList.remove('on');
          }
        };

        const component = document.querySelector('.main_component');
        const masonry = new Masonry(component, {
            itemSelector: '.grid-item',
            columnWidth: '.grid-item',
            percentPosition: true
        });

        timeout.current = setTimeout(() => {
          masonry.layout();
        }, 500);

        document.querySelector('body').classList.add('main');
        header.querySelector('h1').addEventListener('click', Lab.top);
        window.addEventListener('scroll', handleScroll);

        return () => {
          clearTimeout(timeout.current);
          document.querySelector('body').classList.remove('main');
          header.classList.remove('on');
          header.querySelector('h1').removeEventListener('click', Lab.top);
          window.removeEventListener('scroll', handleScroll);
        }
      }, []);

      return (
        <div className="main_wrapper">
          <div className="main_content_wrap">
            <div className="message">
              <h1>�ް������� ������Ʈ ���̵�</h1>
              <p>�ް��������� �̿��� �߽��� <b>�귣�� ǥ��ȭ</b>�� �߱��մϴ�. <br />�ް��������� �پ��� ������Ʈ�� Ȯ���غ�����.</p>
              <div className="btns_area">
                <Link to="/component/banner/ss">�����ϱ�</Link>
              </div>
            </div>
          </div>{/* .main_content_wrap */}
          <div className="main_worklist_wrap">
            <h2 className="main_sub_title"><span>MEGAGONG's</span> Frontend</h2>
            <div className="main_worklist">
              <div className="main_work">
                <h3>���� ���� ����ȭ</h3>
                <div className="desc">
                  <p>�ް��������� �׽� ������ �����մϴ�. <br />�������� Ÿ����Ʈ ��� ���� ���ǵ带 �ڶ��ϸ� �̿��ڵ��� ���� �ӵ��� �����񽺸� �̿��� �� �ֵ��� ������ ���ϰ� �ֽ��ϴ�.</p>
                  <span className="tiny">*2024�� ��� FCP 1��, LCP 2.5�� �̳�</span>
                </div>
                <div className="btns_area">
                  <a href="https://devhitu.notion.site/10c81940c7788079962ada615806844c?v=fff81940c77881aa922e000c85cf1134" target="_blank" rel="noopener noreferrer">�ڷ� ����</a>
                </div>
              </div>
              <div className="main_work">
                <h3>UI/UX ����ȭ</h3>
                <div className="desc">
                  <p>�ް������� ����� �̿��ڵ��� ������ ������ ���ؼ� �׻� ����ϰ� �ֽ��ϴ�.</p>
                </div>
                <div className="btns_area">
                  <a href="https://iodized-saturday-4bf.notion.site/UIUX-111fb294905e80da8e50c2a216e033bf" target="_blank" rel="noopener noreferrer">�ڷ� ����</a>
                </div>
              </div>
              <div className="main_work">
                <h3>�귣�� ����ȭ</h3>
                <div className="desc">
                  <p>�ް��������� �� ���������� ���ʳⰣ�� ���Ͽ츦 ���ؼ� ���� �Ǿ�����, �̿��ڵ��� �����񽺿� ���� �����ϰ� �̿��Ͽ� �հݿ� �̷� �� �ֵ��� �ּ��� ���� �� �Դϴ�.</p>
                  <span className="tiny"></span>
                </div>
                <div className="btns_area">
                  <a href="https://iodized-saturday-4bf.notion.site/UIUX-111fb294905e80da8e50c2a216e033bf" target="_blank" rel="noopener noreferrer">�ڷ� ����</a>
                </div>
              </div>
            </div>
          </div>{/* .main_worklist_wrap */}
          <div className="main_component_wrap">
            <h2 className="main_sub_title"><span>MEGAGONG's</span> UI</h2>
            <div className="main_component">
              <div className="grid-item"><PassBanner simple={true} /></div>
              <div className="grid-item"><MenuHcode simple={true} /></div>
              <div className="grid-item"><ButtonBlack simple={true} /></div>
              <div className="grid-item"><BoardComment simple={true} /></div>
              <div className="grid-item"><ButtonOther simple={true} /></div>
              <div className="grid-item"><MenuLnb simple={true} /></div>
              <div className="grid-item"><ButtonWhite simple={true} /></div>
              <div className="grid-item"><PassBannerEtc simple={true} /></div>
              <div className="grid-item"><PassBanner simple={true} /></div>
              <div className="grid-item"><MenuUtil simple={true} /></div>
              <div className="grid-item"><PassBanner simple={true} /></div>
              <div className="grid-item"><MenuGnb simple={true} /></div>
            </div>
          </div>{/* .main_component_wrap */}
        </div>
      )
    }
</script>