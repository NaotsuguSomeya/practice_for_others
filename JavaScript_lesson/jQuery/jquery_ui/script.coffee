$ ->
  $('.box1,.box2').draggable
    # axis: 'x'
    opacity: .5,
    # handle: '.handle',
    # cancel: '.cancel'
    # イベント
    # drag: (event, ui) ->
    #   console.log ui.position.left
    # 前の位置のを残しつつ移動可能
    helper: 'clone'

  # $('#box2').draggable # draggableはひとつだけしか指定できないっぽい
  $('.box3').droppable # hoverClass:classに対して有効っぽい
    accept: '.box2',
    hoverClass: 'hover',
    # イベント
    drop: (event, ui) ->
      # dropした要素を追加していく
      ui.draggable.clone().appendTo this
      console.log 'dropped!'

  $('.box4').draggable().resizable # オプションがないときは最後に()を追加
    handles: 'all',
    aspectRatio: true,
    stop: (event, ui) ->
      console.log ui.size.height, ui.size.width

  selected = new Array
  $('#selectable').selectable
    selected: (event, ui) ->
      selected.push ui.selected.id
      console.log selected,
    unselected: (event, ui) ->
      id = ui.unselected.id
      selected.splice selected.indexOf(id),1
      console.log selected

  $('#sortable').sortable
    cursor: 'move',
    opacity: .5,
    update: (event, ui) ->
      console.log $(this).sortable 'serialize' # 順番が文字列で取れる(id名は"xxx_n"の連番にすること)

  $('#accordion').accordion()

  langs = ['ja','en','fr','sp','中国語']
  $('#langs').autocomplete
    source: langs

  $('#btn-click').button()
  $('#check').button()
  $('input[type=radio]').button()
  $('#set').buttonset()

  $('#datepicker').datepicker
    dateFormat: 'yy-mm-dd',
    # Nヶ月分表示する
    numberOfMonths: 2,
    # 選択範囲を決める
    minDate: -2,
    maxDate: '+1M'

  $('#btn-dialog').click ->
    $('#msg').dialog 'open'
  $('#msg').dialog
    autoOpen: false, #documentが開いたときにopenしない
    buttons:
      'OK': ->
        $(this).dialog 'close'
    ,title: 'ダイアログtitle',
    modal: true

  $('#bar').progressbar()
    # value:33

  $('#slider').slider
    slide: (event, ui) ->
      console.log ui.value
      $('#bar').progressbar 'option', 'value', ui.value

  $('#tabs').tabs
    active: 1

  $('#ef-box').click ->
    $(this).effect 'explode', pieces: 32
