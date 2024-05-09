<script type="text/babel">
  'use strict';

  function PageContent({ title, desc, image, image2, html, css, js, outJs, excCss = '', items, link, onChange, version = 'general' }) {
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
          // behavior: 'smooth'
        });
      }
    }, [view, js])

    const onView = () => {
      setView(prev => !prev);
      if (typeof onChange == 'function') {
        onChange();
      }
    }

    const jsx = createElement('div', { dangerouslySetInnerHTML: { __html: html } });
    const Styled = window.styled.div`${css}${excCss}`;

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
    }, [view, js, onChange, initCode.current]);

    // useEffect(() => {
    //   return () => {
    //     eval(outJs);
    //   }
    // }, [outJs, onChange])

    const onCopy = (code) => () => {
      var tempTextArea = document.createElement("textarea");
      tempTextArea.value = code;
      tempTextArea.style.position = "absolute";
      tempTextArea.style.left = "-9999px";
      document.body.appendChild(tempTextArea);
      tempTextArea.select();
      document.execCommand("copy");
      document.body.removeChild(tempTextArea);

      toastr.success('코드가 클립보드에 복사되었습니다.');
    }

    return (
      <div className="page_text_wrap px-10 pt-9 pb-11 mb-12 bg-white w-full box-border overflow-hidden">
        <p className="page_head bg-gradient-to-r from-zinc-600 to-mainColor-500 text-white text-lg font-extrabold rounded-full py-1 pr-12 pl-14 mr-2.5 -ml-14 inline-block">{title}</p> 
        {/*(mode == 'anonymous' || user) && ( */}
          <button className="code_open" onClick={onView}>
            <span className={view ? "open_bg on" : "open_bg"}></span>
            <span className={view ? "open_shape on" : "open_shape"}></span>
          </button>
        {/*)}*/}
        
        <div className="issue-box-wrap mt-7"></div>
        {image && <div className="position_site px-36 overflow-hidden mb-6 bg-mainColor_gray-500"><img src={image} alt='-' /></div>}
        {image2 && <div className="position_site px-36 overflow-hidden mb-6 bg-mainColor_gray-500"><img src={image2} alt='-' /></div>}
<div className={`code-box html w-full m-auto clear-both border-y-2 border-slate-200 ${version != 'no-padding' && "p-10 border-solid"}`}><Styled>{jsx}</Styled></div>
<p className="page_text text-black my-8 text-base font-light" dangerouslySetInnerHTML={{ __html: desc }} />

{<div style={view ? { display: "block" } : { display: "none" }} ref={refCode}>
  <div className="relative"><button className="btn-copy absolute right-4 top-4 left-[initial] flex items-center shrink" onClick={onCopy(html)}><i className="bx bx-copy-alt"></i>COPY</button><pre className="language-html"><code className="language-html">{html}</code></pre></div>
  {css && <div className="relative"><button className="btn-copy absolute right-4 top-4 left-[initial] flex items-center shrink" onClick={onCopy(css)}><i className="bx bx-copy-alt"></i>COPY</button><pre className="language-css"><code className="language-css">{css}</code></pre></div>}
  {js && <div className="relative"><button className="btn-copy absolute right-4 top-4 left-[initial] flex items-center shrink" onClick={onCopy(js)}><i className="bx bx-copy-alt"></i>COPY</button><pre className="language-js"><code className="language-js">{js}</code></pre></div>}
</div>}
        <div className="page_bot_wrap flex justify-between items-center lg:block">
            <a className="use_link text-mainColor-500 rounded-full border-solid border-2 border-mainColor-500 pl-4 pr-5 py-1.5 align-middle lg:w-full lg:text-center lg:mb-1" href={link} target="_blank">
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