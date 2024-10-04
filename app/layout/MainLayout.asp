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
              <h1>메가공무원 컴포넌트 가이드</h1>
              <p>메가공무원은 이용자 중심의 <b>브랜드 표준화</b>를 추구합니다. <br />메가공무원의 다양한 컴포넌트를 확인해보세요.</p>
              <div className="btns_area">
                <Link to="/component/banner/ss">시작하기</Link>
              </div>
            </div>
          </div>{/* .main_content_wrap */}
          <div className="main_worklist_wrap">
            <h2 className="main_sub_title"><span>MEGAGONG's</span> Frontend</h2>
            <div className="main_worklist">
              <div className="main_work">
                <h3>메인 성능 최적화</h3>
                <div className="desc">
                  <p>메가공무원은 항시 성능을 개선합니다. <br />동종업계 타사이트 대비 빠른 스피드를 자랑하며 이용자들이 빠른 속도로 웹서비스를 이용할 수 있도록 만전을 다하고 있습니다.</p>
                  <span className="tiny">*2024년 평균 FCP 1초, LCP 2.5초 이내</span>
                </div>
                <div className="btns_area">
                  <a href="https://devhitu.notion.site/10c81940c7788079962ada615806844c?v=fff81940c77881aa922e000c85cf1134" target="_blank" rel="noopener noreferrer">자료 보기</a>
                </div>
              </div>
              <div className="main_work">
                <h3>UI/UX 최적화</h3>
                <div className="desc">
                  <p>메가공무원 운영진은 이용자들의 만족도 개선을 위해서 항상 노력하고 있습니다.</p>
                </div>
                <div className="btns_area">
                  <a href="https://iodized-saturday-4bf.notion.site/UIUX-111fb294905e80da8e50c2a216e033bf" target="_blank" rel="noopener noreferrer">자료 보기</a>
                </div>
              </div>
              <div className="main_work">
                <h3>브랜드 최적화</h3>
                <div className="desc">
                  <p>메가공무원은 웹 전문가들의 수십년간의 노하우를 통해서 제작 되었으며, 이용자들이 웹서비스에 쉽게 적응하고 이용하여 합격에 이룰 수 있도록 최선을 다할 것 입니다.</p>
                  <span className="tiny"></span>
                </div>
                <div className="btns_area">
                  <a href="https://iodized-saturday-4bf.notion.site/UIUX-111fb294905e80da8e50c2a216e033bf" target="_blank" rel="noopener noreferrer">자료 보기</a>
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