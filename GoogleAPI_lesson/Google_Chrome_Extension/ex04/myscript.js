var colors = document.getElementsByName('colors');

document.getElementById('save').onclick = function(){
  if (colors[0].checked) {
    localStorage['color'] = 'red'
  } else if (colors[1].checked) {
    localStorage['color'] = 'blue'
  } else if (colors[2].checked) {
    localStorage['color'] = 'green'
  }
}

document.body.onload = function(){
  switch(localStorage['color']){
    case 'red':
      colors[0].checked = true;
    case 'blue':
      colors[1].checked = true;
    case 'green':
      colors[2].checked = true;
    default:
      colors[0].checked = true;
  }
}
