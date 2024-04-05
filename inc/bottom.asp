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