<script type="text/babel">
  'use strict';

  function PageContent({ title, desc, image, html, css, items, link }) {
    const { user } = useAuth();
    const refCode = useRef(null);
    const [view, onView] = useCode(false, refCode);

    const jsx = createElement('div', { dangerouslySetInnerHTML: { __html: html } });
    const Styled = window.styled.div`${css}`;

    return (
      <div className="page_text_wrap">
        <p className="page_head">{title}</p> 
        {user && (
          <button className="code_open" onClick={onView}>
            <span className={view ? "open_bg on" : "open_bg"}></span>
            <span className={view ? "open_shape on" : "open_shape"}></span>
          </button>
        )}
        
        <div className="issue-box-wrap"></div>
        <div className="position_site"><img src={image} alt='-' /></div>
<div className="code-box html"><Styled>{jsx}</Styled></div>
<p className="page_text" dangerouslySetInnerHTML={{ __html: desc }} />

{<div style={view ? { display: "block" } : { display: "none" }} ref={refCode}>
  <pre className="language-html"><code className="language-html">{html}</code></pre>
  <pre className="language-css"><code className="language-css">{css}</code></pre>
</div>}
        <div className="page_bot_wrap">
            <a className="use_link" href="<%=url_main%>/megagong.asp" target="_blank"><i className='bx bx-link'></i>EXAMPLE</a>
            <div className="cap_tag">
                <ul>
                    {items.map((item, index) => <li key={index}>#{item}</li>)}
                </ul>
            </div>
        </div>
      </div>
    )
  }
</script>