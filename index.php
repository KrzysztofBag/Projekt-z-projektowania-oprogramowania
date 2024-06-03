<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
<?php

require "dbconnect.php";

?>


<form action="post">

    <label for="title">Tytuł</label>
    <input type="text" name="title" id="title">
    <input type="submit" value="Wyszukaj">

</form>


</body>
</html>