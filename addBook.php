<?php
include 'dblogin.php';
$mgs = "";
if (!($con = mysqli_connect($server, $user, $password, $database))) {
  die('Nelze se připojit k databázovému serveru');
}
mysqli_query($con, "SET NAMES 'utf8'");
if (mysqli_query(
  $con,
  "INSERT INTO books(ISBN, authorFirstName, authorSurname, title,description) VALUES('" .
    mysqli_escape_string($con, $_POST["ISBN"]) . "','" .
    mysqli_escape_string($con, $_POST["authorsFirstName"]) . "','" .
    mysqli_escape_string($con, $_POST["authorsSurname"]) . "','" .
    mysqli_escape_string($con, $_POST["title"]) . "','" .
    mysqli_escape_string($con, $_POST["description"]) . "')"
)) {
  $msg = "Kniha byla úspěsně přidaná.<br><a href='insertBook.php'>Přidat další knihu</a><br><a href='index.php'>Přejít na domovskou stránku</a>";
} else {
  $msg = "Knihu nelze přidat" . mysqli_error($con);
  mysqli_close($con);
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
  <?php echo $msg ?>
</body>

</html>