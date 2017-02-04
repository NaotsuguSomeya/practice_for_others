var player;

$(function() {
	$('#q').focus();

	$('#search').submit(function() {
		// キーワードからYouTubeを検索
		var apikey = "AIzaSyDJ9nTyWoCRCC7Gsm2NNza8dAuVvYVnSCA";
		// ※v3から使い方が違う！
		var url = "https://www.googleapis.com/youtube/v3/search";
		var options = {
			"key": apikey,
			// "q": encodeURIComponent($('#q').val()), jQueryが自動でエンコーディング
			"q": $('#q').val(),
			"part" : "id,snippet",
			"alt": "json",
			"maxResults": 10,
			v: 3

		};
		// 結果を#listに追加
		$.get(url, options, function(rs){
			console.log(rs);
			$('#videolist').empty();
			for (let i = 0; i < rs.items.length; i++) {
				var item = rs.items[i];
				$('#videolist').append(
					$('<li class="movie">').append(
						$('<img>').attr('src', item.snippet.thumbnails.default.url)
					).data('video-id', item.id.videoId)
				);
			}
		}, "json")
	});

	$(document).on('click', 'li.movie', function(){
		// player.loadVideoById($(this).data('video-id'));
		$(this).toggleClass('on');
	});

	var currentSelectIndex = 0;
	function play(){
		// currentSelectIndexのvideoId取得→再生→playingクラス追加
		var videoId = $('li.movie.on:eq('+currentSelectIndex+')').data('video-id');
		player.loadVideoById(videoId);
		$('li.movie').removeClass('playing'); // playingを全部外す
		$('li.movie.on:eq('+currentSelectIndex+')').addClass('playing');
	}

	$('#play').click(function(){
		play();
	});

	$('#pause').click(function(){
		player.pauseVideo();
	});
	$('#next').click(function(){
		if (currentSelectIndex == $('li.movie.on').length - 1) {
			currentSelectIndex = 0;
		} else {
			currentSelectIndex++;
		}
		play();
	});
	$('#prev').click(function(){
		if (currentSelectIndex == 0){
			return false;
		}
		currentSelectIndex--;
		play();
	});
});
function onYouTubeIframeAPIReady() {
	player = new YT.Player('divPlayer', {
		height: '360',
		width: '640',
		events: {
			// 'onReady': onPlayerReady,
			'onStateChange': onPlayerStateChange
		}
	});
}
function onPlayerStateChange(e){
	if (e.data == YT.PlayerState.ENDED ) {
		$('#next').trigger('click');
	}
 }
