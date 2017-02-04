var MongoClient = require('mongodb').MongoClient;
var settings = require('./settings');
// MongoDB接続
MongoClient.connect("mongodb://" + settings.host + "/" + settings.db,
// MongoClient.connect("mongodb://localhost/" + settings.db,
										function(err, db){
											if (err) {
												return console.dir(err);
											}
											console.log("connected to db...");
											db.collection('users', function(err, collection){
												if (err) {
													return console.dir(err);
												}
												// var docs = [
												// 	{name: "someya", score:40},
												// 	{name: "yocchan", score:80},
												// 	{name: "U-chan", score:50}
												// ];
												// collection.insert(docs, function(err, result){
												// 	console.dir(result);
												// });
												// collection.find().toArray(function(er, items){
												// collection.find({name: "someya"}).toArray(function(er, items){
												// 	console.log(items);
												// });
												// データが多すぎるとメモリを圧迫するのでstreamを使う
												var stream = collection.find().stream();
												// data: 「データが来た時」というイベントが使える
												stream.on('data', function(item){
													console.log(item);
												});
												// end : データ受信が終わった時
												stream.on('end', function(){
													console.log('Finished!');
												});
											});
										});
