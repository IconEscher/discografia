<html>
<head>

    <meta charset="UTF-8">
    <title>Inserisci album artista</title>
    <meta name="description" content="Pagina contenente gli album degli artisti">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="js/bootstrap.bundle.js" type="text/javascript" ></script>
    <script src="js/script1.js" type="text/javascript"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.css">

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
          <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="seconda.jsp">Artisti</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="seconda.jsp" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Album
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="InserisciAlbum.jsp">Inserisci Album</a></li>
            <li><a class="dropdown-item" href="getAlbum.jsp">Ricerca Album</a></li>
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
        <img src="/resources/image/dreamtheater.jpg" class="d-block w-50" alt="dream theater band">
      </div>
      <div class="carousel-item">
        <img src="/resources/image/queen.jpg" class="d-block w-60" alt="...">
      </div>
      <div class="carousel-item">
        <img src="/resources/image/Led-Zeppelin.jpg" class="d-block w-60" alt="...">
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

<center><h1>Inserisci l'album</h1></center>
<br>
<br>
<p style="text-align: center;"><i>Benvenuti, amanti della musica! <br>
  In questa pagina potrete inserire gli album dei vostri artisti preferiti e votarli!</i></p>
    <form class="row g-3 d-flex justify-content-center align-items-center container ">
            <div class="col-auto">
              <label for="input2" class="visually-hidden">Inserisci artista</label>
              <input type="text" class="form-control" id="input1" placeholder="Artista">
            </div>
            <div class="col-auto">
              <label for="input2" class="visually-hidden">Inserisci Titolo Album</label>
              <input type="text" class="form-control" id="input2" placeholder="Titolo album">
            </div>
            <div class="col-auto">
              <label for="input2" class="visually-hidden">Inserisci durata album</label>
              <input type="text" class="form-control" id="input3" placeholder="Durata">
            </div>
            <div class="col-auto">
                <label for="input4" class="visually-hidden">Inserisci genere</label>
                <input type="text" class="form-control" id="input4" placeholder="Genere">
            </div>
            <div class="col-auto">
                <label for="input5" class="visually-hidden">Inserisci anno pubblicazione</label>
                <input type="text" class="form-control" id="input5" placeholder="Anno pubblicazione">
            </div>

     <div class="d-flex justify-content-center align-items-center container">
         <div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                <label class="form-check-label" for="inlineRadio1">1</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                <label class="form-check-label" for="inlineRadio2">2</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3">
                <label class="form-check-label" for="inlineRadio3">3</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio4" value="option4">
                <label class="form-check-label" for="inlineRadio4">4</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio5" value="option5">
                <label class="form-check-label" for="inlineRadio5">5</label>
            </div>
        </div>
        </div>
    </form>
<br>
<br>
<center> <div class="col-auto">
    <form action="/registerAlbum" data-th-action="@{/registerAlbum}" data-th-object="${Album}" method="post">
        <button type="submit" name="aggiungi">Aggiungi</button>
    </form>
</div>

</center>
<br>
<br>
<br>
<footer class="bg-dark text-center text-white">

    <!-- Copyright -->
    <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
        ?? 2021 Copyright
    </div>
    <!-- Copyright -->
</footer>
</body>
</html>