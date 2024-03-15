<?php
include 'dblogin.php';
$con = new mysqli($server, $user, $password, $database);

$ISBN = addslashes($_POST['ISBN']);
$authorsFirstName = addslashes($_POST['authorsFirstName']);
$authorsSurname = addslashes($_POST['authorsSurname']);
$title = addslashes($_POST['title']);

$search = "SELECT * FROM books WHERE ISBN='$ISBN' OR authorFirstName='$authorsFirstName' OR authorSurname='$authorsSurname' OR title='$title';";

$result = $con->query($search);
$books = mysqli_fetch_all($result, MYSQLI_ASSOC);
if ($books == null) {
  die("Hledaná kniha nenalezena<br><a href='searchBook.php'>Vrátit zpět</a>");
}

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
  <h2>Výsledek vyhledávání</h2>
  <?php
  foreach ($books as $book) {
    echo "<h3>" . $book["title"] . "<br>";
    echo $book["authorFirstName"] . " " . $book["authorSurname"] . "</h3>";
    echo "<p>" . $book["description"] . "</p>";
    echo "ISBN " . $book["ISBN"] . "<br><hr>";
  } ?>
</body>

</html>