<?php
/** @var PDO  $db */
$db = require 'db.php';

$message = $_POST['message'];
$name = $_POST['name'];
$email = $_POST['email'];
$subject = $_POST['subject'];



$db->query("INSERT INTO contacts(message, name, email, subject) VALUES('{$message}', '{$name}', '{$email}', '{$subject}')");
mail('melissa.erdman@mail.ru', 'Get in Touch', $message, "From: $email");
header('Location: index.php');