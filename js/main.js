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

document.querySelector('body').className = 'gsap';
history.scrollRestoration = "manual"; // 진입 시 스크롤 위치 초기화

$( document ).ready( function() { //헤더 텍스트 컬러
  $('.header_wrp').addClass('on');
  
});

$(window).on('load', function(){
  var hash = window.location.hash;
  if (hash) {
    $('html, body').animate({ scrollTop: $(hash).offset().top }, 250);
  } else {
    // $('html, body').animate({ scrollTop: 0 }, 250);
  }
});


// sec_top S
let secTop_tl = gsap.timeline({
  scrollTrigger: {
    trigger: '.top_msg', // CSS - height: var(--full-height);
    start: 'top top',
    end: '+=250%',
    scrub: 3,
    pin: true,
    // markers: true,
  }
});
gsap.utils.toArray('.top_msg span').forEach((span, index) => {
  const calWidth = window.innerWidth / 2 + span.offsetWidth / 2;
  const x = (index % 2) ? calWidth * 1 : calWidth * -1;
  secTop_tl.to(span, {
    color: 'transparent',
    duration: 0.1,
    // ease: 'power1'
  }, 0).to(span, {
    x,
    opacity: 0,
    ease: 'none',
  }, 0);
});
secTop_tl.to('.top_msg_wrp', {
  '--img-opacity': 0.2,
}, 0);
// sec_top E

// glass S
let glass = gsap.timeline({
  scrollTrigger: {
    trigger: '.glass',
    start: 'top top',
    end: '+=600%',
    scrub: 1,
    pin: true,
  }
});
glass
  .to('.glass', {
    y: 100,
    duration: 1,
    width: 1000,
    scale: 2
  })
  .to('.glass', {
    y:-1500,
    duration: 1,
  })
// glass E

//sec_black S
  let bk_wrp1 = gsap.timeline({
    scrollTrigger: {
      trigger: '.sec_black',
      start: 'top top',
      end: '+=200%',
      pin: true,
      scrub: 3,
      // markers: true,
      toggleClass: "active",
    }
  });
  bk_wrp1
    .to('.bk_box img', {
      margin: '-50px 0px 0px -140px',
    })
    

  let bk_wrp2 = gsap.timeline({
  scrollTrigger: {
    trigger: '.bk_wrp',
    start: 'top top',
    end: '+=400%',
    pin: true,
    scrub: 2,
    // markers: true,
  }
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
    })
  
// sec_black E

// glass2 S
let glass2 = gsap.timeline({
  scrollTrigger: {
    trigger: '.glass2',
    start: 'top top',
    end: '+=300%',
    pin: true,
    scrub: 3,
  }
});
glass2
  .to('.glass2', {
    duration: 10,
    y: -100,
    ease: "none"
  })
// glass2 E

// sec_intro S
gsap.to('.intro_wrp', { // CSS - height: calc(var(--full-height) * 6);
  scrollTrigger: {
    trigger: '.bg_wrp', // CSS - height: var(--full-height);
    scrub: 0.1,
    pin: true,
    pinSpacing: false,
    // markers: true,
    start: 'top top',
    end: '+=300%',
  }
})
let secIntro_msg_tl = gsap.timeline({
  scrollTrigger: {
    trigger: '.intro_msg', // CSS - height: calc(var(--full-height) * 2);
    scrub: 0.1,
    pin: true,
    pinSpacing: false,
    // markers: true,
    start: 'top top',
    end: '+=300%',
  }
});
secIntro_msg_tl.to('.intro_bg .bg_wrp .sample_layout', {
  opacity: 0.25,
  duration: 3,
});
gsap.set('.intro_msg .msg1', { y: -100 });
gsap.set('.intro_msg .msg2', { y: 100 });
secIntro_msg_tl
  .to('.intro_msg .msg1', {
    y: 0,
    opacity: 1,
    duration: 1,
  }, .2)
  .to('.intro_msg .msg2', {
    y: 0,
    opacity: 1,
    duration: 1,
  }, .2)
  .to('.intro_msg .msg1', {
    y: 50,
    opacity: 0,
    duration: 1,
    ease: "none"
  }, 2)
  .to('.intro_msg .msg2', {
    y: -50,
    opacity: 0,
    duration: 1,
  }, 2)
  .to('.intro_msg .msg3', {
    opacity: 1,
    duration: 2,
  }, 4)
  .to('.intro_msg .msg3', {
    delay: 1,
    opacity: 0,
    scale: 5,
    duration: 2,
  }, 6).to('.bg_wrp', {
    opacity: 0
  });
  

let setIntro_logo_tl = gsap.timeline({
  scrollTrigger: {
    trigger: '.intro_logo',
    scrub: 3,
    pin: true,
    pinSpacing: false,
    start: 'top top',
    end: '+=300%', // CSS - height: var(--full-height);
  }
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
  })


ScrollTrigger.saveStyles('.slide_wrp');
const slidePanels = gsap.utils.toArray('.slide_panel');
ScrollTrigger.matchMedia({
  "(min-width: 751px)": function() { // desktop & tablet
    const horizonScroll = gsap.to(slidePanels, {
      delay: 1,
      xPercent: -100 * (slidePanels.length - 1),
      ease: 'none',
      scrollTrigger: {
        trigger: '.slide_wrp',
        start: 'top top',
        end: () => '+=' + document.querySelector('.slide_wrp').offsetWidth + 'px',
        pin: true,
        scrub: 1,
        invalidateOnRefresh: true,
      }
    });

    slidePanels.forEach((slide, i, array) => {
      gsap.timeline({
        scrollTrigger: {
          trigger: slide,
          containerAnimation: horizonScroll,
          scrub: false,
          start: i === 0 ? "-1% 0" : "10% center",
          // end: () => (
          //   i === 3 ? "100% 100%" : "100% center"
          // ),
          end : () => "100% center",
          toggleClass: "active",
        },
      });
    });
  },
  "(max-width: 750px)": function() { // mobile
    slidePanels.forEach((slide, i, array) => {
      gsap.timeline({
        scrollTrigger: {
          trigger: slide,
          scrub: false,
          start: "5% center",
          end: "100% center",
          toggleClass: "active",
        },
      });
    });
  },
  "all": function() {

  }
});
// sec_intro E


// sec_story S
let story_tl = gsap.timeline({
  scrollTrigger: {
    trigger: '.story_wrp',
    start: 'top top',
    end: '+=600%',
    scrub: true,
    pin: true,
  }
});
story_tl
  .to('.story_wrp .story_tit', {
    color: '#eee',
    x: 100,
  })
  .to('.story_wrp .story_tit', {
    color: '#ddd',
    x: 200,
  })
  .to('.story_wrp .story_tit', {
    color: '#ccc',
    y: 100,
  })
  .to('.story_wrp .story_tit', {
    color: '#bbb',
    y: 200,
  })
  .to('.story_wrp .story_tit', {
    color: '#aaa',
    x: 100,
  })
  .to('.story_wrp .story_tit', {
    color: '#999',
    x: 0,
  })
  .to('.story_wrp .story_tit', {
    color: '#999',
    y: 100,
  })
  .to('.story_wrp .story_tit', {
    color: '#999',
    y: 0,
  })
// sec_story E

// sec_circle S
let circle_tl = gsap.timeline({
  scrollTrigger: {
    trigger: '.circle_wrp',
    start: 'top top',
    end: '+=600%',
    scrub: true,
    pin: true,
  }
});
circle_tl
  .to('.circle_wrp .circle_obj', {
    x: 300,
    y: 300,
    width: 200,
    height: 200,
    backgroundColor: '#ec2121',
    duration: 1,
  })
  .to('.circle_wrp .circle_obj', {
    x: 500,
    y: -100,
    width: 400,
    height: 400,
    backgroundColor: '#e33d3d',
    duration: 1,
  })
  .to('.circle_wrp .circle_obj', {
    x: 150,
    y: 250,
    width: 600,
    height: 600,
    backgroundColor: '#be3838',
  })
  .to('.circle_wrp .circle_obj', {
    x: -300,
    y: -200,
    width: 500,
    height: 500,
    backgroundColor: '#e33d3d',
  })
  .to('.circle_wrp .circle_obj', {
    x: -100,
    y: -100,
    width: 300,
    height: 300,
    backgroundColor: '#ec2121',
  })
  .to('.circle_wrp .circle_obj', {
    x: 0,
    y: 0,
    width: 200,
    height: 200,
    backgroundColor: 'red',
  })
// sec_circle E


//motion_wrap S
window.onmousemove = (e)=> {
  let winPercent = { x:e.clientX/window.innerWidth, y:e.clientY/window.innerHeight },
      distFromCenter = 1 - Math.abs((e.clientX - window.innerWidth/2)/window.innerWidth*2);
  
  gsap.timeline({defaults:{duration:0.5, overwrite:'auto'}})
      .to('.motion_wrap', {rotation:-3+5*winPercent.x , duration:1,
      rotationY:(i)=>i*500+50*(winPercent.y),
      rotationX:(i)=>i/5*10+10*(winPercent.x),
      })
      .to('.light_wrap',   {opacity:distFromCenter-0.5,}, 0)  
}
//motion_wrap E

