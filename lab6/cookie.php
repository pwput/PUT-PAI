<?php session_start(); ?>
<!DOCTYPE html>
<html>
<head>
    <title>PHP</title>
    <meta charset='UTF-8'/>
</head>
<body>
<a href="index.php">wstecz</a>
<br>
<?php
require_once("funkcje.php");
if (isset($_GET["time"])) {
    $time = $_GET["time"];
    setcookie("time", $time , time() + (10), "/");
    echo "ustawiono cookie time na: " . $_GET["time"];
}
echo "Cookie";
?>
</body>
</html>