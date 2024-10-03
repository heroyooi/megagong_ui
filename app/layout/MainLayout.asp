<script type="text/babel">
    'use strict';

    function MainLayout() {
      useEffect(() => {
        Lab.top();
        // Lab.showCode();

        const header = document.querySelector('.header_wrp');
        const mainContent = document.querySelector('.main_content');

        const handleScroll = () => {
          if (window.scrollY > mainContent.offsetHeight - header.offsetHeight) {
            header.classList.add('on');
          } else {
            header.classList.remove('on');
          }
        };

        document.querySelector('body').classList.add('main');
        header.querySelector('h1').addEventListener('click', Lab.top);
        window.addEventListener('scroll', handleScroll);


        return () => {
          document.querySelector('body').classList.remove('main');
          header.classList.remove('on');
          header.querySelector('h1').removeEventListener('click', Lab.top);
          window.removeEventListener('scroll', handleScroll);
        }
      }, []);

      return (
        <div className="main_wrapper">
          <div className="main_content">
            <div className="message">
              <h1>�ް������� ������Ʈ ���̵�</h1>
              <p>�ް��������� �̿��� �߽��� <b>�귣�� ǥ��ȭ</b>�� �߱��մϴ�. <br />�ް��������� �پ��� ������Ʈ�� Ȯ���غ�����.</p>
              <div className="btns_area">
                <Link to="/component/banner/ss">�����ϱ�</Link>
              </div>
            </div>
            
          </div>{/* .main_content */}
          <div className="main_intro">
            <PassBanner simple={true} />
            <PassBanner simple={true} />
            <PassBanner simple={true} />
            <PassBanner simple={true} />
            <PassBanner simple={true} />
            <PassBanner simple={true} />
            <PassBanner simple={true} />
            <PassBannerEtc simple={true} />
          </div>
        </div>
      )
    }
</script>