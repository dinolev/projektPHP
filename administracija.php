<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="icon" href="favicon.ico">

  <title>Newsweek</title>

  <link href="dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="style.css" rel="stylesheet">
</head>

<body>

<header>
      <div class="jumbotron text-center" style="margin-bottom:0;background-color:red;">
        <h1 style="color:white; font-family: Georgia, 'Times New Roman', Times, serif;">Newsweek</h1>
      </div>
      
      <nav class="navbar navbar-expand-sm bg-light navbar-light">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-center" id="collapsibleNavbar">
          <ul class="nav nav-pills nav-justified">
            <li class="nav-item">
              <a class="nav-link " href="index.php" style="margin-left: 30px;">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link " href="kategorija.php?id=us" style="margin-left: 30px;">U.S.</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="kategorija.php?id=world" style="margin-left: 30px;">World</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="unos.php" style="margin-left: 30px;">Unos</a>
            </li>  
            <li class="nav-item">
              <a class="nav-link" href="registracija.php" style="margin-left: 30px;">Registracija</a>
            </li>  
            <li class="nav-item">
              <a class="nav-link" href="prijavaForma.php" style="margin-left: 30px;">Prijava</a>
            </li>  
          </ul>
        </div>  
      </nav>
    </header>


  <body>
    <?php
    session_start();
    include 'connect.php';
    define('UPLPATH', 'img/');
    $query = "SELECT * FROM vijesti";
    $result = mysqli_query($dbc, $query);
    while ($row = mysqli_fetch_array($result)) {
      echo '<form class= "container" enctype="multipart/form-data" action="administracija.php" method="POST"> 
<div class="form-item"> 
<label for="title">Naslov vjesti:</label> 
<div class="form-field"> 
<input type="text" name="title" class="form-field-textual" value="' . $row['naslov'] . '"> 
</div> 
</div> 
<div class="form-item"> 
<label for="about">Kratki sadržaj vijesti (do 50 znakova):</label> 
<div class="form-field"> 
<textarea name="about" id="" cols="30" rows="10" class="form-field-textual">' . $row['sazetak'] . '</textarea> 
</div> 
</div> 
<div class="form-item"> 
<label for="content">Sadržaj vijesti:</label> 
<div class="form-field"> 
<textarea name="content" id="" cols="30" rows="10" class="form-field-textual">' . $row['tekst'] . '</textarea> 
</div> 
</div> 
<div class="form-item"> 
<label for="pphoto">Slika:</label> 
<div class="form-field">
<input type="file" class="input-text" id="pphoto" value="' . $row['slika'] . '" name="pphoto"/> <br><img src="' . UPLPATH . $row['slika'] . '" width=100px> 

</div>
</div> 
<div class="form-item"> 
<label for="category">Kategorija vijesti:</label> 
<div class="form-field"> 
<select name="category" id="" class="form-field-textual" value="' . $row['kategorija'] . '"> 
<option value="US">US</option> 
<option value="world">world</option> 
</select> 
</div> 
</div> 
<div class="form-item"> 
<label>Spremiti u arhivu: 
<div class="form-field">';
      if ($row['arhiva'] == 0) {
        echo '<input type="checkbox" name="archive" id="archive"/> Arhiviraj?';
      } else {
        echo '<input type="checkbox" name="archive" id="archive" checked/> Arhiviraj?';
      }
      echo '</div> 
</label> 
</div> 
</div> 
<div class="form-item"> 
<input type="hidden" name="id" class="form-field-textual" value="' . $row['id'] . '"> 
<button type="reset" value="Poništi">Poništi</button> 
<button type="submit" name="update" value="Prihvati"> Izmjeni</button> 
<button type="submit" name="delete" value="Izbriši"> Izbriši</button><br> <br> <br> <br>  
</div> 
</form>';
    }
    if (isset($_POST['delete'])) {
      $id = $_POST['id'];
      $query = "DELETE FROM vijesti WHERE id=$id ";
      $result = mysqli_query($dbc, $query);
    }

    if (isset($_POST['update'])) {
      $picture = $_FILES['pphoto']['name'];
      $title = $_POST['title'];
      $about = $_POST['about'];
      $content = $_POST['content'];
      $category = $_POST['category'];
      if (isset($_POST['archive'])) {
        $archive = 1;
      } else {
        $archive = 0;
      }
      $target_dir = 'img/' . $picture;
      move_uploaded_file($_FILES["pphoto"]["tmp_name"], $target_dir);
      $id = $_POST['id'];
      $query = "UPDATE vijesti SET naslov='$title', sazetak='$about', tekst='$content', slika='$picture', kategorija='$category', arhiva='$archive' WHERE id=$id ";
      $result = mysqli_query($dbc, $query);
    }


    ?>
  </body>



  <footer class="text-muted">
    <div class="container">
      <p class="float-right">
        <a href="#">Back to top</a>
      </p>
      <p>© 2021 Newsweek</p>
    </div>
  </footer>

  <!-- Bootstrap core JavaScript
    ================================================== -->
  <!-- Placed at the end of the document so the pages load faster -->
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script>
    window.jQuery || document.write('<script src="../../../../assets/js/vendor/jquery-slim.min.js"><\/script>')
  </script>
  <script src="js/vendor/popper.min.js"></script>
  <script src="dist/js/bootstrap.min.js"></script>
  <script src="js/vendor/holder.min.js"></script>
</body>

</html>