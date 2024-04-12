<script type="text/babel">
  'use strict';
  function Aside() {
    return (
      <div className="guide-aside">
        <ul>
          <li className="big_nav sec<%If dp1=2 then%> on<%End if%>"><a href="javascript:void(0);"><i className='bx bxs-customize'></i>컴포넌트<span></span></a></li>
          <li className="small_nav_wrap sec">
            <ul className="small_nav_wrap_ul sec">
              <li className="small_nav sec<%If dp1=2 and dp2=1 then%> on<%End if%>"><a href="/items/button.asp">버튼<span></span></a></li>
              <li className="small_nav sec<%If dp1=2 and dp2=2 then%> on<%End if%>"><a href="/items/tab.asp">탭<span></span></a></li>
              <li className="small_nav sec<%If dp1=2 and dp2=3 then%> on<%End if%>"><a href="/items/popup.asp">팝업<span></span></a></li>
              <li className="small_nav sec<%If dp1=2 and dp2=4 and dp3=1 then%> on<%End if%>"><a href="/items/slide.asp">슬라이드 - Slick<span></span></a></li>
              <li className="small_nav sec<%If dp1=2 and dp2=4 and dp3=2 then%> on<%End if%>"><a href="/items/slide_swiper.asp">슬라이드 - Swiper<span></span></a></li>
              <li className="small_nav sec<%If dp1=2 and dp2=5 then%> on<%End if%>"><a href="/items/list.asp">리스트<span></span></a></li>
              <li className="small_nav sec<%If dp1=2 and dp2=6 then%> on<%End if%>"><a href="/items/table.asp">표(테이블)<span></span></a></li>
              <li className="small_nav sec<%If dp1=2 and dp2=7 then%> on<%End if%>"><a href="/items/icon.asp">아이콘<span></span></a></li>
              <li className="small_nav sec<%If dp1=2 and dp2=8 then%> on<%End if%>"><a href="/items/form.asp">폼<span></span></a></li>
              <li className="small_nav sec<%If dp1=2 and dp2=9 then%> on<%End if%>"><a href="/items/player.asp">동영상<span></span></a></li>
              <li className="small_nav sec<%If dp1=2 and dp2=10 then%> on<%End if%>"><a href="/items/chart.asp">차트<span></span></a></li>
              <li className="small_nav sec<%If dp1=2 and dp2=11 then%> on<%End if%>"><a href="/items/selectbox.asp">셀렉트박스<span></span></a></li>
              <li className="small_nav sec<%If dp1=2 and dp2=12 then%> on<%End if%>"><a href="/items/calendar.asp">달력<span></span></a></li>
              <li className="small_nav sec<%If dp1=2 and dp2=13 then%> on<%End if%>"><a href="/items/effect.asp">특수 효과<span></span></a></li>
              <li className="small_nav sec<%If dp1=2 and dp2=14 then%> on<%End if%>"><a href="/items/checkbox.asp">체크박스<span></span></a></li>
            </ul>
          </li>
          <li className="big_nav srd<%If dp1=3 then%> on<%End if%>"><a href="javascript:void(0);"><i className='bx bxs-layout'></i>페이지<span></span></a></li>
          <li className="small_nav_wrap srd">
            <ul className="small_nav_wrap_ul srd">
              <li className="small_nav srd<%If dp1=3 and dp2=1 then%> on<%End if%>"><a href="/pages/teacher.asp">선생님<span></span></a></li>
              <li className="small_nav srd<%If dp1=3 and dp2=2 then%> on<%End if%>"><a href="/pages/exam.asp">진단평가<span></span></a></li>
              <li className="small_nav srd<%If dp1=3 and dp2=3 then%> on<%End if%>"><a href="/pages/mockexam.asp">모의고사<span></span></a></li>
              <li className="small_nav srd<%If dp1=3 and dp2=4 then%> on<%End if%>"><a href="/pages/event.asp">선생님 이벤트&amp;프로모션<span></span></a></li>
              
              <li className="small_nav srd<%If dp1=3 and dp2=6 then%> on<%End if%>"><a href="/pages/fullservice.asp">풀서비스<span></span></a></li>
            </ul>
          </li>
          <li className="big_nav srd<%If dp1=4 then%> on<%End if%>" onclick="location.href='/blog.asp'"><a href="javascript:;"><i className='bx bxs-detail'></i>블로그<span></span></a></li>
        </ul>
      </div>

    )
  }
</script>