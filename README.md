# megagong_ui

이 저장소는 메가공무원 웹 개발에 사용되는 컴포넌트들의 가이드를 제공합니다.


## 소개

이 저장소는 메가공무원에서 사용하는 다양한 UI 컴포넌트의 사용법과 스타일 가이드를 제공합니다.


## 기능

- 컴포넌트별 사용법 및 예제 코드 제공
- 일관된 스타일 및 디자인 가이드 제공
- 컴포넌트 라이브러리에 대한 설명 및 사용법 안내


## 브랜치 설명

- **master** : 기본 소스
- **react**  : 2024년 리뉴얼 소스
- **legacy** : 초기 소스


## 배포

Megasource를 통해 배포

### 배포 전 암호화

- **inc/bottom.asp** 파일 내용 참고
```html
  <script src="https://www.gstatic.com/firebasejs/8.7.0/firebase-app.js"></script>
  <script src="https://www.gstatic.com/firebasejs/8.7.0/firebase-auth.js"></script>
  <script src="https://www.gstatic.com/firebasejs/8.7.0/firebase-firestore.js"></script>
  <script src="https://www.gstatic.com/firebasejs/8.7.0/firebase-storage.js"></script>
  <script src="/js/moment.js"></script>
  <script src="/js/moment-with-locales.min.js"></script>
  <script src="/js/crypto-js.min.js"></script>
  <script src="/js/toastr.min.js"></script>
  <!--<script src="/js/smoothScroll.js"></script>-->
  <script src="/js/prism.js"></script>
  <script src="/js/commonUtils.js"></script>
  <% If inStr(hostnm, "dev") > 0 Then %>
  <script src="/js/modules/blog.js"></script><!-- 블로그 -->
  <script src="/js/modules/post.js"></script><!-- 게시글 -->
  <script src="/js/modules/user.js"></script><!-- 회원 -->
  <% Else %>
  <script src="/js/modules.js"></script>
  <% End if %>
  <script src="<%=url_main%>/common/js/eventCommon.js"></script>

</body>
</html>
```

- **js/modules.js** 파일 내용은 **js/modules/blog.js, js/modules/post.js, js/modules/user.js** 3파일의 내용을 난독화 사이트에 연달아 붙여서 난독화해서 만든다.
- [JS 난독화 사이트](https://obfuscator.io)
- 위 3가지 파일 모듈 수정사항이 생기는 경우 위 과정을 거친 다음에 통으로 메가 소스를 통해서 배포한다.


## 관리자

- 성연욱(heroyooi@megastudy.net)


## 개발자

- 김혜림(krimu@megastudy.net)
- 최희주(hitu@megastudy.net)
- 서예린(seoyerin@megastudy.net)
- 권영원(now@megastudy.net)
- 박하나(hana2107@megastudy.net)
- 김미진(mijin_dev@megastudy.net)