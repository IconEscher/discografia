<html>
<head>
    <meta charset="UTF-8">
    <title>getAlbum</title>
    <meta name="description" content="Pagina contenente gli album degli artisti">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="resources/js/bootstrap.bundle.js" type="text/javascript" ></script>
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
                        <li><a class="dropdown-item" href="InserisciAlbum.html">Inserisci Album</a></li>
                        <li><a class="dropdown-item" href="getAlbum.html">getAlbum</a></li>
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
                <img src="image/dreamtheater.jpg" class="d-block w-50" alt="dream theater band">
            </div>
            <div class="carousel-item">
                <img src="image/queen.jpg" class="d-block w-60" alt="...">
            </div>
            <div class="carousel-item">
                <img src="image/Led-Zeppelin.jpg" class="d-block w-60" alt="...">
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
<center> <h1>Album</h1> </center>
<br>
<br>
<br>
<!--Tabella album per la getAlbum-->
<table class="table table-dark">
    <thead>
        <div class="row align-items-start; border border-5">
            <div class="col">
                <center>Titolo</center>
            </div>
            <div class="col">
                <center>Artista</center>
            </div>
            <div class="col">
                <center>Durata</center>
            </div>
            <div class="col">
                <center>Genere</center>
            </div>
            <div class="col">
                <center>Anno</center>
            </div>
        </div>
    </thead>
    <tbody >
    <tr class="border border-5">
        <td>
            <center>Titolo album</center>
        </td>

        <td>
            <center>Artista album</center>
        </td>

        <td>
            <center>Durata dell'album</center>
        </td>

        <td>
            <center>Genere album</center>
        </td>

        <td>
            <center>Anno dell'album</center>
        </td>
    </tr>

    </tbody>
</table>
<br>
<br>
<br>
<br>
<!--questa è la seconda tabella, vedi quale preferisci-->
<div class="container">
    <div class="row align-items-start; border border-5">
        <div class="col">
          <center>Titolo</center>
        </div>
        <div class="col">
            <center>Artista</center>
        </div>
        <div class="col">
           <center>Durata</center>
        </div>
        <div class="col">
            <center>Genere</center>
        </div>
        <div class="col">
            <center>Anno</center>
        </div>
    </div>

    <div class="row align-items-end">
        <div class="col">
            Titolo album
        </div>
        <div class="col">
            Artista album
        </div>
        <div class="col">
            Durata dell'album
        </div>
        <div class="col">
            Genere album
        </div>
        <div class="col">
            One of three columns
        </div>
        <div class="col">
            Anno dell'album
        </div>
    </div>
</div>
</body>
</html>