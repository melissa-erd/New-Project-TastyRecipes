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
<h3><a id="insert" href="form_create.php">Добавить</a><br></h3>
<table border="1" width="1600" style="border-collapse:collapse;">
    <thead>
    <tbody>
    <tr>
        <th>№</th>
        <th>Название</th>
        <th>Категория</th>
        <th>Время</th>
        <th>Предисловие</th>
        <th>Описание</th>
        <th></th>
    </tr>
    <?php

    $db = require '../db.php';

    $items = $db->query("SELECT * FROM recipes")->fetchAll(PDO::FETCH_ASSOC);
    foreach ($items as $item):?>

        <tr>
            <td><?= $item['id']?></td>
            <td><?= $item['name']?></td>
            <td><?= $item['category']?></td>
            <td><?= $item['time_needs']?></td>
            <td><?= $item['small_descr']?></td>
            <td><?= $item['big_descr']?></td>
            <td><a href="delete_recipes.php?id=<?=$item['id']?>">Удалить</a><br><a href="form_edit.php?id=<?=$item['id']?>">Редактировать</a></td>
        </tr>

    <?php endforeach;?>

    </tbody>
    </thead>
</table>

</body>
</html>

