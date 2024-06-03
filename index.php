<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Biblioteka Muzyki</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    
<?php
require "dbconnect.php";

$con = mysqli_connect($host,$user,$password);
mysqli_select_db($con,$db);

if(isset($_POST['wyszukaj']))
{

}else
{
    $q = mysqli_query($con,"SELECT * from biblioteka");
    while($row=mysqli_fetch_array($q))
    {
        echo "<div>";
        echo "<span>$row[1]<span/>";
        echo "<input type='button' value='Wybierz' data-link='$row[2]'";
        echo "</div>";
    }
}
?>


<script src="./script.js"></script>

</body>
</html>