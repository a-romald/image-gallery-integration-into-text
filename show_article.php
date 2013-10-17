<?php
require_once 'config_db.php';
require_once 'bb_code.php';

$id = !empty($_GET['id']) ? (int) $_GET['id'] : 1;

try {
    $sth = $db->prepare("SELECT * FROM articles WHERE id = ?");
    $sth->execute(array($id));
    $result = $sth->fetch(PDO::FETCH_ASSOC);
    $db = null;
}
catch(PDOException $e){
	echo $e->getMessage();
}


?>


<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.fancybox.pack.js"></script>
    <script type="text/javascript" src="js/gallery.js"></script>
    <link rel="stylesheet" href="css/jquery.fancybox.css"/>
    <link rel="stylesheet" href="css/styles.css"/>
	<title>Page</title>
</head>

<body>

<div class="article">

<h3><?=$result['title'];?></h3>
<p class="date">Added: <?=date("d.m.Y H:i:s", $result['created']);?></p>
<div><?=bb_tags($result['content']);?></div>

</div>

</body>
</html>
