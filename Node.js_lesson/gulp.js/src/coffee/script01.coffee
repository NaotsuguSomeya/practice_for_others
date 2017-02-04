$ ->
  'use strict'

  $('#btn').click ->
    results = ["超吉","特吉", "大吉", "中吉", "小吉", "凶", "大凶"]
    # 0-nまでの乱数：Math.floor(Math.random() * (n+1))
    #   1) Math.random() : 0 - 0.9999...の乱数を作成
    #   2) Math.random() * (n+1) : 0 - n.9999...
    #   3) Math.floor : 小数点以下切り捨て
    result = Math.floor(Math.random() * results.length)
    $('#result').text results[result]
