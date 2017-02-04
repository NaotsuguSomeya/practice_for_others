$ ->
  'use strict'
  startTime = ""
  timerId = ""
  elapssedTime = 0
  isRunning = false

  setButtonState = (start, stop, reset, init) ->
    # $('#start').prop("disabled", !start)
    # $('#stop').prop("disabled", !stop)
    # $('#reset').prop("disabled", !reset)

    if !init
      $('#start').removeClass(if !start then 'btn active' else 'btn inactive')
      $('#stop').removeClass(if !stop then 'btn active' else 'btn inactive')
      $('#reset').removeClass(if !reset then 'btn active' else 'btn inactive')

    $('#start').addClass(if start then 'btn active' else 'btn inactive')
    $('#stop').addClass(if stop then 'btn active' else 'btn inactive')
    $('#reset').addClass(if reset then 'btn active' else 'btn inactive')

  setButtonState true, false, false, true

  $('#start').click ->
    if isRunning
      return
    isRunning = true
    startTime = Date.now()
    updateTimerText()
    setButtonState false, true, false, false

  $('#stop').click ->
    if !isRunning
      return
    isRunning = false
    elapssedTime += Date.now() - startTime
    clearTimeout timerId
    setButtonState true, false, true, false

  $('#reset').click ->
    if isRunning
      return
    isRunning = false
    $('#timerText').text '0.00'
    elapssedTime = 0
    setButtonState true, false, false, false

  updateTimerText = ->
    timerId = setTimeout ->
      t = Date.now() - startTime + elapssedTime
      $('#timerText').text (t / 1000).toFixed(2)
      updateTimerText()
    , 10
