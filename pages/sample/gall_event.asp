

<div class="update">
    <h4><span><img src="<%=img_main%>/m/2022/1130_shin242/evt1_subtit.png" alt="교재 리뷰 모아보기"></span></h4>
    <div class="type_lst">
        <ul>
            <li id="list1" class="on"><a href="javascript:void(0);" onclick="getList('')" title="전체">전체</a></li>
            <li id="list2"><a href="javascript:void(0);" <% if cook_id = "" then %> onclick="alert('로그인이 필요합니다.');location.href='<%=url_main%>/member/login.asp';return false;" <% else %> onclick="getList('my')" <% end if %> title="나의 리뷰 보기">나의 리뷰 보기</a></li>
        </ul>
    </div>
    <div id="gallery_list"></div>
</div>

<script>
$(document).ready(function(){ 
    $('textarea').keyup(function(){ 
        var maxlength = $(this).attr('maxlength');
        if ($(this).val().length >= maxlength) { 
            alert(maxlength+ '자 이하로 작성 가능합니다.'); 
        } 
    });     
});


function cert(){
    <% if cook_id = "" then %>
        alert('로그인 후,참여 가능합니다.');
        document.location.href = "<%=url_main%>/member/login.asp";
    <%end if%>
    
    edTitle = $("#edTitle").val();
    chk_agree = $("input[name=chk_agree]:checked").val();

    if(edTitle == ""){
        alert("제목을 입력해 주세요");
        return false;
    } 
        
    if ($("#attfile_ori_name").val() == "") {
        alert("리뷰 이미지를 업로드해 주세요.");
        return false ;
    }

    var edContent = $.trim($("#edContent").val());
    if(edContent == ""){
        alert("리뷰 내용을 입력해 주세요.");
        return false;
    }

    if($("#edContent").val().length < 10 || $("#edContent").val().length > 500) {
        alert('리뷰 내용은 10자 이상 500자 이하로 작성 가능합니다.');
        return false;
    }

    if(chk_agree != 'Y') {
        alert('개인정보 제공에 동의하셔야 접수가 가능합니다.');
        return false;
    }

    var params = {
        mode: "reviewIns"
        ,attfile_name_ori : escape($("input[name=attfile_file_name_ori]").val())                                    
        ,attfile_name : escape($("input[name=attfile_file_name]").val())
        ,attfile_url : escape($("input[name=attfile_url]").val())   
        ,edContent : escape(edContent)
        ,chk_agree : chk_agree
        ,now:"<%=lo_now_date%>"
    }

    $.ajax({
        url:"./proc.asp"
        ,datatype:"json"
        ,traditional : true
        ,data:params
        ,type:"post"
        ,success : function(data){
            d = JSON.parse(data);
            if(d.msg!=""){
                alert(d.msg);
            }                
            if(d.result=="succ"){   
                window.location.reload();
            }
        }
    });

}

//List
function getList(mode) {
	mode = typeof mode == "undefined" ? "" : mode;
	list_type = mode;
    if(mode == ""){
        $("#list1").addClass("on");
        $("#list2").removeClass("on");
    }
    else{
        $("#list1").removeClass("on");
        $("#list2").addClass("on");        
    }    
    var params = {
        mode: mode
        ,now:"<%=lo_now_date%>"
    }    
    $("div#gallery_list").load("./sample/gall_list_ax.asp", params);
}
function fncCommonPageMv(url) {
	$.get(url,function(html) {
		$("div#gallery_list").html(html);
	});
}

getList('');

//삭제
function delX(idx) {
    if(confirm("게시물을 삭제하시겠습니까?")) {
        $.post("./proc.asp",{"mode":"reviewDel", "idx":idx},function(data) {
            if(data.msg != "") {
                alert(data.msg);
            }
            if(data.result == "succ") {
                getList('');
            }
        },"json");
    }
}

//파일 업로드
var getFileExtention = function(filename) {
    return filename.substring(filename.lastIndexOf('.')+1, filename.length) || filename;
}

var maxSize = 5 * 1024 * 1024;//5MB  
var ChangeFile = function(obj, filename_field) {
        if (typeof obj.files[0] !== "undefined") {

            var file_ext = getFileExtention(obj.files[0].name.toLowerCase());
            //if (file_ext != 'jpg' && file_ext != 'jpeg' && file_ext != 'gif' && file_ext != 'png' && file_ext != 'pdf') {
            if (file_ext != 'jpg' && file_ext != 'jpeg' && file_ext != 'gif' && file_ext != 'png') {
                alert('JPG, JPEG, GIF 또는 PNG 확장자 파일만 업로드 가능합니다.');
                obj.files[0].value = null;
                tempHtml = "<input type='file' id='attfile' name='attfile' value='' onchange=\"ChangeFile(this, 'filename')\">";
                $('#attfile').replaceWith(tempHtml);         
                document.getElementById('attfile_ori_name').value='';       
                document.getElementById(filename_field).value="인증 이미지를 업로드해 주세요.";
                return;
            } else {
                //첨부파일 사이즈 체크      
                if(obj.files[0].size > maxSize){
                    tempHtml = "<input type='file' id='attfile' name='attfile' value='' onchange=\"ChangeFile(this, 'filename')\">";
                    $('#attfile').replaceWith(tempHtml);     
                    document.getElementById('attfile_ori_name').value='';                  
                    alert("첨부파일은 5MB 이하로 등록이 가능합니다.");
                    return;
                }
                document.getElementById(filename_field).value=obj.files[0].name;
                fncFileUPloadNew('','board','event','<%=certEventCode%>','attfile', ',', 'N', 'Y');                               
            }
        $("#btn_fileDel").show();

        } else {
            document.getElementById(filename_field).value="인증 이미지를 업로드해 주세요.";
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
                        $("#"+id_txt).val("첨부파일을 등록해주세요.");
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
                    //document.myform.submit();
                    if(form_id!="") {
                        document.getElementById(form_id).submit();
                    }
                    
                }
            });
        }        
    });
}
</script>