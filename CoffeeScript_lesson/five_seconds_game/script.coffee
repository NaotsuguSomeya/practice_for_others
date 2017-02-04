$ ->
  'use strict'

  isStarted = false
  startTime = ""
  diff = ""
  msg = 'Stop at "5" seconds!'
  $('#btn').text('START')
  $('#result').text(msg)

  $('#btn').click ->
    if !isStarted
      isStarted = true
      $('#result').text(msg)
      $(this).text('STOP')
      # get start time
      startTime = Date.now()
    else
      isStarted = false
      $(this).text('START')
      # judge, show result
      diff = (Date.now() - startTime) / 1000 - 5
      # console.log diff
      resultVal = ""
      if (diff >= 0.1 and diff <= 0.1)
        resultVal = 'Perfect!!'
      else if diff > 0
        resultVal = 'You are ' + diff.toFixed(2) + ' seconds late.'
      else
        resultVal = 'You are ' + Math.abs(diff).toFixed(2) + ' seconds fast.'
      $('#result').text(resultVal)
