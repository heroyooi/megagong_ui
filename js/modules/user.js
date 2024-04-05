// ���� ��������
const getUsers = () => {
  dbService
    .collection("users")
    .orderBy("logDate", "desc")
    .onSnapshot((snapshot) => {
      $user.html('');
      snapshot.docs.map((doc) => {
        const data = doc.data();
        $user.append(`<li data-id=${doc.id} data-uid=${data.uid} class=${data.loggedIn ? 'on' : ''}>${data.uname} <span>(${moment(data.logDate).format('YY-MM-DD a h:mm')})</span><button class="btn_out">Ż��</button></li>`)
      })
    });
}

// ���� �߰� (async)
const addUser = async () => {
  const existUser = await userRef.where('uid', '==', USER_ID).get();
  const userArray = existUser.docs.map(doc => ({
    id: doc.id,
    ...doc.data(),
  }));
  if (userArray.length) {
    USER_DOC_ID = userArray[0].id;
    userRef.doc(USER_DOC_ID).update({
      loggedIn: true,
      logDate: Date.now(),
    });
  } else {
    userRef.add({
      loggedIn: true,
      logDate: Date.now(),
      uid: USER_ID,
      uname: USER_NAME,
    }).then((doc) => {
      USER_DOC_ID = doc.id;
    });
  }    
}

// �̸��� ȸ������ ��û
const onSubmitSignUpEmailAuth = async (email, password, name, retry) => {
  if (retry == undefined) {
    try {
      const data = await authService.createUserWithEmailAndPassword(
        email,
        password
      );
      $('.modal_dimm, .modal_popup#emailVerfication').fadeIn();
      authService.languageCode = 'ko';
      await authService.currentUser.sendEmailVerification()
      let emailVerificationEventListener = setInterval(async() => {
        authService.currentUser.reload();
        if (authService.currentUser.emailVerified) {
          clearInterval(emailVerificationEventListener);
          alert('�̸��� ���� �Ϸ�!');
          await data.user.updateProfile({
            displayName: name,
          });
          setCookie(FBU_EMAIL, email, 7);
          setCookie(FBU_PWD, getEncrypted(password), 7);
          // await refreshUser();

          // $('#signupEmailAuthPage').find('.btn_login').removeClass('pending');
          $('#signupEmailAuthPage').find('.login_logo').removeClass('pending');
          $('.modal_dimm, .modal_popup#emailVerfication').fadeOut();
          window.location.replace('./index.asp');
        }
      });
    } catch (error) {
      console.log('error : ', error);
      if (error.code === 'auth/email-already-in-use') {
        toastr.error('�̹� ������ �̸����Դϴ�.');
      } else {
        alert('�ٽ� �õ����ּ���!');
      }
      // authService.currentUser.delete();

      // $('#signupEmailAuthPage').find('.btn_login').removeClass('pending');
      $('#signupEmailAuthPage').find('.login_logo').removeClass('pending');
    }
  } else {
    try {
      const data = await authService.signInWithEmailAndPassword(email, password);
      $('.modal_dimm, .modal_popup#emailVerfication').fadeIn();
      authService.languageCode = 'ko';
      await authService.currentUser.sendEmailVerification()
      let emailVerificationEventListener = setInterval(async() => {
        authService.currentUser.reload();
        if (authService.currentUser.emailVerified) {
          clearInterval(emailVerificationEventListener);
          alert('�̸��� ���� �Ϸ�!');
          await data.user.updateProfile({
            displayName: name,
          });
          setCookie(FBU_EMAIL, email, 7);
          setCookie(FBU_PWD, getEncrypted(password), 7);
          // await refreshUser();

          // $('#signupEmailAuthPage').find('.btn_login').removeClass('pending');
          $('#signupEmailAuthPage').find('.login_logo').removeClass('pending');
          $('.modal_dimm, .modal_popup#emailVerfication').fadeOut();
          window.location.replace('./index.asp');
        }
      });
    } catch (error) {
      console.log('error : ', error);
      // $('#signupEmailAuthPage').find('.btn_login').removeClass('pending');
      $('#signupEmailAuthPage').find('.login_logo').removeClass('pending');
    }
  }
  
}

// �α��� ��û (async)
const onSubmitLogIn = async (email, password, firstLogin) => {
  try {
    setCookie(FBU_EMAIL, email, 7);
    setCookie(FBU_PWD, getEncrypted(password), 7);
    await authService.signInWithEmailAndPassword(email, password);
    $('.user_info.pending').removeClass('pending');
    $('#loginPage').find('.login_logo').removeClass('pending');
    if (PAGE_LOGIN) {
      window.location.replace('./index.asp'); // �α��� ���� �� �������� ���� �ϴ� �ּ� ó��
    }
  } catch (error) {
    console.log('error : ', error);
    if (firstLogin) {
      $('.guide-header .user_info.pending, .login_logo.pending').removeClass('pending');
    } else {
      if (error.code === 'auth/user-not-found') {
        // $('#loginPage').find('.valid').show().text('���� ȸ���Դϴ�!');
        toastr.error('���� ȸ���Դϴ�!');
        $('#loginPage').find('#input_pw').val('');
        $('#loginPage').find('#input_id').val('').focus();
        $('.guide-header .user_info.pending, .login_logo.pending').removeClass('pending');
      } else if (error.code === 'auth/invalid-email') {
        $('.guide-header .user_info.pending, .login_logo.pending').removeClass('pending');
        toastr.error('��ȿ���� ���� ȸ���Դϴ�.');
      } else {
        // $('#loginPage').find('.valid').show().text('��й�ȣ�� Ʋ�Ƚ��ϴ�!');
        toastr.error('��й�ȣ�� Ʋ�Ƚ��ϴ�!');
        $('#loginPage').find('.login_logo').removeClass('pending');
      }
    }
    
  } finally {
    // $loading.hide();
    // $auth_login.find('.btn').removeClass('pending');    

    // $('#loginPage').find('.btn_login').removeClass('pending');
    
  }
}

// �ʱ� �ε� �� �� ���� �ʱ�ȭ
const initUser = () => {
  const StorageEmail = getCookie(FBU_EMAIL);
  const StoragePassword = getCookie(FBU_PWD);

  if (StorageEmail && StoragePassword) {
    const bytesPassword = CryptoJS.AES.decrypt(StoragePassword, SECRET_KEY);
    const DecryptedPassword = JSON.parse(bytesPassword.toString(CryptoJS.enc.Utf8));
    onSubmitLogIn(StorageEmail, DecryptedPassword, true);
  } else {
    $('.user_info.pending').removeClass('pending');
  }
}

// �������� ����
const refreshUser = () => {
  const user = authService.currentUser;
  if (user.emailVerified) {
    const isPathname = currentPathname();
    if (isPathname === 'intro' || isPathname === 'making') {
      $popup_tweet_all.show();  
    } else {
      // $popup_tweet_item.show();
      $popup_tweet_all.show();
    }

    $('#user_timer_new').text(moment(user.metadata.lastSignInTime).format('YYYY-MM-DD'));
    $('#user_timer_signup').text(moment(user.metadata.creationTime).format('YYYY-MM-DD'));

    // �������� ���
    $('.user_info#authorized').find('span').text(user.displayName);
    $('.user_info#authorized').find('em').text(user.email);
    $('.user_info#anonymous').remove();
    $('.user_info#authorized').show();

    // ������ ���
    $('#gnb li.authorized').find('span').text(user.displayName);
    $('#gnb li.authorized').find('em').text(user.email);
    $('#gnb li.anonymous').remove();
    $('#gnb li.authorized').show();

    // if (USER_ID === FBU_ADMIN_UID) { // JS TEST �ϼ� �� �� ���� ����
      $('.nav_list li#js_test').show();
    // }

    $item_util.addClass('on');

    $('.mo_menu_wrp').html($('#gnb ul').clone());

    // $('.popup_tweet .items .user').find('em.name').text(user.displayName);
    // $('.popup_tweet .items .user').find('em.email').text(`(${user.email})`);
    $('#profilePopup').find('.input_base').val(user.displayName);
    USER_NAME = user.displayName;
    USER_ID = user.uid;
    addUser();
  } else {
    
  }
}

// �α��� �׼�
const loginAction = () => { 
  const email = $('#loginPage').find('#input_id').val();
  const password = $('#loginPage').find('#input_pw').val();
  if (email.trim() === '') {
    // $('#loginPage').find('.valid').show().text('�̸����� �Է��ϼ���!');
    toastr.error('�̸����� �Է��ϼ���!');
    $('#loginPage').find('#input_id').focus();
    return;
  }
  if (!EM_FORMAT.test(email)) {
    // $('#loginPage').find('.valid').show().text('�̸��� ����� ���� �ʽ��ϴ�.');
    toastr.error('�̸��� ����� ���� �ʽ��ϴ�.');
    $('#loginPage').find('#input_id').focus();
    return;
  }
  if (email.split('@')[1] !== 'megastudy.net') {
    // $('#loginPage').find('.valid').show().text('�ڻ� ���� �ּҰ� �ƴմϴ�.');
    toastr.error('�ڻ� ���� �ּҰ� �ƴմϴ�.');
    $('#loginPage').find('#input_id').focus();
    return;
  }    
  if (password.trim() === '') {
    // $('#loginPage').find('.valid').show().text('��й�ȣ�� �Է��ϼ���!');
    toastr.error('��й�ȣ�� �Է��ϼ���!');
    $('#loginPage').find('#input_pw').focus();
    return;
  }
  // $('#loginPage').find('.btn_login').addClass('pending');
  $('#loginPage').find('.login_logo').addClass('pending');
  // if (email === 'guest@megastudy.net' || password === 'qwert09!@#') { // �׽�Ʈ ����
  //   onSubmitLogIn('h*******@megastudy.net', '**********');
  // } else {
  //   onSubmitLogIn(email, password);
  // }
  onSubmitLogIn(email, password);
}

// �α׾ƿ� �׼�
const logoutAction = () => {
  if ($items.length) {
    $items.hide();
  }
  authService.signOut();
  deleteCookie(FBU_EMAIL);
  deleteCookie(FBU_PWD);
  userRef.doc(USER_DOC_ID).update({
    loggedIn: false,
    logDate: Date.now(),
  });
  window.location.reload();
  // getUsers();
}

const signupEmailAuthAction = (retry) => {
  const email = $('#signupEmailAuthPage').find('#input_id').val();
  const password = $('#signupEmailAuthPage').find('#input_pw').val();
  const passwordCheck = $('#signupEmailAuthPage').find('#input_pw_check').val();
  const name = $('#signupEmailAuthPage').find('#input_name').val();

  // ��ȿ�� �˻�
  if (email.trim() === '') {
    // $('#signupEmailAuthPage').find('.valid').show().text('�̸����� �Է��ϼ���!');
    toastr.error('�̸����� �Է��ϼ���!');
    $('#signupEmailAuthPage').find('#input_id').focus();
    return;
  }
  if (!EM_FORMAT.test(email)) {
    // $('#signupEmailAuthPage').find('.valid').show().text('�̸��� ����� ���� �ʽ��ϴ�.');
    toastr.error('�̸��� ����� ���� �ʽ��ϴ�.');
    $('#signupEmailAuthPage').find('#input_id').focus();
    return;
  }
  if (email.split('@')[1] !== 'megastudy.net') {
    // $('#signupEmailAuthPage').find('.valid').show().text('�ڻ� ���� �ּҰ� �ƴմϴ�.');
    toastr.error('�ڻ� ���� �ּҰ� �ƴմϴ�.');
    $('#signupEmailAuthPage').find('#input_id').focus();
    return;
  }
  if (name.trim() === '') {
    // $('#signupEmailAuthPage').find('.valid').show().text('�̸��� �Է��ϼ���!');
    toastr.error('�̸��� �Է��ϼ���!');
    $('#signupEmailAuthPage').find('#input_name').focus();
    return;
  }
  if (password.trim() === '') {
    // $('#signupEmailAuthPage').find('.valid').show().text('��й�ȣ�� �Է��ϼ���!');
    toastr.error('��й�ȣ�� �Է��ϼ���!');
    $('#signupEmailAuthPage').find('#input_pw').focus();
    return;
  }
  if (retry == undefined) {
    if (passwordCheck.trim() === '') {
      // $('#signupEmailAuthPage').find('.valid').show().text('��й�ȣ Ȯ���� �Է��ϼ���!');
      toastr.error('��й�ȣ Ȯ���� �Է��ϼ���!');
      $('#signupEmailAuthPage').find('#input_pw_check').focus();
      return;
    }
    if (password !== passwordCheck) {
      // $('#signupEmailAuthPage').find('.valid').show().text('��й�ȣ�� �������� �ʽ��ϴ�.');
      toastr.error('��й�ȣ�� �������� �ʽ��ϴ�.');
      $('#signupEmailAuthPage').find('#input_pw_check').focus();
      return;
    }
    // $('#signupEmailAuthPage').find('.btn_login').addClass('pending');
    $('#signupEmailAuthPage').find('.login_logo').addClass('pending');
    onSubmitSignUpEmailAuth(email, password, name);
  } else {
    // �̸��� ������
    onSubmitSignUpEmailAuth(email, password, name, true);
  }
}

const editMemberAction = async () => {
  const user = authService.currentUser;
  await user.updateProfile({
    displayName: $('#profilePopup .loginName .input_base').val(),
  });
  await refreshUser();
  $('.login_dim').css('display','none');
  $('.login-area').css('display','none');
}

const deleteMemberAction = async () => {
  const user = authService.currentUser;
  if (confirm('���� ���� �Ͻðڽ��ϱ�?')) {
    await user.delete();
    await dbService.doc(`users/${USER_DOC_ID}`).delete();
  }
  $('.login_dim').css('display','none');
  $('.login-area').css('display','none');
  window.location.replace('./index.asp');
}

// �������� ����(�α���, ȸ������ ����)
let isAnonymous = true;
authService.onAuthStateChanged(async (user) => {
  if (user) {
    isAnonymous = false;
    try {
      if (user.email === FBU_ADMIN || user.email === FBU_SUB_ADMIN) {
        $userList.css('display', 'block');
      } else {
        $userList.remove();
      }
      $('.blog_write_btns').css('display', 'block');
      if (user.emailVerified) {
        // �ǰ� ����� UI
        $tweet_loading_all.show();
        $('.code_open').show();
        $('.page_name_wrap ~ pre').show();
        $('.guide_down').show();
        USER_NAME = user.displayName;
        USER_ID = user.uid;
        const isPathname = currentPathname();
        if (isPathname === 'intro' || isPathname === 'making') {
          $tweet_list_all.show();
          $tweet_input_all.show();
          
          getPostsAll(); // post.js ���� �ڵ�
        } else {
          // $tweet_list_item.show();
          // $tweet_input_item.show();
          // getPostsItem(); // post.js ���� �ڵ�
          $tweet_list_all.show();
          $tweet_input_all.show();
          getPostsAll();
        }
        // $('.page_write_wrap').css('display', 'inline-block');
        refreshUser();
      } else {
        // ȸ�������� �ߴµ�, �̸��� ������ ���� ���
        if (window.location.pathname.indexOf('auth_email_retry.asp') <= 0 && window.location.pathname.indexOf('signup.asp') <= 0) {
          var q = confirm('�̸��� ������ �ʿ��մϴ�. �̸��� ������ �����Ͻðڽ��ϱ�?')
          if (q) {
            location.replace('./auth_email_retry.asp');
          } else {
            deleteCookie(FBU_EMAIL);
            deleteCookie(FBU_PWD);
          }
        } else {
          // �̸��� ���� ������ ���� ��
          const StorageEmail = getCookie(FBU_EMAIL);
          if (StorageEmail) {
            $('#signupEmailAuthPage').find('#input_id').val(StorageEmail);
            $('#signupEmailAuthPage').find('#input_name').focus();
          } else {
            $('#signupEmailAuthPage').find('#input_id').focus();
          }
        }
        $('.mo_menu_wrp').html($('#gnb ul').clone());
        $item_util.addClass('on');
      }
      if (PAGE_JS_TEST) {
        const correctTest = await dbService.collection("jsTestCorrectAnswer").doc('oPzlnPnNz2iE6y0cqSeO').get();
        const correctAnswer = correctTest.data().array;
        const getScore = (testArr) => {
          let myScore = 0;
          correctAnswer.map((answer, i) => {
            if (answer === testArr[i]) {
              myScore += 1;
            }
          });
          return Math.floor(myScore / testArr.length * 100);
        }
        // if (user.uid !== FBU_ADMIN_UID) { // JS TEST �ϼ� �� �� ���� ����
        // alert('�����ڸ� ���� ������ �������Դϴ�.');
        // window.location.replace('./index.asp');
        // }
        const existTest = await dbService.collection("jsTest").where('studentId', '==', user.uid).get();
        if (existTest.docs.length > 0) {
          const testInfo = existTest.docs.map(doc => ({
            id: doc.id,
            ...doc.data(),
          }));
          $('#js_result_container .stId').text(testInfo[0].id);
          $('#js_result_top > dl > dt').prepend(`<span class="face"><img src="images/char${getUserFace(testInfo[0].studentId)}.png" alt=${testInfo[0].studentNm}></span>`);
          $('#js_result_container .stName').text(testInfo[0].studentNm);
          $('#js_result_container .stScore').text(getScore(testInfo[0].answer));
          $('#js_result_container .stTime').text(moment(testInfo[0].createdAt).format('YY-MM-DD a h:mm'));

          testInfo[0].answer.forEach((value, index) => {
            $('#js_result_container .wise_list > li').eq(index).find('.question_zone li').eq(value - 1).addClass('my_select');
            $('#js_result_container .wise_list > li').eq(index).find('.question_zone li').eq(correctAnswer[index] - 1).addClass('correct');
            $('#js_result_container .wise_list li .num_info .correct_num').eq(index).text(correctAnswer[index]);
            $('#js_result_container .wise_list li .num_info .my_select_num').eq(index).text(value);
            if (value === correctAnswer[index]) {
              $('#js_result_container .wise_list > li').eq(index).addClass('success');
              $('#js_result_container .wise_list > li').eq(index).find('.num_info ul').append('<li class="success">����</li>');
            } else {
              $('#js_result_container .wise_list > li').eq(index).addClass('fail');
              $('#js_result_container .wise_list > li').eq(index).find('.num_info ul').append('<li class="fail">����</li>');
            }
          });

          if (user.uid === FBU_ADMIN_UID) {
            $('#js_result_container .js_test_btns').show();
          } else {
            $('#js_result_container .js_test_btns').remove();
          }

          $('#js_result_container').fadeIn(300);
        } else {
          $('#js_test_container').fadeIn(300);
        }

        if (user.uid === FBU_ADMIN_UID) { // ���� �̷� - �����ڸ� Ȯ�� ����
          await dbService.collection("jsTest")
            .orderBy("createdAt", "desc")
            .onSnapshot((snapshot) => {
              const testArray = snapshot.docs.map((doc) => ({
                id: doc.id,
                ...doc.data(),
              }));

              let resultHtml = '';
              testArray.forEach((test) => {
                resultHtml += `<li>
                  <span class="name">������ : ${test.studentNm}</span>
                  <span class="score">�������� : <em>${getScore(test.answer)}</em>��</span>
                  <span class="time">���ýð� : ${moment(test.createdAt).fromNow()}</span>
                  <span class="time">������ : [${test.answer}]</span>
                </li>`;
                $('#js_admin_container').find('.result_list').html(resultHtml)
              })
            })
          $('#js_admin_container').fadeIn(300);
        } else {
          $('#js_admin_container').remove();
        }
      }
      if (PAGE_BLOG_DETAIL) {
        getBlogItem(); // blog.js ���� ���ο� �� ��� ����, ���� ��ư�� ������
        getBlogCommentItem();
        // if (user.uid === FBU_ADMIN_UID) { // ��� ������ ������ ����
        //   $('#comment_list li').append('<button class="btn_delete_comment">����</button>')
        // }
      }
    } catch (err) {
      console.log(err)
    }
  } else {
    isAnonymous = true;
    $tweet_list_all.hide();
    $tweet_input_all.hide();
    $tweet_list_item.hide();
    $tweet_input_item.hide();
    
    $('.code_open').hide();
    $('.page_name_wrap ~ pre').hide();
    $('.guide_down').hide();
    if (!PAGE_BLOG && !PAGE_BLOG_DETAIL) {
      $loading_all.hide(); // �α׾ƿ� �� �����Ǵ� ���������� ������ ���� ������ �ӽ÷� �ε� �� ���� ó��
      $loading_all_ui.hide(); // �α׾ƿ� �� �����Ǵ� ���������� ������ ���� ������ �ӽ÷� �ε� �� ���� ó��
    }
    if (PAGE_BLOG_DETAIL) {
      getBlogItem(); // blog.js ���� ���ο� �� ��� ����, ���� ��ư�� ������
      getBlogCommentItem();
    }
    $('.mo_menu_wrp').html($('#gnb ul').clone());
    setTimeout(function(){
      $item_util.addClass('on');
    }, 700);
    if (anonymous_posting) {
      getPostsAll(); // post.js ���� �ڵ�
      $tweet_list_all.show();
      $tweet_input_all.show();
      $popup_tweet_all.show(); // �մԵ� Ʈ�� ��ư Ȱ��ȭ - �پ��� �ǰ��� ���� �� �ֵ���
    }
    // if (PAGE_JS_TEST) {
    //   $loading_all.show();
    //   $loading_all_ui.show();
    // }
  }  
});

setTimeout(function(){
  if (PAGE_JS_TEST) {
    if (!isAnonymous) {
      $loading_all.hide();
      $loading_all_ui.hide();
    } else {
      // if (USER_ID === FBU_ADMIN_UID) { // JS TEST �ϼ� �� �� ���� ����
      // alert('�����ڸ� ���� ������ �������Դϴ�.');
      // window.location.replace('./index.asp');
      // }
    }
  }
}, 3000);

getUsers(); // �ǽð� ���� ����
initUser(); // ���� �ʱ�ȭ

window.addEventListener("beforeunload", function (e) { // ������ �ݱ�
  authService.signOut();
  userRef.doc(USER_DOC_ID).update({
    loggedIn: false,
    logDate: Date.now(),
  });
  getUsers();
});

$user.on('click', '.btn_out', function() { // ����
  const ok = window.confirm("������ Ż�� ��Ű�ðڽ��ϱ�?");
  if (ok) {
    const id = $(this).closest('li').data('id');
    dbService.doc(`users/${id}`).delete();
    // Ư�� ȸ�� Ż�� ��� ���� �ʿ� !!
    // console.log(authService)
    // user.delete().then(() => {

    // }).catch((err) => {
    //   console.error(err);
    // })
    window.location.replace('./index.asp');
  }
})