// console.log("hello world!");

// non blockingなコーディング
setTimeout(function(){
	console.log("hello, ");
}, 1000);
console.log("world"); // 先に出る（前の処理をブロックしない）
console.log("-------");
// blocking
// var start = new Date().getTime();
// while (new Date().getTime() < start + 1000) {
// 	console.log("world");
// }
