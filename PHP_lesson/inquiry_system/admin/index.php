<?php
require_once('../config.php');
require_once('../functions.php');

$dbh = connectDb();
$entries = array();

$sql = "select * from inquiry where status = 'active' order by created_at desc";

foreach ($dbh->query($sql) as $row) {
	array_push($entries, $row);
}
// var_dump($entries);

?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>お問い合わせ一覧</title>
		<style media="screen">
			.deleteLink {
				color: blue;
				cursor: pointer;
			}
		</style>
	</head>
	<body>
		<h1>データ一覧</h1>
		<p>
			<span id="count"><?php echo count($entries); ?></span> 件あります。
		</p>
		<ul>
			<?php foreach ($entries as $entry) { ?>
				<li id="entry_<?php echo h($entry['id']) ?>">
					<?php echo h($entry['email']); ?>
					<a href="admin/edit.php?id=<?php echo h($entry['id']) ?>">[編集]</a>
					<span class="deleteLink" data-id="<?php echo h($entry['id']) ?>">[削除]</span>
				</li>
			<?php } ?>
		</ul>
		<p>
			<a href="<?php echo SITE_URL; ?>">お問い合わせフォームへ</a>
		</p>
		<script src="js/jquery-3.1.0.js"></script>
		<script type="text/javascript">
			$(function(){
				$('.deleteLink').click(function(){
					if (confirm("削除しますか？")) {
						var num = $('#count').text();
						num--;
						$.post('admin/delete.php',{
							id : $(this).data('id')
						},function(rs){
							$('#entry_' + rs).fadeOut(800);
							$('#count').text(num);
						});
					}
				})
			});
		</script>
	</body>
</html>
