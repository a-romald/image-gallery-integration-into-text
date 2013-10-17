<?php
require_once 'config_db.php';

try {
    $title = $_POST['title'];
    $content = $_POST['content'];
    $created = time();
    
    $st = $db->prepare("INSERT INTO articles (title, content, created) VALUES (:title, :content, :created)");
    if ($st->execute( array( ':title' => $title, ':content' => $content, ':created' => $created) )) {
        echo 'Data inserted';
    }
    $db = null;
}
catch(PDOException $e){
	echo $e->getMessage();
}

?>