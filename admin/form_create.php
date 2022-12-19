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
<h1>Добавление рецепта</h1>
<form action="create.php" method="post">
    <input type="text" name="name" placeholder="Название">
    <input type="text" name="category" placeholder="Категория">
    <input type="text" name="time_needs" placeholder="Время">
    <input type="text" name="small_descr" placeholder="Предисловие">
    <input type="text" name="big_descr" placeholder="Описание">
    <input type="submit" value="Сохранить">

</form>
</body>
</html>
