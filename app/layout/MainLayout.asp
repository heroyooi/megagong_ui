<script type="text/babel">
    'use strict';

    function MainLayout() {
      useEffect(() => {
        Lab.top();
        // Lab.showCode();

        document.querySelector('.header_wrp h1').addEventListener('click', Lab.top);

        return () => {
          $('.header_wrp').removeClass('on');
          document.querySelector('.header_wrp h1').removeEventListener('click', Lab.top);
        }
      }, []);

      return (
        <>
        
        </>
      )
    }
</script>