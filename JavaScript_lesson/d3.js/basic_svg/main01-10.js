var dataset = [11, 25, 45, 30, 33];

var w = 500;
var h = 200;

// var svg = d3.select('body').append('svg').attr({width: w,height: h});
var svg = d3.select('body').append('svg').attr("width", w).attr("height", h);

svg.selectAll('circle')
  .data(dataset)
  .enter()
  .append('circle')
  .attr("cx",function(d, i){return 50 + (i*100)})
  .attr("cy",h/2)
  .attr("r",function(d){return d})
  .attr("fill","red");
