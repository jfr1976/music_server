<?php

session_start();
    echo ucwords($_SESSION['user'])." , bienvenido a";

    if (!isset($_SESSION['user'])){
        
        header('Location: login.html');
        exit();
    
    }

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="estilos.css" rel="stylesheet">

</head>
<body>
    

          

<br>
            
            <h1>MUSIC SERVER</h1>
            

            <br><br>
            <a title="METALLICA" href="metallica.php"><img src="images/metallica.png" width="400px" height="155px" alt="metallica.png"/></a>
            


            <a title="GUNS N' ROSES" href="guns.php"><img src="images/guns.png" width="400px" height="155px" alt="guns.png"/></a>
            
            <br><br>

            <a title="PINK FLOYD" href="pink.php"><img src="images/pink.png" width="400px" height="155px" alt="pink.png"/></a>

            

            <a title="IRON MAIDEN" href="iron.php"><img src="images/iron.png" width="400px" height="155px" alt="iron.png"/></a>

            <br><br>

            
            <a class="button" href="nuevo.html">Nuevo usuario</a>
            <a class="button" href="nuevo_album.php">Nuevo álbum</a>
            <a class="button" href="modificar_album.php">Modificar álbum</a>
            <a class="button" href="nuevo_artista.php">Nuevo artista</a>
            <br><br>
            <div style="text-align:center">
            <a href="logout.php" target="_top" onclick="return confirm('Se va a cerrar sesión. ¿Continuar?');">Cerrar Sesión</a>
            </div>
            
            
    
</body>
</html> 