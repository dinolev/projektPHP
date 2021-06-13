<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="icon" href="favicon.ico">

  <title>Unos</title>

  <link href="dist/css/bootstrap.min.css" rel="stylesheet">

  <link href="style.css" rel="stylesheet">
</head>
<style>
  form .bojaPoruke {
    color: #ff0000;
  }
</style>
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
  <div class="container">
    <form enctype="multipart/form-data" action="skripta.php" method="POST">
      <div class="form-item">
        <span id="porukaTitle" class="bojaPoruke"></span>
        <label for="title">Naslov vijesti</label>
        <div class="form-field">
          <input type="text" name="title" id="title" class="formfield-textual">
        </div>
      </div>
      <div class="form-item">
        <span id="porukaAbout" class="bojaPoruke"></span>
        <label for="about">Kratki sadržaj vijesti</label>
        <div class="form-field">
          <textarea name="about" id="about" cols="30" rows="10" class="form-field-textual"></textarea>
        </div>
      </div>
      <div class="form-item">
        <span id="porukaContent" class="bojaPoruke"></span>
        <label for="content">Sadržaj vijesti</label>
        <div class="form-field">
          <textarea name="content" id="content" cols="30" rows="10" class="form-field-textual"></textarea>
        </div>
      </div>
      <div class="form-item">
        <span id="porukaSlika" class="bojaPoruke"></span>
        <label for="pphoto">Slika: </label>
        <div class="form-field">
          <input type="file" class="input-text" id="pphoto" name="pphoto" />
        </div>
      </div>
      <div class="form-item">
        <span id="porukaKategorija" class="bojaPoruke"></span>
        <label for="category">Kategorija vijesti</label>
        <div class="form-field">
          <select name="category" id="category" class="form-fieldtextual">
            <option value="" disabled selected>Odabir kategorije</option>
            <option value="US">U.S.</option>
            <option value="world">World</option>
          </select>
        </div>
      </div>
      <div class="form-item">
        <label>Spremiti u arhivu:
          <div class="form-field">
            <input type="checkbox" name="archive" id="archive">
          </div>
        </label>
      </div>
      <div class="form-item">
        <button type="reset" value="Poništi">Poništi</button>
        <button type="submit" value="Prihvati" id="slanje">Prihvati</button>
      </div>
    </form>
  </div>

  <script type="text/javascript">
    // Provjera forme prije slanja
    document.getElementById("slanje").onclick = function(event) {

      var slanjeForme = true;

      // Naslov vjesti (5-30 znakova)
      var poljeTitle = document.getElementById("title");
      var title = document.getElementById("title").value;
      if (title.length < 5 || title.length > 30) {
        slanjeForme = false;
        poljeTitle.style.border = "1px dashed red";
        document.getElementById("porukaTitle").innerHTML = "Naslov vijesti mora imati između 5 i 30 znakova!<br>";
      } else {
        poljeTitle.style.border = "1px solid green";
        document.getElementById("porukaTitle").innerHTML = "";
      }

      // Kratki sadržaj (10-100 znakova)
      var poljeAbout = document.getElementById("about");
      var about = document.getElementById("about").value;
      if (about.length < 10 || about.length > 100) {
        slanjeForme = false;
        poljeAbout.style.border = "1px dashed red";
        document.getElementById("porukaAbout").innerHTML = "Kratki sadržaj mora imati između 10 i 100 znakova!<br>";
      } else {
        poljeAbout.style.border = "1px solid green";
        document.getElementById("porukaAbout").innerHTML = "";
      }
      // Sadržaj mora biti unesen
      var poljeContent = document.getElementById("content");
      var content = document.getElementById("content").value;
      if (content.length == 0) {
        slanjeForme = false;
        poljeContent.style.border = "1px dashed red";
        document.getElementById("porukaContent").innerHTML = "Sadržaj mora biti unesen!<br>";
      } else {
        poljeContent.style.border = "1px solid green";
        10
        document.getElementById("porukaContent").innerHTML = "";
      }
      // Slika mora biti unesena
      var poljeSlika = document.getElementById("pphoto");
      var pphoto = document.getElementById("pphoto").value;
      if (pphoto.length == 0) {
        slanjeForme = false;
        poljeSlika.style.border = "1px dashed red";
        document.getElementById("porukaSlika").innerHTML = "Slika mora biti unesena!<br>";
      } else {
        poljeSlika.style.border = "1px solid green";
        document.getElementById("porukaSlika").innerHTML = "";
      }
      // Kategorija mora biti odabrana
      var poljeCategory = document.getElementById("category");
      if (document.getElementById("category").selectedIndex == 0) {
        slanjeForme = false;
        poljeCategory.style.border = "1px dashed red";

        document.getElementById("porukaKategorija").innerHTML = "Kategorija mora biti odabrana!<br>";
      } else {
        poljeCategory.style.border = "1px solid green";
        document.getElementById("porukaKategorija").innerHTML = "";
      }

      if (slanjeForme != true) {
        event.preventDefault();
      }

    };
  </script>

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