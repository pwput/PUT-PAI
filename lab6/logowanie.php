<?php session_start();

if (isset($_POST["send"])) {
    $login = $_POST["login"];
    $password = $_POST["password"];

    //echo 'Przesłany login: ' . $_POST["login"] . "<br>";
    // echo 'Przeslane haslo: ' . $_POST["password"] . "<br>";

    require("funkcje.php");
    $_SESSION["zalogowany"] = 0;
    foreach ($osoby as $osoba) {
        if ($_POST["login"] == $osoba->login && $_POST["password"] == $osoba->haslo) {
            $_SESSION["zalogowanyImie"] = $osoba->imieNazwisko;
            $_SESSION["zalogowany"] = 1;
            header("Location: user.php");
        }
    }

}
if ($_SESSION["zalogowany"] == 0) {
    header("Location: index.php");
}
?>