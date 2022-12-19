<?php
$id = $_GET['id'];

/**  @var PDO $db */
$db = require '../db.php';

$recipe = $db->query("SELECT * FROM recipes WHERE id = {$id}")->fetch(PDO::FETCH_ASSOC);
?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<form action="form.php" method="post">
    <?php require 'form.php'; ?>
</form>
</body>
</html>
