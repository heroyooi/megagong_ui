
function downCoupon(book_cd) {
    $.post("/book/proc_book_event.asp",{"mode":"ins_cpn","book_cd":book_cd},function(data) {
        alert(data.msg);
    },"json");
}
