<script type="text/babel">
  'use strict';

  function BoardView({ title, onChange }) {

    const html = `<div class="post-wrap">
    <div class="post-head">
        <div class="title">길을 잃은 도전자에게</div>
        <ul class="additional">
            <li class="writer teacher-home"><a href="/teacher/home.asp?bcode=lyj4718" title="강사홈 바로가기" target="_blank">국어&nbsp;이유진 선생님</a></li>
            <li><b>등록일</b>&ensp;2024.06.18</li>
            <li><b>조회</b>&ensp;123</li>
            <li id="repli"><b>댓글</b>&ensp;2</li>
            <li class="url-copy-icon"><a href="#" onclick="urlCopy(); return false;">URL 복사</a></li>
        </ul>
    </div>
    <div class="post-view">
        <div id="t_video" class="post-video" style="cursor: pointer">
            <iframe width="1000" height="560" src="https://www.youtube.com/embed/iXEiY3ARTGo?vq=hd720&autoplay=0&rel=0" frameborder="0" allow="accelerometer; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </div>
        <br>
        <p style="text-align: left;">
            안녕하세요. 이유진입니다^^<br><br>
            오랜만에 여러분을 향해 서간체(?) 글쓰기를 하려니 무척 쑥스럽네요. <br>
            2014년 무려 10년 전, 수능 시장에서 공무원 수험 시장으로 이적한지 얼마 되지 않았을 때는 확신이 없어서 이런 글을 쓰는 것이 어려웠는데, 이제는 오히려 아는 것이 많아서 글을 쓰는 것이 어려워졌어요. <br>
            그럼에도 불구하고, 이렇게 용기를 내어서 다시 글을 쓰게 된 것은 얼마 전 설명회에서 만난 한 친구에게 해주고 싶은 말이 있어서예요. 열차 시간 때문에 상담을 마무리하지 못하고 허둥지둥 나왔는데 전화번호라도 받을 걸 오늘까지 마음이 쓰이네요. 그리고 얼마나 많은 친구들이 이 친구와 같은 심정으로 칸막이가 있는 독서실에서 눈물을 흘릴까 하는 생각이 듭니다. <br><br>
            누구나 단기 합격을 바라며 이 수험 생활을 시작합니다. 올해 공부를 열심히 해서 내년에 합격만 한다면 얼마나 많은 것이 바뀔지 상상하며 하루하루 계획을 완수하는 기쁨과 보람 속에 시간을 보낼 수가 있어요. 첫 해는 그렇게 버틸 수가 있습니다. 먹고 자는 기초적인 욕구부터 누군가를 만나고 즐거운 시간을 보내고 싶은 청춘의 욕구까지... 많은 것을 보류하면서 그래도 한 해는 거뜬하게 참을 수가 있어요. 하지만 단기에 수험 생활을 끝내지 못하게 되면서 ‘참는 것’에 대해 화가 나기 시작합니다. 참는 것이 더는 당연하게 느껴지지 않게 됩니다. 노력을 하면 보상이, 혹은 보장이 되어야 하는데 아무것도 돌아오지 않는 시간들이 쌓이면서 너무 화가 나죠. 인간이라 그건 당연한 감정입니다.
        </p>
    </div>

    <ul class="post-file attach-file-base">
        <li><button onclick="fncDown('','');">첨부파일</button></li>
    </ul>

    <ul class="post-btn">
        <li><a href="javascript:void(0);" onclick="fncBack();">목록</a></li>
    </ul>
</div>`;

    const css = ``;
    const excCss = ``;

    const js = ``;

    return (
      <PageContent
        title={title}
        desc=""
        // image="/images/tab1.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["게시판", "게시글"]}
        link="<%=url_main%>/column/column.asp"
        onChange={onChange}
      />
    )
  }
</script>