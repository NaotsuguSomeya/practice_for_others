$ ->
  'use strict'

  LIMIT = 40
  WARNING = 15
  $('#label').html(LIMIT)

  # texrareaのキータッチがあった場合
  $('#comment').keyup ->
    remaining = LIMIT - this.value.length
    if remaining < WARNING
      $('#label').addClass('warning')
    else
      $('#label').removeClass('warning')
    $('#label').html(remaining)
