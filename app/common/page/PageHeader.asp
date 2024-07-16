<script type="text/babel">
    'use strict';

    function PageHeader({ name, sub, text }) {
      
      const onPrint = useCallback(() => {
        window.print();
      }, []);

      return (
        <div className="page_name_wrap border-mainColor-500">
            <h3 className="page_name">{name}</h3>
            <h3 className="page_name_sub">{sub}</h3>
            <p className="page_sub_text" dangerouslySetInnerHTML={{__html: text}} />
          <div className="page_print"><input type="button" value="ÀÎ¼âÇÏ±â" id="print" onClick={onPrint} /></div>
        </div>
      )
    }
</script>