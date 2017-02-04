$ ->
  'use strict'

  $('#btn').mousedown ->
    $(this).addClass 'pushed'

  $('#btn').mouseup ->
    $(this).removeClass 'pushed'
