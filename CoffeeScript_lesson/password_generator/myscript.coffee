$ ->
  'use strict'

  getPassword = ->
    seed_letters = 'abcdefghijklmnopqrstuvwxyz'
    seed_numbers = '1234567890'
    seed_symbols = '#$%&(){}[]@*+-<>'
    seed = seed_letters + seed_letters.toUpperCase()
    # [注意]jQueryでチェック状態を調べる
    if $('#numbers').prop('checked')
      seed +=  seed_numbers
    if $('#symbols').prop('checked')
      seed += seed_symbols
    console.log seed
    len = $('#slider').val()
    pwd = ''
    i = 0
    while len--
      pwd += seed[Math.floor(Math.random() * seed.length)]
    $('#result').val pwd

  getPassword()

  $('#label').text $('#slider').val()

  $('#slider').change ->
    $('#label').text $('#slider').val()

  $('#btn').click ->
    getPassword()

  $('#result').click ->
    $('#result').select()
