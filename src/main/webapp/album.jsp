<jsp:useBean id="album" scope="request" type="javax.sql.DataSource"/>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>album</title>
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
<input type="button" id="btnGenerate" value="Generate Table" />
<hr />
<div id="dvTable">
</div>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        $("#btnGenerate").click(function () {
            //Build an array containing Customer records.
            var customers = new Array();
            customers.push(${album})
            customers.push(["Customer Id", "Name", "Country"]);
            customers.push([1, "John Hammond", "United States"]);
            customers.push([2, "Mudassar Khan", "India"]);
            customers.push([3, "Suzanne Mathews", "France"]);
            customers.push([4, "Robert Schidner", "Russia"]);
            customers.push([5, ])

            //Create a HTML Table element.
            var table = $("<table />");
            table[0].border = "1";

            //Get the count of columns.
            var columnCount = customers[0].length;

            //Add the header row.
            var row = $(table[0].insertRow(-1));
            for (var i = 0; i < columnCount; i++) {
                var headerCell = $("<th />");
                headerCell.html(customers[0][i]);
                row.append(headerCell);
            }

            //Add the data rows.
            for (var i = 1; i < customers.length; i++) {
                row = $(table[0].insertRow(-1));
                for (var j = 0; j < columnCount; j++) {
                    var cell = $("<td />");
                    cell.html(customers[i][j]);
                    row.append(cell);
                }
            }

            var dvTable = $("#dvTable");
            dvTable.html("");
            dvTable.append(table);
        });
    });
</script>
</body>