const Lab =
  window.Lab ||
  (function ($, window, document, undefined) {
    return {
      init: () => {
        toastr.options = {
          timeOut: 2000,
          positionClass: 'toast-bottom-center',
        };
        $header.find('.btn_menu').on('click', function (e) {
          e.preventDefault();
          if (!$header.hasClass('open_menu')) {
            $header.addClass('open_menu');
            $('body').addClass('no_scroll');
          } else {
            $header.removeClass('open_menu');
            $('body').removeClass('no_scroll');
          }
        });

        $(window).on('resize', function () {
          if ($(window).width() > 1200 && $header.hasClass('open_menu')) {
            $header.removeClass('open_menu');
            $('body').removeClass('no_scroll');
          }
        });

        $('.btn.action').each(function () {
          $('.login_logo_text').append(SVG_HTML);
        });
        $('.btn_login').each(function () {
          $('.login_logo_text').append(SVG_HTML);
        });

        $header.find('.btn_menu2').on('click', function (e) {
          e.preventDefault();
          if (!$('.guide-aside').hasClass('open_nav')) {
            $('.guide-aside').addClass('open_nav');
          } else {
            $('.guide-aside').removeClass('open_nav');
          }
        });
      },
      main: () => {
        const header = document.querySelector('.header_wrp');
        const sectionDark = document.querySelectorAll('.sec_dark');
        const headerLogo = document.querySelector('.header_wrp h1');

        let timer = false;
        let scrollChk = 0;

        const scrollHeader = () => {
          let actPoint = [];

          if (timer) return;

          timer = setTimeout(() => {
            let ws = window.pageYOffset;

            if (sectionDark[0]) {
              sectionDark.forEach((dark) => {
                let offsetTop =
                  Math.floor(dark.getBoundingClientRect().top) + ws;
                actPoint.push([offsetTop, offsetTop + dark.offsetHeight]);
              });

              actPoint.forEach((point) => {
                if (ws >= point[0] && ws < point[1]) scrollChk = 1;
              });

              if (scrollChk) {
                header.classList.add('on');
              } else {
                header.classList.remove('on');
              }

              scrollChk = 0;
            }

            timer = null;
          }, 300);
        };

        const fadeTrigger = document.querySelectorAll('[data-fade]');
        const fadeAnimation = () => {
          fadeTrigger.forEach((trigger) => {
            let fadeType = trigger.dataset.fade;
            ScrollTrigger.create({
              trigger,
              start: 'top 80%',
              onEnter: (self) => {
                self.trigger.classList.add(fadeType);
              },
            });
          });
        };

        // custom mouse
        const customPointer = () => {
          let cursor = document.querySelector('.custom_pointer');

          if (cursor != null) {
            let linkItem = document.querySelectorAll('a, button');
            let cursorHalf = cursor.clientWidth / 2;

            document.addEventListener('mousemove', (e) => {
              gsap.to(cursor, {
                duration: 0.75,
                left: e.clientX - cursorHalf,
                top: e.clientY - cursorHalf,
                ease: 'power2.out',
              });
            });

            if (linkItem[0]) {
              linkItem.forEach((elem) => {
                elem.addEventListener('mouseenter', () => {
                  cursor.classList.add('active');
                });
                elem.addEventListener('mouseleave', () => {
                  cursor.classList.remove('active');
                });
              });
            }
          }
        };

        window.addEventListener('scroll', scrollHeader);
        
        

        gsap.utils.toArray('section').forEach(function (bg) {
          var color = bg.getAttribute('data-color');

          ScrollTrigger.create({
            trigger: bg,
            start: 'top center',
            end: 'bottom center',
            scrub: true,
            scroller: 'body',
            // markers: true,
            onEnter: () =>
              gsap.to('#wrap', {
                // 스크롤 위치가 '시작'을 지나 앞으로 이동할 때
                backgroundColor: color,
                duration: 1,
              }),
            onEnterBack: () =>
              gsap.to('#wrap', {
                // 스크롤 위치가 '끝'을 지나 뒤로 이동할 때
                backgroundColor: color,
                duration: 1,
              }),
            // onLeaveBack:() => gsap.to('#wrap',{ // 스크롤 위치가 '시작'을 지나 뒤로 이동할 때
            //     backgroundColor: '#000',
            //     duration: 1
            // }),
          });
        });

        customPointer();
        fadeAnimation();

        document.querySelector('body').className = 'gsap';
        history.scrollRestoration = 'manual'; // 진입 시 스크롤 위치 초기화

        //헤더 텍스트 컬러
        $('.header_wrp').addClass('on');
        $('body').addClass('main');

        $(window).on('load', function () {
          var hash = window.location.hash;
          if (hash == '#/') {
            return;
          }
          if (hash) {
            $('html, body').animate({ scrollTop: $(hash).offset().top }, 250);
          }
        });

        let secTop_tl = gsap.timeline({
          scrollTrigger: {
            trigger: '.top_msg',
            start: 'top top',
            end: '+=250%',
            scrub: 3,
            pin: true,
          },
        });
        gsap.utils.toArray('.top_msg span').forEach((span, index) => {
          const calWidth = window.innerWidth / 2 + span.offsetWidth / 2;
          const x = index % 2 ? calWidth * 1 : calWidth * -1;
          secTop_tl
            .to(
              span,
              {
                color: 'transparent',
                duration: 0.1,
              },
              0
            )
            .to(
              span,
              {
                x,
                opacity: 0,
                ease: 'none',
              },
              0
            );
        });
        secTop_tl.to(
          '.top_msg_wrp',
          {
            '--img-opacity': 0.2,
          },
          0
        );

        let glass = gsap.timeline({
          scrollTrigger: {
            trigger: '.glass',
            start: 'top top',
            end: '+=600%',
            scrub: 1,
            pin: true,
          },
        });
        glass
          .to('.glass', {
            y: 100,
            duration: 1,
            width: 1000,
            scale: 2,
          })
          .to('.glass', {
            y: -1500,
            duration: 1,
          });

        let bk_wrp1 = gsap.timeline({
          scrollTrigger: {
            trigger: '.sec_black',
            start: 'top top',
            end: '+=200%',
            pin: true,
            scrub: 3,
            // markers: true,
            toggleClass: 'active',
          },
        });
        bk_wrp1.to('.bk_box img', {
          margin: '-50px 0px 0px -140px',
        });

        let bk_wrp2 = gsap.timeline({
          scrollTrigger: {
            trigger: '.bk_wrp',
            start: 'top top',
            end: '+=400%',
            pin: true,
            scrub: 2,
            // markers: true,
          },
        });
        bk_wrp2
          .to('.bk_msg p', {
            opacity: 1,
            y: 10,
          })
          .to('.bk_msg p', {
            opacity: 1,
          })
          .to('.bk_msg p', {
            opacity: 1,
          })
          .to('.bk_msg p', {
            opacity: 1,
          })
          .to('.bk_msg p', {
            opacity: 1,
          });

        let glass2 = gsap.timeline({
          scrollTrigger: {
            trigger: '.glass2',
            start: 'top top',
            end: '+=300%',
            pin: true,
            scrub: 3,
          },
        });
        glass2.to('.glass2', {
          duration: 10,
          y: -100,
          ease: 'none',
        });

        let setIntro_logo_tl = gsap.timeline({
          scrollTrigger: {
            trigger: '.intro_logo',
            scrub: 3,
            pin: true,
            pinSpacing: false,
            start: 'top top',
            end: '+=300%',
          },
        });

        setIntro_logo_tl
          .to('.intro_logo .logo', {
            opacity: 1,
            gap: 0,
            duration: 1,
          })
          .to('.shadow_bg', {
            opacity: 1,
          })
          .to('.intro_logo .logo', {
            opacity: 0,
          });

        ScrollTrigger.saveStyles('.slide_wrp');
        const slidePanels = gsap.utils.toArray('.slide_panel');
        ScrollTrigger.matchMedia({
          '(min-width: 751px)': function () {
            // desktop & tablet
            const horizonScroll = gsap.to(slidePanels, {
              delay: 1,
              xPercent: -100 * (slidePanels.length - 1),
              ease: 'none',
              scrollTrigger: {
                trigger: '.slide_wrp',
                start: 'top top',
                end: () =>
                  '+=' +
                  document.querySelector('.slide_wrp').offsetWidth +
                  'px',
                pin: true,
                scrub: 1,
                invalidateOnRefresh: true,
              },
            });

            slidePanels.forEach((slide, i, array) => {
              gsap.timeline({
                scrollTrigger: {
                  trigger: slide,
                  containerAnimation: horizonScroll,
                  scrub: false,
                  start: i === 0 ? '-1% 0' : '10% center',
                  // end: () => (
                  //   i === 3 ? "100% 100%" : "100% center"
                  // ),
                  end: () => '100% center',
                  toggleClass: 'active',
                },
              });
            });
          },
          '(max-width: 750px)': function () {
            // mobile
            slidePanels.forEach((slide, i, array) => {
              gsap.timeline({
                scrollTrigger: {
                  trigger: slide,
                  scrub: false,
                  start: '5% center',
                  end: '100% center',
                  toggleClass: 'active',
                },
              });
            });
          },
          all: function () {},
        });

        

        // window.onmousemove = (e) => {
        //   let winPercent = {
        //       x: e.clientX / window.innerWidth,
        //       y: e.clientY / window.innerHeight,
        //     },
        //     distFromCenter =
        //       1 -
        //       Math.abs(
        //         ((e.clientX - window.innerWidth / 2) / window.innerWidth) * 2
        //       );

        //     motion_light_tl = gsap
        //     .timeline({ defaults: { duration: 0.5, overwrite: 'auto' } })
        //     .to('.motion_wrap', {
        //       rotation: -3 + 5 * winPercent.x,
        //       duration: 1,
        //       rotationY: (i) => i * 500 + 50 * winPercent.y,
        //       rotationX: (i) => (i / 5) * 10 + 10 * winPercent.x,
        //     })
        //     .to('.light_wrap', { opacity: distFromCenter - 0.5 }, 0);
        // };
      },
      showCode: () => {
        document.querySelectorAll('code').forEach((element) => {
          hljs.highlightElement(element);
        });
      },
      success: (message) => {
        toastr.success(message);
      },
      error: (message) => {
        toastr.error(message);
        console.error(message);
      },
      top: () => {
        window.scrollTo(0, 0);
      },
      aside: () => {
        // 좌측 네비게이션
        $('.big_nav.on').each(function () {
          $(this).next('li.small_nav_wrap').addClass('on');
          $(this)
            .next('li.small_nav_wrap')
            .find('ul.small_nav_wrap_ul')
            .addClass('on');
        });
        // $('.big_nav').on('click', function () {
        //   if (!$(this).hasClass('on')) {
        //     // $('.big_nav.on').removeClass('on');
        //     // $('li.small_nav_wrap.on').removeClass('on');
        //     // $('ul.small_nav_wrap_ul.on').removeClass('on');
        //     $(this).addClass('on');
        //     $(this).next('li.small_nav_wrap').addClass('on');
        //     $(this)
        //       .next('li.small_nav_wrap')
        //       .find('ul.small_nav_wrap_ul')
        //       .addClass('on');
        //   } else {
        //     $(this).removeClass('on');
        //     $(this).next('li.small_nav_wrap').removeClass('on');
        //     $(this)
        //       .next('li.small_nav_wrap')
        //       .find('ul.small_nav_wrap_ul')
        //       .removeClass('on');
        //   }
        // });
        $('.small_nav').click(function () {
          $('.small_nav').removeClass('on');
          $(this).addClass('on');
        });

        // 와이드 버전 예외 처리
        if ($('.page_wrap.page_wide').length) {
          $('#wrap').addClass('wide');
        }

        // 우측 네비게이션
        if ($('.ank').length) {
          $('.ank').append(
            '<button><i class="bx bx-chevrons-down"></i></button>'
          );
          $('.ank').append('<ul></ul>');
          if ($popup_tweet_item.length) {
            // $tweet_select_item.append('<option value="0">' + isPathname.toUpperCase() + ' 타입 선택</option>');
            $('.select_wrap').append(
              '<a href="javascript:void(0);" value="0" class="fir selected">타입 선택</a>'
            );
          }
          $page_wrap.each(function (index) {
            $(this).addClass('board' + (index + 1));
            var headText = $(this).find('.page_head').text();
            $('.ank ul').append(
              `<li class="ank_list"><a href="javascript:void(0);" onClick="fnMove(${
                index + 1
              })">#${index + 1} ${headText}</a></li>`
            );
            if ($popup_tweet_item.length) {
              // $tweet_select_item.append('<option value=' + (index + 1) + '>' + headText + '</option>');
              $tweet_select_item.append(
                '<li value=' + (index + 1) + '>' + headText + '</li>'
              );
            }
          });
        }

        $('.ank button').on('click', function () {
          if ($('.ank ul').hasClass('close_list')) {
            $('.ank ul').removeClass('close_list');
          } else {
            $('.ank ul').addClass('close_list');
          }
        });
      },

      // user
      refreshUser: () => {
        const user = authService.currentUser;
        if (user?.emailVerified) {
          const isPathname = currentPathname();
          if (isPathname === 'intro' || isPathname === 'making') {
            $popup_tweet_all.show();  
          } else {
            // $popup_tweet_item.show();
            $popup_tweet_all.show();
          }
      
          $('#user_timer_new').text(moment(user.metadata.lastSignInTime).format('YYYY-MM-DD'));
          $('#user_timer_signup').text(moment(user.metadata.creationTime).format('YYYY-MM-DD'));
      
          // 오리지널 헤더
          $('.user_info#authorized').find('span').text(user.displayName);
          $('.user_info#authorized').find('em').text(user.email);
          $('.user_info#anonymous').hide();
          $('.user_info#authorized').show();
      
          // 리뉴얼 헤더
          $('#gnb li.authorized').find('span').text(user.displayName);
          $('#gnb li.authorized').find('em').text(user.email);
          $('#gnb li.anonymous').hide();
          $('#gnb li.authorized').show();
      
          // if (USER_ID === FBU_ADMIN_UID) { // JS TEST 완성 후 이 조건 삭제
            $('.nav_list li#js_test').show();
          // }
      
          $('.util_list').addClass('on');
      
          $('.mo_menu_wrp').html($('#gnb ul').clone());
      
          // $('.popup_tweet .items .user').find('em.name').text(user.displayName);
          // $('.popup_tweet .items .user').find('em.email').text(`(${user.email})`);
          $('#profilePopup').find('.input_base').val(user.displayName);
          USER_NAME = user.displayName;
          USER_ID = user.uid;
          Lab.addUser();
        } else {
          $('#gnb li.anonymous').show();
          $('#gnb li.authorized').hide();
          $('.nav_list li#js_test').hide();
        }
      },
      addUser: async () => {
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
      },
      onAuthStateChanged: () => {
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
                // 의견 남기기 UI
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
                  
                  Lab.getPostsAll(); // post.js 연관 코드
                } else {
                  // $tweet_list_item.show();
                  // $tweet_input_item.show();
                  // getPostsItem(); // post.js 연관 코드
                  $tweet_list_all.show();
                  $tweet_input_all.show();
                  Lab.getPostsAll();
                }
                // $('.page_write_wrap').css('display', 'inline-block');
                Lab.refreshUser();
              } else {
                // 회원가입은 했는데, 이메일 인증을 안한 경우
                if (window.location.pathname.indexOf('auth_email_retry.asp') <= 0 && window.location.pathname.indexOf('signup.asp') <= 0) {
                  var q = confirm('이메일 인증이 필요합니다. 이메일 인증을 진행하시겠습니까?')
                  if (q) {
                    location.replace('./auth_email_retry.asp');
                  } else {
                    deleteCookie(FBU_EMAIL);
                    deleteCookie(FBU_PWD);
                  }
                } else {
                  // 이메일 인증 페이지 접근 시
                  const StorageEmail = getCookie(FBU_EMAIL);
                  if (StorageEmail) {
                    $('#signupEmailAuthPage').find('#input_id').val(StorageEmail);
                    $('#signupEmailAuthPage').find('#input_name').focus();
                  } else {
                    $('#signupEmailAuthPage').find('#input_id').focus();
                  }
                }
                $('.mo_menu_wrp').html($('#gnb ul').clone());
                $('.util_list').addClass('on');
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
                // if (user.uid !== FBU_ADMIN_UID) { // JS TEST 완성 후 이 조건 삭제
                // alert('관리자만 접근 가능한 페이지입니다.');
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
                      $('#js_result_container .wise_list > li').eq(index).find('.num_info ul').append('<li class="success">정답</li>');
                    } else {
                      $('#js_result_container .wise_list > li').eq(index).addClass('fail');
                      $('#js_result_container .wise_list > li').eq(index).find('.num_info ul').append('<li class="fail">오답</li>');
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
        
                if (user.uid === FBU_ADMIN_UID) { // 응시 이력 - 관리자만 확인 가능
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
                          <span class="name">응시자 : ${test.studentNm}</span>
                          <span class="score">응시점수 : <em>${getScore(test.answer)}</em>점</span>
                          <span class="time">응시시간 : ${moment(test.createdAt).fromNow()}</span>
                          <span class="time">제출답안 : [${test.answer}]</span>
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
                getBlogItem(); // blog.js 파일 내부에 들어갈 경우 수정, 삭제 버튼이 가려짐
                getBlogCommentItem();
                // if (user.uid === FBU_ADMIN_UID) { // 댓글 삭제는 관리자 권한
                //   $('#comment_list li').append('<button class="btn_delete_comment">삭제</button>')
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
              $loading_all.hide(); // 로그아웃 시 유지되는 페이지에서 무조건 딤이 보여서 임시로 로딩 딤 히든 처리
              $loading_all_ui.hide(); // 로그아웃 시 유지되는 페이지에서 무조건 딤이 보여서 임시로 로딩 딤 히든 처리
            }
            if (PAGE_BLOG_DETAIL) {
              getBlogItem(); // blog.js 파일 내부에 들어갈 경우 수정, 삭제 버튼이 가려짐
              getBlogCommentItem();
            }
            $('.mo_menu_wrp').html($('#gnb ul').clone());
            setTimeout(function(){
              $('.util_list').addClass('on');
            }, 700);
            if (anonymous_posting) {
              Lab.getPostsAll(); // post.js 연관 코드
              $tweet_list_all.show();
              $tweet_input_all.show();
              $popup_tweet_all.show(); // 손님도 트윗 버튼 활성화 - 다양한 의견을 받을 수 있도록
            }
            // if (PAGE_JS_TEST) {
            //   $loading_all.show();
            //   $loading_all_ui.show();
            // }
          }  
        });
      },
      onSubmitLogIn: async (email, password, firstLogin) => {
        try {
          setCookie(FBU_EMAIL, email, 7);
          setCookie(FBU_PWD, getEncrypted(password), 7);
          await authService.signInWithEmailAndPassword(email, password);
          $('.user_info.pending').removeClass('pending');
          $('#loginPage').find('.login_logo').removeClass('pending');
          // if (PAGE_LOGIN) {
          //   window.location.replace('./index.asp'); // 로그인 실패 시 메인으로 가서 일단 주석 처리
          // }
        } catch (error) {
          console.log('error : ', error);
          if (firstLogin) {
            $('.guide-header .user_info.pending, .login_logo.pending').removeClass('pending');
          } else {
            if (error.code === 'auth/user-not-found') {
              // $('#loginPage').find('.valid').show().text('없는 회원입니다!');
              toastr.error('없는 회원입니다!');
              $('#loginPage').find('#input_pw').val('');
              $('#loginPage').find('#input_id').val('').focus();
              $('.guide-header .user_info.pending, .login_logo.pending').removeClass('pending');
            } else if (error.code === 'auth/invalid-email') {
              $('.guide-header .user_info.pending, .login_logo.pending').removeClass('pending');
              toastr.error('유효하지 않은 회원입니다.');
            } else {
              // $('#loginPage').find('.valid').show().text('비밀번호가 틀렸습니다!');
              toastr.error('비밀번호가 틀렸습니다!');
              $('#loginPage').find('.login_logo').removeClass('pending');
            }
          }
          
        } finally {
          // $loading.hide();
          // $auth_login.find('.btn').removeClass('pending');    
      
          // $('#loginPage').find('.btn_login').removeClass('pending');
          
        }
      },

      // post
      getPostsAll: async () => {
        try {
          tweetRef
            .orderBy("createdAt", "asc")
            .onSnapshot((snapshot) => {
              const tweetArray = snapshot.docs.map((doc) => ({
                id: doc.id,
                ...doc.data(),
              }));
              if (tweetArray.length === 0) {
                $tweet_list_all.hide();
                return $tweet_no_all.show();
              } else {
                $tweet_list_all.show();
                $tweet_no_all.hide();
              }
              $tweet_list_all.html(''); // 초기화
              tweetArray.forEach((tweet) => {          
                // const defaultHtml = `
                //   <span class="tweet">${tweet.text}</span>
                //   <span class="author">${tweet.author}</span>
                //   <span class="time">${moment(tweet.createdAt).format('YY-MM-DD a h:mm')}</span>
                //   <span class="tid">${tweet.id}</span>
                // `;
                // const btnHtml = `
                //   <span class="btns btns1">
                //     <button class="btn edit"><i class='bx bxs-edit'   ></i></button>
                //     <button class="btn delete"><i class='bx bx-trash'  ></i></button>
                //   </span>
                //   <span class="btns btns2">
                //     <button class="btn edit"><i class='bx bx-check-circle' style='color:#4cc2ff;' ></i></button>
                //     <button class="btn cancel"><i class='bx bx-message-square-x'  ></i></button>
                //   </span>
                // `;
                const defaultHtml = `
                  <div class="wrap_tweet_box">
                  <span class="ttype">${tweet.optionValue}</span>
                  <span class="tid">${tweet.id}</span>
                  <span class="tweet">${tweet.text}</span>
                  </div>
                `;
                const btnHtml = `
                  <span class="btns btns1">
                    <button class="btn edit"><i class='bx bxs-edit'   ></i></button>
                    <button class="btn delete"><i class='bx bx-trash'  ></i></button>
                  </span>
                  <span class="btns btns2">
                    <button class="btn edit"><i class='bx bx-check-circle' style='color: #aab4ff;' ></i></button>
                    <button class="btn cancel"><i class='bx bx-message-square-x'  ></i></button>
                  </span>
                `;
                const dateHtml = `
                <div class="wrap_design">
                <span class="author">${tweet.author !== '' ? tweet.author : '손님'}</span>
                <span class="time">${moment(tweet.createdAt).format('YY-MM-DD a h:mm')}</span>
                </div>
                `
                const dateHtmlother = `
                <div class="wrap_design">
                <span class="author">${tweet.author !== '' ? tweet.author : '손님'}</span>
                <span class="time">${moment(tweet.createdAt).format('YY-MM-DD a h:mm')}</span>
                </div>
                `
                if (FBU_ADMIN_UID === USER_ID) { // 관리자인 경우
                  // $tweet_list_all.append(`<li class="owner">${defaultHtml}${btnHtml}</li>`);
                  $tweet_list_all.append(`<li class="owner">${defaultHtml}${btnHtml}</li><span class="tweet_span owner staff">${dateHtml}</span>`);
                } else if (tweet.creatorId === '') { // 손님인 경우
                  $tweet_list_all.append(`<li>${defaultHtml}</li><span class="tweet_span">${dateHtmlother}</span>`);
                } else if (tweet.creatorId !== USER_ID) { // 메가스터디교육 메일 인증 회원인 경우
                  // $tweet_list_all.append(`<li>${defaultHtml}</li>`);
                  $tweet_list_all.append(`<li>${defaultHtml}</li><span class="tweet_span staff">${dateHtmlother}</span>`);
                } else {
                  // $tweet_list_all.append(`<li class="owner">${defaultHtml}${btnHtml}</li>`);
                  $tweet_list_all.append(`<li class="owner">${defaultHtml}${btnHtml}</li><span class="tweet_span owner staff">${dateHtml}</span>`);
                }
              });
              $tweet_loading_all.hide();
              snapshot.docChanges().forEach((change) => {
                if (change.type === 'removed' || change.type === 'modified') {
                }
                if (change.type === 'added') {
                  if ($tweet_box_all.scrollTop() >= ($tweet_list_all.height() - $tweet_box_all.outerHeight()) - 400) {
                    $tweet_box_all.animate({scrollTop: $tweet_list_all.height()}, 400);
                  } else {
                    // console.log(change)
                  }
                }
              });
            });
        } catch (error) {
          console.log(error);
        } finally {
          $loading_all.fadeOut(200);
          $loading_all_ui.fadeOut(200);
        }
      }
    };
  })(window.jQuery, window, document);

(function () {
  Lab.init();
})();
