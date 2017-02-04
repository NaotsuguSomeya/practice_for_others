$ ->
  'use strict'

  # Web Storageが使用可能か否か
  if typeof(Storage) == 'undefined'
    alert 'Web Storage Not Supported'

  $('#insert').click ->
    # ルール
    # 同一オリジンでデータ保存
    # http://192.168.56.10:8000 : オリジン（この配下ではどこでも使える）
    # 種類：sessionStorage、localStorage
    # １．sessionStorage：タブが閉じられるまで有効（別のタブではデータは取り出せない）
    ss = sessionStorage
    # key, valueで保存
    # s.setItem(key, value)
    # s.getItem(key)
    ss.setItem('name', 'someya')
    # console.log 'name saved!'
    console.log 'sessionStorage: ' + ss.getItem 'name'

    # ２．localStorage：ブラウザ自体にずっと保存
    ls = localStorage
    ls.setItem('name', 'yocchan')
    console.log 'localStorage: ' + ls.getItem 'name'

  $('#removeLs').click ->
    ls = localStorage
    ls.clear()

  $('#removeSs').click ->
    ss = sessionStorage
    ss.clear()

  $('#insertList').click ->
    ls = localStorage
    ls.setItem('yocchan', 80)
    ls.setItem('sakuchan', 100)
    ls.setItem('u-cchan', 60)
    i = 0
    while i < ls.length
      console.log ls.key(i) + ':' + ls.getItem ls.key(i)
      i++

  $('#insertObj').click ->
    ls = localStorage
    user = {
      name: 'someya',
      score: 80
    }
    #  JSON -> 文字列：JSON.stringify
    #  文字列 -> JSON ：JSON.parse
    ls.setItem 'user', JSON.stringify(user)
    console.dir JSON.parse ls.getItem('user')

  # e.oldValue/e.newValueだと動かない
  # e.originalEvent.oldValue/e.originalEvent.newValueだと、
  # nullを経由して更新される
  $(window).bind 'storage', (e) ->
    console.log e.key +
     ' : ' + e.originalEvent.oldValue +
      ' -> ' + e.originalEvent.newValue
