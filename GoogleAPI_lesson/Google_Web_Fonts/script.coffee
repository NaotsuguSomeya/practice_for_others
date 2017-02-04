$ ->
  'use strict'

  getResult = ->
    # 現在時刻とターゲット時刻の差
    targetMilliSec = new Date(2017, 1, 1, 0, 0, 0).getTime()
    nowMilliSec = Date.now()
    diffSec = (targetMilliSec - nowMilliSec) / 1000

    # 残り日数、時間を計算
    d = Math.floor diffSec / 60 / 60 / 24
    diffSec = diffSec - (60 * 60 * 24 * d)
    h = Math.floor diffSec / 60 / 60
    diffSec = diffSec - (60 * 60 * h)
    m = Math.floor diffSec / 60
    diffSec = diffSec - (60 * m)
    s = Math.floor diffSec
    # console.log 'd:' + d + ' h:' + h + ' m:' + m + ' s :' + s

    # 計算結果をspan要素に表示
    $('#remainingDays').html d
    $('#remainingTime').html padZero(h) + ' :'  + padZero m + ' : ' + padZero s

    # 繰り返し
    setTimeout ->
      getResult()
    ,200

  getResult()

padZero = (n) ->
  if n < 10 then '0' + n else n
