<?php

/** @var PDO $db */
$db = require '../db.php';
$name = $_POST['name'];
$category = $_POST['category'];
$time_needs = $_POST['time_needs'];
$small_descr = $_POST['small_descr'];
$big_descr = $_POST['big_descr'];

$db->query("INSERT INTO `recipes`(`name`, `category`, `time_needs`, `small_descr`, `big_descr`) VALUES('{$name}', '{$category}', '{$time_needs}', '{$small_descr}', '{$big_descr}')");

header('Location: index.php');
