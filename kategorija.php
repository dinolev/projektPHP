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






    <main role="main">
    <div class="album py-5 bg-light">
    <?php 
include 'connect.php'; 
define('UPLPATH', 'img/'); 
?> 
<section class="container"> 
<?php 
$kategorija=$_GET['id'];
$query = "SELECT * FROM vijesti WHERE kategorija='".$kategorija."' "; 
$result = mysqli_query($dbc, $query); 

if($kategorija=="us"){
    echo '<h1 class="">U.S.</h1>';

}else
echo '<h1 class="">World</h1>';
$brojac=1;
echo '<div class="row">';
while($row = mysqli_fetch_array($result)) { 
   
    
    echo'<a href="clanak.php?id='.$row['id'].'"> 
    <div class="col-md-12">
    <div class="card mb-4 box-shadow" style="max-width:350px; height:300px;">
      <img class="card-img-top" style="height: 300px; " src="' . UPLPATH . $row['slika'] . '" alt="">
      <div class="card-body" ">
        <p class="card-text">'.$row['naslov'].'</p>
        <div class="d-flex justify-content-between align-items-center">
         </div>
        </div>
      </div>
    </div>';
 
  echo '</a>';
}
echo '</div>';
?> 
</section>

</div>

    </main>


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
    <script>window.jQuery || document.write('<script src="../../../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="js/vendor/popper.min.js"></script>
    <script src="dist/js/bootstrap.min.js"></script>
    <script src="js/vendor/holder.min.js"></script>
  </body>
</html>
