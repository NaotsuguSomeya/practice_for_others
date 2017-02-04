var dataset = [11, 25, 45, 30, 33];

var w = 500;
var h = 200;

// var svg = d3.select('body').append('svg').attr({width: w,height: h});
var svg = d3.select('body').append('svg').attr("width", w).attr("height", h);

svg.selectAll('circle')
  .data(dataset)
  .enter()
  .append('circle')
  .on('mouseover', function(d) {
    d3.select(this).attr({
      fill: "orange"
    });
  })
  .on('mouseout', function(d) {
    d3.select(this).attr({
      fill: "red"
    });
  })
  .on('click', function(d) {
    alert(d3.select(this).attr("r"));
  })
  .attr("cx",function(d, i) {return 50 + (i * 100)} )
  .attr("cy",h / 2)
  .attr("fill","red")
  .attr("r",function(d) {return d} );
