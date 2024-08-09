<script type="text/babel">
  'use strict';

  function EventLectureSkeleton({ title, onChange }) {

const html = `<div class="lectlist ver2 empty">
    <ul class="lectlist_wrap">
        <li class="lect_item">
            <div class="listName">
                <div class="name"></div>
            </div>
            <div class="listWrap">
                <div class="listTitle clearfix">
                    <div class="f_left listTxt">
                        <p class="icon">
                            <span></span>
                        </p>
                        <p class="subTxt"></p>
                        <p class="subject"><a href=""></a></p>
                        <p class="subNoti"></p>
                    </div>
                </div>
                <div class="lecBook">
                    <ul class="bookList">
                        <li class="clearfix">
                            <div class="f_left">
                                <strong></strong>
                                <span></span>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="leclistBtn clearfix">
                <div class="listotal f_right">
                    <div class="lecMoney">
                        <ul>
                            <li>
                                <strong class="name"></strong>
                                <strong class="price"></strong>
                            </li>                               
                        </ul>
                        <a href="javascript:void(0);" class="cart_btn"></a>
                    </div>
                </div>
                <div class="btn_lecplay f_left new_pc_ver">
                    <a href="javascript: void(0);" class="prevw_btn"></a>
                </div>
            </div>
        </li>
        <li class="lect_item">
            <div class="listName">
                <div class="name"></div>
            </div>
            <div class="listWrap">
                <div class="listTitle clearfix">
                    <div class="f_left listTxt">
                        <p class="icon">
                            <span></span>
                        </p>
                        <p class="subTxt"></p>
                        <p class="subject"><a href=""></a></p>
                        <p class="subNoti"></p>
                    </div>
                </div>
                <div class="lecBook">
                    <ul class="bookList">
                        <li class="clearfix">
                            <div class="f_left">
                                <strong></strong>
                                <span></span>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="leclistBtn clearfix">
                <div class="listotal f_right">
                    <div class="lecMoney">
                        <ul>
                            <li>
                                <strong class="name"></strong>
                                <strong class="price"></strong>
                            </li>                               
                        </ul>
                        <a href="javascript:void(0);" class="cart_btn"></a>
                    </div>
                </div>
                <div class="btn_lecplay f_left new_pc_ver">
                    <a href="javascript: void(0);" class="prevw_btn"></a>
                </div>
            </div>
        </li>
        <li class="lect_item">
            <div class="listName">
                <div class="name"></div>
            </div>
            <div class="listWrap">
                <div class="listTitle clearfix">
                    <div class="f_left listTxt">
                        <p class="icon">
                            <span></span>
                        </p>
                        <p class="subTxt"></p>
                        <p class="subject"><a href=""></a></p>
                        <p class="subNoti"></p>
                    </div>
                </div>
                <div class="lecBook">
                    <ul class="bookList">
                        <li class="clearfix">
                            <div class="f_left">
                                <strong></strong>
                                <span></span>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="leclistBtn clearfix">
                <div class="listotal f_right">
                    <div class="lecMoney">
                        <ul>
                            <li>
                                <strong class="name"></strong>
                                <strong class="price"></strong>
                            </li>                               
                        </ul>
                        <a href="javascript:void(0);" class="cart_btn"></a>
                    </div>
                </div>
                <div class="btn_lecplay f_left new_pc_ver">
                    <a href="javascript: void(0);" class="prevw_btn"></a>
                </div>
            </div>
        </li>
    </ul>
</div>`;

const css = `.lectlist.ver2.empty :empty {background-size: 600px; animation: shine-line 2s infinite ease-out; min-height: 14px;}
.lectlist.ver2.empty li .listName .name:empty {display: inline-block; width: 60px; height: 18px; background-image: linear-gradient(90deg,#aeaeae 0px,rgba(0, 0, 0, 0.1) 40px,#aeaeae 80px); background-color: #aeaeae;}
.lectlist.empty .lect_item .listTitle .icon span:empty {width: 17px; height: 17px; background-image: linear-gradient(90deg,#efefef 0px,rgba(0, 0, 0, 0.1) 40px,#efefef 80px); background-color: #efefef;}
.lectlist.ver2.empty li .listTitle .subTxt:empty {width: 210px; background-image: linear-gradient(90deg,#ddd 0px,rgba(0, 0, 0, 0.1) 40px,#ddd 80px); background-color: #ddd;}
.lectlist.empty .lect_item .listTitle .subNoti:empty {width: 250px; height: 17px; background-image: linear-gradient(90deg,#aeaeae 0px,rgba(0, 0, 0, 0.1) 40px,#aeaeae 80px); background-color: #aeaeae;}
.lectlist.empty .lect_item .lecBook .bookList li .f_left > strong:empty {display: inline-block; width: 40px; height: 18px; background-image: linear-gradient(90deg,#efefef 0px,rgba(0, 0, 0, 0.1) 40px,#efefef 80px); background-color: #efefef; border: none;}
.lectlist.empty .lect_item .lecBook .bookList li .f_left > span:empty {display: inline-block; width: 140px; height: 18px; background-image: linear-gradient(90deg,#ccc 0px,rgba(0, 0, 0, 0.1) 40px,#ccc 80px); background-color: #ccc;}
.lectlist.ver2.empty li .leclistBtn a {display: inline-block; width: 80px; height: 24px; background-image: linear-gradient(90deg,#ccc 0px,rgba(0, 0, 0, 0.1) 40px,#ccc 80px); background-color: #aaa;}
.lectlist.ver2.empty .lect_item .listotal .lecMoney ul li .name:empty {display: inline-block; width: 50px; background-image: linear-gradient(90deg,#efefef 0px,rgba(0, 0, 0, 0.1) 40px,#efefef 80px); background-color: #efefef;}
.lectlist.ver2.empty .lect_item .listotal .lecMoney ul li .price:empty {display: inline-block; width: 100px; background-image: linear-gradient(90deg,#ccc 0px,rgba(0, 0, 0, 0.1) 40px,#ccc 80px); background-color: #ccc;}
.lectlist.ver2.empty .lect_item .listotal .lecMoney .cart_btn:empty {background-image: linear-gradient(90deg,#aeaeae 0px,rgba(0, 0, 0, 0.1) 40px,#aeaeae 80px); background-color: #aeaeae; animation: shine-line 2s infinite ease-out;}

@keyframes shine-line{
    0% {background-position:-100px;}
    40%, 100% {background-position:450px;}
}`;

const excCss = ``;

const js = ``;

const outJs = ``;

    return (
      <PageContent
        title={title}
        // desc="이벤트 풀페이지에서 사용하는 이벤트 기간 컴포넌트들입니다."
        // image="/images/btn.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        outJs={outJs}
        items={["강좌 목록"]}
        link="<%=dev_url_main%>/event/@template/index_temp.asp"
        onChange={onChange}
      />
    )
  }
</script>