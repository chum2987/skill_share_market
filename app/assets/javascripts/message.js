  window.addEventListener("load", function(){
   // 送信ボタンがクリックされたら
   $('#send').on('click', () => {
    // テキストエリア内の文字を取得する
    const messageText = $('#text').val()
    // チャットエリアの要素を取得
    const chatArea = $('.chat-area')
    // チャットメッセージ用の装飾をしたクラスを当てたpタグを追加
    const message = $('<p></p>').addClass('chat-message').text(messageText)
    chatArea.append(message)
   })
 })

// console.log("hello world!");

// $(function() {
//   // 送信ボタンがクリックされたら
//   $('#send').on('click', () => {
//     // テキストエリア内の文字を取得する
//     const text = $('#text').val()
//     // チャットエリアの要素を取得
//     const chatArea = $('.chat-area')
//     chatArea.append('<p>' + text + '</p>')
//   })
// })