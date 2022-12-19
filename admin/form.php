<?php
$id = $_GET['id']??'';
/** @var PDO $db */
$db = require '../db.php';
$recipes = $db->query("SELECT * FROM `recipes` WHERE `id` = '$id'")->fetch(PDO::FETCH_ASSOC);
?>
<form action="edit.php" method="post">
<input type="hidden" name="id" value="<?= $recipes['id'] ??''?>">
<input value="<?= $recipes['name'] ??''?>" type="text" name="name" placeholder="Название">
<input value="<?= $recipes['category'] ??''?>" type="text" name="category" placeholder="Категория">
<input value="<?= $recipes['time_needs'] ??''?>" type="text" name="time_needs" placeholder="Время">
<input value="<?= $recipes['small_descr'] ??''?>" type="text" name="small_descr" placeholder="Предисловие">
<input value="<?= $recipes['big_descr'] ??''?>" type="text" name="big_descr" placeholder="Описание">
    <input type="submit" value="Сохранить">
    <a href="index.php">Вернуться</a>
</form>

