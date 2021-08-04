<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Discografie</title>
    <meta name="description" content="Discografie di artisti">
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
                    <a class="nav-link active" aria-current="page" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="seconda.jsp">Artisti</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="seconda.jsp" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Album
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="album.jsp">Cerca album</a></li>
                        <li><a class="dropdown-item" href="${pageContext.request.contextPath}/getAlbums">getAlbums</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="getAlbum/3">Get album id</a></li>

                        <li><a class="dropdown-item" href="InserisciAlbum.jsp">Inserisci album</a></li>
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
                <img src="${pageContext.request.contextPath}/resources/image/dreamtheater.jpg" class="d-block w-50" alt="dream theater band">
            </div>
            <div class="carousel-item">
                <img src="${pageContext.request.contextPath}/resources/image/queen.jpg" class="d-block w-60" alt="...">
            </div>
            <div class="carousel-item">
                <img src="${pageContext.request.contextPath}/resources/image/Led-Zeppelin.jpg" class="d-block w-60" alt="...">
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
<div style="text-align: center;"> <h1>Discografie di artisti</h1> </div>
<!--<center><button onclick="myFunction()"> Clicca</button>
    <p id="demo"></p>

    <div id="divprincipale" style="width: 100px; height: 100px; background-color: green; position: absolute;"></div>-->
<br>
<br>
<!-- <button id="tasto1"> </button>
 <script>
     function myFunction(){
     document.getElementById("demo").innerHTML =" Questo è un codice esempio";}

 </script> </center>
<center> <video width="320" height="240" autoplay muted>
     <source src="media/video.mp4" type="video/mp4">
     Your browser does not support the video tag.
</video> </center>-->
<p style="text-align: center;"><i>Benvenuti, amanti della musica! <br>
    In questa pagina troverete tutte le informazioni sui vostri artisti preferiti e la loro discografia!</i></p>

<div style="text-align: center;">
    <!-- <center> <img src="image/img2.jpg" width="400" height="400"> </center>-->
    <p><i>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi quidem ad tempora, voluptates architecto magnam tenetur, exercitationem animi nulla in sed expedita corrupti dolore aperiam, doloribus laudantium provident dolor veniam?</i></p>

    <!--<button type="button" onclick="alert('bottone premuto')"> Premi qui</button>-->

    <!-- quello in seguito è un codice javascript di default per un errore-->
    <!--   <script>
           alert('ciao sono un messaggio');
       </script> -->
</div>
<br>
<br>
<br>
<footer class="bg-dark text-center text-white">

    <!-- Copyright -->
    <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
        © 2021 Copyright
    </div>
    <!-- Copyright -->
</footer>
</body>
</html>
