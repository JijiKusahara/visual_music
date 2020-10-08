$(function() {
  // 送信ボタンを押し
  function buildHTML(songcolor){
    let html =
      `<li class="color-box" style="background-color:${songcolor.color}"></li>`
    return html;
  };
  // フォームが送信された時、というイベントを設定したい場合は、form要素を取得してonメソッドを使う
  $('.js-form').on('submit', function(e) {
    // デフォルトの行為を一旦停止
    e.preventDefault();
    // イベントが発火したときにAjaxを使用して、songcolors#createが動くようにする
    let formData = new FormData(this);
    // $(this)は、thisで取得できる要素をjQueryオブジェクト化
    // attrメソッドは要素が持つ指定属性の値を返す。
    // イベントが発生した要素のaction属性の値を取得
    // 今回のaction属性にはフォームの送信先のurlの値が入っています。リクエスト送信先
    let url = $(this).attr('action');
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      // デフォルトではtrueになっており、dataに指定したオブジェクトをクエリ文字列(例: msg.txt?b1=%E3%81%8B&b2=%E3%81%8D )に変換する役割
      processData: false,
      // FormDataをつかってフォームの情報を取得した時には必ずfalseにするという認識で構わない。
      contentType: false
    })
    .done(function(data){
      let html = buildHTML(data);
      $('.colorForm__submit').prop('disabled', false) //一度押すと押せなくなる送信ボタンを連続で押せるようにしている
      // .prepend指定した要素の最初に、引数で指定した内容を追加
      $('.left-box__colors-fild').prepend(html); 
    })
    .fail(function() {
      alert('error');
    });
  });
});