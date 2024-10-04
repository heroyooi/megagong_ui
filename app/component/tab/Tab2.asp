<script type="text/babel">
  'use strict';

  function Tab2({ title, onChange, simple = false }) {

const html = `<ul class="tab-base type-2">
    <li class="on"><a href="javascript:void(0);">�����м�</a></li>
    <li><a href="javascript:void(0);">�����м�</a></li>
</ul>`;

const css = ``;

const js = `$('.tab-base li').on('click', function(e){
    e.preventDefault();
    $(this).addClass('on');
    $(this).siblings().removeClass('on');
});`;

    return (
      <PageContent
        title={title}
        desc="�ް����������� ����ϴ� �� ������Ʈ�Դϴ�."
        html={html}
        css={css}
        js={js}
        items={["��", "ũ��", "����"]}
        link="<%=dev_url_main%>/test/heroyooi/component.asp?id=tab"
        file="test\heroyooi\component.asp"
        designFile="\\10.1.0.100\�������������_������ �����\�����ü��񽺽�\����������(��)\@�����ΰ��̵�\@new_��.psd"
        simple={simple}
        onChange={onChange}
      />
    )
  }
</script>