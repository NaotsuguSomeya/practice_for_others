var createProperties = {
	"title": "「%s」をTwitterで検索",
	"type": "normal",
	"contexts": ["selection"],
	"onclick": function(info){
		var q = encodeURIComponent(info.selectionText);
		var url = 'http://twitter.com/search?q=' + q;
		chrome.tabs.create({
			url: url
		});
	}
}
chrome.contextMenus.create(createProperties)
