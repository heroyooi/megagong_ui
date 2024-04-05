
<div class="popup_tweet" id="all"> 
  <button class="tweet_icon"><i class='bx bx-chat' ></i><i class='bx bx-x'></i></button>
  <div class="popup_tweet_board">
    <div class="page_head_wrap">
      <p class="page_head">의견남기기</p>
      <div class="tweet_item">
        <a href="#" class="up"><i class='bx bx-up-arrow-alt'></i></a>
        <a href="#" class="down"><i class='bx bx-down-arrow-alt' ></i></a>
      </div>
    </div>
    <p class="tweet_m_close"><i class='bx bx-x'></i></p>
    <p class="page_text">
      <div class="guide-inner-left">
        <div class="code-box">
          <!-- 유저정보 -->
          <!--<div class="items">
            <ul>
              <li class="user"><em class="name"></em><em class="email"></em>님 반갑습니다.</li>
              <li class="logout"><button class="btn"><i class='bx bx-log-out' style='color:#d4d4d4' ></i></button></li>
            </ul>
          </div>-->

          <!-- 인증 전 -->
          <!--
          <div class="auth-box signup" style="display:none;">
            <p class="s-tit">회원가입</p>
            <input type="email" class="uemail" placeholder="이메일을 입력해주세요." />
            <input type="text" class="uname" placeholder="이름을 입력해주세요." />
            <input type="password" class="upw" placeholder="비밀번호를 입력해주세요." />
            <button class="btn action"><span>회원가입</span></button>
            <span class="valid"></span>
            <div class="go-area">
              <a href="#" class="go">로그인 하러가기</a>
            </div>
          </div>

          <div class="auth-box login" style="display:none;">
            <p class="s-tit">
              <div class="login_logo">
                  <i class="bx bxl-gmail" style="color:#47b2ff"></i>
                  <p class="login_logo_text">메가스터디<br>컴포넌트 디자인 로그인</p>
              </div>
            </p>
            <input type="email" class="uemail" placeholder="이메일을 입력해주세요." />
            <input type="password" class="upw" placeholder="비밀번호를 입력해주세요." />
            <button class="btn action" onclick="loginAction('tweet');"><span>로그인</span></button>
            <span class="valid"></span>
            <div class="go-area">
              <a href="#" class="go">회원가입 하러가기</a>
            </div>
          </div>
          <ul class="s-info">
            <li>자사 이메일 양식(@megastudy.net)으로 회원가입 및 로그인 해주세요.</li>
            <li class="signup-info">본인 이름으로 회원가입해주세요.</li>
          </ul>
          -->

          <!-- 인증 후 -->
          <div class="loading-container" style="display:none;">
            <div class="s-loading"></div>
            <div id="loading-text">loading</div>
          </div>
          <div class="no-tweet" style="display:none;">등록된 게시글이 없습니다.</div>
          <ul class="tweet-list"></ul>
        </div>
        <div class="input-area">
          <input type="text" class="tweet" placeholder="의견을 남겨주세요." />
          <button class="btn action"><span>등록</span></button>
        </div>
      </div><!-- guide-inner-left -->
    </p>
  </div>
</div>