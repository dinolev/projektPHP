<!DOCTYPE html>
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
<div class="album py-5 bg-light">
<?php

include 'connect.php';

session_start();

if(isset($_POST['submit'])){
    $ime = $_POST['ime'];
    $prezime = $_POST['prezime'];
    $username = $_POST['username'];
    $lozinka = $_POST['pass'];
    $hashed_password = password_hash($lozinka, CRYPT_BLOWFISH);
    $razina = 0;
    $registriranKorisnik = '';
    //Provjera postoji li u bazi već korisnik s tim korisničkim imenom
}
$sql = "SELECT korisnickoIme FROM korisnik WHERE korisnickoIme = ?";
$stmt = mysqli_stmt_init($dbc);
if (mysqli_stmt_prepare($stmt, $sql)) {
 mysqli_stmt_bind_param($stmt, 's', $username);
 mysqli_stmt_execute($stmt);
 mysqli_stmt_store_result($stmt);
 }
if(mysqli_stmt_num_rows($stmt) > 0){
 $msg='Korisničko ime već postoji!';
}else{
 // Ako ne postoji korisnik s tim korisničkim imenom - Registracija korisnika u bazi pazeći na SQL injection
 $sql = "INSERT INTO korisnik (ime, prezime, korisnickoIme, lozinka, razina) VALUES (?, ?, ?, ?, ?)";
 $stmt = mysqli_stmt_init($dbc);
 $msg = "";
 if (mysqli_stmt_prepare($stmt, $sql)) {
 mysqli_stmt_bind_param($stmt, 'ssssd', $ime, $prezime, $username, 
$hashed_password, $razina);
 mysqli_stmt_execute($stmt);
 $registriranKorisnik = true;
 }
}





?>

   <div class="container">
  
<form enctype="multipart/form-data" action="registracija.php" method="POST" class="forma">
    <div class="form-item">
        <label for="ime">Ime: </label>
        <div class="form-field">
             <input type="text" name="ime" id="ime" class="form-field-textual">
        </div>
        <span id="porukaIme" class="bojaPoruke"></span>
    </div>
    <div class="form-item">
        <label for="prezime">Prezime: </label>
        <div class="form-field">
            <input type="text" name="prezime" id="prezime" class="form-field-textual">
        </div>
        <span id="porukaPrezime" class="bojaPoruke"></span>
    </div>
    <div class="form-item">

        <label for="username">Korisničko ime:</label>
         <div class="form-field">
            <input type="text" name="username" id="username" class="form-field-textual">
        </div>
        <span id="porukaUsername" class="bojaPoruke"></span>
        <?php echo '<span class="bojaPoruke">'.$msg.'</span>'; ?>
    </div>
    <div class="form-item">
        <label for="pass">Lozinka: </label>
        <div class="form-field">
            <input type="password" name="pass" id="pass" class="form-field-textual">
        </div>
        <span id="porukaPass" class="bojaPoruke"></span>
    </div>
    <div class="form-item">
        <label for="passRep">Ponovite lozinku: </label>
        <div class="form-field">
            <input type="password" name="passRep" id="passRep"class="form-field-textual">
        </div>
        <span id="porukaPassRep" class="bojaPoruke"></span>
    </div>
    <br>
    <div class="form-item">
        <button type="submit" value="Prijava" id="slanje" name="submit">Registracija</button>
    </div>
 </form>
 
   </div>
   <div class="footer">
        <div class="container">
            <hr/>
            <p style="text-align: center; color:white; padding-top:20px;">Le Monde</p>
        </div>
   </div>
   <script type="text/javascript">
 // Provjera forme prije slanja
 document.getElementById("slanje").onclick = function(event) {
 
    var slanjeForme = true;
 
 // Ime korisnika mora biti uneseno
 var poljeIme = document.getElementById("ime");
 var ime = document.getElementById("ime").value;
 if (ime.length == 0) {
 slanjeForme = false;
 poljeIme.style.border="1px dashed red";
 document.getElementById("porukaIme").innerHTML="Unesite ime!";
 document.getElementById("porukaIme").style.color="red";
 } else {
 poljeIme.style.border="1px solid green";
 document.getElementById("porukaIme").innerHTML="";
 }
 // Prezime korisnika mora biti uneseno
 var poljePrezime = document.getElementById("prezime");
 var prezime = document.getElementById("prezime").value;
 if (prezime.length == 0) {
 slanjeForme = false;
 poljePrezime.style.border="1px dashed red";
 
document.getElementById("porukaPrezime").innerHTML="Unesite Prezime!";
document.getElementById("porukaPrezime").style.color="red";
 } else {
 poljePrezime.style.border="1px solid green";
 document.getElementById("porukaPrezime").innerHTML="";
 }
 
 // Korisničko ime mora biti uneseno
 var poljeUsername = document.getElementById("username");
 var username = document.getElementById("username").value;
 if (username.length == 0) {
 slanjeForme = false;
 poljeUsername.style.border="1px dashed red";
 
document.getElementById("porukaUsername").innerHTML="Unesite korisničko ime!";
document.getElementById("porukaUsername").style.color="red";
 } else {
 poljeUsername.style.border="1px solid green";
 document.getElementById("porukaUsername").innerHTML="";
 }
 
 // Provjera podudaranja lozinki
 var poljePass = document.getElementById("pass");
 var pass = document.getElementById("pass").value;
 var poljePassRep = document.getElementById("passRep");
 var passRep = document.getElementById("passRep").value;
 if (pass.length == 0 || passRep.length == 0 || pass != passRep) {
 slanjeForme = false;
 poljePass.style.border="1px dashed red";
 poljePassRep.style.border="1px dashed red";
 document.getElementById("porukaPass").innerHTML="Lozinke nisu iste!";
 document.getElementById("porukaPass").style.color="red";
document.getElementById("porukaPassRep").innerHTML="Lozinke nisu iste!";
document.getElementById("porukaPassRep").style.color="red";
 } else {
 poljePass.style.border="1px solid green";
 poljePassRep.style.border="1px solid green";
 document.getElementById("porukaPass").innerHTML="";
 document.getElementById("porukaPassRep").innerHTML="";
 }
 
 if (slanjeForme != true) {
 event.preventDefault();
 }
 };
 </script>

</div>
</body>


<footer class="text-muted">
      <div class="container">
        <p class="float-right">
          <a href="#">Back to top</a>
        </p>
        <p>© 2021 Newsweek</p>
      </div>
    </footer>
</html>