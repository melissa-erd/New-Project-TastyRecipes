<?php
/** @var PDO $db */
$db= require '../db.php';

$id=$_POST['id'];
$name=$_POST['name'];
$category=$_POST['category'];
$time_needs=$_POST['time_needs'];
$small_descr=$_POST['small_descr'];
$big_descr=$_POST['big_descr'];

$db->query("UPDATE recipes SET name = '{$name}', category = '{$category}', time_needs = {$time_needs}, small_descr = '{$small_descr}', big_descr = '{$big_descr}' WHERE id = {$id}");
header('Location: /');
