<div id="root"></div>

<script src="//unpkg.com/react@18/umd/react.development.js"></script>
<script src="//unpkg.com/react-dom@18/umd/react-dom.development.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/react-router-dom/5.3.0/react-router-dom.js"></script>
<script src="//unpkg.com/@babel/standalone/babel.min.js"></script>

<script src="//cdn.jsdelivr.net/gh/highlightjs/cdn-release@11.7.0/build/highlight.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
<script src="/js/utils.js"></script>

<!-- #include virtual = "/app/index.asp"-->

<script type="text/babel">
    'use strict';

    const container = document.getElementById('root');
    const root = ReactDOM.createRoot(container);

    const { useState, useCallback, useMemo, useEffect, useRef, useContext } = React;
    const { HashRouter, BrowserRouter, Route, Link, useParams, useLocation, withRouter } = ReactRouterDOM;

    root.render(
      <ComponentGuide />
    );
</script>