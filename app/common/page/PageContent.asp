<script type="text/babel">
  'use strict';

  function PageContent({ title, desc, image, html, css, js, items, link }) {
    const { user } = useAuth();
    const refCode = useRef(null);
    const [view, onView] = useCode(false, refCode);

    const jsx = createElement('div', { dangerouslySetInnerHTML: { __html: html } });
    const Styled = window.styled.div`${css}`;

    useEffect(() => {
      eval(js);
    }, []);

    return (
      <div className="page_text_wrap px-10 pt-9 pb-11 mb-12 bg-white w-full box-border">
        <p className="page_head bg-gradient-to-r from-zinc-600 to-mainColor-500 text-white text-lg font-extrabold rounded-full py-1 pr-12 pl-14 mr-2.5 -ml-14 inline-block">{title}</p> 
        {user && (
          <button className="code_open" onClick={onView}>
            <span className={view ? "open_bg on" : "open_bg"}></span>
            <span className={view ? "open_shape on" : "open_shape"}></span>
          </button>
        )}
        
        <div className="issue-box-wrap mt-7"></div>
        <div className="position_site px-36 overflow-hidden mb-6 bg-mainColor_gray-500"><img src={image} alt='-' /></div>
<div className="code-box html w-full m-auto clear-both p-10 border-solid border-y-2 border-slate-200"><Styled>{jsx}</Styled></div>
<p className="page_text text-black my-8 text-base font-light" dangerouslySetInnerHTML={{ __html: desc }} />

{<div style={view ? { display: "block" } : { display: "none" }} ref={refCode}>
  <pre className="language-html"><code className="language-html">{html}</code></pre>
  {css && <pre className="language-css"><code className="language-css">{css}</code></pre>}
  {js && <pre className="language-js"><code className="language-js">{js}</code></pre>}
</div>}
        <div className="page_bot_wrap flex justify-between items-center lg:block">
            <a className="use_link text-mainColor-500 rounded-full border-solid border-2 border-mainColor-500 pl-4 pr-5 py-1.5 align-middle lg:w-full lg:text-center lg:mb-1" href="<%=url_main%>/megagong.asp" target="_blank">
              <i className="bx bx-link text-mainColor-500 text-xl mr-1 align-sub"></i>EXAMPLE
            </a>
            <div className="cap_tag lg:w-full">
                <ul className="flex lg:justify-between">
                    {items.map((item, index) => <li className="text-mainColor-500 rounded-full border-solid border-2 border-mainColor-500 pl-4 pr-5 py-1.5 align-middle flex items-center ml-2.5 font-extrabold lg:ml-0" key={index}>#{item}</li>)}
                </ul>
            </div>
        </div>
      </div>
    )
  }
</script>