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
              <a class="nav-link " href="kategorija.php?id=us" style="margin-left: 30px;">U.S</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="kategorija.php?id=world" style="margin-left: 30px;">World</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="administracija.php" style="margin-left: 30px;">Administracija</a>
            </li>  
            <li class="nav-item">
              <a class="nav-link" href="unos.php" style="margin-left: 30px;">Unos</a>
            </li>    
          </ul>
        </div>  
      </nav>
    </header>


<?php 
include 'connect.php'; 
$picture = $_FILES['pphoto']['name']; 
$title=$_POST['title']; 
$about=$_POST['about']; 
$content=$_POST['content']; 
$category=$_POST['category']; 
$date=date('d.m.Y.'); 
if(isset($_POST['archive'])){ 
$archive=1; 
}else{ 
$archive=0; 
} 
$target_dir = 'img/'.$picture;
move_uploaded_file($_FILES['pphoto']['tmp_name'], $target_dir);
$query = "INSERT INTO vijesti (datum, naslov, sazetak, tekst, slika, kategorija, arhiva ) VALUES ('$date', '$title', '$about', '$content', '$picture', '$category', '$archive')"; 
$result = mysqli_query($dbc, $query) or die('Error querying databese.'); 
mysqli_close($dbc); 
?>


<body>
    <div class="container">
        <section role="main">
            <div class="row">
                <p class="category"><?php
                                    echo $category;
                                    ?></p>
                <h1 class="title"><?php
                                    echo $title;
                                    ?></h1>
            </div>
            <section class="slika">
                <?php
                echo "<img src='img/$picture'";
                ?>
            </section><br>
            <section class="about">
                <p>
                    <?php
                    echo $category;
                    ?>
                </p>
            </section>
            <section class="sadrzaj">
                <p>
                    <?php
                    echo $content;
                    ?>
                </p>
            </section>
        </section>
    </div>
    <footer class="text-muted">
      <div class="container">
        <p class="float-right">
          <a href="#">Back to top</a>
        </p>
        <p>© 2021 Newsweek</p>
      </div>
    </footer>
</body>

</html>