<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Home Pages</title>
  <link rel="stylesheet" href="../css/styles.css">
</head>

<body>
    <div id="overlay" class="overlay"></div>
    <?php 
      require_once('login.php');
      require_once('register.php')
    ?>
    <button id="login">Login</button>
    <button id="register">Register</button>
<script src="../js/handlemodal.js"></script>
</body>
</html>