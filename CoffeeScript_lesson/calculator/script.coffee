$ ->
  'use strict'

  $('#price').click ->
    # フォームを選択したときに入力しやすいようにする
    $(this).select()

  $('#num').click ->
    # フォームを選択したときに入力しやすいようにする
    $(this).select()
    
  $('#btn').mousedown ->
    $(this).addClass 'pushed'

  $('#btn').mouseup ->
    $(this).removeClass 'pushed'

  $('#btn').click ->
    num = $('#num').val()
    price = $('#price').val()
    msg = ''
    unit = 100 # 丸めの単位
    if num.match(/^[1-9][0-9]*$/) and price.match(/^[1-9][0-9]*$/)
      # OK
      # $('#result').text('OK')
      if price % num == 0
        msg = '1人 ' + price / num + ' 円ちょうどです。'
      else
        # msg = 'something'
        x1 = Math.floor(price / num / unit) * unit
        y1 = price - (x1 * num)
        x2 = Math.ceil(price / num / unit) * unit
        y2 = Math.abs(price - (x2 * num))
        msg = '1人 ' + x1 + ' 円だと ' + y1 + ' 円足りません。<br>' +
        '1人 ' + x2 + ' 円だと ' + y2 + ' 円余ります。'
    else
      # NG
      msg = '入力された値が誤りがあります。'

    $('#result').html(msg)
