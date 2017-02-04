$ ->
  'use strict'
  # セット：localStorage.setItem(key, value)
  # ゲット：localStorage.getItem(key)
  # 削除：localStorage.removeItem(key)
  # 全削除：localStorage.clear
  # ※IEだと動作しないかも

  if localStorage.getItem('memo')
    $('#memo').val(localStorage.getItem('memo'))

  # キー入力時に保存
  $('#memo').bind 'keyup', ->
    localStorage.setItem('memo', $('#memo').val())

  # # 即時関数
  # -> autoSave =  ->
  #   localStorage.setItem('memo', $('#memo').val())
  #   # 動かない…
  #   $('#message').show().hide(1000)
  #   setTimeout(autoSave() ,1000)

  # $('#save').click ->
  #   localStorage.setItem('memo', $('#memo').val())

  $('#clear').click ->
    $('#memo').val('')
    localStorage.removeItem('memo')
