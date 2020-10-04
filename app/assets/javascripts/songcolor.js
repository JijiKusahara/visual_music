$(function() {
  // 送信ボタンを押し
  function buildHTML(songcolor){
    let html =
      `<lu class="left-box__colors-fild" >
        <li class="color-box" style="background-color:${songcolor.color}"></li>
      </lu>`
    return html;
  };
  $('.js-form').on('submit', function(e) {
    // デフォルトの行為を一旦停止
    e.preventDefault();
    // イベントが発火したときにAjaxを使用して、songcolors#createが動くようにする
    let formData = new FormData(this);
    let url = $(this).attr('action');
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data){
      let html = buildHTML(data);
      $('.left-box').append(html); 
    })
    // .fail(function() {
    //   alert('error');
    // });
  });
});