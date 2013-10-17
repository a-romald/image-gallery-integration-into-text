<?php

$db = new PDO("mysql:host=localhost;dbname=db1",'root','');
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);
$db->exec('SET CHARACTER SET utf8');

?>