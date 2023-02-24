document.addEventListener('DOMContentLoaded', function(){
  const header = document.querySelector('.header_wrp');
  const sectionDark = document.querySelectorAll(".sec_dark");
  const headerLogo = document.querySelector('.header_wrp h1');

  let timer = false;
  let scrollChk = 0;

  const scrollHeader = () => {
    let actPoint = [];

    if (timer) return;

    timer = setTimeout(() => {
      let ws = window.pageYOffset;

      if (sectionDark[0]) {
        sectionDark.forEach(dark => {
          let offsetTop = Math.floor(dark.getBoundingClientRect().top) + ws;
          actPoint.push([offsetTop, offsetTop + dark.offsetHeight]);
        });

        actPoint.forEach(point =>{
          if (ws >= point[0] && ws < point[1]) scrollChk = 1;
        });

        if (scrollChk) {
          header.classList.add("on");
        } else {
          header.classList.remove("on");
        }

        scrollChk = 0;
      }

      timer = null;
    }, 300);
  }

  const fadeTrigger = document.querySelectorAll("[data-fade]");
  const fadeAnimation = () =>{
    fadeTrigger.forEach(trigger => {
      let fadeType = trigger.dataset.fade;
      ScrollTrigger.create({
        trigger,
        start: "top 80%",
        onEnter: (self) =>{
          self.trigger.classList.add(fadeType);
        },
      });
    });
  }

  // custom mouse
  const customPointer = () => {
    let cursor = document.querySelector(".custom_pointer");

    if ( cursor != null ) {
      let linkItem = document.querySelectorAll("a, button");
      let cursorHalf = cursor.clientWidth / 2;

      document.addEventListener("mousemove", (e) => {
        gsap.to(cursor, { duration: 0.75, left: e.clientX - cursorHalf, top: e.clientY - cursorHalf, ease: "power2.out" });
      });

      if (linkItem[0]) {
        linkItem.forEach(elem => {
          elem.addEventListener("mouseenter", () => {
            cursor.classList.add("active");
          });
          elem.addEventListener("mouseleave", () => {
            cursor.classList.remove("active");
          });
        });
      }
    }
  }

  window.addEventListener('scroll', scrollHeader);
  document.querySelector('.header_wrp h1').addEventListener('click', (e) => {
    e.preventDefault();
    window.scrollTo({ top: 0, behavior: "smooth" });
  });

  gsap.utils.toArray("section").forEach(function(bg){
    var color = bg.getAttribute('data-color');

    ScrollTrigger.create({
      trigger: bg,
      start: "top center",
      end: "bottom center",
      scrub: true,
      scroller: 'body',
      // markers: true,
      onEnter:() => gsap.to('#wrap', { // 스크롤 위치가 '시작'을 지나 앞으로 이동할 때
        backgroundColor: color,
        duration: 1
      }),
      onEnterBack:() => gsap.to('#wrap', { // 스크롤 위치가 '끝'을 지나 뒤로 이동할 때
        backgroundColor: color,
        duration: 1
      }),
      // onLeaveBack:() => gsap.to('#wrap',{ // 스크롤 위치가 '시작'을 지나 뒤로 이동할 때
      //     backgroundColor: '#000',
      //     duration: 1
      // }),
    });
  });

  customPointer();
  fadeAnimation();
});