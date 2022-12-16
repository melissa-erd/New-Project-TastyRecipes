<?php
/** @var PDO $db */
$id=$_GET['id'];
$db= require '../db.php';
$db->query("DELETE FROM recipes WHERE recipes.id={$id}" );
header('Location: /index.php');