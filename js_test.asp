<!-- #include virtual = "/inc/top.asp"-->
    <!-- #include virtual = "/inc/aside.asp"-->
    
    <div class="page_wrap page_blog" id="page_wrap">

        <div class="page_inner">
            <div class="page_name_wrap">
              <h3 class="page_name">JS TEST</h3>
              <h3 class="page_name_sub">자바스크립트 테스트</h3>
              <p class="page_sub_text">자바스크립트 테스트 페이지입니다.</p>
            </div>
            <div id="js_test_container">
              <ul class="wise_list quiz_list">
                <li>
                  <dl>
                    <dt class="on">1. 스코프 체인을 파악하려면 무엇을 봐야할까요?</dt>
                    <dd>
                      <div class="content_wrp">
                        <ul class="question_zone">
                          <li>1) 호출</li>
                          <li>2) 선언</li>
                          <li>3) 백그라운드</li>
                          <li>4) 테스크큐</li>
                        </ul>
                        <div class="answer_zone">
                          <div class="input_wrp">
                            <label for="a1">정답</label>
                            <input class="answer_input" type="number" id="a1" />
                          </div>
                        </div>
                      </div>
                    </dd>
                  </dl>
                </li>
                <li>
                  <dl>
                    <dt class="on">2. 다음 코드의 스코프 체인을 파악한 내용 중 옳지 않은 것은 무엇일까요?</dt>
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
                          <li>1) c → anonymous</li>
                          <li>2) a → anonymous</li>
                          <li>3) c → b → anonymous</li>
                          <li>4) b → c → anonymous</li>
                        </ul>
                        <div class="answer_zone">
                          <div class="input_wrp">
                            <label for="a2">정답</label>
                            <input class="answer_input" type="number" id="a2" />
                          </div>
                        </div>
                      </div>
                    </dd>
                  </dl>
                </li>
                <li>
                  <dl>
                    <dt class="on">3. 다음 코드의 선언 지도를 그릴 때 가장 상단으로 올라가야하는 부분은 무엇일까요?</dt>
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
                            <label for="a3">정답</label>
                            <input class="answer_input" type="number" id="a3" />
                          </div>
                        </div>
                      </div>
                    </dd>
                  </dl>
                </li>
                <li>
                  <dl>
                    <dt class="on">4. 다음 자료 구조와 호출 스택, 스코프 체인 설명 중에 옳은 것은 무엇일까요?</dt>
                    <dd>
                      <div class="content_wrp">
                        <ul class="question_zone vertical">
                          <li>1) 큐는 밑에서 부터 하나씩 쌓이고, 위에서 부터 하나씩 빠져나간다. LIFO(Last In First Out), FILO(First In Last Out)</li>
                          <li>2) 스택은 먼저 들어온 것이 먼저 나간다. FIFO(First In First Out)</li>
                          <li>3) 호출 스택은 디버거를 통해서 콘솔탭에서 확인할 수 없다.</li>
                          <li>4) 스코프 체인을 통해서 함수에서 어떤 값에 접근이 가능하고 불가능한지를 판단할 수 있다.</li>
                        </ul>
                        <div class="answer_zone">
                          <div class="input_wrp">
                            <label for="a4">정답</label>
                            <input class="answer_input" type="number" id="a4" />
                          </div>
                        </div>
                      </div>
                    </dd>
                  </dl>
                </li>
                <li>
                  <dl>
                    <dt class="on">5. 다음 코드에서 this는 무엇일까요?</dt>
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
                          <li>3) window</li><!-- 정답, 화살표 함수안의 this는 window가 된다. -->
                          <li>4) megagong</li>
                        </ul>
                        <div class="answer_zone">
                          <div class="input_wrp">
                            <label for="a5">정답</label>
                            <input class="answer_input" type="number" id="a5" />
                          </div>
                        </div>
                      </div>
                    </dd>
                  </dl>
                </li>
                <li>
                  <dl>
                    <dt class="on">6. 다음 코드에서 this는 무엇일까요?</dt>
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
                          <li>1) obj</li><!-- 정답, 함수를 호출할 때 함수 앞에 객체가 붙으면, this는 그 객체가 된다. -->
                          <li>2) undefined</li>
                          <li>3) window</li>
                          <li>4) megagong</li>
                        </ul>
                        <div class="answer_zone">
                          <div class="input_wrp">
                            <label for="a6">정답</label>
                            <input class="answer_input" type="number" id="a6" />
                          </div>
                        </div>
                      </div>
                    </dd>
                  </dl>
                </li>
                <li>
                  <dl>
                    <dt class="on">7. 다음 Promise와 async/await 설명 중에 틀린 것은 무엇일까요?</dt>
                    <dd>
                      <div class="content_wrp">
                        <ul class="question_zone vertical">
                          <li>1) Promise는 내용이 실행은 되었지만 결과를 아직 반환하지 않는 객체이다.</li>
                          <li>2) async 함수 선언 없이 await 사용이 가능하다.</li>
                          <li>3) Promise 사용할 때 Promise 내부 함수 부분은 비동기이다.</li><!-- 정답, Promise 사용할 때 Promise 내부 함수 부분은 동기이다. -->
                          <li>4) async/await은 코드를 오른쪽에서 왼쪽으로 해석해야한다.</li>
                        </ul>
                        <div class="answer_zone">
                          <div class="input_wrp">
                            <label for="a7">정답</label>
                            <input class="answer_input" type="number" id="a7" />
                          </div>
                        </div>
                      </div>
                    </dd>
                  </dl>
                </li>

                <li>
                  <dl>
                    <dt class="on">8. 다음 코드의 실행 순서는?</dt>
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
                          <li>3) p, a, b, c</li><!-- 정답, 마이크로 테스크큐의 프로미스 p가 먼저 실행 -->
                          <li>4) b, c, a, p</li>
                        </ul>
                        <div class="answer_zone">
                          <div class="input_wrp">
                            <label for="a8">정답</label>
                            <input class="answer_input" type="number" id="a8" />
                          </div>
                        </div>
                      </div>
                    </dd>
                  </dl>
                </li>

                <li>
                  <dl>
                    <dt class="on">9. 다음 코드는 게시글을 등록하는 비즈니스 로직의 예제입니다. 이 로직 중에 빠져도 되는 await은 무엇일까요?</dt>
                    <dd>
                      <div class="content_wrp">
<pre class="language-javascript direct"><code>async function createPost() {
  const post = await db.getPost(); // 게시물 조회
  if (post) {
    res.status(403).send('이미 게시글이 존재합니다.');
  } else {
    await db.createPost(); // 게시글 작성

    const p1 = await db.userIncrementPostCount(); // 사용자에 게시글 카운트 1 올림
    const p2 = db.createNoti(); // 새로운 게시글 알림 등록
    await Promise.allSettled([p1, p2]);
  }
}</code></pre>
                        <ul class="question_zone vertical">
                          <li>1) await db.getPost();</li>
                          <li>2) await db.createPost();</li>
                          <li>3) await db.userIncrementPostCount();</li><!-- 정답, 사용자 게시글 카운트 1을 올리면서 새로운 게시글 알림 등록하는 기능은 동시에 진행되어도 상관없음 -->
                          <li>4) await Promise.allSettled([p1, p2]);</li>
                        </ul>
                        <div class="answer_zone">
                          <div class="input_wrp">
                            <label for="a9">정답</label>
                            <input class="answer_input" type="number" id="a9" />
                          </div>
                        </div>
                      </div>
                    </dd>
                  </dl>
                </li>

                <li>
                  <dl>
                    <dt class="on">10. 다음 코드 분석으로 옳지 않은 것은 무엇일까요?</dt>
                    <dd>
                      <div class="content_wrp">
<pre class="language-javascript direct"><code>for (var i = 0; i < 5; i++) {
  setTimeout(() => {
    console.log(i);
  }, i * 1000);
}</code></pre>
                        <ul class="question_zone vertical">
                          <li>1) 실행 결과는 5, 5, 5, 5, 5가 나온다.</li>
                          <li>2) var i는 블록 스코프가 아닌 함수 스코프를 따라가기 때문에 i의 스코프도 1개이다.</li>
                          <li>3) 다음 코드와 같이 var를 let으로 바꿔주면 실행 결과가 0, 1, 2, 3, 4가 나오는 이유는 i가 블록 스코프를 따라가게 되므로 i의 스코프가 5개가 되기 때문이다.
<pre class="language-javascript direct"><code>for (let i = 0; i < 5; i++) {
  setTimeout(() => {
    console.log(i);
  }, i * 1000);
}</code></pre>
                          </li>
                          <li>4) 다음 코드와 같이 for문 밖에 새로운 함수(즉시실행함수)를 하나 만들어서 새로운 클로저 관계를 만들어서 해결할 수도 있다.
<pre class="language-javascript direct"><code>(function(){
  for (var i = 0; i < 5; i++) {
    setTimeout(() => {
      console.log(i);
    }, i * 1000);
  }
})();</code></pre>         
                          </li><!-- 정답, for문 밖이 아니라 안에 새로운 함수를 만들어줘야한다. -->
                        </ul>
                        <div class="answer_zone">
                          <div class="input_wrp">
                            <label for="a10">정답</label>
                            <input class="answer_input" type="number" id="a10" />
                          </div>
                        </div>
                      </div>
                    </dd>
                  </dl>
                </li>
              </ul>
              <div class="js_test_btns">
                <a href="#">정답 제출</a>
              </div>
            </div><!-- #js_test_container -->

            <div id="js_result_container">
              <div id="js_result_top">
                <span class="stId"></span>
                <dl>
                  <dt><strong class="stName"></strong>님 응시 결과</dt>
                  <dd>
                    <ul>
                      <li class="js_r_score">
                        <span class="label">제출점수</span>
                        <span class="result"><em class="stScore">0</em> / 100점</span>
                      </li>
                      <li class="js_r_time">
                        <span class="label">제출시간</span>
                        <span class="result"><em class="stTime"></em></span>
                      </li>
                    </ul>
                  </dd>
                </dl>
                <div class="js_test_btns">
                  <a href="#">재응시</a>
                </div>
              </div>

              <div id="js_result_commentary">
                <h2>답안 해설</h2>
                <ul class="wise_list quiz_list">
                  <li>
                    <dl>
                      <dt class="on">1. 스코프 체인을 파악하려면 무엇을 봐야할까요?</dt>
                      <dd>
                        <div class="content_wrp">
                          <ul class="question_zone">
                            <li>1) 호출</li>
                            <li>2) 선언</li>
                            <li>3) 백그라운드</li>
                            <li>4) 테스크큐</li>
                          </ul>
                          <div class="answer_zone">
                            <div class="input_wrp num_info">
                              <ul>
                                <li>답 : <em class="correct_num"></em></li>
                                <li>나의 선택 : <em class="my_select_num"></em></li>
                              </ul>
                              <div class="info_wrp"><span class="label">해설 :</span>스코프 체인을 파악하려면 <strong>선언</strong>만 봐야한다. 호출부는 아무런 영향이 없다.<br />그리고 한번 코딩해 놓으면 스코프는 바뀌지 않는데 이를 어휘적 범위라고 하며 <strong>렉시컬 스코프</strong>라고 한다.</div>
                            </div>
                          </div>
                        </div>
                      </dd>
                    </dl>
                  </li>
                  <li>
                    <dl>
                      <dt class="on">2. 다음 코드의 스코프 체인을 파악한 내용 중 옳지 않은 것은 무엇일까요?</dt>
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
                            <li>1) c → anonymous</li>
                            <li>2) a → anonymous</li>
                            <li>3) c → b → anonymous</li>
                            <li>4) b → c → anonymous</li>
                          </ul>
                          <div class="answer_zone">
                            <div class="input_wrp num_info">
                              <ul>
                                <li>답 : <em class="correct_num"></em></li>
                                <li>나의 선택 : <em class="my_select_num"></em></li>
                              </ul>
                              <div class="info_wrp"><span class="label">해설 :</span>스코프 체인을 파악하려면 <strong>선언</strong>만 봐야한다. 호출부는 아무런 영향이 없다. <br />코드는 위에서 아래로, 왼쪽에서 오른쪽으로 실행되며 호출 스택은 디버거를 통해서 콘솔탭에서도 확인할 수 있다. <br />파일 자체를 <strong>anonymous 함수가 호출</strong>되었다고 생각하면 분석하기 편하다</div>
                            </div>
                          </div>
                        </div>
                      </dd>
                    </dl>
                  </li>
                  <li>
                    <dl>
                      <dt class="on">3. 다음 코드의 선언 지도를 그릴 때 가장 상단으로 올라가야하는 부분은 무엇일까요?</dt>
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
                                <li>답 : <em class="correct_num"></em></li>
                                <li>나의 선택 : <em class="my_select_num"></em></li>
                              </ul>
                              <div class="info_wrp"><span class="label">해설 :</span>anonymous 에서 선언을 파악할 때 자기 스코프에서 <strong>호이스팅</strong>이 되는 부분이 있는지 먼저 살펴보아야 한다. <br />a함수는 호이스팅 되기 때문에 선언 지도를 그릴 때 상단으로 올라가야한다.</div>
                            </div>
                          </div>
                        </div>
                      </dd>
                    </dl>
                  </li>
                  <li>
                    <dl>
                      <dt class="on">4. 다음 자료 구조와 호출 스택, 스코프 체인 설명 중에 옳은 것은 무엇일까요?</dt>
                      <dd>
                        <div class="content_wrp">
                          <ul class="question_zone vertical">
                            <li>1) 큐는 밑에서 부터 하나씩 쌓이고, 위에서 부터 하나씩 빠져나간다. LIFO(Last In First Out), FILO(First In Last Out)</li>
                            <li>2) 스택은 먼저 들어온 것이 먼저 나간다. FIFO(First In First Out)</li>
                            <li>3) 호출 스택은 디버거를 통해서 콘솔탭에서 확인할 수 없다.</li>
                            <li>4) 스코프 체인을 통해서 함수에서 어떤 값에 접근이 가능하고 불가능한지를 판단할 수 있다.</li>
                          </ul>
                          <div class="answer_zone">
                            <div class="input_wrp num_info">
                              <ul>
                                <li>답 : <em class="correct_num"></em></li>
                                <li>나의 선택 : <em class="my_select_num"></em></li>
                              </ul>
                              <div class="info_wrp"><span class="label">해설 :</span>스택은 밑에서 부터 하나씩 쌓이고, 위에서 부터 하나씩 빠져나간다. LIFO(Last In First Out), FILO(First In Last Out) <br />큐는 먼저 들어온 것이 먼저 나간다. FIFO(First In First Out)</div>
                            </div>
                          </div>
                        </div>
                      </dd>
                    </dl>
                  </li>
                  <li>
                    <dl>
                      <dt class="on">5. 다음 코드에서 this는 무엇일까요?</dt>
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
                                <li>답 : <em class="correct_num"></em></li>
                                <li>나의 선택 : <em class="my_select_num"></em></li>
                              </ul>
                              <div class="info_wrp"><span class="label">해설 :</span>화살표 함수안의 this는 window가 된다.</div>
                            </div>
                          </div>
                        </div>
                      </dd>
                    </dl>
                  </li>
                  <li>
                    <dl>
                      <dt class="on">6. 다음 코드에서 this는 무엇일까요?</dt>
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
                                <li>답 : <em class="correct_num"></em></li>
                                <li>나의 선택 : <em class="my_select_num"></em></li>
                              </ul>
                              <div class="info_wrp"><span class="label">해설 :</span>함수를 호출할 때 함수 앞에 객체가 붙으면, this는 그 객체가 된다.</div>
                            </div>
                          </div>
                        </div>
                      </dd>
                    </dl>
                  </li>
                  <li>
                    <dl>
                      <dt class="on">7. 다음 Promise와 async/await 설명 중에 틀린 것은 무엇일까요?</dt>
                      <dd>
                        <div class="content_wrp">
                          <ul class="question_zone vertical">
                            <li>1) Promise는 내용이 실행은 되었지만 결과를 아직 반환하지 않는 객체이다.</li>
                            <li>2) async 함수 선언 없이 await 사용이 가능하다.</li>
                            <li>3) Promise 사용할 때 Promise 내부 함수 부분은 비동기이다.</li><!-- 정답, Promise 사용할 때 Promise 내부 함수 부분은 동기이다. -->
                            <li>4) async/await은 코드를 오른쪽에서 왼쪽으로 해석해야한다.</li>
                          </ul>
                          <div class="answer_zone">
                            <div class="input_wrp num_info">
                              <ul>
                                <li>답 : <em class="correct_num"></em></li>
                                <li>나의 선택 : <em class="my_select_num"></em></li>
                              </ul>
                              <div class="info_wrp"><span class="label">해설 :</span>Promise 사용할 때 Promise 내부 함수 부분은 동기이다.</div>
                            </div>
                          </div>
                        </div>
                      </dd>
                    </dl>
                  </li>

                  <li>
                    <dl>
                      <dt class="on">8. 다음 코드의 실행 순서는?</dt>
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
                                <li>답 : <em class="correct_num"></em></li>
                                <li>나의 선택 : <em class="my_select_num"></em></li>
                              </ul>
                              <div class="info_wrp"><span class="label">해설 :</span>먼저 비동기 코드들은 JS 엔진상의 백그라운드로 들어가는데, promise, process.nextTick은 마이크로 테스크큐로 나머지는 매크로 테스크 큐로 간다. 마이크로 테스크큐의 프로미스 p가 먼저 실행되고 나서 매크로 테스크 큐의 나머지 코드들이 실행된다.</div>
                            </div>
                          </div>
                        </div>
                      </dd>
                    </dl>
                  </li>

                  <li>
                    <dl>
                      <dt class="on">9. 다음 코드는 게시글을 등록하는 비즈니스 로직의 예제입니다. 이 로직 중에 빠져도 되는 await은 무엇일까요?</dt>
                      <dd>
                        <div class="content_wrp">
<pre class="language-javascript direct"><code>async function createPost() {
  const post = await db.getPost(); // 게시물 조회
  if (post) {
    res.status(403).send('이미 게시글이 존재합니다.');
  } else {
    await db.createPost(); // 게시글 작성

    const p1 = await db.userIncrementPostCount(); // 사용자에 게시글 카운트 1 올림
    const p2 = db.createNoti(); // 새로운 게시글 알림 등록
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
                                <li>답 : <em class="correct_num"></em></li>
                                <li>나의 선택 : <em class="my_select_num"></em></li>
                              </ul>
                              <div class="info_wrp"><span class="label">해설 :</span>사용자 게시글 카운트 1을 올리면서 새로운 게시글 알림 등록하는 기능은 동시에 진행되어도 상관없다.</div>
                            </div>
                          </div>
                        </div>
                      </dd>
                    </dl>
                  </li>

                  <li>
                    <dl>
                      <dt class="on">10. 다음 코드 분석으로 옳지 않은 것은 무엇일까요?</dt>
                      <dd>
                        <div class="content_wrp">
<pre class="language-javascript direct"><code>for (var i = 0; i < 5; i++) {
  setTimeout(() => {
    console.log(i);
  }, i * 1000);
}</code></pre>
                          <ul class="question_zone vertical">
                            <li>1) 실행 결과는 5, 5, 5, 5, 5가 나온다.</li>
                            <li>2) var i는 블록 스코프가 아닌 함수 스코프를 따라가기 때문에 i의 스코프도 1개이다.</li>
                            <li>3) 다음 코드와 같이 var를 let으로 바꿔주면 실행 결과가 0, 1, 2, 3, 4가 나오는 이유는 i가 블록 스코프를 따라가게 되므로 i의 스코프가 5개가 되기 때문이다.
<pre class="language-javascript direct"><code>for (let i = 0; i < 5; i++) {
  setTimeout(() => {
    console.log(i);
  }, i * 1000);
}</code></pre>
                            </li>
                            <li>4) 다음 코드와 같이 for문 밖에 새로운 함수(즉시실행함수)를 하나 만들어서 새로운 클로저 관계를 만들어서 해결할 수도 있다.
<pre class="language-javascript direct"><code>(function(){
  for (var i = 0; i < 5; i++) {
    setTimeout(() => {
      console.log(i);
    }, i * 1000);
  }
})();</code></pre>         
                            </li><!-- 정답, for문 밖이 아니라 안에 새로운 함수를 만들어줘야한다. -->
                          </ul>
                          <div class="answer_zone">
                            <div class="input_wrp num_info">
                              <ul>
                                <li>답 : <em class="correct_num"></em></li>
                                <li>나의 선택 : <em class="my_select_num"></em></li>
                              </ul>
                              <div class="info_wrp"><span class="label">해설 :</span>문제가 되는 상황은 () => {console.log(i)} 함수와 클로저 관계를 형성하는 것이 var i = 0이었다. 이 때 스코프 문제로 인하여 원하는 값이 나오지 않았던 것이다. <br />그래서 새로운 함수(즉시실행함수)를 하나 만들어서 새로운 클로저 관계를 만들어서 해결할 수 있다. 이때 새로운 함수는 for문 안에 다음과 같이 만들어 주어야 한다.
<pre class="language-javascript direct"><code>for (var i = 0; i < 5; i++) { 
  (function(j){
    setTimeout(() => {
      console.log(j);
    }, i * 1000); 
  })(i);
}</code></pre>
이렇게 for문에 즉시실행함수를 넣으므로 인하여서 function(j){} 함수와 var i = 0 외부 변수가 클로저 관계를 형성한다.<br />
또 () => { console.log(j); } 함수와 (j) 외부 변수가 클로저 관계를 형성한다.
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
              <h2>퍼블리싱팀 응시 이력</h2>
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
    // 시험 응시
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
        return validEmpty('#a1') ? toastr.error('1번 정답을 입력해주세요.') : toastr.error('1번 문항, 1~4번 중에 골라주세요.');
      }
      if (validEmpty('#a2') || !validNum($('#a2').val())) {
        $('#a2').focus();
        return validEmpty('#a2') ? toastr.error('2번 정답을 입력해주세요.') : toastr.error('2번 문항, 1~4번 중에 골라주세요.');
      }
      if (validEmpty('#a3') || !validNum($('#a3').val())) {
        $('#a3').focus();
        return validEmpty('#a3') ? toastr.error('3번 정답을 입력해주세요.') : toastr.error('3번 문항, 1~4번 중에 골라주세요.');
      }
      if (validEmpty('#a4') || !validNum($('#a4').val())) {
        $('#a4').focus();
        return validEmpty('#a4') ? toastr.error('4번 정답을 입력해주세요.') : toastr.error('4번 문항, 1~4번 중에 골라주세요.');
      }
      if (validEmpty('#a5') || !validNum($('#a5').val())) {
        $('#a5').focus();
        return validEmpty('#a5') ? toastr.error('5번 정답을 입력해주세요.') : toastr.error('5번 문항, 1~4번 중에 골라주세요.');
      }
      if (validEmpty('#a6') || !validNum($('#a6').val())) {
        $('#a6').focus();
        return validEmpty('#a6') ? toastr.error('6번 정답을 입력해주세요.') : toastr.error('6번 문항, 1~4번 중에 골라주세요.');
      }
      if (validEmpty('#a7') || !validNum($('#a7').val())) {
        $('#a7').focus();
        return validEmpty('#a7') ? toastr.error('7번 정답을 입력해주세요.') : toastr.error('7번 문항, 1~4번 중에 골라주세요.');
      }
      if (validEmpty('#a8') || !validNum($('#a8').val())) {
        $('#a8').focus();
        return validEmpty('#a8') ? toastr.error('8번 정답을 입력해주세요.') : toastr.error('8번 문항, 1~4번 중에 골라주세요.');
      }
      if (validEmpty('#a9') || !validNum($('#a9').val())) {
        $('#a9').focus();
        return validEmpty('#a9') ? toastr.error('9번 정답을 입력해주세요.') : toastr.error('9번 문항, 1~4번 중에 골라주세요.');
      }
      if (validEmpty('#a10') || !validNum($('#a10').val())) {
        $('#a10').focus();
        return validEmpty('#a10') ? toastr.error('10번 정답을 입력해주세요.') : toastr.error('10번 문항, 1~4번 중에 골라주세요.');
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

      // toastr.success('정답을 제출하였습니다.');
      window.location.reload();
    });
    
    $('#js_result_container .js_test_btns a').on('click', async (e) => {
      e.preventDefault();
      const retry = confirm('정말로 재응시를 하시겠습니까?')
      if (retry) {
        const id = $('#js_result_container .stId').text();
        await dbService.doc(`jsTest/${id}`).delete();

        // toastr.success('기존 데이터를 지웠습니다. 재응시해주세요 :)');
        window.location.reload();
      }
    });
    </script>

<!-- #include virtual = "/inc/bottom.asp"-->