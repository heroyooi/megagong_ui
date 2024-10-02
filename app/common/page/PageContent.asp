<script type="text/babel">
  'use strict';

  function PageContent({ title, desc, image, image2, prevHtml = '', html, realHtml, nextHtml = '', css, js, realJs, outJs, excCss = '', items, link, error, errorLink, onChange, file, lazyFile }) {
    // const { user, mode } = useAuth();
    const { initCode } = usePage();
    const refCode = useRef(null);
    const [view, setView] = useState(false);
    const timeout1 = useRef(null);
    const timeout2 = useRef(null);
    const initJS = useRef(false);

    useEffect(() => {
      if (view) {
        window.scrollTo({
          top: refCode.current.offsetTop - (80 + 30),
          behavior: 'smooth'
        });
      }
    }, [view])

    const onView = useCallback(() => {
      setView(prev => !prev);
      if (typeof onChange == 'function') {
        onChange();
      }
    }, [onChange]);

    const jsx = useMemo(() => createElement('div', { dangerouslySetInnerHTML: { __html: html } }), [html]);
    const Styled = useMemo(() => window.styled.div`${css}${excCss}`, [css, excCss]);

    // const jsx = createElement('div', { dangerouslySetInnerHTML: { __html: html } });
    // const Styled = window.styled.div`${css}${excCss}`;

    useEffect(() => {
      if (!initJS.current || initCode.current || onChange) {
        initCode.current = false;
        if (timeout2.current) {
          clearTimeout(timeout2.current);
        }
        timeout2.current = setTimeout(() => {
          console.log('> initJS');
          initJS.current = true;
          eval(js);
        }, 300);
      }
      
      return () => {
        clearTimeout(timeout2.current);
        eval(outJs);
      }
    }, [view, js, onChange, initCode]);

    // useEffect(() => {
    //   return () => {
    //     eval(outJs);
    //   }
    // }, [outJs, onChange])

    const onCopy = useCallback((code) => () => {
      var tempTextArea = document.createElement("textarea");
      tempTextArea.value = code;
      tempTextArea.style.position = "absolute";
      tempTextArea.style.left = "-9999px";
      document.body.appendChild(tempTextArea);
      tempTextArea.select();
      document.execCommand("copy");
      document.body.removeChild(tempTextArea);

      toastr.success('코드가 클립보드에 복사되었습니다.');
    }, []);

    return (
      <div className="page_text_wrap px-10 pt-9 pb-11 mb-12 bg-white w-full box-border overflow-hidden lg:p-0 lg:pt-2">
        <p className="page_head bg-gradient-to-r from-zinc-600 to-mainColor-500 text-white text-lg font-extrabold rounded-full py-1 pr-12 pl-14 mr-2.5 -ml-14 inline-block">{title}</p> 
        {/*(mode == 'anonymous' || user) && ( */}
          <button className="code_open" onClick={onView}>
            <span className={view ? "open_bg on" : "open_bg"}></span>
            <span className={view ? "open_shape on" : "open_shape"}></span>
          </button>
        {/*)}*/}
        
        <div className="issue-box-wrap mt-7"></div>
        {image && <div className="position_site overflow-hidden mb-6 mx-56 md:mx-24 lg:mx-0 shadow-lg shadow-gray-500/50"><div className="img_topine h-[1.5rem] rounded-t-xl bg-slate-300 relative"><span className="img_deco w-2.5 h-2.5 bg-slate-100 rounded-full absolute right-6 top-1/2 block -translate-y-1/2 after:content-[''] after:w-2.5 after:h-2.5 after:bg-slate-100 after:rounded-full after:absolute after:-right-[1rem] before:content-[''] before:w-2.5 before:h-2.5 before:bg-slate-100 before:rounded-full before:absolute before:right-[1rem]"></span></div><img src={image} alt='-' /></div>}
        {image2 && <div className="position_site overflow-hidden mb-6 mx-56 md:mx-24 lg:mx-16"><div className="img_topine h-[1.5rem] rounded-t-xl bg-slate-300 relative"><span className="img_deco w-2.5 h-2.5 bg-slate-100 rounded-full absolute right-6 top-1/2 block -translate-y-1/2 after:content-[''] after:w-2.5 after:h-2.5 after:bg-slate-100 after:rounded-full after:absolute after:-right-[1rem] before:content-[''] before:w-2.5 before:h-2.5 before:bg-slate-100 before:rounded-full before:absolute before:right-[1rem]"></span></div><img src={image2} alt='-' /></div>}
<div className={`code-box html relative w-full m-auto clear-both border-y-2 border-slate-200 w-full`}>
  <Styled className="!block">{jsx}</Styled>
  {error && <div className="absolute left-0 top-0 w-full h-full bg-black z-10 opacity-75">
    <p className="text-white text-sm flex h-full justify-center items-center flex-col">리액트 환경에서 정상적으로 구동이 되지 않습니다. <br /><a href={errorLink} target="_blank">데모 페이지 가기 &gt;</a></p>
  </div>}
</div>
<p className="page_text text-black my-8 text-base font-light" dangerouslySetInnerHTML={{ __html: desc }} />

{<div style={view ? { display: "block" } : { display: "none" }} ref={refCode}>
  <div className="relative"><button className="btn-copy absolute right-4 top-4 left-[initial] flex items-center shrink" onClick={
    realHtml
      ? onCopy(`${realHtml}`)
      : onCopy(`${prevHtml}\n${html}\n${nextHtml}`)
  }><i className="bx bx-copy-alt"></i>COPY</button><pre className="language-html">
    {
      realHtml
        ? <code className="language-html">{realHtml}</code>
        : (prevHtml != '' || nextHtml != '')
            ? <code className="language-html">{`${prevHtml}\n${html}\n${nextHtml}`}</code>
            : <code className="language-html">{html}</code>
    }
  </pre></div>
  {css && <div className="relative"><button className="btn-copy absolute right-4 top-4 left-[initial] flex items-center shrink" onClick={onCopy(css)}><i className="bx bx-copy-alt"></i>COPY</button><pre className="language-css"><code className="language-css">{css}</code></pre></div>}
  {(js || realJs) && <div className="relative"><button className="btn-copy absolute right-4 top-4 left-[initial] flex items-center shrink" onClick={realJs ? onCopy(realJs) : onCopy(js)}><i className="bx bx-copy-alt"></i>COPY</button><pre className="language-js"><code className="language-js">{realJs ? realJs : js}</code></pre></div>}
</div>}
        <div className="page_bot_wrap flex justify-between items-center lg:block lg:p-2">
            {link && <a className="use_link text-mainColor-500 rounded-full border-solid border-2 border-mainColor-500 pl-4 pr-5 py-1.5 align-middle lg:w-full lg:text-center lg:mb-1 shrink-0" href={link} target="_blank">
              <i className="bx bx-link text-mainColor-500 text-xl mr-1 align-sub"></i>EXAMPLE
            </a>}
            <div className="cap_tag lg:w-full flex flex-row w-[100%]">
                <ul className="flex lg:justify-between flex flex-1 justify-end">
                    {items.map((item, index) => <li className="text-mainColor-500 rounded-full border-solid border-2 border-mainColor-500 pl-4 pr-5 py-1.5 align-middle flex items-center ml-2.5 font-extrabold lg:ml-0" key={index}>#{item}</li>)}
                </ul>
            </div>
        </div>
        {file && <div className="mt-2 text-black font-semibold flex gap-x-2">
          <span>파일 경로 : <em class="text-mainColor-500">{file}</em></span>
          <button class="text-white bg-mainColor-500 font-medium rounded px-2 py-1 text-sm hover:text-white" onClick={onCopy(file)}>
            경로 복사
          </button>
        </div>}
        {lazyFile && <div className="mt-2 text-black font-semibold flex gap-x-2">
          <span>파일 경로(레이지 로딩) : <em class="text-mainColor-500">{lazyFile}</em></span>
          <button class="text-white bg-mainColor-500 font-medium rounded px-2 py-1 text-sm hover:text-white" onClick={onCopy(file)}>
            경로 복사
          </button>
        </div>}
      </div>
    )
  }
</script>