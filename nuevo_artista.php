<?php

session_start();
    echo ucwords($_SESSION['user'])." , aquí puedes crear un nuevo artista.";

    if (!isset($_SESSION['user'])){
        
        header('Location: login.html');
        exit();
    
    }
   

require_once ("conexion.php");

    if ($_SERVER['REQUEST_METHOD']=='POST'){
   
    
        $id = isset($_REQUEST['id']) ? $_REQUEST['id'] : null;
        $nombre = isset($_REQUEST['nombre']) ? $_REQUEST['nombre'] : null;




    $miInsert = $miPDO->prepare('INSERT INTO artists (id, nombre) VALUES (:id, :nombre)');

    $miInsert->execute(

        array(

            'id' => $id,
            'nombre' => $nombre,

        )
    
    
    );
    header('Location: index.php');
}



    /*$miId = $miPDO->prepare('SELECT id, nombre FROM artists');
    $miId->execute();
    $artist = $miId->fetchAll();*/

    



?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="estilos.css" rel="stylesheet">
</head>
<body>

    <br><br>
    <form id="miform" name="miform" method="POST" action="" enctype="multipart/form-data">
    <br><br>
    <label>ID:</label>
    <input type="text" name="id" id="id" required>
    <br><br>
    <label>Nombre:</label>
    <input type="text" name="nombre" id="nombre" required>
    <br><br>
    <input class="button" name="envio" type="Submit" value="Enviar" />
    
</body>
</html>