$ ->
  'use strict'

  $('#btn').click ->
    orders = [
      'ちょっと黙ってなさい',
      'ちょっと静かにしなさい',
      'ちょっとオナラを控えなさい',
      'ちょっと寝てなさい'
    ]
    order = orders[Math.floor(Math.random() * orders.length)]

    num = $('#num').val()
    # 空文字
    if !num.trim()
      $('#result').text('人数を入力してください')
      return
    # 数値でなかったら
    if isNaN num
      $('#result').text('数値を入力してください。')
      return
    # 整数でなかったら
    unless Math.ceil(num) == parseInt(num) # 数値型に変換しないと比較できない！
      $('#result').text('整数を入力してください。')
      return
    # 1以下だったら
    if num <= 1
      $('#result').text('２人以上を指定してください。')
      return

    p1 = Math.floor(Math.random() * num) + 1
    p2 = 0

    # coffeescriptでdo untilのループ方法
    loop
      p2 = Math.floor(Math.random() * num) + 1
      break unless p1 == p2

    resultStr = p1 + ' 番と ' + p2 + ' 番の人は' + order
    $('#result').text(resultStr)
