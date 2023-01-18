<!DOCTYPE html>
<html>
    <?php
        session_start();
    ?>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>index page</title>

        <!--BOOTSTRAP 5, APLAYER CSS CDNs-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
        rel="stylesheet" 
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
        crossorigin="anonymous">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aplayer/1.10.1/APlayer.min.css">

        <link rel="stylesheet" href="style.css">

        <!--JQUERY, BOOTSTRAP 5, APLAYER JS CDNs-->
        <script src="https://code.jquery.com/jquery-3.6.0.js" 
        integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" 
        crossorigin="anonymous"></script>


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" 
        crossorigin="anonymous"></script>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/aplayer/1.10.1/APlayer.min.js"></script>
        
    </head>
    <body>
        <div class="main">
            <div class="container">
                <div class="user-info text-end" id="userinfo" style="color: #0eb1d1;">
                    <h5>USER ID : <?php echo $_SESSION['userid'] ?></h5>
                    <h5>USER NAME : <?php echo $_SESSION['username'] ?></h5>
                    <a href="login.html" style="color: #0eb1d1;">LOG OUT</a>
                </div>
                
                <!--SEARCH-->
                <div class="row pt-2">
                    <div class="card-body">
                        <div class="input-group input-group-lg">
                          <input type="text" class="form-control form-control-lg rounded rounded-pill" placeholder="Search for a song/artist/album and type the full name" id="search" autocomplete="off">
                        </div>
                    </div>
                </div>
                <div class="head row p-2 text-center">
                    <div class="col border border-dark p-2 m-2 rounded-pill position-relative" id="nav1">
                       <a href="#" id="allsongs" class="stretched-link">All Tracks</a>
                    </div>
                    <div class="col border border-dark p-2 m-2 rounded-pill position-relative" id="nav2">
                        <a href="#" id="allartists" class="stretched-link">Artists</a>
                    </div>
                    <div class="col border border-dark p-2 m-2 rounded-pill position-relative" id="nav3">
                        <a href="#" id="allalbums" class="stretched-link">Albums</a>
                    </div>
                </div>
                <div class="result" id="res">
                    
                </div>
            </div>
        </div>
        <script src="myscript.js"></script>
    </body>
</html>