<script type="text/babel">
  'use strict';

  function Player2({ title, onChange }) {
const html = `<div class="eventVideo video_renewal with_shadow">
  <div class="video_box">
    <%
      evt_no = 3585
      vod_KBN = "" '40:맛보기, 55:OT 
      playerKBN = ""
      CHR_CD = ""
      LEC_CD = ""
      IMG_URL = img_main & "/m/2022/0831_jinsyjin03/con3_video.jpg"
      P_WIDTH = "1000"
      P_HEIGHT = "560"
      AutoPlay = "N"
    %>
    <!-- #include virtual="/Player/kollus/play/play_inc.asp"-->
  </div>
</div>`;

const css = `/* 기존 비디오 */
.eventVideo{position: relative;background: #f1f2f2;width: 670px;height: 380px;overflow: hidden;cursor: pointer;}
.eventVideo .video_box{padding-bottom: 35.295%;padding: 0;position: absolute;top: 0;left: 0;width: 100%;height: 100%;background-color: none;z-index: 2;}
.eventVideo .video_box .play_area{width: 100% !important;height: 100% !important;position: absolute;width: 100%;height: 100%;}
.eventVideo .video_box iframe{position: absolute;top:0;left:0;width:100%;height:100%;}
.eventVideo .tea_tit{position: absolute;top: 0;left: 0;margin: 95px 0 0 54px;text-align: left;font-size: 26px;font-weight: normal;z-index: 2;padding: 0;}
.eventVideo .tea_tit::before{content:'';display: block;font-size: 0;width: 88px;height: 88px;background: url(https://img.megagong.net/m/2022/0422_sobang/con_img21.png) no-repeat 0 0;vertical-align: middle;margin: 0 0 0 10px;position: absolute;bottom: 0;left: 0;margin: 0 0 -130px;}
.eventVideo .tea_tit i{display: inline-block;position: absolute;top: -35px;left: 0;width: 120px;height: 30px;background: #0088e8;color: #fff;font-size: 16px;text-align: center;line-height: 30px;font-style: normal;}
.eventVideo .tea_img,
.eventVideo .video_box .play_area > img{z-index: 1;position: absolute;top: 13px;right: 0;width: 302px;}

/* 비디오 - 리뉴얼 */
.eventVideo.video_renewal { position: relative; width: auto; height: auto; background: #000; }
.eventVideo.video_renewal .video_box { position: relative; top: unset; left: unset; width: auto; height: auto; padding-bottom: 56.2%; } 
.eventVideo.video_renewal .video_box .play_area > img { top: 0; width: 100%; } 
.eventVideo.video_renewal .video_box.v_popup{padding-bottom:0;}

/* 비디오 - 그림자 */
.eventVideo.with_shadow{ margin-bottom: 45px; overflow: visible;}
.eventVideo.with_shadow::before{position: absolute;left: 50%;bottom: -45px;transform: translate(-50%, 0);content: '';width: 100%;height: 45px;background-image: url('https://img.megagong.net/common/video_bg.png');background-repeat: no-repeat;background-position: 50% 0;background-size: contain;}

/* 비디오 - 유튜브 재생 */
.eventVideo.for_youtube { width: auto; height: auto; } 
.eventVideo.for_youtube .tea_img,
.eventVideo.for_youtube .video_box .play_area > img { top: 0; width: 100%; } 
.eventVideo.for_youtube .ytb_thumb { position: absolute; left: 0;top: 0;width: 100%; }

/* 비디오 - 리스트(2단) */
.eventVideo_list{width:100%;}
.eventVideo_list:after{content:'';display:block;clear:both;}
.eventVideo_list > li{width:520px;float:left;margin-left:40px;}
.eventVideo_list > li:first-child{margin-left:0;}
.eventVideo_list > li .eventVideo.with_shadow{margin-bottom:30px;}
.eventVideo_list > li .eventVideo.with_shadow::before{height:30px;bottom:-30px;background-image: url('https://img.megagong.net/common/video_bg_small.png');}`;

const excCss = ``;

const js = `$('.ytb_thumb').on('click', function(){
  $(this).prev('iframe').remove();
  $(this).before('<iframe width="100%" height="100%" src="https://www.youtube.com/embed/rwOeN7Yg-1I?autoplay=1" frameborder="no" scrolling="no" marginwidth="0" marginheight="0" allow="autoplay" allowfullscreen></iframe>');
  $(this).remove();
})`;

    return (
      <PageContent
        title={title}
        desc=""
        // image="/images/tab1.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["콜루스 플레이어"]}
        // link="<%=lab_main%>/l/gong/guide/guide.asp"
        onChange={onChange}
      />
    )
  }
</script>