const Lab = window.Lab || (function ($, window, document, undefined) {
  return {
    init: () => {
      const $header = $('.header_wrp');
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
      // ���� �׺���̼�
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

      // ���̵� ���� ���� ó��
      if ($('.page_wrap.page_wide').length) {
        $('#wrap').addClass('wide');
      }

      // ���� �׺���̼�
      if ($('.ank').length) {
        // $('.ank').append(
        //   '<button><i class="bx bx-chevrons-down"></i></button>'
        // );
        // $('.ank').append('<ul></ul>');
        // if ($popup_tweet_item.length) {
        //   // $tweet_select_item.append('<option value="0">' + isPathname.toUpperCase() + ' Ÿ�� ����</option>');
        //   $('.select_wrap').append(
        //     '<a href="javascript:;" value="0" class="fir selected">Ÿ�� ����</a>'
        //   );
        // }
        // $page_wrap.each(function (index) {
        //   $(this).addClass('board' + (index + 1));
        //   var headText = $(this).find('.page_head').text();
        //   $('.ank ul').append(
        //     `<li class="ank_list"><a href="javascript:;" onClick="fnMove(${
        //       index + 1
        //     })">#${index + 1} ${headText}</a></li>`
        //   );
        //   if ($popup_tweet_item.length) {
        //     // $tweet_select_item.append('<option value=' + (index + 1) + '>' + headText + '</option>');
        //     $tweet_select_item.append(
        //       '<li value=' + (index + 1) + '>' + headText + '</li>'
        //     );
        //   }
        // });
      }

      // $('.ank button').on('click', function () {
      //   if ($('.ank ul').hasClass('close_list')) {
      //     $('.ank ul').removeClass('close_list');
      //   } else {
      //     $('.ank ul').addClass('close_list');
      //   }
      // });
    },
  };
})(window.jQuery, window, document);

(function () {
  Lab.init();
})();

//**�����: javascript:; onclick="mainHide('#���̵��');" 
function mainHide(target){ 
  $(target).hide();
}

//**�����: javascript:; onclick="mainShow('#���̵��');" 
function mainShow(target){ 
  $(target).show();
}

//**�����: javascript:; onclick="mainTodayHide('��Ű��', '#���̵��')" 
function mainTodayHide(cookie, id){ 
  setCookie(cookie, "close", 1);
  $(id).hide();
}  

//**�����: mainToggle('#���̵��');
function mainToggle(target){ 
  $(target).toggleClass('on');
}

//**�����: mainBlink('#selector', 'sec')
function mainBlink(selector, sec){ 
  setInterval(function(){
      $(selector).toggleClass('on');
  }, sec);
}

// �ް������� �Լ� - ���ó(http://localhost/#/component/popup)
const deleteCookieAndReload = function(name) {
  const date = new Date();
  document.cookie = name + "= " + "; expires=" + date.toUTCString() + "; path=/";
  location.reload();
}

function mok_close() {
  $("#mok_hd_pop").hide();
}
function mok_day_close() {
  setCookie("mok_hd_pop_one", "close", 1);
  // setCookieToday('mok_hd_pop_one', 'close', 1);
  mok_close();
}

function closeCmegaPopupToday() {
  setCookiePopupToday('todayPopupCookie', 'close', 1);
  closeCmegaPopup('popupToday');
}

if(getCookie('todayPopupDimCookie') == 'close'){
  closeCmegaDimPopup('popupDim');
}
function closeCmegapopupDimToday() {
  setCookiePopupToday('todayPopupDimCookie', 'close', 1);
  closeCmegaDimPopup('popupDim');
    $('.mfp-close').trigger('click');
}

function closeCmegaDimPopup() {
  $('.mfp-close').trigger('click');
}

if(getCookie('todayPopupVideoCookie') == 'close'){
  closeCmegaPopup('popupVideo');
}
function closeCmegaPopupVideoToday() {
  setCookiePopupToday('todayPopupVideoCookie', 'close', 1);
  closeCmegaPopup('popupVideo');
}
if(getCookie('todayPopupYoutubeCookie') == 'close'){
  closeCmegaPopup('popupYoutube');
}
function closeCmegaPopupYoutubeToday() {
  setCookiePopupToday('todayPopupYoutubeCookie', 'close', 1);
  closeCmegaPopup('popupYoutube');
}
if(getCookie('todayPopupPassServiceCookie') == 'close'){
  closeCmegaPopup('popupPass');
}
function closeTodaypopupPass() {
  setCookiePopupToday('todayPopupPassServiceCookie', 'close', 1);
  closeCmegaPopup('popupPass');
}
let timeout = null;
let interval = null;

// S: �ް������� �Լ� - ���ó(http://localhost/#/component/dev-popup)
var isNoticePopupDimm = false;

function openNoticePopup() {
  var q = window.confirm('�˾��� ���ðڽ��ϱ�?');
  if (q) {
    isNoticePopupDimm = true;
    openMegaPopup('popupFadeInNotice', 4, false, true);
  }
}

function closeNoticePopup() {
  var q = window.confirm('�˸���û�� ���� �ʰ� �˾��� �����ðڽ��ϱ�?');
  if (q) {
    isNoticePopupDimm = false;
    $.magnificPopup.close();
  }
}

function completeNotice() {
  alert('�˸� ��û�� �Ϸ�Ǿ����ϴ�.');
  $.magnificPopup.close();
}

//���� ���ε�
var getFileExtention = function(filename) {
  return filename.substring(filename.lastIndexOf('.')+1, filename.length) || filename;
}

var maxSize = 5 * 1024 * 1024;//5MB  
var ChangeFile = function(obj, filename_field) {
  if (typeof obj.files[0] !== "undefined") {
      var file_ext = getFileExtention(obj.files[0].name.toLowerCase());
      if (file_ext != 'jpg' && file_ext != 'jpeg' && file_ext != 'gif' && file_ext != 'png') {
          alert('JPG, JPEG, GIF �Ǵ� PNG Ȯ���� ���ϸ� ���ε� �����մϴ�.');
          obj.files[0].value = null;
          tempHtml = "<input type='file' id='attfile' name='attfile' value='' onchange=\"ChangeFile(this, 'filename')\">";
          $('#attfile').replaceWith(tempHtml);         
          document.getElementById('attfile_ori_name').value='';       
          document.getElementById(filename_field).value="���� �̹����� ���ε��� �ּ���.";
          return;
      } else {
          //÷������ ������ üũ      
          if(obj.files[0].size > maxSize){
              tempHtml = "<input type='file' id='attfile' name='attfile' value='' onchange=\"ChangeFile(this, 'filename')\">";
              $('#attfile').replaceWith(tempHtml);     
              document.getElementById('attfile_ori_name').value='';                  
              alert("÷�������� 5MB ���Ϸ� ����� �����մϴ�.");
              return;
          }
          document.getElementById(filename_field).value=obj.files[0].name;
          fncFileUPloadNew('','board','event','<%=evt_cd%>','attfile', ',', 'N', 'Y');                               
      }
      $("#btn_fileDel").show();

  } else {
      document.getElementById(filename_field).value="���� �̹����� ���ε��� �ּ���.";
      document.getElementById('attfile').value='';
      document.getElementById('attfile_ori_name').value='';
  }
}

function fncFileUPloadNew(form_id,dir,sub_dir,sub_sub_dir,id_str, delim, date_yn, rename_yn) {
  if( (id_str == "" || id_str == undefined) || (delim == "" || delim == undefined) ) {
      return false;
  }                        
  var target_tot = id_str.split(delim).length;

  var proc_chk_tot = 0;
  id_str.split(delim).forEach(function(i) {
      var id_txt = "filename";
          
      if(i!=""){
          var formData = new FormData();

          formData.append("dir",dir);
          formData.append("sub_dir",sub_dir);
          formData.append("sub_sub_dir",sub_sub_dir);
          formData.append("attfile", jQuery("#"+i)[0].files[0]);
          formData.append("new_yn","Y");
          formData.append("date_yn",date_yn);
          formData.append("rename_yn",rename_yn);
          formData.append("filesize","5");

          var tmp_file_name = $("#"+i).val();                
          var file_name = tmp_file_name.substring(tmp_file_name.lastIndexOf("\\")+1);
          var file_main = document.domain.indexOf('dev') < 0 ? 'https://file.megagong.net' : 'https://filedev.megagong.net';
      
          jQuery.ajax({
              url : file_main+"/file/file_upload_j.asp"
              , type : "POST"
              , processData : false
              , contentType : false
              , xhrFields: {
                  withCredentials: true
              }
              //, contentType: 'application/x-www-form-urlencoded; charset=euc-kr'
              , data : formData
          })
          .done(function(json) {
                  var obj = JSON.parse(json);
                  
                  a=obj;
                  if(obj["err_code"] < 0) {
                      $("#"+id_txt).val("÷�������� ������ּ���.");
                      alert(obj["upload_msg"]);
                      return false;

                  } else {
                      $("#"+i+"_name").val(obj["file_info"]["file_name"]);
                      $("#"+i+"_size").val(obj["file_info"]["file_size"]);
                      $("#"+i+"_url").val(obj["file_info"]["file_url"]);

                      $("#"+i+"_ori_name").val(file_name);
                  }
          })
          .fail(function() {
              proc_chk_tot++;

              if(proc_chk_tot == target_tot) {
                  //document.myform.submit();
                  if(form_id!="") {
                  document.getElementById(form_id).submit();
                  }
              }
          })
          .always(function() {
              proc_chk_tot++;

              if(proc_chk_tot == target_tot) {
                  if(form_id!="") {
                      document.getElementById(form_id).submit();
                  }
              }
          });
      }
  });
}

function openSamplePopup2() {
  var q = window.confirm('�˾��� ���ðڽ��ϱ�? ���� �˾�2');
  if (q) {
    openMegaPopup('popupSample', 5, false, true);
  }
}

function closeSamplePopup2() {
  var q = window.confirm('��û�� ���� �ʰ� �˾��� �����ðڽ��ϱ�? ���� �˾�2');
  if (q) {
    isNoticePopupDimm = false;
    $.magnificPopup.close();
  }
}

function completeSample2() {
  alert('��û�� �Ϸ�Ǿ����ϴ�.');
  $.magnificPopup.close();
}


function closeSamplePopup3() {
  var q = window.confirm('��û�� ���� �ʰ� �˾��� �����ðڽ��ϱ�? ���� �˾�3');
  if (q) {
    isNoticePopupDimm = false;
    $.magnificPopup.close();
  }
}

function completeSample3() {
  alert('��û�� �Ϸ�Ǿ����ϴ�.');
  $.magnificPopup.close();
}
// E: �ް������� �Լ� - ���ó(http://localhost/#/component/dev-popup)

function replaceSpecialTags(string) {
  let result = string.replace(/&lt;%/g, '<%');
  result = result.replace(/%&gt;/g, '%>');
  result = result.replace(/&lt;!--/g, '<!--');
  result = result.replace(/--&gt;/g, '-->');
  return result;
}

function replaceSpecialJs(string) {
  let result = string.replace(/&lt;%/g, '<%');
  result = result.replace(/%&gt;/g, '%>');
  
  return result;
}

// S: ���ó(http://localhost/#/page/exam?id=4)
// �� ���� ����
function changeTabOn() {
  $(".result_tab ul li").removeClass("on");
  $("#tab_"+curr_subj_cd).addClass("on");
  responsiveAnswerZone();
}

// ������ Ŭ�� �Լ�
function getTabSubj(scd) {
  curr_subj_cd = scd;
  curr_idx = 1;  

  changeTabOn();

  $(".question_zone .question").children("div").hide();
  $("#q" + curr_subj_cd + "_" + curr_idx).show();

  LRbuttonHideShow(curr_idx);
}
getTabSubj(10);

// ����, ���� ���� ��������
function getQno(mode) {  
  $(".question_zone .question").children("div").hide();

  if (mode == 'prev') {  
      if (curr_subj_cd == 10 && curr_idx <= 1) {  
          return;
      } else if (curr_idx == 1) {  
          curr_subj_cd--;
          curr_idx = 5;
          changeTabOn();  // �� ���� ó��
      } else {  
          curr_idx--;
      }
      $("#q" + curr_subj_cd + "_" + curr_idx).show();
  }
  if (mode == 'next') {
      if (curr_subj_cd == 12 && curr_idx >= 5) {  
          return;
      } else if (curr_idx == 5) {  
          curr_subj_cd++;
          curr_idx = 1;
          changeTabOn();  // �� ���� ó��
      } else {  
          curr_idx++;
      }
      $("#q" + curr_subj_cd + "_" + curr_idx).show();
  }

  LRbuttonHideShow(curr_idx);
}

// �¿� ��ư ����, ���� ó��
function LRbuttonHideShow(idx) {
  if (curr_subj_cd == 10 && idx <= 1) {  // ���� �ѱ�� ��ư
      $("#btn_prev_subj").hide();
  } else {
      $("#btn_prev_subj").show();
  }

  if (curr_subj_cd == 12 && idx >= 5) {  // ������ �ѱ�� ��ư
      $("#btn_next_subj").hide();
  } else {
      $("#btn_next_subj").show();
  }
}

// �������� ��쿡�� ���� ����� ���� or ����
function responsiveAnswerZone() {
  if ($(window).width() <= 1200) {
      $(".answer_sheet .tbl_wrap").hide();
      if (curr_subj_cd == 10) $(".answer_sheet .kor").show();
      if (curr_subj_cd == 11) $(".answer_sheet .eng").show();
      if (curr_subj_cd == 12) $(".answer_sheet .his").show();
  } else {
      $(".answer_sheet .tbl_wrap").show();
  }
}

// ��� üũ ����
function setAns(t, s, q, a) {  
  $(t).parents().parents().children("td").removeClass("on");
  $(t).parents().addClass("on");

  $.ajax({
      type: "POST",
      url: "./apply_proc.asp",
      data: {mode: "set_ans", subj_cd: s, q_no: q, a_no: a, now: "2024-07-16 12:55:43"},
      dataType: "json"
  }).done(function(data) {
      var pickLength = $(".tbl_wrap table tbody tr td.on").length;
      // console.log(pickLength)
      if (pickLength >= 15) {
          $("#apply_btn").show();
      }
      
      if(data.msg) {
          alert(data.msg);
      }
      if(data.result == "fail") {
          location.href="./apply_result.asp";
      }
  });
}
// E: ���ó(http://localhost/#/page/exam?id=4)

// S: ���ó(http://localhost/#/page/exam?id=5)
function qst_popupOn(subj_nm) {
  if($("#questnPop").css("display") == "none"){
      $("#questnPop").show();
      //wrapWindowByMask();
      // $("body").bind('touchmove', function(e){e.preventDefault()});
  }else{
      $("questnPop").hide();
      // $("body").unbind('touchmove');
  }
  return false;
}

function showQst(subj_cd,qno) {
  $("#questionBox .question").children("div").hide();
  $("#questionBox .answer_box").children("div").hide();
  $("#q" + subj_cd + "_" + qno).show();
  $("#a" + subj_cd + "_" + qno).show();

  qst_popupOn();

  $('div.scroll_box').animate({scrollTop : 0}, 0);
}

function openSubjGuide(tab, sub) {
  if (sub == '0') {
      alert('�غ� ���Դϴ�.');
      return;
  }
  window.open('about:blank').location.href="/l/exam/gong/2024_2/subject_guide.asp?tab=" + tab + "&s" + tab + "=" + sub;
}

function qst_popupOn2(subj_nm, dpt_kbn) {
  // ������
  if (dpt_kbn == '1') {
      
  }
  // �����
  if (dpt_kbn == '2') {
      
  }

  $(".subj_nm[data-title=" + subj_nm +"]").show();

  if($("#questnPop2").css("display") == "none"){
      $("#questnPop2").show();
      //wrapWindowByMask();
      // $("body").bind('touchmove', function(e){e.preventDefault()});
  }else{
      $("questnPop2").hide();
      // $("body").unbind('touchmove');
  }
  return false;
}
// S: ���ó(http://localhost/#/page/event/share)
// �����̹���
function DownloadImg() {
  finishShareEvent();
  return;

  // fncDownload("/userdown/event/202211/evt_3120/download.jpg", ""); 
}
var loginShareEvent = function() {
  alert('�α��� �� ���� �����մϴ�.');
  document.location.href = "/member/login.asp";
}

var finishShareEvent = function() {
  alert("�̺�Ʈ�� ����Ǿ����ϴ�.");
}
function urlCopy() {
  copyToClipboard('#copyurl');
  alert('URL ���� �Ϸ�!\n�ҹ��ۿ� ��! �־��ּ���.');
}    

function copyToClipboard(el) {
  // resolve the element
  el = (typeof el === 'string') ? document.querySelector(el) : el;
  // handle iOS as a special case
  if (navigator.userAgent.match(/ipad|ipod|iphone/i)) {
      // save current contentEditable/readOnly status
      var editable = el.contentEditable;
      var readOnly = el.readOnly;
      // convert to editable with readonly to stop iOS keyboard opening
      el.contentEditable = true;
      el.readOnly = true;
      // create a selectable range
      var range = document.createRange();
      range.selectNodeContents(el);
      // select the range
      var selection = window.getSelection();
      selection.removeAllRanges();
      selection.addRange(range);
      el.setSelectionRange(0, 999999);
      // restore contentEditable/readOnly to original state
      el.contentEditable = editable;
      el.readOnly = readOnly;
  }
  else {
      el.select();
  }
  // execute copy command
  if (el) {
      navigator.clipboard.writeText(el.value);
  }
  el.blur();
}
// E: ���ó(http://localhost/#/page/event/share)