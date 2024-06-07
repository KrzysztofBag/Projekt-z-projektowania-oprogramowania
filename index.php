<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Biblioteka Muzyki</title>
    <script src="./script.js" defer></script>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<div id="audiodiv">

</div>

<div id="obsluga">
    <form action="./index.php" method="post">
        <span>Po czym chcesz wyszukać</span>
        <br>
        <label for="tytul">Tytuł<input type="radio" name="tytul_autor" class='tytul_autor' id="tytul" value="nazwa"></label>
        <label for="autor">Autor<input type="radio" name="tytul_autor" class='tytul_autor' id="autor" value="Autor"></label>
        <input type="text" name="text" id="wyszukaj" style="display:none;">
        <br>
        <input type="submit" value="Szukaj" name="szukaj">
    </form>
</div>
    
<?php
require "dbconnect.php";

$con = mysqli_connect($host,$user,$password);
mysqli_select_db($con,$db);

if(isset($_POST['szukaj']))
{
    $wybor = $_POST['tytul_autor'];
    $text = $_POST['text'];
    $q = mysqli_query($con,"SELECT * FROM `biblioteka` WHERE biblioteka.$wybor LIKE '$text %'");
    while($row=mysqli_fetch_array($q))
    {
        echo "<div>";
        echo "<span>$row[1]</span>";
        echo "<input type='button' value='Wybierz' data-link='$row[2]' class='wybor' />";
        echo "</div>";
    }
}else
{
    $q = mysqli_query($con,"SELECT * from biblioteka");
    while($row=mysqli_fetch_array($q))
    {
        echo "<div>";
        echo "<span>$row[1]</span>";
        echo "<input type='button' value='Wybierz' data-link='$row[2]' class='wybor' />";
        echo "</div>";
    }
}
?>

</body>
</html>