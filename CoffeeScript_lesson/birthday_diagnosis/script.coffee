$ ->
  'use strict'

  $('#btn').click ->
    birthdayArray = $('#birthday').val().split '-'
    year = birthdayArray[0]
    month = birthdayArray[1] - 1 # 月：0-11で表現
    day = birthdayArray[2]
    d1 = new Date year, month, day
    d2 = new Date() # 現在日付
    # getTime : 経過ミリ秒に変換
    diff = d2.getTime() - d1.getTime()
    daysPast = Math.floor diff / (1000 * 60 * 60 * 24)
    age = Math.floor daysPast / 365.25
    resultStr = '生まれてから[ ' + daysPast + ' ]日経過していて、' +
      'だいたい[ ' + age + ' ]歳です！'
    $('#result').text resultStr
