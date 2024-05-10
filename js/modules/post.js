if (window.location.pathname.indexOf('/items/') === 0 || window.location.pathname.indexOf('/pages/') === 0) {
  $loading_all.show();
  $loading_all_ui.show();
}

const getPostsAll = async () => {
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
        $tweet_list_all.html(''); // �ʱ�ȭ
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
          <span class="author">${tweet.author !== '' ? tweet.author : '�մ�'}</span>
          <span class="time">${moment(tweet.createdAt).format('YY-MM-DD a h:mm')}</span>
          </div>
          `
          const dateHtmlother = `
          <div class="wrap_design">
          <span class="author">${tweet.author !== '' ? tweet.author : '�մ�'}</span>
          <span class="time">${moment(tweet.createdAt).format('YY-MM-DD a h:mm')}</span>
          </div>
          `
          if (FBU_ADMIN_UID === USER_ID) { // �������� ���
            // $tweet_list_all.append(`<li class="owner">${defaultHtml}${btnHtml}</li>`);
            $tweet_list_all.append(`<li class="owner">${defaultHtml}${btnHtml}</li><span class="tweet_span owner staff">${dateHtml}</span>`);
          } else if (tweet.creatorId === '') { // �մ��� ���
            $tweet_list_all.append(`<li>${defaultHtml}</li><span class="tweet_span">${dateHtmlother}</span>`);
          } else if (tweet.creatorId !== USER_ID) { // �ް����͵��� ���� ���� ȸ���� ���
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

const getPostsItem = async () => {
  try {
    // �ǽð� ������Ʈ
    await tweetRefItem
      .orderBy("createdAt", "asc")
      .onSnapshot((snapshot) => {
        const tweetArray = snapshot.docs.map((doc) => ({
          id: doc.id,
          ...doc.data(),
        }));
        if (tweetArray.length === 0) {
          $tweet_list_item.hide();
          return $tweet_no_item.show();
        } else {
          $tweet_list_item.show();
          $tweet_no_item.hide();
        }
        $tweet_list_item.html(''); // �ʱ�ȭ
        $('.page_text_wrap').find('.issue-box-wrap').html('');
        tweetArray.forEach((tweet) => {          
          const defaultHtml = `
            <div class="wrap_tweet_box">
            <span class="ttype">${tweet.optionValue}</span>
            <span class="tid">${tweet.id}</span>
            <span class="tweet">${tweet.text}</span>
            </div>
            <span class="comments"><i class='bx bx-comment'></i> ${tweet.comments.length}</span>
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
          <span class="author">${tweet.author}</span>
          <span class="time">${moment(tweet.createdAt).format('YY-MM-DD a h:mm')}</span>
          <span class="option">${tweet.optionText}</span>
          </div>
          `
          const dateHtmlother = `
          <div class="wrap_design">
          <span class="option">${tweet.optionText}</span>
          <span class="author">${tweet.author}</span>
          <span class="time">${moment(tweet.createdAt).format('YY-MM-DD a h:mm')}</span>
          </div>
          `
          if (FBU_ADMIN_UID === USER_ID) {
            // $tweet_list_item.append(`<li class="owner">${defaultHtml}${btnHtml}</li>`);
            $tweet_list_item.append(`<li class="owner">${defaultHtml}${btnHtml}</li><span class="tweet_span owner">${dateHtml}</span>`);
          } else if (tweet.creatorId !== USER_ID) {
            // $tweet_list_item.append(`<li>${defaultHtml}</li>`);
            $tweet_list_item.append(`<li>${defaultHtml}</li><span class="tweet_span">${dateHtmlother}</span>`);
          } else {
            // $tweet_list_item.append(`<li class="owner">${defaultHtml}${btnHtml}</li>`);
            $tweet_list_item.append(`<li class="owner">${defaultHtml}${btnHtml}</li><span class="tweet_span owner">${dateHtml}</span>`);
          }

          let commentsHtml = '';
          tweet.comments.forEach((comment) => {
            // commentsHtml += `<li>${comment.content} / ${comment.author} / ${moment(comment.createdAt).format('YY-MM-DD')}</li>`;
            commentsHtml += `<li${comment.creatorId === USER_ID ? ' class="owner"' : ''}>${comment.content}</li><span class="issue_chat_span ${comment.creatorId === USER_ID ? 'owner' : ''}"> ${comment.author} ${moment(comment.createdAt).format('YY-MM-DD')}</span>`;
          });

          $('.page_text_wrap').eq(tweet.optionValue - 1).find('.issue-box-wrap').append(`
            <div class="issue-box${tweet.completed ? ' completed' : ''}" data-id=${tweet.id} data-comments='${JSON.stringify(tweet.comments)}'>
              <div class="issue_wrap">
                <a href="javascript:;" class="issue_icon_user${tweet.comments.length > 0 ? ' exist' : ''}">${tweet.author}${tweet.comments.length > 0 ? `<em>${tweet.comments.length}</em>` : ''}</a>
                <div class="issue_con">
                  <a href="#" class="login_close_btn"><i class="bx bx-x" style="color:#c9c9c9"></i></a>
                  ${tweet.creatorId === USER_ID ? `<a href="#" class="btn-del-issue"><i class="bx bx-trash"></i></a>` : ''}
                  <div class="condi_wrap ${tweet.completed ? 'sol' : 'notsol'}">
                    <p class="condi left"><i class='bx bxs-message-square-error' ></i><span class="condi_sir"></span>�ذ� ��</p>
                    <p class="condi right"><i class='bx bx-message-square-check' ></i><span class="condi_sir"></span>�ذ�Ϸ�</p>
                  </div>
                  <span class="issue_day">�̽�������� : ${moment(tweet.createdAt).format('YY-MM-DD')}</span>
                  <div class="issue_chat_wrap"><div class="issue_chat_area">${tweet.comments.length ? commentsHtml : '<div class="no-issue"><span class="no-tweet"><i class="bx bx-smile" ></i>��ϵ� ����� �����ϴ�.<br>���� �ٷ� ����� ���� ������.</span></div>'}</div></div>
                  <div class="input-area">
                    ${tweet.creatorId === USER_ID ? `
                    <span class="chk-base">
                      <input type="checkbox" id=${tweet.id} ${tweet.completed ? 'checked' : ''} />
                      <label for=${tweet.id}>�ذ᳻�� Ȯ�� �Ϸ�</label>
                    </span>
                    ` : ''}
                    ${!tweet.completed ? `<input type="text" class="tweet" placeholder="�ǰ��� �����ּ���.">
                    <button class="btn action"><span>��� ���</span></button>` : ''}
                  </div>
                </div>
                <div class="dim_issue"></div>
              </div>
            </div>
          `);
        });
        $tweet_loading_item.hide();
        snapshot.docChanges().forEach((change) => {
          if (change.type === 'removed' || change.type === 'modified') {
          }
          if (change.type === 'added') {
            if ($tweet_box_item.scrollTop() >= ($tweet_list_item.height() - $tweet_box_item.outerHeight()) - 400) {
              $tweet_box_item.animate({scrollTop: $tweet_list_item.height()}, 400);
            } else {
              // console.log(change)
            }
          }
        });
        
      })
  } catch (error) {
    console.error('getPostsItem �Լ� ���� ���� : ', error);
  } finally {
    $loading_all.fadeOut(200);
    $loading_all_ui.fadeOut(200);
  }
  
}

// �Խñ� �߰�
const addPostAll = () => {
  const val = $tweet_input_all.find('.tweet').val();
  if (val.length > 4999) {
    return toastr.error('5000�� �̻� �Է��� �� �����ϴ�.');
  }
  if (val.trim() === '') {
    return toastr.error('���� �Է��ϼ���.');
  }
  const tweetObj = {
    text: val,
    createdAt: Date.now(),
    author: USER_NAME,
    creatorId: USER_ID,
  }
  $tweet_input_all.find('button').addClass('pending');
  tweetRef.add(tweetObj).then(() => {
    $tweet_input_all.find('.tweet').val('').focus();
    $tweet_input_all.find('button').removeClass('pending');
  });
  $tweet_box_all.animate({scrollTop: $tweet_list_all.height()}, 400);
}
const addPostItem = () => {
  const val = $tweet_input_item.find('.tweet').val();
  // const optionText = $tweet_input_item.find('select.opt option:selected').text();
  // const optionValue = $tweet_input_item.find('select.opt option:selected').val();
  const optionText = $('.select_wrap').find('.selected').text();
  const optionValue =$('.select_wrap').find('.selected').val();
  if (val.length > 4999) {
    return toastr.error('5000�� �̻� �Է��� �� �����ϴ�.');
  }
  // if ($tweet_select_item.find('option:selected').val() === '0') {
  //   return toastr.error(isPathname.toUpperCase() + ' Ÿ���� �����ϼ���.');
  // }
  if ($('.select_wrap a').hasClass('selected')) {
    return toastr.error(isPathname.toUpperCase() + ' Ÿ���� �����ϼ���.');
  } else {}
  if (val.trim() === '') {
    return toastr.error('���� �Է��ϼ���.');
  }
  const tweetObj = {
    text: val,
    createdAt: Date.now(),
    author: USER_NAME,
    creatorId: USER_ID,
    optionText: optionText,
    optionValue: optionValue,
    comments: [],
    completed: false,
  }
  $tweet_input_item.find('button').addClass('pending');
  tweetRefItem.add(tweetObj).then(() => {
    $tweet_input_item.find('.tweet').val('').focus();
    $tweet_input_item.find('button').removeClass('pending');
  });
  $tweet_box_item.animate({scrollTop: $tweet_list_item.height()}, 400);
}
const addCommentItem = async (id, arr) => {
  const $issue = $('.issue-box[data-id='+id+']');
  const val = $issue.find('.input-area input.tweet').val();
  if (val.length > 4999) {
    return toastr.error('5000�� �̻� �Է��� �� �����ϴ�.');
  }
  if (val.trim() === '') {
    return toastr.error('���� �Է��ϼ���.');
  }
  const commentObj = {
    content: val,
    createdAt: Date.now(),
    author: USER_NAME,
    creatorId: USER_ID,
  }
  await dbService.doc(`tweetsBy${isPathname}/${id}`).update({
    comments: [...arr, commentObj]
  });
  toastr.success('����� ��� �Ǿ����ϴ�.')
  $issue.find('.input-area input.tweet').val('').focus();
}

// �Խñ� ��� ��ư Ŭ�� �� ����
$tweet_input_all.find('.tweet').on('keyup', (e) => {
  if (e.keyCode === 13) {
    addPostAll();
  }
});
$tweet_input_all.find('button').on('click', (e) => {
  e.preventDefault();
  addPostAll();
});
$tweet_input_item.find('.tweet').on('keyup', (e) => {
  if (e.keyCode === 13) {
    addPostItem();
  }
});
$tweet_input_item.find('button').on('click', (e) => {
  e.preventDefault();
  addPostItem();
});

// ���� �Խñ� CRUD
$tweet_list_all.on('click', '.btns.btns1 .btn.delete', function() { // ����
  const ok = window.confirm("�Խñ��� �����Ͻðڽ��ϱ�?");
  if (ok) {
    const $li = $(this).closest('li');
    const id = $li.find('span.tid').text();

    dbService.doc(`tweets/${id}`).delete();
  }
}).on('click', '.btns.btns1 .btn.edit', function(){ // ���� - ����1
  const $li = $(this).closest('li');
  const id = $li.find('span.tid').text();
  const tweet = $li.find('span.tweet').text();
  
  $li.find('.btns.btns1').hide();
  $li.find('.btns.btns2').show();
  $li.find('span.tweet').hide();
  $li.prepend(`<input id=${id} class="edit" />`);
  $li.find('input.edit').focus();
  $li.find('input.edit').val(tweet);
}).on('click', '.btns.btns2 .btn.edit', function(){ // ���� - ����2
  const $li = $(this).closest('li');
  const id = $li.find('span.tid').text();
  
  dbService.doc(`tweets/${id}`).update({
    text: $li.find('input.edit').val(),
  });
}).on('click', '.btns.btns2 .btn.cancel', function(){ // ���
  const $li = $(this).closest('li');
  
  $li.find('input.edit').remove();
  $li.find('span.tweet').show();
  $li.find('.btns.btns1').show();
  $li.find('.btns.btns2').hide();
});

$tweet_list_item.on('click', '.btns.btns1 .btn.delete', function() { // ����
  const ok = window.confirm("�Խñ��� �����Ͻðڽ��ϱ�?");
  if (ok) {
    const $li = $(this).closest('li');
    const id = $li.find('span.tid').text();

    dbService.doc(`tweetsBy${isPathname}/${id}`).delete();
  }
}).on('click', '.btns.btns1 .btn.edit', function(){ // ���� - ����1
  const $li = $(this).closest('li');
  const id = $li.find('span.tid').text();
  const tweet = $li.find('span.tweet').text();
  
  $li.find('.btns.btns1').hide();
  $li.find('.btns.btns2').show();
  $li.find('span.tweet').hide();
  $li.prepend(`<input id=${id} class="edit" />`);
  $li.find('input.edit').focus();
  $li.find('input.edit').val(tweet);
}).on('click', '.btns.btns2 .btn.edit', function(){ // ���� - ����2
  const $li = $(this).closest('li');
  const id = $li.find('span.tid').text();
  
  dbService.doc(`tweetsBy${isPathname}/${id}`).update({
    text: $li.find('input.edit').val(),
  });
}).on('click', '.btns.btns2 .btn.cancel', function(){ // ���
  const $li = $(this).closest('li');
  
  $li.find('input.edit').remove();
  $li.find('span.tweet').show();
  $li.find('.btns.btns1').show();
  $li.find('.btns.btns2').hide();
}).on('click', 'span.tweet, .wrap_design, span.comments', function(){ // �ش� ������Ʈ Ÿ�� ��۷� �̵�
  var index = $(this).siblings('.ttype').text();
  fnMove(index);
  // setTimeout(function(){
  //   $('.page_text_wrap').eq(index - 1).find('.issue_wrap > a').click();
  // }, 250);
});

$('.page_text_wrap').on('click', '.issue_wrap > a', function(e){
  e.preventDefault();
  if (!$(this).hasClass('on')) {
    $('.issue_wrap > a').removeClass('on');
    $('.issue-box .issue_con.on').removeClass('on');
    $('.issue-box-wrap').css('z-index', 1);
    $(this).addClass('on');
    $(this).next('.issue_con').addClass('on');
    // $(this).siblings('.issue_con').addClass('on');
    $(this).siblings('.dim_issue').addClass('on');
    $(this).siblings('.issue-box-wrap').css('z-index', 2);
    $(this).next('.issue_con').find('.issue_chat_wrap').animate({scrollTop: $(this).next('.issue_con').find('.issue_chat_area').height()}, 300);
  } else {
    $(this).removeClass('on');
    $(this).next('.issue_con').removeClass('on');
    $(this).siblings('.issue-box-wrap').css('z-index', 1);
  }
}).on('click', '.issue_wrap .input-area .btn.action', function(e){ // ��� ���
  addCommentItem($(this).closest('.issue-box').data('id'), $(this).closest('.issue-box').data('comments'));
}).on('keyup', '.issue_wrap .input-area input.tweet' , function(e){
  if (e.keyCode === 13) {
    addCommentItem($(this).closest('.issue-box').data('id'), $(this).closest('.issue-box').data('comments'));
  }
}).on('change', '.chk-base input', function(){
  dbService.doc(`tweetsBy${isPathname}/${$(this).closest('.issue-box').data('id')}`).update({
    completed: $(this).is(':checked'),
  }).then(() => {
    if ($(this).is(':checked')) {
      toastr.success('�ش� �ϰ��� �ذ�Ǿ����ϴ�.');
    } else {
      toastr.success('�ش� �ϰ��� ���ذ� ���·� �޺� �Խ��ϴ�.');
    }
  }).catch((err) => {
    toastr.error(err);
  })
}).on('click', '.btn-del-issue', function(e){
  e.preventDefault();
  var q = confirm('�ش� �̽��� �����Ͻðڽ��ϱ�?');
  if (q) {
    const id = $(this).closest('.issue-box').data('id');
    dbService.doc(`tweetsBy${isPathname}/${id}`).delete().then(() => {
      toastr.success('�̽��� �����Ͽ����ϴ�.');
    }).catch((err) => {

    })
  } else {
    toastr.success('�̽� ������ ����ϼ̽��ϴ�.');
  }
}).on('click', '.login_close_btn', function(e){
  e.preventDefault();
  $('.dim_issue').removeClass('on');
  $('.issue_wrap > a').removeClass('on');
  $('.issue-box .issue_con.on').removeClass('on');
  $('.issue-box-wrap').css('z-index', 1);
 });

$(document).on('click', function(e){
  if (!$(e.target).closest('.issue-box').length) {
    $('.issue_wrap > a').removeClass('on');
    $('.issue-box .issue_con.on').removeClass('on');
    $('.issue-box-wrap').css('z-index', 1);
    $('.dim_issue').removeClass('on');
  }
});

