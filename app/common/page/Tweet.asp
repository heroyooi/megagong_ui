<script type="text/babel">
  'use strict';

  function Tweet() {
    const [active, setActive] = useState(false);
    const [tweets, setTweets] = useState([]);
    const { user } = useAuth();

    useEffect(() => {
      console.log({FBU_ADMIN_UID, USER_ID})
      tweetRef
        .orderBy("createdAt", "asc")
        .onSnapshot((snapshot) => {
          const tweetArray = snapshot.docs.map((doc) => ({
            id: doc.id,
            ...doc.data(),
          }));
          tweetArray.forEach((tweet) => {
            setTweets(
              prev => [
                ...prev,
                {
                  id: tweet.id,
                  option: tweet.optionValue,
                  author: tweet.author,
                  text: tweet.text,
                }
              ]
            )
          })
        })
              
    }, []);

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
              <div className="code-box">
                <ul className="tweet-list">
                  {tweets.map((tweet, index) => 
                    <li key={tweet.id}>
                      <div className="wrap_tweet_box">
                        <span className="ttype">{tweet.text}</span>
                        <span className="tid">{tweet.id}</span>
                        <span className="tweet">{tweet.text}</span>
                      </div>
                    </li>
                  )}
                </ul>
              </div>
              <div className="input-area">
                <input type="text" className="tweet" placeholder="의견을 남겨주세요." />
                <button className="btn action"><span>등록</span></button>
              </div>
            </div>
          </p>
        </div>
      </div>
    )
  }
</script>