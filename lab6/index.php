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


if (isset($_COOKIE["time"])) {
    echo "Zapisane cookie: " . $_COOKIE["time"];
}


if (isset($_POST["wyloguj"]) && $_SESSION["zalogowany"] == 1) {
    $_SESSION["zalogowany"] = 0;
}
?>
<form action="logowanie.php" method="post">
    <fieldset>
        <legend>Logowanie</legend>
        <label for="login">Login:</label>
        <input type="text" id="login" name="login">
        <br>
        <label for="password">Hasło:</label>
        <input type="password" id="password" name="password">
        <input type="submit" formmethod="POST" value="Zaloguj" name="send">
    </fieldset>
</form>
<form action="cookie.php" method="get">
    <fieldset>
        <legend>Cookie Time</legend>
        <label for="time">Czas:</label>
        <input type="number" id="time" name="time">
        <input type="submit" name=create" value="Utworz Cookie">
    </fieldset>
</form>
</body>
</html>