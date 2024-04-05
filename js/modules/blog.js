let attachment = '';
const imgUrl = [];
var tinymce_plugins = [
    "advlist", "autolink", "lists", "link", "image", "charmap", "preview", "anchor",
    "searchreplace", "visualblocks", "code", "fullscreen", "insertdatetime", "media", "table",
    "code", "help", "wordcount", "save"
];
var tinymce_edit_toolbar = 'formatselect fontselect fontsizeselect |'
           + ' forecolor backcolor |'
           + ' bold italic underline strikethrough |'
           + ' alignjustify alignleft aligncenter alignright |'
           + ' bullist numlist |'
           + ' table tabledelete |'
           + ' link image';
        
// https://www.tiny.cloud/docs/tinymce/6/
tinymce.init({
    language: "ko_KR", //�ѱ������� ����
    selector: PAGE_BLOG ? '#blogEditor' : '#blogEditEditor',
    height: 500,
    menubar: false,
    plugins: tinymce_plugins,
    toolbar: tinymce_edit_toolbar,
    
    image_title: true,
    automatic_uploads: true,
    // https://www.tiny.cloud/docs-3x/reference/Configuration3x/Configuration3x@Callbacks/
    setup : function(ed) {
        // console.log(ed)
    },
    
    file_picker_types: 'image',
    file_picker_callback: function (cb, value, meta) {
        var input = document.createElement('input');
        input.setAttribute('type', 'file');
        input.setAttribute('accept', 'image/*');
        input.onchange = function (e) {
            var file = this.files[0];
            if (file.size >= 2000000) {
                return alert('���� ����� 2MB�� �Ѿ�ϴ�. ���� �뷮�� �ٿ��ּ���.');
            }
            // console.log(file.type) // �̹��� üũ �ʿ�
            var reader = new FileReader();
            reader.onload = function () {
                var id = 'blobid' + (new Date()).getTime();
                var blobCache =  tinymce.activeEditor.editorUpload.blobCache;
                var base64 = reader.result.split(',')[1];
                var blobInfo = blobCache.create(id, file, base64);
                blobCache.add(blobInfo);
                cb(blobInfo.blobUri(), { title: file.name });
            };
            
            
            reader.onloadend = function (event) {
                attachment = event.currentTarget.result;
            }
            reader.readAsDataURL(file);
        };
        input.click();

    },
    content_style: 'body { font-family:"NotoSans KR", sans-serif; font-size:14px }'
});

// single file
$blog_write_file.on('change', function(e){
    const reader = new FileReader();
    if (e.target.files[0].size >= 2000000) {
        $(this).val('');
        return alert('���� ����� 2MB�� �Ѿ�ϴ�. ���� �뷮�� �ٿ��ּ���.');
    }
    reader.onloadend = (event) => {
        attachment = event.currentTarget.result;
        $('.preview_wrp').html(`<img src=${event.currentTarget.result} alt="" />`);
    }
    reader.readAsDataURL(e.target.files[0]);
    
});

$blog_write_btn.on('click', function(e){
e.preventDefault();
    $blog_write.addClass('on');
    $('body').addClass('no_scroll');
    setTimeout(function(){
        $blog_write.addClass('active');
    }, 250);
});

$blog_write_close_btn.on('click', function(e){
    e.preventDefault();
    $blog_write.removeClass('on');
    $('body').removeClass('no_scroll');
    $blog_write.removeClass('active');
});

let initBlogItem = false;
let initBlogCommentItem = false;

if (PAGE_BLOG) {
    $('body').addClass('no_scroll');
}
if (PAGE_BLOG || PAGE_BLOG_DETAIL) {
    $('.ank').remove();
}

const getBlogItem = async () => {
    try {
        const id = $.urlParam('id');
        const blogItem = await blogRef.doc(id).get();
        const blogData = blogItem.data();
        $('.page_name_wrap h3.page_name').text(blogData.title);
        $('.page_name_wrap .page_sub_text').html(`<div class="author_wrp"><span class="face"><img src="images/char${getUserFace(blogData.creatorId)}.png" alt=${blogData.author}></span>
        <span class="author"><strong>${blogData.author}</strong> �� ${moment(blogData.createdAt).fromNow()}</span></div>`);
        if (!initBlogItem) {
            initBlogItem = true;
            // $blog_detail.prepend(`
            //     ${blogData.attachmentUrl ? '<div class="pic_wrp"><img src=' + blogData.attachmentUrl + ' alt="" /></div>' : ''}
            //     <div class="content_wrp">${transformTextType3(blogData.content)}</div>
            // `);
            $blog_detail.prepend(`
                <div class="content_wrp">${blogData.content}</div>
            `);
            if (['S3V7rNiYhjMEGMBrYcIk', 'ioQOAR071F83dVsNFKtO', 'Kxk3UZO1Xh77qAd5VeCb', 'VfZAncdsjHgXVyOdMetq', 'EzUEY98yaqmQT787RrQ1', '8Bhlm6jTPpT1S6P3SGtx', 't0GeuYWI125Ux2Xvhqjw', '4nuyprFJcSgpP6G2wqPu', 'P06vC3rbslsgcYAXo8Nb', 'wU3w4upZ1LNYaTQHuen9', '5AGsfdGhTwzbNsg8PmX5'].includes(id)) {
                $blog_detail.find('.content_wrp').addClass('v_github');
            }
        }
        
        if (blogData.creatorId === USER_ID || FBU_ADMIN_UID === USER_ID) {
            $blog_detail.find('#btnModify, #btnDelete').css('display', 'inline-block');
        } else {
            $blog_detail.find('#btnModify, #btnDelete').css('display', 'none');
        }
        if (blogData.creatorId === USER_ID || FBU_ADMIN_UID === USER_ID) {
            $('.blog_edit_title').val(blogData.title)
            tinymce.get('blogEditEditor').setContent(blogData.content)
        }
    } catch (error) {
        console.error('getBlogItem �Լ� ���� ���� : ', error);
    } finally {
        $blog_loading.hide();
        $loading_all.hide();
        $loading_all_ui.hide();
    }
}
const getBlogCommentItem = async () => {
    // if (!initBlogCommentItem) {
        // initBlogCommentItem = true;
        const id = $.urlParam('id');   
        await blogRef.doc(id)
        .onSnapshot((snapshot) => {
            $('#comment_list').html('');
            let comments_html = '';
            const data = snapshot.data();
            if (data.comments.length === 0) {
                $('#comment_list').html('<li class="no_data">�ۼ��� ����� �����ϴ�.</li>');
            } else {
                data.comments.reverse().map((comment) => {
                    comments_html += `<li>
                        <div class="author_wrp">
                            <span class="face">${comment.creatorId ? '<img src="images/char' + getUserFace(comment.creatorId) + '.png" alt=' + comment.author +' />': '<i class="bx bx-user"></i>'}</span>
                            <span class="author">${comment.author}</span>
                        </div>
                        <span class="content">${transformTextType3(comment.content)}</span>
                        <span class="date">${moment(comment.createdAt).fromNow()}</span>
                        ${comment.creatorId === USER_ID ? '<button class="btn_delete_comment">����</button>' : ''}
                    </li>`;
                });
                $('#comment_list').html(comments_html);
            }
        });
    // }
}

// https://yoonhe.github.io/firebase/firestore
async function getFileUrl(image) {
    const attachmentRef = storageService.ref().child(`${USER_ID}/${Math.random()}`);
    const response = await attachmentRef.putString(image, 'data_url');
    const getUrl = await response.ref.getDownloadURL();

    return getUrl;
}

const addBlogItem = async () => {
    try {
        var editContent = await tinymce.activeEditor.getContent();

        let attachmentUrl = "";
        if (attachment !== "") {
            // single file
            const attachmentRef = storageService.ref().child(`${USER_ID}/${Math.random()}`);
            const response = await attachmentRef.putString(attachment, "data_url");
            attachmentUrl = await response.ref.getDownloadURL();
        }

        const title = $blog_write.find('.blog_title').val();
        if (title.trim() === '') {
            toastr.error('������ �Է��ϼ���!');
            $blog_write.find('.blog_title').focus();
            return;
        }
        const blogObj = {
            title,
            content: editContent,
            createdAt: Date.now(),
            author: USER_NAME,
            creatorId: USER_ID,
            attachmentUrl,
            comments: [],
        }
        await blogRef.add(blogObj).then((res) => {
            $blog_write.find('.blog_title').val('');
            $blog_write.find('.blog_content').val('');
            attachment = '';
            location.href = `./blog_detail.asp?id=${res.id}`;
            toastr.success('���� �ۼ��߽��ϴ�.');
        }).catch((error) => {
            console.error(error);
            toastr.error(error);
        });
    } catch (error) {
        console.error(err);
        toastr.error(error);
    }
    
}

const editBlogItem = async (id) => {
    try {
        var editContent = await tinymce.activeEditor.getContent();

        await dbService.doc(`blogs/${id}`).update({
            title: $('.blog_edit_title').val(),
            content: editContent,
        });

        toastr.success('���� �����߽��ϴ�.');

        $('.page_name_wrap h3.page_name').text($('.blog_edit_title').val());
        $blog_detail.find('.content_wrp').html(editContent)
        $blog_detail.show();
        $blog_edit.hide();
    } catch (error) {
        console.error(error);
        toastr.error(error);
    }
}

const addBlogCommentItem = async () => {
    try {
        const id = $.urlParam('id');
        const val = $blog_comment_write.find('.comment_content').val();
        if (val.length > 4999) {
            return toastr.error('5000�� �̻� �Է��� �� �����ϴ�.');
        }
        if (val.trim() === '') {
            return toastr.error('���� �Է��ϼ���.');
        }
        const commentObj = {
            content: val,
            createdAt: Date.now(),
            author: USER_NAME || '�մ�',
            creatorId: USER_ID,
        }
        const ref = await dbService.doc(`blogs/${id}`).get()
        const commentsData = ref.data().comments
        await dbService.doc(`blogs/${id}`).update({
            comments: [...commentsData, commentObj]
        });
        toastr.success('����� ��� �Ǿ����ϴ�.')
    } catch (error) {
        console.error(error);
        toastr.error(error)
    } finally {
        $blog_comment_write.find('.comment_content').val('').focus();
    }
}

const deleteBlogItem = async (id) => {
    try {
        await dbService.doc(`blogs/${id}`).delete();
    } catch (err) {
        console.error(err);
    } finally {
        location.href = './blog.asp';
    }
}

$blog_write.find('#btnSave').on('click', (e) => {
    addBlogItem();
});
$blog_edit.find('#btnEdit').on('click', (e) => {
    const id = $.urlParam('id');
    editBlogItem(id);
});
$blog_detail.find('#btnDelete').on('click', (e) => {
    e.preventDefault();
    var q = confirm('���� �����Ͻðڽ��ϱ�?');
    if (q) {
        const id = $.urlParam('id');
        deleteBlogItem(id);
    }
});
$blog_detail.find('#btnModify').on('click', (e) => {
    e.preventDefault();
    $blog_detail.hide();
    $blog_edit.show();
});
$blog_comment_write.find('#btnSave').on('click', (e) => {
    addBlogCommentItem();
});
$blog_comment_list.on('click', '.btn_delete_comment', function(e){
    const id = $.urlParam('id');
    const index = $(this).closest('li').index();
    const getIndex = ($(this).closest('ul').find('li').length - 1) - index;

    console.log(getIndex)

    editComment(id, getIndex)
});

const editComment = async (id, index) => {
    try {
        const ref = await dbService.doc(`blogs/${id}`).get();
        const commentsData = ref.data().comments;
        commentsData.splice(index, 1);
        await dbService.doc(`blogs/${id}`).update({
            comments: commentsData
        });
        toastr.success('����� �����߽��ϴ�.');
    } catch (error) {
        console.error(error);
        toastr.error('��� ������ �����߽��ϴ�.');
    }
}

if (PAGE_BLOG) {
    // https://firebase.google.com/docs/firestore/query-data/order-limit-data
    let loadingPost = false;
    let latestDoc = null;
    let sortRef = null;
    
    const sortingType = 'desc' // 'asc'(�����ȼ�) or 'desc'(�ֽż�)

    const getBlogsItem = async (doc) => {
        
        try {
            // debugger;
            $loading_all.show();
            $loading_all_ui.show();

            const ref = blogRef.orderBy("createdAt", sortingType)
            
            if (sortingType === 'asc') {
                sortRef = await ref.startAfter(doc || 0).limit(10);
            } else { // desc (hint : https://ux.stories.pe.kr/194)
                if (doc) {
                    sortRef = await ref.startAfter(doc).limit(10);
                } else {
                    sortRef = await ref.limit(10);
                }
                
            }

            const data = await sortRef.get();

            let blogsHTML = '';

            data.docs.forEach((blog) => {
                const blogObj = {
                    ...blog.data(),
                    id: blog.id,
                }
                const fileUrl = blogObj.attachmentUrl
                blogsHTML += `<li title=${blogObj.id}>
                    <a href="./blog_detail.asp?id=${blogObj.id}">
                        <div class="detail_wrp">
                            ${fileUrl ? "<span class='pic_wrp'><img src=" + fileUrl + " alt='' /></span>" : ""}
                            <div class="con_wrp">
                                <span class="title">${blogObj.title}</span>
                                <span class="content">${transformTextType3(blogObj.content)}</span>
                            </div>
                        </div>
                        <div class="author_wrp">
                            <div class="author_wrap">
                                <span class="face"><img src="images/char${getUserFace(blogObj.creatorId)}.png" alt=${blogObj.author}></span>
                                <span class="author"><strong>${blogObj.author}</strong></span>
                            </div>
                            <span class="info">${moment(blogObj.createdAt).fromNow()} �� <i class='bx bx-comment'></i>${blogObj.comments.length}</span>
                        </div>
                    </a>
                </li>`;
                
            });
            $blog_list.append(blogsHTML);
            if (sortingType == 'asc') {
                latestDoc = data.docs[data.docs.length - 1];
            } else { // desc
                latestDoc = data.docs[data.docs.length - 1];
            }
            if (data.empty) {
                toastr.success('�� �̻� �ҷ��� �Խñ��� �����ϴ�.');
                document.removeEventListener('scroll', handleScroll);
            }
        } catch (error) {
            console.error('getBlogsItem �Լ� ���� ���� : ', error);
        } finally {
            $blog_loading.hide();
            $loading_all.hide();
            $loading_all_ui.hide();
            loadingPost = false;
            $('body.no_scroll').removeClass('no_scroll');
        }
    }
    
    window.addEventListener('DOMContentLoaded', () => {
        getBlogsItem();
        
    });
    
    const handleScroll = () => {
        if (window.pageYOffset + document.documentElement.clientHeight > document.documentElement.scrollHeight - 100 && !loadingPost) {
            loadingPost = true;
            
            if (!$('body').hasClass('no_scroll')) {
                getBlogsItem(latestDoc);
            }
        }
    }

    document.addEventListener('scroll', handleScroll)
    // getBlogsItem();
}