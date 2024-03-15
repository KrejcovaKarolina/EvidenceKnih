<!DOCTYPE html>
<html lang="cs">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Krejčová</title>
</head>

<body>
  <?php require "navigation.php"; ?>
  <h1>Vkládaní nových knih</h1>
  <form action="addBook.php" method="POST">
    <label>ISBN<br><input name="ISBN" type="text" maxlength="13"></label><br>
    <label>Křestní jméno autora<br><input name="authorsFirstName" type="text" maxlength="20"></label><br>
    <label>Přijmení autora<br><input name="authorsSurname" type="text" maxlength="20"></label><br>
    <label>Název knihy<br><input name="title" type="text" maxlength="100"></label><br>
    <label>Popis<br><textarea name="description" id="" cols="50" rows="7" maxlength="2000"></textarea></label><br>
    <input type="submit" value="Přidat knihu">
  </form>
</body>

</html>