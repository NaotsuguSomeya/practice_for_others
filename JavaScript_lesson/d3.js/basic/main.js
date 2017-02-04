/*
1) 要素を指定
  - select, selectAll
2) 設定、取得
  - text
  - attr
  - style
  - append
  - remove
*/
// bodyを選択⇒pを全部選択⇒textで書き変え
// d3.select("body").selectAll("p").text("change from d3!");
var p = d3.select(".d3-data01").selectAll("p");
// p.text("change from d3!");
// p.style("font-size", "28px");
p.text("change from d3!")
  .style("font-size", "28px")
  .style("font-weight", "bold");
// 値の取得
console.log(p.style("font-weight"));
// 設定値に関数を使う
p.style("font-size", function() {
  return Math.floor(Math.random() * 30) + "px";
});
// append : 要素の追加
d3.select('.d3-data01').append('p').text("hello 4 from d3!");
// remove : 要素削除
d3.select('.d3-data01').append('p').text("hello 5 from d3!").remove();
// data : 要素とデータをbindする
var dataset = [12, 24, 36];
p = d3.select(".d3-data02").selectAll("p");
// p.data(dataset).text(function(d) {
//   return d;
// });
p.data(dataset).text(function(d, i) {
  return i + ' 番目は ' + d +' です!';
});
/*
  dataを使った瞬間に仮想領域が作られる
   - update : 対応する要素がある場合 -> text, style..
   - enter : 対応する要素が足りない場合 -> append
   - exit : 対応する要素が余った場合 -> remove
*/
// enterパターン
dataset = [12, 24, 36, 48];
p = d3.select(".d3-data03").selectAll("p");
var update = p.data(dataset);
var enter = update.enter();
update.text(function(d){
  return "update: " + d;//12, 24, 36
});
enter.append('p').text(function(d){
  return "insert: " + d; // 48
})
// removeパターン
dataset = [12, 24];
p = d3.select(".d3-data04").selectAll("p");
var update = p.data(dataset);
var exit = update.exit();
update.text(function(d){
  return "update: " + d;//p1,p2
});
// exit.style('color', 'red');
exit.remove();
