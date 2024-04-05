<!-- #include virtual = "/inc/top.asp"-->
    <!-- #include virtual = "/inc/aside.asp"-->
    
    <div class="page_wrap page_blog" id="page_wrap">

        <div class="page_inner">
            <div class="page_name_wrap">
              <h3 class="page_name">JS TEST</h3>
              <h3 class="page_name_sub">�ڹٽ�ũ��Ʈ �׽�Ʈ</h3>
              <p class="page_sub_text">�ڹٽ�ũ��Ʈ �׽�Ʈ �������Դϴ�.</p>
            </div>
            <div id="js_test_container">
              <ul class="wise_list quiz_list">
                <li>
                  <dl>
                    <dt class="on">1. ������ ü���� �ľ��Ϸ��� ������ �����ұ��?</dt>
                    <dd>
                      <div class="content_wrp">
                        <ul class="question_zone">
                          <li>1) ȣ��</li>
                          <li>2) ����</li>
                          <li>3) ��׶���</li>
                          <li>4) �׽�ũť</li>
                        </ul>
                        <div class="answer_zone">
                          <div class="input_wrp">
                            <label for="a1">����</label>
                            <input class="answer_input" type="number" id="a1" />
                          </div>
                        </div>
                      </div>
                    </dd>
                  </dl>
                </li>
                <li>
                  <dl>
                    <dt class="on">2. ���� �ڵ��� ������ ü���� �ľ��� ���� �� ���� ���� ���� �����ϱ��?</dt>
                    <dd>
                      <div class="content_wrp">
<pre class="language-javascript direct"><code>const x = 'x1';
function c() {
  const y = 'y';
  console.log('c');
  function b() {
    const z = 'z';
    console.log('b');
    c();
  }
}

function a() {
  const x = 'x2';
  console.log('a');
  console.log(x);
}

a();
c();</code></pre>
                        <ul class="question_zone vertical">
                          <li>1) c �� anonymous</li>
                          <li>2) a �� anonymous</li>
                          <li>3) c �� b �� anonymous</li>
                          <li>4) b �� c �� anonymous</li>
                        </ul>
                        <div class="answer_zone">
                          <div class="input_wrp">
                            <label for="a2">����</label>
                            <input class="answer_input" type="number" id="a2" />
                          </div>
                        </div>
                      </div>
                    </dd>
                  </dl>
                </li>
                <li>
                  <dl>
                    <dt class="on">3. ���� �ڵ��� ���� ������ �׸� �� ���� ������� �ö󰡾��ϴ� �κ��� �����ϱ��?</dt>
                    <dd>
                      <div class="content_wrp">
<pre class="language-javascript direct"><code>const x = true;
const y = false;

function a() {
  let a = 4;
  y = true;
  if (x) {
    let a = 3;
    for (let i = 0; i < a; i++) {
      console.log(i);
    }
    if (!y) {
      kkk();
    }
  }
}

a();
const z = (a, b) => { return a + b };
z(3, 5);</code></pre>
                        <ul class="question_zone vertical">
                          <li>1) const x = true;</li>
                          <li>2) const y = false;</li>
                          <li>3) function a(){}</li>
                          <li>4) const z = () => {}</li>
                        </ul>
                        <div class="answer_zone">
                          <div class="input_wrp">
                            <label for="a3">����</label>
                            <input class="answer_input" type="number" id="a3" />
                          </div>
                        </div>
                      </div>
                    </dd>
                  </dl>
                </li>
                <li>
                  <dl>
                    <dt class="on">4. ���� �ڷ� ������ ȣ�� ����, ������ ü�� ���� �߿� ���� ���� �����ϱ��?</dt>
                    <dd>
                      <div class="content_wrp">
                        <ul class="question_zone vertical">
                          <li>1) ť�� �ؿ��� ���� �ϳ��� ���̰�, ������ ���� �ϳ��� ����������. LIFO(Last In First Out), FILO(First In Last Out)</li>
                          <li>2) ������ ���� ���� ���� ���� ������. FIFO(First In First Out)</li>
                          <li>3) ȣ�� ������ ����Ÿ� ���ؼ� �ܼ��ǿ��� Ȯ���� �� ����.</li>
                          <li>4) ������ ü���� ���ؼ� �Լ����� � ���� ������ �����ϰ� �Ұ��������� �Ǵ��� �� �ִ�.</li>
                        </ul>
                        <div class="answer_zone">
                          <div class="input_wrp">
                            <label for="a4">����</label>
                            <input class="answer_input" type="number" id="a4" />
                          </div>
                        </div>
                      </div>
                    </dd>
                  </dl>
                </li>
                <li>
                  <dl>
                    <dt class="on">5. ���� �ڵ忡�� this�� �����ϱ��?</dt>
                    <dd>
                      <div class="content_wrp">
<pre class="language-javascript direct"><code>const obj = {
  name: 'megagong',
  sayName: () => {
    console.log(this);
  }
}
obj.sayName();</code></pre>
                        <ul class="question_zone vertical">
                          <li>1) obj</li>
                          <li>2) undefined</li>
                          <li>3) window</li><!-- ����, ȭ��ǥ �Լ����� this�� window�� �ȴ�. -->
                          <li>4) megagong</li>
                        </ul>
                        <div class="answer_zone">
                          <div class="input_wrp">
                            <label for="a5">����</label>
                            <input class="answer_input" type="number" id="a5" />
                          </div>
                        </div>
                      </div>
                    </dd>
                  </dl>
                </li>
                <li>
                  <dl>
                    <dt class="on">6. ���� �ڵ忡�� this�� �����ϱ��?</dt>
                    <dd>
                      <div class="content_wrp">
<pre class="language-javascript direct"><code>const obj = {
  name: 'megagong',
  sayName() {
    console.log(this);
  }
}
obj.sayName();</code></pre>
                        <ul class="question_zone vertical">
                          <li>1) obj</li><!-- ����, �Լ��� ȣ���� �� �Լ� �տ� ��ü�� ������, this�� �� ��ü�� �ȴ�. -->
                          <li>2) undefined</li>
                          <li>3) window</li>
                          <li>4) megagong</li>
                        </ul>
                        <div class="answer_zone">
                          <div class="input_wrp">
                            <label for="a6">����</label>
                            <input class="answer_input" type="number" id="a6" />
                          </div>
                        </div>
                      </div>
                    </dd>
                  </dl>
                </li>
                <li>
                  <dl>
                    <dt class="on">7. ���� Promise�� async/await ���� �߿� Ʋ�� ���� �����ϱ��?</dt>
                    <dd>
                      <div class="content_wrp">
                        <ul class="question_zone vertical">
                          <li>1) Promise�� ������ ������ �Ǿ����� ����� ���� ��ȯ���� �ʴ� ��ü�̴�.</li>
                          <li>2) async �Լ� ���� ���� await ����� �����ϴ�.</li>
                          <li>3) Promise ����� �� Promise ���� �Լ� �κ��� �񵿱��̴�.</li><!-- ����, Promise ����� �� Promise ���� �Լ� �κ��� �����̴�. -->
                          <li>4) async/await�� �ڵ带 �����ʿ��� �������� �ؼ��ؾ��Ѵ�.</li>
                        </ul>
                        <div class="answer_zone">
                          <div class="input_wrp">
                            <label for="a7">����</label>
                            <input class="answer_input" type="number" id="a7" />
                          </div>
                        </div>
                      </div>
                    </dd>
                  </dl>
                </li>

                <li>
                  <dl>
                    <dt class="on">8. ���� �ڵ��� ���� ������?</dt>
                    <dd>
                      <div class="content_wrp">
<pre class="language-javascript direct"><code>setImmediate(() => {
  console.log('a');
}, 0);
setTimeout(() => {
  console.log('b');
}, 1000);
setTimeout(() => {
  console.log('c');
}, 2000);
Promise.resolve().then(() => {
  console.log('p');
});</code></pre>
                        <ul class="question_zone vertical">
                          <li>1) a, b, c, p</li>
                          <li>2) a, p, b, c</li>
                          <li>3) p, a, b, c</li><!-- ����, ����ũ�� �׽�ũť�� ���ι̽� p�� ���� ���� -->
                          <li>4) b, c, a, p</li>
                        </ul>
                        <div class="answer_zone">
                          <div class="input_wrp">
                            <label for="a8">����</label>
                            <input class="answer_input" type="number" id="a8" />
                          </div>
                        </div>
                      </div>
                    </dd>
                  </dl>
                </li>

                <li>
                  <dl>
                    <dt class="on">9. ���� �ڵ�� �Խñ��� ����ϴ� ����Ͻ� ������ �����Դϴ�. �� ���� �߿� ������ �Ǵ� await�� �����ϱ��?</dt>
                    <dd>
                      <div class="content_wrp">
<pre class="language-javascript direct"><code>async function createPost() {
  const post = await db.getPost(); // �Խù� ��ȸ
  if (post) {
    res.status(403).send('�̹� �Խñ��� �����մϴ�.');
  } else {
    await db.createPost(); // �Խñ� �ۼ�

    const p1 = await db.userIncrementPostCount(); // ����ڿ� �Խñ� ī��Ʈ 1 �ø�
    const p2 = db.createNoti(); // ���ο� �Խñ� �˸� ���
    await Promise.allSettled([p1, p2]);
  }
}</code></pre>
                        <ul class="question_zone vertical">
                          <li>1) await db.getPost();</li>
                          <li>2) await db.createPost();</li>
                          <li>3) await db.userIncrementPostCount();</li><!-- ����, ����� �Խñ� ī��Ʈ 1�� �ø��鼭 ���ο� �Խñ� �˸� ����ϴ� ����� ���ÿ� ����Ǿ ������� -->
                          <li>4) await Promise.allSettled([p1, p2]);</li>
                        </ul>
                        <div class="answer_zone">
                          <div class="input_wrp">
                            <label for="a9">����</label>
                            <input class="answer_input" type="number" id="a9" />
                          </div>
                        </div>
                      </div>
                    </dd>
                  </dl>
                </li>

                <li>
                  <dl>
                    <dt class="on">10. ���� �ڵ� �м����� ���� ���� ���� �����ϱ��?</dt>
                    <dd>
                      <div class="content_wrp">
<pre class="language-javascript direct"><code>for (var i = 0; i < 5; i++) {
  setTimeout(() => {
    console.log(i);
  }, i * 1000);
}</code></pre>
                        <ul class="question_zone vertical">
                          <li>1) ���� ����� 5, 5, 5, 5, 5�� ���´�.</li>
                          <li>2) var i�� ��� �������� �ƴ� �Լ� �������� ���󰡱� ������ i�� �������� 1���̴�.</li>
                          <li>3) ���� �ڵ�� ���� var�� let���� �ٲ��ָ� ���� ����� 0, 1, 2, 3, 4�� ������ ������ i�� ��� �������� ���󰡰� �ǹǷ� i�� �������� 5���� �Ǳ� �����̴�.
<pre class="language-javascript direct"><code>for (let i = 0; i < 5; i++) {
  setTimeout(() => {
    console.log(i);
  }, i * 1000);
}</code></pre>
                          </li>
                          <li>4) ���� �ڵ�� ���� for�� �ۿ� ���ο� �Լ�(��ý����Լ�)�� �ϳ� ���� ���ο� Ŭ���� ���踦 ���� �ذ��� ���� �ִ�.
<pre class="language-javascript direct"><code>(function(){
  for (var i = 0; i < 5; i++) {
    setTimeout(() => {
      console.log(i);
    }, i * 1000);
  }
})();</code></pre>         
                          </li><!-- ����, for�� ���� �ƴ϶� �ȿ� ���ο� �Լ��� ���������Ѵ�. -->
                        </ul>
                        <div class="answer_zone">
                          <div class="input_wrp">
                            <label for="a10">����</label>
                            <input class="answer_input" type="number" id="a10" />
                          </div>
                        </div>
                      </div>
                    </dd>
                  </dl>
                </li>
              </ul>
              <div class="js_test_btns">
                <a href="#">���� ����</a>
              </div>
            </div><!-- #js_test_container -->

            <div id="js_result_container">
              <div id="js_result_top">
                <span class="stId"></span>
                <dl>
                  <dt><strong class="stName"></strong>�� ���� ���</dt>
                  <dd>
                    <ul>
                      <li class="js_r_score">
                        <span class="label">��������</span>
                        <span class="result"><em class="stScore">0</em> / 100��</span>
                      </li>
                      <li class="js_r_time">
                        <span class="label">����ð�</span>
                        <span class="result"><em class="stTime"></em></span>
                      </li>
                    </ul>
                  </dd>
                </dl>
                <div class="js_test_btns">
                  <a href="#">������</a>
                </div>
              </div>

              <div id="js_result_commentary">
                <h2>��� �ؼ�</h2>
                <ul class="wise_list quiz_list">
                  <li>
                    <dl>
                      <dt class="on">1. ������ ü���� �ľ��Ϸ��� ������ �����ұ��?</dt>
                      <dd>
                        <div class="content_wrp">
                          <ul class="question_zone">
                            <li>1) ȣ��</li>
                            <li>2) ����</li>
                            <li>3) ��׶���</li>
                            <li>4) �׽�ũť</li>
                          </ul>
                          <div class="answer_zone">
                            <div class="input_wrp num_info">
                              <ul>
                                <li>�� : <em class="correct_num"></em></li>
                                <li>���� ���� : <em class="my_select_num"></em></li>
                              </ul>
                              <div class="info_wrp"><span class="label">�ؼ� :</span>������ ü���� �ľ��Ϸ��� <strong>����</strong>�� �����Ѵ�. ȣ��δ� �ƹ��� ������ ����.<br />�׸��� �ѹ� �ڵ��� ������ �������� �ٲ��� �ʴµ� �̸� ������ ������� �ϸ� <strong>������ ������</strong>��� �Ѵ�.</div>
                            </div>
                          </div>
                        </div>
                      </dd>
                    </dl>
                  </li>
                  <li>
                    <dl>
                      <dt class="on">2. ���� �ڵ��� ������ ü���� �ľ��� ���� �� ���� ���� ���� �����ϱ��?</dt>
                      <dd>
                        <div class="content_wrp">
<pre class="language-javascript direct"><code>const x = 'x1';
function c() {
  const y = 'y';
  console.log('c');
  function b() {
    const z = 'z';
    console.log('b');
    c();
  }
}

function a() {
  const x = 'x2';
  console.log('a');
  console.log(x);
}

a();
c();</code></pre>
                          <ul class="question_zone vertical">
                            <li>1) c �� anonymous</li>
                            <li>2) a �� anonymous</li>
                            <li>3) c �� b �� anonymous</li>
                            <li>4) b �� c �� anonymous</li>
                          </ul>
                          <div class="answer_zone">
                            <div class="input_wrp num_info">
                              <ul>
                                <li>�� : <em class="correct_num"></em></li>
                                <li>���� ���� : <em class="my_select_num"></em></li>
                              </ul>
                              <div class="info_wrp"><span class="label">�ؼ� :</span>������ ü���� �ľ��Ϸ��� <strong>����</strong>�� �����Ѵ�. ȣ��δ� �ƹ��� ������ ����. <br />�ڵ�� ������ �Ʒ���, ���ʿ��� ���������� ����Ǹ� ȣ�� ������ ����Ÿ� ���ؼ� �ܼ��ǿ����� Ȯ���� �� �ִ�. <br />���� ��ü�� <strong>anonymous �Լ��� ȣ��</strong>�Ǿ��ٰ� �����ϸ� �м��ϱ� ���ϴ�</div>
                            </div>
                          </div>
                        </div>
                      </dd>
                    </dl>
                  </li>
                  <li>
                    <dl>
                      <dt class="on">3. ���� �ڵ��� ���� ������ �׸� �� ���� ������� �ö󰡾��ϴ� �κ��� �����ϱ��?</dt>
                      <dd>
                        <div class="content_wrp">
<pre class="language-javascript direct"><code>const x = true;
const y = false;

function a() {
  let a = 4;
  y = true;
  if (x) {
    let a = 3;
    for (let i = 0; i < a; i++) {
      console.log(i);
    }
    if (!y) {
      kkk();
    }
  }
}

a();
const z = (a, b) => { return a + b };
z(3, 5);</code></pre>
                          <ul class="question_zone vertical">
                            <li>1) const x = true;</li>
                            <li>2) const y = false;</li>
                            <li>3) function a(){}</li>
                            <li>4) const z = () => {}</li>
                          </ul>
                          <div class="answer_zone">
                            <div class="input_wrp num_info">
                              <ul>
                                <li>�� : <em class="correct_num"></em></li>
                                <li>���� ���� : <em class="my_select_num"></em></li>
                              </ul>
                              <div class="info_wrp"><span class="label">�ؼ� :</span>anonymous ���� ������ �ľ��� �� �ڱ� ���������� <strong>ȣ�̽���</strong>�� �Ǵ� �κ��� �ִ��� ���� ���캸�ƾ� �Ѵ�. <br />a�Լ��� ȣ�̽��� �Ǳ� ������ ���� ������ �׸� �� ������� �ö󰡾��Ѵ�.</div>
                            </div>
                          </div>
                        </div>
                      </dd>
                    </dl>
                  </li>
                  <li>
                    <dl>
                      <dt class="on">4. ���� �ڷ� ������ ȣ�� ����, ������ ü�� ���� �߿� ���� ���� �����ϱ��?</dt>
                      <dd>
                        <div class="content_wrp">
                          <ul class="question_zone vertical">
                            <li>1) ť�� �ؿ��� ���� �ϳ��� ���̰�, ������ ���� �ϳ��� ����������. LIFO(Last In First Out), FILO(First In Last Out)</li>
                            <li>2) ������ ���� ���� ���� ���� ������. FIFO(First In First Out)</li>
                            <li>3) ȣ�� ������ ����Ÿ� ���ؼ� �ܼ��ǿ��� Ȯ���� �� ����.</li>
                            <li>4) ������ ü���� ���ؼ� �Լ����� � ���� ������ �����ϰ� �Ұ��������� �Ǵ��� �� �ִ�.</li>
                          </ul>
                          <div class="answer_zone">
                            <div class="input_wrp num_info">
                              <ul>
                                <li>�� : <em class="correct_num"></em></li>
                                <li>���� ���� : <em class="my_select_num"></em></li>
                              </ul>
                              <div class="info_wrp"><span class="label">�ؼ� :</span>������ �ؿ��� ���� �ϳ��� ���̰�, ������ ���� �ϳ��� ����������. LIFO(Last In First Out), FILO(First In Last Out) <br />ť�� ���� ���� ���� ���� ������. FIFO(First In First Out)</div>
                            </div>
                          </div>
                        </div>
                      </dd>
                    </dl>
                  </li>
                  <li>
                    <dl>
                      <dt class="on">5. ���� �ڵ忡�� this�� �����ϱ��?</dt>
                      <dd>
                        <div class="content_wrp">
<pre class="language-javascript direct"><code>const obj = {
  name: 'megagong',
  sayName: () => {
    console.log(this);
  }
}
obj.sayName();</code></pre>
                          <ul class="question_zone vertical">
                            <li>1) obj</li>
                            <li>2) undefined</li>
                            <li>3) window</li>
                            <li>4) megagong</li>
                          </ul>
                          <div class="answer_zone">
                            <div class="input_wrp num_info">
                              <ul>
                                <li>�� : <em class="correct_num"></em></li>
                                <li>���� ���� : <em class="my_select_num"></em></li>
                              </ul>
                              <div class="info_wrp"><span class="label">�ؼ� :</span>ȭ��ǥ �Լ����� this�� window�� �ȴ�.</div>
                            </div>
                          </div>
                        </div>
                      </dd>
                    </dl>
                  </li>
                  <li>
                    <dl>
                      <dt class="on">6. ���� �ڵ忡�� this�� �����ϱ��?</dt>
                      <dd>
                        <div class="content_wrp">
<pre class="language-javascript direct"><code>const obj = {
  name: 'megagong',
  sayName() {
    console.log(this);
  }
}
obj.sayName();</code></pre>
                          <ul class="question_zone vertical">
                            <li>1) obj</li>
                            <li>2) undefined</li>
                            <li>3) window</li>
                            <li>4) megagong</li>
                          </ul>
                          <div class="answer_zone">
                            <div class="input_wrp num_info">
                              <ul>
                                <li>�� : <em class="correct_num"></em></li>
                                <li>���� ���� : <em class="my_select_num"></em></li>
                              </ul>
                              <div class="info_wrp"><span class="label">�ؼ� :</span>�Լ��� ȣ���� �� �Լ� �տ� ��ü�� ������, this�� �� ��ü�� �ȴ�.</div>
                            </div>
                          </div>
                        </div>
                      </dd>
                    </dl>
                  </li>
                  <li>
                    <dl>
                      <dt class="on">7. ���� Promise�� async/await ���� �߿� Ʋ�� ���� �����ϱ��?</dt>
                      <dd>
                        <div class="content_wrp">
                          <ul class="question_zone vertical">
                            <li>1) Promise�� ������ ������ �Ǿ����� ����� ���� ��ȯ���� �ʴ� ��ü�̴�.</li>
                            <li>2) async �Լ� ���� ���� await ����� �����ϴ�.</li>
                            <li>3) Promise ����� �� Promise ���� �Լ� �κ��� �񵿱��̴�.</li><!-- ����, Promise ����� �� Promise ���� �Լ� �κ��� �����̴�. -->
                            <li>4) async/await�� �ڵ带 �����ʿ��� �������� �ؼ��ؾ��Ѵ�.</li>
                          </ul>
                          <div class="answer_zone">
                            <div class="input_wrp num_info">
                              <ul>
                                <li>�� : <em class="correct_num"></em></li>
                                <li>���� ���� : <em class="my_select_num"></em></li>
                              </ul>
                              <div class="info_wrp"><span class="label">�ؼ� :</span>Promise ����� �� Promise ���� �Լ� �κ��� �����̴�.</div>
                            </div>
                          </div>
                        </div>
                      </dd>
                    </dl>
                  </li>

                  <li>
                    <dl>
                      <dt class="on">8. ���� �ڵ��� ���� ������?</dt>
                      <dd>
                        <div class="content_wrp">
<pre class="language-javascript direct"><code>setImmediate(() => {
  console.log('a');
}, 0);
setTimeout(() => {
  console.log('b');
}, 1000);
setTimeout(() => {
  console.log('c');
}, 2000);
Promise.resolve().then(() => {
  console.log('p');
});</code></pre>
                          <ul class="question_zone vertical">
                            <li>1) a, b, c, p</li>
                            <li>2) a, p, b, c</li>
                            <li>3) p, a, b, c</li>
                            <li>4) b, c, a, p</li>
                          </ul>
                          <div class="answer_zone">
                            <div class="input_wrp num_info">
                              <ul>
                                <li>�� : <em class="correct_num"></em></li>
                                <li>���� ���� : <em class="my_select_num"></em></li>
                              </ul>
                              <div class="info_wrp"><span class="label">�ؼ� :</span>���� �񵿱� �ڵ���� JS �������� ��׶���� ���µ�, promise, process.nextTick�� ����ũ�� �׽�ũť�� �������� ��ũ�� �׽�ũ ť�� ����. ����ũ�� �׽�ũť�� ���ι̽� p�� ���� ����ǰ� ���� ��ũ�� �׽�ũ ť�� ������ �ڵ���� ����ȴ�.</div>
                            </div>
                          </div>
                        </div>
                      </dd>
                    </dl>
                  </li>

                  <li>
                    <dl>
                      <dt class="on">9. ���� �ڵ�� �Խñ��� ����ϴ� ����Ͻ� ������ �����Դϴ�. �� ���� �߿� ������ �Ǵ� await�� �����ϱ��?</dt>
                      <dd>
                        <div class="content_wrp">
<pre class="language-javascript direct"><code>async function createPost() {
  const post = await db.getPost(); // �Խù� ��ȸ
  if (post) {
    res.status(403).send('�̹� �Խñ��� �����մϴ�.');
  } else {
    await db.createPost(); // �Խñ� �ۼ�

    const p1 = await db.userIncrementPostCount(); // ����ڿ� �Խñ� ī��Ʈ 1 �ø�
    const p2 = db.createNoti(); // ���ο� �Խñ� �˸� ���
    await Promise.allSettled([p1, p2]);
  }
}</code></pre>
                          <ul class="question_zone vertical">
                            <li>1) await db.getPost();</li>
                            <li>2) await db.createPost();</li>
                            <li>3) await db.userIncrementPostCount();</li>
                            <li>4) await Promise.allSettled([p1, p2]);</li>
                          </ul>
                          <div class="answer_zone">
                            <div class="input_wrp num_info">
                              <ul>
                                <li>�� : <em class="correct_num"></em></li>
                                <li>���� ���� : <em class="my_select_num"></em></li>
                              </ul>
                              <div class="info_wrp"><span class="label">�ؼ� :</span>����� �Խñ� ī��Ʈ 1�� �ø��鼭 ���ο� �Խñ� �˸� ����ϴ� ����� ���ÿ� ����Ǿ �������.</div>
                            </div>
                          </div>
                        </div>
                      </dd>
                    </dl>
                  </li>

                  <li>
                    <dl>
                      <dt class="on">10. ���� �ڵ� �м����� ���� ���� ���� �����ϱ��?</dt>
                      <dd>
                        <div class="content_wrp">
<pre class="language-javascript direct"><code>for (var i = 0; i < 5; i++) {
  setTimeout(() => {
    console.log(i);
  }, i * 1000);
}</code></pre>
                          <ul class="question_zone vertical">
                            <li>1) ���� ����� 5, 5, 5, 5, 5�� ���´�.</li>
                            <li>2) var i�� ��� �������� �ƴ� �Լ� �������� ���󰡱� ������ i�� �������� 1���̴�.</li>
                            <li>3) ���� �ڵ�� ���� var�� let���� �ٲ��ָ� ���� ����� 0, 1, 2, 3, 4�� ������ ������ i�� ��� �������� ���󰡰� �ǹǷ� i�� �������� 5���� �Ǳ� �����̴�.
<pre class="language-javascript direct"><code>for (let i = 0; i < 5; i++) {
  setTimeout(() => {
    console.log(i);
  }, i * 1000);
}</code></pre>
                            </li>
                            <li>4) ���� �ڵ�� ���� for�� �ۿ� ���ο� �Լ�(��ý����Լ�)�� �ϳ� ���� ���ο� Ŭ���� ���踦 ���� �ذ��� ���� �ִ�.
<pre class="language-javascript direct"><code>(function(){
  for (var i = 0; i < 5; i++) {
    setTimeout(() => {
      console.log(i);
    }, i * 1000);
  }
})();</code></pre>         
                            </li><!-- ����, for�� ���� �ƴ϶� �ȿ� ���ο� �Լ��� ���������Ѵ�. -->
                          </ul>
                          <div class="answer_zone">
                            <div class="input_wrp num_info">
                              <ul>
                                <li>�� : <em class="correct_num"></em></li>
                                <li>���� ���� : <em class="my_select_num"></em></li>
                              </ul>
                              <div class="info_wrp"><span class="label">�ؼ� :</span>������ �Ǵ� ��Ȳ�� () => {console.log(i)} �Լ��� Ŭ���� ���踦 �����ϴ� ���� var i = 0�̾���. �� �� ������ ������ ���Ͽ� ���ϴ� ���� ������ �ʾҴ� ���̴�. <br />�׷��� ���ο� �Լ�(��ý����Լ�)�� �ϳ� ���� ���ο� Ŭ���� ���踦 ���� �ذ��� �� �ִ�. �̶� ���ο� �Լ��� for�� �ȿ� ������ ���� ����� �־�� �Ѵ�.
<pre class="language-javascript direct"><code>for (var i = 0; i < 5; i++) { 
  (function(j){
    setTimeout(() => {
      console.log(j);
    }, i * 1000); 
  })(i);
}</code></pre>
�̷��� for���� ��ý����Լ��� �����Ƿ� ���Ͽ��� function(j){} �Լ��� var i = 0 �ܺ� ������ Ŭ���� ���踦 �����Ѵ�.<br />
�� () => { console.log(j); } �Լ��� (j) �ܺ� ������ Ŭ���� ���踦 �����Ѵ�.
                              </div>
                            </div>
                          </div>
                        </div>
                      </dd>
                    </dl>
                  </li>
                </ul>
              </div>
            </div><!-- #js_result_container -->

            <div id="js_admin_container">
              <h2>�ۺ����� ���� �̷�</h2>
              <ul class="result_list"></ul>
            </div><!-- #js_admin_container -->

            <!-- #include virtual = "/inc/tweet_popup_all.asp"-->
            <!-- #include virtual = "/inc/ball.asp"-->
            <!-- #include virtual = "/inc/footer.asp"-->
        </div> <!--//page_inner -->
    
    </div>


    <div class="ank"></div>

    <link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/megagong_common_lab.css">
    <style>
    .page_wrap {background: linear-gradient(227deg, rgb(155 155 155) -31%, rgb(70 70 70) 68%);}
    :not(.page_text_wrap) a:hover {color: #ffffff;}
    .write_form {height: inherit;}
    .btnSave_wrap { text-align: center;margin-top: 2%;}

    .co-loading{background:rgba(0, 0, 0, 0.85) !important;}
    #js_test_container, #js_result_container, #js_admin_container{max-width: 640px;}
    #js_test_container{padding-bottom:150px;display:none;}
    .wise_list.quiz_list{margin-top:0;border-top:0;}
    .wise_list.quiz_list > li{margin-top:20px;padding:15px;background-color:#fff;border-radius:15px;}
    .wise_list.quiz_list > li:first-child{margin-top:0;}
    .wise_list.quiz_list > li > dl > dd{display:block;color:#000;padding:0;}
    .wise_list.quiz_list > li > dl > dt{cursor:default;}
    .wise_list.quiz_list > li > dl > dt:after{display:none;}
    .wise_list.quiz_list > li .btn-copy{display:none;}

    .question_zone{font-size:0;padding:20px;}
    .question_zone li{font-size:14px;cursor:pointer;}
    .question_zone li.my_select{color:red;font-weight:700;text-decoration:line-through;}
    .question_zone li.my_select:after{content:' (X)';font-size:10px;}
    .question_zone li.correct{color:#7180ef;}
    .question_zone li.correct:after{content:' (O)';font-size:10px;}
    .question_zone li.my_select.correct{text-decoration:none;}
    .question_zone li.my_select.correct:after{content:' (O)';}
    .question_zone:not(.vertical) li{display:inline-block;margin-left:20px;}
    .question_zone:not(.vertical) li:first-child{margin-left:0;}
    .question_zone.vertical li{margin-top:10px;}
    .question_zone.vertical li:first-child{margin-top:0;}
    .question_zone li pre[class*=language-]{font-size:12px;background-color:#444;overflow:auto;}

    .answer_zone{padding:10px 20px;border-top:1px dashed #ddd;background:#efefef;}
    .answer_zone .input_wrp{position: relative;padding-left:35px;}
    .answer_zone label{position: absolute;left:0;top:0;}
    .answer_zone input{width:100%;border:1px solid #ddd;padding:2px 5px;max-width:70px;}

    #js_result_container{display:none;}
    #js_result_container .stId{display:none;}
    #js_result_container #js_result_top{background: #fff;color: #000;padding: 30px;text-align:center;}
    #js_result_container > dl {font-size: 16px;text-align: center;}
    .js_r_time {    color: #d3d3d3; font-size: 13px;}
    .face {display: block;    width: 110px;margin:auto;}
    .js_r_score .label {background: #7181ef;color: #fff;display: inline-block;border-radius: 50px; padding: 2px 19px; margin-top: 20px; }
    .js_r_score .result {display: block; margin-bottom: 15px; }
    .js_r_score .result .stScore{color:#7181ef;font-weight:900;font-family:'Montserrat';font-size:22px;}
    .stName {color: #7180ef;font-weight:900;}
    .ank {display:none;}
    #js_result_container .js_test_btns{display:none;}
    #js_result_commentary{margin-top:30px;background-color: #333;padding:20px;}
    #js_result_commentary h2{background: #7181ef;color: #fff;display: inline-block;border-radius: 50px; padding: 2px 19px;margin-bottom:10px;}
    #js_result_commentary .answer_zone .input_wrp{padding-left:0;}
    #js_result_commentary .answer_zone .input_wrp li{display:inline-block;margin-left:5px;font-size:12px;}
    #js_result_commentary .answer_zone .input_wrp li:first-child{margin-left:0;}
    #js_result_commentary .answer_zone .input_wrp.num_info ul li.success,
    #js_result_commentary .answer_zone .input_wrp.num_info ul li.fail{font-weight:700;font-size:14px;}
    #js_result_commentary .answer_zone .input_wrp.num_info ul li.success{color:#7180ef;}
    #js_result_commentary .answer_zone .input_wrp.num_info ul li.fail{color:red;}
    #js_result_commentary .answer_zone .info_wrp{padding-left:30px;position:relative;font-size:12px;line-height:1.4;margin-top:10px;}
    #js_result_commentary .answer_zone .info_wrp .label{display:inline-block;color:#000;position:absolute;left:0;top:0;font-weight:700;}
    #js_result_commentary .answer_zone .info_wrp strong{color:#7180ef;}
    #js_result_commentary .wise_list li .answer_zone .input_wrp li:nth-child(1){color:#7180ef;}
    #js_result_commentary .wise_list li.success .answer_zone .input_wrp li:nth-child(2){color:#7180ef;}
    #js_result_commentary .wise_list li.fail .answer_zone .input_wrp li:nth-child(2){color:red;text-decoration:line-through;}
    #js_result_commentary .question_zone li{cursor:default;}

    #js_admin_container{display:none;background: #fff;color: #000;padding: 30px;margin-top: 30px;}

    #js_admin_container h2 {background: #7181ef;color: #fff;display: inline-block;border-radius: 50px; padding: 2px 19px; margin-bottom: 20px; }
    .result_list li {background: #dee2ff;border-radius: 5px; padding: 5px 10px;margin-bottom: 10px;    display: flex;/*justify-content: space-around;*/flex-wrap:wrap;}
    .result_list li span { display: block;width: 33.33%; text-align:left; color: #333b71;}
    .result_list li span:nth-child(4){width:100%;}

    @media screen and (max-width: 1200px) {
      #js_test_container, #js_result_container, #js_admin_container{max-width: 100%;}
    }
    </style>
    <script>
    // ���� ����
    $('#js_test_container .question_zone li').on('click', function(){
      $(this).closest('.content_wrp').find('.answer_zone').find('.answer_input').val($(this).index() + 1);
    });
    var validEmpty = (selector) => {
      return $(selector).val().trim().length === 0
    }
    var validNum = (num) => {
      return +num === 1 || +num === 2 || +num === 3 || +num === 4
    }
    
    $('#js_test_container .js_test_btns a').on('click', async (e) => {
      e.preventDefault();
      if (validEmpty('#a1') || !validNum($('#a1').val())) {
        $('#a1').focus();
        return validEmpty('#a1') ? toastr.error('1�� ������ �Է����ּ���.') : toastr.error('1�� ����, 1~4�� �߿� ����ּ���.');
      }
      if (validEmpty('#a2') || !validNum($('#a2').val())) {
        $('#a2').focus();
        return validEmpty('#a2') ? toastr.error('2�� ������ �Է����ּ���.') : toastr.error('2�� ����, 1~4�� �߿� ����ּ���.');
      }
      if (validEmpty('#a3') || !validNum($('#a3').val())) {
        $('#a3').focus();
        return validEmpty('#a3') ? toastr.error('3�� ������ �Է����ּ���.') : toastr.error('3�� ����, 1~4�� �߿� ����ּ���.');
      }
      if (validEmpty('#a4') || !validNum($('#a4').val())) {
        $('#a4').focus();
        return validEmpty('#a4') ? toastr.error('4�� ������ �Է����ּ���.') : toastr.error('4�� ����, 1~4�� �߿� ����ּ���.');
      }
      if (validEmpty('#a5') || !validNum($('#a5').val())) {
        $('#a5').focus();
        return validEmpty('#a5') ? toastr.error('5�� ������ �Է����ּ���.') : toastr.error('5�� ����, 1~4�� �߿� ����ּ���.');
      }
      if (validEmpty('#a6') || !validNum($('#a6').val())) {
        $('#a6').focus();
        return validEmpty('#a6') ? toastr.error('6�� ������ �Է����ּ���.') : toastr.error('6�� ����, 1~4�� �߿� ����ּ���.');
      }
      if (validEmpty('#a7') || !validNum($('#a7').val())) {
        $('#a7').focus();
        return validEmpty('#a7') ? toastr.error('7�� ������ �Է����ּ���.') : toastr.error('7�� ����, 1~4�� �߿� ����ּ���.');
      }
      if (validEmpty('#a8') || !validNum($('#a8').val())) {
        $('#a8').focus();
        return validEmpty('#a8') ? toastr.error('8�� ������ �Է����ּ���.') : toastr.error('8�� ����, 1~4�� �߿� ����ּ���.');
      }
      if (validEmpty('#a9') || !validNum($('#a9').val())) {
        $('#a9').focus();
        return validEmpty('#a9') ? toastr.error('9�� ������ �Է����ּ���.') : toastr.error('9�� ����, 1~4�� �߿� ����ּ���.');
      }
      if (validEmpty('#a10') || !validNum($('#a10').val())) {
        $('#a10').focus();
        return validEmpty('#a10') ? toastr.error('10�� ������ �Է����ּ���.') : toastr.error('10�� ����, 1~4�� �߿� ����ּ���.');
      }

      const answerArr = [];
      $('.answer_zone input.answer_input').each(function(){
        answerArr.push(Number($(this).val()));
      });

      await dbService.collection("jsTest").add({
        createdAt: Date.now(),
        studentNm: USER_NAME,
        studentId: USER_ID,
        answer: answerArr,
        status: true,
      });

      // toastr.success('������ �����Ͽ����ϴ�.');
      window.location.reload();
    });
    
    $('#js_result_container .js_test_btns a').on('click', async (e) => {
      e.preventDefault();
      const retry = confirm('������ �����ø� �Ͻðڽ��ϱ�?')
      if (retry) {
        const id = $('#js_result_container .stId').text();
        await dbService.doc(`jsTest/${id}`).delete();

        // toastr.success('���� �����͸� �������ϴ�. ���������ּ��� :)');
        window.location.reload();
      }
    });
    </script>

<!-- #include virtual = "/inc/bottom.asp"-->