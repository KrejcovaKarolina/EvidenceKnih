<?php
include 'dblogin.php';
$msg = "";
if (!($con = mysqli_connect($server, $user, $password, $database))) {
  die('Nelze se připojit k databázovému serveru');
}
if (!($result = mysqli_query($con, "SELECT * FROM books;"))) {
  die("Dotaz nelze provést");
}
$books = mysqli_fetch_all($result, MYSQLI_ASSOC);
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Krejčová</title>
</head>

<body>
  <?php require "navigation.php"; ?>
  <h1>Přehled knih</h1>
  <?php foreach ($books as $book) {
    echo "<h3>" . $book["title"] . "<br>";
    echo $book["authorFirstName"] . " " . $book["authorSurname"] . "</h3>";
    echo "<p>" . $book["description"] . "</p>";
    echo "ISBN " . $book["ISBN"] . "<br><hr>";
  } ?>
</body>

</html>