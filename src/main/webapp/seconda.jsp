<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Artisti</title>
  <meta name="description" content="Pagina contenente informazioni artisti">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="resources/js/bootstrap.bundle.js" type="text/javascript"></script>
  <script src="resources/js/script1.js" type="text/javascript"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <link rel="stylesheet" href="resources/css/bootstrap.css">

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Cerca</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.html">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="seconda.html">Artisti</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="seconda.html" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Album
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Chi siamo</a>
        </li>
      </ul>
      <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>

<center>
  <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="../../../image/dreamtheater.jpg" class="d-block w-50" alt="dream theater band">
      </div>
      <div class="carousel-item">
        <img src="../../../image/queen.jpg" class="d-block w-60" alt="...">
      </div>
      <div class="carousel-item">
        <img src="../../../image/Led-Zeppelin.jpg" class="d-block w-60" alt="...">
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" style="" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>
</center>

<h1 style="text-align: center;">Artisti</h1>
<center><p>Scegli di quale artista ti servono le informazioni:</p></center>
<ul>
  <img src="image/dtlogo.jpg" class="d-block w-60" alt="...">
  <ol>Biografia</ol>
  <ol><a href="https://dreamtheater.net/discography/">Discografia</a></ol>
  <br>
  <br>
  <img src="../../../image/Led-Zeppelin.png" class="d-block w-20" alt="...">
  <ol><a href="https://it.wikipedia.org/wiki/Led_Zeppelin">Biografia</a></ol>
  <ol><a href="https://dreamtheater.net/discography/">Discografia</a></ol>
  <br>
  <br>
  <img src="../../../image/queenlogo1.png" class="d-block w-20" alt="...">
</ul>
<!--[if lt IE 7]>
<p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="#">upgrade your browser</a> to improve your experience.</p>
<![endif]-->

<script src="" async defer></script>
</body>
</html>