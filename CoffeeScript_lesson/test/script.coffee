$ ->
  name = "CoffeeScript"

  whatIsThis = ->
    "This is The " + name + "!"

  alert whatIsThis()

  $('p').click ->
    $('p').css(background: 'red')
