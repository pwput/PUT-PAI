<?php session_start(); ?>
<!DOCTYPE html>
<html>
<head>
    <title>PHP</title>
    <meta charset='UTF-8'/>
</head>
<body>
<a href="user.php">user</a>
<?php
echo "<h1>Nasz system</h1>";

if (isset($_POST["wyloguj"]) && $_SESSION["zalogowany"] == 1) {
    $_SESSION["zalogowany"] = 0;
}
?>
<form action="logowanie.php" method="post">
    <label for="login">Login:</label><br>
    <input type="text" id="login" name="login"><br>
    <label for="password">Hasło:</label><br>
    <input type="password" id="password" name="password">
    <input type="submit" formmethod="POST" value="Zaloguj" name="send">
</form>
</body>
</html>