chrome.browserAction.onClicked.addListener(function(){
	chrome.tabs.executeScript(null,{
	 "code" : "document.body.style.backgroundColor='" + "green" + "'"
	});
});

// function changeColor(color){
// 	chrome.tabs.executeScript(null,{
//    "code" : "document.body.style.backgroundColor='" + color + "'"
//   });
// }
