<?php

session_start();
    echo ucwords($_SESSION['user'])." , aquí puedes crear un nuevo álbum.";

    if (!isset($_SESSION['user'])){
        
        header('Location: login.html');
        exit();
    
    }
   

require_once ("conexion.php");

    if ($_SERVER['REQUEST_METHOD']=='POST'){
   
        $id = isset($_REQUEST['id']) ? $_REQUEST['id'] : null;
        $id_artist = isset($_REQUEST['id_artist']) ? $_REQUEST['id_artist'] : null;
        $title = isset($_REQUEST['title']) ? $_REQUEST['title'] : null;
        $year = isset($_REQUEST['year']) ? $_REQUEST['year'] : null;
        


        //subir la imagen

        $nombre_temp = $_FILES["file_upload"]["tmp_name"];
        echo $nombre_temp;

        if ($nombre_temp != ""){

            $nuevo_nombre = $id_artist . "_" . str_replace(' ','_', $title) .".jpg";

            $destino = RUTA_COVERS.$nuevo_nombre;

            if (move_uploaded_file($nombre_temp, $destino)){

                $mensaje = "Archivo subido correctamente";
                echo '<span>'. $mensaje . '</span>';
            
            }else {

                $msg = $err_msg[$_FILES['file_upload']['error']];
                echo '<span>'. $msg . '</span>';
            }
        }



    $miInsert = $miPDO->prepare('INSERT INTO albums (id_artist, title, year, cover) VALUES (:id_artist, :title, :year, :cover)');

    $miInsert->execute(

        array(

            'id_artist' => $id_artist,
            'title' => $title,
            'year' => $year,
            
            'cover' => $nuevo_nombre,

        )
    
    
    );
    header('Location: index.php');
}



    $miId = $miPDO->prepare('SELECT id, nombre FROM artists');
    $miId->execute();
    $artist = $miId->fetchAll();

    



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

    <label>ID Artista:</label>
    
    <select name="id_artist" id="id_artist">
    <option disabled selected>-- Seleccionar --</option>
    <br><br>
    <?php foreach($artist as $clave => $valor){?>
        <option value ="<?= $valor['id']; ?>"><?= $valor['id']." ".$valor['nombre']; ?> </option>
        
        <?php }
        ?>
    </select>

    <br><br>
    <label>Título:</label>
    <input type="text" name="title" id="title" required>
    <br><br>
    <label>Año:</label>
    <input type="text" name="year" id="year" required>
    <br><br>
    <label>Portada:</label>
    <input type="hidden" name="MAX_FILE_SIZE" value="2000000">
    <input type="file" style="font-size:x-large" name="file_upload">
    <br><br>
    <input class="button" name="envio" type="Submit" value="Enviar" />
    
</body>
</html>