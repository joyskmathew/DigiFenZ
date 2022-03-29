function DigiFenZSearch(info) {
	chrome.tabs.create({
		url: 'http://www.google.com/search?q=' + encodeURIComponent(info.selectionText)
	});
}

(function() {
	var id = chrome.contextMenus.create({
		title: 'Search by DigiFenZ for "%s"',
		contexts: ['selection'],
		onclick: DigiFenZSearch
	});
})();

