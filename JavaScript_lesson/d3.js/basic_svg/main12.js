var dataset = [11, 25, 45, 30, 33];

var w = 500;
var h = 200;

// var svg = d3.select('body').append('svg').attr({width: w,height: h});
var svg = d3.select('body').append('svg').attr("width", w).attr("height", h);

svg.selectAll('circle')
  .data(dataset)
  .enter()
  .append('circle')
  .transition()
  .delay(function(d, i){
    return i * 300; // それぞれ表示する時間をずらす
  })
  .duration(1000) // ミリ秒
  .ease("bounce")
  .each("start", function(){
    d3.select(this)
      .attr("fill", "green")
      .attr("r", 0)
      .attr("cy", h);
  })
  .attr("cx",function(d, i) {return 50 + (i * 100)} )
  .attr("cy",h / 2)
  .attr("fill","red")
  .attr("r",function(d) {return d} )
  .each("end", function(){
    d3.select(this)
      .transition()
      .duration(800)
      .attr('fill', 'pink')
      .attr('r', 0)
      .attr('cy', 0);
  });
