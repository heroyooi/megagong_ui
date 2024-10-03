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
              <h1>메가공무원 컴포넌트 가이드</h1>
              <p>메가공무원은 이용자 중심의 <b>브랜드 표준화</b>를 추구합니다. <br />메가공무원의 다양한 컴포넌트를 확인해보세요.</p>
              <div className="btns_area">
                <Link to="/component/banner/ss">시작하기</Link>
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