<?php session_start(); ?>
<!DOCTYPE html>
<html>
<head>
    <title>PHP</title>
    <meta charset='UTF-8'/>
</head>
<body>
<a href="index.php">index</a><br>
<?php
if ($_SESSION["zalogowany"] == 0) {
    header("Location: index.php");
}
echo "Hello: ";
echo $_SESSION["zalogowanyImie"];
?>

<form action="user.php" method="POST" enctype="multipart/form-data">
    <fieldset>
        <legend>Ustaw awatar</legend>
        <input name="myfile" type="file"><br>
        <input type="submit" value="Upload image" name="upload">
    </fieldset>
</form>
<br>
<?php
if (isset($_POST["upload"])) {
    $currentDir = getcwd();
    $uploadDir = "/userphotos/";
    $fileName = $_FILES['myfile']['name'];
    $fileSize = $_FILES['myfile']['size'];
    $fileTmpName = $_FILES['myfile']['tmp_name'];
    $fileType = $_FILES['myfile']['type'];
    if ($fileName != "" and
        ($fileType == 'image/png' or $fileType == 'image/jpeg'
            or $fileType == 'image/JPEG' or $fileType == 'image/PNG'
        )) {
        $uploadPath = $currentDir . $uploadDir . $fileName;
        if (move_uploaded_file($fileTmpName, $uploadPath))
            echo "Zdjęcie zostalo zaladowane na serwer FTP <br>";
        echo "<img src=userphotos/" . $_FILES['myfile']['name'] . " alt='wgrany plik'>";
    } else {
        echo "Miejsce na zdjęcie";
    }
}
?>

<form action="index.php" method="post">
    <input type="submit" value="wyloguj" name="wyloguj">
</form>
</body>
</html>