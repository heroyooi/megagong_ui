<script type="text/babel">
  'use strict';

  function Tweet() {
    const [active, setActive] = useState(true);
    const [tweets, setTweets] = useState([]);
    const [tweetValue, setTweetValue] = useState('');
    const { user, admin } = useAuth();
    const tweetInput = useRef(null);
    const tweetBox = useRef(null);
    const tweetList = useRef(null);

    useEffect(() => {
      tweetRef
        .orderBy("createdAt", "asc")
        .onSnapshot((snapshot) => {
          const tweetArray = snapshot.docs.map((doc) => ({
            id: doc.id,
            ...doc.data(),
          }));
          setTweets([]);
          tweetArray.forEach((tweet) => {
            setTweets(
              prev => [
                ...prev,
                {
                  id: tweet.id,
                  creatorId: tweet.creatorId,
                  option: tweet.optionValue,
                  author: tweet.author,
                  text: tweet.text,
                  createdAt: tweet.createdAt,
                }
              ]
            )
          });
          snapshot.docChanges().forEach((change) => {
            if (change.type === 'removed' || change.type === 'modified') {
            }
            if (change.type === 'added') {
            }
          });
        });
    }, []);

    useEffect(() => {
      if (tweetBox.current.scrollTop >= tweetList.current.clientHeight - tweetBox.current.clientHeight - 400) {
        setTimeout(() => {
          tweetBox.current.scrollTo({
            top: tweetList.current.clientHeight,
          })
          tweetInput.current.focus();
        }, 150);
      }
    }, [tweets]);

    const handleSubmit = useCallback(() => {
      const tweetObj = {
        text: tweetValue,
        createdAt: Date.now(),
        author: user.displayName,
        creatorId: user.uid,
      }
      tweetRef.add(tweetObj).then(() => {
        tweetBox.current.scrollTo({
            top: tweetList.current.clientHeight,
        });
        setTweetValue('');
      });
    }, [tweetValue]);

    const handleKeyPress = (e) => {
      if (e.key === 'Enter') {
        e.preventDefault(); // 기본 동작(새 줄 추가) 방지
        handleSubmit();
      }
    };

    const handleChange = useCallback((e) => {
      setTweetValue(e.target.value);
    }, []);

    const DateHTML = (author, createdAt, id) => {
      if (admin) {
        return (
          <span className="tweet_span owner staff">
            <div className="wrap_design">
              <span className="author">{author != '' ? author : '손님'}</span>
              <span className="time">{moment(createdAt).format('YY-MM-DD a h:mm')}</span>
            </div>
          </span>
        )
      }
      if (author == '') {
        return (
          <span className="tweet_span">
            <div className="wrap_design">
              <span className="author">손님</span>
              <span className="time">{moment(createdAt).format('YY-MM-DD a h:mm')}</span>
            </div>
          </span>
        )
      } else {
        console.log('>>', id, user?.uid)
        return (
          <span className={id == user?.uid ? "tweet_span owner staff" : "tweet_span staff"}>
            <div className="wrap_design">
              <span className="author">{author}</span>
              <span className="time">{moment(createdAt).format('YY-MM-DD a h:mm')}</span>
            </div>
          </span>
        )
      }
    }

    return (
      <div className={active ? "popup_tweet on" : "popup_tweet"} id="all"> 
        <button className="tweet_icon" onClick={() => setActive(prev => !prev)}>
          <i className='bx bx-chat' style={active ? { display: 'none' } : { display: 'block' }}></i>
          <i className='bx bx-x' style={active ? { display: 'block' } : { display: 'none' }}></i>
        </button>
        <div className={active ? "popup_tweet_board on" : "popup_tweet_board"}>
          <div className="page_head_wrap">
            <p className="page_head">의견남기기</p>
            <div className="tweet_item">
              <a href="#" className="up"><i className='bx bx-up-arrow-alt'></i></a>
              <a href="#" className="down"><i className='bx bx-down-arrow-alt' ></i></a>
            </div>
          </div>
          <p className="tweet_m_close"><i className='bx bx-x'></i></p>
          <p className="page_text">
            <div className="guide-inner-left">
              <div className="code-box" ref={tweetBox}>
                <ul className="tweet-list" ref={tweetList}>
                  {tweets.map((tweet, index) => {
                    const { id, text, author, createdAt, creatorId } = tweet;
                    console.log('2 >> ',  user?.uid == creatorId || admin)
                    return (
                      <>
                      <li className={(user?.uid == creatorId) || admin ? "owner" : ""} key={id}>
                        <div className="wrap_tweet_box">
                          <span className="ttype">{text}</span>
                          <span className="tid">{id}</span>
                          <span className="tweet">{text}</span>
                        </div>
                        {(user?.uid == creatorId) || admin && (
                          <>
                          <span className="btns btns1">
                            <button className="btn edit"><i className='bx bxs-edit'></i></button>
                            <button className="btn delete"><i className='bx bx-trash'></i></button>
                          </span>
                          <span className="btns btns2">
                            <button className="btn edit"><i className='bx bx-check-circle' style={{color: '#aab4ff;'}} ></i></button>
                            <button className="btn cancel"><i className='bx bx-message-square-x'  ></i></button>
                          </span>
                          </>
                        )}
                      </li>
                      {DateHTML(author, createdAt, creatorId)}
                      </>
                    )
                  })}
                </ul>
              </div>
              <div className="input-area">
                <input type="text" className="tweet" placeholder="의견을 남겨주세요." value={tweetValue} onChange={handleChange} ref={tweetInput} onKeyPress={handleKeyPress} />
                <button className="btn action" onClick={handleSubmit}><span>등록</span></button>
              </div>
            </div>
          </p>
        </div>
      </div>
    )
  }
</script>