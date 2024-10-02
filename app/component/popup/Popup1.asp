<script type="text/babel">
  'use strict';

  function Popup1({ title, onChange }) {

const html = `<div id="mcg_fixbn" class="mcg_fixbn">
  <a href="javascript:;" onclick="mainHide('#mcg_fixbn')" class="close"><img src="<%=img_main%>/common/btn_close_right_bottom_bnr.png" alt="�ݱ�"></a>

  <div class="mcg_fixbn commonSlider">
      <% if cdate(lo_now_date) >= cdate("2024-10-01") and cdate(lo_now_date) < cdate("2024-10-12") then %>
      <div class="item">
          <a href="/help/notice/view.asp?idx=5203" class="bnr-link" title="10/12(��) ������ 7�� �հݿ��� Ǯ����" ></a>
          <div class="img_wrap">
              <img src="<%=img_main%>/m/2024/0926_full/main_bnr.png" alt="10/12(��) ������ 7�� �հݿ��� Ǯ����">
              <span class="badge"><img src="<%=img_main%>/m/2024/0926_full/main_bnr_mark.png" alt="10/12(��) ������ 7�� �հݿ��� Ǯ����"></span>
          </div>
      </div>
      <% end if %>

      <% if cdate(lo_now_date) >= cdate("2024-09-12") and cdate(lo_now_date) < cdate("2024-10-01") then %>
      <div class="item">
          <a href="/s/gong/event/2024/09120108/index.asp#eventWrap" class="bnr-link" title="�̼� �ް������� �հ� �ް��ļ���" ></a>
          <div class="img_wrap">
              <img src="<%=img_main%>/m/2024/0912_megapas/main_bnr.png" alt="�̼� �ް������� �հ� �ް��ļ���">
              <% if cdate(lo_now_date) < cdate("2024-09-24") then %>
              <span class="badge"><img src="<%=img_main%>/m/2024/0912_megapas/main_bnr_mark.png" alt="�̼� �ް������� �հ� �ް��ļ���"></span>
              <% end if %>
          </div>
      </div>
      <% end if %>

      <% if cdate(lo_now_date) >= cdate("2024-09-13") and cdate(lo_now_date) < cdate("2024-10-11") then %>
      <div class="item">
          <a href="/s/gong/event/2024/09130112/index.asp#eventWrap" class="bnr-link" title="�߸԰�, ���ڰ�, ��������! MEGA ç����" ></a>
          <div class="img_wrap">
              <img src="<%=img_main%>/m/2024/0913_boomup/bn_fix.png" alt="�߸԰�, ���ڰ�, ��������! MEGA ç����">
              <span class="badge"><img src="<%=img_main%>/m/2024/0913_boomup/bn_badge.png" alt="���� ����"></span>
          </div>
      </div>
      <% end if %>

      <!-- �߼� Ư�� live S -->
      <% if cdate(lo_now_date) >= cdate("2024-09-02") and cdate(lo_now_date) < cdate("2024-09-18 22:00") then %>
      
          <!-- ���� ������ -->
          <% if cdate(lo_now_date) >= cdate("2024-09-14 09:00") and cdate(lo_now_date) < cdate("2024-09-14 10:00") then %>
          <div class="item">
              <a href="https://youtube.com/live/TtmgL8FJMSg?feature=share" class="bnr-link" target="_blank"></a>
              <div class="img_wrap"><img src="<%=img_main%>/m/2024/0902_thanklive/tealive1.png" alt="���� ������ �߼� Ư�� 9/14�� 10:00~13:00 ������ ���ϴ� ��"></div>
          </div>
          
          <% elseif cdate(lo_now_date) >= cdate("2024-09-14 10:00") and cdate(lo_now_date) < cdate("2024-09-14 13:00") then %>
          <div class="gradient_wrap item">
              <a href="https://youtube.com/live/TtmgL8FJMSg?feature=share" class="bnr-link" target="_blank"></a>
              <div class="gradient_item">
              </div>
              <img src="<%=img_main%>/m/2024/0902_thanklive/tealive1_on2.png" alt="���� ������ ����! 10�ú��� 1�ñ��� ���� ������ �߼�Ư�� ������ ���ϴ� ���� ����˴ϴ�.">
          </div>


          <!-- ���� ������ -->
          <% elseif cdate(lo_now_date) >= cdate("2024-09-14 13:00") and cdate(lo_now_date) < cdate("2024-09-14 14:00") then %>
          <div class="item">
              <a href="https://youtube.com/live/7JluwRCtBp0?feature=share" class="bnr-link" target="_blank"></a>
              <div class="img_wrap"><img src="<%=img_main%>/m/2024/0902_thanklive/tealive2.png" alt="���� ������ �߼� Ư�� 9/14�� 14:00~17:00 ��ġ �ڻ� Ư��"></div>
          </div>
          <% elseif cdate(lo_now_date) >= cdate("2024-09-14 14:00") and cdate(lo_now_date) <= cdate("2024-09-14 17:00") then %>
          <div class="gradient_wrap item">
              <a href="https://youtube.com/live/7JluwRCtBp0?feature=share" class="bnr-link" target="_blank"></a>
              <div class="gradient_item">
              </div>
              <img src="<%=img_main%>/m/2024/0902_thanklive/tealive2_on2.png" alt="���� ������ ����! 2�ú��� 5�ñ��� ���� ������ �߼�Ư�� ��ġ �ڻ� Ư���� ����˴ϴ�.">
          </div>


          <!-- �ѱ��� ��ȯ part.1-->
          <% elseif cdate(lo_now_date) >= cdate("2024-09-15 09:00") and cdate(lo_now_date) < cdate("2024-09-15 10:00") then %>
          <div class="item">
              <a href="https://youtube.com/live/dQSXDG6wqPo?feature=share" class="bnr-link" target="_blank"></a>
              <div class="img_wrap"><img src="<%=img_main%>/m/2024/0902_thanklive/tealive3.png" alt="�ѱ��� ��ȯ �߼� Ư�� 9/15�� 10:00 ~ 13:00 ����� part.1"></div>
          </div>
          <% elseif cdate(lo_now_date) >= cdate("2024-09-15 10:00") and cdate(lo_now_date) <= cdate("2024-09-15 13:00") then %>
          <div class="gradient_wrap item">
              <a href="https://youtube.com/live/dQSXDG6wqPo?feature=share" class="bnr-link" target="_blank"></a>
              <div class="gradient_item">
              </div>
              <img src="<%=img_main%>/m/2024/0902_thanklive/tealive3_on2.png" alt="�ѱ��� ��ȯ ����! 10�ú��� 1�ñ��� �ѱ��� ��ȯ �߼� Ư�� ����� part1�� ����˴ϴ�.">
          </div>



          <!-- ���� �ڳ��� -->
          <% elseif cdate(lo_now_date) >= cdate("2024-09-16 13:00") and cdate(lo_now_date) < cdate("2024-09-16 14:00") then %>
          <div class="item">
              <a href="https://youtube.com/live/uVW_SxaBYq8?feature=share" class="bnr-link" target="_blank"></a>
              <div class="img_wrap"><img src="<%=img_main%>/m/2024/0902_thanklive/tealive4.png" alt="���� �ڳ��� �߼� Ư�� 9/16�� 14:00~17:00 2025 ���� �ʼ� ���� 100&100"></div>
          </div>
          <% elseif cdate(lo_now_date) >= cdate("2024-09-16 14:00") and cdate(lo_now_date) <= cdate("2024-09-16 17:00") then %>
          <div class="gradient_wrap item">
              <a href="https://youtube.com/live/uVW_SxaBYq8?feature=share" class="bnr-link" target="_blank"></a>
              <div class="gradient_item">
              </div>
              <img src="<%=img_main%>/m/2024/0902_thanklive/tealive4_on2.png" alt="���� �ڳ��� ����! 2�ú��� 5�ñ��� ���� �ڳ��� �߼�Ư�� 2025 ���� �ʼ� ���� 100&100�� ����˴ϴ�.">
          </div>


          <!-- ���� ������ -->
          <% elseif cdate(lo_now_date) >= cdate("2024-09-18 09:00") and cdate(lo_now_date) < cdate("2024-09-18 10:00") then %>
          <div class="item">
              <a href="https://youtube.com/live/Uf74vA6Jdrs?feature=share" class="bnr-link" target="_blank"></a>
              <div class="img_wrap"><img src="<%=img_main%>/m/2024/0902_thanklive/tealive5.png" alt="���� ������ �߼� Ư�� 9/18�� 10:00~13:00 2025 ������ ��,���� ���� Ư��"></div>
          </div>
          <% elseif cdate(lo_now_date) >= cdate("2024-09-18 10:00") and cdate(lo_now_date) < cdate("2024-09-18 13:00") then %>
          <div class="gradient_wrap item">
              <a href="https://youtube.com/live/Uf74vA6Jdrs?feature=share" class="bnr-link" target="_blank"></a>
              <div class="gradient_item">
              </div>
              <img src="<%=img_main%>/m/2024/0902_thanklive/tealive5_on2.png" alt="���� ������ ����! 10�ú��� 1�ñ��� ���� ������ �߼�Ư�� 2025 ������ ��,���� ���� Ư���� ����˴ϴ�.">
          </div>


          <!-- ���� ������ -->
          <% elseif cdate(lo_now_date) >= cdate("2024-09-18 13:00") and cdate(lo_now_date) < cdate("2024-09-18 14:00") then %>
          <div class="item">
              <a href="https://youtube.com/live/JzcVZebjvKQ?feature=share" class="bnr-link" target="_blank"></a>
              <div class="img_wrap"><img src="<%=img_main%>/m/2024/0902_thanklive/tealive6.png" alt="���� ������ �߼� Ư�� 9/18�� 14:00~18:00 �ʼ� ���� ���� ox"></div>
          </div>
          <% elseif cdate(lo_now_date) >= cdate("2024-09-18 14:00") and cdate(lo_now_date) < cdate("2024-09-18 18:00") then %>
          <div class="gradient_wrap item">
              <a href="https://youtube.com/live/JzcVZebjvKQ?feature=share" class="bnr-link" target="_blank"></a>
              <div class="gradient_item">
              </div>
              <img src="<%=img_main%>/m/2024/0902_thanklive/tealive6_on2.png" alt="���� ������ ����! 2�ú��� 6�ñ��� ���� ������ �߼� Ư�� �ʼ� ���� ���� ox �� ����˴ϴ�.">
          </div>



          <!-- �ѱ��� ��ȯ part.2 -->
          <% elseif cdate(lo_now_date) >= cdate("2024-09-18 18:00") and cdate(lo_now_date) < cdate("2024-09-18 19:00") then %>
          <div class="item">
              <a href="https://youtube.com/live/U0_aQhw-s6U?feature=share" class="bnr-link" target="_blank"></a>
              <div class="img_wrap"><img src="<%=img_main%>/m/2024/0902_thanklive/tealive7.png" alt="�ѱ��� ��ȯ 9/18�� 19:00~22:00 ����� part.2"></div>
          </div>
          <% elseif cdate(lo_now_date) >= cdate("2024-09-18 19:00") and cdate(lo_now_date) <= cdate("2024-09-18 22:00") then %>
          <div class="gradient_wrap item">
              <a href="https://youtube.com/live/U0_aQhw-s6U?feature=share" class="bnr-link" target="_blank"></a>
              <div class="gradient_item">
              </div>
              <img src="<%=img_main%>/m/2024/0902_thanklive/tealive7_on2.png" alt="�ѱ��� ��ȯ ����! 7�ú��� 10�ñ��� �ѱ��� ��ȯ �߼�Ư�� ����� part.2 �� ����˴ϴ�.">
          </div>


          <!-- ����Ʈ -->
          <% else %>
          <% if cdate(lo_now_date) < cdate("2024-09-13") then %>
          <div class="item">
              <a href="/help/notice/view.asp?idx=5164" class="bnr-link"></a>
              <div class="img_wrap"><img src="<%=img_main%>/m/2024/0902_thanklive/live.png" alt="�߼� Ư�� �߼� ���޿��� ��ƴ���� �� ä���ִ� mega live �߼� Ư��"></div>
          </div>
          <% end if %>
          <% end if %>

      <% end if %>
      <!-- �߼� Ư�� live E -->



      <% if cdate(lo_now_date) >= cdate("2024-08-30") and cdate(lo_now_date) < cdate("2024-09-11 15:40") then %>
      <div class="item">
          <a href="/s/gong/event/2024/08300100/index.asp#eventWrap" class="bnr-link" target="_blank"></a>
          <div class="img_wrap">
              <% if cdate(lo_now_date) >= cdate("2024-09-06") then %>
              <img src="<%=img_main%>/m/2024/0830_megalive/240906/bnr_fix.png" alt="9/11�� 14:00 ~ 15:40 �ް������ �հ� live on ������� ��߰�">
              <% else %>
              <img src="<%=img_main%>/m/2024/0830_megalive/bnr_fix.png" alt="9/11�� 14:00 ~ 15:40 �ް������ �հ� live on ������� ��߰�">
              <% end if %>
          </div>
      </div>
      <% end if %>
      <% if cdate(lo_now_date) >= cdate("2024-08-21") and cdate(lo_now_date) < cdate("2024-08-30") then %>
      <div class="item">
          <a href="/s/gong/event/2024/08210092/index.asp#eventWrap" class="bnr-link"></a>
          <div class="img_wrap"><img src="<%=img_main%>/m/2024/0821_superweek/bnr_fix_1.png" alt="8/22(��) ~ 8/29(��), 2025 �ް������� ������ �⺻�̷� 1���ϰ� ��ü ����!"></div>
      </div>
      <% if cdate(lo_now_date) < cdate("2024-08-23") then %>
      <div class="item">
          <a href="/s/gong/event/2024/08210092/index.asp#event1" class="bnr-link"></a>
          <div class="img_wrap"><img src="<%=img_main%>/m/2024/0821_superweek/bnr_fix_2.png" alt="8/22(��) ��, �Ϸ�! 2025 ��/��/�� �⺻�̷� �����"></div>
      </div>
      <% end if %>
      <div class="item">
          <a href="/s/gong/event/2024/08210092/index.asp#event2" class="bnr-link"></a>
          <div class="img_wrap"><img src="<%=img_main%>/m/2024/0821_superweek/bnr_fix_3.png" alt="8/23(��) ~ 8/29(��), ���ĺ� ���� ���Ѿ��� ���� �ִ� 3���� ����"></div>
      </div>
      <% end if %>
      <% If cdate(lo_now_date) < cdate("2024-08-16") then%>
      <% If cdate(lo_now_date) >= cdate("2024-08-08 20:00") then%>
      <div class="item">
          <a href="/help/notice/view.asp?idx=5116" title="LIVE �λ�����ó, ����/���� 2�� ���ù��� ��޺м�! ���� ������ ���� ������ �м��� �ؼ� LIVE���� Ȯ���ϼ���." class="bnr-link"></a>
          <div class="img_wrap"><img src="<%=img_main%>/m/2024/0808_bnr/bnr_fix.png" alt="LIVE �λ�����ó, ����/���� 2�� ���ù��� ��޺м�! ���� ������ ���� ������ �м��� �ؼ� LIVE���� Ȯ���ϼ���."></div>
      </div>
      <% else %>
      <div class="item">
          <a href="/help/notice/view.asp?idx=5116" title="LIVE �λ�����ó, ����/���� 2�� ���ù��� ��޺м�! ���� ������ ���� ������ �м��� �ؼ� LIVE���� Ȯ���ϼ���." class="bnr-link"></a>
          <div class="img_wrap"><img src="<%=img_main%>/m/2024/0806_bnr/bnr_fix.png" alt="LIVE �λ�����ó, ����/���� 2�� ���ù��� ��޺м�! ���� ������ ���� ������ �м��� �ؼ� LIVE���� Ȯ���ϼ���."></div>
      </div>
      <% end if %>
      <% end if %>

      <% If cdate(lo_now_date) >= cdate("2024-07-05") and cdate(lo_now_date) < cdate("2024-08-01") then%>
      <div class="item">
          <a href="/s/gong/event/2024/07050078/index.asp#eventWrap" title="2024 ������ 9�� ������ ���� �հ��� �����մϴ�" class="bnr-link"></a>
          <div class="img_wrap"><img src="<%=img_main%>/m/2024/0705_gongpass/mainbnr_1.png" alt="2024 ������ 9�� ������ ���� �հ��� �����մϴ�"></div>
      </div>
      <% end if %>

      <% If cdate(lo_now_date) >= cdate("2024-06-23") and cdate(lo_now_date) < cdate("2024-06-29") then%>
      <div class="item">
          <a href="/s/gong/event/2024/06180057/index.asp#eventWrap" title="2025 ������&����� �հ����� LIVE" class="bnr-link"></a>
          <div class="img_wrap"><img src="<%=img_main%>/m/2024/0618_solution/mainbnr_1.png" alt="2025 ������&����� �հ����� LIVE"></div>
      </div>
      <% end if %>

      <% If cdate(lo_now_date) >= cdate("2024-06-13") and cdate(lo_now_date) < cdate("2024-06-23") then%>
      <div class="item">
          <a href="/s/gong/event/2023/06010066/index.asp#eventWrap" title="6/22(��) ���� 7�� 2024 ������ 9�� �հ� ���� TALK" class="bnr-link"></a>
          <%If cdate(lo_now_date) < cdate("2024-06-21 16:00") then%>
          <div class="img_wrap"><img src="<%=img_main%>/m/2024/0613_live/main_bnr1.png" alt="[�˸� ��û ��] 6/22(��) ���� 7�� 2024 ������ 9�� �հ� ���� TALK"></div>
          <%elseIf cdate(lo_now_date) < cdate("2024-06-22 19:00") then%>
          <div class="img_wrap"><img src="<%=img_main%>/m/2024/0613_live/main_bnr2.png" alt="[LIVE] 6/22(��) ���� 7�� 2024 ������ 9�� �հ� ���� TALK"></div>
          <% else %>
          <div class="img_wrap"><img src="<%=img_main%>/m/2024/0613_live/main_bnr3.png" alt="[��û ���� EVENT] 6/22(��) ���� 7�� 2024 ������ 9�� �հ� ���� TALK"></div>
          <% end if %>
      </div>
      <% end if %>

      <% if 1=2 then %>
      <div class="item">
          <a href="/s/gong/event/2024/02230019/index.asp#mContainer" title="2024 ������ ��� ������ ��� Ư�� �ѱ��� ��ȯ�� [�۵�Ư�� ��Ʈ��]" class="bnr-link"></a>
          <div class="img_wrap"><img src="<%=img_main%>/m/2024/0524_vision0911/main_bnr.png" alt="2024 ������ ��� ������ ��� Ư�� �ѱ��� ��ȯ�� [�۵�Ư�� ��Ʈ��]"></div>
      </div>
      <% end if %>

      <% if 1=2 then %>
      <div class="item">
          <a href="/s/gong/event/2024/01030004/index.asp#eventWrap" title="���� ����� �����̴�. ����� �ǿ��� �ɷ��̴�." class="bnr-link" target="_blank"></a>
          <div class="img_wrap"><img src="<%=img_main%>/m/2024/0531_lang/main_bnr.png" alt="���� ����� �����̴�. ����� �ǿ��� �ɷ��̴�."></div>
      </div>
      <% end if %>

      <% If cdate(lo_now_date) < cdate("2024-06-23") then%>
      <div class="item">
          <a href="/s/gong/event/2024/06180057/index.asp#eventWrap" title="2025 ������&����� �հ����� LIVE" class="bnr-link"></a>
          <div class="img_wrap"><img src="<%=img_main%>/m/2024/0618_solution/mainbnr_1.png" alt="2025 ������&����� �հ����� LIVE"></div>
      </div>
      <% end if %>

      <% if cdate(lo_now_date) >= cdate("2024-05-02") and cdate(lo_now_date) < cdate("2024-06-01") then %>
      <div class="item">
          <a href="/s/gong/event/2021/05270068/index.asp#eventWrap" title="2024 ������ 9�� �ʱ� �հ� �����ϰ� �����е�, ��ǰ�� �޾ư�����!" class="bnr-link" target="_blank"></a>
          <div class="img_wrap"><img src="<%=img_main%>/m/2024/0502_gongpass/bnr_gong1.png" alt="2024 ������ 9�� �ʱ� �հ� �����ϰ� �����е�, ��ǰ�� �޾ư�����!"></div>
      </div>
      <% end if %>

      <% if cdate(lo_now_date) >= cdate("2024-03-26") and cdate(lo_now_date) < cdate("2024-04-01 20:30") then %>
      <div class="item">
          <a href="https://www.youtube.com/watch?v=8OiVrxFaOhI" title="[�����] ������, ������ ��� �غ��� ���ΰ�" class="bnr-link" target="_blank"></a>
          <div class="img_wrap"><img src="<%=img_main%>/m/2024/0326_gong/main_bnr1.png" alt="[�����] ������, ������ ��� �غ��� ���ΰ� LIVE�� 4/1(��) ���� 7�� ����!"></div>
      </div>
      <% end if %>
      <% if 1=2 then %>
      <div class="item">
          <a href="/s/gong/event/2024/03260029/index.asp#eventWrap" title="2025 ������ ���� ���� �����򰡿� �հ� ������" class="bnr-link" target="_blank"></a>
          <div class="img_wrap"><img src="<%=img_main%>/m/2024/0326_gong/main_bnr2.png" alt="2025 ������ ���� ���� �����򰡿� �հ� ������ LIVE�� 4/1(��) ���� 9�� ����!"></div>
      </div>
      <% end if %>
      <% if cdate(lo_now_date) < cdate("2024-04-06 17:00") then %>
      <div class="item">
          <a href="/s/gong/event/2023/12180141/index.asp" title="2025 �������� ��ȯ �Ϻ� �ݿ� �Թ� Ư�� ����� ���̽�" class="bnr-link" target="_blank"></a>
          <div class="img_wrap"><img src="<%=img_main%>/m/2024/0326_gong/main_bnr3.png" alt="2025 �������� ��ȯ �Ϻ� �ݿ� �Թ� Ư�� ����� ���̽� LIVE�� 4/6(��) ���� 2�� ����!"></div>
      </div>
      <% end if %>
      <% if cdate(lo_now_date) >= cdate("2024-04-22 09:00") and cdate(lo_now_date) < cdate("2024-04-27 17:00") then %>
      <div class="item">
          <a href="/s/gong/event/2023/12180141/index.asp" title="2025 �������� ��ȯ �Ϻ� �ݿ� �Թ� Ư�� ���� ���̽�" class="bnr-link" target="_blank"></a>
          <div class="img_wrap"><img src="<%=img_main%>/m/2024/0326_gong/main_bnr4.png" alt="2025 �������� ��ȯ �Ϻ� �ݿ� �Թ� Ư�� ���� ���̽� LIVE�� 4/27(��) ���� 2�� ����!"></div>
      </div>
      <% end if %>
      <% if cdate(lo_now_date) < cdate("2024-04-08 16:00") then %>
      <div class="item">
          <a href="/teacher/notice/notice.asp?bcode=gilltoraebi&idx=8022&mv=content_area" title="��ȭ�ϴ� 2025 ����, �ݵ�� �հ��ϴ� ���� �н� ����" class="bnr-link" target="_blank"></a>
          <div class="img_wrap"><img src="<%=img_main%>/m/2024/0326_gong/main_bnr5.png" alt="��ȭ�ϴ� 2025 ����, �ݵ�� �հ��ϴ� ���� �н� ���� LIVE�� 4/8(��) ���� 2�� ����!"></div>
      </div>
      <% end if %>
      <% if cdate(lo_now_date) >= cdate("2024-03-26") and cdate(lo_now_date) < cdate("2024-03-27 18:00") then %>
      <div class="item">
          <a href="/teacher/notice/notice.asp?bcode=wjsgywls1&idx=7961&mv=content_area" title="2024���������� �������� �� �ֿ����� Ư��" class="bnr-link" target="_blank"></a>
          <div class="img_wrap"><img src="<%=img_main%>/m/2024/0326_gong/main_bnr6.png" alt="2024���������� �������� �� �ֿ����� Ư�� LIVE�� 3/27(��) ���� 2�� ����!"></div>
      </div>
      <% end if %>
      <% if cdate(lo_now_date) >= cdate("2024-03-27 18:00") and cdate(lo_now_date) < cdate("2024-04-03 18:00") then %>
      <div class="item">
          <a href="/teacher/notice/notice.asp?bcode=wjsgywls1&idx=8026&mv=content_area" title="2024 ��ȸ�� ��� ��� �ֽ��Ƿ�Ư��" class="bnr-link" target="_blank"></a>
          <div class="img_wrap"><img src="<%=img_main%>/m/2024/0326_gong/main_bnr7.png" alt="2024 ��ȸ�� ��� ��� �ֽ��Ƿ�Ư�� LIVE�� 4/3(��) ���� 2�� ����!"></div>
      </div>
      <% end if %>

      <% if cdate(lo_now_date) < cdate("2024-04-18 20:00") then %>
      <div class="item">
          <a href="/s/gong/event/2024/02230019/index.asp" title="���� ����� �ѱ��� ��ȯ�� ������ LIVE Ư��" class="bnr-link" target="_blank"></a>
          <div class="img_wrap"><img src="<%=img_main%>/m/2024/0416_vision0911/main_bnr1.png" alt="���� ����� �ѱ��� ��ȯ�� ������ LIVE Ư��"></div>
      </div>
      <% end if %>
      <% if cdate(lo_now_date) >= cdate("2024-04-18 20:00") and cdate(lo_now_date) < cdate("2024-04-24") then %>
      <div class="item">
          <a href="/s/gong/event/2024/02230019/index.asp" title="���� ����� �ѱ��� ��ȯ�� ������ LIVE Ư��" class="bnr-link" target="_blank"></a>
          <div class="img_wrap"><img src="<%=img_main%>/m/2024/0416_vision0911/main_bnr2.png" alt="���� ����� �ѱ��� ��ȯ�� ������ LIVE Ư��"></div>
      </div>
      <% end if %>


      <% if 1=2 then '���̺� ��� ��ü ��û %>
      <!-- ������ LIVE ��� S -->
      <div class="item">
          <div class="img_wrap"><img src="<%=img_main%>/m/2024/0207_popup/main_pop.png" alt="�ް��������� ���õ� LIVE��"></div>
          <div class="live_roll">
              <% if cdate(lo_now_date) >= cdate("2024-03-30") and cdate(lo_now_date) < cdate("2024-04-01 11:30") then %>
              <div class="live_item">
                  <a href="/s/gong/event/2024/03260029/index.asp#eventWrap" title="�ް��������� ���õ� LIVE ��" target="_blank">
                      <p class="tag"><span>4/1(��) <br/> ���� 09:00</span></p>
                      <strong>[����] ������T <br/> 2025 ���� ������</strong>
                  </a>
              </div>  
              <% end if %>
              <% if cdate(lo_now_date) < cdate("2024-03-22") then %>
              <div class="live_item">
                  <a href="/s/gong/event/2023/11210133/index.asp?go=event" title="�ް��������� ���õ� LIVE ��" target="_blank">
                      <p class="tag"><span>���� ��ħ</span></p>
                      <strong>[����] ������T <br/> ���ϱ⵵ ���ǰ��</strong>
                  </a>
              </div>  
              <% end if %>
              <% if cdate(lo_now_date) >= cdate("2024-03-11") and cdate(lo_now_date) < cdate("2024-03-14 13:00") then %>
              <div class="live_item">
                  <a href="/teacher/notice/notice.asp?bcode=sooyeon&idx=7927" title="�ް��������� ���õ� LIVE ��" target="_blank">
                      <p class="tag"><span>3/13(��)~14(��) <br>���� 08:50</span></p>
                      <strong>[����] �ڼ���T <br>������ ��� Ư��</strong>
                  </a>
              </div>  
              <% end if %>
              <% if cdate(lo_now_date) < cdate("2024-03-09") then %>
              <div class="live_item">
                  <a href="/s/gong/event/2023/12210044/index.asp#live_event" title="�ް��������� ���õ� LIVE ��" target="_blank">
                      <p class="tag"><span>���� ����</span></p>
                      <strong>[����] ����ȭT <br/> �³��� ����</strong>
                  </a>
              </div>  
              <% end if %>
              <% if cdate(lo_now_date) >= cdate("2024-03-15") and cdate(lo_now_date) < cdate("2024-03-15 18:00") then %>
              <div class="live_item">
                  <a href="/teacher/notice/notice.asp?bcode=wjsgywls1&idx=7954&mv=content_area" title="�ް��������� ���õ� LIVE ��" target="_blank">
                      <p class="tag"><span>3/15(��) <br>14:00</span></p>
                      <strong>[������] ��ȿ��T <br>������ ���� Ư��</strong>
                  </a>
              </div>  
              <% end if %>
              <% if cdate(lo_now_date) >= cdate("2024-03-27") and cdate(lo_now_date) < cdate("2024-03-27 18:00") then %>
              <div class="live_item">
                  <a href="/teacher/notice/notice.asp?bcode=wjsgywls1&idx=7961&mv=content_area" title="�ް��������� ���õ� LIVE ��" target="_blank">
                      <p class="tag"><span>3/27(��) <br>14:00</span></p>
                      <strong>[����������] ��ȿ��T <br>��������&�ֿ�����</strong>
                  </a>
              </div>  
              <% end if %>
          </div>
      </div>
      <!-- ������ LIVE ��� E -->
      <% end if %>

  </div>
</div>`;

const css = `.mcg_fixbn{position: fixed;top:auto; bottom: 24px; right: .5%;width: 240px;z-index: 3;}
.mcg_fixbn a {display:block;}
.mcg_fixbn a.bnr-link {position: absolute; width: 100%; height: 180px; bottom: 0; left: 0;}
.mcg_fixbn .close{z-index: 6;position: absolute; right: 5px; bottom: 190px; width: 17px; height: 17px; padding: 3px; display: none;}
.mcg_fixbn .slick-arrow {display:none!important;}
.mcg_fixbn .item {position: relative;text-align: center; height: 204px;}
.mcg_fixbn .item .img_wrap {display: flex; height: 100%; align-items: flex-end;}
.mcg_fixbn .item img {display:inline-block;}
.mcg_fixbn .slick-dots {position:absolute;bottom:-15px;left:0;right:0;font-size:0;text-align: center;}
.mcg_fixbn .slick-dots li {display:inline-block;margin:0 2px;}
.mcg_fixbn .slick-dots button {width:8px;height: 8px;border-radius: 50%;background:#000;opacity:.5;font-size:0;}
.mcg_fixbn .slick-dots .slick-active button {opacity: 1;}

/* ������ LIVE ��� S */
.live_roll{position: relative;width: 225px;height: 40px;position: absolute;bottom: 30px; left: 9px;}
.live_roll .live_item  {width: 225px;height: 40px;}
.live_roll .live_item a {display: flex;align-items: center;background: #000;border-radius: 100px;width: 100%;height: 40px;}
.live_roll .live_item a .tag{line-height: 1.4; background: #b70000;color: #fff;border-radius: 100px;width: 85px; height: 100%;font-size: 12px; display: flex; justify-content: center; align-items: center;}
.live_roll .live_item a strong{font-size: 12px; color: #ffee9e; padding: 0 5px; margin: 0 auto; line-height: 1.4;}
.live_roll .slick-dots .slick-active button {background-color: #fff;}
.live_roll .slick-dots button {background-color: #f8a3a9;}
/* ������ LIVE ��� E */

@media (max-width: 1200px){
    .mcg_fixbn{display: none;}
}`;

const excCss = `.mcg_fixbn{position:relative;bottom:initial;height:209px;}
.mcg_fixbn .close{box-sizing:content-box;right:0;}
`;

const js = `$(function() {
    var mcgBn_lng = $('#mcg_fixbn .item').length;
    if (!mcgBn_lng) {
        $('#mcg_fixbn .close').css({display:"none", opacity:0})
    } else {
        $('#mcg_fixbn .close').css({display:"block", opacity:1})
    }
});

// ��� �ϳ��� ������ �Ⱥ��� ó�� 
$('.mcg_fixbn.commonSlider').not('.slick-initialized').slick({
    infinite: true,
    autoplaySpeed: 3000,
    autoplay:true,
    arrows: false,
    draggable: true,
    dots: true,
});`;

    return (
      <PageContent
        title={title}
        desc="�ް����͵� ������ ���� Ȩ���������� ���Ǵ� �˾� ����Դϴ�.<br />��ġ�� ���λ���Ʈ ���� �ϴܺο� �δ� ���� ��Ģ���� �ϸ鼭 �ϴ��� �� ��� ���ٴ� ������ �����ϵ��� �۾��ؾ� �մϴ�."
        image="/images/popup1.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["�˾����","�����ϴ�","�����̵�"]}
        link="<%=url_main%>/megagong.asp"
        file="m_inc\main_content_gong.asp"
        onChange={onChange}
      />
    )
  }
</script>