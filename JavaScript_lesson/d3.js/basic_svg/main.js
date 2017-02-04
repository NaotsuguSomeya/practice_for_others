var dataset = [11, 25, 45, 30, 33];

var w = 500;
var h = 200;
var pad = 20;

// scale
var xScale = d3.scale.linear()
                .domain([0, 50])
                // .domain([0, d3.max(dataset)]) // datasetのMax値を取得
                .range([pad, w - pad])
                .nice(); // きりの良い数字に合わせてくれる

var svg = d3.select('body').append('svg').attr({width:w, height:h});

// 軸の定義
var xAxis = d3.svg.axis()
                .scale(xScale)
                .orient("bottom"); // 数字をどっち方向につけるか

svg.append('g')
  .attr({
    class: 'axis',
    transform: "translate(0, 180)"
  })
  .call(xAxis);

svg.selectAll("rect")
  .data(dataset)
  .enter()
  .append('rect')
  .attr({
    x: pad,
    y: function(d, i) { return i * 25; },
    width: function(d) { return xScale(d) - pad; },
    height: 20,
    fill: "red"
  });
